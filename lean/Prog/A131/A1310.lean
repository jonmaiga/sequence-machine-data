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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A131000: Signature permutation of a Catalan automorphism: row 21 of A122287.

The programs for A131000, there is no canonical definition to state claims against.
-/

/-! ## A131000.P1391747048932228863

`A089859(A130999(A089859(n)))`
-/

namespace A131000.P1391747048932228863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A130999 (A089859 n).toNat).toNat

end

end A131000.P1391747048932228863

/-! ## A131000.P276898753943633460

`A130359(A073280(n)%A076726(n))`
-/

namespace A131000.P276898753943633460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (Int.tmod (A073280 n) (A076726 n)).toNat

end

end A131000.P276898753943633460

/-! ## A131000.P17970056992532413392

`A069767(A122342(A069768(A122341(A057163(n)))))`
-/

namespace A131000.P17970056992532413392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A122342 (A069768 (A122341 (A057163 n).toNat).toNat).toNat).toNat

end

end A131000.P17970056992532413392

/-! ## A131000.P5098483047640734903

`A069767(A057163(A122350(A069767(A122349(n)))))`
-/

namespace A131000.P5098483047640734903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A057163 (A122350 (A069767 (A122349 n).toNat).toNat).toNat).toNat

end

end A131000.P5098483047640734903

/-! ## A131000.P11333930221861080796

`A089850(A130360(A122301(A089850(A122301(n)))))`
-/

namespace A131000.P11333930221861080796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A130360 (A122301 (A089850 (A122301 n).toNat).toNat).toNat).toNat

end

end A131000.P11333930221861080796

/-! ## A131000.P17361285382954213601

`A154449(A130398(n))%p?[A081272(n)]`
-/

namespace A131000.P17361285382954213601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154449 (A130398 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A131000.P17361285382954213601

/-!
# A131001: Signature permutation of a Catalan automorphism: row 16 of A122288.

The programs for A131001, there is no canonical definition to state claims against.
-/

/-! ## A131001.P8931783145259281461

`A073292(A122344(n*A278657(n)))`
-/

namespace A131001.P8931783145259281461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073292 (A122344 ((n : ℤ) * A278657 n).toNat).toNat

end

end A131001.P8931783145259281461

/-! ## A131001.P10092945152828822058

`A072089(A130956(n*A278657(n)))`
-/

namespace A131001.P10092945152828822058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A130956 ((n : ℤ) * A278657 n).toNat).toNat

end

end A131001.P10092945152828822058

/-! ## A131001.P13387113783295012035

`A122354(A122344(n)^A333733(n))`
-/

namespace A131001.P13387113783295012035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122354 (SequenceMachineLib.roundAway ((A122344 n : ℚ) ^ (A333733 n : ℤ))).toNat

end

end A131001.P13387113783295012035

/-! ## A131001.P7992362982496103526

`xor(A064911(A022187(n)), A131161(n))`
-/

namespace A131001.P7992362982496103526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064911 (A022187 n).toNat) (A131161 n)

end

end A131001.P7992362982496103526

/-!
# A131002: Signature permutation of a Catalan automorphism: row 20 of A122287.

The programs for A131002, there is no canonical definition to state claims against.
-/

/-! ## A131002.P16729795437507870585

`A122300(A130998(n*A260340(n)))`
-/

namespace A131002.P16729795437507870585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122300 (A130998 ((n : ℤ) * A260340 n).toNat).toNat

end

end A131002.P16729795437507870585

/-! ## A131002.P11133691181085105974

`A007095(A130926(n)^A260340(n))`
-/

namespace A131002.P11133691181085105974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A130926 n : ℚ) ^ (A260340 n : ℤ))).toNat

end

end A131002.P11133691181085105974

/-! ## A131002.P6540885288379551577

`A007095(A130962(n)^A260340(n))`
-/

namespace A131002.P6540885288379551577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A130962 n : ℚ) ^ (A260340 n : ℤ))).toNat

end

end A131002.P6540885288379551577

/-! ## A131002.P7641225575706144999

`A122300(A130998(n)^A260340(n))`
-/

namespace A131002.P7641225575706144999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122300 (SequenceMachineLib.roundAway ((A130998 n : ℚ) ^ (A260340 n : ℤ))).toNat

end

end A131002.P7641225575706144999

/-! ## A131002.P9640794916415744110

`A007095(C(A130926(n), A260340(n)))`
-/

namespace A131002.P9640794916415744110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A130926 n).toNat (A260340 n).toNat)

end

end A131002.P9640794916415744110

/-!
# A131003: Signature permutation of a Catalan automorphism: row 18 of A122288.

The programs for A131003, there is no canonical definition to state claims against.
-/

/-! ## A131003.P5922853205831488313

`A130984(A057163(n))`
-/

namespace A131003.P5922853205831488313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130984 (A057163 n).toNat

end

end A131003.P5922853205831488313

/-! ## A131003.P13647795352701637341

`A130984(A057164(A057505(n)))`
-/

namespace A131003.P13647795352701637341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130984 (A057164 (A057505 n).toNat).toNat

end

end A131003.P13647795352701637341

/-! ## A131003.P12030492104749757140

`A130984(A057506(A057164(n)))`
-/

namespace A131003.P12030492104749757140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130984 (A057506 (A057164 n).toNat).toNat

end

end A131003.P12030492104749757140

/-! ## A131003.P5216323527992201229

`A130984(A069767(A130981(n)))`
-/

namespace A131003.P5216323527992201229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130984 (A069767 (A130981 n).toNat).toNat

end

end A131003.P5216323527992201229

/-! ## A131003.P8631622380807310610

`A130984(A130984(A131005(n)))`
-/

namespace A131003.P8631622380807310610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130984 (A130984 (A131005 n).toNat).toNat

end

end A131003.P8631622380807310610

/-! ## A131003.P10252790951148393875

`A131163(A085169(n))*A328479(A080437(n+1))`
-/

namespace A131003.P10252790951148393875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131163 (A085169 n).toNat * A328479 (A080437 (n + 1)).toNat

end

end A131003.P10252790951148393875

/-! ## A131003.P1395085924262657647

`A131163(A085169(n))+A079979(A307847(n))`
-/

namespace A131003.P1395085924262657647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131163 (A085169 n).toNat + A079979 (A307847 n).toNat

end

end A131003.P1395085924262657647

/-!
# A131004: Signature permutation of a Catalan automorphism: row 13 of A122287.

The programs for A131004, there is no canonical definition to state claims against.
-/

/-! ## A131004.P16575913747136635118

`A057163(A130983(n))`
-/

namespace A131004.P16575913747136635118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130983 n).toNat

end

end A131004.P16575913747136635118

/-! ## A131004.P17032155348249002647

`A057163(A131005(A057163(n)))`
-/

namespace A131004.P17032155348249002647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A131005 (A057163 n).toNat).toNat

end

end A131004.P17032155348249002647

/-! ## A131004.P13234551818066749051

`A057164(A057505(A131005(A057164(A057505(n)))))`
-/

namespace A131004.P13234551818066749051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057505 (A131005 (A057164 (A057505 n).toNat).toNat).toNat).toNat

end

end A131004.P13234551818066749051

/-! ## A131004.P2964975120618958728

`A057506(A057164(A131005(A057506(A057164(n)))))`
-/

namespace A131004.P2964975120618958728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057164 (A131005 (A057506 (A057164 n).toNat).toNat).toNat).toNat

end

end A131004.P2964975120618958728

/-! ## A131004.P873127487710291727

`A130963(A085170(n))%∑[A228117(n)]`
-/

namespace A131004.P873127487710291727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130963 (A085170 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131004.P873127487710291727

/-! ## A131004.P15721426308818401406

`A130963(A085170(n)%A038537(n+1))`
-/

namespace A131004.P15721426308818401406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130963 (Int.tmod (A085170 n) (A038537 (n + 1))).toNat

end

end A131004.P15721426308818401406

/-! ## A131004.P5203507771096063558

`A171157(A065119(n+1))+A130963(A085170(n))`
-/

namespace A131004.P5203507771096063558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171157 (A065119 (n + 1)).toNat + A130963 (A085170 n).toNat

end

end A131004.P5203507771096063558

/-! ## A131004.P340401796576843015

`A130963(A085170(n))^gcd(2*n+1, A052905(n+3))`
-/

namespace A131004.P340401796576843015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130963 (A085170 n).toNat ^ Int.gcd (2 * n + 1 : ℤ) (A052905 (n + 3))

end

end A131004.P340401796576843015

/-!
# A131005: Signature permutation of a Catalan automorphism: row 19 of A122288.

The programs for A131005, there is no canonical definition to state claims against.
-/

/-! ## A131005.P2114480995906963073

`A130983(A057163(n))`
-/

namespace A131005.P2114480995906963073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130983 (A057163 n).toNat

end

end A131005.P2114480995906963073

/-! ## A131005.P7909047560060705980

`A130983(A057164(A057505(n)))`
-/

namespace A131005.P7909047560060705980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130983 (A057164 (A057505 n).toNat).toNat

end

end A131005.P7909047560060705980

/-! ## A131005.P892101930167605706

`A130983(A057506(A057164(n)))`
-/

namespace A131005.P892101930167605706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130983 (A057506 (A057164 n).toNat).toNat

end

end A131005.P892101930167605706

/-! ## A131005.P13590145823898517785

`A130983(A069767(A130981(n)))`
-/

namespace A131005.P13590145823898517785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130983 (A069767 (A130981 n).toNat).toNat

end

end A131005.P13590145823898517785

/-! ## A131005.P1755509448881194650

`A130983(A130983(A131003(n)))`
-/

namespace A131005.P1755509448881194650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130983 (A130983 (A131003 n).toNat).toNat

end

end A131005.P1755509448881194650

/-! ## A131005.P4504833571643350677

`A130983(A131006(A130983(n)))`
-/

namespace A131005.P4504833571643350677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130983 (A131006 (A130983 n).toNat).toNat

end

end A131005.P4504833571643350677

/-!
# A131006: Signature permutation of a Catalan automorphism: row 14 of A122287.

The programs for A131006, there is no canonical definition to state claims against.
-/

/-! ## A131006.P11323266446736870277

`A057163(A130984(n))`
-/

namespace A131006.P11323266446736870277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130984 n).toNat

end

end A131006.P11323266446736870277

/-! ## A131006.P9202416501578077626

`A057163(A131003(A057163(n)))`
-/

namespace A131006.P9202416501578077626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A131003 (A057163 n).toNat).toNat

end

end A131006.P9202416501578077626

/-! ## A131006.P603785515350667475

`A057164(A057505(A131003(A057164(A057505(n)))))`
-/

namespace A131006.P603785515350667475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057505 (A131003 (A057164 (A057505 n).toNat).toNat).toNat).toNat

end

end A131006.P603785515350667475

/-! ## A131006.P15172935336910889869

`A057506(A057164(A131003(A057506(A057164(n)))))`
-/

namespace A131006.P15172935336910889869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057164 (A131003 (A057506 (A057164 n).toNat).toNat).toNat).toNat

end

end A131006.P15172935336910889869

/-! ## A131006.P9583266570140518943

`A122339(A130984(n)^A279759(n))`
-/

namespace A131006.P9583266570140518943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122339 (SequenceMachineLib.roundAway ((A130984 n : ℚ) ^ (A279759 n : ℤ))).toNat

end

end A131006.P9583266570140518943

/-!
# A131007: Signature permutation of a Catalan automorphism: row 20 of A122288.

The programs for A131007, there is no canonical definition to state claims against.
-/

/-! ## A131007.P5378106434294401581

`A130982(A057163(n))`
-/

namespace A131007.P5378106434294401581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 (A057163 n).toNat

end

end A131007.P5378106434294401581

/-! ## A131007.P12075414411188102381

`A130982(A057164(A057505(n)))`
-/

namespace A131007.P12075414411188102381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 (A057164 (A057505 n).toNat).toNat

end

end A131007.P12075414411188102381

/-! ## A131007.P12970876152224800005

`A130982(A057506(A057164(n)))`
-/

namespace A131007.P12970876152224800005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 (A057506 (A057164 n).toNat).toNat

end

end A131007.P12970876152224800005

/-! ## A131007.P4299980563055742547

`A130982(A069767(A130981(n)))`
-/

namespace A131007.P4299980563055742547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 (A069767 (A130981 n).toNat).toNat

end

end A131007.P4299980563055742547

/-! ## A131007.P10746033754836881257

`A130982(A131008(A130982(n)))`
-/

namespace A131007.P10746033754836881257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 (A131008 (A130982 n).toNat).toNat

end

end A131007.P10746033754836881257

/-!
# A131008: Signature permutation of a Catalan automorphism: row 16 of A122287.

The programs for A131008, there is no canonical definition to state claims against.
-/

/-! ## A131008.P9145227463577867225

`A057163(A130982(n))`
-/

namespace A131008.P9145227463577867225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130982 n).toNat

end

end A131008.P9145227463577867225

/-! ## A131008.P5718215051763791912

`A057163(A131007(A057163(n)))`
-/

namespace A131008.P5718215051763791912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A131007 (A057163 n).toNat).toNat

end

end A131008.P5718215051763791912

/-! ## A131008.P16494226634609981314

`A057164(A057505(A131007(A057164(A057505(n)))))`
-/

namespace A131008.P16494226634609981314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057505 (A131007 (A057164 (A057505 n).toNat).toNat).toNat).toNat

end

end A131008.P16494226634609981314

/-! ## A131008.P14631479168687427611

`A057506(A057164(A131007(A057506(A057164(n)))))`
-/

namespace A131008.P14631479168687427611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057164 (A131007 (A057506 (A057164 n).toNat).toNat).toNat).toNat

end

end A131008.P14631479168687427611

/-! ## A131008.P10505041456871643546

`A069767(A130981(A130982(A130981(A130981(n)))))`
-/

namespace A131008.P10505041456871643546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A130981 (A130982 (A130981 (A130981 n).toNat).toNat).toNat).toNat

end

end A131008.P10505041456871643546

/-!
# A131009: Signature permutation of a Catalan automorphism: row 12 of A122288.

The programs for A131009, there is no canonical definition to state claims against.
-/

/-! ## A131009.P5666055109407208588

`A130375(A074683(n)%A089410(n+1))`
-/

namespace A131009.P5666055109407208588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130375 (Int.tmod (A074683 n) (A089410 (n + 1))).toNat

end

end A131009.P5666055109407208588

/-! ## A131009.P2057663922358639218

`or(A131171(A085170(n)), A185284(2*n+1))`
-/

namespace A131009.P2057663922358639218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131171 (A085170 n).toNat) (A185284 (2 * n + 1))

end

end A131009.P2057663922358639218

/-! ## A131009.P15530015434334378474

`A014709(A280058(n))*A131171(A085170(n))`
-/

namespace A131009.P15530015434334378474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A280058 n).toNat * A131171 (A085170 n).toNat

end

end A131009.P15530015434334378474

/-! ## A131009.P10123153818575505608

`A185284(2*n+3)+A131171(A122349(n))`
-/

namespace A131009.P10123153818575505608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 3) + A131171 (A122349 n).toNat

end

end A131009.P10123153818575505608

/-! ## A131009.P11695093083044663399

`A057504(A122312(n))^A007318(A001498(n))`
-/

namespace A131009.P11695093083044663399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057504 (A122312 n).toNat : ℚ) ^ (A007318 (A001498 n).toNat : ℤ)

end

end A131009.P11695093083044663399

/-!
# A131010: Signature permutation of a Catalan automorphism: row 17 of A122287.

The programs for A131010, there is no canonical definition to state claims against.
-/

/-! ## A131010.P12901113516032725119

`A130959(A122282(n))-A010051(A022171(n))`
-/

namespace A131010.P12901113516032725119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130959 (A122282 n).toNat - A010051 (A022171 n).toNat

end

end A131010.P12901113516032725119

/-! ## A131010.P14859868634020059023

`A130959(A122282(n))+A016389(A214398(n+1))`
-/

namespace A131010.P14859868634020059023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130959 (A122282 n).toNat + A016389 (A214398 (n + 1)).toNat

end

end A131010.P14859868634020059023

/-! ## A131010.P6900155474965500317

`A130959(A085170(n)%A001395(n))`
-/

namespace A131010.P6900155474965500317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130959 (Int.tmod (A085170 n) (A001395 n)).toNat

end

end A131010.P6900155474965500317

/-! ## A131010.P14414248526970724272

`A130959(A122282(n)%A001395(n))`
-/

namespace A131010.P14414248526970724272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130959 (Int.tmod (A122282 n) (A001395 n)).toNat

end

end A131010.P14414248526970724272

/-! ## A131010.P9902974995661984310

`A130959(A122349(n)%A001395(n))`
-/

namespace A131010.P9902974995661984310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130959 (Int.tmod (A122349 n) (A001395 n)).toNat

end

end A131010.P9902974995661984310

/-!
# A131011: a(n) = A121295(n) - A121263(n).

The programs for A131011, there is no canonical definition to state claims against.
-/

/-! ## A131011.P3565319073488504506

`A121295(n)-A121263(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131011.P3565319073488504506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121295 (n + 10) - A121263 (n + 10)

end

end A131011.P3565319073488504506

/-! ## A131011.P7304505364603995466

`A121295(n)-A121266(∑[n]+n)`
-/

namespace A131011.P7304505364603995466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121295 (n + 10) - A121266 (∑ j ∈ Finset.range (n + 1), f1 j + n + 10)

end

end A131011.P7304505364603995466

/-! ## A131011.P16687772657858803484

`A121295(n)-record[A121266(A061579(n))]`
-/

namespace A131011.P16687772657858803484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 ((A061579 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121295 (n + 10) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131011.P16687772657858803484

/-! ## A131011.P14443501119782082936

`A121295(n)-record[A121266(A175631(n+1))]`
-/

namespace A131011.P14443501119782082936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 ((A175631 (n + 1)).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121295 (n + 10) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131011.P14443501119782082936

/-! ## A131011.P14969019980803727112

`A121295(n)-record[A023531(n)*A121266(n)]`
-/

namespace A131011.P14969019980803727112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A121266 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121295 (n + 10) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131011.P14969019980803727112

/-!
# A131012: a(n) = A121295(n) - A121265(n).

The programs for A131012, there is no canonical definition to state claims against.
-/

/-! ## A131012.P1713095697686323184

`A121296(n)-A121265(n)`
-/

namespace A131012.P1713095697686323184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121296 (n + 10) - A121265 (n + 10)

end

end A131012.P1713095697686323184

/-! ## A131012.P13879936471317092185

`A130287(n)-A122734(n)`
-/

namespace A131012.P13879936471317092185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130287 (n + 10) - A122734 (n + 10)

end

end A131012.P13879936471317092185

/-! ## A131012.P8628012620762560344

`A128916(n)-A127744(n)`
-/

namespace A131012.P8628012620762560344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128916 (n + 10) - A127744 (n + 10)

end

end A131012.P8628012620762560344

/-! ## A131012.P6621088469271740393

`A121296(n)-(A122734(n)+A121263(n))`
-/

namespace A131012.P6621088469271740393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121296 (n + 10) - (A122734 (n + 10) + A121263 (n + 10))

end

end A131012.P6621088469271740393

/-! ## A131012.P736395863699225923

`A121296(n)-(A127744(n)+A121295(n))`
-/

namespace A131012.P736395863699225923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121296 (n + 10) - (A127744 (n + 10) + A121295 (n + 10))

end

end A131012.P736395863699225923

/-!
# A131014: Sum of all n-digit Stirling numbers of first kind.

The programs for A131014, there is no canonical definition to state claims against.
-/

/-! ## A131014.P5189736514987434655

`Δ[A097422(comp[A039757(n)])]`
-/

namespace A131014.P5189736514987434655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131014.P5189736514987434655

/-! ## A131014.P11365787453397724178

`Δ[A097422(comp[A039758(n)])]`
-/

namespace A131014.P11365787453397724178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039758 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131014.P11365787453397724178

/-! ## A131014.P11353682911217589238

`Δ[A097422(comp[A277462(n)])]`
-/

namespace A131014.P11353682911217589238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277462 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131014.P11353682911217589238

/-! ## A131014.P1003651517130820504

`Δ[A097422(A130130(n)+n)]`
-/

namespace A131014.P1003651517130820504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 (A130130 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131014.P1003651517130820504

/-! ## A131014.P5392139606719910039

`Δ[A097422(n+2)%A001721(n)]`
-/

namespace A131014.P5392139606719910039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097422 (n + 2)) (A001721 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131014.P5392139606719910039

/-!
# A131015: Period 12: repeat 1, 1, 3, 2, 2, 1, 4, 4, 2, 3, 3, 4.

The programs for A131015, the canonical program `A131015.P3188052477191986651` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131015 has offset 0).

The definition of A131015 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A131015.anchor (n : ℕ) : A131015 n = [1, 1, 3, 2, 2, 1, 4, 4, 2, 3, 3, 4].getD (n % 12) 0` in `Proof.A131.A131015`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131015.P3188052477191986651

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2, a(4)=2, a(5)=1, a(6)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131015

/-- `a(n-1)-a(n-6)+a(n-7)` -/
def P3188052477191986651.Spec : Prop :=
  ∀ n, P3188052477191986651.a n = A131015 n

theorem P3188052477191986651.correct : P3188052477191986651.Spec := by
  intro n
  simp only [A131015]

end A131015

/-!
# A131016: Smallest semiprime == 1 (mod n).

The programs for A131016, there is no canonical definition to state claims against.
-/

/-! ## A131016.P4041423258371374644

`(n+1)*A085710(n+1)+1`
-/

namespace A131016.P4041423258371374644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A085710 (n + 1) + 1

end

end A131016.P4041423258371374644

/-! ## A131016.P6523509199336387045

`A020725((n+1)*A085710(n+1))`
-/

namespace A131016.P6523509199336387045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n + 1 : ℤ) * A085710 (n + 1)).toNat

end

end A131016.P6523509199336387045

/-! ## A131016.P2405182464487228586

`A114637((n+1)*A085710(n+1))`
-/

namespace A131016.P2405182464487228586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 ((n + 1 : ℤ) * A085710 (n + 1)).toNat

end

end A131016.P2405182464487228586

/-! ## A131016.P1825744463442354530

`A052938(A085710(n+1)*A103517(n))`
-/

namespace A131016.P1825744463442354530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A085710 (n + 1) * A103517 n).toNat

end

end A131016.P1825744463442354530

/-!
# A131017: Period 6: repeat [1, 1, 2, -1, 2, 1].

The programs for A131017, the canonical program `A131017.P3505643961593397695` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131017 has offset 0).

The definition of A131017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131017.P3505643961593397695

`ogf((1+x+2x^2-x^3+2x^4+x^5)/(1-x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131017

/-- `ogf((1+x+2x^2-x^3+2x^4+x^5)/(1-x^6))` -/
def P3505643961593397695.Spec : Prop :=
  ∀ n, P3505643961593397695.a n = A131017 n

theorem P3505643961593397695.correct : P3505643961593397695.Spec := by
  intro n
  simp only [A131017]

end A131017

/-!
# A131018: Expansion of (q^-3) * psi(q) / psi(q^25) in powers of q where psi() is a Ramanujan theta function.

The programs for A131018, there is no canonical definition to state claims against.
-/

/-! ## A131018.P11054819508745029841

`A010054(n)-A025466(A106741(n+1))`
-/

namespace A131018.P11054819508745029841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n - A025466 (A106741 (n + 1)).toNat

end

end A131018.P11054819508745029841

/-! ## A131018.P14519680109312576925

`A035214(n)-A124778(A326685(n+1))`
-/

namespace A131018.P14519680109312576925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n - A124778 (A326685 (n + 1)).toNat

end

end A131018.P14519680109312576925

/-! ## A131018.P13217357808176790432

`A000034(A288515(n))-A124778(A326685(n+1))`
-/

namespace A131018.P13217357808176790432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A288515 n).toNat - A124778 (A326685 (n + 1)).toNat

end

end A131018.P13217357808176790432

/-! ## A131018.P2769083227879945351

`A000034(A309993(n+1))-A124778(A326685(n+1))`
-/

namespace A131018.P2769083227879945351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A309993 (n + 1)).toNat - A124778 (A326685 (n + 1)).toNat

end

end A131018.P2769083227879945351

/-! ## A131018.P1443103036286054283

`char[∑[n]]-A102683(A306100(2*n))`
-/

namespace A131018.P1443103036286054283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A102683 (A306100 (2 * n)).toNat

end

end A131018.P1443103036286054283

/-!
# A131019: Semiperimeters of quadrilaterals whose sides are 4 consecutive odd primes.

The programs for A131019, the canonical program `A131019.P4131318415201584091` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131019 has offset 1).

The definition of A131019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131019.P4131318415201584091

`(A000040(n+2)+A000040(n+3)+A000040(n+4)+A000040(n+5))/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131019

/-- `(A000040(n+2)+A000040(n+3)+A000040(n+4)+A000040(n+5))/2` -/
def P4131318415201584091.Spec : Prop :=
  ∀ n, P4131318415201584091.a n = (A131019 (n + 1) : ℚ)

end A131019

/-! ## A131019.P15986658586892712231

`(∑[A031166(n+1)]+1)/2+8`
-/

namespace A131019.P15986658586892712231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2 + 8

end

end A131019.P15986658586892712231

namespace A131019

/-- `(∑[A031166(n+1)]+1)/2+8` -/
def P15986658586892712231.Spec : Prop :=
  ∀ n, P15986658586892712231.a n = (A131019 (n + 1) : ℚ)

end A131019

/-! ## A131019.P7658451315195792223

`(A034964(n+1)-A000040(n+1))/2`
-/

namespace A131019.P7658451315195792223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034964 (n + 1) - A000040 (n + 1) : ℚ) / 2

end

end A131019.P7658451315195792223

namespace A131019

/-- `(A034964(n+1)-A000040(n+1))/2` -/
def P7658451315195792223.Spec : Prop :=
  ∀ n, P7658451315195792223.a n = (A131019 (n + 1) : ℚ)

end A131019

/-! ## A131019.P11566538050185086845

`A034963(n+2)/2`
-/

namespace A131019.P11566538050185086845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034963 (n + 2) : ℚ) / 2

end

end A131019.P11566538050185086845

namespace A131019

/-- `A034963(n+2)/2` -/
def P11566538050185086845.Spec : Prop :=
  ∀ n, P11566538050185086845.a n = (A131019 (n + 1) : ℚ)

end A131019

/-! ## A131019.P6195215723365116574

`A024675(n+1)+A024675(n+3)`
-/

namespace A131019.P6195215723365116574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + A024675 (n + 3)

end

end A131019.P6195215723365116574

namespace A131019

/-- `A024675(n+1)+A024675(n+3)` -/
def P6195215723365116574.Spec : Prop :=
  ∀ n, P6195215723365116574.a n = A131019 (n + 1)

end A131019

/-! ## A131019.P16526150661068018339

`A174221(p?[2*n+1])/2`
-/

namespace A131019.P16526150661068018339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A131019.P16526150661068018339

namespace A131019

/-- `A174221(p?[2*n+1])/2` -/
def P16526150661068018339.Spec : Prop :=
  ∀ n, P16526150661068018339.a n = (A131019 (n + 1) : ℚ)

end A131019

/-! ## A131019.P7261358970140137501

`ceil(A174221(p?[n+1+n])/2)`
-/

namespace A131019.P7261358970140137501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌉

end

end A131019.P7261358970140137501

namespace A131019

/-- `ceil(A174221(p?[n+1+n])/2)` -/
def P7261358970140137501.Spec : Prop :=
  ∀ n, P7261358970140137501.a n = A131019 (n + 1)

end A131019

/-! ## A131019.P15835640148949632478

`A174221(A000040(n+2))/2`
-/

namespace A131019.P15835640148949632478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174221 (A000040 (n + 2)).toNat : ℚ) / 2

end

end A131019.P15835640148949632478

namespace A131019

/-- `A174221(A000040(n+2))/2` -/
def P15835640148949632478.Spec : Prop :=
  ∀ n, P15835640148949632478.a n = (A131019 (n + 1) : ℚ)

end A131019

/-! ## A131019.P5682668255897334415

`A001281(A034963(n+2))`
-/

namespace A131019.P5682668255897334415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A034963 (n + 2)).toNat

end

end A131019.P5682668255897334415

namespace A131019

/-- `A001281(A034963(n+2))` -/
def P5682668255897334415.Spec : Prop :=
  ∀ n, P5682668255897334415.a n = A131019 (n + 1)

end A131019

/-! ## A131019.P9995597915115225608

`A000463(A034963(n+2)-1)`
-/

namespace A131019.P9995597915115225608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A034963 (n + 2) - 1).toNat

end

end A131019.P9995597915115225608

namespace A131019

/-- `A000463(A034963(n+2)-1)` -/
def P9995597915115225608.Spec : Prop :=
  ∀ n, P9995597915115225608.a n = A131019 (n + 1)

end A131019

/-! ## A131019.P11479140776701999040

`A174221(A174221(p?[2*n+1]))`
-/

namespace A131019.P11479140776701999040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A174221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A131019.P11479140776701999040

namespace A131019

/-- `A174221(A174221(p?[2*n+1]))` -/
def P11479140776701999040.Spec : Prop :=
  ∀ n, P11479140776701999040.a n = A131019 (n + 1)

end A131019

/-! ## A131019.P277416467470332858

`A174221(A174221(A000040(n+2)))`
-/

namespace A131019.P277416467470332858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A174221 (A000040 (n + 2)).toNat).toNat

end

end A131019.P277416467470332858

namespace A131019

/-- `A174221(A174221(A000040(n+2)))` -/
def P277416467470332858.Spec : Prop :=
  ∀ n, P277416467470332858.a n = A131019 (n + 1)

end A131019

/-! ## A131019.P5535438036637192687

`A174571(2*A034963(n+2))`
-/

namespace A131019.P5535438036637192687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A034963 (n + 2)).toNat

end

end A131019.P5535438036637192687

namespace A131019

/-- `A174571(2*A034963(n+2))` -/
def P5535438036637192687.Spec : Prop :=
  ∀ n, P5535438036637192687.a n = A131019 (n + 1)

end A131019

/-! ## A131019.P9362108341180450500

`A054576(2*A034963(n+2))`
-/

namespace A131019.P9362108341180450500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A034963 (n + 2)).toNat

end

end A131019.P9362108341180450500

namespace A131019

/-- `A054576(2*A034963(n+2))` -/
def P9362108341180450500.Spec : Prop :=
  ∀ n, P9362108341180450500.a n = A131019 (n + 1)

end A131019

/-!
# A131021: Prime semiperimeters of quadrilaterals with sides which are four consecutive primes.

The programs for A131021, the canonical program `A131021.P14456359531846804988` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131021 has offset 1).

The definition of A131021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131021.P10475489247925090905

`p?[A131019(n+1)]`
-/

namespace A131021.P10475489247925090905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131021.P10475489247925090905

namespace A131021

/-- `p?[A131019(n+1)]` -/
def P10475489247925090905.Spec : Prop :=
  ∀ n, P10475489247925090905.a n = A131021 (n + 1)

end A131021

/-! ## A131021.P14456359531846804988

`p?[A024675(n+1)+A024675(n+3)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131021

/-- `p?[A024675(n+1)+A024675(n+3)]` -/
def P14456359531846804988.Spec : Prop :=
  ∀ n, P14456359531846804988.a n = A131021 (n + 1)

theorem P14456359531846804988.correct : P14456359531846804988.Spec := by
  intro n
  simp only [A131021, Nat.add_sub_cancel]

end A131021

/-! ## A131021.P16054615095102634939

`p?[A073273(n+2)+A073273(n+1)+2]`
-/

namespace A131021.P16054615095102634939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 2) + (A073273 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131021.P16054615095102634939

namespace A131021

/-- `p?[A073273(n+2)+A073273(n+1)+2]` -/
def P16054615095102634939.Spec : Prop :=
  ∀ n, P16054615095102634939.a n = A131021 (n + 1)

end A131021

/-! ## A131021.P4735073387206003323

`∩[A131019(n+1), A215927(n+1)]`
-/

namespace A131021.P4735073387206003323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P4735073387206003323

namespace A131021

/-- `∩[A131019(n+1), A215927(n+1)]` -/
def P4735073387206003323.Spec : Prop :=
  ∀ n, (P4735073387206003323.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P11797574582826153016

`∩[A000040(n+1), A131019(n+1)]`
-/

namespace A131021.P11797574582826153016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P11797574582826153016

namespace A131021

/-- `∩[A000040(n+1), A131019(n+1)]` -/
def P11797574582826153016.Spec : Prop :=
  ∀ n, (P11797574582826153016.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P6936769297748140228

`∩[A004139(n+1), A131019(n+1)]`
-/

namespace A131021.P6936769297748140228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P6936769297748140228

namespace A131021

/-- `∩[A004139(n+1), A131019(n+1)]` -/
def P6936769297748140228.Spec : Prop :=
  ∀ n, (P6936769297748140228.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P14079151919395743009

`∩[A006005(n+1), A131019(n+1)]`
-/

namespace A131021.P14079151919395743009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P14079151919395743009

namespace A131021

/-- `∩[A006005(n+1), A131019(n+1)]` -/
def P14079151919395743009.Spec : Prop :=
  ∀ n, (P14079151919395743009.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P6998404589415699850

`∩[A008578(n+1), A131019(n+1)]`
-/

namespace A131021.P6998404589415699850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P6998404589415699850

namespace A131021

/-- `∩[A008578(n+1), A131019(n+1)]` -/
def P6998404589415699850.Spec : Prop :=
  ∀ n, (P6998404589415699850.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P7618310463364035938

`∩[A033946(n+1), A131019(n+1)]`
-/

namespace A131021.P7618310463364035938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P7618310463364035938

namespace A131021

/-- `∩[A033946(n+1), A131019(n+1)]` -/
def P7618310463364035938.Spec : Prop :=
  ∀ n, (P7618310463364035938.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P12872202300811718450

`∩[A045319(n+1), A131019(n+1)]`
-/

namespace A131021.P12872202300811718450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P12872202300811718450

namespace A131021

/-- `∩[A045319(n+1), A131019(n+1)]` -/
def P12872202300811718450.Spec : Prop :=
  ∀ n, (P12872202300811718450.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P15286265776631297640

`∩[A045344(n+1), A131019(n+1)]`
-/

namespace A131021.P15286265776631297640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P15286265776631297640

namespace A131021

/-- `∩[A045344(n+1), A131019(n+1)]` -/
def P15286265776631297640.Spec : Prop :=
  ∀ n, (P15286265776631297640.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P1030412375538176507

`∩[A046022(n+1), A131019(n+1)]`
-/

namespace A131021.P1030412375538176507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P1030412375538176507

namespace A131021

/-- `∩[A046022(n+1), A131019(n+1)]` -/
def P1030412375538176507.Spec : Prop :=
  ∀ n, (P1030412375538176507.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P2286402486970628519

`∩[A051948(n+1), A131019(n+1)]`
-/

namespace A131021.P2286402486970628519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P2286402486970628519

namespace A131021

/-- `∩[A051948(n+1), A131019(n+1)]` -/
def P2286402486970628519.Spec : Prop :=
  ∀ n, (P2286402486970628519.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P2660629228281189653

`∩[A053813(n+1), A131019(n+1)]`
-/

namespace A131021.P2660629228281189653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P2660629228281189653

namespace A131021

/-- `∩[A053813(n+1), A131019(n+1)]` -/
def P2660629228281189653.Spec : Prop :=
  ∀ n, (P2660629228281189653.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P1485568769246207869

`∩[A065091(n+1), A131019(n+1)]`
-/

namespace A131021.P1485568769246207869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P1485568769246207869

namespace A131021

/-- `∩[A065091(n+1), A131019(n+1)]` -/
def P1485568769246207869.Spec : Prop :=
  ∀ n, (P1485568769246207869.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P6522673084554557017

`∩[A065396(n+1), A131019(n+1)]`
-/

namespace A131021.P6522673084554557017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P6522673084554557017

namespace A131021

/-- `∩[A065396(n+1), A131019(n+1)]` -/
def P6522673084554557017.Spec : Prop :=
  ∀ n, (P6522673084554557017.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P8051075506650853760

`∩[A066050(n+1), A131019(n+1)]`
-/

namespace A131021.P8051075506650853760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P8051075506650853760

namespace A131021

/-- `∩[A066050(n+1), A131019(n+1)]` -/
def P8051075506650853760.Spec : Prop :=
  ∀ n, (P8051075506650853760.a n : ℤ) = A131021 (n + 1)

end A131021

/-! ## A131021.P15147954712050452817

`∩[A067126(n+1), A131019(n+1)]`
-/

namespace A131021.P15147954712050452817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131021.P15147954712050452817

namespace A131021

/-- `∩[A067126(n+1), A131019(n+1)]` -/
def P15147954712050452817.Spec : Prop :=
  ∀ n, (P15147954712050452817.a n : ℤ) = A131021 (n + 1)

end A131021

/-!
# A131022: Triangular array T read by rows: T(j,1) = 1 for ((j-1) mod 6) < 3, else 0; T(j,k) = T(j-1,k-1) + T(j,k-1) for 2 <= k <= j.

The programs for A131022, there is no canonical definition to state claims against.
-/

/-! ## A131022.P17042228811788523393

`A131074(comp[∑[n]]%A180323(n+2))`
-/

namespace A131022.P17042228811788523393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131074 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A180323 (n + 2))).toNat

end

end A131022.P17042228811788523393

/-! ## A131022.P7469128654177493017

`A131074(comp[∑[n]])%A213249(n+2)`
-/

namespace A131022.P7469128654177493017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131074 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A213249 (n + 2))

end

end A131022.P7469128654177493017

/-! ## A131022.P6705516590013147139

`A131074(lt[A243753(n), A194673(n)])`
-/

namespace A131022.P6705516590013147139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131074 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A131022.P6705516590013147139

/-! ## A131022.P1418781819351622390

`A131074(lt[A321742(3*n+2), A059226(n)])`
-/

namespace A131022.P1418781819351622390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321742 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131074 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A131022.P1418781819351622390

/-! ## A131022.P3425619628101271825

`A131074(lt[A340351(3*n+2), A367209(n+1)])`
-/

namespace A131022.P3425619628101271825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340351 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131074 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A131022.P3425619628101271825

/-!
# A131023: First subdiagonal of triangular array T: T(j,1) = 1 for ((j-1) mod 6) < 3, else 0; T(j,k) = T(j-1,k-1) + T(j-1,k) for 2 <= k <= j.

The programs for A131023, the canonical program `A131023.P11069583282047947206` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131023 has offset 1).

The definition of A131023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131023.P14577236476325993447

`ogf((1-3x+2x^2+x^3)/(1-5x+9x^2-6x^3))`
-/

namespace A131023.P14577236476325993447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2, 1] [1, -5, 9, -6] n

end

end A131023.P14577236476325993447

namespace A131023

/-- `ogf((1-3x+2x^2+x^3)/(1-5x+9x^2-6x^3))` -/
def P14577236476325993447.Spec : Prop :=
  ∀ n, P14577236476325993447.a n = A131023 (n + 1)

end A131023

/-! ## A131023.P11069583282047947206

`5*a(n-1)-9*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131023

/-- `5*a(n-1)-9*a(n-2)+6*a(n-3)` -/
def P11069583282047947206.Spec : Prop :=
  ∀ n, P11069583282047947206.a n = A131023 (n + 1)

theorem P11069583282047947206.correct : P11069583282047947206.Spec := by
  intro n
  simp only [A131023, Nat.add_sub_cancel]

end A131023

/-! ## A131023.P504427423532474001

`A057681(n)+floor(2^(n-1))`
-/

namespace A131023.P504427423532474001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A131023.P504427423532474001

namespace A131023

/-- `A057681(n)+floor(2^(n-1))` -/
def P504427423532474001.Spec : Prop :=
  ∀ n, P504427423532474001.a n = A131023 (n + 1)

end A131023

/-! ## A131023.P16349860662389940089

`2*a(n-1)-A057682(n-1)` with `a(0)=1`
-/

namespace A131023.P16349860662389940089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A057682 (n - 1)

end

end A131023.P16349860662389940089

namespace A131023

/-- `2*a(n-1)-A057682(n-1)` -/
def P16349860662389940089.Spec : Prop :=
  ∀ n, P16349860662389940089.a n = A131023 (n + 1)

end A131023

/-! ## A131023.P9378179721451823414

`A131577(n)+A057681(n)`
-/

namespace A131023.P9378179721451823414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A057681 n

end

end A131023.P9378179721451823414

namespace A131023

/-- `A131577(n)+A057681(n)` -/
def P9378179721451823414.Spec : Prop :=
  ∀ n, P9378179721451823414.a n = A131023 (n + 1)

end A131023

/-! ## A131023.P567414307748846201

`A290993(n)+A119336(n)`
-/

namespace A131023.P567414307748846201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290993 n + A119336 n

end

end A131023.P567414307748846201

namespace A131023

/-- `A290993(n)+A119336(n)` -/
def P567414307748846201.Spec : Prop :=
  ∀ n, P567414307748846201.a n = A131023 (n + 1)

end A131023

/-! ## A131023.P4231171690388858313

`Δ[A129339(n+1)]`
-/

namespace A131023.P4231171690388858313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131023.P4231171690388858313

namespace A131023

/-- `Δ[A129339(n+1)]` -/
def P4231171690388858313.Spec : Prop :=
  ∀ n, P4231171690388858313.a n = A131023 (n + 1)

end A131023

/-! ## A131023.P4297712512406221858

`A119336(n+1)-A306847(n)`
-/

namespace A131023.P4297712512406221858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 (n + 1) - A306847 n

end

end A131023.P4297712512406221858

namespace A131023

/-- `A119336(n+1)-A306847(n)` -/
def P4297712512406221858.Spec : Prop :=
  ∀ n, P4297712512406221858.a n = A131023 (n + 1)

end A131023

/-! ## A131023.P8583949037022661332

`A129339(n+2)-A129339(n+1)`
-/

namespace A131023.P8583949037022661332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 2) - A129339 (n + 1)

end

end A131023.P8583949037022661332

namespace A131023

/-- `A129339(n+2)-A129339(n+1)` -/
def P8583949037022661332.Spec : Prop :=
  ∀ n, P8583949037022661332.a n = A131023 (n + 1)

end A131023

/-! ## A131023.P15016723793225805461

`A131022(∑[n+2])`
-/

namespace A131023.P15016723793225805461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131022 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131023.P15016723793225805461

namespace A131023

/-- `A131022(∑[n+2])` -/
def P15016723793225805461.Spec : Prop :=
  ∀ n, P15016723793225805461.a n = A131023 (n + 1)

end A131023

/-!
# A131024: Row sums of triangular array T: T(j,1) = 1 for ((j-1) mod 6) < 3, else 0; T(j,k) = T(j-1,k-1) + T(j-1,k) for 2 <= k <= j.

The programs for A131024, the canonical program `A131024.P4173870988629281151` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131024 has offset 1).

The definition of A131024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131024.P4173870988629281151

`ogf((1-3x+3x^2-3x^3+6x^4-4x^5+x^6)/(1-6x+14x^2-14x^3+14x^5-15x^6+6x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131024

/-- `ogf((1-3x+3x^2-3x^3+6x^4-4x^5+x^6)/(1-6x+14x^2-14x^3+14x^5-15x^6+6x^7))` -/
def P4173870988629281151.Spec : Prop :=
  ∀ n, P4173870988629281151.a n = A131024 (n + 1)

theorem P4173870988629281151.correct : P4173870988629281151.Spec := by
  intro n
  simp only [A131024, Nat.add_sub_cancel]

end A131024

/-! ## A131024.P16739476726878507052

`A129339(n+2)-A088911(n+1)`
-/

namespace A131024.P16739476726878507052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 2) - A088911 (n + 1)

end

end A131024.P16739476726878507052

namespace A131024

/-- `A129339(n+2)-A088911(n+1)` -/
def P16739476726878507052.Spec : Prop :=
  ∀ n, P16739476726878507052.a n = A131024 (n + 1)

end A131024

/-! ## A131024.P15620196192134355817

`∑[A131531(n+1)+A131023(n+1)]`
-/

namespace A131024.P15620196192134355817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + A131023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131024.P15620196192134355817

namespace A131024

/-- `∑[A131531(n+1)+A131023(n+1)]` -/
def P15620196192134355817.Spec : Prop :=
  ∀ n, P15620196192134355817.a n = A131024 (n + 1)

end A131024

/-! ## A131024.P6829751429468343577

`A088911(n+4)+∑[A131023(n+1)]`
-/

namespace A131024.P6829751429468343577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131024.P6829751429468343577

namespace A131024

/-- `A088911(n+4)+∑[A131023(n+1)]` -/
def P6829751429468343577.Spec : Prop :=
  ∀ n, P6829751429468343577.a n = A131024 (n + 1)

end A131024

/-! ## A131024.P16381273976975299827

`A194272(n+1)+A129339(n+2)-A194272(n+2)`
-/

namespace A131024.P16381273976975299827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194272 (n + 1) + (A129339 (n + 2) - A194272 (n + 2))

end

end A131024.P16381273976975299827

namespace A131024

/-- `A194272(n+1)+A129339(n+2)-A194272(n+2)` -/
def P16381273976975299827.Spec : Prop :=
  ∀ n, P16381273976975299827.a n = A131024 (n + 1)

end A131024

/-!
# A131025: Antidiagonal sums of triangular array T: T(j,1) = 1 for ((j-1) mod 6) < 3, else 0; T(j,k) = T(j-1,k-1) + T(j-1,k) for 2 <= k <= j.

The programs for A131025, the canonical program `A131025.P2826344584829015483` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131025 has offset 1).

The definition of A131025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131025.P2826344584829015483

`ogf((1-3x^2+2x^4+2x^6-2x^8+x^9)/(1-x-5x^2+6x^3+8x^4-14x^5-x^6+15x^7-9x^8-6x^9+6x^10))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131025

/-- `ogf((1-3x^2+2x^4+2x^6-2x^8+x^9)/(1-x-5x^2+6x^3+8x^4-14x^5-x^6+15x^7-9x^8-6x^9+6x^10))` -/
def P2826344584829015483.Spec : Prop :=
  ∀ n, P2826344584829015483.a n = A131025 (n + 1)

theorem P2826344584829015483.correct : P2826344584829015483.Spec := by
  intro n
  simp only [A131025, Nat.add_sub_cancel]

end A131025

/-!
# A131026: Periodic sequence (2, 2, 1, 0, 0, 1).

The programs for A131026, the canonical program `A131026.P15478346230727557942` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131026 has offset 1).

The definition of A131026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131026.P15478346230727557942

`ogf((2-2x+x^2)/(1-2x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131026

/-- `ogf((2-2x+x^2)/(1-2x+2x^2-x^3))` -/
def P15478346230727557942.Spec : Prop :=
  ∀ n, P15478346230727557942.a n = A131026 (n + 1)

theorem P15478346230727557942.correct : P15478346230727557942.Spec := by
  intro n
  simp only [A131026, Nat.add_sub_cancel]

end A131026

/-!
# A131027: Period 6: repeat [4, 3, 1, 0, 1, 3].

The programs for A131027, the canonical program `A131027.P2473195767920488003` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131027 has offset 1).

The definition of A131027 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A131027.anchor (n : ℕ) (hn : 1 ≤ n) : A131027 n = (([4, 3, 1, 0, 1, 3].getD ((n - 1) % 6) 0 : ℕ) : ℤ)` in `Proof.A131.A131027`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131027.P2473195767920488003

`a(n-6)` with `a(0)=4, a(1)=3, a(2)=1, a(3)=0, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131027

/-- `a(n-6)` -/
def P2473195767920488003.Spec : Prop :=
  ∀ n, (P2473195767920488003.a n : ℤ) = A131027 (n + 1)

theorem P2473195767920488003.correct : P2473195767920488003.Spec := by
  intro n
  simp only [A131027, Nat.add_sub_cancel]

end A131027

/-!
# A131028: Periodic sequence (7, 4, 1, 1, 4, 7).

The programs for A131028, the canonical program `A131028.P5644059699334249047` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131028 has offset 1).

The definition of A131028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131028.P5644059699334249047

`ogf((7-10x+7x^2)/(1-2x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131028

/-- `ogf((7-10x+7x^2)/(1-2x+2x^2-x^3))` -/
def P5644059699334249047.Spec : Prop :=
  ∀ n, P5644059699334249047.a n = A131028 (n + 1)

theorem P5644059699334249047.correct : P5644059699334249047.Spec := by
  intro n
  simp only [A131028, Nat.add_sub_cancel]

end A131028

/-!
# A131029: Periodic sequence (11, 5, 2, 5, 11, 14).

The programs for A131029, the canonical program `A131029.P4719532683734586347` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131029 has offset 1).

The definition of A131029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131029.P4719532683734586347

`ogf((11-17x+14x^2)/(1-2x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131029

/-- `ogf((11-17x+14x^2)/(1-2x+2x^2-x^3))` -/
def P4719532683734586347.Spec : Prop :=
  ∀ n, P4719532683734586347.a n = A131029 (n + 1)

theorem P4719532683734586347.correct : P4719532683734586347.Spec := by
  intro n
  simp only [A131029, Nat.add_sub_cancel]

end A131029

/-!
# A131030: Period 6: repeat [16, 7, 7, 16, 25, 25].

The programs for A131030, the canonical program `A131030.P3953955354232934061` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131030 has offset 1).

The definition of A131030 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A131030.anchor (n : ℕ) (hn : 1 ≤ n) : A131030 n = (([16, 7, 7, 16, 25, 25].getD ((n - 1) % 6) 0 : ℕ) : ℤ)` in `Proof.A131.A131030`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131030.P3953955354232934061

`a(n-6)` with `a(0)=16, a(1)=7, a(2)=7, a(3)=16, a(4)=25, a(5)=25`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131030

/-- `a(n-6)` -/
def P3953955354232934061.Spec : Prop :=
  ∀ n, (P3953955354232934061.a n : ℤ) = A131030 (n + 1)

theorem P3953955354232934061.correct : P3953955354232934061.Spec := by
  intro n
  simp only [A131030, Nat.add_sub_cancel]

end A131030

/-!
# A131032: A097806 * A130296.

The programs for A131032, the canonical program `A131032.P456656783028038968` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131032 has offset 1).

The definition of A131032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131032.P16516330252189113273

`ceil(ratio[A340804(n+1)])`
-/

namespace A131032.P16516330252189113273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A131032.P16516330252189113273

namespace A131032

/-- `ceil(ratio[A340804(n+1)])` -/
def P16516330252189113273.Spec : Prop :=
  ∀ n, P16516330252189113273.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P456656783028038968

`ceil(ratio[2*A079904(n)+1])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131032

/-- `ceil(ratio[2*A079904(n)+1])` -/
def P456656783028038968.Spec : Prop :=
  ∀ n, P456656783028038968.a n = A131032 (n + 1)

theorem P456656783028038968.correct : P456656783028038968.Spec := by
  intro n
  simp only [A131032, Nat.add_sub_cancel]

end A131032

/-! ## A131032.P13635388356933191497

`ceil(ratio[2*A076110(n+1)-1])`
-/

namespace A131032.P13635388356933191497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076110 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A131032.P13635388356933191497

namespace A131032

/-- `ceil(ratio[2*A076110(n+1)-1])` -/
def P13635388356933191497.Spec : Prop :=
  ∀ n, P13635388356933191497.a n = A131032 (n + 1)

theorem P13635388356933191497.correct : P13635388356933191497.Spec := by
  intro n
  simp only [A131032, Nat.add_sub_cancel, A131032.P13635388356933191497.f1, A131032.P13635388356933191497.a, A131032.P456656783028038968.f1, A131032.P456656783028038968.a, A076110, A076110.P1795246513683719096.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131032

/-! ## A131032.P14465507285293893562

`A004274(A131033(n+1))`
-/

namespace A131032.P14465507285293893562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A131033 (n + 1)).toNat

end

end A131032.P14465507285293893562

namespace A131032

/-- `A004274(A131033(n+1))` -/
def P14465507285293893562.Spec : Prop :=
  ∀ n, P14465507285293893562.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P18006984941114114151

`ceil(A099375(n)/A193592(n))`
-/

namespace A131032.P18006984941114114151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / (A193592 n : ℚ)⌉

end

end A131032.P18006984941114114151

namespace A131032

/-- `ceil(A099375(n)/A193592(n))` -/
def P18006984941114114151.Spec : Prop :=
  ∀ n, P18006984941114114151.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P6132276861059084769

`ceil(root(A099375(n), A007318(n)))`
-/

namespace A131032.P6132276861059084769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℝ) ^ (1 / (A007318 n : ℝ))⌉

end

end A131032.P6132276861059084769

namespace A131032

/-- `ceil(root(A099375(n), A007318(n)))` -/
def P6132276861059084769.Spec : Prop :=
  ∀ n, P6132276861059084769.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P15393653441253540995

`ceil(root(A099375(n), A074909(n)))`
-/

namespace A131032.P15393653441253540995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℝ) ^ (1 / (A074909 n : ℝ))⌉

end

end A131032.P15393653441253540995

namespace A131032

/-- `ceil(root(A099375(n), A074909(n)))` -/
def P15393653441253540995.Spec : Prop :=
  ∀ n, P15393653441253540995.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P11195297932228102582

`ceil(root(A099375(n), A001263(n+1)))`
-/

namespace A131032.P11195297932228102582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℝ) ^ (1 / (A001263 (n + 1) : ℝ))⌉

end

end A131032.P11195297932228102582

namespace A131032

/-- `ceil(root(A099375(n), A001263(n+1)))` -/
def P11195297932228102582.Spec : Prop :=
  ∀ n, P11195297932228102582.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P943550382351356093

`2*A130296(n+1)-A103451(n)`
-/

namespace A131032.P943550382351356093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130296 (n + 1) - A103451 n

end

end A131032.P943550382351356093

namespace A131032

/-- `2*A130296(n+1)-A103451(n)` -/
def P943550382351356093.Spec : Prop :=
  ∀ n, P943550382351356093.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P13204227883963914310

`(A144112(n+1)+A130296(n+1))/A130296(n+2)`
-/

namespace A131032.P13204227883963914310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144112 (n + 1) + A130296 (n + 1) : ℚ) / (A130296 (n + 2) : ℚ)

end

end A131032.P13204227883963914310

namespace A131032

/-- `(A144112(n+1)+A130296(n+1))/A130296(n+2)` -/
def P13204227883963914310.Spec : Prop :=
  ∀ n, P13204227883963914310.a n = (A131032 (n + 1) : ℚ)

end A131032

/-! ## A131032.P197962041464870487

`ceil(root(A193648(n+2), A193648(n+1)))`
-/

namespace A131032.P197962041464870487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193648 (n + 2) : ℝ) ^ (1 / (A193648 (n + 1) : ℝ))⌉

end

end A131032.P197962041464870487

namespace A131032

/-- `ceil(root(A193648(n+2), A193648(n+1)))` -/
def P197962041464870487.Spec : Prop :=
  ∀ n, P197962041464870487.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P16877672408776747585

`ceil(root(A110813(n), A126277(n+1)))`
-/

namespace A131032.P16877672408776747585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110813 n : ℝ) ^ (1 / (A126277 (n + 1) : ℝ))⌉

end

end A131032.P16877672408776747585

namespace A131032

/-- `ceil(root(A110813(n), A126277(n+1)))` -/
def P16877672408776747585.Spec : Prop :=
  ∀ n, P16877672408776747585.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P3585364537034723802

`ceil(root(A099375(n), A008277(n+1)))`
-/

namespace A131032.P3585364537034723802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℝ) ^ (1 / (A008277 (n + 1) : ℝ))⌉

end

end A131032.P3585364537034723802

namespace A131032

/-- `ceil(root(A099375(n), A008277(n+1)))` -/
def P3585364537034723802.Spec : Prop :=
  ∀ n, P3585364537034723802.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P8489925402342242505

`ceil(root(A099375(n), A008279(n)))`
-/

namespace A131032.P8489925402342242505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℝ) ^ (1 / (A008279 n : ℝ))⌉

end

end A131032.P8489925402342242505

namespace A131032

/-- `ceil(root(A099375(n), A008279(n)))` -/
def P8489925402342242505.Spec : Prop :=
  ∀ n, P8489925402342242505.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P10332265923065028293

`ceil(root(A099375(n), A142075(n+1)))`
-/

namespace A131032.P10332265923065028293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℝ) ^ (1 / (A142075 (n + 1) : ℝ))⌉

end

end A131032.P10332265923065028293

namespace A131032

/-- `ceil(root(A099375(n), A142075(n+1)))` -/
def P10332265923065028293.Spec : Prop :=
  ∀ n, P10332265923065028293.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P11296009290456537424

`ceil(root(A099375(n), A117401(n)))`
-/

namespace A131032.P11296009290456537424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℝ) ^ (1 / (A117401 n : ℝ))⌉

end

end A131032.P11296009290456537424

namespace A131032

/-- `ceil(root(A099375(n), A117401(n)))` -/
def P11296009290456537424.Spec : Prop :=
  ∀ n, P11296009290456537424.a n = A131032 (n + 1)

end A131032

/-! ## A131032.P10107084068407783883

`ceil(root(A099375(n), A176243(n+1)))`
-/

namespace A131032.P10107084068407783883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℝ) ^ (1 / (A176243 (n + 1) : ℝ))⌉

end

end A131032.P10107084068407783883

namespace A131032

/-- `ceil(root(A099375(n), A176243(n+1)))` -/
def P10107084068407783883.Spec : Prop :=
  ∀ n, P10107084068407783883.a n = A131032 (n + 1)

end A131032

/-!
# A131033: A130296 * A097806.

The programs for A131033, the canonical program `A131033.P4849263893902669054` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131033 has offset 1).

The definition of A131033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131033.P4849263893902669054

`A130296(n+1)+A023532(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131033

/-- `A130296(n+1)+A023532(n)` -/
def P4849263893902669054.Spec : Prop :=
  ∀ n, P4849263893902669054.a n = A131033 (n + 1)

theorem P4849263893902669054.correct : P4849263893902669054.Spec := by
  intro n
  simp only [A131033, Nat.add_sub_cancel]

end A131033

/-! ## A131033.P5182368506726163884

`A131035(n)+A129184(n+1)`
-/

namespace A131033.P5182368506726163884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131035 n + A129184 (n + 1)

end

end A131033.P5182368506726163884

namespace A131033

/-- `A131035(n)+A129184(n+1)` -/
def P5182368506726163884.Spec : Prop :=
  ∀ n, P5182368506726163884.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P2469387261704111686

`A278597(n+1)-A167407(n)`
-/

namespace A131033.P2469387261704111686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278597 (n + 1) - A167407 n

end

end A131033.P2469387261704111686

namespace A131033

/-- `A278597(n+1)-A167407(n)` -/
def P2469387261704111686.Spec : Prop :=
  ∀ n, P2469387261704111686.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P12402392024933929846

`A158821(n)+2*A023532(n)`
-/

namespace A131033.P12402392024933929846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n + 2 * A023532 n

end

end A131033.P12402392024933929846

namespace A131033

/-- `A158821(n)+2*A023532(n)` -/
def P12402392024933929846.Spec : Prop :=
  ∀ n, P12402392024933929846.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P3921026594610332254

`2-A103452(n)*A153861(n)`
-/

namespace A131033.P3921026594610332254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103452 n * A153861 n

end

end A131033.P3921026594610332254

namespace A131033

/-- `2-A103452(n)*A153861(n)` -/
def P3921026594610332254.Spec : Prop :=
  ∀ n, P3921026594610332254.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P8272711009631001495

`2-A103452(n)*A193739(n)`
-/

namespace A131033.P8272711009631001495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103452 n * A193739 n

end

end A131033.P8272711009631001495

namespace A131033

/-- `2-A103452(n)*A193739(n)` -/
def P8272711009631001495.Spec : Prop :=
  ∀ n, P8272711009631001495.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P2810347222092514007

`2-A103452(n)*A236376(n)`
-/

namespace A131033.P2810347222092514007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103452 n * A236376 n

end

end A131033.P2810347222092514007

namespace A131033

/-- `2-A103452(n)*A236376(n)` -/
def P2810347222092514007.Spec : Prop :=
  ∀ n, P2810347222092514007.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P142553172157242713

`A144217(n+1)+2-A127648(n)`
-/

namespace A131033.P142553172157242713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + (2 - A127648 n)

end

end A131033.P142553172157242713

namespace A131033

/-- `A144217(n+1)+2-A127648(n)` -/
def P142553172157242713.Spec : Prop :=
  ∀ n, P142553172157242713.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P5117317838521832089

`2*A130296(n+1)-A158821(n)`
-/

namespace A131033.P5117317838521832089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130296 (n + 1) - A158821 n

end

end A131033.P5117317838521832089

namespace A131033

/-- `2*A130296(n+1)-A158821(n)` -/
def P5117317838521832089.Spec : Prop :=
  ∀ n, P5117317838521832089.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P3452659591119289564

`2-A103452(n)*A209561(n+1)`
-/

namespace A131033.P3452659591119289564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103452 n * A209561 (n + 1)

end

end A131033.P3452659591119289564

namespace A131033

/-- `2-A103452(n)*A209561(n+1)` -/
def P3452659591119289564.Spec : Prop :=
  ∀ n, P3452659591119289564.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P8396612143858741870

`2-A103452(n)*A209567(n+1)`
-/

namespace A131033.P8396612143858741870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103452 n * A209567 (n + 1)

end

end A131033.P8396612143858741870

namespace A131033

/-- `2-A103452(n)*A209567(n+1)` -/
def P8396612143858741870.Spec : Prop :=
  ∀ n, P8396612143858741870.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P3219716716755770277

`2-A103452(n)*A209569(n+1)`
-/

namespace A131033.P3219716716755770277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103452 n * A209569 (n + 1)

end

end A131033.P3219716716755770277

namespace A131033

/-- `2-A103452(n)*A209569(n+1)` -/
def P3219716716755770277.Spec : Prop :=
  ∀ n, P3219716716755770277.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P9322598106110020433

`2-A103452(n)*A209573(n+1)`
-/

namespace A131033.P9322598106110020433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103452 n * A209573 (n + 1)

end

end A131033.P9322598106110020433

namespace A131033

/-- `2-A103452(n)*A209573(n+1)` -/
def P9322598106110020433.Spec : Prop :=
  ∀ n, P9322598106110020433.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P12048342506695869155

`A131821(n+1)+Δ[A002260(n+1)]`
-/

namespace A131033.P12048342506695869155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + (f1 (n + 1) - f1 n)

end

end A131033.P12048342506695869155

namespace A131033

/-- `A131821(n+1)+Δ[A002260(n+1)]` -/
def P12048342506695869155.Spec : Prop :=
  ∀ n, P12048342506695869155.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P6792815782101384288

`(A198321(n+1)+A135227(n))/A007318(n)`
-/

namespace A131033.P6792815782101384288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198321 (n + 1) + A135227 n : ℚ) / (A007318 n : ℚ)

end

end A131033.P6792815782101384288

namespace A131033

/-- `(A198321(n+1)+A135227(n))/A007318(n)` -/
def P6792815782101384288.Spec : Prop :=
  ∀ n, P6792815782101384288.a n = (A131033 (n + 1) : ℚ)

end A131033

/-! ## A131033.P6421347348712717721

`A002024(n+1)+A130296(n+1)-A003056(n+1)`
-/

namespace A131033.P6421347348712717721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A130296 (n + 1) - A003056 (n + 1))

end

end A131033.P6421347348712717721

namespace A131033

/-- `A002024(n+1)+A130296(n+1)-A003056(n+1)` -/
def P6421347348712717721.Spec : Prop :=
  ∀ n, P6421347348712717721.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P3128710458614308674

`A131821(n+1)+A002260(n+2)-A002260(n+1)`
-/

namespace A131033.P3128710458614308674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + (A002260 (n + 2) - A002260 (n + 1))

end

end A131033.P3128710458614308674

namespace A131033

/-- `A131821(n+1)+A002260(n+2)-A002260(n+1)` -/
def P3128710458614308674.Spec : Prop :=
  ∀ n, P3128710458614308674.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P3877062066198759531

`ceil(ratio[n+1-A095832(n+1)/2])`
-/

namespace A131033.P3877062066198759531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A095832 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) / f1 n⌉

end

end A131033.P3877062066198759531

namespace A131033

/-- `ceil(ratio[n+1-A095832(n+1)/2])` -/
def P3877062066198759531.Spec : Prop :=
  ∀ n, P3877062066198759531.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P14114597582770850640

`A131821(n+1)+Δ[A002262(n)]`
-/

namespace A131033.P14114597582770850640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + (f1 (n + 1) - f1 n)

end

end A131033.P14114597582770850640

namespace A131033

/-- `A131821(n+1)+Δ[A002262(n)]` -/
def P14114597582770850640.Spec : Prop :=
  ∀ n, P14114597582770850640.a n = A131033 (n + 1)

end A131033

/-! ## A131033.P14000721877637042413

`Δ[A206735(n)]*A103451(n)+2`
-/

namespace A131033.P14000721877637042413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A103451 n + 2

end

end A131033.P14000721877637042413

namespace A131033

/-- `Δ[A206735(n)]*A103451(n)+2` -/
def P14000721877637042413.Spec : Prop :=
  ∀ n, P14000721877637042413.a n = A131033 (n + 1)

end A131033

/-!
# A131034: Triangle read by rows: A129686 * A051340 as infinite lower triangular matrices.

The programs for A131034, the canonical program `A131034.P11408051281960244654` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131034 has offset 0).

The definition of A131034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131034.P11408051281960244654

`A004271(A131035(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131034

/-- `A004271(A131035(n))` -/
def P11408051281960244654.Spec : Prop :=
  ∀ n, P11408051281960244654.a n = A131034 n

theorem P11408051281960244654.correct : P11408051281960244654.Spec := by
  intro n
  simp only [A131034]

end A131034

/-! ## A131034.P4693770872086984805

`gcd(A185879(n+1), A368028(n))`
-/

namespace A131034.P4693770872086984805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185879 (n + 1)) (A368028 n)

end

end A131034.P4693770872086984805

namespace A131034

/-- `gcd(A185879(n+1), A368028(n))` -/
def P4693770872086984805.Spec : Prop :=
  ∀ n, (P4693770872086984805.a n : ℤ) = A131034 n

end A131034

/-! ## A131034.P10853171604129901544

`gcd(A185879(n+1), A355401(n))`
-/

namespace A131034.P10853171604129901544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185879 (n + 1)) (A355401 n)

end

end A131034.P10853171604129901544

namespace A131034

/-- `gcd(A185879(n+1), A355401(n))` -/
def P10853171604129901544.Spec : Prop :=
  ∀ n, (P10853171604129901544.a n : ℤ) = A131034 n

end A131034

/-! ## A131034.P2289469800669473676

`gcd(A185879(n+1), A346081(n))`
-/

namespace A131034.P2289469800669473676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185879 (n + 1)) (A346081 n)

end

end A131034.P2289469800669473676

namespace A131034

/-- `gcd(A185879(n+1), A346081(n))` -/
def P2289469800669473676.Spec : Prop :=
  ∀ n, (P2289469800669473676.a n : ℤ) = A131034 n

end A131034

/-! ## A131034.P7262037366152000449

`xor(A091304(A219694(n+1)), A198954(n))`
-/

namespace A131034.P7262037366152000449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091304 (A219694 (n + 1)).toNat) (A198954 n)

end

end A131034.P7262037366152000449

namespace A131034

/-- `xor(A091304(A219694(n+1)), A198954(n))` -/
def P7262037366152000449.Spec : Prop :=
  ∀ n, P7262037366152000449.a n = A131034 n

end A131034

/-!
# A131035: Triangle read by rows: A051340 * A129686 as infinite lower triangular matrices.

The programs for A131035, the canonical program `A131035.P6781276959955165699` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131035 has offset 0).

The definition of A131035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131035.P6781276959955165699

`A131033(n+1)-char[∑[n+2]-1]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131035

/-- `A131033(n+1)-char[∑[n+2]-1]` -/
def P6781276959955165699.Spec : Prop :=
  ∀ n, P6781276959955165699.a n = A131035 n

theorem P6781276959955165699.correct : P6781276959955165699.Spec := by
  intro n
  simp only [A131035]

end A131035

/-! ## A131035.P1896567029125823347

`A130296(n+1)+1-char[∑[∑[n]%(n+1)-1]]`
-/

namespace A131035.P1896567029125823347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A131035.P1896567029125823347

namespace A131035

/-- `A130296(n+1)+1-char[∑[∑[n]%(n+1)-1]]` -/
def P1896567029125823347.Spec : Prop :=
  ∀ n, P1896567029125823347.a n = A131035 n

end A131035

/-! ## A131035.P8937988131432898348

`A157928(C(comp[∑[n]]-n, 2)-(n+1))+round(sqrt(2*n))*char[∑[n]]+1`
-/

namespace A131035.P8937988131432898348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + 1)

end

end A131035.P8937988131432898348

namespace A131035

/-- `A157928(C(comp[∑[n]]-n, 2)-(n+1))+round(sqrt(2*n))*char[∑[n]]+1` -/
def P8937988131432898348.Spec : Prop :=
  ∀ n, P8937988131432898348.a n = A131035 n

end A131035

/-! ## A131035.P3643460200570091899

`ceil(A158821(n)+atan(A025581(n)))`
-/

namespace A131035.P3643460200570091899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158821 n : ℝ) + Real.arctan (A025581 n : ℝ)⌉

end

end A131035.P3643460200570091899

namespace A131035

/-- `ceil(A158821(n)+atan(A025581(n)))` -/
def P3643460200570091899.Spec : Prop :=
  ∀ n, P3643460200570091899.a n = A131035 n

end A131035

/-! ## A131035.P4501633322636612688

`A134889(A131034(n))`
-/

namespace A131035.P4501633322636612688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134889 (A131034 n).toNat

end

end A131035.P4501633322636612688

namespace A131035

/-- `A134889(A131034(n))` -/
def P4501633322636612688.Spec : Prop :=
  ∀ n, P4501633322636612688.a n = A131035 n

end A131035

/-! ## A131035.P1716594083263979440

`A158821(n)+A001221(A114283(n))`
-/

namespace A131035.P1716594083263979440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n + A001221 (A114283 n).toNat

end

end A131035.P1716594083263979440

namespace A131035

/-- `A158821(n)+A001221(A114283(n))` -/
def P1716594083263979440.Spec : Prop :=
  ∀ n, P1716594083263979440.a n = A131035 n

end A131035

/-!
# A131036: First differences of A131711.

The programs for A131036, the canonical program `A131036.P679401169574856036` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131036 has offset 0).

The definition of A131036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131036.P679401169574856036

`ogf((1+2x+4x^2+5x^4+4x^6+8x^7+x^8)/(1+x+x^4+x^5+x^8+x^9))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131036

/-- `ogf((1+2x+4x^2+5x^4+4x^6+8x^7+x^8)/(1+x+x^4+x^5+x^8+x^9))` -/
def P679401169574856036.Spec : Prop :=
  ∀ n, P679401169574856036.a n = A131036 n

theorem P679401169574856036.correct : P679401169574856036.Spec := by
  intro n
  simp only [A131036]

end A131036

/-!
# A131037: Sequence A001333 with last digits set to zero.

The programs for A131037, the canonical program `A131037.P4097135119821782390` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131037 has offset 0).

The definition of A131037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131037.P4097135119821782390

`A001333(n)-A131707(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131037

/-- `A001333(n)-A131707(n)` -/
def P4097135119821782390.Spec : Prop :=
  ∀ n, P4097135119821782390.a n = A131037 n

theorem P4097135119821782390.correct : P4097135119821782390.Spec := by
  intro n
  simp only [A131037]

end A131037

/-! ## A131037.P222443481310919255

`A001333(n)-abs(A131608(n))`
-/

namespace A131037.P222443481310919255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - |A131608 n|

end

end A131037.P222443481310919255

namespace A131037

/-- `A001333(n)-abs(A131608(n))` -/
def P222443481310919255.Spec : Prop :=
  ∀ n, P222443481310919255.a n = A131037 n

end A131037

/-! ## A131037.P10748762811467547984

`abs(A123335(n))-A131707(n)`
-/

namespace A131037.P10748762811467547984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 n| - A131707 n

end

end A131037.P10748762811467547984

namespace A131037

/-- `abs(A123335(n))-A131707(n)` -/
def P10748762811467547984.Spec : Prop :=
  ∀ n, P10748762811467547984.a n = A131037 n

end A131037

/-! ## A131037.P4293412474222335460

`Δ[A000129(n)]-A131707(n)`
-/

namespace A131037.P4293412474222335460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131707 n

end

end A131037.P4293412474222335460

namespace A131037

/-- `Δ[A000129(n)]-A131707(n)` -/
def P4293412474222335460.Spec : Prop :=
  ∀ n, P4293412474222335460.a n = A131037 n

end A131037

/-! ## A131037.P1180995634598889642

`A000129(n+1)-(A131707(n)+A000129(n))`
-/

namespace A131037.P1180995634598889642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - (A131707 n + A000129 n)

end

end A131037.P1180995634598889642

namespace A131037

/-- `A000129(n+1)-(A131707(n)+A000129(n))` -/
def P1180995634598889642.Spec : Prop :=
  ∀ n, P1180995634598889642.a n = A131037 n

end A131037

/-!
# A131038: a(1)=1. For n >= 2, Sum_{k|n, neither (k+1) nor (k-1) divides n} a(k) = 0. (The sum is over the isolated divisors of n. A divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.).

The programs for A131038, there is no canonical definition to state claims against.
-/

/-! ## A131038.P16450851348573845743

`A087003(A034699(n+1)*A113196(n+1))`
-/

namespace A131038.P16450851348573845743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A034699 (n + 1) * A113196 (n + 1)).toNat

end

end A131038.P16450851348573845743

/-! ## A131038.P10334063996486604324

`A087003(A053585(n+1)*A113196(n+1))`
-/

namespace A131038.P10334063996486604324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A053585 (n + 1) * A113196 (n + 1)).toNat

end

end A131038.P10334063996486604324

/-! ## A131038.P1206947329442270014

`A087003(A113196(n+1)*A223491(n+1))`
-/

namespace A131038.P1206947329442270014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A113196 (n + 1) * A223491 (n + 1)).toNat

end

end A131038.P1206947329442270014

/-! ## A131038.P8132514114294981508

`A087003(A113196(n+1)*A330691(n+1))`
-/

namespace A131038.P8132514114294981508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A113196 (n + 1) * A330691 (n + 1)).toNat

end

end A131038.P8132514114294981508

/-! ## A131038.P12953781734845938717

`A087003(lcm(A034699(n+1), A113196(n+1)))`
-/

namespace A131038.P12953781734845938717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (Int.lcm (A034699 (n + 1)) (A113196 (n + 1)))

end

end A131038.P12953781734845938717

/-!
# A131039: Expansion of (1-x)*(2*x^2-4*x+1)/(1-2*x+5*x^2-4*x^3+x^4).

The programs for A131039, the canonical program `A131039.P13725296494524083606` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131039 has offset 0).

The definition of A131039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+6x^2-2x^3)/(1-2x+5x^2-4x^3+x^4))` (program `A131039.P13725296494524083606`, by `A131039.P13725296494524083606.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131039.P13725296494524083606

`ogf((1-5x+6x^2-2x^3)/(1-2x+5x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131039

/-- `ogf((1-5x+6x^2-2x^3)/(1-2x+5x^2-4x^3+x^4))` -/
def P13725296494524083606.Spec : Prop :=
  ∀ n, P13725296494524083606.a n = A131039 n

theorem P13725296494524083606.correct : P13725296494524083606.Spec := by
  intro n
  simp only [A131039]

end A131039

/-! ## A131039.P4934856620434014364

`2*a(n-1)-5*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=-3, a(2)=-5, a(3)=7`
-/

namespace A131039.P4934856620434014364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, -5, 7] fun n a =>
  2 * a (n - 1) - 5 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A131039.P4934856620434014364

namespace A131039

/-- `2*a(n-1)-5*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4934856620434014364.Spec : Prop :=
  ∀ n, P4934856620434014364.a n = A131039 n

end A131039

/-!
# A131040: a(n) = (1/2+(1/2)*i*sqrt(11))^(n+1) + (1/2-(1/2)*i*sqrt(11))^(n+1), where i=sqrt(-1).

The programs for A131040, the canonical program `A131040.P4005011402732196009` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131040 has offset 0).

The definition of A131040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131040.P4276357043344264716

`ogf((1-6x)/(1-x+3x^2))`
-/

namespace A131040.P4276357043344264716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -1, 3] n

end

end A131040.P4276357043344264716

namespace A131040

/-- `ogf((1-6x)/(1-x+3x^2))` -/
def P4276357043344264716.Spec : Prop :=
  ∀ n, P4276357043344264716.a n = A131040 n

end A131040

/-! ## A131040.P4005011402732196009

`a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=-5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131040

/-- `a(n-1)-3*a(n-2)` -/
def P4005011402732196009.Spec : Prop :=
  ∀ n, P4005011402732196009.a n = A131040 n

theorem P4005011402732196009.correct : P4005011402732196009.Spec := by
  intro n
  simp only [A131040]

end A131040

/-! ## A131040.P3657466701657537015

`A106852(n+1)+Δ[A106852(n)]`
-/

namespace A131040.P3657466701657537015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106852 (n + 1) + (f1 (n + 1) - f1 n)

end

end A131040.P3657466701657537015

namespace A131040

/-- `A106852(n+1)+Δ[A106852(n)]` -/
def P3657466701657537015.Spec : Prop :=
  ∀ n, P3657466701657537015.a n = A131040 n

end A131040

/-! ## A131040.P3357647024814526383

`A106852(Δ[n²])/A106852(n)`
-/

namespace A131040.P3357647024814526383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106852 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A106852 n : ℚ)

end

end A131040.P3357647024814526383

namespace A131040

/-- `A106852(Δ[n²])/A106852(n)` -/
def P3357647024814526383.Spec : Prop :=
  ∀ n, P3357647024814526383.a n = (A131040 n : ℚ)

end A131040

/-! ## A131040.P8655204878045313696

`A190970(n+1)/A214733(n+1)`
-/

namespace A131040.P8655204878045313696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190970 (n + 1) : ℚ) / (A214733 (n + 1) : ℚ)

end

end A131040.P8655204878045313696

namespace A131040

/-- `A190970(n+1)/A214733(n+1)` -/
def P8655204878045313696.Spec : Prop :=
  ∀ n, P8655204878045313696.a n = (A131040 n : ℚ)

end A131040

/-!
# A131041: a(n) = 2*a(n-1) - a(n-2) - a(n-4).

The programs for A131041, the canonical program `A131041.P6165314422403166936` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131041 has offset 0).

The definition of A131041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)-a(n-4)` (program `A131041.P6165314422403166936`, by `A131041.P6165314422403166936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131041.P13395527205742026372

`ogf((1-x-2x^3)/(1-2x+x^2+x^4))`
-/

namespace A131041.P13395527205742026372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -2] [1, -2, 1, 0, 1] n

end

end A131041.P13395527205742026372

namespace A131041

/-- `ogf((1-x-2x^3)/(1-2x+x^2+x^4))` -/
def P13395527205742026372.Spec : Prop :=
  ∀ n, P13395527205742026372.a n = A131041 n

end A131041

/-! ## A131041.P6165314422403166936

`2*a(n-1)-a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131041

/-- `2*a(n-1)-a(n-2)-a(n-4)` -/
def P6165314422403166936.Spec : Prop :=
  ∀ n, P6165314422403166936.a n = A131041 n

theorem P6165314422403166936.correct : P6165314422403166936.Spec := by
  intro n
  simp only [A131041]

end A131041

/-! ## A131041.P504571622451576161

`a(n-1)-(a(n-2)-(a(n-1)-a(n-4)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-1`
-/

namespace A131041.P504571622451576161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, -1] fun n a =>
  a (n - 1) - (a (n - 2) - (a (n - 1) - a (n - 4)))

end

end A131041.P504571622451576161

namespace A131041

/-- `a(n-1)-(a(n-2)-(a(n-1)-a(n-4)))` -/
def P504571622451576161.Spec : Prop :=
  ∀ n, P504571622451576161.a n = A131041 n

theorem P504571622451576161.correct : P504571622451576161.Spec := by
  intro n
  simp only [A131041, Nat.add_sub_cancel, A131041.P504571622451576161.a, A131041.P6165314422403166936.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A131041

/-! ## A131041.P3543640295469794531

`A104862(n+2)+Δ[A104862(n+1)]`
-/

namespace A131041.P3543640295469794531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 (n + 2) + (f1 (n + 1) - f1 n)

end

end A131041.P3543640295469794531

namespace A131041

/-- `A104862(n+2)+Δ[A104862(n+1)]` -/
def P3543640295469794531.Spec : Prop :=
  ∀ n, P3543640295469794531.a n = A131041 n

end A131041

/-! ## A131041.P13765175542526686074

`Δ[ogf((2-x)/(1-2x+x^2+x^4))]`
-/

namespace A131041.P13765175542526686074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -2, 1, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131041.P13765175542526686074

namespace A131041

/-- `Δ[ogf((2-x)/(1-2x+x^2+x^4))]` -/
def P13765175542526686074.Spec : Prop :=
  ∀ n, P13765175542526686074.a n = A131041 n

end A131041

/-! ## A131041.P8604945374875823488

`Δ[A014292(n+2)+Δ[A014292(n+1)]]`
-/

namespace A131041.P8604945374875823488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014292 (n + 2) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131041.P8604945374875823488

namespace A131041

/-- `Δ[A014292(n+2)+Δ[A014292(n+1)]]` -/
def P8604945374875823488.Spec : Prop :=
  ∀ n, P8604945374875823488.a n = A131041 n

end A131041

/-!
# A131042: Natural numbers A000027 with 6n+3 and 6n+4 terms swapped.

The programs for A131042, the canonical program `A131042.P13320688027369819316` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131042 has offset 1).

The definition of A131042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131042.P7937396094099778608

`ogf((1+x+2x^2-x^3+2x^4+x^5)/(1-x-x^6+x^7))`
-/

namespace A131042.P7937396094099778608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, -1, 2, 1] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A131042.P7937396094099778608

namespace A131042

/-- `ogf((1+x+2x^2-x^3+2x^4+x^5)/(1-x-x^6+x^7))` -/
def P7937396094099778608.Spec : Prop :=
  ∀ n, P7937396094099778608.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P13320688027369819316

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3, a(4)=5, a(5)=6, a(6)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131042

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P13320688027369819316.Spec : Prop :=
  ∀ n, P13320688027369819316.a n = A131042 (n + 1)

theorem P13320688027369819316.correct : P13320688027369819316.Spec := by
  intro n
  simp only [A131042, Nat.add_sub_cancel]

end A131042

/-! ## A131042.P7568463669228102609

`ceil((n+3)%6/4)+n`
-/

namespace A131042.P7568463669228102609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 3) % 6 : ℕ) : ℚ) / 4⌉ + (n : ℤ)

end

end A131042.P7568463669228102609

namespace A131042

/-- `ceil((n+3)%6/4)+n` -/
def P7568463669228102609.Spec : Prop :=
  ∀ n, P7568463669228102609.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P5086481768565883706

`∑[2-floor(gcd(3, n)/gcd(2, n))]`
-/

namespace A131042.P5086481768565883706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊(Nat.gcd 3 n : ℚ) / (Nat.gcd 2 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131042.P5086481768565883706

namespace A131042

/-- `∑[2-floor(gcd(3, n)/gcd(2, n))]` -/
def P5086481768565883706.Spec : Prop :=
  ∀ n, P5086481768565883706.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P2398142536977064138

`∑[A131017(n)]`
-/

namespace A131042.P2398142536977064138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131042.P2398142536977064138

namespace A131042

/-- `∑[A131017(n)]` -/
def P2398142536977064138.Spec : Prop :=
  ∀ n, P2398142536977064138.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P15668682151224951733

`A143097(a(n-3)+3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A131042.P15668682151224951733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A143097 (a (n - 3) + 3).toNat

end

end A131042.P15668682151224951733

namespace A131042

/-- `A143097(a(n-3)+3)` -/
def P15668682151224951733.Spec : Prop :=
  ∀ n, P15668682151224951733.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P5662858486259577313

`∑[3-A000005(gcd(n+3, 2*n))]`
-/

namespace A131042.P5662858486259577313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000005 (Nat.gcd (n + 3) (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131042.P5662858486259577313

namespace A131042

/-- `∑[3-A000005(gcd(n+3, 2*n))]` -/
def P5662858486259577313.Spec : Prop :=
  ∀ n, P5662858486259577313.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P7019256854337603743

`A302404(n)+A051275(n)`
-/

namespace A131042.P7019256854337603743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302404 n + A051275 n

end

end A131042.P7019256854337603743

namespace A131042

/-- `A302404(n)+A051275(n)` -/
def P7019256854337603743.Spec : Prop :=
  ∀ n, P7019256854337603743.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P9736720304112863257

`A097992(n)+A063201(n+1)`
-/

namespace A131042.P9736720304112863257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 n + A063201 (n + 1)

end

end A131042.P9736720304112863257

namespace A131042

/-- `A097992(n)+A063201(n+1)` -/
def P9736720304112863257.Spec : Prop :=
  ∀ n, P9736720304112863257.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P14823189947046816814

`A030118(A030118(n))%3+n`
-/

namespace A131042.P14823189947046816814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030118 (A030118 n).toNat) 3 + (n : ℤ)

end

end A131042.P14823189947046816814

namespace A131042

/-- `A030118(A030118(n))%3+n` -/
def P14823189947046816814.Spec : Prop :=
  ∀ n, P14823189947046816814.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P12532994489926676708

`xor(A131719(n), A131793(n+1))`
-/

namespace A131042.P12532994489926676708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131719 n) (A131793 (n + 1))

end

end A131042.P12532994489926676708

namespace A131042

/-- `xor(A131719(n), A131793(n+1))` -/
def P12532994489926676708.Spec : Prop :=
  ∀ n, P12532994489926676708.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P5887354500907593562

`A131717(n+1)+A131017(n)-1`
-/

namespace A131042.P5887354500907593562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (n + 1) + (A131017 n - 1)

end

end A131042.P5887354500907593562

namespace A131042

/-- `A131717(n+1)+A131017(n)-1` -/
def P5887354500907593562.Spec : Prop :=
  ∀ n, P5887354500907593562.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P8314533580553728001

`A032766(n)+2-A032766(A008620(n))`
-/

namespace A131042.P8314533580553728001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + (2 - A032766 (A008620 n).toNat)

end

end A131042.P8314533580553728001

namespace A131042

/-- `A032766(n)+2-A032766(A008620(n))` -/
def P8314533580553728001.Spec : Prop :=
  ∀ n, P8314533580553728001.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P4005955461834468078

`A016777(n)-(A007494(A002264(n))+A007494(n))`
-/

namespace A131042.P4005955461834468078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A007494 (A002264 n).toNat + A007494 n)

end

end A131042.P4005955461834468078

namespace A131042

/-- `A016777(n)-(A007494(A002264(n))+A007494(n))` -/
def P4005955461834468078.Spec : Prop :=
  ∀ n, P4005955461834468078.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P17260359776698090725

`A131717(n+2)-1`
-/

namespace A131042.P17260359776698090725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (n + 2) - 1

end

end A131042.P17260359776698090725

namespace A131042

/-- `A131717(n+2)-1` -/
def P17260359776698090725.Spec : Prop :=
  ∀ n, P17260359776698090725.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P12099409200767392851

`A300076(n+1)+A105637(n)`
-/

namespace A131042.P12099409200767392851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (n + 1) + A105637 n

end

end A131042.P12099409200767392851

namespace A131042

/-- `A300076(n+1)+A105637(n)` -/
def P12099409200767392851.Spec : Prop :=
  ∀ n, P12099409200767392851.a n = A131042 (n + 1)

end A131042

/-! ## A131042.P6090789010440448681

`A131533(n+2)+n+1`
-/

namespace A131042.P6090789010440448681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131533 (n + 2) + (n + 1 : ℤ)

end

end A131042.P6090789010440448681

namespace A131042

/-- `A131533(n+2)+n+1` -/
def P6090789010440448681.Spec : Prop :=
  ∀ n, P6090789010440448681.a n = A131042 (n + 1)

end A131042

/-!
# A131043: Number of primes between 10^n and 10^n+10^(n-1).

The programs for A131043, there is no canonical definition to state claims against.
-/

/-! ## A131043.P10469532607618789285

`record[gcd(A053120(n), A323744(n+1))]`
-/

namespace A131043.P10469532607618789285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053120 n) (A323744 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131043.P10469532607618789285

/-!
# A131044: Triangle T(n,k) read by rows: T(n,k) is the number of compositions of n into k parts such that at least two adjacent parts are equal.

The programs for A131044, there is no canonical definition to state claims against.
-/

/-! ## A131044.P10862714634786597487

`A001281(A124927(n))-A106351(n+1)`
-/

namespace A131044.P10862714634786597487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A124927 n).toNat - A106351 (n + 1)

end

end A131044.P10862714634786597487

/-!
# A131045: Binomial transform of Euler's totient function phi(n+1).

The programs for A131045, the canonical program `A131045.P15840588022099346628` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131045 has offset 0).

The definition of A131045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131045.P15840588022099346628

`∑{#}[n, C(n, #)*A000010(#+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131045

/-- `∑{#}[n, C(n, #)*A000010(#+1)]` -/
def P15840588022099346628.Spec : Prop :=
  ∀ n, P15840588022099346628.a n = A131045 n

theorem P15840588022099346628.correct : P15840588022099346628.Spec := by
  intro n
  simp only [A131045]

end A131045

/-! ## A131045.P3827219756106097814

`A193641(A032555(n+1))-n`
-/

namespace A131045.P3827219756106097814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (A032555 (n + 1)).toNat - (n : ℤ)

end

end A131045.P3827219756106097814

namespace A131045

/-- `A193641(A032555(n+1))-n` -/
def P3827219756106097814.Spec : Prop :=
  ∀ n, P3827219756106097814.a n = A131045 n

end A131045

/-! ## A131045.P13751696421921371836

`A193641(A032557(n+1))-n`
-/

namespace A131045.P13751696421921371836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (A032557 (n + 1)).toNat - (n : ℤ)

end

end A131045.P13751696421921371836

namespace A131045

/-- `A193641(A032557(n+1))-n` -/
def P13751696421921371836.Spec : Prop :=
  ∀ n, P13751696421921371836.a n = A131045 n

end A131045

/-! ## A131045.P17522393793897061842

`A193641(A032559(n+1))-n`
-/

namespace A131045.P17522393793897061842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (A032559 (n + 1)).toNat - (n : ℤ)

end

end A131045.P17522393793897061842

namespace A131045

/-- `A193641(A032559(n+1))-n` -/
def P17522393793897061842.Spec : Prop :=
  ∀ n, P17522393793897061842.a n = A131045 n

end A131045

/-! ## A131045.P17639989132998144833

`A193641(A032563(n+1))-n`
-/

namespace A131045.P17639989132998144833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (A032563 (n + 1)).toNat - (n : ℤ)

end

end A131045.P17639989132998144833

namespace A131045

/-- `A193641(A032563(n+1))-n` -/
def P17639989132998144833.Spec : Prop :=
  ∀ n, P17639989132998144833.a n = A131045 n

end A131045

/-!
# A131046: A007318 * A000203.

The programs for A131046, the canonical program `A131046.P8023724050705882094` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131046 has offset 1).

The definition of A131046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131046.P8023724050705882094

`Δ[A185003(A028310(n))%A185003(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131046

/-- `Δ[A185003(A028310(n))%A185003(n+1)]` -/
def P8023724050705882094.Spec : Prop :=
  ∀ n, P8023724050705882094.a n = A131046 (n + 1)

theorem P8023724050705882094.correct : P8023724050705882094.Spec := by
  intro n
  simp only [A131046, Nat.add_sub_cancel]

end A131046

/-! ## A131046.P4156163252620533286

`Δ[A185003(A000007(n)+n)%A185003(n+1)]`
-/

namespace A131046.P4156163252620533286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185003 (A000007 n + (n : ℤ)).toNat) (A185003 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131046.P4156163252620533286

namespace A131046

/-- `Δ[A185003(A000007(n)+n)%A185003(n+1)]` -/
def P4156163252620533286.Spec : Prop :=
  ∀ n, P4156163252620533286.a n = A131046 (n + 1)

end A131046

/-! ## A131046.P7535544352191217524

`A128929(A185003(n+2))`
-/

namespace A131046.P7535544352191217524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128929 (A185003 (n + 2)).toNat

end

end A131046.P7535544352191217524

namespace A131046

/-- `A128929(A185003(n+2))` -/
def P7535544352191217524.Spec : Prop :=
  ∀ n, P7535544352191217524.a n = A131046 (n + 1)

end A131046

/-! ## A131046.P10655096375649108650

`A002265(A222115(n+2)+1)`
-/

namespace A131046.P10655096375649108650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A222115 (n + 2) + 1).toNat

end

end A131046.P10655096375649108650

namespace A131046

/-- `A002265(A222115(n+2)+1)` -/
def P10655096375649108650.Spec : Prop :=
  ∀ n, P10655096375649108650.a n = A131046 (n + 1)

end A131046

/-!
# A131047: Triangle read by rows: (1/2) * (A007318 - A007318^(-1)) as infinite lower triangular matrices.

The programs for A131047, the canonical program `A131047.P5365841357882953324` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131047 has offset 1).

The definition of A131047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131047.P5365841357882953324

`C(row(n)+1, col(n))*(1-(-1)^(row(n)+1-col(n)))/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131047

/-- `C(row(n)+1, col(n))*(1-(-1)^(row(n)+1-col(n)))/2` -/
def P5365841357882953324.Spec : Prop :=
  ∀ n, P5365841357882953324.a n = (A131047 (n + 1) : ℚ)

end A131047

/-! ## A131047.P8993457609322852322

`comp[∑[4*n]]%2*A074909(n)`
-/

namespace A131047.P8993457609322852322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A074909 n

end

end A131047.P8993457609322852322

namespace A131047

/-- `comp[∑[4*n]]%2*A074909(n)` -/
def P8993457609322852322.Spec : Prop :=
  ∀ n, P8993457609322852322.a n = A131047 (n + 1)

end A131047

/-! ## A131047.P16207707433691215879

`comp[2*(n²+n)]%2*A007318(comp[∑[n+1]])`
-/

namespace A131047.P16207707433691215879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A007318 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A131047.P16207707433691215879

namespace A131047

/-- `comp[2*(n²+n)]%2*A007318(comp[∑[n+1]])` -/
def P16207707433691215879.Spec : Prop :=
  ∀ n, P16207707433691215879.a n = A131047 (n + 1)

end A131047

/-! ## A131047.P10052538907286188762

`lcm(A074909(n), A369736(n))`
-/

namespace A131047.P10052538907286188762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074909 n) (A369736 n)

end

end A131047.P10052538907286188762

namespace A131047

/-- `lcm(A074909(n), A369736(n))` -/
def P10052538907286188762.Spec : Prop :=
  ∀ n, (P10052538907286188762.a n : ℤ) = A131047 (n + 1)

end A131047

/-! ## A131047.P13377953033205828520

`A074909(n)*A128174(n+1)`
-/

namespace A131047.P13377953033205828520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A128174 (n + 1)

end

end A131047.P13377953033205828520

namespace A131047

/-- `A074909(n)*A128174(n+1)` -/
def P13377953033205828520.Spec : Prop :=
  ∀ n, P13377953033205828520.a n = A131047 (n + 1)

end A131047

/-! ## A131047.P384776810162620713

`A074909(n)/A007318(n)*A119467(n)`
-/

namespace A131047.P384776810162620713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / (A007318 n : ℚ) * (A119467 n : ℚ)

end

end A131047.P384776810162620713

namespace A131047

/-- `A074909(n)/A007318(n)*A119467(n)` -/
def P384776810162620713.Spec : Prop :=
  ∀ n, P384776810162620713.a n = (A131047 (n + 1) : ℚ)

end A131047

/-! ## A131047.P6047342394679288774

`A074909(n)*A119467(n)/A130595(n)`
-/

namespace A131047.P6047342394679288774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n * A119467 n : ℚ) / (A130595 n : ℚ)

end

end A131047.P6047342394679288774

namespace A131047

/-- `A074909(n)*A119467(n)/A130595(n)` -/
def P6047342394679288774.Spec : Prop :=
  ∀ n, P6047342394679288774.a n = (A131047 (n + 1) : ℚ)

end A131047

/-! ## A131047.P3925938326918932722

`A131053(n+1)+A131054(n+1)-A131053(n+2)`
-/

namespace A131047.P3925938326918932722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131053 (n + 1) + (A131054 (n + 1) - A131053 (n + 2))

end

end A131047.P3925938326918932722

namespace A131047

/-- `A131053(n+1)+A131054(n+1)-A131053(n+2)` -/
def P3925938326918932722.Spec : Prop :=
  ∀ n, P3925938326918932722.a n = A131047 (n + 1)

end A131047

/-! ## A131047.P7606339546117026798

`A238801(∑[2*n]%comp[∑[n]])`
-/

namespace A131047.P7606339546117026798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A131047.P7606339546117026798

namespace A131047

/-- `A238801(∑[2*n]%comp[∑[n]])` -/
def P7606339546117026798.Spec : Prop :=
  ∀ n, P7606339546117026798.a n = A131047 (n + 1)

end A131047

/-! ## A131047.P13879255156106315123

`A238801(∑[char[∑[n]]]²-(n+1))`
-/

namespace A131047.P13879255156106315123
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A131047.P13879255156106315123

namespace A131047

/-- `A238801(∑[char[∑[n]]]²-(n+1))` -/
def P13879255156106315123.Spec : Prop :=
  ∀ n, P13879255156106315123.a n = A131047 (n + 1)

end A131047

/-! ## A131047.P15903763814714662508

`A117568(n)²*A238801(A061579(n))`
-/

namespace A131047.P15903763814714662508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n ^ 2 * A238801 (A061579 n).toNat

end

end A131047.P15903763814714662508

namespace A131047

/-- `A117568(n)²*A238801(A061579(n))` -/
def P15903763814714662508.Spec : Prop :=
  ∀ n, P15903763814714662508.a n = A131047 (n + 1)

end A131047

/-! ## A131047.P4334631236350952859

`A125175(n)*A128174(n+1)`
-/

namespace A131047.P4334631236350952859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125175 n * A128174 (n + 1)

end

end A131047.P4334631236350952859

namespace A131047

/-- `A125175(n)*A128174(n+1)` -/
def P4334631236350952859.Spec : Prop :=
  ∀ n, P4334631236350952859.a n = A131047 (n + 1)

end A131047

/-! ## A131047.P3814723941171322677

`A074909(n)%A225750(n)`
-/

namespace A131047.P3814723941171322677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 n) (A225750 n)

end

end A131047.P3814723941171322677

namespace A131047

/-- `A074909(n)%A225750(n)` -/
def P3814723941171322677.Spec : Prop :=
  ∀ n, P3814723941171322677.a n = A131047 (n + 1)

end A131047

/-! ## A131047.P13850308117955896491

`A125175(n)%A225750(n)`
-/

namespace A131047.P13850308117955896491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125175 n) (A225750 n)

end

end A131047.P13850308117955896491

namespace A131047

/-- `A125175(n)%A225750(n)` -/
def P13850308117955896491.Spec : Prop :=
  ∀ n, P13850308117955896491.a n = A131047 (n + 1)

end A131047

/-!
# A131048: Triangle read by rows: (1/3) * (A007318^2 - A007318^(-1)) as infinite lower triangular matrices.

The programs for A131048, the canonical program `A131048.P8546716558915576326` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131048 has offset 1).

The definition of A131048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131048.P8546716558915576326

`C(row(n)+1, col(n))*(2^(row(n)+1-col(n))-(-1)^(row(n)+1-col(n)))/3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131048

/-- `C(row(n)+1, col(n))*(2^(row(n)+1-col(n))-(-1)^(row(n)+1-col(n)))/3` -/
def P8546716558915576326.Spec : Prop :=
  ∀ n, P8546716558915576326.a n = (A131048 (n + 1) : ℚ)

end A131048

/-! ## A131048.P4359039845868219788

`A001045(C(comp[∑[n]]-n, 2)-n)*A074909(n)`
-/

namespace A131048.P4359039845868219788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) * A074909 n

end

end A131048.P4359039845868219788

namespace A131048

/-- `A001045(C(comp[∑[n]]-n, 2)-n)*A074909(n)` -/
def P4359039845868219788.Spec : Prop :=
  ∀ n, P4359039845868219788.a n = A131048 (n + 1)

end A131048

/-! ## A131048.P6862789119499203539

`A001045(A004736(n+1))*A074909(n)`
-/

namespace A131048.P6862789119499203539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004736 (n + 1)).toNat * A074909 n

end

end A131048.P6862789119499203539

namespace A131048

/-- `A001045(A004736(n+1))*A074909(n)` -/
def P6862789119499203539.Spec : Prop :=
  ∀ n, P6862789119499203539.a n = A131048 (n + 1)

end A131048

/-! ## A131048.P15213201939398270004

`A071324(A130321(n))*A074909(n)`
-/

namespace A131048.P15213201939398270004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (A130321 n).toNat * A074909 n

end

end A131048.P15213201939398270004

namespace A131048

/-- `A071324(A130321(n))*A074909(n)` -/
def P15213201939398270004.Spec : Prop :=
  ∀ n, P15213201939398270004.a n = A131048 (n + 1)

end A131048

/-! ## A131048.P15314629028289641191

`abs(A328650(n)/A059268(n))`
-/

namespace A131048.P15314629028289641191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A328650 n : ℚ) / (A059268 n : ℚ)|

end

end A131048.P15314629028289641191

namespace A131048

/-- `abs(A328650(n)/A059268(n))` -/
def P15314629028289641191.Spec : Prop :=
  ∀ n, P15314629028289641191.a n = (A131048 (n + 1) : ℚ)

end A131048

/-!
# A131049: Triangle read by rows: (1/4) * (A007318^3 - A007318^(-1)) as infinite lower triangular matrices.

The programs for A131049, the canonical program `A131049.P853709153511908449` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131049 has offset 1).

The definition of A131049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131049.P853709153511908449

`C(row(n)+1, col(n))*(3^(row(n)+1-col(n))-(-1)^(row(n)+1-col(n)))/4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131049

/-- `C(row(n)+1, col(n))*(3^(row(n)+1-col(n))-(-1)^(row(n)+1-col(n)))/4` -/
def P853709153511908449.Spec : Prop :=
  ∀ n, P853709153511908449.a n = (A131049 (n + 1) : ℚ)

end A131049

/-! ## A131049.P1646413633853898678

`A015518(A004736(n+1))*A074909(n)`
-/

namespace A131049.P1646413633853898678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (A004736 (n + 1)).toNat * A074909 n

end

end A131049.P1646413633853898678

namespace A131049

/-- `A015518(A004736(n+1))*A074909(n)` -/
def P1646413633853898678.Spec : Prop :=
  ∀ n, P1646413633853898678.a n = A131049 (n + 1)

end A131049

/-! ## A131049.P12098543990722870090

`A096043(n+1)/A046717(A004736(n+1))`
-/

namespace A131049.P12098543990722870090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096043 (n + 1) : ℚ) / (A046717 (A004736 (n + 1)).toNat : ℚ)

end

end A131049.P12098543990722870090

namespace A131049

/-- `A096043(n+1)/A046717(A004736(n+1))` -/
def P12098543990722870090.Spec : Prop :=
  ∀ n, P12098543990722870090.a n = (A131049 (n + 1) : ℚ)

end A131049

/-! ## A131049.P2141466540910740856

`A006368(A140303(n))*A074909(n)`
-/

namespace A131049.P2141466540910740856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A140303 n).toNat * A074909 n

end

end A131049.P2141466540910740856

namespace A131049

/-- `A006368(A140303(n))*A074909(n)` -/
def P2141466540910740856.Spec : Prop :=
  ∀ n, P2141466540910740856.a n = A131049 (n + 1)

end A131049

/-! ## A131049.P16605888414898427280

`A007318(A007401(n+1))*A130766(A140303(n))`
-/

namespace A131049.P16605888414898427280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007401 (n + 1)).toNat * A130766 (A140303 n).toNat

end

end A131049.P16605888414898427280

namespace A131049

/-- `A007318(A007401(n+1))*A130766(A140303(n))` -/
def P16605888414898427280.Spec : Prop :=
  ∀ n, P16605888414898427280.a n = A131049 (n + 1)

end A131049

/-!
# A131050: Triangle read by rows: (1/5) * (A007318^4 - A007318^(-1)) as infinite lower triangular matrices.

The programs for A131050, the canonical program `A131050.P4873213290756953736` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131050 has offset 1).

The definition of A131050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131050.P4873213290756953736

`C(row(n)+1, col(n))*(4^(row(n)+1-col(n))-(-1)^(row(n)+1-col(n)))/5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131050

/-- `C(row(n)+1, col(n))*(4^(row(n)+1-col(n))-(-1)^(row(n)+1-col(n)))/5` -/
def P4873213290756953736.Spec : Prop :=
  ∀ n, P4873213290756953736.a n = (A131050 (n + 1) : ℚ)

end A131050

/-! ## A131050.P15807582617973820490

`A007909(A099375(n))*A074909(n)`
-/

namespace A131050.P15807582617973820490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (A099375 n).toNat * A074909 n

end

end A131050.P15807582617973820490

namespace A131050

/-- `A007909(A099375(n))*A074909(n)` -/
def P15807582617973820490.Spec : Prop :=
  ∀ n, P15807582617973820490.a n = A131050 (n + 1)

end A131050

/-! ## A131050.P5544504131387138705

`A015521(A004736(n+1))*A074909(n)`
-/

namespace A131050.P5544504131387138705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (A004736 (n + 1)).toNat * A074909 n

end

end A131050.P5544504131387138705

namespace A131050

/-- `A015521(A004736(n+1))*A074909(n)` -/
def P5544504131387138705.Spec : Prop :=
  ∀ n, P5544504131387138705.a n = A131050 (n + 1)

end A131050

/-! ## A131050.P9206586388009300278

`A007318(A003056(n)+1+n)*A015521(A004736(n+1))`
-/

namespace A131050.P9206586388009300278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A003056 n + 1 + (n : ℤ)).toNat * A015521 (A004736 (n + 1)).toNat

end

end A131050.P9206586388009300278

namespace A131050

/-- `A007318(A003056(n)+1+n)*A015521(A004736(n+1))` -/
def P9206586388009300278.Spec : Prop :=
  ∀ n, P9206586388009300278.a n = A131050 (n + 1)

end A131050

/-!
# A131051: a(n) = 5*2^(n-2) - 2 for n > 1, with a(1) = 1.

The programs for A131051, the canonical program `A131051.P13950999472243714415` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131051 has offset 1).

The definition of A131051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131051.P13950999472243714415

`ogf((1+x^2)/(1-3x+2x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131051

/-- `ogf((1+x^2)/(1-3x+2x^2))` -/
def P13950999472243714415.Spec : Prop :=
  ∀ n, P13950999472243714415.a n = A131051 (n + 1)

theorem P13950999472243714415.correct : P13950999472243714415.Spec := by
  intro n
  simp only [A131051, Nat.add_sub_cancel]

end A131051

/-! ## A131051.P1807805920962139151

`∑[floor(5*2^(n-2))]`
-/

namespace A131051.P1807805920962139151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131051.P1807805920962139151

namespace A131051

/-- `∑[floor(5*2^(n-2))]` -/
def P1807805920962139151.Spec : Prop :=
  ∀ n, P1807805920962139151.a n = A131051 (n + 1)

end A131051

/-! ## A131051.P4000853739793415754

`2*(a(n-1)+1)` with `a(0)=1, a(1)=3`
-/

namespace A131051.P4000853739793415754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) + 1)

end

end A131051.P4000853739793415754

namespace A131051

/-- `2*(a(n-1)+1)` -/
def P4000853739793415754.Spec : Prop :=
  ∀ n, (P4000853739793415754.a n : ℤ) = A131051 (n + 1)

end A131051

/-! ## A131051.P15338699001244007050

`lcm(2, a(n-1)+1)` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A131051.P15338699001244007050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  Nat.lcm 2 (a (n - 1) + 1)

end

end A131051.P15338699001244007050

namespace A131051

/-- `lcm(2, a(n-1)+1)` -/
def P15338699001244007050.Spec : Prop :=
  ∀ n, (P15338699001244007050.a n : ℤ) = A131051 (n + 1)

end A131051

/-! ## A131051.P9377533331414214550

`or(2, 2*a(n-1))` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A131051.P9377533331414214550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  Nat.lor 2 (2 * a (n - 1))

end

end A131051.P9377533331414214550

namespace A131051

/-- `or(2, 2*a(n-1))` -/
def P9377533331414214550.Spec : Prop :=
  ∀ n, (P9377533331414214550.a n : ℤ) = A131051 (n + 1)

end A131051

/-! ## A131051.P13090924322871227227

`xor(2, 2*a(n-1))` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A131051.P13090924322871227227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  Nat.xor 2 (2 * a (n - 1))

end

end A131051.P13090924322871227227

namespace A131051

/-- `xor(2, 2*a(n-1))` -/
def P13090924322871227227.Spec : Prop :=
  ∀ n, (P13090924322871227227.a n : ℤ) = A131051 (n + 1)

end A131051

/-! ## A131051.P17970859296151066422

`floor(∑[2*a(n-1)])` with `a(0)=1, a(1)=2, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A131051.P17970859296151066422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131051.P17970859296151066422

namespace A131051

/-- `floor(∑[2*a(n-1)])` -/
def P17970859296151066422.Spec : Prop :=
  ∀ n, (P17970859296151066422.a n : ℤ) = A131051 (n + 1)

end A131051

/-! ## A131051.P11002797242253217057

`4-2*(1-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A131051.P11002797242253217057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - 2 * (1 - a (n - 1))

end

end A131051.P11002797242253217057

namespace A131051

/-- `4-2*(1-a(n-1))` -/
def P11002797242253217057.Spec : Prop :=
  ∀ n, P11002797242253217057.a n = A131051 (n + 1)

end A131051

/-! ## A131051.P2772566061548791150

`a(n-1)+a(n-1)+2` with `a(0)=1, a(1)=3`
-/

namespace A131051.P2772566061548791150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A131051.P2772566061548791150

namespace A131051

/-- `a(n-1)+a(n-1)+2` -/
def P2772566061548791150.Spec : Prop :=
  ∀ n, (P2772566061548791150.a n : ℤ) = A131051 (n + 1)

end A131051

/-! ## A131051.P12045650498219334201

`2-a(n-1)/(1/2-1)` with `a(0)=1, a(1)=3`
-/

namespace A131051.P12045650498219334201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A131051.P12045650498219334201

namespace A131051

/-- `2-a(n-1)/(1/2-1)` -/
def P12045650498219334201.Spec : Prop :=
  ∀ n, P12045650498219334201.a n = (A131051 (n + 1) : ℚ)

end A131051

/-! ## A131051.P11811244250347844103

`3-floor(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A131051.P11811244250347844103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - (1 - a (n - 1) - a (n - 1))

end

end A131051.P11811244250347844103

namespace A131051

/-- `3-floor(1-a(n-1)-a(n-1))` -/
def P11811244250347844103.Spec : Prop :=
  ∀ n, P11811244250347844103.a n = A131051 (n + 1)

end A131051

/-! ## A131051.P3381092431572246660

`a(n-1)-((n-2)%n-a(n-1)-n)` with `a(0)=1`
-/

namespace A131051.P3381092431572246660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (Int.tmod ((n : ℤ) - 2) (n : ℤ) - a (n - 1) - (n : ℤ))

end

end A131051.P3381092431572246660

namespace A131051

/-- `a(n-1)-((n-2)%n-a(n-1)-n)` -/
def P3381092431572246660.Spec : Prop :=
  ∀ n, P3381092431572246660.a n = A131051 (n + 1)

end A131051

/-! ## A131051.P8282881849835982993

`A054135(n+1)-1`
-/

namespace A131051.P8282881849835982993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054135 (n + 1) - 1

end

end A131051.P8282881849835982993

namespace A131051

/-- `A054135(n+1)-1` -/
def P8282881849835982993.Spec : Prop :=
  ∀ n, P8282881849835982993.a n = A131051 (n + 1)

end A131051

/-! ## A131051.P9266405567657016937

`A257113(n+2)-2`
-/

namespace A131051.P9266405567657016937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (n + 2) - 2

end

end A131051.P9266405567657016937

namespace A131051

/-- `A257113(n+2)-2` -/
def P9266405567657016937.Spec : Prop :=
  ∀ n, P9266405567657016937.a n = A131051 (n + 1)

end A131051

/-! ## A131051.P6441779770545168120

`A296953(n)+2^n`
-/

namespace A131051.P6441779770545168120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n + (2 ^ n : ℤ)

end

end A131051.P6441779770545168120

namespace A131051

/-- `A296953(n)+2^n` -/
def P6441779770545168120.Spec : Prop :=
  ∀ n, P6441779770545168120.a n = A131051 (n + 1)

end A131051

/-! ## A131051.P6774687080229373967

`A228305(Δ[n²])-2`
-/

namespace A131051.P6774687080229373967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228305 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A131051.P6774687080229373967

namespace A131051

/-- `A228305(Δ[n²])-2` -/
def P6774687080229373967.Spec : Prop :=
  ∀ n, P6774687080229373967.a n = A131051 (n + 1)

end A131051

/-! ## A131051.P354130043759773704

`abs(A029749(3*n)-2)`
-/

namespace A131051.P354130043759773704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029749 (3 * n) - 2|

end

end A131051.P354130043759773704

namespace A131051

/-- `abs(A029749(3*n)-2)` -/
def P354130043759773704.Spec : Prop :=
  ∀ n, P354130043759773704.a n = A131051 (n + 1)

end A131051

/-! ## A131051.P3614066437098049222

`abs(2-∑[abs(A166577(n))])`
-/

namespace A131051.P3614066437098049222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166577 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A131051.P3614066437098049222

namespace A131051

/-- `abs(2-∑[abs(A166577(n))])` -/
def P3614066437098049222.Spec : Prop :=
  ∀ n, P3614066437098049222.a n = A131051 (n + 1)

end A131051

/-! ## A131051.P14927796118590366635

`abs(2-abs(Δ[A140360(n)]))`
-/

namespace A131051.P14927796118590366635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |f1 (n + 1) - f1 n|)|

end

end A131051.P14927796118590366635

namespace A131051

/-- `abs(2-abs(Δ[A140360(n)]))` -/
def P14927796118590366635.Spec : Prop :=
  ∀ n, P14927796118590366635.a n = A131051 (n + 1)

end A131051

/-! ## A131051.P14940485217711860946

`A026622(n+1)-2^n`
-/

namespace A131051.P14940485217711860946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026622 (n + 1) - (2 ^ n : ℤ)

end

end A131051.P14940485217711860946

namespace A131051

/-- `A026622(n+1)-2^n` -/
def P14940485217711860946.Spec : Prop :=
  ∀ n, P14940485217711860946.a n = A131051 (n + 1)

end A131051

/-!
# A131052: A131047 * A000012.

The programs for A131052, the canonical program `A131052.P3356453068962717231` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131052 has offset 1).

The definition of A131052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131052.P3356453068962717231

`A128175(A131225(n+1)+A038722(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131052

/-- `A128175(A131225(n+1)+A038722(n+1))` -/
def P3356453068962717231.Spec : Prop :=
  ∀ n, P3356453068962717231.a n = A131052 (n + 1)

theorem P3356453068962717231.correct : P3356453068962717231.Spec := by
  intro n
  simp only [A131052, Nat.add_sub_cancel]

end A131052

/-! ## A131052.P8485495797957009139

`A055248(A287316(n)%2+n-1)`
-/

namespace A131052.P8485495797957009139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (Int.tmod (A287316 n) 2 + ((n : ℤ) - 1)).toNat

end

end A131052.P8485495797957009139

namespace A131052

/-- `A055248(A287316(n)%2+n-1)` -/
def P8485495797957009139.Spec : Prop :=
  ∀ n, P8485495797957009139.a n = A131052 (n + 1)

end A131052

/-!
# A131053: A000012 * A131047.

The programs for A131053, the canonical program `A131053.P3177050464718823727` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131053 has offset 1).

The definition of A131053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131053.P12890774530659009377

`A131047(n+1)+∑[A131054(n)-A131047(n+1)]`
-/

namespace A131053.P12890774530659009377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131054 n - A131047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131047 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131053.P12890774530659009377

namespace A131053

/-- `A131047(n+1)+∑[A131054(n)-A131047(n+1)]` -/
def P12890774530659009377.Spec : Prop :=
  ∀ n, P12890774530659009377.a n = A131053 (n + 1)

end A131053

/-! ## A131053.P3177050464718823727

`A128176(A128621(n+1)+1+n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A131053

/-- `A128176(A128621(n+1)+1+n)` -/
def P3177050464718823727.Spec : Prop :=
  ∀ n, P3177050464718823727.a n = A131053 (n + 1)

theorem P3177050464718823727.correct : P3177050464718823727.Spec := by
  intro n
  simp only [A131053, Nat.add_sub_cancel]

end A131053

/-! ## A131053.P456449646757280002

`A173402(A140978(n+1)+1-n)`
-/

namespace A131053.P456449646757280002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173402 (A140978 (n + 1) + (1 - (n : ℤ))).toNat

end

end A131053.P456449646757280002

namespace A131053

/-- `A173402(A140978(n+1)+1-n)` -/
def P456449646757280002.Spec : Prop :=
  ∀ n, P456449646757280002.a n = A131053 (n + 1)

end A131053

/-!
# A131054: Triangle read by rows: A000012 * A119467 as infinite lower triangular matrices.

The programs for A131054, there is no canonical definition to state claims against.
-/

/-! ## A131054.P7732213500984920949

`A209556(n+1)-C(A007318(n), A225750(n))`
-/

namespace A131054.P7732213500984920949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209556 (n + 1) - (Nat.choose (A007318 n).toNat (A225750 n).toNat : ℤ)

end

end A131054.P7732213500984920949

/-! ## A131054.P593165412964997364

`A209556(n+1)-A249085(n+1)%2*A007318(n)`
-/

namespace A131054.P593165412964997364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209556 (n + 1) - Int.tmod (A249085 (n + 1)) 2 * A007318 n

end

end A131054.P593165412964997364

/-! ## A131054.P204196814972418453

`A209556(n+1)-A162590(n)`
-/

namespace A131054.P204196814972418453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209556 (n + 1) - A162590 n

end

end A131054.P204196814972418453

/-! ## A131054.P5296331823299895146

`A209556(n+1)-C(A007318(n), A178107(n)²+1)`
-/

namespace A131054.P5296331823299895146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209556 (n + 1) - (Nat.choose (A007318 n).toNat (A178107 n ^ 2 + 1).toNat : ℤ)

end

end A131054.P5296331823299895146

/-! ## A131054.P14746421798765775681

`A173398((A099375(n)+1+n)%A173415(n+2))`
-/

namespace A131054.P14746421798765775681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173398 (Int.tmod (A099375 n + 1 + (n : ℤ)) (A173415 (n + 2))).toNat

end

end A131054.P14746421798765775681

/-!
# A131055: 1 followed by repeats of 2*k.

The programs for A131055, the canonical program `A131055.P11987687020621173505` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131055 has offset 1).

The definition of A131055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131055.P18082771536876111755

`ogf((1+x-x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A131055.P18082771536876111755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1] [1, -1, -1, 1] n

end

end A131055.P18082771536876111755

namespace A131055

/-- `ogf((1+x-x^2+x^3)/(1-x-x^2+x^3))` -/
def P18082771536876111755.Spec : Prop :=
  ∀ n, P18082771536876111755.a n = A131055 (n + 1)

end A131055

/-! ## A131055.P11987687020621173505

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131055

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P11987687020621173505.Spec : Prop :=
  ∀ n, P11987687020621173505.a n = A131055 (n + 1)

theorem P11987687020621173505.correct : P11987687020621173505.Spec := by
  intro n
  simp only [A131055, Nat.add_sub_cancel]

end A131055

/-! ## A131055.P17685199791465953170

`(n%2)^n+n`
-/

namespace A131055.P17685199791465953170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n + n

end

end A131055.P17685199791465953170

namespace A131055

/-- `(n%2)^n+n` -/
def P17685199791465953170.Spec : Prop :=
  ∀ n, (P17685199791465953170.a n : ℤ) = A131055 (n + 1)

end A131055

/-! ## A131055.P1448737021048517249

`and(1, n)^n+n`
-/

namespace A131055.P1448737021048517249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n ^ n + n

end

end A131055.P1448737021048517249

namespace A131055

/-- `and(1, n)^n+n` -/
def P1448737021048517249.Spec : Prop :=
  ∀ n, (P1448737021048517249.a n : ℤ) = A131055 (n + 1)

end A131055

/-! ## A131055.P18089496914961157325

`∏{d}[n, #%2]+n`
-/

namespace A131055.P18089496914961157325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d % 2 + n

end

end A131055.P18089496914961157325

namespace A131055

/-- `∏{d}[n, #%2]+n` -/
def P18089496914961157325.Spec : Prop :=
  ∀ n, (P18089496914961157325.a n : ℤ) = A131055 (n + 1)

end A131055

/-! ## A131055.P1797680412421162213

`∏{p}[n, #]%2+n`
-/

namespace A131055.P1797680412421162213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) % 2 + n

end

end A131055.P1797680412421162213

namespace A131055

/-- `∏{p}[n, #]%2+n` -/
def P1797680412421162213.Spec : Prop :=
  ∀ n, (P1797680412421162213.a n : ℤ) = A131055 (n + 1)

end A131055

/-! ## A131055.P12281776526129480560

`and(1, ∏{p}[n, #])+n`
-/

namespace A131055.P12281776526129480560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), p) + n

end

end A131055.P12281776526129480560

namespace A131055

/-- `and(1, ∏{p}[n, #])+n` -/
def P12281776526129480560.Spec : Prop :=
  ∀ n, (P12281776526129480560.a n : ℤ) = A131055 (n + 1)

end A131055

/-! ## A131055.P16446582743673653973

`Δ[round((n²-1)/2)]`
-/

namespace A131055.P16446582743673653973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℤ) - 1 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131055.P16446582743673653973

namespace A131055

/-- `Δ[round((n²-1)/2)]` -/
def P16446582743673653973.Spec : Prop :=
  ∀ n, P16446582743673653973.a n = A131055 (n + 1)

end A131055

/-! ## A131055.P6347806196970550977

`char[lcm(2, n)-n]+n`
-/

namespace A131055.P6347806196970550977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A131055.P6347806196970550977

namespace A131055

/-- `char[lcm(2, n)-n]+n` -/
def P6347806196970550977.Spec : Prop :=
  ∀ n, (P6347806196970550977.a n : ℤ) = A131055 (n + 1)

end A131055

/-! ## A131055.P9025761979836707547

`char[n*and(1, n)]+n`
-/

namespace A131055.P9025761979836707547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A131055.P9025761979836707547

namespace A131055

/-- `char[n*and(1, n)]+n` -/
def P9025761979836707547.Spec : Prop :=
  ∀ n, (P9025761979836707547.a n : ℤ) = A131055 (n + 1)

end A131055

/-! ## A131055.P7211265466307576485

`floor(cos(2)^n)²+n`
-/

namespace A131055.P7211265466307576485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (2 : ℝ) ^ n⌋ ^ 2 + (n : ℤ)

end

end A131055.P7211265466307576485

namespace A131055

/-- `floor(cos(2)^n)²+n` -/
def P7211265466307576485.Spec : Prop :=
  ∀ n, P7211265466307576485.a n = A131055 (n + 1)

end A131055

/-! ## A131055.P5716861571858354392

`floor(tan(3)^n)²+n`
-/

namespace A131055.P5716861571858354392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (3 : ℝ) ^ n⌋ ^ 2 + (n : ℤ)

end

end A131055.P5716861571858354392

namespace A131055

/-- `floor(tan(3)^n)²+n` -/
def P5716861571858354392.Spec : Prop :=
  ∀ n, P5716861571858354392.a n = A131055 (n + 1)

end A131055

/-! ## A131055.P8732571129388152249

`floor(cot(2)^n)²+n`
-/

namespace A131055.P8732571129388152249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 : ℝ) ^ n⌋ ^ 2 + (n : ℤ)

end

end A131055.P8732571129388152249

namespace A131055

/-- `floor(cot(2)^n)²+n` -/
def P8732571129388152249.Spec : Prop :=
  ∀ n, P8732571129388152249.a n = A131055 (n + 1)

end A131055

/-! ## A131055.P12584115010090304672

`C(gcd(n, ∑[n]), n)+n`
-/

namespace A131055.P12584115010090304672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) n + n

end

end A131055.P12584115010090304672

namespace A131055

/-- `C(gcd(n, ∑[n]), n)+n` -/
def P12584115010090304672.Spec : Prop :=
  ∀ n, (P12584115010090304672.a n : ℤ) = A131055 (n + 1)

end A131055

/-! ## A131055.P13915300371966339762

`2+a(n-2)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A131055.P13915300371966339762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 + a (n - 2)

end

end A131055.P13915300371966339762

namespace A131055

/-- `2+a(n-2)` -/
def P13915300371966339762.Spec : Prop :=
  ∀ n, (P13915300371966339762.a n : ℤ) = A131055 (n + 1)

end A131055

/-! ## A131055.P2475757415831910180

`n+1-∑{p}[n, val(#, 2)]`
-/

namespace A131055.P2475757415831910180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

end

end A131055.P2475757415831910180

namespace A131055

/-- `n+1-∑{p}[n, val(#, 2)]` -/
def P2475757415831910180.Spec : Prop :=
  ∀ n, P2475757415831910180.a n = A131055 (n + 1)

end A131055

/-! ## A131055.P7993672310862902233

`n+2-gcd(2, ∏{p}[n, #])`
-/

namespace A131055.P7993672310862902233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A131055.P7993672310862902233

namespace A131055

/-- `n+2-gcd(2, ∏{p}[n, #])` -/
def P7993672310862902233.Spec : Prop :=
  ∀ n, P7993672310862902233.a n = A131055 (n + 1)

end A131055

/-! ## A131055.P15757463698185451157

`n+1-val(∏{p}[n, #], 2)`
-/

namespace A131055.P15757463698185451157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 2 : ℤ)

end

end A131055.P15757463698185451157

namespace A131055

/-- `n+1-val(∏{p}[n, #], 2)` -/
def P15757463698185451157.Spec : Prop :=
  ∀ n, P15757463698185451157.a n = A131055 (n + 1)

end A131055

/-! ## A131055.P3512445154054213429

`n+1-∑{p}[n, C(2, #)]`
-/

namespace A131055.P3512445154054213429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 p : ℕ) : ℤ)

end

end A131055.P3512445154054213429

namespace A131055

/-- `n+1-∑{p}[n, C(2, #)]` -/
def P3512445154054213429.Spec : Prop :=
  ∀ n, P3512445154054213429.a n = A131055 (n + 1)

end A131055

/-! ## A131055.P4510209161518553995

`C(n*and(1, n), n)+n`
-/

namespace A131055.P4510209161518553995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * Nat.land 1 n) n + n

end

end A131055.P4510209161518553995

namespace A131055

/-- `C(n*and(1, n), n)+n` -/
def P4510209161518553995.Spec : Prop :=
  ∀ n, (P4510209161518553995.a n : ℤ) = A131055 (n + 1)

end A131055

/-!
# A131056: A007318 * A131055.

The programs for A131056, the canonical program `A131056.P11918581895187096065` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131056 has offset 1).

The definition of A131056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131056.P11918581895187096065

`ogf((1-2x+2x^3)/(1-5x+8x^2-4x^3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131056

/-- `ogf((1-2x+2x^3)/(1-5x+8x^2-4x^3))` -/
def P11918581895187096065.Spec : Prop :=
  ∀ n, P11918581895187096065.a n = A131056 (n + 1)

theorem P11918581895187096065.correct : P11918581895187096065.Spec := by
  intro n
  simp only [A131056, Nat.add_sub_cancel]

end A131056

/-! ## A131056.P5268946817302204871

`∑[ogf((1-2x+2x^3)/(1-4x+4x^2))]`
-/

namespace A131056.P5268946817302204871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131056.P5268946817302204871

namespace A131056

/-- `∑[ogf((1-2x+2x^3)/(1-4x+4x^2))]` -/
def P5268946817302204871.Spec : Prop :=
  ∀ n, P5268946817302204871.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P9501318671910286620

`∑[ceil((n+2)*2^(n-2))]`
-/

namespace A131056.P9501318671910286620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131056.P9501318671910286620

namespace A131056

/-- `∑[ceil((n+2)*2^(n-2))]` -/
def P9501318671910286620.Spec : Prop :=
  ∀ n, P9501318671910286620.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P7644982881860109282

`or(1, floor((n+1)*2^(n-1)))`
-/

namespace A131056.P7644982881860109282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A131056.P7644982881860109282

namespace A131056

/-- `or(1, floor((n+1)*2^(n-1)))` -/
def P7644982881860109282.Spec : Prop :=
  ∀ n, P7644982881860109282.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P8011413343935097335

`xor(1, floor((n+1)*2^(n-1)))`
-/

namespace A131056.P8011413343935097335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A131056.P8011413343935097335

namespace A131056

/-- `xor(1, floor((n+1)*2^(n-1)))` -/
def P8011413343935097335.Spec : Prop :=
  ∀ n, P8011413343935097335.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P4087246543923986232

`2*(floor(a(n-1)+a(n-1)/n)-1/2)` with `a(0)=1`
-/

namespace A131056.P4087246543923986232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((⌊a (n - 1) + a (n - 1) / (n : ℚ)⌋ : ℚ) - (1 : ℚ) / 2)

end

end A131056.P4087246543923986232

namespace A131056

/-- `2*(floor(a(n-1)+a(n-1)/n)-1/2)` -/
def P4087246543923986232.Spec : Prop :=
  ∀ n, P4087246543923986232.a n = (A131056 (n + 1) : ℚ)

end A131056

/-! ## A131056.P16102614600745014256

`2*(a(n-1)-(1/2-floor(a(n-1)/n)))` with `a(0)=1`
-/

namespace A131056.P16102614600745014256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ((1 : ℚ) / 2 - (⌊a (n - 1) / (n : ℚ)⌋ : ℚ)))

end

end A131056.P16102614600745014256

namespace A131056

/-- `2*(a(n-1)-(1/2-floor(a(n-1)/n)))` -/
def P16102614600745014256.Spec : Prop :=
  ∀ n, P16102614600745014256.a n = (A131056 (n + 1) : ℚ)

end A131056

/-! ## A131056.P17571920532506851774

`record[xor(1, A057711(n))]`
-/

namespace A131056.P17571920532506851774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A057711 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131056.P17571920532506851774

namespace A131056

/-- `record[xor(1, A057711(n))]` -/
def P17571920532506851774.Spec : Prop :=
  ∀ n, P17571920532506851774.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P16717390674624870108

`2*Δ[A139756(n)]+1`
-/

namespace A131056.P16717390674624870108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) + 1

end

end A131056.P16717390674624870108

namespace A131056

/-- `2*Δ[A139756(n)]+1` -/
def P16717390674624870108.Spec : Prop :=
  ∀ n, P16717390674624870108.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P2886525747743657261

`2*Δ[A154222(n)]-1`
-/

namespace A131056.P2886525747743657261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - 1

end

end A131056.P2886525747743657261

namespace A131056

/-- `2*Δ[A154222(n)]-1` -/
def P2886525747743657261.Spec : Prop :=
  ∀ n, P2886525747743657261.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P16812598219040590907

`2*A049610(n+1)+1`
-/

namespace A131056.P16812598219040590907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049610 (n + 1) + 1

end

end A131056.P16812598219040590907

namespace A131056

/-- `2*A049610(n+1)+1` -/
def P16812598219040590907.Spec : Prop :=
  ∀ n, P16812598219040590907.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P10452635855112537413

`2*A336102(2*n)+1`
-/

namespace A131056.P10452635855112537413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336102 (2 * n) + 1

end

end A131056.P10452635855112537413

namespace A131056

/-- `2*A336102(2*n)+1` -/
def P10452635855112537413.Spec : Prop :=
  ∀ n, P10452635855112537413.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P4470282454448056048

`(n+1)*A131577(n)+1`
-/

namespace A131056.P4470282454448056048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A131577 n + 1

end

end A131056.P4470282454448056048

namespace A131056

/-- `(n+1)*A131577(n)+1` -/
def P4470282454448056048.Spec : Prop :=
  ∀ n, P4470282454448056048.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P13356462317881709492

`(n+1)*A094373(n)-n`
-/

namespace A131056.P13356462317881709492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A094373 n - (n : ℤ)

end

end A131056.P13356462317881709492

namespace A131056

/-- `(n+1)*A094373(n)-n` -/
def P13356462317881709492.Spec : Prop :=
  ∀ n, P13356462317881709492.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P3430430712293531920

`A087447(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A131056.P3430430712293531920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A087447 n + a (n - 1)

end

end A131056.P3430430712293531920

namespace A131056

/-- `A087447(n)+a(n-1)` -/
def P3430430712293531920.Spec : Prop :=
  ∀ n, P3430430712293531920.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P16485888910856653291

`A129953(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A131056.P16485888910856653291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A129953 n + a (n - 1)

end

end A131056.P16485888910856653291

namespace A131056

/-- `A129953(n)+a(n-1)` -/
def P16485888910856653291.Spec : Prop :=
  ∀ n, P16485888910856653291.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P13075425882268883527

`(n+1)*A034008(n+1)+1`
-/

namespace A131056.P13075425882268883527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034008 (n + 1) + 1

end

end A131056.P13075425882268883527

namespace A131056

/-- `(n+1)*A034008(n+1)+1` -/
def P13075425882268883527.Spec : Prop :=
  ∀ n, P13075425882268883527.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P1428097252849862126

`A262258(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A131056.P1428097252849862126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262258 (2 * n) + a (n - 1)

end

end A131056.P1428097252849862126

namespace A131056

/-- `A262258(2*n)+a(n-1)` -/
def P1428097252849862126.Spec : Prop :=
  ∀ n, P1428097252849862126.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P11042579532192564330

`A079859(n+2)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A131056.P11042579532192564330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A079859 (n + 2) + a (n - 1)

end

end A131056.P11042579532192564330

namespace A131056

/-- `A079859(n+2)+a(n-1)` -/
def P11042579532192564330.Spec : Prop :=
  ∀ n, P11042579532192564330.a n = A131056 (n + 1)

end A131056

/-! ## A131056.P3686882355718319205

`A094373(n)+A001787(n)`
-/

namespace A131056.P3686882355718319205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n + A001787 n

end

end A131056.P3686882355718319205

namespace A131056

/-- `A094373(n)+A001787(n)` -/
def P3686882355718319205.Spec : Prop :=
  ∀ n, P3686882355718319205.a n = A131056 (n + 1)

end A131056

/-!
# A131058: List of numbers n whose reverse, R(n), is not less than n.

The programs for A131058, there is no canonical definition to state claims against.
-/

/-! ## A131058.P12923074933156652803

`comp[A071590(n+1)]`
-/

namespace A131058.P12923074933156652803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A131058.P12923074933156652803

/-! ## A131058.P4368567179553062532

`comp[lt[A004086(n), n]]`
-/

namespace A131058.P4368567179553062532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A131058.P4368567179553062532

/-! ## A131058.P1646681140781393710

`comp[lt[A056964(n), 2*n]]`
-/

namespace A131058.P1646681140781393710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A131058.P1646681140781393710

/-! ## A131058.P8253168156240113615

`lt[n, A004086(n)+A000005(n+1)]`
-/

namespace A131058.P8253168156240113615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131058.P8253168156240113615

/-! ## A131058.P1212054049756737548

`lt[A056965(n), 1]`
-/

namespace A131058.P1212054049756737548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131058.P1212054049756737548

/-! ## A131058.P5410550954503132078

`lt[A023443(n), A004086(n)]`
-/

namespace A131058.P5410550954503132078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131058.P5410550954503132078

/-! ## A131058.P11009801527441579670

`lt[A023444(n), A004086(n)]`
-/

namespace A131058.P11009801527441579670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131058.P11009801527441579670

/-! ## A131058.P7426455923960202120

`lt[n, A004086(n)+A001227(n+1)]`
-/

namespace A131058.P7426455923960202120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + A001227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131058.P7426455923960202120

/-! ## A131058.P11331065499671713115

`lt[n, A004093(5*n)+1]`
-/

namespace A131058.P11331065499671713115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131058.P11331065499671713115

/-!
# A131060: 3*A007318 - 2*A000012 as infinite lower triangular matrices.

The programs for A131060, the canonical program `A131060.P6336280471409396356` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131060 has offset 0).

The definition of A131060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131060.P6336280471409396356

`3*C(row(n), col(n))-2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131060

/-- `3*C(row(n), col(n))-2` -/
def P6336280471409396356.Spec : Prop :=
  ∀ n, P6336280471409396356.a n = A131060 n

theorem P6336280471409396356.correct : P6336280471409396356.Spec := by
  intro n
  simp only [A131060]

end A131060

/-! ## A131060.P2958287434662447289

`abs(2-A124928(n))`
-/

namespace A131060.P2958287434662447289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A124928 n|

end

end A131060.P2958287434662447289

namespace A131060

/-- `abs(2-A124928(n))` -/
def P2958287434662447289.Spec : Prop :=
  ∀ n, P2958287434662447289.a n = A131060 n

end A131060

/-! ## A131060.P6116339200925424747

`abs(2-A134059(n))`
-/

namespace A131060.P6116339200925424747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A134059 n|

end

end A131060.P6116339200925424747

namespace A131060

/-- `abs(2-A134059(n))` -/
def P6116339200925424747.Spec : Prop :=
  ∀ n, P6116339200925424747.a n = A131060 n

end A131060

/-! ## A131060.P9481365316336084369

`ceil(A131065(n)/2)`
-/

namespace A131060.P9481365316336084369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131065 n : ℚ) / 2⌉

end

end A131060.P9481365316336084369

namespace A131060

/-- `ceil(A131065(n)/2)` -/
def P9481365316336084369.Spec : Prop :=
  ∀ n, P9481365316336084369.a n = A131060 n

end A131060

/-! ## A131060.P16862062657704811624

`3*A014473(n)+1`
-/

namespace A131060.P16862062657704811624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014473 n + 1

end

end A131060.P16862062657704811624

namespace A131060

/-- `3*A014473(n)+1` -/
def P16862062657704811624.Spec : Prop :=
  ∀ n, P16862062657704811624.a n = A131060 n

theorem P16862062657704811624.correct : P16862062657704811624.Spec := by
  intro n
  simp only [A131060, Nat.add_sub_cancel, A131060.P16862062657704811624.a, A131060.P6336280471409396356.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131060

/-! ## A131060.P7530939699776512923

`3*A007318(n)-2`
-/

namespace A131060.P7530939699776512923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007318 n - 2

end

end A131060.P7530939699776512923

namespace A131060

/-- `3*A007318(n)-2` -/
def P7530939699776512923.Spec : Prop :=
  ∀ n, P7530939699776512923.a n = A131060 n

end A131060

/-! ## A131060.P10236416699349877585

`abs(3*A108086(n))-2`
-/

namespace A131060.P10236416699349877585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A108086 n| - 2

end

end A131060.P10236416699349877585

namespace A131060

/-- `abs(3*A108086(n))-2` -/
def P10236416699349877585.Spec : Prop :=
  ∀ n, P10236416699349877585.a n = A131060 n

end A131060

/-! ## A131060.P4448462330828805493

`root((2-A132047(n))², 2)`
-/

namespace A131060.P4448462330828805493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - A132047 n) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A131060.P4448462330828805493

namespace A131060

/-- `root((2-A132047(n))², 2)` -/
def P4448462330828805493.Spec : Prop :=
  ∀ n, P4448462330828805493.a n = (A131060 n : ℝ)

end A131060

/-! ## A131060.P14420519061575981068

`A134059(A028310(n))-2`
-/

namespace A131060.P14420519061575981068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 (A028310 n).toNat - 2

end

end A131060.P14420519061575981068

namespace A131060

/-- `A134059(A028310(n))-2` -/
def P14420519061575981068.Spec : Prop :=
  ∀ n, P14420519061575981068.a n = A131060 n

end A131060

/-! ## A131060.P17394951601229315861

`A109128(n)+A014473(n)`
-/

namespace A131060.P17394951601229315861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + A014473 n

end

end A131060.P17394951601229315861

namespace A131060

/-- `A109128(n)+A014473(n)` -/
def P17394951601229315861.Spec : Prop :=
  ∀ n, P17394951601229315861.a n = A131060 n

theorem P17394951601229315861.correct : P17394951601229315861.Spec := by
  intro n
  simp only [A131060, Nat.add_sub_cancel, A131060.P17394951601229315861.a, A131060.P6336280471409396356.a, A014473, A014473.P9301799580602651200.a, A109128, A109128.P7867596798531783597.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131060

/-! ## A131060.P385484362555056797

`A131061(n)-A014473(n)`
-/

namespace A131060.P385484362555056797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n - A014473 n

end

end A131060.P385484362555056797

namespace A131060

/-- `A131061(n)-A014473(n)` -/
def P385484362555056797.Spec : Prop :=
  ∀ n, P385484362555056797.a n = A131060 n

theorem P385484362555056797.correct : P385484362555056797.Spec := by
  intro n
  simp only [A131060, Nat.add_sub_cancel, A131060.P385484362555056797.a, A131060.P6336280471409396356.a, A014473, A014473.P9301799580602651200.a, A131061, A131061.P3587332916456542118.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131060

/-! ## A131060.P3460657206024040477

`A014473(n)+A028326(n)-1`
-/

namespace A131060.P3460657206024040477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A028326 n - 1)

end

end A131060.P3460657206024040477

namespace A131060

/-- `A014473(n)+A028326(n)-1` -/
def P3460657206024040477.Spec : Prop :=
  ∀ n, P3460657206024040477.a n = A131060 n

theorem P3460657206024040477.correct : P3460657206024040477.Spec := by
  intro n
  simp only [A131060, Nat.add_sub_cancel, A131060.P3460657206024040477.a, A131060.P6336280471409396356.a, A014473, A014473.P9301799580602651200.a, A028326, A028326.P7676793339942299677.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131060

/-! ## A131060.P8368785178008394396

`A007318(n)+A109128(n)-1`
-/

namespace A131060.P8368785178008394396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A109128 n - 1)

end

end A131060.P8368785178008394396

namespace A131060

/-- `A007318(n)+A109128(n)-1` -/
def P8368785178008394396.Spec : Prop :=
  ∀ n, P8368785178008394396.a n = A131060 n

theorem P8368785178008394396.correct : P8368785178008394396.Spec := by
  intro n
  simp only [A131060, Nat.add_sub_cancel, A131060.P8368785178008394396.a, A131060.P6336280471409396356.a, A007318, A007318.P11755526479805562006.a, A109128, A109128.P7867596798531783597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131060

/-! ## A131060.P4579718551202860899

`A131061(n)+1-A007318(n)`
-/

namespace A131060.P4579718551202860899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n + (1 - A007318 n)

end

end A131060.P4579718551202860899

namespace A131060

/-- `A131061(n)+1-A007318(n)` -/
def P4579718551202860899.Spec : Prop :=
  ∀ n, P4579718551202860899.a n = A131060 n

theorem P4579718551202860899.correct : P4579718551202860899.Spec := by
  intro n
  simp only [A131060, Nat.add_sub_cancel, A131060.P4579718551202860899.a, A131060.P6336280471409396356.a, A007318, A007318.P11755526479805562006.a, A131061, A131061.P3587332916456542118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131060

/-! ## A131060.P5809634973103556068

`A103451(n)+A132048(n)-1`
-/

namespace A131060.P5809634973103556068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A132048 n - 1)

end

end A131060.P5809634973103556068

namespace A131060

/-- `A103451(n)+A132048(n)-1` -/
def P5809634973103556068.Spec : Prop :=
  ∀ n, P5809634973103556068.a n = A131060 n

theorem P5809634973103556068.correct : P5809634973103556068.Spec := by
  intro n
  simp only [A131060, Nat.add_sub_cancel, A131060.P5809634973103556068.a, A131060.P6336280471409396356.a, A103451, A103451.P2977452712529643699.a, A132048, A132048.P7025370900978820074.a, A014473, A014473.P9301799580602651200.a, A103452, A103452.P9591001737205339396.f1, A103452.P9591001737205339396.a, A132046, A132046.P838827158964499590.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A073424, A073424.P15285082429945185433.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131060

/-! ## A131060.P16886251520415962264

`A131063(n)+1-A109128(n)`
-/

namespace A131060.P16886251520415962264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n + (1 - A109128 n)

end

end A131060.P16886251520415962264

namespace A131060

/-- `A131063(n)+1-A109128(n)` -/
def P16886251520415962264.Spec : Prop :=
  ∀ n, P16886251520415962264.a n = A131060 n

theorem P16886251520415962264.correct : P16886251520415962264.Spec := by
  intro n
  simp only [A131060, Nat.add_sub_cancel, A131060.P16886251520415962264.a, A131060.P6336280471409396356.a, A109128, A109128.P7867596798531783597.a, A131063, A131063.P365354353460309481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131060

/-! ## A131060.P13143567099825107047

`A131067(n)+1-A131061(n)`
-/

namespace A131060.P13143567099825107047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131067 n + (1 - A131061 n)

end

end A131060.P13143567099825107047

namespace A131060

/-- `A131067(n)+1-A131061(n)` -/
def P13143567099825107047.Spec : Prop :=
  ∀ n, P13143567099825107047.a n = A131060 n

theorem P13143567099825107047.correct : P13143567099825107047.Spec := by
  intro n
  simp only [A131060, Nat.add_sub_cancel, A131060.P13143567099825107047.a, A131060.P6336280471409396356.a, A131061, A131061.P3587332916456542118.a, A131067, A131067.P17085963103663265053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131060

/-! ## A131060.P8241194165764270333

`A132731(n)+A132735(n)-1`
-/

namespace A131060.P8241194165764270333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (A132735 n - 1)

end

end A131060.P8241194165764270333

namespace A131060

/-- `A132731(n)+A132735(n)-1` -/
def P8241194165764270333.Spec : Prop :=
  ∀ n, P8241194165764270333.a n = A131060 n

end A131060

/-! ## A131060.P13707927647160031884

`A132737(n)+A132823(n)-1`
-/

namespace A131060.P13707927647160031884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132737 n + (A132823 n - 1)

end

end A131060.P13707927647160031884

namespace A131060

/-- `A132737(n)+A132823(n)-1` -/
def P13707927647160031884.Spec : Prop :=
  ∀ n, P13707927647160031884.a n = A131060 n

end A131060

/-! ## A131060.P6737630934386407161

`A131087(n)+A134520(n)-1`
-/

namespace A131060.P6737630934386407161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131087 n + (A134520 n - 1)

end

end A131060.P6737630934386407161

namespace A131060

/-- `A131087(n)+A134520(n)-1` -/
def P6737630934386407161.Spec : Prop :=
  ∀ n, P6737630934386407161.a n = A131060 n

end A131060

/-!
# A131061: Triangle read by rows: T(n,k) = 4*binomial(n,k) - 3 for 0 <= k <= n.

The programs for A131061, the canonical program `A131061.P3587332916456542118` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131061 has offset 0).

The definition of A131061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*C(row(n), col(n))-3` (program `A131061.P3587332916456542118`, by `A131061.P3587332916456542118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131061.P3587332916456542118

`4*C(row(n), col(n))-3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131061

/-- `4*C(row(n), col(n))-3` -/
def P3587332916456542118.Spec : Prop :=
  ∀ n, P3587332916456542118.a n = A131061 n

theorem P3587332916456542118.correct : P3587332916456542118.Spec := by
  intro n
  simp only [A131061]

end A131061

/-! ## A131061.P12748091910560257073

`abs(2-A135087(n))`
-/

namespace A131061.P12748091910560257073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A135087 n|

end

end A131061.P12748091910560257073

namespace A131061

/-- `abs(2-A135087(n))` -/
def P12748091910560257073.Spec : Prop :=
  ∀ n, P12748091910560257073.a n = A131061 n

end A131061

/-! ## A131061.P13980816366278112994

`ceil(A168625(n)/2)`
-/

namespace A131061.P13980816366278112994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168625 n : ℚ) / 2⌉

end

end A131061.P13980816366278112994

namespace A131061

/-- `ceil(A168625(n)/2)` -/
def P13980816366278112994.Spec : Prop :=
  ∀ n, P13980816366278112994.a n = A131061 n

end A131061

/-! ## A131061.P592121948917823822

`2*A109128(n)-1`
-/

namespace A131061.P592121948917823822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109128 n - 1

end

end A131061.P592121948917823822

namespace A131061

/-- `2*A109128(n)-1` -/
def P592121948917823822.Spec : Prop :=
  ∀ n, P592121948917823822.a n = A131061 n

theorem P592121948917823822.correct : P592121948917823822.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P592121948917823822.a, A131061.P3587332916456542118.a, A109128, A109128.P7867596798531783597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P93476513698280326

`4*A014473(n)+1`
-/

namespace A131061.P93476513698280326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014473 n + 1

end

end A131061.P93476513698280326

namespace A131061

/-- `4*A014473(n)+1` -/
def P93476513698280326.Spec : Prop :=
  ∀ n, P93476513698280326.a n = A131061 n

theorem P93476513698280326.correct : P93476513698280326.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P93476513698280326.a, A131061.P3587332916456542118.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P4310385248170872089

`2*A028326(n)-3`
-/

namespace A131061.P4310385248170872089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028326 n - 3

end

end A131061.P4310385248170872089

namespace A131061

/-- `2*A028326(n)-3` -/
def P4310385248170872089.Spec : Prop :=
  ∀ n, P4310385248170872089.a n = A131061 n

theorem P4310385248170872089.correct : P4310385248170872089.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P4310385248170872089.a, A131061.P3587332916456542118.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P17626146287854466642

`4*A007318(n)-3`
-/

namespace A131061.P17626146287854466642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007318 n - 3

end

end A131061.P17626146287854466642

namespace A131061

/-- `4*A007318(n)-3` -/
def P17626146287854466642.Spec : Prop :=
  ∀ n, P17626146287854466642.a n = A131061 n

end A131061

/-! ## A131061.P4145441783026999370

`(A176203(n)+3)/4`
-/

namespace A131061.P4145441783026999370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176203 n + 3 : ℚ) / 4

end

end A131061.P4145441783026999370

namespace A131061

/-- `(A176203(n)+3)/4` -/
def P4145441783026999370.Spec : Prop :=
  ∀ n, P4145441783026999370.a n = (A131061 n : ℚ)

theorem P4145441783026999370.correct : P4145441783026999370.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P4145441783026999370.a, A131061.P3587332916456542118.a, A176203, A176203.P16523028307825653691.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P6464400422114599423

`abs(3-2*A124927(n))`
-/

namespace A131061.P6464400422114599423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 2 * A124927 n|

end

end A131061.P6464400422114599423

namespace A131061

/-- `abs(3-2*A124927(n))` -/
def P6464400422114599423.Spec : Prop :=
  ∀ n, P6464400422114599423.a n = A131061 n

end A131061

/-! ## A131061.P7292708292994689140

`2*2*(ceil(A134059(n)/3)-1)+1`
-/

namespace A131061.P7292708292994689140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * (⌈(A134059 n : ℚ) / 3⌉ - 1)) + 1

end

end A131061.P7292708292994689140

namespace A131061

/-- `2*2*(ceil(A134059(n)/3)-1)+1` -/
def P7292708292994689140.Spec : Prop :=
  ∀ n, P7292708292994689140.a n = A131061 n

end A131061

/-! ## A131061.P3874674098822188538

`A135087(A028310(n))-2`
-/

namespace A131061.P3874674098822188538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135087 (A028310 n).toNat - 2

end

end A131061.P3874674098822188538

namespace A131061

/-- `A135087(A028310(n))-2` -/
def P3874674098822188538.Spec : Prop :=
  ∀ n, P3874674098822188538.a n = A131061 n

end A131061

/-! ## A131061.P8503809394056987577

`A131060(n)+A014473(n)`
-/

namespace A131061.P8503809394056987577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + A014473 n

end

end A131061.P8503809394056987577

namespace A131061

/-- `A131060(n)+A014473(n)` -/
def P8503809394056987577.Spec : Prop :=
  ∀ n, P8503809394056987577.a n = A131061 n

theorem P8503809394056987577.correct : P8503809394056987577.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P8503809394056987577.a, A131061.P3587332916456542118.a, A014473, A014473.P9301799580602651200.a, A131060, A131060.P6336280471409396356.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P3025631708038120520

`A131063(n)-A014473(n)`
-/

namespace A131061.P3025631708038120520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n - A014473 n

end

end A131061.P3025631708038120520

namespace A131061

/-- `A131063(n)-A014473(n)` -/
def P3025631708038120520.Spec : Prop :=
  ∀ n, P3025631708038120520.a n = A131061 n

theorem P3025631708038120520.correct : P3025631708038120520.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P3025631708038120520.a, A131061.P3587332916456542118.a, A014473, A014473.P9301799580602651200.a, A131063, A131063.P365354353460309481.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P12288742427957406659

`A007318(n)+A131060(n)-1`
-/

namespace A131061.P12288742427957406659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131060 n - 1)

end

end A131061.P12288742427957406659

namespace A131061

/-- `A007318(n)+A131060(n)-1` -/
def P12288742427957406659.Spec : Prop :=
  ∀ n, P12288742427957406659.a n = A131061 n

theorem P12288742427957406659.correct : P12288742427957406659.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P12288742427957406659.a, A131061.P3587332916456542118.a, A007318, A007318.P11755526479805562006.a, A131060, A131060.P6336280471409396356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P16979759341152593793

`A131063(n)+1-A007318(n)`
-/

namespace A131061.P16979759341152593793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n + (1 - A007318 n)

end

end A131061.P16979759341152593793

namespace A131061

/-- `A131063(n)+1-A007318(n)` -/
def P16979759341152593793.Spec : Prop :=
  ∀ n, P16979759341152593793.a n = A131061 n

theorem P16979759341152593793.correct : P16979759341152593793.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P16979759341152593793.a, A131061.P3587332916456542118.a, A007318, A007318.P11755526479805562006.a, A131063, A131063.P365354353460309481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P4292314600384127943

`A131065(n)+1-A109128(n)`
-/

namespace A131061.P4292314600384127943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131065 n + (1 - A109128 n)

end

end A131061.P4292314600384127943

namespace A131061

/-- `A131065(n)+1-A109128(n)` -/
def P4292314600384127943.Spec : Prop :=
  ∀ n, P4292314600384127943.a n = A131061 n

theorem P4292314600384127943.correct : P4292314600384127943.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P4292314600384127943.a, A131061.P3587332916456542118.a, A109128, A109128.P7867596798531783597.a, A131065, A131065.P14918655097173088384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P15984352827039994213

`A131067(n)+1-A131060(n)`
-/

namespace A131061.P15984352827039994213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131067 n + (1 - A131060 n)

end

end A131061.P15984352827039994213

namespace A131061

/-- `A131067(n)+1-A131060(n)` -/
def P15984352827039994213.Spec : Prop :=
  ∀ n, P15984352827039994213.a n = A131061 n

theorem P15984352827039994213.correct : P15984352827039994213.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P15984352827039994213.a, A131061.P3587332916456542118.a, A131060, A131060.P6336280471409396356.a, A131067, A131067.P17085963103663265053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P5812280198108298338

`A131065(n)-2*A014473(n)`
-/

namespace A131061.P5812280198108298338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131065 n - 2 * A014473 n

end

end A131061.P5812280198108298338

namespace A131061

/-- `A131065(n)-2*A014473(n)` -/
def P5812280198108298338.Spec : Prop :=
  ∀ n, P5812280198108298338.a n = A131061 n

theorem P5812280198108298338.correct : P5812280198108298338.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P5812280198108298338.a, A131061.P3587332916456542118.a, A014473, A014473.P9301799580602651200.a, A131065, A131065.P14918655097173088384.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P3121604919608655969

`(A131063(n)+A131060(n))/2`
-/

namespace A131061.P3121604919608655969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131063 n + A131060 n : ℚ) / 2

end

end A131061.P3121604919608655969

namespace A131061

/-- `(A131063(n)+A131060(n))/2` -/
def P3121604919608655969.Spec : Prop :=
  ∀ n, P3121604919608655969.a n = (A131061 n : ℚ)

theorem P3121604919608655969.correct : P3121604919608655969.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P3121604919608655969.a, A131061.P3587332916456542118.a, A131060, A131060.P6336280471409396356.a, A131063, A131063.P365354353460309481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-! ## A131061.P12499352343409648862

`2*A131063(n)-A131065(n)`
-/

namespace A131061.P12499352343409648862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131063 n - A131065 n

end

end A131061.P12499352343409648862

namespace A131061

/-- `2*A131063(n)-A131065(n)` -/
def P12499352343409648862.Spec : Prop :=
  ∀ n, P12499352343409648862.a n = A131061 n

theorem P12499352343409648862.correct : P12499352343409648862.Spec := by
  intro n
  simp only [A131061, Nat.add_sub_cancel, A131061.P12499352343409648862.a, A131061.P3587332916456542118.a, A131063, A131063.P365354353460309481.a, A131065, A131065.P14918655097173088384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131061

/-!
# A131062: Rounded frequencies of notes in a Pythagorean scale, starting with 260.7 Hertz for a C.

The programs for A131062, there is no canonical definition to state claims against.
-/

/-! ## A131062.P6358474037132778536

`A131071(A000210(n+1))`
-/

namespace A131062.P6358474037132778536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131071 (A000210 (n + 1)).toNat

end

end A131062.P6358474037132778536

/-! ## A131062.P8572164800807193477

`A131071(A022838(n+1))`
-/

namespace A131062.P8572164800807193477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131071 (A022838 (n + 1)).toNat

end

end A131062.P8572164800807193477

/-! ## A131062.P14821962039240860999

`A131071(A047329(n+1))`
-/

namespace A131062.P14821962039240860999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131071 (A047329 (n + 1)).toNat

end

end A131062.P14821962039240860999

/-! ## A131062.P8901993437736481725

`A131071(record[Δ[A353092(n)]])`
-/

namespace A131062.P8901993437736481725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131071 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131062.P8901993437736481725

/-!
# A131063: Triangle read by rows: T(n,k) = 5*binomial(n,k) - 4 for 0 <= k <= n.

The programs for A131063, the canonical program `A131063.P365354353460309481` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131063 has offset 0).

The definition of A131063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*C(row(n), col(n))-4` (program `A131063.P365354353460309481`, by `A131063.P365354353460309481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131063.P365354353460309481

`5*C(row(n), col(n))-4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131063

/-- `5*C(row(n), col(n))-4` -/
def P365354353460309481.Spec : Prop :=
  ∀ n, P365354353460309481.a n = A131063 n

theorem P365354353460309481.correct : P365354353460309481.Spec := by
  intro n
  simp only [A131063]

end A131063

/-! ## A131063.P17257853289505011625

`5*A014473(n)+1`
-/

namespace A131063.P17257853289505011625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A014473 n + 1

end

end A131063.P17257853289505011625

namespace A131063

/-- `5*A014473(n)+1` -/
def P17257853289505011625.Spec : Prop :=
  ∀ n, P17257853289505011625.a n = A131063 n

theorem P17257853289505011625.correct : P17257853289505011625.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P17257853289505011625.a, A131063.P365354353460309481.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P13201237333791632689

`5*A007318(n)-4`
-/

namespace A131063.P13201237333791632689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A007318 n - 4

end

end A131063.P13201237333791632689

namespace A131063

/-- `5*A007318(n)-4` -/
def P13201237333791632689.Spec : Prop :=
  ∀ n, P13201237333791632689.a n = A131063 n

end A131063

/-! ## A131063.P7699402079324185059

`abs(5*A108086(n))-4`
-/

namespace A131063.P7699402079324185059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * A108086 n| - 4

end

end A131063.P7699402079324185059

namespace A131063

/-- `abs(5*A108086(n))-4` -/
def P7699402079324185059.Spec : Prop :=
  ∀ n, P7699402079324185059.a n = A131063 n

end A131063

/-! ## A131063.P4696432473850837828

`5*(ceil(A134059(n)/3)-1)+1`
-/

namespace A131063.P4696432473850837828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (⌈(A134059 n : ℚ) / 3⌉ - 1) + 1

end

end A131063.P4696432473850837828

namespace A131063

/-- `5*(ceil(A134059(n)/3)-1)+1` -/
def P4696432473850837828.Spec : Prop :=
  ∀ n, P4696432473850837828.a n = A131063 n

end A131063

/-! ## A131063.P17027193265959445125

`A135089(A028310(n))-4`
-/

namespace A131063.P17027193265959445125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135089 (A028310 n).toNat - 4

end

end A131063.P17027193265959445125

namespace A131063

/-- `A135089(A028310(n))-4` -/
def P17027193265959445125.Spec : Prop :=
  ∀ n, P17027193265959445125.a n = A131063 n

end A131063

/-! ## A131063.P18121681286430639626

`A131061(n)+A014473(n)`
-/

namespace A131063.P18121681286430639626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n + A014473 n

end

end A131063.P18121681286430639626

namespace A131063

/-- `A131061(n)+A014473(n)` -/
def P18121681286430639626.Spec : Prop :=
  ∀ n, P18121681286430639626.a n = A131063 n

theorem P18121681286430639626.correct : P18121681286430639626.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P18121681286430639626.a, A131063.P365354353460309481.a, A014473, A014473.P9301799580602651200.a, A131061, A131061.P3587332916456542118.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P14276060413140629750

`A131065(n)-A014473(n)`
-/

namespace A131063.P14276060413140629750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131065 n - A014473 n

end

end A131063.P14276060413140629750

namespace A131063

/-- `A131065(n)-A014473(n)` -/
def P14276060413140629750.Spec : Prop :=
  ∀ n, P14276060413140629750.a n = A131063 n

theorem P14276060413140629750.correct : P14276060413140629750.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P14276060413140629750.a, A131063.P365354353460309481.a, A014473, A014473.P9301799580602651200.a, A131065, A131065.P14918655097173088384.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P17975485225722538006

`A007318(n)+A131061(n)-1`
-/

namespace A131063.P17975485225722538006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131061 n - 1)

end

end A131063.P17975485225722538006

namespace A131063

/-- `A007318(n)+A131061(n)-1` -/
def P17975485225722538006.Spec : Prop :=
  ∀ n, P17975485225722538006.a n = A131063 n

theorem P17975485225722538006.correct : P17975485225722538006.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P17975485225722538006.a, A131063.P365354353460309481.a, A007318, A007318.P11755526479805562006.a, A131061, A131061.P3587332916456542118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P735784780169450977

`A131065(n)+1-A007318(n)`
-/

namespace A131063.P735784780169450977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131065 n + (1 - A007318 n)

end

end A131063.P735784780169450977

namespace A131063

/-- `A131065(n)+1-A007318(n)` -/
def P735784780169450977.Spec : Prop :=
  ∀ n, P735784780169450977.a n = A131063 n

theorem P735784780169450977.correct : P735784780169450977.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P735784780169450977.a, A131063.P365354353460309481.a, A007318, A007318.P11755526479805562006.a, A131065, A131065.P14918655097173088384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P2541172357571167358

`A109128(n)+A131060(n)-1`
-/

namespace A131063.P2541172357571167358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A131060 n - 1)

end

end A131063.P2541172357571167358

namespace A131063

/-- `A109128(n)+A131060(n)-1` -/
def P2541172357571167358.Spec : Prop :=
  ∀ n, P2541172357571167358.a n = A131063 n

theorem P2541172357571167358.correct : P2541172357571167358.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P2541172357571167358.a, A131063.P365354353460309481.a, A109128, A109128.P7867596798531783597.a, A131060, A131060.P6336280471409396356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P141234782265119828

`A131067(n)+1-A109128(n)`
-/

namespace A131063.P141234782265119828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131067 n + (1 - A109128 n)

end

end A131063.P141234782265119828

namespace A131063

/-- `A131067(n)+1-A109128(n)` -/
def P141234782265119828.Spec : Prop :=
  ∀ n, P141234782265119828.a n = A131063 n

theorem P141234782265119828.correct : P141234782265119828.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P141234782265119828.a, A131063.P365354353460309481.a, A109128, A109128.P7867596798531783597.a, A131067, A131067.P17085963103663265053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P16048014059765513240

`A132047(n)+A132729(n)-1`
-/

namespace A131063.P16048014059765513240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132047 n + (A132729 n - 1)

end

end A131063.P16048014059765513240

namespace A131063

/-- `A132047(n)+A132729(n)-1` -/
def P16048014059765513240.Spec : Prop :=
  ∀ n, P16048014059765513240.a n = A131063 n

end A131063

/-! ## A131063.P16133358313584571339

`A168625(n)+1-A131060(n)`
-/

namespace A131063.P16133358313584571339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n + (1 - A131060 n)

end

end A131063.P16133358313584571339

namespace A131063

/-- `A168625(n)+1-A131060(n)` -/
def P16133358313584571339.Spec : Prop :=
  ∀ n, P16133358313584571339.a n = A131063 n

theorem P16133358313584571339.correct : P16133358313584571339.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P16133358313584571339.a, A131063.P365354353460309481.a, A131060, A131060.P6336280471409396356.a, A168625, A168625.P17215245163449372926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P5889578350389493181

`A028326(n)+A131060(n)-2`
-/

namespace A131063.P5889578350389493181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A131060 n - 2)

end

end A131063.P5889578350389493181

namespace A131063

/-- `A028326(n)+A131060(n)-2` -/
def P5889578350389493181.Spec : Prop :=
  ∀ n, P5889578350389493181.a n = A131063 n

theorem P5889578350389493181.correct : P5889578350389493181.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P5889578350389493181.a, A131063.P365354353460309481.a, A028326, A028326.P7676793339942299677.a, A131060, A131060.P6336280471409396356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P1058000926683098754

`A131067(n)-2*A014473(n)`
-/

namespace A131063.P1058000926683098754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131067 n - 2 * A014473 n

end

end A131063.P1058000926683098754

namespace A131063

/-- `A131067(n)-2*A014473(n)` -/
def P1058000926683098754.Spec : Prop :=
  ∀ n, P1058000926683098754.a n = A131063 n

theorem P1058000926683098754.correct : P1058000926683098754.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P1058000926683098754.a, A131063.P365354353460309481.a, A014473, A014473.P9301799580602651200.a, A131067, A131067.P17085963103663265053.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P1508651388381508158

`2*A131061(n)-A131060(n)`
-/

namespace A131063.P1508651388381508158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131061 n - A131060 n

end

end A131063.P1508651388381508158

namespace A131063

/-- `2*A131061(n)-A131060(n)` -/
def P1508651388381508158.Spec : Prop :=
  ∀ n, P1508651388381508158.a n = A131063 n

theorem P1508651388381508158.correct : P1508651388381508158.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P1508651388381508158.a, A131063.P365354353460309481.a, A131060, A131060.P6336280471409396356.a, A131061, A131061.P3587332916456542118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P11335591826270035117

`(A131065(n)+A131061(n))/2`
-/

namespace A131063.P11335591826270035117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131065 n + A131061 n : ℚ) / 2

end

end A131063.P11335591826270035117

namespace A131063

/-- `(A131065(n)+A131061(n))/2` -/
def P11335591826270035117.Spec : Prop :=
  ∀ n, P11335591826270035117.a n = (A131063 n : ℚ)

theorem P11335591826270035117.correct : P11335591826270035117.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P11335591826270035117.a, A131063.P365354353460309481.a, A131061, A131061.P3587332916456542118.a, A131065, A131065.P14918655097173088384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P8668963616831009534

`(A131067(n)+A131060(n))/2`
-/

namespace A131063.P8668963616831009534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131067 n + A131060 n : ℚ) / 2

end

end A131063.P8668963616831009534

namespace A131063

/-- `(A131067(n)+A131060(n))/2` -/
def P8668963616831009534.Spec : Prop :=
  ∀ n, P8668963616831009534.a n = (A131063 n : ℚ)

theorem P8668963616831009534.correct : P8668963616831009534.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P8668963616831009534.a, A131063.P365354353460309481.a, A131060, A131060.P6336280471409396356.a, A131067, A131067.P17085963103663265053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-! ## A131063.P2843948060409614320

`2*A131065(n)-A131067(n)`
-/

namespace A131063.P2843948060409614320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131065 n - A131067 n

end

end A131063.P2843948060409614320

namespace A131063

/-- `2*A131065(n)-A131067(n)` -/
def P2843948060409614320.Spec : Prop :=
  ∀ n, P2843948060409614320.a n = A131063 n

theorem P2843948060409614320.correct : P2843948060409614320.Spec := by
  intro n
  simp only [A131063, Nat.add_sub_cancel, A131063.P2843948060409614320.a, A131063.P365354353460309481.a, A131065, A131065.P14918655097173088384.a, A131067, A131067.P17085963103663265053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131063

/-!
# A131064: Binomial transform of [1, 1, 5, 5, 5, ...].

The programs for A131064, the canonical program `A131064.P1020797284623814673` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131064 has offset 0).

The definition of A131064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131064.P26982731787442580

`ogf((1-2x+5x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A131064.P26982731787442580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 5] [1, -4, 5, -2] n

end

end A131064.P26982731787442580

namespace A131064

/-- `ogf((1-2x+5x^2)/(1-4x+5x^2-2x^3))` -/
def P26982731787442580.Spec : Prop :=
  ∀ n, P26982731787442580.a n = A131064 n

end A131064

/-! ## A131064.P1020797284623814673

`5*2^n-4*(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131064

/-- `5*2^n-4*(n+1)` -/
def P1020797284623814673.Spec : Prop :=
  ∀ n, P1020797284623814673.a n = A131064 n

theorem P1020797284623814673.correct : P1020797284623814673.Spec := by
  intro n
  simp only [A131064]

end A131064

/-! ## A131064.P4733174007686394085

`∑[ogf((1-2x+5x^2)/(1-3x+2x^2))]`
-/

namespace A131064.P4733174007686394085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 5] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131064.P4733174007686394085

namespace A131064

/-- `∑[ogf((1-2x+5x^2)/(1-3x+2x^2))]` -/
def P4733174007686394085.Spec : Prop :=
  ∀ n, P4733174007686394085.a n = A131064 n

end A131064

/-! ## A131064.P17988626076424986464

`∑[2*(a(n-1)+2)]` with `a(0)=1, a(1)=1`
-/

namespace A131064.P17988626076424986464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131064.P17988626076424986464

namespace A131064

/-- `∑[2*(a(n-1)+2)]` -/
def P17988626076424986464.Spec : Prop :=
  ∀ n, (P17988626076424986464.a n : ℤ) = A131064 n

end A131064

/-! ## A131064.P17806392976727773669

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A131064.P17806392976727773669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131064.P17806392976727773669

namespace A131064

/-- `∑[∑[2*a(n-1)]]` -/
def P17806392976727773669.Spec : Prop :=
  ∀ n, (P17806392976727773669.a n : ℤ) = A131064 n

end A131064

/-! ## A131064.P5834683067494528135

`2*(a(n-1)+2*(n-1))` with `a(0)=1`
-/

namespace A131064.P5834683067494528135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 2 * ((n : ℤ) - 1))

end

end A131064.P5834683067494528135

namespace A131064

/-- `2*(a(n-1)+2*(n-1))` -/
def P5834683067494528135.Spec : Prop :=
  ∀ n, P5834683067494528135.a n = A131064 n

theorem P5834683067494528135.correct : P5834683067494528135.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131064, Nat.add_sub_cancel, A131064.P5834683067494528135.a, A131064.P1020797284623814673.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131064, Nat.add_sub_cancel, A131064.P5834683067494528135.a, A131064.P1020797284623814673.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131064

/-! ## A131064.P9927196927469566080

`2*(2*n-(2-a(n-1)))` with `a(0)=1`
-/

namespace A131064.P9927196927469566080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 * n : ℤ) - (2 - a (n - 1)))

end

end A131064.P9927196927469566080

namespace A131064

/-- `2*(2*n-(2-a(n-1)))` -/
def P9927196927469566080.Spec : Prop :=
  ∀ n, P9927196927469566080.a n = A131064 n

theorem P9927196927469566080.correct : P9927196927469566080.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131064, Nat.add_sub_cancel, A131064.P9927196927469566080.a, A131064.P1020797284623814673.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131064, Nat.add_sub_cancel, A131064.P9927196927469566080.a, A131064.P1020797284623814673.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131064

/-! ## A131064.P12378557863655710927

`∑[a(n-1)+a(n-1)+4]` with `a(0)=1, a(1)=1`
-/

namespace A131064.P12378557863655710927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131064.P12378557863655710927

namespace A131064

/-- `∑[a(n-1)+a(n-1)+4]` -/
def P12378557863655710927.Spec : Prop :=
  ∀ n, (P12378557863655710927.a n : ℤ) = A131064 n

end A131064

/-! ## A131064.P3114090383151685376

`∑[abs(2-∑[A084215(n)])]`
-/

namespace A131064.P3114090383151685376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131064.P3114090383151685376

namespace A131064

/-- `∑[abs(2-∑[A084215(n)])]` -/
def P3114090383151685376.Spec : Prop :=
  ∀ n, P3114090383151685376.a n = A131064 n

end A131064

/-! ## A131064.P4352666568568908187

`abs(A004767(n)-(A134062(n)+1))`
-/

namespace A131064.P4352666568568908187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004767 n - (A134062 n + 1)|

end

end A131064.P4352666568568908187

namespace A131064

/-- `abs(A004767(n)-(A134062(n)+1))` -/
def P4352666568568908187.Spec : Prop :=
  ∀ n, P4352666568568908187.a n = A131064 n

end A131064

/-! ## A131064.P11644645449751590335

`∑[A154251(n)+1-A095121(n)]`
-/

namespace A131064.P11644645449751590335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154251 n + (1 - A095121 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131064.P11644645449751590335

namespace A131064

/-- `∑[A154251(n)+1-A095121(n)]` -/
def P11644645449751590335.Spec : Prop :=
  ∀ n, P11644645449751590335.a n = A131064 n

end A131064

/-! ## A131064.P12343202834803791727

`A276677(A004273(n)+1)/2`
-/

namespace A131064.P12343202834803791727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276677 (A004273 n + 1).toNat : ℚ) / 2

end

end A131064.P12343202834803791727

namespace A131064

/-- `A276677(A004273(n)+1)/2` -/
def P12343202834803791727.Spec : Prop :=
  ∀ n, P12343202834803791727.a n = (A131064 n : ℚ)

end A131064

/-! ## A131064.P17759214366222299389

`(A131068(n)+A097813(n))/2`
-/

namespace A131064.P17759214366222299389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131068 n + A097813 n : ℚ) / 2

end

end A131064.P17759214366222299389

namespace A131064

/-- `(A131068(n)+A097813(n))/2` -/
def P17759214366222299389.Spec : Prop :=
  ∀ n, P17759214366222299389.a n = (A131064 n : ℚ)

theorem P17759214366222299389.correct : P17759214366222299389.Spec := by
  intro n
  simp only [A131064, Nat.add_sub_cancel, A131064.P17759214366222299389.a, A131064.P1020797284623814673.a, A097813, A097813.P9463148433829689973.a, A131068, A131068.P10384673899537543651.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131064

/-!
# A131065: Triangle read by rows: T(n,k) = 6*binomial(n,k) - 5 for 0 <= k <= n.

The programs for A131065, the canonical program `A131065.P14918655097173088384` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131065 has offset 0).

The definition of A131065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(row(n), col(n))-5` (program `A131065.P14918655097173088384`, by `A131065.P14918655097173088384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131065.P14918655097173088384

`6*C(row(n), col(n))-5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131065

/-- `6*C(row(n), col(n))-5` -/
def P14918655097173088384.Spec : Prop :=
  ∀ n, P14918655097173088384.a n = A131065 n

theorem P14918655097173088384.correct : P14918655097173088384.Spec := by
  intro n
  simp only [A131065]

end A131065

/-! ## A131065.P9875973799830615181

`2*A131060(n)-1`
-/

namespace A131065.P9875973799830615181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131060 n - 1

end

end A131065.P9875973799830615181

namespace A131065

/-- `2*A131060(n)-1` -/
def P9875973799830615181.Spec : Prop :=
  ∀ n, P9875973799830615181.a n = A131065 n

theorem P9875973799830615181.correct : P9875973799830615181.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P9875973799830615181.a, A131065.P14918655097173088384.a, A131060, A131060.P6336280471409396356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P10805035726485365462

`3*A109128(n)-2`
-/

namespace A131065.P10805035726485365462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A109128 n - 2

end

end A131065.P10805035726485365462

namespace A131065

/-- `3*A109128(n)-2` -/
def P10805035726485365462.Spec : Prop :=
  ∀ n, P10805035726485365462.a n = A131065 n

theorem P10805035726485365462.correct : P10805035726485365462.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P10805035726485365462.a, A131065.P14918655097173088384.a, A109128, A109128.P7867596798531783597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P12163112234452858542

`6*A014473(n)+1`
-/

namespace A131065.P12163112234452858542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A014473 n + 1

end

end A131065.P12163112234452858542

namespace A131065

/-- `6*A014473(n)+1` -/
def P12163112234452858542.Spec : Prop :=
  ∀ n, P12163112234452858542.a n = A131065 n

theorem P12163112234452858542.correct : P12163112234452858542.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P12163112234452858542.a, A131065.P14918655097173088384.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P4489134190087972185

`3*A028326(n)-5`
-/

namespace A131065.P4489134190087972185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028326 n - 5

end

end A131065.P4489134190087972185

namespace A131065

/-- `3*A028326(n)-5` -/
def P4489134190087972185.Spec : Prop :=
  ∀ n, P4489134190087972185.a n = A131065 n

theorem P4489134190087972185.correct : P4489134190087972185.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P4489134190087972185.a, A131065.P14918655097173088384.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P17313482888424889965

`6*A007318(n)-5`
-/

namespace A131065.P17313482888424889965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007318 n - 5

end

end A131065.P17313482888424889965

namespace A131065

/-- `6*A007318(n)-5` -/
def P17313482888424889965.Spec : Prop :=
  ∀ n, P17313482888424889965.a n = A131065 n

end A131065

/-! ## A131065.P16450967230248630157

`2*abs(2-A134059(n))-1`
-/

namespace A131065.P16450967230248630157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |2 - A134059 n| - 1

end

end A131065.P16450967230248630157

namespace A131065

/-- `2*abs(2-A134059(n))-1` -/
def P16450967230248630157.Spec : Prop :=
  ∀ n, P16450967230248630157.a n = A131065 n

end A131065

/-! ## A131065.P3988411502869912696

`A131063(n)+A014473(n)`
-/

namespace A131065.P3988411502869912696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n + A014473 n

end

end A131065.P3988411502869912696

namespace A131065

/-- `A131063(n)+A014473(n)` -/
def P3988411502869912696.Spec : Prop :=
  ∀ n, P3988411502869912696.a n = A131065 n

theorem P3988411502869912696.correct : P3988411502869912696.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P3988411502869912696.a, A131065.P14918655097173088384.a, A014473, A014473.P9301799580602651200.a, A131063, A131063.P365354353460309481.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P18097879938276103749

`A131067(n)-A014473(n)`
-/

namespace A131065.P18097879938276103749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131067 n - A014473 n

end

end A131065.P18097879938276103749

namespace A131065

/-- `A131067(n)-A014473(n)` -/
def P18097879938276103749.Spec : Prop :=
  ∀ n, P18097879938276103749.a n = A131065 n

theorem P18097879938276103749.correct : P18097879938276103749.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P18097879938276103749.a, A131065.P14918655097173088384.a, A014473, A014473.P9301799580602651200.a, A131067, A131067.P17085963103663265053.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P709623419260097468

`A007318(n)+A131063(n)-1`
-/

namespace A131065.P709623419260097468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131063 n - 1)

end

end A131065.P709623419260097468

namespace A131065

/-- `A007318(n)+A131063(n)-1` -/
def P709623419260097468.Spec : Prop :=
  ∀ n, P709623419260097468.a n = A131065 n

theorem P709623419260097468.correct : P709623419260097468.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P709623419260097468.a, A131065.P14918655097173088384.a, A007318, A007318.P11755526479805562006.a, A131063, A131063.P365354353460309481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P8157728209089074851

`A131067(n)+1-A007318(n)`
-/

namespace A131065.P8157728209089074851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131067 n + (1 - A007318 n)

end

end A131065.P8157728209089074851

namespace A131065

/-- `A131067(n)+1-A007318(n)` -/
def P8157728209089074851.Spec : Prop :=
  ∀ n, P8157728209089074851.a n = A131065 n

theorem P8157728209089074851.correct : P8157728209089074851.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P8157728209089074851.a, A131065.P14918655097173088384.a, A007318, A007318.P11755526479805562006.a, A131067, A131067.P17085963103663265053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P12378250601529754866

`A109128(n)+A131061(n)-1`
-/

namespace A131065.P12378250601529754866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A131061 n - 1)

end

end A131065.P12378250601529754866

namespace A131065

/-- `A109128(n)+A131061(n)-1` -/
def P12378250601529754866.Spec : Prop :=
  ∀ n, P12378250601529754866.a n = A131065 n

theorem P12378250601529754866.correct : P12378250601529754866.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P12378250601529754866.a, A131065.P14918655097173088384.a, A109128, A109128.P7867596798531783597.a, A131061, A131061.P3587332916456542118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P11342025694546788008

`A168625(n)+1-A109128(n)`
-/

namespace A131065.P11342025694546788008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n + (1 - A109128 n)

end

end A131065.P11342025694546788008

namespace A131065

/-- `A168625(n)+1-A109128(n)` -/
def P11342025694546788008.Spec : Prop :=
  ∀ n, P11342025694546788008.a n = A131065 n

theorem P11342025694546788008.correct : P11342025694546788008.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P11342025694546788008.a, A131065.P14918655097173088384.a, A109128, A109128.P7867596798531783597.a, A168625, A168625.P17215245163449372926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P3554178076783511310

`A028326(n)+A131061(n)-2`
-/

namespace A131065.P3554178076783511310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A131061 n - 2)

end

end A131065.P3554178076783511310

namespace A131065

/-- `A028326(n)+A131061(n)-2` -/
def P3554178076783511310.Spec : Prop :=
  ∀ n, P3554178076783511310.a n = A131065 n

theorem P3554178076783511310.correct : P3554178076783511310.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P3554178076783511310.a, A131065.P14918655097173088384.a, A028326, A028326.P7676793339942299677.a, A131061, A131061.P3587332916456542118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P6191862714263204094

`A168625(n)-2*A014473(n)`
-/

namespace A131065.P6191862714263204094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n - 2 * A014473 n

end

end A131065.P6191862714263204094

namespace A131065

/-- `A168625(n)-2*A014473(n)` -/
def P6191862714263204094.Spec : Prop :=
  ∀ n, P6191862714263204094.a n = A131065 n

theorem P6191862714263204094.correct : P6191862714263204094.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P6191862714263204094.a, A131065.P14918655097173088384.a, A014473, A014473.P9301799580602651200.a, A168625, A168625.P17215245163449372926.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P16213342272746191890

`2*A131063(n)-A131061(n)`
-/

namespace A131065.P16213342272746191890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131063 n - A131061 n

end

end A131065.P16213342272746191890

namespace A131065

/-- `2*A131063(n)-A131061(n)` -/
def P16213342272746191890.Spec : Prop :=
  ∀ n, P16213342272746191890.a n = A131065 n

theorem P16213342272746191890.correct : P16213342272746191890.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P16213342272746191890.a, A131065.P14918655097173088384.a, A131061, A131061.P3587332916456542118.a, A131063, A131063.P365354353460309481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P1075191927767570931

`(A131067(n)+A131063(n))/2`
-/

namespace A131065.P1075191927767570931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131067 n + A131063 n : ℚ) / 2

end

end A131065.P1075191927767570931

namespace A131065

/-- `(A131067(n)+A131063(n))/2` -/
def P1075191927767570931.Spec : Prop :=
  ∀ n, P1075191927767570931.a n = (A131065 n : ℚ)

theorem P1075191927767570931.correct : P1075191927767570931.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P1075191927767570931.a, A131065.P14918655097173088384.a, A131063, A131063.P365354353460309481.a, A131067, A131067.P17085963103663265053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P8930711529520716453

`(A168625(n)+A131061(n))/2`
-/

namespace A131065.P8930711529520716453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168625 n + A131061 n : ℚ) / 2

end

end A131065.P8930711529520716453

namespace A131065

/-- `(A168625(n)+A131061(n))/2` -/
def P8930711529520716453.Spec : Prop :=
  ∀ n, P8930711529520716453.a n = (A131065 n : ℚ)

theorem P8930711529520716453.correct : P8930711529520716453.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P8930711529520716453.a, A131065.P14918655097173088384.a, A131061, A131061.P3587332916456542118.a, A168625, A168625.P17215245163449372926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P13222380221867888830

`2*A131067(n)-A168625(n)`
-/

namespace A131065.P13222380221867888830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131067 n - A168625 n

end

end A131065.P13222380221867888830

namespace A131065

/-- `2*A131067(n)-A168625(n)` -/
def P13222380221867888830.Spec : Prop :=
  ∀ n, P13222380221867888830.a n = A131065 n

theorem P13222380221867888830.correct : P13222380221867888830.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P13222380221867888830.a, A131065.P14918655097173088384.a, A131067, A131067.P17085963103663265053.a, A168625, A168625.P17215245163449372926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-! ## A131065.P6663327752067085264

`A014473(n)+A131061(n)+A014473(n)`
-/

namespace A131065.P6663327752067085264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A131061 n + A014473 n)

end

end A131065.P6663327752067085264

namespace A131065

/-- `A014473(n)+A131061(n)+A014473(n)` -/
def P6663327752067085264.Spec : Prop :=
  ∀ n, P6663327752067085264.a n = A131065 n

theorem P6663327752067085264.correct : P6663327752067085264.Spec := by
  intro n
  simp only [A131065, Nat.add_sub_cancel, A131065.P6663327752067085264.a, A131065.P14918655097173088384.a, A014473, A014473.P9301799580602651200.a, A131061, A131061.P3587332916456542118.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131065

/-!
# A131066: Binomial transform of [1, 1, 6, 6, 6, ...].

The programs for A131066, the canonical program `A131066.P1369875246180018976` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131066 has offset 0).

The definition of A131066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131066.P4272792580847755457

`ogf((1-2x+6x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A131066.P4272792580847755457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 6] [1, -4, 5, -2] n

end

end A131066.P4272792580847755457

namespace A131066

/-- `ogf((1-2x+6x^2)/(1-4x+5x^2-2x^3))` -/
def P4272792580847755457.Spec : Prop :=
  ∀ n, P4272792580847755457.a n = A131066 n

end A131066

/-! ## A131066.P1369875246180018976

`6*2^n-5*(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131066

/-- `6*2^n-5*(n+1)` -/
def P1369875246180018976.Spec : Prop :=
  ∀ n, P1369875246180018976.a n = A131066 n

theorem P1369875246180018976.correct : P1369875246180018976.Spec := by
  intro n
  simp only [A131066]

end A131066

/-! ## A131066.P12224743818627413680

`∑[ogf((1-2x+6x^2)/(1-3x+2x^2))]`
-/

namespace A131066.P12224743818627413680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 6] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131066.P12224743818627413680

namespace A131066

/-- `∑[ogf((1-2x+6x^2)/(1-3x+2x^2))]` -/
def P12224743818627413680.Spec : Prop :=
  ∀ n, P12224743818627413680.a n = A131066 n

end A131066

/-! ## A131066.P1546255393676575591

`∑[2*a(n-1)+5]` with `a(0)=1, a(1)=1`
-/

namespace A131066.P1546255393676575591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131066.P1546255393676575591

namespace A131066

/-- `∑[2*a(n-1)+5]` -/
def P1546255393676575591.Spec : Prop :=
  ∀ n, (P1546255393676575591.a n : ℤ) = A131066 n

end A131066

/-! ## A131066.P4481459565111962253

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=6`
-/

namespace A131066.P4481459565111962253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 6] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131066.P4481459565111962253

namespace A131066

/-- `∑[∑[2*a(n-1)]]` -/
def P4481459565111962253.Spec : Prop :=
  ∀ n, (P4481459565111962253.a n : ℤ) = A131066 n

end A131066

/-! ## A131066.P13083726117304237203

`∑[a(n-1)+a(n-1)+5]` with `a(0)=1, a(1)=1`
-/

namespace A131066.P13083726117304237203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131066.P13083726117304237203

namespace A131066

/-- `∑[a(n-1)+a(n-1)+5]` -/
def P13083726117304237203.Spec : Prop :=
  ∀ n, (P13083726117304237203.a n : ℤ) = A131066 n

end A131066

/-! ## A131066.P15944387221041175433

`∑[abs(2-A068156(n))]`
-/

namespace A131066.P15944387221041175433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A068156 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131066.P15944387221041175433

namespace A131066

/-- `∑[abs(2-A068156(n))]` -/
def P15944387221041175433.Spec : Prop :=
  ∀ n, P15944387221041175433.a n = A131066 n

end A131066

/-! ## A131066.P6886028962433043116

`∑[or(1, ∑[A082505(n)])]`
-/

namespace A131066.P6886028962433043116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131066.P6886028962433043116

namespace A131066

/-- `∑[or(1, ∑[A082505(n)])]` -/
def P6886028962433043116.Spec : Prop :=
  ∀ n, P6886028962433043116.a n = A131066 n

end A131066

/-! ## A131066.P10412862234364426972

`abs(2*n-A101946(n))`
-/

namespace A131066.P10412862234364426972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A101946 n|

end

end A131066.P10412862234364426972

namespace A131066

/-- `abs(2*n-A101946(n))` -/
def P10412862234364426972.Spec : Prop :=
  ∀ n, P10412862234364426972.a n = A131066 n

end A131066

/-! ## A131066.P12357548337610741297

`∑[abs(2-∑[A111286(n+1)])]`
-/

namespace A131066.P12357548337610741297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131066.P12357548337610741297

namespace A131066

/-- `∑[abs(2-∑[A111286(n+1)])]` -/
def P12357548337610741297.Spec : Prop :=
  ∀ n, P12357548337610741297.a n = A131066 n

end A131066

/-! ## A131066.P9804022021805330080

`abs(5*(n+1)-A007283(n+1))`
-/

namespace A131066.P9804022021805330080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * (n + 1) : ℤ) - A007283 (n + 1)|

end

end A131066.P9804022021805330080

namespace A131066

/-- `abs(5*(n+1)-A007283(n+1))` -/
def P9804022021805330080.Spec : Prop :=
  ∀ n, P9804022021805330080.a n = A131066 n

end A131066

/-! ## A131066.P14410512817029347745

`∑[A131130(n)-A000225(n)]`
-/

namespace A131066.P14410512817029347745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131130 n - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131066.P14410512817029347745

namespace A131066

/-- `∑[A131130(n)-A000225(n)]` -/
def P14410512817029347745.Spec : Prop :=
  ∀ n, P14410512817029347745.a n = A131066 n

end A131066

/-! ## A131066.P3881551786091839256

`∑[A131128(n)-A057427(n)]`
-/

namespace A131066.P3881551786091839256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131128 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131066.P3881551786091839256

namespace A131066

/-- `∑[A131128(n)-A057427(n)]` -/
def P3881551786091839256.Spec : Prop :=
  ∀ n, P3881551786091839256.a n = A131066 n

end A131066

/-!
# A131067: Triangle read by rows: T(n,k) = 7*binomial(n,k) - 6 for 0 <= k <= n.

The programs for A131067, the canonical program `A131067.P17085963103663265053` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131067 has offset 0).

The definition of A131067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*C(row(n), col(n))-6` (program `A131067.P17085963103663265053`, by `A131067.P17085963103663265053.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131067.P17085963103663265053

`7*C(row(n), col(n))-6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131067

/-- `7*C(row(n), col(n))-6` -/
def P17085963103663265053.Spec : Prop :=
  ∀ n, P17085963103663265053.a n = A131067 n

theorem P17085963103663265053.correct : P17085963103663265053.Spec := by
  intro n
  simp only [A131067]

end A131067

/-! ## A131067.P2016640498183815083

`7*A014473(n)+1`
-/

namespace A131067.P2016640498183815083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A014473 n + 1

end

end A131067.P2016640498183815083

namespace A131067

/-- `7*A014473(n)+1` -/
def P2016640498183815083.Spec : Prop :=
  ∀ n, P2016640498183815083.a n = A131067 n

theorem P2016640498183815083.correct : P2016640498183815083.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P2016640498183815083.a, A131067.P17085963103663265053.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P1123073419112560187

`7*A007318(n)-6`
-/

namespace A131067.P1123073419112560187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007318 n - 6

end

end A131067.P1123073419112560187

namespace A131067

/-- `7*A007318(n)-6` -/
def P1123073419112560187.Spec : Prop :=
  ∀ n, P1123073419112560187.a n = A131067 n

end A131067

/-! ## A131067.P9383237579905493226

`7*(ceil(A134059(n)/3)-1)+1`
-/

namespace A131067.P9383237579905493226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (⌈(A134059 n : ℚ) / 3⌉ - 1) + 1

end

end A131067.P9383237579905493226

namespace A131067

/-- `7*(ceil(A134059(n)/3)-1)+1` -/
def P9383237579905493226.Spec : Prop :=
  ∀ n, P9383237579905493226.a n = A131067 n

end A131067

/-! ## A131067.P9506480293303452313

`A131065(n)+A014473(n)`
-/

namespace A131067.P9506480293303452313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131065 n + A014473 n

end

end A131067.P9506480293303452313

namespace A131067

/-- `A131065(n)+A014473(n)` -/
def P9506480293303452313.Spec : Prop :=
  ∀ n, P9506480293303452313.a n = A131067 n

theorem P9506480293303452313.correct : P9506480293303452313.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P9506480293303452313.a, A131067.P17085963103663265053.a, A014473, A014473.P9301799580602651200.a, A131065, A131065.P14918655097173088384.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P5343334141766624435

`A168625(n)-A014473(n)`
-/

namespace A131067.P5343334141766624435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n - A014473 n

end

end A131067.P5343334141766624435

namespace A131067

/-- `A168625(n)-A014473(n)` -/
def P5343334141766624435.Spec : Prop :=
  ∀ n, P5343334141766624435.a n = A131067 n

theorem P5343334141766624435.correct : P5343334141766624435.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P5343334141766624435.a, A131067.P17085963103663265053.a, A014473, A014473.P9301799580602651200.a, A168625, A168625.P17215245163449372926.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P9825511223479767773

`A007318(n)+A131065(n)-1`
-/

namespace A131067.P9825511223479767773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131065 n - 1)

end

end A131067.P9825511223479767773

namespace A131067

/-- `A007318(n)+A131065(n)-1` -/
def P9825511223479767773.Spec : Prop :=
  ∀ n, P9825511223479767773.a n = A131067 n

theorem P9825511223479767773.correct : P9825511223479767773.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P9825511223479767773.a, A131067.P17085963103663265053.a, A007318, A007318.P11755526479805562006.a, A131065, A131065.P14918655097173088384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P13054437576614452261

`A168625(n)+1-A007318(n)`
-/

namespace A131067.P13054437576614452261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n + (1 - A007318 n)

end

end A131067.P13054437576614452261

namespace A131067

/-- `A168625(n)+1-A007318(n)` -/
def P13054437576614452261.Spec : Prop :=
  ∀ n, P13054437576614452261.a n = A131067 n

theorem P13054437576614452261.correct : P13054437576614452261.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P13054437576614452261.a, A131067.P17085963103663265053.a, A007318, A007318.P11755526479805562006.a, A168625, A168625.P17215245163449372926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P9679056044502408092

`A109128(n)+A131063(n)-1`
-/

namespace A131067.P9679056044502408092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A131063 n - 1)

end

end A131067.P9679056044502408092

namespace A131067

/-- `A109128(n)+A131063(n)-1` -/
def P9679056044502408092.Spec : Prop :=
  ∀ n, P9679056044502408092.a n = A131067 n

theorem P9679056044502408092.correct : P9679056044502408092.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P9679056044502408092.a, A131067.P17085963103663265053.a, A109128, A109128.P7867596798531783597.a, A131063, A131063.P365354353460309481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P14016832505358909382

`A131060(n)+A131061(n)-1`
-/

namespace A131067.P14016832505358909382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + (A131061 n - 1)

end

end A131067.P14016832505358909382

namespace A131067

/-- `A131060(n)+A131061(n)-1` -/
def P14016832505358909382.Spec : Prop :=
  ∀ n, P14016832505358909382.a n = A131067 n

theorem P14016832505358909382.correct : P14016832505358909382.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P14016832505358909382.a, A131067.P17085963103663265053.a, A131060, A131060.P6336280471409396356.a, A131061, A131061.P3587332916456542118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P8439771069645003503

`A153491(n)-(A131061(n)+1)`
-/

namespace A131067.P8439771069645003503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153491 n - (A131061 n + 1)

end

end A131067.P8439771069645003503

namespace A131067

/-- `A153491(n)-(A131061(n)+1)` -/
def P8439771069645003503.Spec : Prop :=
  ∀ n, P8439771069645003503.a n = A131067 n

theorem P8439771069645003503.correct : P8439771069645003503.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P8439771069645003503.a, A131067.P17085963103663265053.a, A131061, A131061.P3587332916456542118.a, A153491, A153491.P5433564092227727412.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P10355078296781415700

`2*A131063(n)-A131060(n)`
-/

namespace A131067.P10355078296781415700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131063 n - A131060 n

end

end A131067.P10355078296781415700

namespace A131067

/-- `2*A131063(n)-A131060(n)` -/
def P10355078296781415700.Spec : Prop :=
  ∀ n, P10355078296781415700.a n = A131067 n

theorem P10355078296781415700.correct : P10355078296781415700.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P10355078296781415700.a, A131067.P17085963103663265053.a, A131060, A131060.P6336280471409396356.a, A131063, A131063.P365354353460309481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P156476355069270363

`2*A131065(n)-A131063(n)`
-/

namespace A131067.P156476355069270363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131065 n - A131063 n

end

end A131067.P156476355069270363

namespace A131067

/-- `2*A131065(n)-A131063(n)` -/
def P156476355069270363.Spec : Prop :=
  ∀ n, P156476355069270363.a n = A131067 n

theorem P156476355069270363.correct : P156476355069270363.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P156476355069270363.a, A131067.P17085963103663265053.a, A131063, A131063.P365354353460309481.a, A131065, A131065.P14918655097173088384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P10462715280874636635

`A153491(n)-2*A109128(n)`
-/

namespace A131067.P10462715280874636635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153491 n - 2 * A109128 n

end

end A131067.P10462715280874636635

namespace A131067

/-- `A153491(n)-2*A109128(n)` -/
def P10462715280874636635.Spec : Prop :=
  ∀ n, P10462715280874636635.a n = A131067 n

theorem P10462715280874636635.correct : P10462715280874636635.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P10462715280874636635.a, A131067.P17085963103663265053.a, A109128, A109128.P7867596798531783597.a, A153491, A153491.P5433564092227727412.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P16896701133170604284

`(A168625(n)+A131065(n))/2`
-/

namespace A131067.P16896701133170604284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168625 n + A131065 n : ℚ) / 2

end

end A131067.P16896701133170604284

namespace A131067

/-- `(A168625(n)+A131065(n))/2` -/
def P16896701133170604284.Spec : Prop :=
  ∀ n, P16896701133170604284.a n = (A131067 n : ℚ)

theorem P16896701133170604284.correct : P16896701133170604284.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P16896701133170604284.a, A131067.P17085963103663265053.a, A131065, A131065.P14918655097173088384.a, A168625, A168625.P17215245163449372926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P9950592563637209420

`A014473(n)+A131063(n)+A014473(n)`
-/

namespace A131067.P9950592563637209420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A131063 n + A014473 n)

end

end A131067.P9950592563637209420

namespace A131067

/-- `A014473(n)+A131063(n)+A014473(n)` -/
def P9950592563637209420.Spec : Prop :=
  ∀ n, P9950592563637209420.a n = A131067 n

theorem P9950592563637209420.correct : P9950592563637209420.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P9950592563637209420.a, A131067.P17085963103663265053.a, A014473, A014473.P9301799580602651200.a, A131063, A131063.P365354353460309481.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P11007752637868095484

`A131061(n)+A131061(n)-A007318(n)`
-/

namespace A131067.P11007752637868095484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n + (A131061 n - A007318 n)

end

end A131067.P11007752637868095484

namespace A131067

/-- `A131061(n)+A131061(n)-A007318(n)` -/
def P11007752637868095484.Spec : Prop :=
  ∀ n, P11007752637868095484.a n = A131067 n

theorem P11007752637868095484.correct : P11007752637868095484.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P11007752637868095484.a, A131067.P17085963103663265053.a, A007318, A007318.P11755526479805562006.a, A131061, A131061.P3587332916456542118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P7602193633133165055

`A131060(n)+A131063(n)-A007318(n)`
-/

namespace A131067.P7602193633133165055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + (A131063 n - A007318 n)

end

end A131067.P7602193633133165055

namespace A131067

/-- `A131060(n)+A131063(n)-A007318(n)` -/
def P7602193633133165055.Spec : Prop :=
  ∀ n, P7602193633133165055.a n = A131067 n

theorem P7602193633133165055.correct : P7602193633133165055.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P7602193633133165055.a, A131067.P17085963103663265053.a, A007318, A007318.P11755526479805562006.a, A131060, A131060.P6336280471409396356.a, A131063, A131063.P365354353460309481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P11052775926909344438

`A131060(n)+A131065(n)-A109128(n)`
-/

namespace A131067.P11052775926909344438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + (A131065 n - A109128 n)

end

end A131067.P11052775926909344438

namespace A131067

/-- `A131060(n)+A131065(n)-A109128(n)` -/
def P11052775926909344438.Spec : Prop :=
  ∀ n, P11052775926909344438.a n = A131067 n

theorem P11052775926909344438.correct : P11052775926909344438.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P11052775926909344438.a, A131067.P17085963103663265053.a, A109128, A109128.P7867596798531783597.a, A131060, A131060.P6336280471409396356.a, A131065, A131065.P14918655097173088384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-! ## A131067.P17340467737411208902

`A131063(n)+A131065(n)-A131061(n)`
-/

namespace A131067.P17340467737411208902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n + (A131065 n - A131061 n)

end

end A131067.P17340467737411208902

namespace A131067

/-- `A131063(n)+A131065(n)-A131061(n)` -/
def P17340467737411208902.Spec : Prop :=
  ∀ n, P17340467737411208902.a n = A131067 n

theorem P17340467737411208902.correct : P17340467737411208902.Spec := by
  intro n
  simp only [A131067, Nat.add_sub_cancel, A131067.P17340467737411208902.a, A131067.P17085963103663265053.a, A131061, A131061.P3587332916456542118.a, A131063, A131063.P365354353460309481.a, A131065, A131065.P14918655097173088384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131067

/-!
# A131068: Binomial transform of [1, 1, 7, 7, 7, ...].

The programs for A131068, the canonical program `A131068.P10384673899537543651` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131068 has offset 0).

The definition of A131068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131068.P12769991093274855510

`ogf((1-2x+7x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A131068.P12769991093274855510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 7] [1, -4, 5, -2] n

end

end A131068.P12769991093274855510

namespace A131068

/-- `ogf((1-2x+7x^2)/(1-4x+5x^2-2x^3))` -/
def P12769991093274855510.Spec : Prop :=
  ∀ n, P12769991093274855510.a n = A131068 n

end A131068

/-! ## A131068.P10384673899537543651

`7*2^n-6*(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131068

/-- `7*2^n-6*(n+1)` -/
def P10384673899537543651.Spec : Prop :=
  ∀ n, P10384673899537543651.a n = A131068 n

theorem P10384673899537543651.correct : P10384673899537543651.Spec := by
  intro n
  simp only [A131068]

end A131068

/-! ## A131068.P14723916133189323125

`∑[ogf((1-2x+7x^2)/(1-3x+2x^2))]`
-/

namespace A131068.P14723916133189323125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 7] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131068.P14723916133189323125

namespace A131068

/-- `∑[ogf((1-2x+7x^2)/(1-3x+2x^2))]` -/
def P14723916133189323125.Spec : Prop :=
  ∀ n, P14723916133189323125.a n = A131068 n

end A131068

/-! ## A131068.P10699313575800876855

`∑[2*(a(n-1)+3)]` with `a(0)=1, a(1)=1`
-/

namespace A131068.P10699313575800876855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131068.P10699313575800876855

namespace A131068

/-- `∑[2*(a(n-1)+3)]` -/
def P10699313575800876855.Spec : Prop :=
  ∀ n, (P10699313575800876855.a n : ℤ) = A131068 n

end A131068

/-! ## A131068.P1610307311082993658

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=7`
-/

namespace A131068.P1610307311082993658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 7] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131068.P1610307311082993658

namespace A131068

/-- `∑[∑[2*a(n-1)]]` -/
def P1610307311082993658.Spec : Prop :=
  ∀ n, (P1610307311082993658.a n : ℤ) = A131068 n

end A131068

/-! ## A131068.P3013266730829657234

`2*(a(n-1)+3*(n-1))` with `a(0)=1`
-/

namespace A131068.P3013266730829657234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 3 * ((n : ℤ) - 1))

end

end A131068.P3013266730829657234

namespace A131068

/-- `2*(a(n-1)+3*(n-1))` -/
def P3013266730829657234.Spec : Prop :=
  ∀ n, P3013266730829657234.a n = A131068 n

theorem P3013266730829657234.correct : P3013266730829657234.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131068, Nat.add_sub_cancel, A131068.P3013266730829657234.a, A131068.P10384673899537543651.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131068, Nat.add_sub_cancel, A131068.P3013266730829657234.a, A131068.P10384673899537543651.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131068

/-! ## A131068.P7367026487430993550

`2*(3*n-(3-a(n-1)))` with `a(0)=1`
-/

namespace A131068.P7367026487430993550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((3 * n : ℤ) - (3 - a (n - 1)))

end

end A131068.P7367026487430993550

namespace A131068

/-- `2*(3*n-(3-a(n-1)))` -/
def P7367026487430993550.Spec : Prop :=
  ∀ n, P7367026487430993550.a n = A131068 n

theorem P7367026487430993550.correct : P7367026487430993550.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131068, Nat.add_sub_cancel, A131068.P7367026487430993550.a, A131068.P10384673899537543651.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131068, Nat.add_sub_cancel, A131068.P7367026487430993550.a, A131068.P10384673899537543651.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131068

/-! ## A131068.P12057386624772850024

`∑[a(n-1)+a(n-1)+6]` with `a(0)=1, a(1)=1`
-/

namespace A131068.P12057386624772850024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131068.P12057386624772850024

namespace A131068

/-- `∑[a(n-1)+a(n-1)+6]` -/
def P12057386624772850024.Spec : Prop :=
  ∀ n, (P12057386624772850024.a n : ℤ) = A131068 n

end A131068

/-! ## A131068.P13731117654246009516

`∑[7*(A011782(n)-1)+1]`
-/

namespace A131068.P13731117654246009516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A011782 n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131068.P13731117654246009516

namespace A131068

/-- `∑[7*(A011782(n)-1)+1]` -/
def P13731117654246009516.Spec : Prop :=
  ∀ n, P13731117654246009516.a n = A131068 n

end A131068

/-!
# A131069: Numbers n such that n = sum_digits(a)^sum_digits(b) = a+b, with a and b positive integers.

The programs for A131069, there is no canonical definition to state claims against.
-/

/-! ## A131069.P1369078957599659886

`record[A171941(n+1)^A054845(n)]`
-/

namespace A131069.P1369078957599659886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171941 (n + 1) : ℚ) ^ (A054845 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131069.P1369078957599659886

/-! ## A131069.P10283938803377560631

`∩[A369566(n+1), A380834(n+1)]`
-/

namespace A131069.P10283938803377560631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131069.P10283938803377560631

/-!
# A131072: Numbers m such that A081211(m) <> A081213(m).

The programs for A131072, there is no canonical definition to state claims against.
-/

/-! ## A131072.P2348042369733105542

`record[lcm(84, A179686(3*(n+1)))]`
-/

namespace A131072.P2348042369733105542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 84 (A179686 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131072.P2348042369733105542

/-!
# A131073: a(1)=2. a(n) = a(n-1) + (number of terms, from among terms a(1) through a(n-1), which are prime).

The programs for A131073, there is no canonical definition to state claims against.
-/

/-! ## A131073.P17665276526762197946

`∑[∑[A010051(A279995(n))]+1]+1`
-/

namespace A131073.P17665276526762197946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A279995 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A131073.P17665276526762197946

/-!
# A131074: Triangular array T read by rows: T(j,1) = 1 for ((j-1) mod 8) < 4, else 0; T(j,k) = T(j-1,k-1) + T(j,k-1) for 2 <= k <= j.

The programs for A131074, there is no canonical definition to state claims against.
-/

/-! ## A131074.P2761269184939615319

`A059268(n)-A060576(C(n, ∑{digits}[n, #]))`
-/

namespace A131074.P2761269184939615319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A060576 (Nat.choose n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A131074.P2761269184939615319

/-! ## A131074.P8637320058582685947

`A059268(n)-A369935(C(n, ∑{digits}[n, #]))`
-/

namespace A131074.P8637320058582685947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A369935 (Nat.choose n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A131074.P8637320058582685947

/-! ## A131074.P8116128931701825057

`A059268(n)+A057428(A185035(n))`
-/

namespace A131074.P8116128931701825057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A057428 (A185035 n).toNat

end

end A131074.P8116128931701825057

/-! ## A131074.P2690821945641556843

`A059268(n)+A057428(A185235(n))`
-/

namespace A131074.P2690821945641556843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A057428 (A185235 n).toNat

end

end A131074.P2690821945641556843

/-!
# A131075: First subdiagonal of triangular array T: T(j,1) = 1 for ((j-1) mod 8) < 4, else 0; T(j,k) = T(j-1,k-1) + T(j,k-1) for 2 <= k <= j.

The programs for A131075, the canonical program `A131075.P14388042465355864744` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131075 has offset 1).

The definition of A131075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131075.P14388042465355864744

`ogf((1-4x+6x^2-5x^3+3x^4)/(1-6x+14x^2-16x^3+10x^4-4x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131075

/-- `ogf((1-4x+6x^2-5x^3+3x^4)/(1-6x+14x^2-16x^3+10x^4-4x^5))` -/
def P14388042465355864744.Spec : Prop :=
  ∀ n, P14388042465355864744.a n = A131075 (n + 1)

theorem P14388042465355864744.correct : P14388042465355864744.Spec := by
  intro n
  simp only [A131075, Nat.add_sub_cancel]

end A131075

/-! ## A131075.P7164680010094258311

`A129961(n+1)-A099589(n)`
-/

namespace A131075.P7164680010094258311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (n + 1) - A099589 n

end

end A131075.P7164680010094258311

namespace A131075

/-- `A129961(n+1)-A099589(n)` -/
def P7164680010094258311.Spec : Prop :=
  ∀ n, P7164680010094258311.a n = A131075 (n + 1)

end A131075

/-! ## A131075.P16680063159066147142

`record[A129961(A324347(n))]-A099589(n)`
-/

namespace A131075.P16680063159066147142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A099589 n

end

end A131075.P16680063159066147142

namespace A131075

/-- `record[A129961(A324347(n))]-A099589(n)` -/
def P16680063159066147142.Spec : Prop :=
  ∀ n, P16680063159066147142.a n = A131075 (n + 1)

end A131075

/-! ## A131075.P10688588374012049310

`Δ[A129961(n+1)]`
-/

namespace A131075.P10688588374012049310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131075.P10688588374012049310

namespace A131075

/-- `Δ[A129961(n+1)]` -/
def P10688588374012049310.Spec : Prop :=
  ∀ n, P10688588374012049310.a n = A131075 (n + 1)

end A131075

/-! ## A131075.P2495289637383587341

`abs(Δ[A129961(A008619(2*n))])`
-/

namespace A131075.P2495289637383587341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A131075.P2495289637383587341

namespace A131075

/-- `abs(Δ[A129961(A008619(2*n))])` -/
def P2495289637383587341.Spec : Prop :=
  ∀ n, P2495289637383587341.a n = A131075 (n + 1)

end A131075

/-! ## A131075.P2002823218498219620

`A129961(n+2)-A129961(n+1)`
-/

namespace A131075.P2002823218498219620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (n + 2) - A129961 (n + 1)

end

end A131075.P2002823218498219620

namespace A131075

/-- `A129961(n+2)-A129961(n+1)` -/
def P2002823218498219620.Spec : Prop :=
  ∀ n, P2002823218498219620.a n = A131075 (n + 1)

end A131075

/-! ## A131075.P10612525299402888075

`6*a(n-1)-14*a(n-2)+16*a(n-3)-10*a(n-4)+4*a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=11`
-/

namespace A131075.P10612525299402888075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7, 11] fun n a =>
  6 * a (n - 1) - 14 * a (n - 2) + 16 * a (n - 3) - 10 * a (n - 4) + 4 * a (n - 5)

end

end A131075.P10612525299402888075

namespace A131075

/-- `6*a(n-1)-14*a(n-2)+16*a(n-3)-10*a(n-4)+4*a(n-5)` -/
def P10612525299402888075.Spec : Prop :=
  ∀ n, P10612525299402888075.a n = A131075 (n + 1)

end A131075

/-! ## A131075.P7348349893370349145

`Δ[record[A129961(A137734(n))]]`
-/

namespace A131075.P7348349893370349145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131075.P7348349893370349145

namespace A131075

/-- `Δ[record[A129961(A137734(n))]]` -/
def P7348349893370349145.Spec : Prop :=
  ∀ n, P7348349893370349145.a n = A131075 (n + 1)

end A131075

/-!
# A131076: Row sums of triangular array T: T(j,1) = 1 for ((j-1) mod 8) < 4, else 0; T(j,k) = T(j-1,k-1) + T(j,k-1) for 2 <= k <= j.

The programs for A131076, the canonical program `A131076.P432493261031293504` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131076 has offset 1).

The definition of A131076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131076.P432493261031293504

`ogf((1-4x+6x^2-4x^3-2x^4+10x^5-10x^6+5x^7-x^8)/(1-7x+20x^2-30x^3+27x^4-21x^5+24x^6-30x^7+26x^8-14x^9+4x^10))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131076

/-- `ogf((1-4x+6x^2-4x^3-2x^4+10x^5-10x^6+5x^7-x^8)/(1-7x+20x^2-30x^3+27x^4-21x^5+24x^6-30x^7+26x^8-14x^9+4x^10))` -/
def P432493261031293504.Spec : Prop :=
  ∀ n, P432493261031293504.a n = A131076 (n + 1)

theorem P432493261031293504.correct : P432493261031293504.Spec := by
  intro n
  simp only [A131076, Nat.add_sub_cancel]

end A131076

/-! ## A131076.P9798162400045555933

`A129961(n+2)-A131078(n+2)`
-/

namespace A131076.P9798162400045555933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (n + 2) - A131078 (n + 2)

end

end A131076.P9798162400045555933

namespace A131076

/-- `A129961(n+2)-A131078(n+2)` -/
def P9798162400045555933.Spec : Prop :=
  ∀ n, P9798162400045555933.a n = A131076 (n + 1)

end A131076

/-! ## A131076.P96794668587665166

`A131078(n+6)+∑[A131075(n+1)]`
-/

namespace A131076.P96794668587665166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131078 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131076.P96794668587665166

namespace A131076

/-- `A131078(n+6)+∑[A131075(n+1)]` -/
def P96794668587665166.Spec : Prop :=
  ∀ n, P96794668587665166.a n = A131076 (n + 1)

end A131076

/-! ## A131076.P6349623922265871233

`A309776(2*A224520(n+1))`
-/

namespace A131076.P6349623922265871233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309776 (2 * A224520 (n + 1)).toNat

end

end A131076.P6349623922265871233

namespace A131076

/-- `A309776(2*A224520(n+1))` -/
def P6349623922265871233.Spec : Prop :=
  ∀ n, P6349623922265871233.a n = A131076 (n + 1)

end A131076

/-! ## A131076.P13331453426724735247

`A003056(A101176(n+1)*A338463(3*n+2))`
-/

namespace A131076.P13331453426724735247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A101176 (n + 1) * A338463 (3 * n + 2)).toNat

end

end A131076.P13331453426724735247

namespace A131076

/-- `A003056(A101176(n+1)*A338463(3*n+2))` -/
def P13331453426724735247.Spec : Prop :=
  ∀ n, P13331453426724735247.a n = A131076 (n + 1)

end A131076

/-!
# A131077: Antidiagonal sums of triangular array T: T(j,1) = 1 for ((j-1) mod 8) < 4, else 0; T(j,k) = T(j-1,k-1) + T(j,k-1) for 2 <= k <= j.

The programs for A131077, the canonical program `A131077.P5114648461029574920` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131077 has offset 1).

The definition of A131077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131077.P5114648461029574920

`ogf((1-4x^2+6x^4-x^5-4x^6+3x^7+x^8-3x^9+x^10+2x^11-x^12)/(1-x-6x^2+6x^3+15x^4-15x^5-22x^6+22x^7+24x^8-24x^9-20x^10+20x^11+10x^12-10x^13-4x^14+4x^15))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131077

/-- `ogf((1-4x^2+6x^4-x^5-4x^6+3x^7+x^8-3x^9+x^10+2x^11-x^12)/(1-x-6x^2+6x^3+15x^4-15x^5-22x^6+22x^7+24x^8-24x^9-20x^10+20x^11+10x^12-10x^13-4x^14+4x^15))` -/
def P5114648461029574920.Spec : Prop :=
  ∀ n, P5114648461029574920.a n = A131077 (n + 1)

theorem P5114648461029574920.correct : P5114648461029574920.Spec := by
  intro n
  simp only [A131077, Nat.add_sub_cancel]

end A131077

/-!
# A131078: Periodic sequence (1, 1, 1, 1, 0, 0, 0, 0).

The programs for A131078, the canonical program `A131078.P8598762168063627519` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131078 has offset 1).

The definition of A131078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131078.P8598762168063627519

`C(n+4, 4)%2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131078

/-- `C(n+4, 4)%2` -/
def P8598762168063627519.Spec : Prop :=
  ∀ n, (P8598762168063627519.a n : ℤ) = A131078 (n + 1)

theorem P8598762168063627519.correct : P8598762168063627519.Spec := by
  intro n
  simp only [A131078, Nat.add_sub_cancel]

end A131078

/-!
# A131079: Periodic sequence (2, 2, 2, 1, 0, 0, 0, 1).

The programs for A131079, the canonical program `A131079.P9730129472941885665` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131079 has offset 1).

The definition of A131079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131079.P9730129472941885665

`a(n-8)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=1, a(4)=0, a(5)=0, a(6)=0, a(7)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131079

/-- `a(n-8)` -/
def P9730129472941885665.Spec : Prop :=
  ∀ n, (P9730129472941885665.a n : ℤ) = A131079 (n + 1)

theorem P9730129472941885665.correct : P9730129472941885665.Spec := by
  intro n
  simp only [A131079, Nat.add_sub_cancel]

end A131079

/-!
# A131080: Periodic sequence (4, 4, 3, 1, 0, 0, 1, 3).

The programs for A131080, the canonical program `A131080.P12760882231748931568` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131080 has offset 1).

The definition of A131080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131080.P12760882231748931568

`a(n-8)` with `a(0)=4, a(1)=4, a(2)=3, a(3)=1, a(4)=0, a(5)=0, a(6)=1, a(7)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131080

/-- `a(n-8)` -/
def P12760882231748931568.Spec : Prop :=
  ∀ n, (P12760882231748931568.a n : ℤ) = A131080 (n + 1)

theorem P12760882231748931568.correct : P12760882231748931568.Spec := by
  intro n
  simp only [A131080, Nat.add_sub_cancel]

end A131080

/-!
# A131081: Periodic sequence (8, 7, 4, 1, 0, 1, 4, 7).

The programs for A131081, the canonical program `A131081.P2745143423100215412` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131081 has offset 1).

The definition of A131081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131081.P2745143423100215412

`a(n-8)` with `a(0)=8, a(1)=7, a(2)=4, a(3)=1, a(4)=0, a(5)=1, a(6)=4, a(7)=7, a(8)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131081

/-- `a(n-8)` -/
def P2745143423100215412.Spec : Prop :=
  ∀ n, (P2745143423100215412.a n : ℤ) = A131081 (n + 1)

theorem P2745143423100215412.correct : P2745143423100215412.Spec := by
  intro n
  simp only [A131081, Nat.add_sub_cancel]

end A131081

/-!
# A131082: Periodic sequence (15, 11, 5, 1, 1, 5, 11, 15).

The programs for A131082, the canonical program `A131082.P3796841815362192623` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131082 has offset 1).

The definition of A131082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131082.P3796841815362192623

`a(n-8)` with `a(0)=15, a(1)=11, a(2)=5, a(3)=1, a(4)=1, a(5)=5, a(6)=11, a(7)=15`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131082

/-- `a(n-8)` -/
def P3796841815362192623.Spec : Prop :=
  ∀ n, (P3796841815362192623.a n : ℤ) = A131082 (n + 1)

theorem P3796841815362192623.correct : P3796841815362192623.Spec := by
  intro n
  simp only [A131082, Nat.add_sub_cancel]

end A131082

/-!
# A131083: Periodic sequence (26, 16, 6, 2, 6, 16, 26, 30).

The programs for A131083, the canonical program `A131083.P11674180095698508833` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131083 has offset 1).

The definition of A131083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131083.P11674180095698508833

`a(n-8)` with `a(0)=26, a(1)=16, a(2)=6, a(3)=2, a(4)=6, a(5)=16, a(6)=26, a(7)=30`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131083

/-- `a(n-8)` -/
def P11674180095698508833.Spec : Prop :=
  ∀ n, (P11674180095698508833.a n : ℤ) = A131083 (n + 1)

theorem P11674180095698508833.correct : P11674180095698508833.Spec := by
  intro n
  simp only [A131083, Nat.add_sub_cancel]

end A131083

/-!
# A131084: A129686 * A007318. Riordan triangle (1+x, x/(1-x)).

The programs for A131084, the canonical program `A131084.P7589424651343713133` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131084 has offset 1).

The definition of A131084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131084.P17517828004790508769

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A131084.P17517828004790508769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A131084.P17517828004790508769

namespace A131084

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P17517828004790508769.Spec : Prop :=
  ∀ n, (P17517828004790508769.a n : ℤ) = A131084 (n + 1)

end A131084

/-! ## A131084.P7589424651343713133

`A029653(n-1)-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131084

/-- `A029653(n-1)-a(n-1)` -/
def P7589424651343713133.Spec : Prop :=
  ∀ n, P7589424651343713133.a n = A131084 (n + 1)

theorem P7589424651343713133.correct : P7589424651343713133.Spec := by
  intro n
  simp only [A131084, Nat.add_sub_cancel]

end A131084

/-! ## A131084.P17262774936047836100

`A028326(n)-A129687(n)`
-/

namespace A131084.P17262774936047836100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A129687 n

end

end A131084.P17262774936047836100

namespace A131084

/-- `A028326(n)-A129687(n)` -/
def P17262774936047836100.Spec : Prop :=
  ∀ n, P17262774936047836100.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P16970464923248475472

`A109128(n)+1-A129687(n)`
-/

namespace A131084.P16970464923248475472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A129687 n)

end

end A131084.P16970464923248475472

namespace A131084

/-- `A109128(n)+1-A129687(n)` -/
def P16970464923248475472.Spec : Prop :=
  ∀ n, P16970464923248475472.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P13601178346483516534

`A097805(n)+A323231(n)-1`
-/

namespace A131084.P13601178346483516534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (A323231 n - 1)

end

end A131084.P13601178346483516534

namespace A131084

/-- `A097805(n)+A323231(n)-1` -/
def P13601178346483516534.Spec : Prop :=
  ∀ n, P13601178346483516534.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P5427624444664188342

`2*A007318(n)-A129687(n)`
-/

namespace A131084.P5427624444664188342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A129687 n

end

end A131084.P5427624444664188342

namespace A131084

/-- `2*A007318(n)-A129687(n)` -/
def P5427624444664188342.Spec : Prop :=
  ∀ n, P5427624444664188342.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P5735230402309486424

`2*A097805(n)-A159854(n)`
-/

namespace A131084.P5735230402309486424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097805 n - A159854 n

end

end A131084.P5735230402309486424

namespace A131084

/-- `2*A097805(n)-A159854(n)` -/
def P5735230402309486424.Spec : Prop :=
  ∀ n, P5735230402309486424.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P12443507734929827997

`(A095660(n)-A159853(n))/2`
-/

namespace A131084.P12443507734929827997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095660 n - A159853 n : ℚ) / 2

end

end A131084.P12443507734929827997

namespace A131084

/-- `(A095660(n)-A159853(n))/2` -/
def P12443507734929827997.Spec : Prop :=
  ∀ n, P12443507734929827997.a n = (A131084 (n + 1) : ℚ)

end A131084

/-! ## A131084.P15679702796080100267

`A124725(n)+A131085(n)-A129687(n)`
-/

namespace A131084.P15679702796080100267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124725 n + (A131085 n - A129687 n)

end

end A131084.P15679702796080100267

namespace A131084

/-- `A124725(n)+A131085(n)-A129687(n)` -/
def P15679702796080100267.Spec : Prop :=
  ∀ n, P15679702796080100267.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P12104868617175391489

`A007318(n+1)+A007318(n)-A028262(n+1)`
-/

namespace A131084.P12104868617175391489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A007318 n - A028262 (n + 1))

end

end A131084.P12104868617175391489

namespace A131084

/-- `A007318(n+1)+A007318(n)-A028262(n+1)` -/
def P12104868617175391489.Spec : Prop :=
  ∀ n, P12104868617175391489.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P8465351283072651032

`A072405(n)-Δ[A323211(n)]`
-/

namespace A131084.P8465351283072651032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n - (f1 (n + 1) - f1 n)

end

end A131084.P8465351283072651032

namespace A131084

/-- `A072405(n)-Δ[A323211(n)]` -/
def P8465351283072651032.Spec : Prop :=
  ∀ n, P8465351283072651032.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P4144218908209215365

`A007318(n)-A144225(n+2)`
-/

namespace A131084.P4144218908209215365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A144225 (n + 2)

end

end A131084.P4144218908209215365

namespace A131084

/-- `A007318(n)-A144225(n+2)` -/
def P4144218908209215365.Spec : Prop :=
  ∀ n, P4144218908209215365.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P9746105046053738711

`A072405(n+1)-Δ[A007318(n)]`
-/

namespace A131084.P9746105046053738711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (n + 1) - (f1 (n + 1) - f1 n)

end

end A131084.P9746105046053738711

namespace A131084

/-- `A072405(n+1)-Δ[A007318(n)]` -/
def P9746105046053738711.Spec : Prop :=
  ∀ n, P9746105046053738711.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P11299937977885354068

`2+A014473(n)-A323211(n+1)`
-/

namespace A131084.P11299937977885354068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + (A014473 n - A323211 (n + 1))

end

end A131084.P11299937977885354068

namespace A131084

/-- `2+A014473(n)-A323211(n+1)` -/
def P11299937977885354068.Spec : Prop :=
  ∀ n, P11299937977885354068.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P15687956449213068354

`A072405(n)-Δ[A007318(n)-A072405(n)]`
-/

namespace A131084.P15687956449213068354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A072405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n - (f1 (n + 1) - f1 n)

end

end A131084.P15687956449213068354

namespace A131084

/-- `A072405(n)-Δ[A007318(n)-A072405(n)]` -/
def P15687956449213068354.Spec : Prop :=
  ∀ n, P15687956449213068354.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P13035585694335287054

`A072405(n+1)+A007318(n)-A007318(n+1)`
-/

namespace A131084.P13035585694335287054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (n + 1) + (A007318 n - A007318 (n + 1))

end

end A131084.P13035585694335287054

namespace A131084

/-- `A072405(n+1)+A007318(n)-A007318(n+1)` -/
def P13035585694335287054.Spec : Prop :=
  ∀ n, P13035585694335287054.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P6747334625377021070

`A072405(n+1)+A029653(n)-A029635(n+1)`
-/

namespace A131084.P6747334625377021070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (n + 1) + (A029653 n - A029635 (n + 1))

end

end A131084.P6747334625377021070

namespace A131084

/-- `A072405(n+1)+A029653(n)-A029635(n+1)` -/
def P6747334625377021070.Spec : Prop :=
  ∀ n, P6747334625377021070.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P11558607018810371012

`A072405(n+1)+A029638(n+2)-A029656(n+2)`
-/

namespace A131084.P11558607018810371012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (n + 1) + (A029638 (n + 2) - A029656 (n + 2))

end

end A131084.P11558607018810371012

namespace A131084

/-- `A072405(n+1)+A029638(n+2)-A029656(n+2)` -/
def P11558607018810371012.Spec : Prop :=
  ∀ n, P11558607018810371012.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P9406993935653460319

`A323231(A007401(n+1))+A323231(n)-2`
-/

namespace A131084.P9406993935653460319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323231 (A007401 (n + 1)).toNat + (A323231 n - 2)

end

end A131084.P9406993935653460319

namespace A131084

/-- `A323231(A007401(n+1))+A323231(n)-2` -/
def P9406993935653460319.Spec : Prop :=
  ∀ n, P9406993935653460319.a n = A131084 (n + 1)

end A131084

/-! ## A131084.P14028069934791971683

`2*A159854(A014132(n+1))-A159854(n)`
-/

namespace A131084.P14028069934791971683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159854 (A014132 (n + 1)).toNat - A159854 n

end

end A131084.P14028069934791971683

namespace A131084

/-- `2*A159854(A014132(n+1))-A159854(n)` -/
def P14028069934791971683.Spec : Prop :=
  ∀ n, P14028069934791971683.a n = A131084 (n + 1)

end A131084

/-!
# A131085: Triangle T(n,k) (n>=0, 0<=k<=n-1) read by rows, A007318 * A129686.

The programs for A131085, the canonical program `A131085.P15158434548820626258` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131085 has offset 0).

The definition of A131085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131085.P3635179098314926100

`C(row(n), col(n))-C(row(n), col(n)+2)`
-/

namespace A131085.P3635179098314926100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) - (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + 2) : ℤ)

end

end A131085.P3635179098314926100

namespace A131085

/-- `C(row(n), col(n))-C(row(n), col(n)+2)` -/
def P3635179098314926100.Spec : Prop :=
  ∀ n, P3635179098314926100.a n = A131085 n

end A131085

/-! ## A131085.P11781566670823558954

`A028326(n)-A124725(n)`
-/

namespace A131085.P11781566670823558954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A124725 n

end

end A131085.P11781566670823558954

namespace A131085

/-- `A028326(n)-A124725(n)` -/
def P11781566670823558954.Spec : Prop :=
  ∀ n, P11781566670823558954.a n = A131085 n

end A131085

/-! ## A131085.P6470157822614692545

`A110813(n)-A264357(n+1)`
-/

namespace A131085.P6470157822614692545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n - A264357 (n + 1)

end

end A131085.P6470157822614692545

namespace A131085

/-- `A110813(n)-A264357(n+1)` -/
def P6470157822614692545.Spec : Prop :=
  ∀ n, P6470157822614692545.a n = A131085 n

theorem P6470157822614692545.correct : P6470157822614692545.Spec := by
  intro n
  simp only [A131085, Nat.add_sub_cancel, A131085.P6470157822614692545.a, A131085.P15158434548820626258.a, A104712, A104712.P8393777965278521263.a, A110813, A110813.P13168758714149035316.a, A135278, A135278.P15294612270063548765.a, A264357, A264357.P4841253329854367094.a, A014410, A014410.P12420516935091573692.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131085

/-! ## A131085.P15442052543477869016

`2*A007318(n)-A124725(n)`
-/

namespace A131085.P15442052543477869016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A124725 n

end

end A131085.P15442052543477869016

namespace A131085

/-- `2*A007318(n)-A124725(n)` -/
def P15442052543477869016.Spec : Prop :=
  ∀ n, P15442052543477869016.a n = A131085 n

end A131085

/-! ## A131085.P17998639443364664615

`2*A110813(n)-A135855(n)`
-/

namespace A131085.P17998639443364664615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110813 n - A135855 n

end

end A131085.P17998639443364664615

namespace A131085

/-- `2*A110813(n)-A135855(n)` -/
def P17998639443364664615.Spec : Prop :=
  ∀ n, P17998639443364664615.a n = A131085 n

theorem P17998639443364664615.correct : P17998639443364664615.Spec := by
  intro n
  simp only [A131085, Nat.add_sub_cancel, A131085.P17998639443364664615.a, A131085.P15158434548820626258.a, A104712, A104712.P8393777965278521263.a, A110813, A110813.P13168758714149035316.a, A135278, A135278.P15294612270063548765.a, A135855, A135855.P16850139679087986239.a, A014410, A014410.P12420516935091573692.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131085

/-! ## A131085.P9728170693286453511

`A135855(n)-2*A264357(n+1)`
-/

namespace A131085.P9728170693286453511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135855 n - 2 * A264357 (n + 1)

end

end A131085.P9728170693286453511

namespace A131085

/-- `A135855(n)-2*A264357(n+1)` -/
def P9728170693286453511.Spec : Prop :=
  ∀ n, P9728170693286453511.a n = A131085 n

theorem P9728170693286453511.correct : P9728170693286453511.Spec := by
  intro n
  simp only [A131085, Nat.add_sub_cancel, A131085.P9728170693286453511.a, A131085.P15158434548820626258.a, A104712, A104712.P8393777965278521263.a, A135278, A135278.P15294612270063548765.a, A135855, A135855.P16850139679087986239.a, A264357, A264357.P4841253329854367094.a, A014410, A014410.P12420516935091573692.a, A110813, A110813.P13168758714149035316.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131085

/-! ## A131085.P15158434548820626258

`2*A135278(n)-A104712(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A131085

/-- `2*A135278(n)-A104712(n+2)` -/
def P15158434548820626258.Spec : Prop :=
  ∀ n, P15158434548820626258.a n = A131085 n

theorem P15158434548820626258.correct : P15158434548820626258.Spec := by
  intro n
  simp only [A131085]

end A131085

/-! ## A131085.P15050129348214912354

`2*A104712(n+2)-A125232(n+1)`
-/

namespace A131085.P15050129348214912354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104712 (n + 2) - A125232 (n + 1)

end

end A131085.P15050129348214912354

namespace A131085

/-- `2*A104712(n+2)-A125232(n+1)` -/
def P15050129348214912354.Spec : Prop :=
  ∀ n, P15050129348214912354.a n = A131085 n

end A131085

/-! ## A131085.P5151715688132647763

`A074909(n+1)+A135278(n)-A104712(n+2)`
-/

namespace A131085.P5151715688132647763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + (A135278 n - A104712 (n + 2))

end

end A131085.P5151715688132647763

namespace A131085

/-- `A074909(n+1)+A135278(n)-A104712(n+2)` -/
def P5151715688132647763.Spec : Prop :=
  ∀ n, P5151715688132647763.a n = A131085 n

end A131085

/-! ## A131085.P8453525529437337328

`A007318(n+1)+A007318(n)-A184049(n+1)`
-/

namespace A131085.P8453525529437337328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A007318 n - A184049 (n + 1))

end

end A131085.P8453525529437337328

namespace A131085

/-- `A007318(n+1)+A007318(n)-A184049(n+1)` -/
def P8453525529437337328.Spec : Prop :=
  ∀ n, P8453525529437337328.a n = A131085 n

end A131085

/-! ## A131085.P10845151591363606001

`A302764(A038722(n+1))`
-/

namespace A131085.P10845151591363606001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302764 (A038722 (n + 1)).toNat

end

end A131085.P10845151591363606001

namespace A131085

/-- `A302764(A038722(n+1))` -/
def P10845151591363606001.Spec : Prop :=
  ∀ n, P10845151591363606001.a n = A131085 n

end A131085

/-! ## A131085.P1093166692352183376

`A156644(comp[∑[n]])`
-/

namespace A131085.P1093166692352183376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A131085.P1093166692352183376

namespace A131085

/-- `A156644(comp[∑[n]])` -/
def P1093166692352183376.Spec : Prop :=
  ∀ n, P1093166692352183376.a n = A131085 n

end A131085

/-! ## A131085.P11342055995725333186

`2*A135278(n)-A135278(A014132(n+1))`
-/

namespace A131085.P11342055995725333186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135278 n - A135278 (A014132 (n + 1)).toNat

end

end A131085.P11342055995725333186

namespace A131085

/-- `2*A135278(n)-A135278(A014132(n+1))` -/
def P11342055995725333186.Spec : Prop :=
  ∀ n, P11342055995725333186.a n = A131085 n

end A131085

/-! ## A131085.P17231016075750993875

`A080233(A099375(n)+n)`
-/

namespace A131085.P17231016075750993875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (A099375 n + (n : ℤ)).toNat

end

end A131085.P17231016075750993875

namespace A131085

/-- `A080233(A099375(n)+n)` -/
def P17231016075750993875.Spec : Prop :=
  ∀ n, P17231016075750993875.a n = A131085 n

end A131085

/-! ## A131085.P7698775990392643897

`A112467(lt[1, A002262(n)])`
-/

namespace A131085.P7698775990392643897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A131085.P7698775990392643897

namespace A131085

/-- `A112467(lt[1, A002262(n)])` -/
def P7698775990392643897.Spec : Prop :=
  ∀ n, P7698775990392643897.a n = A131085 n

end A131085

/-! ## A131085.P14923590208801706472

`A008482(A080036(comp[∑[n]]))`
-/

namespace A131085.P14923590208801706472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (A080036 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A131085.P14923590208801706472

namespace A131085

/-- `A008482(A080036(comp[∑[n]]))` -/
def P14923590208801706472.Spec : Prop :=
  ∀ n, P14923590208801706472.a n = A131085 n

end A131085

/-! ## A131085.P14762803443216923471

`A112467(lt[2, A002260(n+1)])`
-/

namespace A131085.P14762803443216923471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A131085.P14762803443216923471

namespace A131085

/-- `A112467(lt[2, A002260(n+1)])` -/
def P14762803443216923471.Spec : Prop :=
  ∀ n, P14762803443216923471.a n = A131085 n

end A131085

/-! ## A131085.P2056793266986850329

`A112467(lt[1, A025581(n)]+2)`
-/

namespace A131085.P2056793266986850329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A131085.P2056793266986850329

namespace A131085

/-- `A112467(lt[1, A025581(n)]+2)` -/
def P2056793266986850329.Spec : Prop :=
  ∀ n, P2056793266986850329.a n = A131085 n

end A131085

/-! ## A131085.P15978244987215159161

`A112467(lt[2, A028326(n)]+1)`
-/

namespace A131085.P15978244987215159161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A131085.P15978244987215159161

namespace A131085

/-- `A112467(lt[2, A028326(n)]+1)` -/
def P15978244987215159161.Spec : Prop :=
  ∀ n, P15978244987215159161.a n = A131085 n

end A131085

/-! ## A131085.P10767814210621935750

`A112467(comp[eq[1, A007318(n)]]+1)`
-/

namespace A131085.P10767814210621935750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A131085.P10767814210621935750

namespace A131085

/-- `A112467(comp[eq[1, A007318(n)]]+1)` -/
def P10767814210621935750.Spec : Prop :=
  ∀ n, P10767814210621935750.a n = A131085 n

end A131085

/-!
# A131086: Triangle read by rows: T(n,k) = 2*binomial(n,k) - (-1)^(n-k) (0 <= k <= n).

The programs for A131086, the canonical program `A131086.P2081004090899609571` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131086 has offset 0).

The definition of A131086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131086.P2081004090899609571

`2*C(row(n), col(n))-(-1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131086

/-- `2*C(row(n), col(n))-(-1)^(row(n)-col(n))` -/
def P2081004090899609571.Spec : Prop :=
  ∀ n, P2081004090899609571.a n = (A131086 n : ℚ)

end A131086

/-! ## A131086.P8177239051426496234

`or(1, A131087(n))`
-/

namespace A131086.P8177239051426496234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A131087 n)

end

end A131086.P8177239051426496234

namespace A131086

/-- `or(1, A131087(n))` -/
def P8177239051426496234.Spec : Prop :=
  ∀ n, P8177239051426496234.a n = A131086 n

end A131086

/-! ## A131086.P8495734156226742770

`2*A134521(n)-1`
-/

namespace A131086.P8495734156226742770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134521 n - 1

end

end A131086.P8495734156226742770

namespace A131086

/-- `2*A134521(n)-1` -/
def P8495734156226742770.Spec : Prop :=
  ∀ n, P8495734156226742770.a n = A131086 n

end A131086

/-! ## A131086.P13862188484608817931

`abs(1-2*A130595(n))`
-/

namespace A131086.P13862188484608817931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A130595 n|

end

end A131086.P13862188484608817931

namespace A131086

/-- `abs(1-2*A130595(n))` -/
def P13862188484608817931.Spec : Prop :=
  ∀ n, P13862188484608817931.a n = A131086 n

end A131086

/-! ## A131086.P11633845912159455864

`A028326(n)-(and(2, comp[∑[n]]+n)-1)`
-/

namespace A131086.P11633845912159455864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1)

end

end A131086.P11633845912159455864

namespace A131086

/-- `A028326(n)-(and(2, comp[∑[n]]+n)-1)` -/
def P11633845912159455864.Spec : Prop :=
  ∀ n, P11633845912159455864.a n = A131086 n

end A131086

/-! ## A131086.P2298228378636175877

`or(1, 2*A007318(n)-comp[∑[4*n]]%2)`
-/

namespace A131086.P2298228378636175877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A007318 n - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ))

end

end A131086.P2298228378636175877

namespace A131086

/-- `or(1, 2*A007318(n)-comp[∑[4*n]]%2)` -/
def P2298228378636175877.Spec : Prop :=
  ∀ n, P2298228378636175877.a n = A131086 n

end A131086

/-! ## A131086.P14806313305104379008

`A028326(n)-A097807(n)`
-/

namespace A131086.P14806313305104379008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A097807 n

end

end A131086.P14806313305104379008

namespace A131086

/-- `A028326(n)-A097807(n)` -/
def P14806313305104379008.Spec : Prop :=
  ∀ n, P14806313305104379008.a n = A131086 n

end A131086

/-! ## A131086.P11791616069606303341

`2*A007318(n)-A097807(n)`
-/

namespace A131086.P11791616069606303341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A097807 n

end

end A131086.P11791616069606303341

namespace A131086

/-- `2*A007318(n)-A097807(n)` -/
def P11791616069606303341.Spec : Prop :=
  ∀ n, P11791616069606303341.a n = A131086 n

end A131086

/-! ## A131086.P12284766644155374299

`A131087(n)+1-A128174(n+1)`
-/

namespace A131086.P12284766644155374299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131087 n + (1 - A128174 (n + 1))

end

end A131086.P12284766644155374299

namespace A131086

/-- `A131087(n)+1-A128174(n+1)` -/
def P12284766644155374299.Spec : Prop :=
  ∀ n, P12284766644155374299.a n = A131086 n

end A131086

/-! ## A131086.P6270046174037280809

`A007318(n)+A131087(n)-A134520(n)`
-/

namespace A131086.P6270046174037280809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131087 n - A134520 n)

end

end A131086.P6270046174037280809

namespace A131086

/-- `A007318(n)+A131087(n)-A134520(n)` -/
def P6270046174037280809.Spec : Prop :=
  ∀ n, P6270046174037280809.a n = A131086 n

end A131086

/-! ## A131086.P16892693323359547008

`A131087(n)+A134521(n)-A007318(n)`
-/

namespace A131086.P16892693323359547008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131087 n + (A134521 n - A007318 n)

end

end A131086.P16892693323359547008

namespace A131086

/-- `A131087(n)+A134521(n)-A007318(n)` -/
def P16892693323359547008.Spec : Prop :=
  ∀ n, P16892693323359547008.a n = A131086 n

end A131086

/-! ## A131086.P6110138285368344774

`A124725(n)+A131085(n)-A097807(n)`
-/

namespace A131086.P6110138285368344774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124725 n + (A131085 n - A097807 n)

end

end A131086.P6110138285368344774

namespace A131086

/-- `A124725(n)+A131085(n)-A097807(n)` -/
def P6110138285368344774.Spec : Prop :=
  ∀ n, P6110138285368344774.a n = A131086 n

end A131086

/-! ## A131086.P9372917354460580620

`A007318(n)+A134521(n)-A128174(n+1)`
-/

namespace A131086.P9372917354460580620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A134521 n - A128174 (n + 1))

end

end A131086.P9372917354460580620

namespace A131086

/-- `A007318(n)+A134521(n)-A128174(n+1)` -/
def P9372917354460580620.Spec : Prop :=
  ∀ n, P9372917354460580620.a n = A131086 n

end A131086

/-! ## A131086.P163076829728481260

`A004273(A134521(n))`
-/

namespace A131086.P163076829728481260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A134521 n).toNat

end

end A131086.P163076829728481260

namespace A131086

/-- `A004273(A134521(n))` -/
def P163076829728481260.Spec : Prop :=
  ∀ n, P163076829728481260.a n = A131086 n

end A131086

/-! ## A131086.P15270337771137577214

`A109613(A131087(n))`
-/

namespace A131086.P15270337771137577214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A131087 n).toNat

end

end A131086.P15270337771137577214

namespace A131086

/-- `A109613(A131087(n))` -/
def P15270337771137577214.Spec : Prop :=
  ∀ n, P15270337771137577214.a n = A131086 n

end A131086

/-! ## A131086.P14715578350280172743

`A131087(n)+A000035(A131087(n)+1)`
-/

namespace A131086.P14715578350280172743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131087 n + A000035 (A131087 n + 1).toNat

end

end A131086.P14715578350280172743

namespace A131086

/-- `A131087(n)+A000035(A131087(n)+1)` -/
def P14715578350280172743.Spec : Prop :=
  ∀ n, P14715578350280172743.a n = A131086 n

end A131086

/-!
# A131087: Triangle read by rows: T(n,k) = 2*binomial(n,k) - (1 + (-1)^(n-k))/2 (0 <= k <= n).

The programs for A131087, the canonical program `A131087.P5842877956970085961` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131087 has offset 0).

The definition of A131087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131087.P5842877956970085961

`2*C(row(n), col(n))-(1+(-1)^(row(n)-col(n)))/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131087

/-- `2*C(row(n), col(n))-(1+(-1)^(row(n)-col(n)))/2` -/
def P5842877956970085961.Spec : Prop :=
  ∀ n, P5842877956970085961.a n = (A131087 n : ℚ)

end A131087

/-! ## A131087.P7761819967548189637

`A028326(n)-comp[∑[4*n]]%2`
-/

namespace A131087.P7761819967548189637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)

end

end A131087.P7761819967548189637

namespace A131087

/-- `A028326(n)-comp[∑[4*n]]%2` -/
def P7761819967548189637.Spec : Prop :=
  ∀ n, P7761819967548189637.a n = A131087 n

end A131087

/-! ## A131087.P14176883628298296566

`2*A007318(n)-(2-gcd(2, comp[∑[4*n]]))`
-/

namespace A131087.P14176883628298296566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ))

end

end A131087.P14176883628298296566

namespace A131087

/-- `2*A007318(n)-(2-gcd(2, comp[∑[4*n]]))` -/
def P14176883628298296566.Spec : Prop :=
  ∀ n, P14176883628298296566.a n = A131087 n

end A131087

/-! ## A131087.P12580406064483941546

`A109128(n)+1-comp[2*(n²+n)]%2`
-/

namespace A131087.P12580406064483941546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + 1 - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)

end

end A131087.P12580406064483941546

namespace A131087

/-- `A109128(n)+1-comp[2*(n²+n)]%2` -/
def P12580406064483941546.Spec : Prop :=
  ∀ n, P12580406064483941546.a n = A131087 n

end A131087

/-! ## A131087.P12220859061553334698

`A134521(n)+A014473(n)`
-/

namespace A131087.P12220859061553334698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134521 n + A014473 n

end

end A131087.P12220859061553334698

namespace A131087

/-- `A134521(n)+A014473(n)` -/
def P12220859061553334698.Spec : Prop :=
  ∀ n, P12220859061553334698.a n = A131087 n

end A131087

/-! ## A131087.P4841670567130623896

`A007318(n)+A134521(n)-1`
-/

namespace A131087.P4841670567130623896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A134521 n - 1)

end

end A131087.P4841670567130623896

namespace A131087

/-- `A007318(n)+A134521(n)-1` -/
def P4841670567130623896.Spec : Prop :=
  ∀ n, P4841670567130623896.a n = A131087 n

end A131087

/-! ## A131087.P917226076007433997

`A028326(n)-A128174(n+1)`
-/

namespace A131087.P917226076007433997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A128174 (n + 1)

end

end A131087.P917226076007433997

namespace A131087

/-- `A028326(n)-A128174(n+1)` -/
def P917226076007433997.Spec : Prop :=
  ∀ n, P917226076007433997.a n = A131087 n

end A131087

/-! ## A131087.P12701684008531641599

`A109128(n)+A051162(n)%2`
-/

namespace A131087.P12701684008531641599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + Int.tmod (A051162 n) 2

end

end A131087.P12701684008531641599

namespace A131087

/-- `A109128(n)+A051162(n)%2` -/
def P12701684008531641599.Spec : Prop :=
  ∀ n, P12701684008531641599.a n = A131087 n

end A131087

/-! ## A131087.P4184011984037853122

`A109128(n)+and(1, A025581(n))`
-/

namespace A131087.P4184011984037853122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + Int.land 1 (A025581 n)

end

end A131087.P4184011984037853122

namespace A131087

/-- `A109128(n)+and(1, A025581(n))` -/
def P4184011984037853122.Spec : Prop :=
  ∀ n, P4184011984037853122.a n = A131087 n

end A131087

/-! ## A131087.P10067660959823886696

`A131406(n+1)+2*A014473(n)`
-/

namespace A131087.P10067660959823886696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131406 (n + 1) + 2 * A014473 n

end

end A131087.P10067660959823886696

namespace A131087

/-- `A131406(n+1)+2*A014473(n)` -/
def P10067660959823886696.Spec : Prop :=
  ∀ n, P10067660959823886696.a n = A131087 n

end A131087

/-! ## A131087.P5395181262497860717

`2*A007318(n)-A128174(n+1)`
-/

namespace A131087.P5395181262497860717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A128174 (n + 1)

end

end A131087.P5395181262497860717

namespace A131087

/-- `2*A007318(n)-A128174(n+1)` -/
def P5395181262497860717.Spec : Prop :=
  ∀ n, P5395181262497860717.a n = A131087 n

end A131087

/-! ## A131087.P11969062991490748317

`2*A007318(n)-and(1, A064801(n+1))`
-/

namespace A131087.P11969062991490748317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - Int.land 1 (A064801 (n + 1))

end

end A131087.P11969062991490748317

namespace A131087

/-- `2*A007318(n)-and(1, A064801(n+1))` -/
def P11969062991490748317.Spec : Prop :=
  ∀ n, P11969062991490748317.a n = A131087 n

end A131087

/-! ## A131087.P6853415297789365014

`A028326(n)-A059841(A025581(n))`
-/

namespace A131087.P6853415297789365014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A059841 (A025581 n).toNat

end

end A131087.P6853415297789365014

namespace A131087

/-- `A028326(n)-A059841(A025581(n))` -/
def P6853415297789365014.Spec : Prop :=
  ∀ n, P6853415297789365014.a n = A131087 n

end A131087

/-! ## A131087.P13463816340038356966

`A028326(n)-A003815(A099375(n))`
-/

namespace A131087.P13463816340038356966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A003815 (A099375 n).toNat

end

end A131087.P13463816340038356966

namespace A131087

/-- `A028326(n)-A003815(A099375(n))` -/
def P13463816340038356966.Spec : Prop :=
  ∀ n, P13463816340038356966.a n = A131087 n

end A131087

/-!
# A131088: 2*A051731 - A054525 as infinite lower triangular matrices.

The programs for A131088, the canonical program `A131088.P15408998772554303099` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131088 has offset 1).

The definition of A131088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131088.P15408998772554303099

`lcm(2, A114002(n))-A054525(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A131088

/-- `lcm(2, A114002(n))-A054525(n+1)` -/
def P15408998772554303099.Spec : Prop :=
  ∀ n, P15408998772554303099.a n = A131088 (n + 1)

theorem P15408998772554303099.correct : P15408998772554303099.Spec := by
  intro n
  simp only [A131088, Nat.add_sub_cancel]

end A131088

/-! ## A131088.P10515458321187292980

`2*A051731(n+1)-A054525(n+1)`
-/

namespace A131088.P10515458321187292980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051731 (n + 1) - A054525 (n + 1)

end

end A131088.P10515458321187292980

namespace A131088

/-- `2*A051731(n+1)-A054525(n+1)` -/
def P10515458321187292980.Spec : Prop :=
  ∀ n, P10515458321187292980.a n = A131088 (n + 1)

end A131088

/-! ## A131088.P9957628406446523157

`(2-A008683(A010766(n+1)))*A051731(n+1)`
-/

namespace A131088.P9957628406446523157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008683 (A010766 (n + 1)).toNat) * A051731 (n + 1)

end

end A131088.P9957628406446523157

namespace A131088

/-- `(2-A008683(A010766(n+1)))*A051731(n+1)` -/
def P9957628406446523157.Spec : Prop :=
  ∀ n, P9957628406446523157.a n = A131088 (n + 1)

end A131088

/-! ## A131088.P3009270070631347117

`(2-A008683(A049834(n+1)))*A051731(n+1)`
-/

namespace A131088.P3009270070631347117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008683 (A049834 (n + 1)).toNat) * A051731 (n + 1)

end

end A131088.P3009270070631347117

namespace A131088

/-- `(2-A008683(A049834(n+1)))*A051731(n+1)` -/
def P3009270070631347117.Spec : Prop :=
  ∀ n, P3009270070631347117.a n = A131088 (n + 1)

end A131088

/-! ## A131088.P13298147981599986342

`(2-A008683(A051537(n+1)))*A051731(n+1)`
-/

namespace A131088.P13298147981599986342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008683 (A051537 (n + 1)).toNat) * A051731 (n + 1)

end

end A131088.P13298147981599986342

namespace A131088

/-- `(2-A008683(A051537(n+1)))*A051731(n+1)` -/
def P13298147981599986342.Spec : Prop :=
  ∀ n, P13298147981599986342.a n = A131088 (n + 1)

end A131088

/-! ## A131088.P11324745761533811983

`(2-A008683(A054531(n+1)))*A051731(n+1)`
-/

namespace A131088.P11324745761533811983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008683 (A054531 (n + 1)).toNat) * A051731 (n + 1)

end

end A131088.P11324745761533811983

namespace A131088

/-- `(2-A008683(A054531(n+1)))*A051731(n+1)` -/
def P11324745761533811983.Spec : Prop :=
  ∀ n, P11324745761533811983.a n = A131088 (n + 1)

end A131088

/-! ## A131088.P12026453611910240209

`∑{e}[A016813(A181117(n+1)), A000032(#)]`
-/

namespace A131088.P12026453611910240209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A181117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000032 (Nat.factorization (f1 n).natAbs p)

end

end A131088.P12026453611910240209

namespace A131088

/-- `∑{e}[A016813(A181117(n+1)), A000032(#)]` -/
def P12026453611910240209.Spec : Prop :=
  ∀ n, P12026453611910240209.a n = A131088 (n + 1)

end A131088

/-! ## A131088.P2446020054032751614

`∑{e}[A016813(A181117(n+1)), A000203(#)]`
-/

namespace A131088.P2446020054032751614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A181117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000203 (Nat.factorization (f1 n).natAbs p)

end

end A131088.P2446020054032751614

namespace A131088

/-- `∑{e}[A016813(A181117(n+1)), A000203(#)]` -/
def P2446020054032751614.Spec : Prop :=
  ∀ n, P2446020054032751614.a n = A131088 (n + 1)

end A131088

/-! ## A131088.P2002872489925685406

`∑{e}[A016813(A181117(n+1)), A000217(#)]`
-/

namespace A131088.P2002872489925685406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A181117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000217 (Nat.factorization (f1 n).natAbs p)

end

end A131088.P2002872489925685406

namespace A131088

/-- `∑{e}[A016813(A181117(n+1)), A000217(#)]` -/
def P2002872489925685406.Spec : Prop :=
  ∀ n, P2002872489925685406.a n = A131088 (n + 1)

end A131088

/-! ## A131088.P3095671046104963264

`∑{e}[A016813(A181117(n+1)), A000045(#²)]`
-/

namespace A131088.P3095671046104963264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A181117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p ^ 2)

end

end A131088.P3095671046104963264

namespace A131088

/-- `∑{e}[A016813(A181117(n+1)), A000045(#²)]` -/
def P3095671046104963264.Spec : Prop :=
  ∀ n, P3095671046104963264.a n = A131088 (n + 1)

end A131088

/-!
# A131089: a(n) = Sum_{d|n} (2 - mu(d)).

The programs for A131089, the canonical program `A131089.P13446690946039087940` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131089 has offset 1).

The definition of A131089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, 2-A008683(#)]` (program `A131089.P13446690946039087940`, by `A131089.P13446690946039087940.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131089.P13446690946039087940

`∑{d}[n+1, 2-A008683(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131089

/-- `∑{d}[n+1, 2-A008683(#)]` -/
def P13446690946039087940.Spec : Prop :=
  ∀ n, P13446690946039087940.a n = A131089 (n + 1)

theorem P13446690946039087940.correct : P13446690946039087940.Spec := by
  intro n
  simp only [A131089, Nat.add_sub_cancel]

end A131089

/-! ## A131089.P9787749560367775408

`∑{d}[n+1, 2-C(#, (n+1)²)]`
-/

namespace A131089.P9787749560367775408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - (Nat.choose d ((n + 1) ^ 2) : ℤ))

end

end A131089.P9787749560367775408

namespace A131089

/-- `∑{d}[n+1, 2-C(#, (n+1)²)]` -/
def P9787749560367775408.Spec : Prop :=
  ∀ n, P9787749560367775408.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P16095567202688697846

`-∑{d}[n+1, C(#, 2*n+1)-2]`
-/

namespace A131089.P16095567202688697846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), ((Nat.choose d (2 * n + 1) : ℤ) - 2))

end

end A131089.P16095567202688697846

namespace A131089

/-- `-∑{d}[n+1, C(#, 2*n+1)-2]` -/
def P16095567202688697846.Spec : Prop :=
  ∀ n, P16095567202688697846.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P15520388386803436129

`∑{d}[n+1, 2-floor(#/(2*n+1))]`
-/

namespace A131089.P15520388386803436129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - ⌊(d : ℚ) / (2 * n + 1 : ℚ)⌋)

end

end A131089.P15520388386803436129

namespace A131089

/-- `∑{d}[n+1, 2-floor(#/(2*n+1))]` -/
def P15520388386803436129.Spec : Prop :=
  ∀ n, P15520388386803436129.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P2446739422779049798

`A062011(n+1)-C(2, n+2)`
-/

namespace A131089.P2446739422779049798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A131089.P2446739422779049798

namespace A131089

/-- `A062011(n+1)-C(2, n+2)` -/
def P2446739422779049798.Spec : Prop :=
  ∀ n, P2446739422779049798.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P14273844798670310727

`Δ[a(n-1)+2*A000005(n)]` with `a(0)=0, a(1)=1`
-/

namespace A131089.P14273844798670310727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 2 * A000005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131089.P14273844798670310727

namespace A131089

/-- `Δ[a(n-1)+2*A000005(n)]` -/
def P14273844798670310727.Spec : Prop :=
  ∀ n, P14273844798670310727.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P2906260004743596546

`2*A000005(and(1, a(n-1))+n+1)` with `a(0)=1`
-/

namespace A131089.P2906260004743596546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A000005 (Int.land 1 (a (n - 1)) + (n + 1 : ℤ)).toNat

end

end A131089.P2906260004743596546

namespace A131089

/-- `2*A000005(and(1, a(n-1))+n+1)` -/
def P2906260004743596546.Spec : Prop :=
  ∀ n, P2906260004743596546.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P17380592357255213605

`A005451(A062011(n+1))`
-/

namespace A131089.P17380592357255213605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A062011 (n + 1)).toNat

end

end A131089.P17380592357255213605

namespace A131089

/-- `A005451(A062011(n+1))` -/
def P17380592357255213605.Spec : Prop :=
  ∀ n, P17380592357255213605.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P7812513026166893537

`A134875(A035116(n+1))`
-/

namespace A131089.P7812513026166893537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134875 (A035116 (n + 1)).toNat

end

end A131089.P7812513026166893537

namespace A131089

/-- `A134875(A035116(n+1))` -/
def P7812513026166893537.Spec : Prop :=
  ∀ n, P7812513026166893537.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P12748275330349912298

`A134239(A066446(n+1))`
-/

namespace A131089.P12748275330349912298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134239 (A066446 (n + 1)).toNat

end

end A131089.P12748275330349912298

namespace A131089

/-- `A134239(A066446(n+1))` -/
def P12748275330349912298.Spec : Prop :=
  ∀ n, P12748275330349912298.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P5494619623363544392

`A063928(A145154(n+1))`
-/

namespace A131089.P5494619623363544392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (A145154 (n + 1)).toNat

end

end A131089.P5494619623363544392

namespace A131089

/-- `A063928(A145154(n+1))` -/
def P5494619623363544392.Spec : Prop :=
  ∀ n, P5494619623363544392.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P6394789535930436834

`A207631(A184389(n+1))`
-/

namespace A131089.P6394789535930436834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207631 (A184389 (n + 1)).toNat

end

end A131089.P6394789535930436834

namespace A131089

/-- `A207631(A184389(n+1))` -/
def P6394789535930436834.Spec : Prop :=
  ∀ n, P6394789535930436834.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P8524902689867869824

`A103517(A000005(n+1)-1)`
-/

namespace A131089.P8524902689867869824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A000005 (n + 1) - 1).toNat

end

end A131089.P8524902689867869824

namespace A131089

/-- `A103517(A000005(n+1)-1)` -/
def P8524902689867869824.Spec : Prop :=
  ∀ n, P8524902689867869824.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P12221405674129581185

`A065475(A062011(n+1)-1)`
-/

namespace A131089.P12221405674129581185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A062011 (n + 1) - 1).toNat

end

end A131089.P12221405674129581185

namespace A131089

/-- `A065475(A062011(n+1)-1)` -/
def P12221405674129581185.Spec : Prop :=
  ∀ n, P12221405674129581185.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P5523792500322746760

`A014684(2*A000005(n+1))`
-/

namespace A131089.P5523792500322746760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (2 * A000005 (n + 1)).toNat

end

end A131089.P5523792500322746760

namespace A131089

/-- `A014684(2*A000005(n+1))` -/
def P5523792500322746760.Spec : Prop :=
  ∀ n, P5523792500322746760.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P3200851279105256327

`A114003(n+1)+A057427(n)`
-/

namespace A131089.P3200851279105256327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) + A057427 n

end

end A131089.P3200851279105256327

namespace A131089

/-- `A114003(n+1)+A057427(n)` -/
def P3200851279105256327.Spec : Prop :=
  ∀ n, P3200851279105256327.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P18289775664917046752

`A062011(n+1)-A000007(n)`
-/

namespace A131089.P18289775664917046752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - A000007 n

end

end A131089.P18289775664917046752

namespace A131089

/-- `A062011(n+1)-A000007(n)` -/
def P18289775664917046752.Spec : Prop :=
  ∀ n, P18289775664917046752.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P17981262496473267631

`A114003(n+1)-A057428(n)`
-/

namespace A131089.P17981262496473267631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - A057428 n

end

end A131089.P17981262496473267631

namespace A131089

/-- `A114003(n+1)-A057428(n)` -/
def P17981262496473267631.Spec : Prop :=
  ∀ n, P17981262496473267631.a n = A131089 (n + 1)

end A131089

/-! ## A131089.P3539052682430939762

`A062011(n+1)/A054977(n)`
-/

namespace A131089.P3539052682430939762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A131089.P3539052682430939762

namespace A131089

/-- `A062011(n+1)/A054977(n)` -/
def P3539052682430939762.Spec : Prop :=
  ∀ n, P3539052682430939762.a n = (A131089 (n + 1) : ℚ)

end A131089

/-!
# A131090: First differences of A131666.

The programs for A131090, the canonical program `A131090.P7320947114519578557` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131090 has offset 0).

The definition of A131090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131090.P18104047208232800271

`ogf((x-2x^2+x^3)/(1-2x+x^3-2x^4))`
-/

namespace A131090.P18104047208232800271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 1] [1, -2, 0, 1, -2] n

end

end A131090.P18104047208232800271

namespace A131090

/-- `ogf((x-2x^2+x^3)/(1-2x+x^3-2x^4))` -/
def P18104047208232800271.Spec : Prop :=
  ∀ n, P18104047208232800271.a n = A131090 n

end A131090

/-! ## A131090.P7320947114519578557

`A131666(n+1)-A131666(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131090

/-- `A131666(n+1)-A131666(n)` -/
def P7320947114519578557.Spec : Prop :=
  ∀ n, P7320947114519578557.a n = A131090 n

theorem P7320947114519578557.correct : P7320947114519578557.Spec := by
  intro n
  simp only [A131090]

end A131090

/-! ## A131090.P7732411501363745317

`2^(n-3)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A131090.P7732411501363745317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - a (n - 3)

end

end A131090.P7732411501363745317

namespace A131090

/-- `2^(n-3)-a(n-3)` -/
def P7732411501363745317.Spec : Prop :=
  ∀ n, P7732411501363745317.a n = (A131090 n : ℚ)

end A131090

/-! ## A131090.P11120764358873499777

`A153234(n)+and(1, n)`
-/

namespace A131090.P11120764358873499777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n + (Nat.land 1 n : ℤ)

end

end A131090.P11120764358873499777

namespace A131090

/-- `A153234(n)+and(1, n)` -/
def P11120764358873499777.Spec : Prop :=
  ∀ n, P11120764358873499777.a n = A131090 n

end A131090

/-! ## A131090.P11216192923404901054

`A153234(n)+A000035(n)`
-/

namespace A131090.P11216192923404901054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n + A000035 n

end

end A131090.P11216192923404901054

namespace A131090

/-- `A153234(n)+A000035(n)` -/
def P11216192923404901054.Spec : Prop :=
  ∀ n, P11216192923404901054.a n = A131090 n

end A131090

/-! ## A131090.P14779903274986189475

`A131666(n)+A092220(n)`
-/

namespace A131090.P14779903274986189475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n + A092220 n

end

end A131090.P14779903274986189475

namespace A131090

/-- `A131666(n)+A092220(n)` -/
def P14779903274986189475.Spec : Prop :=
  ∀ n, P14779903274986189475.a n = A131090 n

end A131090

/-! ## A131090.P1039244366842909758

`A133511(n)+A128834(n)`
-/

namespace A131090.P1039244366842909758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n + A128834 n

end

end A131090.P1039244366842909758

namespace A131090

/-- `A133511(n)+A128834(n)` -/
def P1039244366842909758.Spec : Prop :=
  ∀ n, P1039244366842909758.a n = A131090 n

end A131090

/-! ## A131090.P17396668011469361017

`A135261(n)+A131556(n)`
-/

namespace A131090.P17396668011469361017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135261 n + A131556 n

end

end A131090.P17396668011469361017

namespace A131090

/-- `A135261(n)+A131556(n)` -/
def P17396668011469361017.Spec : Prop :=
  ∀ n, P17396668011469361017.a n = A131090 n

end A131090

/-! ## A131090.P2093203444175901055

`A328881(n)-A033999(n)`
-/

namespace A131090.P2093203444175901055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 n - A033999 n

end

end A131090.P2093203444175901055

namespace A131090

/-- `A328881(n)-A033999(n)` -/
def P2093203444175901055.Spec : Prop :=
  ∀ n, P2093203444175901055.a n = A131090 n

end A131090

/-! ## A131090.P17808477536430233693

`A153234(n)+A059841(n+1)`
-/

namespace A131090.P17808477536430233693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n + A059841 (n + 1)

end

end A131090.P17808477536430233693

namespace A131090

/-- `A153234(n)+A059841(n+1)` -/
def P17808477536430233693.Spec : Prop :=
  ∀ n, P17808477536430233693.a n = A131090 n

end A131090

/-! ## A131090.P1442999433501863726

`A131531(n+2)+A113405(n)`
-/

namespace A131090.P1442999433501863726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 2) + A113405 n

end

end A131090.P1442999433501863726

namespace A131090

/-- `A131531(n+2)+A113405(n)` -/
def P1442999433501863726.Spec : Prop :=
  ∀ n, P1442999433501863726.a n = A131090 n

end A131090

/-! ## A131090.P7285588657884984709

`A133511(n)-A010892(n+2)`
-/

namespace A131090.P7285588657884984709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n - A010892 (n + 2)

end

end A131090.P7285588657884984709

namespace A131090

/-- `A133511(n)-A010892(n+2)` -/
def P7285588657884984709.Spec : Prop :=
  ∀ n, P7285588657884984709.a n = A131090 n

end A131090

/-! ## A131090.P7041855429186656634

`A153234(n)-(A059841(n)-1)`
-/

namespace A131090.P7041855429186656634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n - (A059841 n - 1)

end

end A131090.P7041855429186656634

namespace A131090

/-- `A153234(n)-(A059841(n)-1)` -/
def P7041855429186656634.Spec : Prop :=
  ∀ n, P7041855429186656634.a n = A131090 n

end A131090

/-! ## A131090.P5242258767142138762

`A135259(n)+2*A092220(n)`
-/

namespace A131090.P5242258767142138762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 n + 2 * A092220 n

end

end A131090.P5242258767142138762

namespace A131090

/-- `A135259(n)+2*A092220(n)` -/
def P5242258767142138762.Spec : Prop :=
  ∀ n, P5242258767142138762.a n = A131090 n

end A131090

/-! ## A131090.P13132205557048544523

`A328881(n)-A131714(3*n)`
-/

namespace A131090.P13132205557048544523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 n - A131714 (3 * n)

end

end A131090.P13132205557048544523

namespace A131090

/-- `A328881(n)-A131714(3*n)` -/
def P13132205557048544523.Spec : Prop :=
  ∀ n, P13132205557048544523.a n = A131090 n

end A131090

/-! ## A131090.P13166788269294586867

`A153234(n)+A133872(2*(n+1))`
-/

namespace A131090.P13166788269294586867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n + A133872 (2 * (n + 1))

end

end A131090.P13166788269294586867

namespace A131090

/-- `A153234(n)+A133872(2*(n+1))` -/
def P13166788269294586867.Spec : Prop :=
  ∀ n, P13166788269294586867.a n = A131090 n

end A131090

/-! ## A131090.P12371090121391675220

`A328881(n)-(A131714(n)+A092220(n))`
-/

namespace A131090.P12371090121391675220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 n - (A131714 n + A092220 n)

end

end A131090.P12371090121391675220

namespace A131090

/-- `A328881(n)-(A131714(n)+A092220(n))` -/
def P12371090121391675220.Spec : Prop :=
  ∀ n, P12371090121391675220.a n = A131090 n

end A131090

/-! ## A131090.P16234706216689815640

`A131666(n)-(A135259(n)-A131666(n))`
-/

namespace A131090.P16234706216689815640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n - (A135259 n - A131666 n)

end

end A131090.P16234706216689815640

namespace A131090

/-- `A131666(n)-(A135259(n)-A131666(n))` -/
def P16234706216689815640.Spec : Prop :=
  ∀ n, P16234706216689815640.a n = A131090 n

theorem P16234706216689815640.correct : P16234706216689815640.Spec := by
  intro n
  simp only [A131090, Nat.add_sub_cancel, A131090.P16234706216689815640.a, A131090.P7320947114519578557.a, A131666, A131666.P17333934829367052369.a, A135259, A135259.P8295290231040197.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131090

/-! ## A131090.P1553575176844507073

`A135261(n)+A131714(n)/A177702(n)`
-/

namespace A131090.P1553575176844507073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135261 n : ℚ) + (A131714 n : ℚ) / (A177702 n : ℚ)

end

end A131090.P1553575176844507073

namespace A131090

/-- `A135261(n)+A131714(n)/A177702(n)` -/
def P1553575176844507073.Spec : Prop :=
  ∀ n, P1553575176844507073.a n = (A131090 n : ℚ)

end A131090

/-! ## A131090.P16753996915812615938

`A328881(n)-A130196(n)/A131714(n)`
-/

namespace A131090.P16753996915812615938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328881 n : ℚ) - (A130196 n : ℚ) / (A131714 n : ℚ)

end

end A131090.P16753996915812615938

namespace A131090

/-- `A328881(n)-A130196(n)/A131714(n)` -/
def P16753996915812615938.Spec : Prop :=
  ∀ n, P16753996915812615938.a n = (A131090 n : ℚ)

end A131090

/-!
# A131091: Partial sums of A131707.

The programs for A131091, the canonical program `A131091.P5727219094242694508` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131091 has offset 0).

The definition of A131091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131091.P6903370073314359230

`ogf((1+2x^2+4x^3-6x^5+9x^6)/(1-2x+x^2+x^6-2x^7+x^8))`
-/

namespace A131091.P6903370073314359230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 4, 0, -6, 9] [1, -2, 1, 0, 0, 0, 1, -2, 1] n

end

end A131091.P6903370073314359230

namespace A131091

/-- `ogf((1+2x^2+4x^3-6x^5+9x^6)/(1-2x+x^2+x^6-2x^7+x^8))` -/
def P6903370073314359230.Spec : Prop :=
  ∀ n, P6903370073314359230.a n = A131091 n

end A131091

/-! ## A131091.P5727219094242694508

`2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=19, a(5)=20, a(6)=29, a(7)=38`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131091

/-- `2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` -/
def P5727219094242694508.Spec : Prop :=
  ∀ n, P5727219094242694508.a n = A131091 n

theorem P5727219094242694508.correct : P5727219094242694508.Spec := by
  intro n
  simp only [A131091]

end A131091

/-! ## A131091.P6219806345015993168

`∑[(7*a(n-3))%10]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A131091.P6219806345015993168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  7 * f1 (n - 3) % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P6219806345015993168

namespace A131091

/-- `∑[(7*a(n-3))%10]` -/
def P6219806345015993168.Spec : Prop :=
  ∀ n, (P6219806345015993168.a n : ℤ) = A131091 n

end A131091

/-! ## A131091.P5641310022803439398

`∑[A131707(n)]`
-/

namespace A131091.P5641310022803439398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P5641310022803439398

namespace A131091

/-- `∑[A131707(n)]` -/
def P5641310022803439398.Spec : Prop :=
  ∀ n, P5641310022803439398.a n = A131091 n

end A131091

/-! ## A131091.P5302311778286137250

`∑[abs(A131608(n))]`
-/

namespace A131091.P5302311778286137250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131608 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P5302311778286137250

namespace A131091

/-- `∑[abs(A131608(n))]` -/
def P5302311778286137250.Spec : Prop :=
  ∀ n, P5302311778286137250.a n = A131091 n

end A131091

/-! ## A131091.P831495214528514879

`A000027(∑[dr(A131608(n))])`
-/

namespace A131091.P831495214528514879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A131608 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131091.P831495214528514879

namespace A131091

/-- `A000027(∑[dr(A131608(n))])` -/
def P831495214528514879.Spec : Prop :=
  ∀ n, P831495214528514879.a n = A131091 n

end A131091

/-! ## A131091.P3820712151280735119

`∑[dr(A131608(A028310(n)))]`
-/

namespace A131091.P3820712151280735119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A131608 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P3820712151280735119

namespace A131091

/-- `∑[dr(A131608(A028310(n)))]` -/
def P3820712151280735119.Spec : Prop :=
  ∀ n, (P3820712151280735119.a n : ℤ) = A131091 n

end A131091

/-! ## A131091.P8441073443560243768

`∑[lcm(A020985(n), A131608(n))]`
-/

namespace A131091.P8441073443560243768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A131608 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P8441073443560243768

namespace A131091

/-- `∑[lcm(A020985(n), A131608(n))]` -/
def P8441073443560243768.Spec : Prop :=
  ∀ n, (P8441073443560243768.a n : ℤ) = A131091 n

end A131091

/-! ## A131091.P6411919737850362732

`∑[A001333(n)%10]`
-/

namespace A131091.P6411919737850362732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001333 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P6411919737850362732

namespace A131091

/-- `∑[A001333(n)%10]` -/
def P6411919737850362732.Spec : Prop :=
  ∀ n, P6411919737850362732.a n = A131091 n

end A131091

/-! ## A131091.P16392435799417505800

`∑[A249576(3*n+1)%10]`
-/

namespace A131091.P16392435799417505800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249576 (3 * n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P16392435799417505800

namespace A131091

/-- `∑[A249576(3*n+1)%10]` -/
def P16392435799417505800.Spec : Prop :=
  ∀ n, P16392435799417505800.a n = A131091 n

end A131091

/-! ## A131091.P17640069459765406717

`∑[(A000129(n)+abs(A176981(n)))%10]`
-/

namespace A131091.P17640069459765406717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000129 n + |A176981 n|) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P17640069459765406717

namespace A131091

/-- `∑[(A000129(n)+abs(A176981(n)))%10]` -/
def P17640069459765406717.Spec : Prop :=
  ∀ n, P17640069459765406717.a n = A131091 n

end A131091

/-! ## A131091.P8234583263315147712

`∑[Δ[A000129(n)]%10]`
-/

namespace A131091.P8234583263315147712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P8234583263315147712

namespace A131091

/-- `∑[Δ[A000129(n)]%10]` -/
def P8234583263315147712.Spec : Prop :=
  ∀ n, P8234583263315147712.a n = A131091 n

end A131091

/-! ## A131091.P3426647531452749996

`∑[(A002203(n)/2)%10]`
-/

namespace A131091.P3426647531452749996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A002203 n : ℚ) / 2)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P3426647531452749996

namespace A131091

/-- `∑[(A002203(n)/2)%10]` -/
def P3426647531452749996.Spec : Prop :=
  ∀ n, P3426647531452749996.a n = A131091 n

end A131091

/-! ## A131091.P1119888705098494802

`∑[ceil(A100227(n)/2)%10]`
-/

namespace A131091.P1119888705098494802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A100227 n : ℚ) / 2⌉ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P1119888705098494802

namespace A131091

/-- `∑[ceil(A100227(n)/2)%10]` -/
def P1119888705098494802.Spec : Prop :=
  ∀ n, P1119888705098494802.a n = A131091 n

end A131091

/-! ## A131091.P13874165851120476007

`∑[or(1, Δ[A215928(n)])%10]`
-/

namespace A131091.P13874165851120476007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (f2 (n + 1) - f2 n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P13874165851120476007

namespace A131091

/-- `∑[or(1, Δ[A215928(n)])%10]` -/
def P13874165851120476007.Spec : Prop :=
  ∀ n, P13874165851120476007.a n = A131091 n

end A131091

/-! ## A131091.P2959476690988010096

`∑[Δ[xor(1, A111954(n))]%10]`
-/

namespace A131091.P2959476690988010096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111954 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P2959476690988010096

namespace A131091

/-- `∑[Δ[xor(1, A111954(n))]%10]` -/
def P2959476690988010096.Spec : Prop :=
  ∀ n, P2959476690988010096.a n = A131091 n

end A131091

/-! ## A131091.P3260502211565446004

`∑[Δ[abs(A176981(2*n+1-n))]%10]`
-/

namespace A131091.P3260502211565446004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (2 * n + 1 - n)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P3260502211565446004

namespace A131091

/-- `∑[Δ[abs(A176981(2*n+1-n))]%10]` -/
def P3260502211565446004.Spec : Prop :=
  ∀ n, P3260502211565446004.a n = A131091 n

end A131091

/-! ## A131091.P9912029413852422774

`∑[Δ[A006684(n)+A000045(n)]%10]`
-/

namespace A131091.P9912029413852422774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006684 n + A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P9912029413852422774

namespace A131091

/-- `∑[Δ[A006684(n)+A000045(n)]%10]` -/
def P9912029413852422774.Spec : Prop :=
  ∀ n, P9912029413852422774.a n = A131091 n

end A131091

/-! ## A131091.P1361899325842013311

`∑[∑[A002203(n)-A052542(n)]%10]`
-/

namespace A131091.P1361899325842013311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - A052542 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P1361899325842013311

namespace A131091

/-- `∑[∑[A002203(n)-A052542(n)]%10]` -/
def P1361899325842013311.Spec : Prop :=
  ∀ n, P1361899325842013311.a n = A131091 n

end A131091

/-! ## A131091.P8575616343486974211

`∑[(A000007(n)+Δ[A215928(n)])%10]`
-/

namespace A131091.P8575616343486974211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000007 n + (f2 (n + 1) - f2 n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131091.P8575616343486974211

namespace A131091

/-- `∑[(A000007(n)+Δ[A215928(n)])%10]` -/
def P8575616343486974211.Spec : Prop :=
  ∀ n, P8575616343486974211.a n = A131091 n

end A131091

/-!
# A131092: Coefficient of y^(n-2) in expansion of (y+n!)^n.

The programs for A131092, the canonical program `A131092.P15847067245453441353` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131092 has offset 2).

The definition of A131092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131092.P15847067245453441353

`(n+2)*(n+1)*(n+2)!²/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131092

/-- `(n+2)*(n+1)*(n+2)!²/2` -/
def P15847067245453441353.Spec : Prop :=
  ∀ n, P15847067245453441353.a n = (A131092 (n + 2) : ℚ)

end A131092

/-! ## A131092.P18191716964971912423

`(n+2)!²*∑[n+1]`
-/

namespace A131092.P18191716964971912423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131092.P18191716964971912423

namespace A131092

/-- `(n+2)!²*∑[n+1]` -/
def P18191716964971912423.Spec : Prop :=
  ∀ n, (P18191716964971912423.a n : ℤ) = A131092 (n + 2)

end A131092

/-! ## A131092.P7303540227378394115

`∑[n+1]*∏[(n+2)²]`
-/

namespace A131092.P7303540227378394115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A131092.P7303540227378394115

namespace A131092

/-- `∑[n+1]*∏[(n+2)²]` -/
def P7303540227378394115.Spec : Prop :=
  ∀ n, (P7303540227378394115.a n : ℤ) = A131092 (n + 2)

end A131092

/-! ## A131092.P5288270201404399334

`(n+2)!²/Δ[(n-1)/(n+1)]`
-/

namespace A131092.P5288270201404399334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) ^ 2 : ℚ) / (f1 (n + 1) - f1 n)

end

end A131092.P5288270201404399334

namespace A131092

/-- `(n+2)!²/Δ[(n-1)/(n+1)]` -/
def P5288270201404399334.Spec : Prop :=
  ∀ n, P5288270201404399334.a n = (A131092 (n + 2) : ℚ)

end A131092

/-! ## A131092.P17873867572802379718

`record[A173333(n+2)²*(n+1)]`
-/

namespace A131092.P17873867572802379718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 2) ^ 2 * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131092.P17873867572802379718

namespace A131092

/-- `record[A173333(n+2)²*(n+1)]` -/
def P17873867572802379718.Spec : Prop :=
  ∀ n, P17873867572802379718.a n = A131092 (n + 2)

end A131092

/-!
# A131093: a(1)=1, a(n) = a(n-1) + sum of odd numbers which are among the first (n-1) terms of the sequence.

The programs for A131093, the canonical program `A131093.P10695179413613687962` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131093 has offset 1).

The definition of A131093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131093.P10695179413613687962

`lcm(2, a(n-1))+a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131093

/-- `lcm(2, a(n-1))+a(n-1)-a(n-2)` -/
def P10695179413613687962.Spec : Prop :=
  ∀ n, P10695179413613687962.a n = A131093 (n + 1)

theorem P10695179413613687962.correct : P10695179413613687962.Spec := by
  intro n
  simp only [A131093, Nat.add_sub_cancel]

end A131093

/-! ## A131093.P10770156704721288641

`(a(n-1)%2+2)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A131093.P10770156704721288641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.tmod (a (n - 1)) 2 + 2) * a (n - 1) - a (n - 2)

end

end A131093.P10770156704721288641

namespace A131093

/-- `(a(n-1)%2+2)*a(n-1)-a(n-2)` -/
def P10770156704721288641.Spec : Prop :=
  ∀ n, P10770156704721288641.a n = A131093 (n + 1)

end A131093

/-! ## A131093.P12580287234174843411

`(4-gcd(2, a(n-1)))*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A131093.P12580287234174843411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 - (Int.gcd 2 (a (n - 1)) : ℤ)) * a (n - 1) - a (n - 2)

end

end A131093.P12580287234174843411

namespace A131093

/-- `(4-gcd(2, a(n-1)))*a(n-1)-a(n-2)` -/
def P12580287234174843411.Spec : Prop :=
  ∀ n, P12580287234174843411.a n = A131093 (n + 1)

end A131093

/-! ## A131093.P3966032704548374082

`(2--a(n-1)%2)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A131093.P3966032704548374082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 - Int.tmod (-a (n - 1)) 2) * a (n - 1) - a (n - 2)

end

end A131093.P3966032704548374082

namespace A131093

/-- `(2--a(n-1)%2)*a(n-1)-a(n-2)` -/
def P3966032704548374082.Spec : Prop :=
  ∀ n, P3966032704548374082.a n = A131093 (n + 1)

end A131093

/-! ## A131093.P9072578894945236357

`a(n-1)*a(2-val(a(n-1), 2))-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A131093.P9072578894945236357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * a (2 - SequenceMachineLib.valuation (a (n - 1)).toNat 2) - a (n - 2)

end

end A131093.P9072578894945236357

namespace A131093

/-- `a(n-1)*a(2-val(a(n-1), 2))-a(n-2)` -/
def P9072578894945236357.Spec : Prop :=
  ∀ n, P9072578894945236357.a n = A131093 (n + 1)

end A131093

/-! ## A131093.P17459996381146399003

`ogf((1+2x+3x^2-3x^3-2x^4-x^5)/(1-10x^3+x^6))`
-/

namespace A131093.P17459996381146399003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, -3, -2, -1] [1, 0, 0, -10, 0, 0, 1] n

end

end A131093.P17459996381146399003

namespace A131093

/-- `ogf((1+2x+3x^2-3x^3-2x^4-x^5)/(1-10x^3+x^6))` -/
def P17459996381146399003.Spec : Prop :=
  ∀ n, P17459996381146399003.a n = A131093 (n + 1)

end A131093

/-! ## A131093.P16020189657087783855

`a(n-1)*a(a(a(n-1)²%2))-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A131093.P16020189657087783855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * a (a (Int.tmod (a (n - 1) ^ 2) 2).toNat).toNat - a (n - 2)

end

end A131093.P16020189657087783855

namespace A131093

/-- `a(n-1)*a(a(a(n-1)²%2))-a(n-2)` -/
def P16020189657087783855.Spec : Prop :=
  ∀ n, P16020189657087783855.a n = A131093 (n + 1)

end A131093

/-!
# A131094: Triangle where n-th row contains the smallest n positive integers (listed in order) with exactly n nonleading 0's in their binary representations.

The programs for A131094, the canonical program `A131094.P16883013186837200310` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131094 has offset 1).

The definition of A131094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131094.P16883013186837200310

`A126646(A123578(n))+floor(A059268(n)/2)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A131094

/-- `A126646(A123578(n))+floor(A059268(n)/2)+1` -/
def P16883013186837200310.Spec : Prop :=
  ∀ n, P16883013186837200310.a n = A131094 (n + 1)

theorem P16883013186837200310.correct : P16883013186837200310.Spec := by
  intro n
  simp only [A131094, Nat.add_sub_cancel]

end A131094

/-! ## A131094.P6194830667339867183

`A126646(A123578(n))+A008619(A059268(n))`
-/

namespace A131094.P6194830667339867183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A123578 n).toNat + A008619 (A059268 n).toNat

end

end A131094.P6194830667339867183

namespace A131094

/-- `A126646(A123578(n))+A008619(A059268(n))` -/
def P6194830667339867183.Spec : Prop :=
  ∀ n, P6194830667339867183.a n = A131094 (n + 1)

end A131094

/-! ## A131094.P4066668856201784940

`A137688(n)+A003188(A209492(n))`
-/

namespace A131094.P4066668856201784940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A003188 (A209492 n).toNat

end

end A131094.P4066668856201784940

namespace A131094

/-- `A137688(n)+A003188(A209492(n))` -/
def P4066668856201784940.Spec : Prop :=
  ∀ n, P4066668856201784940.a n = A131094 (n + 1)

end A131094

/-! ## A131094.P15918905582014400669

`A048678(A048645(comp[∑[n]]))`
-/

namespace A131094.P15918905582014400669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A048645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A131094.P15918905582014400669

namespace A131094

/-- `A048678(A048645(comp[∑[n]]))` -/
def P15918905582014400669.Spec : Prop :=
  ∀ n, P15918905582014400669.a n = A131094 (n + 1)

end A131094

/-! ## A131094.P3767668528311121077

`A048678(record[A090077(A173786(n))])`
-/

namespace A131094.P3767668528311121077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (A173786 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131094.P3767668528311121077

namespace A131094

/-- `A048678(record[A090077(A173786(n))])` -/
def P3767668528311121077.Spec : Prop :=
  ∀ n, P3767668528311121077.a n = A131094 (n + 1)

end A131094

/-! ## A131094.P308911112720599459

`A048678(A137688(n)+A048645(n+1))`
-/

namespace A131094.P308911112720599459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A137688 n + A048645 (n + 1)).toNat

end

end A131094.P308911112720599459

namespace A131094

/-- `A048678(A137688(n)+A048645(n+1))` -/
def P308911112720599459.Spec : Prop :=
  ∀ n, P308911112720599459.a n = A131094 (n + 1)

end A131094

/-! ## A131094.P16689733455852817620

`A298847(A081118(n+1))+A053644(A081118(n+1))`
-/

namespace A131094.P16689733455852817620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A081118 (n + 1)).toNat + A053644 (A081118 (n + 1)).toNat

end

end A131094.P16689733455852817620

namespace A131094

/-- `A298847(A081118(n+1))+A053644(A081118(n+1))` -/
def P16689733455852817620.Spec : Prop :=
  ∀ n, P16689733455852817620.a n = A131094 (n + 1)

end A131094

/-! ## A131094.P13591597518097467412

`A080542(A213064(A209492(n)))`
-/

namespace A131094.P13591597518097467412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (A213064 (A209492 n).toNat).toNat

end

end A131094.P13591597518097467412

namespace A131094

/-- `A080542(A213064(A209492(n)))` -/
def P13591597518097467412.Spec : Prop :=
  ∀ n, P13591597518097467412.a n = A131094 (n + 1)

end A131094

/-! ## A131094.P16729184370297358774

`A059894(2*A081118(n+1)+1)`
-/

namespace A131094.P16729184370297358774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (2 * A081118 (n + 1) + 1).toNat

end

end A131094.P16729184370297358774

namespace A131094

/-- `A059894(2*A081118(n+1)+1)` -/
def P16729184370297358774.Spec : Prop :=
  ∀ n, P16729184370297358774.a n = A131094 (n + 1)

end A131094

/-! ## A131094.P1207028086415797216

`A298847(2*A081118(n+1)+1)`
-/

namespace A131094.P1207028086415797216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (2 * A081118 (n + 1) + 1).toNat

end

end A131094.P1207028086415797216

namespace A131094

/-- `A298847(2*A081118(n+1)+1)` -/
def P1207028086415797216.Spec : Prop :=
  ∀ n, P1207028086415797216.a n = A131094 (n + 1)

end A131094

/-!
# A131095: Triangle where n-th row contains the smallest n positive integers (listed in order) with exactly n nonleading 0's in their binary representations and where the smallest term in the n-th row is > that the largest term in the (n-1)th row.

The programs for A131095, the canonical program `A131095.P8508384860694033390` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131095 has offset 1).

The definition of A131095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131095.P8508384860694033390

`A173786(lt[n+1, A013609(n+2)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A131095

/-- `A173786(lt[n+1, A013609(n+2)])` -/
def P8508384860694033390.Spec : Prop :=
  ∀ n, P8508384860694033390.a n = A131095 (n + 1)

theorem P8508384860694033390.correct : P8508384860694033390.Spec := by
  intro n
  simp only [A131095, Nat.add_sub_cancel]

end A131095

/-! ## A131095.P11263167086577360227

`A004754(record[A267870(n)+A038558(n)])`
-/

namespace A131095.P11263167086577360227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 n + A038558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131095.P11263167086577360227

namespace A131095

/-- `A004754(record[A267870(n)+A038558(n)])` -/
def P11263167086577360227.Spec : Prop :=
  ∀ n, P11263167086577360227.a n = A131095 (n + 1)

end A131095

/-! ## A131095.P15457732378034405234

`record[A292272(A076877(n+1)+A038558(n))]`
-/

namespace A131095.P15457732378034405234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (A076877 (n + 1) + A038558 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131095.P15457732378034405234

namespace A131095

/-- `record[A292272(A076877(n+1)+A038558(n))]` -/
def P15457732378034405234.Spec : Prop :=
  ∀ n, P15457732378034405234.a n = A131095 (n + 1)

end A131095

/-! ## A131095.P9531930063791849968

`eq[A000523(A249036(n+1)), A023416(n)]`
-/

namespace A131095.P9531930063791849968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A249036 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131095.P9531930063791849968

namespace A131095

/-- `eq[A000523(A249036(n+1)), A023416(n)]` -/
def P9531930063791849968.Spec : Prop :=
  ∀ n, (P9531930063791849968.a n : ℤ) = A131095 (n + 1)

end A131095

/-! ## A131095.P13844995859457580238

`eq[A062383(A249036(n+1)), A267584(n)]`
-/

namespace A131095.P13844995859457580238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A249036 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131095.P13844995859457580238

namespace A131095

/-- `eq[A062383(A249036(n+1)), A267584(n)]` -/
def P13844995859457580238.Spec : Prop :=
  ∀ n, (P13844995859457580238.a n : ℤ) = A131095 (n + 1)

end A131095

/-!
# A131096: 3-smooth numbers in ternary representation.

The programs for A131096, there is no canonical definition to state claims against.
-/

/-! ## A131096.P11198035958257269791

`A007089(A003586(n+1))`
-/

namespace A131096.P11198035958257269791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A003586 (n + 1)).toNat

end

end A131096.P11198035958257269791

/-! ## A131096.P7641080179808432593

`A007089(∑[A061987(n)])`
-/

namespace A131096.P7641080179808432593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131096.P7641080179808432593

/-! ## A131096.P6068756165389197443

`A007089(Δ[A259823(n)])`
-/

namespace A131096.P6068756165389197443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (n + 1) - f1 n).toNat

end

end A131096.P6068756165389197443

/-! ## A131096.P8947266315942590487

`A007089(eq[1, A126760(n)])`
-/

namespace A131096.P8947266315942590487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131096.P8947266315942590487

/-! ## A131096.P2937545240740229719

`A007089(A055600(n+1)-1)`
-/

namespace A131096.P2937545240740229719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A055600 (n + 1) - 1).toNat

end

end A131096.P2937545240740229719

/-! ## A131096.P1677012002452225414

`A007089(A259823(n+1)-A259823(n))`
-/

namespace A131096.P1677012002452225414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A259823 (n + 1) - A259823 n).toNat

end

end A131096.P1677012002452225414

/-!
# A131097: Sum of digits of 3-smooth numbers in ternary representation.

The programs for A131097, there is no canonical definition to state claims against.
-/

/-! ## A131097.P16910251237311028194

`A261009(A022328(n+1))`
-/

namespace A131097.P16910251237311028194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261009 (A022328 (n + 1)).toNat

end

end A131097.P16910251237311028194

/-! ## A131097.P3718528443904549612

`A261009(val(A003586(n+1), 2))`
-/

namespace A131097.P3718528443904549612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261009 (SequenceMachineLib.valuation (A003586 (n + 1)).toNat 2)

end

end A131097.P3718528443904549612

/-! ## A131097.P15652112944820460105

`A261009(val(A065119(n+1), 2))`
-/

namespace A131097.P15652112944820460105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261009 (SequenceMachineLib.valuation (A065119 (n + 1)).toNat 2)

end

end A131097.P15652112944820460105

/-! ## A131097.P13493579123456516297

`A261009(val(A025620(n+1), 4))`
-/

namespace A131097.P13493579123456516297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261009 (SequenceMachineLib.valuation (A025620 (n + 1)).toNat 4)

end

end A131097.P13493579123456516297

/-! ## A131097.P6503163739132277146

`∑{digits}[A131096(n+1), #]`
-/

namespace A131097.P6503163739132277146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A131097.P6503163739132277146

/-! ## A131097.P2732500271004990564

`A048675(A006047(A003586(n+1)))`
-/

namespace A131097.P2732500271004990564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A006047 (A003586 (n + 1)).toNat).toNat

end

end A131097.P2732500271004990564

/-! ## A131097.P15677316614969187212

`A056239(A006047(sqrt(A025620(n+1))))`
-/

namespace A131097.P15677316614969187212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A006047 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat).toNat

end

end A131097.P15677316614969187212

/-! ## A131097.P17182595777864933944

`A053735(2^A022328(n+1))`
-/

namespace A131097.P17182595777864933944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A022328 (n + 1) : ℤ))).toNat

end

end A131097.P17182595777864933944

/-! ## A131097.P7822368693920063398

`A053735(and(-A003586(n+1), A003586(n+1)))`
-/

namespace A131097.P7822368693920063398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (Int.land (-A003586 (n + 1)) (A003586 (n + 1))).toNat

end

end A131097.P7822368693920063398

/-! ## A131097.P3920964554093017061

`A053735(A003586(n+1))`
-/

namespace A131097.P3920964554093017061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A003586 (n + 1)).toNat

end

end A131097.P3920964554093017061

/-!
# A131098: Partial sums of A151798.

The programs for A131098, the canonical program `A131098.P4115882247836915784` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131098 has offset 1).

The definition of A131098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131098.P4115882247836915784

`abs(4*(n+1)-5)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A131098

/-- `abs(4*(n+1)-5)` -/
def P4115882247836915784.Spec : Prop :=
  ∀ n, P4115882247836915784.a n = A131098 (n + 1)

theorem P4115882247836915784.correct : P4115882247836915784.Spec := by
  intro n
  simp only [A131098, Nat.add_sub_cancel]

end A131098

/-!
# A131099: a(n) = n times number of divisors of n of form 3m+1 - n times number of divisors of form 3m+2.

The programs for A131099, the canonical program `A131099.P17198853455723490305` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131099 has offset 1).

The definition of A131099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131099.P17198853455723490305

`(n+1)*A002324(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131099

/-- `(n+1)*A002324(n+1)` -/
def P17198853455723490305.Spec : Prop :=
  ∀ n, P17198853455723490305.a n = A131099 (n + 1)

theorem P17198853455723490305.correct : P17198853455723490305.Spec := by
  intro n
  simp only [A131099, Nat.add_sub_cancel]

end A131099

/-! ## A131099.P714994615731907395

`∑{d}[n+1, #*A162397((n+1)/#)]`
-/

namespace A131099.P714994615731907395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A162397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A131099.P714994615731907395

namespace A131099

/-- `∑{d}[n+1, #*A162397((n+1)/#)]` -/
def P714994615731907395.Spec : Prop :=
  ∀ n, P714994615731907395.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P13137370993875240125

`A002324(n+1)*A061800(n)`
-/

namespace A131099.P13137370993875240125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A061800 n

end

end A131099.P13137370993875240125

namespace A131099

/-- `A002324(n+1)*A061800(n)` -/
def P13137370993875240125.Spec : Prop :=
  ∀ n, P13137370993875240125.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P6648310384312427889

`A002324(n+1)*A092200(n)`
-/

namespace A131099.P6648310384312427889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A092200 n

end

end A131099.P6648310384312427889

namespace A131099

/-- `A002324(n+1)*A092200(n)` -/
def P6648310384312427889.Spec : Prop :=
  ∀ n, P6648310384312427889.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P15638160240478525910

`A002324(n+1)*A117571(n)`
-/

namespace A131099.P15638160240478525910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A117571 n

end

end A131099.P15638160240478525910

namespace A131099

/-- `A002324(n+1)*A117571(n)` -/
def P15638160240478525910.Spec : Prop :=
  ∀ n, P15638160240478525910.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P9346664492883652964

`(n+1)*A045833(A038502(n+1))`
-/

namespace A131099.P9346664492883652964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A045833 (A038502 (n + 1)).toNat

end

end A131099.P9346664492883652964

namespace A131099

/-- `(n+1)*A045833(A038502(n+1))` -/
def P9346664492883652964.Spec : Prop :=
  ∀ n, P9346664492883652964.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P7630465603346845985

`(n+1)*A096936(A065883(n+1))`
-/

namespace A131099.P7630465603346845985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096936 (A065883 (n + 1)).toNat

end

end A131099.P7630465603346845985

namespace A131099

/-- `(n+1)*A096936(A065883(n+1))` -/
def P7630465603346845985.Spec : Prop :=
  ∀ n, P7630465603346845985.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P2112054447287198434

`∑{d}[n+1, A000010(#)*A326503((n+1)/#)]`
-/

namespace A131099.P2112054447287198434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A326503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A131099.P2112054447287198434

namespace A131099

/-- `∑{d}[n+1, A000010(#)*A326503((n+1)/#)]` -/
def P2112054447287198434.Spec : Prop :=
  ∀ n, P2112054447287198434.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P12219720493460941892

`∑{d}[n+1, A106401(#)*A227128((n+1)/#)]`
-/

namespace A131099.P12219720493460941892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A106401 d * A227128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A131099.P12219720493460941892

namespace A131099

/-- `∑{d}[n+1, A106401(#)*A227128((n+1)/#)]` -/
def P12219720493460941892.Spec : Prop :=
  ∀ n, P12219720493460941892.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P14413956229811860754

`∑{d}[n+1, A113421(#)*A395768((n+1)/#)]`
-/

namespace A131099.P14413956229811860754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113421 d * A395768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A131099.P14413956229811860754

namespace A131099

/-- `∑{d}[n+1, A113421(#)*A395768((n+1)/#)]` -/
def P14413956229811860754.Spec : Prop :=
  ∀ n, P14413956229811860754.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P16433063649606284528

`∑{d}[n+1, A049347(#-1)*A087694((n+1)/#)]`
-/

namespace A131099.P16433063649606284528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1) * A087694 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A131099.P16433063649606284528

namespace A131099

/-- `∑{d}[n+1, A049347(#-1)*A087694((n+1)/#)]` -/
def P16433063649606284528.Spec : Prop :=
  ∀ n, P16433063649606284528.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P3234848312139791442

`(n+1)*Δ[A014202(n)]`
-/

namespace A131099.P3234848312139791442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A131099.P3234848312139791442

namespace A131099

/-- `(n+1)*Δ[A014202(n)]` -/
def P3234848312139791442.Spec : Prop :=
  ∀ n, P3234848312139791442.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P13962042489495540827

`Δ[A014201(n)/6]*(n+1)`
-/

namespace A131099.P13962042489495540827
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014201 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (n + 1 : ℚ)

end

end A131099.P13962042489495540827

namespace A131099

/-- `Δ[A014201(n)/6]*(n+1)` -/
def P13962042489495540827.Spec : Prop :=
  ∀ n, P13962042489495540827.a n = (A131099 (n + 1) : ℚ)

end A131099

/-! ## A131099.P15277640659948993617

`(n+1)*A293899(3*(n+1))`
-/

namespace A131099.P15277640659948993617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A293899 (3 * (n + 1))

end

end A131099.P15277640659948993617

namespace A131099

/-- `(n+1)*A293899(3*(n+1))` -/
def P15277640659948993617.Spec : Prop :=
  ∀ n, P15277640659948993617.a n = A131099 (n + 1)

end A131099

/-! ## A131099.P14997541210224278625

`A112689((n+1)*A004016(n+1))`
-/

namespace A131099.P14997541210224278625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 ((n + 1 : ℤ) * A004016 (n + 1)).toNat

end

end A131099.P14997541210224278625

namespace A131099

/-- `A112689((n+1)*A004016(n+1))` -/
def P14997541210224278625.Spec : Prop :=
  ∀ n, P14997541210224278625.a n = A131099 (n + 1)

end A131099

