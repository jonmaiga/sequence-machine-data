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
import Seq.B000.C018
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B003.C004
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
# A339000: Triangle read by rows: T(n, k) = C(n, k)*Sum_{j=0..n} C(n, k-j)*C(n+j, j)/C(2*j, j).

The programs for A339000, there is no canonical definition to state claims against.
-/

/-! ## A339000.P9005812303721188168

`A055896(n+1)+A025442(A084057(n))`
-/

namespace A339000.P9005812303721188168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055896 (n + 1) + A025442 (A084057 n).toNat

end

end A339000.P9005812303721188168

/-! ## A339000.P16492311145137747380

`A325768(A061035(n+1)*A359907(n))`
-/

namespace A339000.P16492311145137747380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325768 (A061035 (n + 1) * A359907 n).toNat

end

end A339000.P16492311145137747380

/-! ## A339000.P11790411085193848640

`A123580(A008517(n+1)^A042974(2*(n+1)))`
-/

namespace A339000.P11790411085193848640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (SequenceMachineLib.roundAway ((A008517 (n + 1) : ℚ) ^ (A042974 (2 * (n + 1)) : ℤ))).toNat

end

end A339000.P11790411085193848640

/-!
# A339001: a(n) = (-1)^n * Sum_{k=0..n} (-n)^k * binomial(n,k) * Catalan(k).

The programs for A339001, there is no canonical definition to state claims against.
-/

/-! ## A339001.P1605902683927739941

`A225252(A122400(n))-A032302(n)`
-/

namespace A339001.P1605902683927739941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225252 (A122400 n).toNat - A032302 n

end

end A339001.P1605902683927739941

/-!
# A339002: Numbers of the form prime(x) * prime(y) where x and y are distinct and have a common divisor > 1.

The programs for A339002, there is no canonical definition to state claims against.
-/

/-! ## A339002.P4459116251131633865

`record[A327656(A046388(n+2))]`
-/

namespace A339002.P4459116251131633865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A046388 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339002.P4459116251131633865

/-! ## A339002.P6591213060435222669

`filter[A338552(n+1), A064911(#)]`
-/

namespace A339002.P6591213060435222669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A339002.P6591213060435222669

/-! ## A339002.P6300284127129614425

`filter[A338552(n+1), A101040(#)]`
-/

namespace A339002.P6300284127129614425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A339002.P6300284127129614425

/-! ## A339002.P12445891390244709727

`filter[A338552(n+1), A123927(#)]`
-/

namespace A339002.P12445891390244709727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A339002.P12445891390244709727

/-! ## A339002.P15192571131797098745

`filter[A328336(n+1), A280710(#)]`
-/

namespace A339002.P15192571131797098745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A339002.P15192571131797098745

/-! ## A339002.P11128648819039842905

`filter[A338552(n+1), A280710(#)]`
-/

namespace A339002.P11128648819039842905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A339002.P11128648819039842905

/-! ## A339002.P1394683701938405979

`filter[A328336(n+1), A340370(#)]`
-/

namespace A339002.P1394683701938405979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A339002.P1394683701938405979

/-! ## A339002.P5887680466328463625

`filter[A338552(n+1), A340370(#)]`
-/

namespace A339002.P5887680466328463625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A339002.P5887680466328463625

/-!
# A339003: Numbers of the form prime(x) * prime(y) where x and y are distinct and both odd.

The programs for A339003, there is no canonical definition to state claims against.
-/

/-! ## A339003.P10470317582179656436

`record[A247503(A006881(n+2))]`
-/

namespace A339003.P10470317582179656436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A006881 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339003.P10470317582179656436

/-! ## A339003.P2815889447010842729

`record[A055615(A258116(n+4))]`
-/

namespace A339003.P2815889447010842729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A258116 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339003.P2815889447010842729

/-! ## A339003.P2328225448344095490

`filter[A258116(n+1), A064911(#)]`
-/

namespace A339003.P2328225448344095490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A339003.P2328225448344095490

/-! ## A339003.P17930178799090066207

`filter[A066208(n+1), A280710(#)]`
-/

namespace A339003.P17930178799090066207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A339003.P17930178799090066207

/-! ## A339003.P11109022782455665544

`filter[A352142(n+1), A064911(#)]`
-/

namespace A339003.P11109022782455665544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A339003.P11109022782455665544

/-! ## A339003.P3458253564113253040

`filter[A258116(n+1), A215480(#)]`
-/

namespace A339003.P3458253564113253040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A339003.P3458253564113253040

/-! ## A339003.P1551715893757367843

`filter[A258116(n+1), A280710(#)]`
-/

namespace A339003.P1551715893757367843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A339003.P1551715893757367843

/-! ## A339003.P7062870577908243967

`filter[A258116(n+1), A353669(#)]`
-/

namespace A339003.P7062870577908243967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A339003.P7062870577908243967

/-! ## A339003.P1436103473004005394

`filter[A352142(n+1), A280710(#)]`
-/

namespace A339003.P1436103473004005394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A339003.P1436103473004005394

/-! ## A339003.P14501914767269043301

`filter[A258116(n+2), A065043(#)]`
-/

namespace A339003.P14501914767269043301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258116 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A339003.P14501914767269043301

/-!
# A339004: Numbers of the form prime(x) * prime(y) where x and y are distinct and both even.

The programs for A339004, there is no canonical definition to state claims against.
-/

/-! ## A339004.P18203003266845486037

`record[A248101(A046388(n+2))]`
-/

namespace A339004.P18203003266845486037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A046388 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339004.P18203003266845486037

/-! ## A339004.P7344632832267862552

`record[A248101(A006881(n+5))]`
-/

namespace A339004.P7344632832267862552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A006881 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339004.P7344632832267862552

/-! ## A339004.P4677414110603450177

`filter[A258117(n+1), A064911(#)]`
-/

namespace A339004.P4677414110603450177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A339004.P4677414110603450177

/-! ## A339004.P15464014049645458819

`filter[A066207(n+1), A280710(#)]`
-/

namespace A339004.P15464014049645458819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A339004.P15464014049645458819

/-! ## A339004.P12620630897687562275

`filter[A066207(n+1), A340370(#)]`
-/

namespace A339004.P12620630897687562275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A339004.P12620630897687562275

/-! ## A339004.P12881222355565416201

`filter[A352140(n+1), A064911(#)]`
-/

namespace A339004.P12881222355565416201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A339004.P12881222355565416201

/-! ## A339004.P7968788378748391071

`filter[A066207(n+1), A353481(#)]`
-/

namespace A339004.P7968788378748391071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A339004.P7968788378748391071

/-! ## A339004.P6262984993368691252

`filter[A258117(n+1), A215480(#)]`
-/

namespace A339004.P6262984993368691252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A339004.P6262984993368691252

/-! ## A339004.P14242355513598929314

`filter[A258117(n+1), A280710(#)]`
-/

namespace A339004.P14242355513598929314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A339004.P14242355513598929314

/-!
# A339005: Numbers of the form prime(x) * prime(y) where x properly divides y. Squarefree semiprimes with divisible prime indices.

The programs for A339005, there is no canonical definition to state claims against.
-/

/-! ## A339005.P4737079618235888362

`record[A007947(A318990(n+2))]`
-/

namespace A339005.P4737079618235888362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A318990 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339005.P4737079618235888362

/-! ## A339005.P1396085265135863663

`filter[A318990(n+1), A008966(#)]`
-/

namespace A339005.P1396085265135863663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A339005.P1396085265135863663

/-! ## A339005.P15657446337616314514

`filter[A318990(n+1), A049240(#)]`
-/

namespace A339005.P15657446337616314514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A339005.P15657446337616314514

/-! ## A339005.P6856100135501013983

`filter[A318990(n+1), A132350(#)]`
-/

namespace A339005.P6856100135501013983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A339005.P6856100135501013983

/-! ## A339005.P8295204344138088745

`filter[A318990(n+1), A143731(#)]`
-/

namespace A339005.P8295204344138088745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A339005.P8295204344138088745

/-! ## A339005.P8227512554842460196

`filter[A318990(n+1), A181183(#)]`
-/

namespace A339005.P8227512554842460196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A339005.P8227512554842460196

/-! ## A339005.P16047359321734179402

`filter[A318990(n+1), A215480(#)]`
-/

namespace A339005.P16047359321734179402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A339005.P16047359321734179402

/-! ## A339005.P11947250459333001041

`filter[A318990(n+1), A262684(#)]`
-/

namespace A339005.P11947250459333001041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A339005.P11947250459333001041

/-! ## A339005.P17222433219850242794

`filter[A318990(n+1), A267594(#)]`
-/

namespace A339005.P17222433219850242794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A339005.P17222433219850242794

/-! ## A339005.P12061462568679292497

`filter[A318990(n+1), A267635(#)]`
-/

namespace A339005.P12061462568679292497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A339005.P12061462568679292497

/-!
# A339006: Sum over all partitions lambda of n of binomial(|lambda|, |{lambda}|).

The programs for A339006, there is no canonical definition to state claims against.
-/

/-! ## A339006.P15068519187235986149

`A003056(A000267(n)*A294159(n))`
-/

namespace A339006.P15068519187235986149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000267 n * A294159 n).toNat

end

end A339006.P15068519187235986149

/-! ## A339006.P1532104623989940238

`A003056(A038567(n)*A294159(n))`
-/

namespace A339006.P1532104623989940238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A038567 n * A294159 n).toNat

end

end A339006.P1532104623989940238

/-! ## A339006.P6814928528557417757

`A184415(A111856(n+1)+A079969(n))`
-/

namespace A339006.P6814928528557417757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184415 (A111856 (n + 1) + A079969 n).toNat

end

end A339006.P6814928528557417757

/-! ## A339006.P12420042462743578790

`A003056(A036234(n+1)*A294159(n))`
-/

namespace A339006.P12420042462743578790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A036234 (n + 1) * A294159 n).toNat

end

end A339006.P12420042462743578790

/-! ## A339006.P6041037151229164923

`A162145(n+3)-A053735(A371162(n))`
-/

namespace A339006.P6041037151229164923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (n + 3) - A053735 (A371162 n).toNat

end

end A339006.P6041037151229164923

/-!
# A339007: Least k such that p = k^2 + 1 and q = (k+2n)^2 + 1 are prime numbers with q - p square.

The programs for A339007, there is no canonical definition to state claims against.
-/

/-! ## A339007.P4200531164000975710

`A339008(n+1)/A108244(A001844(n))`
-/

namespace A339007.P4200531164000975710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339008 (n + 1) : ℚ) / (A108244 (A001844 n).toNat : ℚ)

end

end A339007.P4200531164000975710

/-! ## A339007.P17913897143312900365

`A339008(n+1)/A175244(A060647(n))`
-/

namespace A339007.P17913897143312900365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339008 (n + 1) : ℚ) / (A175244 (A060647 n).toNat : ℚ)

end

end A339007.P17913897143312900365

/-! ## A339007.P17535813808492631663

`A339008(n+1)/A339047(A000638(n))`
-/

namespace A339007.P17535813808492631663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339008 (n + 1) : ℚ) / (A339047 (A000638 n).toNat : ℚ)

end

end A339007.P17535813808492631663

/-!
# A339008: Least k such that p = k^2 + 1 and q = (k+2n)^2 + 1 are two consecutive prime numbers of the same form with q - p square.

The programs for A339008, there is no canonical definition to state claims against.
-/

/-! ## A339008.P7715376634417661135

`A108244(A001844(n))*A339007(n+1)`
-/

namespace A339008.P7715376634417661135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (A001844 n).toNat * A339007 (n + 1)

end

end A339008.P7715376634417661135

/-! ## A339008.P7119030026457126648

`A175244(A060647(n))*A339007(n+1)`
-/

namespace A339008.P7119030026457126648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175244 (A060647 n).toNat * A339007 (n + 1)

end

end A339008.P7119030026457126648

/-! ## A339008.P8677440236055241003

`A339007(n+1)*A339047(A000638(n))`
-/

namespace A339008.P8677440236055241003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339007 (n + 1) * A339047 (A000638 n).toNat

end

end A339008.P8677440236055241003

/-!
# A339010: a(n) is the number of ways to write n as the difference of two centered k-gonal numbers for k >= 3.

The programs for A339010, the canonical program `A339010.P4443742894969204147` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339010 has offset 1).

The definition of A339010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339010.P4443742894969204147

`∑{d}[n+1, A091954(A214682(#))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A339010

/-- `∑{d}[n+1, A091954(A214682(#))]` -/
def P4443742894969204147.Spec : Prop :=
  ∀ n, P4443742894969204147.a n = A339010 (n + 1)

theorem P4443742894969204147.correct : P4443742894969204147.Spec := by
  intro n
  simp only [A339010, Nat.add_sub_cancel]

end A339010

/-! ## A339010.P18037527515909176048

`A133700(n+1)-A069733(n+1)`
-/

namespace A339010.P18037527515909176048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (n + 1) - A069733 (n + 1)

end

end A339010.P18037527515909176048

namespace A339010

/-- `A133700(n+1)-A069733(n+1)` -/
def P18037527515909176048.Spec : Prop :=
  ∀ n, P18037527515909176048.a n = A339010 (n + 1)

end A339010

/-! ## A339010.P11380619890109707589

`∑{d}[n+1, A023645(#)*A059841((n+1)/#-1)]`
-/

namespace A339010.P11380619890109707589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023645 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A339010.P11380619890109707589

namespace A339010

/-- `∑{d}[n+1, A023645(#)*A059841((n+1)/#-1)]` -/
def P11380619890109707589.Spec : Prop :=
  ∀ n, P11380619890109707589.a n = A339010 (n + 1)

end A339010

/-! ## A339010.P16969776515598571030

`∑{d}[n+1, A001227(#)*A157928((n+1)/#-1)]`
-/

namespace A339010.P16969776515598571030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A157928 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A339010.P16969776515598571030

namespace A339010

/-- `∑{d}[n+1, A001227(#)*A157928((n+1)/#-1)]` -/
def P16969776515598571030.Spec : Prop :=
  ∀ n, P16969776515598571030.a n = A339010 (n + 1)

end A339010

/-! ## A339010.P7837756814895408156

`A133700(n+1)-A000005(A259445(n+1))`
-/

namespace A339010.P7837756814895408156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (n + 1) - A000005 (A259445 (n + 1)).toNat

end

end A339010.P7837756814895408156

namespace A339010

/-- `A133700(n+1)-A000005(A259445(n+1))` -/
def P7837756814895408156.Spec : Prop :=
  ∀ n, P7837756814895408156.a n = A339010 (n + 1)

end A339010

/-! ## A339010.P15355618136367967244

`A133700(n+1)-A001227(A087560(n+1)/2)`
-/

namespace A339010.P15355618136367967244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (n + 1) - A001227 (SequenceMachineLib.roundAway ((A087560 (n + 1) : ℚ) / 2)).toNat

end

end A339010.P15355618136367967244

namespace A339010

/-- `A133700(n+1)-A001227(A087560(n+1)/2)` -/
def P15355618136367967244.Spec : Prop :=
  ∀ n, P15355618136367967244.a n = A339010 (n + 1)

end A339010

/-! ## A339010.P6405957734658310958

`A133700(n+1)-A001227(A087560(n+1))`
-/

namespace A339010.P6405957734658310958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (n + 1) - A001227 (A087560 (n + 1)).toNat

end

end A339010.P6405957734658310958

namespace A339010

/-- `A133700(n+1)-A001227(A087560(n+1))` -/
def P6405957734658310958.Spec : Prop :=
  ∀ n, P6405957734658310958.a n = A339010 (n + 1)

end A339010

/-!
# A339011: Sum over all partitions of n of the product of the number of parts and the number of distinct parts.

The programs for A339011, there is no canonical definition to state claims against.
-/

/-! ## A339011.P15389648315816275585

`∑[A006128(n)-A138135(A028310(n))]`
-/

namespace A339011.P15389648315816275585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A138135 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339011.P15389648315816275585

/-! ## A339011.P10138465136243936326

`A138135(n+1)+∑[A006128(n)-A138135(n+1)]`
-/

namespace A339011.P10138465136243936326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A138135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339011.P10138465136243936326

/-! ## A339011.P14571976235441069713

`A284870(n)-A096541(n)`
-/

namespace A339011.P14571976235441069713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284870 n - A096541 n

end

end A339011.P14571976235441069713

/-! ## A339011.P12613606866660477141

`∑[A006128(n)]-A096541(n)`
-/

namespace A339011.P12613606866660477141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A096541 n

end

end A339011.P12613606866660477141

/-! ## A339011.P15491111874707606420

`∑[A093694(n)]-A093694(n)`
-/

namespace A339011.P15491111874707606420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A093694 n

end

end A339011.P15491111874707606420

/-! ## A339011.P9761574051675815166

`A124920(n+1)-(A096541(n)+1)`
-/

namespace A339011.P9761574051675815166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124920 (n + 1) - (A096541 n + 1)

end

end A339011.P9761574051675815166

/-! ## A339011.P17042093878548653830

`A000070(n)+A284870(n)-A093694(n)`
-/

namespace A339011.P17042093878548653830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (A284870 n - A093694 n)

end

end A339011.P17042093878548653830

/-! ## A339011.P8636392977978737944

`∑[A210485(A000096(n))]-A096541(n)`
-/

namespace A339011.P8636392977978737944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A096541 n

end

end A339011.P8636392977978737944

/-!
# A339012: Written in factorial base, n ends in a(n) consecutive non-0 digits.

The programs for A339012, there is no canonical definition to state claims against.
-/

/-! ## A339012.P11868607369545760154

`A339013(n+1)-2`
-/

namespace A339012.P11868607369545760154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339013 (n + 1) - 2

end

end A339012.P11868607369545760154

/-! ## A339012.P10172671330035437343

`val(A275727(n)+1, 2)`
-/

namespace A339012.P10172671330035437343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275727 n + 1).toNat 2

end

end A339012.P10172671330035437343

/-! ## A339012.P9016847112499378878

`A007814(A275727(n)+1)`
-/

namespace A339012.P9016847112499378878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A275727 n + 1).toNat

end

end A339012.P9016847112499378878

/-! ## A339012.P9223266536802090790

`A050605(2*A275727(n))`
-/

namespace A339012.P9223266536802090790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (2 * A275727 n).toNat

end

end A339012.P9223266536802090790

/-! ## A339012.P1452852930781423356

`A001511(A275727(n)+1)-1`
-/

namespace A339012.P1452852930781423356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A275727 n + 1).toNat - 1

end

end A339012.P1452852930781423356

/-! ## A339012.P2790692548090418136

`A050605(A275727(n)+A275727(n)+1)`
-/

namespace A339012.P2790692548090418136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A275727 n + (A275727 n + 1)).toNat

end

end A339012.P2790692548090418136

/-! ## A339012.P11289798530717241850

`A328570(A351576(n))-1`
-/

namespace A339012.P11289798530717241850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (A351576 n).toNat - 1

end

end A339012.P11289798530717241850

/-! ## A339012.P4686275053947432152

`A276084(A275733(n))`
-/

namespace A339012.P4686275053947432152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A275733 n).toNat

end

end A339012.P4686275053947432152

/-! ## A339012.P16988767975333419924

`A254078(n+2)%A339013(n+1)`
-/

namespace A339012.P16988767975333419924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A339013 (n + 1))

end

end A339012.P16988767975333419924

/-! ## A339012.P12187066817977528938

`A215887(A007623(n))`
-/

namespace A339012.P12187066817977528938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A007623 n).toNat

end

end A339012.P12187066817977528938

/-!
# A339013: Class number m containing n in a partitioning of the natural numbers into classes B_m by William J. Keith.

The programs for A339013, there is no canonical definition to state claims against.
-/

/-! ## A339013.P722993919583154113

`A339012(n)+2`
-/

namespace A339013.P722993919583154113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 n + 2

end

end A339013.P722993919583154113

/-! ## A339013.P11252629786153297829

`A085058(A275727(n))`
-/

namespace A339013.P11252629786153297829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A275727 n).toNat

end

end A339013.P11252629786153297829

/-! ## A339013.P2552888226978383067

`A001511(A275727(n)+1)+1`
-/

namespace A339013.P2552888226978383067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A275727 n + 1).toNat + 1

end

end A339013.P2552888226978383067

/-! ## A339013.P11139804595130829756

`A007814(A275727(n)+1)+2`
-/

namespace A339013.P11139804595130829756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A275727 n + 1).toNat + 2

end

end A339013.P11139804595130829756

/-! ## A339013.P3964029008149091246

`A050605(2*A275727(n))+2`
-/

namespace A339013.P3964029008149091246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (2 * A275727 n).toNat + 2

end

end A339013.P3964029008149091246

/-! ## A339013.P16301574173830594180

`A328570(A351576(n))+1`
-/

namespace A339013.P16301574173830594180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (A351576 n).toNat + 1

end

end A339013.P16301574173830594180

/-! ## A339013.P12856104977269048523

`2-(A339012(A005843(n))-A339012(n))`
-/

namespace A339013.P12856104977269048523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A339012 (A005843 n).toNat - A339012 n)

end

end A339013.P12856104977269048523

/-! ## A339013.P9524156407136173463

`A275832(A225901(n)+1+n)`
-/

namespace A339013.P9524156407136173463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 (A225901 n + 1 + (n : ℤ)).toNat

end

end A339013.P9524156407136173463

/-! ## A339013.P3072727682719913404

`A276084(A275733(n))+2`
-/

namespace A339013.P3072727682719913404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A275733 n).toNat + 2

end

end A339013.P3072727682719913404

/-! ## A339013.P10046018390909703347

`A055881(A225901(A225901(n)+n)+2)`
-/

namespace A339013.P10046018390909703347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A225901 (A225901 n + (n : ℤ)).toNat + 2).toNat

end

end A339013.P10046018390909703347

/-! ## A339013.P18034010037495275622

`A215887(A007623(n))+2`
-/

namespace A339013.P18034010037495275622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A007623 n).toNat + 2

end

end A339013.P18034010037495275622

/-!
# A339014: E.g.f.: exp(2 * (exp(x) - 1 - x - x^2 / 2)).

The programs for A339014, there is no canonical definition to state claims against.
-/

/-! ## A339014.P7831156424141438441

`A336345(∑[n+3])`
-/

namespace A339014.P7831156424141438441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339014.P7831156424141438441

/-! ## A339014.P6951952232149895440

`gcd(A000038(n), A336345(A027379(n+1)))`
-/

namespace A339014.P6951952232149895440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A336345 (A027379 (n + 1)).toNat)

end

end A339014.P6951952232149895440

/-! ## A339014.P17594731518005680554

`and(A260196(n), A336345(A027379(n+1)))`
-/

namespace A339014.P17594731518005680554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A336345 (A027379 (n + 1)).toNat)

end

end A339014.P17594731518005680554

/-! ## A339014.P8520761777636083089

`and(A260196(n), A336345(A055998(n+1)))`
-/

namespace A339014.P8520761777636083089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A336345 (A055998 (n + 1)).toNat)

end

end A339014.P8520761777636083089

/-! ## A339014.P9967716863569551636

`A336345(A027379(n+1))+A000038(n+1)`
-/

namespace A339014.P9967716863569551636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (A027379 (n + 1)).toNat + A000038 (n + 1)

end

end A339014.P9967716863569551636

/-! ## A339014.P6787306015224728140

`A336345(A027379(n+1))%A001861(n+1)`
-/

namespace A339014.P6787306015224728140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336345 (A027379 (n + 1)).toNat) (A001861 (n + 1))

end

end A339014.P6787306015224728140

/-! ## A339014.P17505207645291966648

`A336345(A027379(n+1))+A005369(2*n+1)`
-/

namespace A339014.P17505207645291966648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (A027379 (n + 1)).toNat + A005369 (2 * n + 1)

end

end A339014.P17505207645291966648

/-! ## A339014.P17501263168892491451

`or(A005369(2*n+1), A336345(A055998(n+1)))`
-/

namespace A339014.P17501263168892491451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 (2 * n + 1)) (A336345 (A055998 (n + 1)).toNat)

end

end A339014.P17501263168892491451

/-! ## A339014.P18333201216974617326

`A057427(A007318(n))*A336345(A027379(n+1))`
-/

namespace A339014.P18333201216974617326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A007318 n).toNat * A336345 (A027379 (n + 1)).toNat

end

end A339014.P18333201216974617326

/-!
# A339015: Column sums of A339016.

The programs for A339015, there is no canonical definition to state claims against.
-/

/-! ## A339015.P6862926458446064187

`A241512(A124920(n+1))+1`
-/

namespace A339015.P6862926458446064187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 (A124920 (n + 1)).toNat + 1

end

end A339015.P6862926458446064187

/-!
# A339016: A classification of permutations based on their cycle length and the size of the centralizer of their cycle type. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A339016, there is no canonical definition to state claims against.
-/

/-! ## A339016.P17479155874370229431

`A073200(A181229(n+1)*A275069(2*(n+2)))`
-/

namespace A339016.P17479155874370229431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 (A181229 (n + 1) * A275069 (2 * (n + 2))).toNat

end

end A339016.P17479155874370229431

/-!
# A339017: E.g.f.: exp(2 * (exp(x) - 1 - x - x^2 / 2 - x^3 / 6)).

The programs for A339017, there is no canonical definition to state claims against.
-/

/-! ## A339017.P4222787180104293562

`A336345(∑[n+4]+2)`
-/

namespace A339017.P4222787180104293562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A339017.P4222787180104293562

/-! ## A339017.P3107383661248403057

`A336345(A046691(n+2))/gcd(n, n+1)`
-/

namespace A339017.P3107383661248403057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336345 (A046691 (n + 2)).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A339017.P3107383661248403057

/-! ## A339017.P10022820232782708269

`gcd(A000038(n), A336345(A046691(n+2)))`
-/

namespace A339017.P10022820232782708269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A336345 (A046691 (n + 2)).toNat)

end

end A339017.P10022820232782708269

/-! ## A339017.P9896550986031241362

`char[A025669(n+1)]*A336345(A046691(n+2))`
-/

namespace A339017.P9896550986031241362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A336345 (A046691 (n + 2)).toNat

end

end A339017.P9896550986031241362

/-! ## A339017.P5354893040767768476

`A336345(A046691(n+2))^A007318(C(n, n²))`
-/

namespace A339017.P5354893040767768476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336345 (A046691 (n + 2)).toNat : ℚ) ^ (A007318 (Nat.choose n (n ^ 2)) : ℤ)

end

end A339017.P5354893040767768476

/-! ## A339017.P16755605413191274093

`A007318(C(n+5, 2))*A336345(A046691(n+2))`
-/

namespace A339017.P16755605413191274093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 5) 2) * A336345 (A046691 (n + 2)).toNat

end

end A339017.P16755605413191274093

/-! ## A339017.P12772044882010588786

`A336345(A046691(n+2))+char[A044334(n+1)-1]`
-/

namespace A339017.P12772044882010588786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044334 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339017.P12772044882010588786

/-! ## A339017.P4354971352812461301

`A014963(A008458(n))*A336345(A046691(n+2))`
-/

namespace A339017.P4354971352812461301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A336345 (A046691 (n + 2)).toNat

end

end A339017.P4354971352812461301

/-! ## A339017.P6109142438025440830

`A007318(A000217(n+3))*A336345(A046691(n+2))`
-/

namespace A339017.P6109142438025440830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 3)).toNat * A336345 (A046691 (n + 2)).toNat

end

end A339017.P6109142438025440830

/-!
# A339019: Square table read by upwards antidiagonals: T(m,n) = A103438(2*m-1,n)/A103438(1,n) for m>=1, n>=1.

The programs for A339019, there is no canonical definition to state claims against.
-/

/-! ## A339019.P10061306582855248537

`A325784(A179454(n+1))`
-/

namespace A339019.P10061306582855248537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325784 (A179454 (n + 1)).toNat

end

end A339019.P10061306582855248537

/-! ## A339019.P1986952333469858572

`A121581(A255831(n))`
-/

namespace A339019.P1986952333469858572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121581 (A255831 n).toNat

end

end A339019.P1986952333469858572

/-! ## A339019.P13433499791408043567

`A121701(A329332(n)²)`
-/

namespace A339019.P13433499791408043567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121701 (A329332 n ^ 2).toNat

end

end A339019.P13433499791408043567

/-! ## A339019.P4412886427114194388

`A175857(A294609(n+1))`
-/

namespace A339019.P4412886427114194388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175857 (A294609 (n + 1)).toNat

end

end A339019.P4412886427114194388

/-! ## A339019.P6066420768627440252

`A175857(A294950(n+1))`
-/

namespace A339019.P6066420768627440252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175857 (A294950 (n + 1)).toNat

end

end A339019.P6066420768627440252

/-!
# A339022: a(n) is the floor of the average distance among first n primes.

The programs for A339022, there is no canonical definition to state claims against.
-/

/-! ## A339022.P11960198910343280511

`floor(A332094(n+2)/A336814(n+2))`
-/

namespace A339022.P11960198910343280511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332094 (n + 2) : ℚ) / (A336814 (n + 2) : ℚ)⌋

end

end A339022.P11960198910343280511

/-! ## A339022.P12982850323029086489

`round(∑[atan(A092702(n+1))])`
-/

namespace A339022.P12982850323029086489
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A092702 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339022.P12982850323029086489

/-! ## A339022.P13500448631821686867

`floor(log2(A218602(n+2)+A218212(n+1)))`
-/

namespace A339022.P13500448631821686867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A218602 (n + 2) + A218212 (n + 1)).toNat

end

end A339022.P13500448631821686867

/-! ## A339022.P2485596183824840043

`A144769(n+1)+A055642(A000009(3*n+2))`
-/

namespace A339022.P2485596183824840043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (n + 1) + A055642 (A000009 (3 * n + 2)).toNat

end

end A339022.P2485596183824840043

/-! ## A339022.P3989675120592977877

`A226764(A244396(n+2))`
-/

namespace A339022.P3989675120592977877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226764 (A244396 (n + 2)).toNat

end

end A339022.P3989675120592977877

/-!
# A339023: Replace each digit d in the decimal representation of n with the digital root of n*d.

The programs for A339023, there is no canonical definition to state claims against.
-/

/-! ## A339023.P17731618001924730535

`A169908(n)%A169910(A008458(n))`
-/

namespace A339023.P17731618001924730535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169908 n) (A169910 (A008458 n).toNat)

end

end A339023.P17731618001924730535

/-!
# A339025: Sum of n-th powers of entries in the n-th row of Stern's triangle (A337277).

The programs for A339025, there is no canonical definition to state claims against.
-/

/-! ## A339025.P11155582355466889447

`A310288(A000045(n²))`
-/

namespace A339025.P11155582355466889447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310288 (A000045 (n ^ 2)).toNat

end

end A339025.P11155582355466889447

/-!
# A339026: Number of pairs (x,y): 1 <= x < y <= n*n, such that x*y is a square.

The programs for A339026, the canonical program `A339026.P11730030012353626513` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339026 has offset 1).

The definition of A339026 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338894, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339026.P11730030012353626513

`(A338894(n+1)-(n+1)²)/2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A339026

/-- `(A338894(n+1)-(n+1)²)/2` -/
def P11730030012353626513.Spec : Prop :=
  ∀ n, P11730030012353626513.a n = (A339026 (n + 1) : ℚ)

end A339026

/-! ## A339026.P3393619570540943873

`A132189((n+1)²)/2`
-/

namespace A339026.P3393619570540943873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132189 ((n + 1) ^ 2) : ℚ) / 2

end

end A339026.P3393619570540943873

namespace A339026

/-- `A132189((n+1)²)/2` -/
def P3393619570540943873.Spec : Prop :=
  ∀ n, P3393619570540943873.a n = (A339026 (n + 1) : ℚ)

end A339026

/-! ## A339026.P6750583901001338946

`(A338894(n+1)-A000217(n)-∑[n+1])/2`
-/

namespace A339026.P6750583901001338946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338894 (n + 1) - A000217 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A339026.P6750583901001338946

namespace A339026

/-- `(A338894(n+1)-A000217(n)-∑[n+1])/2` -/
def P6750583901001338946.Spec : Prop :=
  ∀ n, P6750583901001338946.a n = (A339026 (n + 1) : ℚ)

end A339026

/-! ## A339026.P9656606792727581454

`A273943(A338894(n+1)-(n+1)²)`
-/

namespace A339026.P9656606792727581454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A338894 (n + 1) - ((n + 1) ^ 2 : ℤ)).toNat

end

end A339026.P9656606792727581454

namespace A339026

/-- `A273943(A338894(n+1)-(n+1)²)` -/
def P9656606792727581454.Spec : Prop :=
  ∀ n, P9656606792727581454.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P11979477198654602493

`A132345((n+1)²)`
-/

namespace A339026.P11979477198654602493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 ((n + 1) ^ 2)

end

end A339026.P11979477198654602493

namespace A339026

/-- `A132345((n+1)²)` -/
def P11979477198654602493.Spec : Prop :=
  ∀ n, P11979477198654602493.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P3863743480798521270

`A120486((n+1)²)-(n+1)²`
-/

namespace A339026.P3863743480798521270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120486 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A339026.P3863743480798521270

namespace A339026

/-- `A120486((n+1)²)-(n+1)²` -/
def P3863743480798521270.Spec : Prop :=
  ∀ n, P3863743480798521270.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P7662805120982788790

`A132345(∑[2*n+1])+(2*n)%2`
-/

namespace A339026.P7662805120982788790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (∑ j ∈ Finset.range (n + 1), f1 j) + ((2 * n % 2 : ℕ) : ℤ)

end

end A339026.P7662805120982788790

namespace A339026

/-- `A132345(∑[2*n+1])+(2*n)%2` -/
def P7662805120982788790.Spec : Prop :=
  ∀ n, P7662805120982788790.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P11506731088337556340

`record[A132345(A079097(n))]`
-/

namespace A339026.P11506731088337556340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (A079097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339026.P11506731088337556340

namespace A339026

/-- `record[A132345(A079097(n))]` -/
def P11506731088337556340.Spec : Prop :=
  ∀ n, P11506731088337556340.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P5223974900116507840

`record[A132345(A117910(n)²)]`
-/

namespace A339026.P5223974900116507840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339026.P5223974900116507840

namespace A339026

/-- `record[A132345(A117910(n)²)]` -/
def P5223974900116507840.Spec : Prop :=
  ∀ n, P5223974900116507840.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P13178288574426794262

`record[A132345(A126759(n)²)]`
-/

namespace A339026.P13178288574426794262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (A126759 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339026.P13178288574426794262

namespace A339026

/-- `record[A132345(A126759(n)²)]` -/
def P13178288574426794262.Spec : Prop :=
  ∀ n, P13178288574426794262.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P8625225640529448378

`record[A132345(A133310(n)²)]`
-/

namespace A339026.P8625225640529448378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339026.P8625225640529448378

namespace A339026

/-- `record[A132345(A133310(n)²)]` -/
def P8625225640529448378.Spec : Prop :=
  ∀ n, P8625225640529448378.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P7773535239985043229

`record[A132345(A134478(n)²)]`
-/

namespace A339026.P7773535239985043229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339026.P7773535239985043229

namespace A339026

/-- `record[A132345(A134478(n)²)]` -/
def P7773535239985043229.Spec : Prop :=
  ∀ n, P7773535239985043229.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P15964522702618288023

`record[A132345(A286552(n)²)]`
-/

namespace A339026.P15964522702618288023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (A286552 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339026.P15964522702618288023

namespace A339026

/-- `record[A132345(A286552(n)²)]` -/
def P15964522702618288023.Spec : Prop :=
  ∀ n, P15964522702618288023.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P7798868146809767578

`record[A132345(A000463(n+1))]`
-/

namespace A339026.P7798868146809767578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (A000463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339026.P7798868146809767578

namespace A339026

/-- `record[A132345(A000463(n+1))]` -/
def P7798868146809767578.Spec : Prop :=
  ∀ n, P7798868146809767578.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P15025451122722679116

`record[A132345(A236333(n+3))]`
-/

namespace A339026.P15025451122722679116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (A236333 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339026.P15025451122722679116

namespace A339026

/-- `record[A132345(A236333(n+3))]` -/
def P15025451122722679116.Spec : Prop :=
  ∀ n, P15025451122722679116.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P10905349218798837546

`A338894(n+1)%A120486((n+1)²)`
-/

namespace A339026.P10905349218798837546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338894 (n + 1)) (A120486 ((n + 1) ^ 2))

end

end A339026.P10905349218798837546

namespace A339026

/-- `A338894(n+1)%A120486((n+1)²)` -/
def P10905349218798837546.Spec : Prop :=
  ∀ n, P10905349218798837546.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P16281112796014090443

`record[A132345(n+1)/A007913(n+1)]`
-/

namespace A339026.P16281112796014090443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132345 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339026.P16281112796014090443

namespace A339026

/-- `record[A132345(n+1)/A007913(n+1)]` -/
def P16281112796014090443.Spec : Prop :=
  ∀ n, P16281112796014090443.a n = (A339026 (n + 1) : ℚ)

end A339026

/-! ## A339026.P14164546964770248383

`A132345(A000290(n+1))%A085473(n)`
-/

namespace A339026.P14164546964770248383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132345 (A000290 (n + 1)).toNat) (A085473 n)

end

end A339026.P14164546964770248383

namespace A339026

/-- `A132345(A000290(n+1))%A085473(n)` -/
def P14164546964770248383.Spec : Prop :=
  ∀ n, P14164546964770248383.a n = A339026 (n + 1)

end A339026

/-! ## A339026.P10705705776359250263

`∑{d}[A132345(A000290(n+1)), A000010(#)]`
-/

namespace A339026.P10705705776359250263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (A000290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A339026.P10705705776359250263

namespace A339026

/-- `∑{d}[A132345(A000290(n+1)), A000010(#)]` -/
def P10705705776359250263.Spec : Prop :=
  ∀ n, P10705705776359250263.a n = A339026 (n + 1)

end A339026

/-!
# A339027: E.g.f.: exp(2 * (exp(x) - 1 - x - x^2 / 2 - x^3 / 6 - x^4 / 24)).

The programs for A339027, there is no canonical definition to state claims against.
-/

/-! ## A339027.P10441225972282391481

`A336345(A052905(n+2))`
-/

namespace A339027.P10441225972282391481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (A052905 (n + 2)).toNat

end

end A339027.P10441225972282391481

/-! ## A339027.P2842063560729789672

`A336345(A046691(n+3)-1)`
-/

namespace A339027.P2842063560729789672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (A046691 (n + 3) - 1).toNat

end

end A339027.P2842063560729789672

/-! ## A339027.P9252702104315523122

`A336345(A027379(n+3)-2)`
-/

namespace A339027.P9252702104315523122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (A027379 (n + 3) - 2).toNat

end

end A339027.P9252702104315523122

/-! ## A339027.P15229324483753970336

`A336345(A055998(n+3)-2)`
-/

namespace A339027.P15229324483753970336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (A055998 (n + 3) - 2).toNat

end

end A339027.P15229324483753970336

/-! ## A339027.P632798014045389092

`A336345(A000217(n+5)-5)`
-/

namespace A339027.P632798014045389092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (A000217 (n + 5) - 5).toNat

end

end A339027.P632798014045389092

/-! ## A339027.P4999564441991179407

`A336345(A000124(n+5)-6)`
-/

namespace A339027.P4999564441991179407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (A000124 (n + 5) - 6).toNat

end

end A339027.P4999564441991179407

/-! ## A339027.P11903601547784784855

`A336345(A167614(n+1)+A016777(n+1))`
-/

namespace A339027.P11903601547784784855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (A167614 (n + 1) + A016777 (n + 1)).toNat

end

end A339027.P11903601547784784855

/-!
# A339029: Expansion of (1 + 4*x - 20*x^2 + 8*x^3 + 33*x^4 - 4*x^5 - 33*x^6)/(1 - 2*x)^4.

The programs for A339029, the canonical program `A339029.P16138228625852268300` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339029 has offset 0).

The definition of A339029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x-20x^2+8x^3+33x^4-4x^5-33x^6)/(1-8x+24x^2-32x^3+16x^4))` (program `A339029.P16138228625852268300`, by `A339029.P16138228625852268300.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339029.P16138228625852268300

`ogf((1+4x-20x^2+8x^3+33x^4-4x^5-33x^6)/(1-8x+24x^2-32x^3+16x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A339029

/-- `ogf((1+4x-20x^2+8x^3+33x^4-4x^5-33x^6)/(1-8x+24x^2-32x^3+16x^4))` -/
def P16138228625852268300.Spec : Prop :=
  ∀ n, P16138228625852268300.a n = A339029 n

theorem P16138228625852268300.correct : P16138228625852268300.Spec := by
  intro n
  simp only [A339029]

end A339029

/-! ## A339029.P10831524938909503479

`A333650(∑[n+3]+n+4)`
-/

namespace A339029.P10831524938909503479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333650 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A339029.P10831524938909503479

namespace A339029

/-- `A333650(∑[n+3]+n+4)` -/
def P10831524938909503479.Spec : Prop :=
  ∀ n, P10831524938909503479.a n = A339029 n

end A339029

/-! ## A339029.P5117062162288222440

`record[A333650(A019304(n))]`
-/

namespace A339029.P5117062162288222440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333650 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339029.P5117062162288222440

namespace A339029

/-- `record[A333650(A019304(n))]` -/
def P5117062162288222440.Spec : Prop :=
  ∀ n, P5117062162288222440.a n = A339029 n

end A339029

/-! ## A339029.P3734990439876246705

`or(A151622(n), A333650(A141214(n+1)))`
-/

namespace A339029.P3734990439876246705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151622 n) (A333650 (A141214 (n + 1)).toNat)

end

end A339029.P3734990439876246705

namespace A339029

/-- `or(A151622(n), A333650(A141214(n+1)))` -/
def P3734990439876246705.Spec : Prop :=
  ∀ n, P3734990439876246705.a n = A339029 n

end A339029

/-! ## A339029.P8034043861838611023

`char[A002262(n)]*A333650(A141214(n+1))`
-/

namespace A339029.P8034043861838611023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A333650 (A141214 (n + 1)).toNat

end

end A339029.P8034043861838611023

namespace A339029

/-- `char[A002262(n)]*A333650(A141214(n+1))` -/
def P8034043861838611023.Spec : Prop :=
  ∀ n, P8034043861838611023.a n = A339029 n

end A339029

/-!
# A339030: T(n, k) = Sum_{p in P(n, k)} card(p), where P(n, k) is the set of set partitions of {1,2,...,n} where the largest block has size k and card(p) is the number of blocks of p. Triangle T(n, k) for 0 <= k <= n, read by rows.

The programs for A339030, there is no canonical definition to state claims against.
-/

/-! ## A339030.P5744271192490533385

`A265552(A059297(n))%32`
-/

namespace A339030.P5744271192490533385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265552 (A059297 n).toNat) 32

end

end A339030.P5744271192490533385

/-! ## A339030.P8819400842066745121

`and(A006530(A284546(n)), A059297(n))`
-/

namespace A339030.P8819400842066745121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A284546 n).toNat) (A059297 n)

end

end A339030.P8819400842066745121

/-! ## A339030.P2271749316609379900

`A059297(n)-A269303(A351241(n+1))`
-/

namespace A339030.P2271749316609379900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059297 n - A269303 (A351241 (n + 1)).toNat

end

end A339030.P2271749316609379900

/-! ## A339030.P6515229868080726038

`xor(A059297(n), A249820(A065672(2*n+1)))`
-/

namespace A339030.P6515229868080726038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059297 n) (A249820 (A065672 (2 * n + 1)).toNat)

end

end A339030.P6515229868080726038

/-!
# A339031: T(n, k) = k*P(n, k), where P(n, k) is the number of partitions of an n-set with k blocks, the largest of which has the size n - k + 1. Triangle T(n, k) for 0 <= k <= n, read by rows.

The programs for A339031, there is no canonical definition to state claims against.
-/

/-! ## A339031.P5222259362233589186

`A114219(n)*A198321(n)`
-/

namespace A339031.P5222259362233589186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 n * A198321 n

end

end A339031.P5222259362233589186

/-! ## A339031.P10017451400514834376

`A007318(abs(1-n))*A114219(n)`
-/

namespace A339031.P10017451400514834376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |1 - (n : ℤ)|.toNat * A114219 n

end

end A339031.P10017451400514834376

/-! ## A339031.P810833077661803870

`A114219(n)*A199011(A061579(n))`
-/

namespace A339031.P810833077661803870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 n * A199011 (A061579 n).toNat

end

end A339031.P810833077661803870

/-! ## A339031.P10580220100701271619

`A114219(n)*A135225(A007401(n+1))`
-/

namespace A339031.P10580220100701271619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 n * A135225 (A007401 (n + 1)).toNat

end

end A339031.P10580220100701271619

/-! ## A339031.P13341247821256140882

`gcd(A002262(n), A269955(n))*A198321(n)`
-/

namespace A339031.P13341247821256140882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A002262 n) (A269955 n) : ℤ) * A198321 n

end

end A339031.P13341247821256140882

/-! ## A339031.P3961775377857278288

`A097805(A181133(n+1))*A144328(n+1)`
-/

namespace A339031.P3961775377857278288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A181133 (n + 1)).toNat * A144328 (n + 1)

end

end A339031.P3961775377857278288

/-!
# A339032: Expansion of (4*x^5 - 9*x^4 + 17*x^3 - 15*x^2 + 6*x - 1)/((2*x - 1)^2*(x - 1)^3).

The programs for A339032, the canonical program `A339032.P11354904030216077510` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339032 has offset 0).

The definition of A339032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x+15x^2-17x^3+9x^4-4x^5)/(1-7x+19x^2-25x^3+16x^4-4x^5))` (program `A339032.P11354904030216077510`, by `A339032.P11354904030216077510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339032.P11354904030216077510

`ogf((1-6x+15x^2-17x^3+9x^4-4x^5)/(1-7x+19x^2-25x^3+16x^4-4x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A339032

/-- `ogf((1-6x+15x^2-17x^3+9x^4-4x^5)/(1-7x+19x^2-25x^3+16x^4-4x^5))` -/
def P11354904030216077510.Spec : Prop :=
  ∀ n, P11354904030216077510.a n = A339032 n

theorem P11354904030216077510.correct : P11354904030216077510.Spec := by
  intro n
  simp only [A339032]

end A339032

/-! ## A339032.P13374548709492862674

`(n+2)*ceil(2^(n-1))-1-n²`
-/

namespace A339032.P13374548709492862674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - 1 - (n ^ 2 : ℤ)

end

end A339032.P13374548709492862674

namespace A339032

/-- `(n+2)*ceil(2^(n-1))-1-n²` -/
def P13374548709492862674.Spec : Prop :=
  ∀ n, P13374548709492862674.a n = A339032 n

end A339032

/-! ## A339032.P7038885926838086064

`abs((n+2)*2^(n-1)-1-n^ceil(atan(n)))`
-/

namespace A339032.P7038885926838086064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1 - (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)|

end

end A339032.P7038885926838086064

namespace A339032

/-- `abs((n+2)*2^(n-1)-1-n^ceil(atan(n)))` -/
def P7038885926838086064.Spec : Prop :=
  ∀ n, P7038885926838086064.a n = (A339032 n : ℚ)

end A339032

/-! ## A339032.P8303521035946764700

`abs(round(1/acot(n))+2^n+n*2^(n-1)-(n²-n)-2*n-1)`
-/

namespace A339032.P8303521035946764700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ) + ((2 ^ n : ℚ) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) - (2 * n : ℚ) - 1)|

end

end A339032.P8303521035946764700

namespace A339032

/-- `abs(round(1/acot(n))+2^n+n*2^(n-1)-(n²-n)-2*n-1)` -/
def P8303521035946764700.Spec : Prop :=
  ∀ n, P8303521035946764700.a n = (A339032 n : ℚ)

end A339032

/-! ## A339032.P16458587236463647393

`floor(round(1/acot(n))+2^n+n*2^(n-1)-(n²-n)-2*n-1)`
-/

namespace A339032.P16458587236463647393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ) + ((2 ^ n : ℚ) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) - (2 * n : ℚ) - 1)⌋

end

end A339032.P16458587236463647393

namespace A339032

/-- `floor(round(1/acot(n))+2^n+n*2^(n-1)-(n²-n)-2*n-1)` -/
def P16458587236463647393.Spec : Prop :=
  ∀ n, P16458587236463647393.a n = A339032 n

end A339032

/-! ## A339032.P12977407497000476040

`round(round(1/acot(n))+2^n+n*2^(n-1)-(n²-n)-2*n-1)`
-/

namespace A339032.P12977407497000476040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ) + ((2 ^ n : ℚ) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) - (2 * n : ℚ) - 1))

end

end A339032.P12977407497000476040

namespace A339032

/-- `round(round(1/acot(n))+2^n+n*2^(n-1)-(n²-n)-2*n-1)` -/
def P12977407497000476040.Spec : Prop :=
  ∀ n, P12977407497000476040.a n = A339032 n

end A339032

/-!
# A339033: Triangle read by rows, T(n, k) for 0 <= k <= n. T(n, 0) = 0^n; T(n, n) = n!; otherwise T(n, k) = (n + 1 - k)*(k - 1)!.

The programs for A339033, there is no canonical definition to state claims against.
-/

/-! ## A339033.P3057633124901305997

`A271707(n)-A339170(A339030(n))`
-/

namespace A339033.P3057633124901305997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271707 n - A339170 (A339030 n).toNat

end

end A339033.P3057633124901305997

/-! ## A339033.P11789050475660123471

`A271707(n)%A000079(A037920(n))`
-/

namespace A339033.P11789050475660123471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271707 n) (A000079 (A037920 n).toNat)

end

end A339033.P11789050475660123471

/-! ## A339033.P15302246308318797634

`and(A001489(A022172(n)), A271707(n))`
-/

namespace A339033.P15302246308318797634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001489 (A022172 n).toNat) (A271707 n)

end

end A339033.P15302246308318797634

/-! ## A339033.P10888937577277107348

`and(A002146(A064639(n)), A271707(n))`
-/

namespace A339033.P10888937577277107348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002146 (A064639 n).toNat) (A271707 n)

end

end A339033.P10888937577277107348

/-! ## A339033.P17448055277304994200

`A043537(A247594(n))*A108455(n+1)`
-/

namespace A339033.P17448055277304994200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A247594 n).toNat * A108455 (n + 1)

end

end A339033.P17448055277304994200

/-!
# A339034: Row sums of A339033.

The programs for A339034, there is no canonical definition to state claims against.
-/

/-! ## A339034.P12382964583151079799

`A014144(n)+Δ[A104150(n)]`
-/

namespace A339034.P12382964583151079799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014144 n + (f1 (n + 1) - f1 n)

end

end A339034.P12382964583151079799

/-! ## A339034.P5594665331947984560

`A014144(n)+Δ[A185387(n)]`
-/

namespace A339034.P5594665331947984560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014144 n + (f1 (n + 1) - f1 n)

end

end A339034.P5594665331947984560

/-! ## A339034.P9744741462105375445

`A094304(n+1)+A014144(n)`
-/

namespace A339034.P9744741462105375445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094304 (n + 1) + A014144 n

end

end A339034.P9744741462105375445

/-! ## A339034.P5844990570217689872

`Δ[A104150(n)]+∑[A003422(n)]`
-/

namespace A339034.P5844990570217689872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A339034.P5844990570217689872

/-! ## A339034.P5235050386251317371

`Δ[A185387(n)]+∑[A003422(n)]`
-/

namespace A339034.P5235050386251317371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A339034.P5235050386251317371

/-! ## A339034.P12077700327542029909

`A047920(A000124(n))+A014144(n)`
-/

namespace A339034.P12077700327542029909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000124 n).toNat + A014144 n

end

end A339034.P12077700327542029909

/-! ## A339034.P13540909644075077624

`A047920(A000124(n))+∑[A003422(n)]`
-/

namespace A339034.P13540909644075077624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000124 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339034.P13540909644075077624

/-!
# A339035: k is prime and 2*(k+1) is Zumkeller.

The programs for A339035, there is no canonical definition to state claims against.
-/

/-! ## A339035.P1445268963703075053

`eq[A103977(2*(n+1))², A277894(n)]`
-/

namespace A339035.P1445268963703075053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339035.P1445268963703075053

/-! ## A339035.P6819875210355600069

`p?[n*A179527(2*(n+1))]`
-/

namespace A339035.P6819875210355600069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A179527 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339035.P6819875210355600069

/-! ## A339035.P9863413255345318178

`eq[A143862(n), A179527(2*(n+1))]`
-/

namespace A339035.P9863413255345318178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339035.P9863413255345318178

/-! ## A339035.P9889007634398203349

`eq[A179527(2*(n+1)), A223135(n)]`
-/

namespace A339035.P9889007634398203349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339035.P9889007634398203349

/-! ## A339035.P5201255280064069148

`eq[A179527(2*(n+1)), A226378(n)]`
-/

namespace A339035.P5201255280064069148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339035.P5201255280064069148

/-! ## A339035.P16800696611426689025

`eq[A179527(2*(n+1)), A236937(n)]`
-/

namespace A339035.P16800696611426689025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339035.P16800696611426689025

/-! ## A339035.P2043057708448802109

`eq[A179527(2*(n+1)), A236938(n)]`
-/

namespace A339035.P2043057708448802109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339035.P2043057708448802109

/-! ## A339035.P10031903265482156899

`eq[A179527(2*(n+1)), A317086(n)]`
-/

namespace A339035.P10031903265482156899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339035.P10031903265482156899

/-! ## A339035.P7282229892637195773

`eq[A179527(2*(n+1)), A327642(n)]`
-/

namespace A339035.P7282229892637195773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339035.P7282229892637195773

/-! ## A339035.P13388725218837918407

`eq[A078772(n+2), A179527(2*(n+1))]`
-/

namespace A339035.P13388725218837918407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339035.P13388725218837918407

/-! ## A339035.P14849260502205466953

`eq[2, A068108(2*n+1)*A179527(2*(n+1))]`
-/

namespace A339035.P14849260502205466953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068108 (2 * n + 1) * A179527 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339035.P14849260502205466953

/-!
# A339036: Number of unlabeled connected loopless multigraphs with n edges rooted at one distinguished vertex.

The programs for A339036, there is no canonical definition to state claims against.
-/

/-! ## A339036.P11434409696629304560

`A148965(n)-A025672(A000142(n))`
-/

namespace A339036.P11434409696629304560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148965 n - A025672 (A000142 n).toNat

end

end A339036.P11434409696629304560

/-! ## A339036.P12172442940259301523

`A325412(A306902(n))`
-/

namespace A339036.P12172442940259301523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325412 (A306902 n).toNat

end

end A339036.P12172442940259301523

/-! ## A339036.P810748340327127476

`A258939(∑[n]^A196904(n+1))`
-/

namespace A339036.P810748340327127476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258939 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A196904 (n + 1) : ℤ))).toNat

end

end A339036.P810748340327127476

/-!
# A339037: Number of unlabeled connected loopless multigraphs with n edges rooted at one oriented edge.

The programs for A339037, there is no canonical definition to state claims against.
-/

/-! ## A339037.P16919428745809750914

`A289207(A150188(n)+A150225(n)+1)`
-/

namespace A339037.P16919428745809750914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A150188 n + (A150225 n + 1)).toNat

end

end A339037.P16919428745809750914

/-! ## A339037.P10181365752183973260

`A387141(A239073(n+1))`
-/

namespace A339037.P10181365752183973260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A239073 (n + 1)).toNat

end

end A339037.P10181365752183973260

/-!
# A339038: Number of unlabeled connected loopless multigraphs with n edges rooted at one unoriented edge.

The programs for A339038, there is no canonical definition to state claims against.
-/

/-! ## A339038.P3601505140156153895

`A285716(A083330(n))+A150250(n)`
-/

namespace A339038.P3601505140156153895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (A083330 n).toNat + A150250 n

end

end A339038.P3601505140156153895

/-! ## A339038.P10776960902848639343

`A285716(A083330(n))+A192543(A104632(n+2))`
-/

namespace A339038.P10776960902848639343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (A083330 n).toNat + A192543 (A104632 (n + 2)).toNat

end

end A339038.P10776960902848639343

/-!
# A339039: Number of unlabeled connected simple graphs with n edges rooted at one distinguished vertex.

The programs for A339039, there is no canonical definition to state claims against.
-/

/-! ## A339039.P15361832546894171667

`A230980(2*A257562(n))`
-/

namespace A339039.P15361832546894171667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * A257562 n).toNat

end

end A339039.P15361832546894171667

/-! ## A339039.P3266971782038906594

`A056172(4*A257562(n))`
-/

namespace A339039.P3266971782038906594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (4 * A257562 n).toNat

end

end A339039.P3266971782038906594

/-! ## A339039.P7039400067429508787

`A008617(12*A024175(n))`
-/

namespace A339039.P7039400067429508787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (12 * A024175 n).toNat

end

end A339039.P7039400067429508787

/-! ## A339039.P140934737087787367

`A148301(n)+A025466(A058835(n))`
-/

namespace A339039.P140934737087787367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148301 n + A025466 (A058835 n).toNat

end

end A339039.P140934737087787367

/-!
# A339040: Number of unlabeled connected simple graphs with n edges rooted at two noninterchangeable vertices.

The programs for A339040, there is no canonical definition to state claims against.
-/

/-! ## A339040.P17767014925576014021

`A194640(A054108(n))`
-/

namespace A339040.P17767014925576014021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A054108 n).toNat

end

end A339040.P17767014925576014021

/-! ## A339040.P16651268927414234084

`∑[A331269(A055882(n))]`
-/

namespace A339040.P16651268927414234084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331269 (A055882 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339040.P16651268927414234084

/-!
# A339041: Number of unlabeled connected simple graphs with n edges rooted at two indistinguishable vertices.

The programs for A339041, there is no canonical definition to state claims against.
-/

/-! ## A339041.P2245063941288919930

`A243571(A001550(n))-A247805(2*n+3)`
-/

namespace A339041.P2245063941288919930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243571 (A001550 n).toNat - A247805 (2 * n + 3)

end

end A339041.P2245063941288919930

/-! ## A339041.P3716710845396975112

`2*a(floor(n/2))-(1-A167865(((n+1)²-(n+1))*a(n-1)))` with `a(0)=1`
-/

namespace A339041.P3716710845396975112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat - (1 - A167865 ((((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ)) * a (n - 1)).toNat)

end

end A339041.P3716710845396975112

/-!
# A339042: Number of unlabeled connected loopless multigraphs with n edges rooted at two noninterchangeable vertices.

The programs for A339042, there is no canonical definition to state claims against.
-/

/-! ## A339042.P545379917070166217

`A059169(6*A151171(n))`
-/

namespace A339042.P545379917070166217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (6 * A151171 n).toNat

end

end A339042.P545379917070166217

/-! ## A339042.P14254583034235629017

`A002266(A199481(n+3)-n)`
-/

namespace A339042.P14254583034235629017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A199481 (n + 3) - (n : ℤ)).toNat

end

end A339042.P14254583034235629017

/-!
# A339043: Number of unlabeled connected loopless multigraphs with n edges rooted at two indistinguishable vertices.

The programs for A339043, there is no canonical definition to state claims against.
-/

/-! ## A339043.P7111964951234202688

`A222211(A151095(n)-A151760(n))`
-/

namespace A339043.P7111964951234202688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A151095 n - A151760 n).toNat

end

end A339043.P7111964951234202688

/-! ## A339043.P4546989969229158754

`ceil(A313781(lcm(n, a(n-1)))/(n+1))` with `a(0)=1`
-/

namespace A339043.P4546989969229158754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A313781 (Int.lcm (n : ℤ) (a (n - 1))) : ℚ) / (n + 1 : ℚ)⌉

end

end A339043.P4546989969229158754

/-!
# A339044: Number of unlabeled connected simple graphs with n edges rooted at one oriented edge.

The programs for A339044, there is no canonical definition to state claims against.
-/

/-! ## A339044.P17565212537344908227

`A030530(A377501(n+2)/2)`
-/

namespace A339044.P17565212537344908227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (SequenceMachineLib.roundAway ((A377501 (n + 2) : ℚ) / 2)).toNat

end

end A339044.P17565212537344908227

/-! ## A339044.P9096985105560456482

`A241830(A000957(n))+A104629(n)`
-/

namespace A339044.P9096985105560456482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241830 (A000957 n).toNat + A104629 n

end

end A339044.P9096985105560456482

/-! ## A339044.P13524208056047754380

`A125229(A005566(n))+A005554(n+1)`
-/

namespace A339044.P13524208056047754380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125229 (A005566 n).toNat + A005554 (n + 1)

end

end A339044.P13524208056047754380

/-!
# A339045: Number of connected loopless multigraphs with n edges rooted at two noninterchangeable vertices whose removal leaves a connected graph.

The programs for A339045, there is no canonical definition to state claims against.
-/

/-! ## A339045.P2232626592239042051

`or(floor(n/4), A166514(A308152(n+1)))`
-/

namespace A339045.P2232626592239042051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 4⌋ (A166514 (A308152 (n + 1)).toNat)

end

end A339045.P2232626592239042051

/-! ## A339045.P1527164441234201784

`A004526(A308152(n+1)+A006721(n))`
-/

namespace A339045.P1527164441234201784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A308152 (n + 1) + A006721 n).toNat

end

end A339045.P1527164441234201784

/-! ## A339045.P15617480967819320463

`A004526(A308152(n+1)+A008648(n))`
-/

namespace A339045.P15617480967819320463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A308152 (n + 1) + A008648 n).toNat

end

end A339045.P15617480967819320463

/-!
# A339046: Irregular triangle read by rows: row n gives the complete quadrupling system modulo N = 2*n + 1, for n >= 0.

The programs for A339046, there is no canonical definition to state claims against.
-/

/-! ## A339046.P698355707320328329

`A000120(A064704(n+1)*A118246(n))`
-/

namespace A339046.P698355707320328329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A064704 (n + 1) * A118246 n).toNat

end

end A339046.P698355707320328329

/-! ## A339046.P301246202864362812

`A000120(lcm(A036451(n), A110002(n+1)))`
-/

namespace A339046.P301246202864362812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A036451 n) (A110002 (n + 1)))

end

end A339046.P301246202864362812

/-! ## A339046.P3879706853948226971

`A000120(lcm(A064704(n+1), A118246(n)))`
-/

namespace A339046.P3879706853948226971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A064704 (n + 1)) (A118246 n))

end

end A339046.P3879706853948226971

/-! ## A339046.P13146079530938974464

`A272604(C(A039160(n+1), A037915(n)))`
-/

namespace A339046.P13146079530938974464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (Nat.choose (A039160 (n + 1)).toNat (A037915 n).toNat)

end

end A339046.P13146079530938974464

/-! ## A339046.P14054034565599001884

`A000120((n+1)*A049894(A006257(n+1)))`
-/

namespace A339046.P14054034565599001884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n + 1 : ℤ) * A049894 (A006257 (n + 1)).toNat).toNat

end

end A339046.P14054034565599001884

/-!
# A339047: a(n) gives the multiplicity for A154777(n) representable as x^2 + 2*y^2 with positive integers x and y, for n >= 1.

The programs for A339047, there is no canonical definition to state claims against.
-/

/-! ## A339047.P1047009364060795667

`floor(A002325(A154777(n+1))/2)`
-/

namespace A339047.P1047009364060795667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002325 (A154777 (n + 1)).toNat : ℚ) / 2⌋

end

end A339047.P1047009364060795667

/-! ## A339047.P9892067716199514027

`floor(A002325(lt[2, A033715(n)])/2)`
-/

namespace A339047.P9892067716199514027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2⌋

end

end A339047.P9892067716199514027

/-! ## A339047.P18073779478780494545

`floor(A033715(lt[2, A033715(n)])/4)`
-/

namespace A339047.P18073779478780494545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 4⌋

end

end A339047.P18073779478780494545

/-! ## A339047.P3685197154947287357

`floor(A002325(lt[4, A082564(n)²])/2)`
-/

namespace A339047.P3685197154947287357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2⌋

end

end A339047.P3685197154947287357

/-! ## A339047.P17816343501105402096

`floor(A002325(lt[4, A133692(n)²])/2)`
-/

namespace A339047.P17816343501105402096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2⌋

end

end A339047.P17816343501105402096

/-! ## A339047.P9913985266710369634

`floor(A002325(lt[2, A133692(2*n)])/2)`
-/

namespace A339047.P9913985266710369634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2⌋

end

end A339047.P9913985266710369634

/-!
# A339048: a(n) = 2*n^2 + 9.

The programs for A339048, the canonical program `A339048.P5604124551697449156` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339048 has offset 0).

The definition of A339048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+9` (program `A339048.P5604124551697449156`, by `A339048.P5604124551697449156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339048.P5604124551697449156

`2*n²+9`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A339048

/-- `2*n²+9` -/
def P5604124551697449156.Spec : Prop :=
  ∀ n, (P5604124551697449156.a n : ℤ) = A339048 n

theorem P5604124551697449156.correct : P5604124551697449156.Spec := by
  intro n
  simp only [A339048]

end A339048

/-! ## A339048.P3690328966550034149

`or(1, 2*(n^2+4))`
-/

namespace A339048.P3690328966550034149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * (n ^ 2 + 4))

end

end A339048.P3690328966550034149

namespace A339048

/-- `or(1, 2*(n^2+4))` -/
def P3690328966550034149.Spec : Prop :=
  ∀ n, (P3690328966550034149.a n : ℤ) = A339048 n

end A339048

/-! ## A339048.P7808983888100441360

`xor(1, 2*(n^2+4))`
-/

namespace A339048.P7808983888100441360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * (n ^ 2 + 4))

end

end A339048.P7808983888100441360

namespace A339048

/-- `xor(1, 2*(n^2+4))` -/
def P7808983888100441360.Spec : Prop :=
  ∀ n, (P7808983888100441360.a n : ℤ) = A339048 n

end A339048

/-! ## A339048.P115762823771442682

`∑[a(n-1)+4]` with `a(0)=9, a(1)=2`
-/

namespace A339048.P115762823771442682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339048.P115762823771442682

namespace A339048

/-- `∑[a(n-1)+4]` -/
def P115762823771442682.Spec : Prop :=
  ∀ n, (P115762823771442682.a n : ℤ) = A339048 n

end A339048

/-! ## A339048.P2429909297818164970

`abs(2*xor(-1, n²)-7)`
-/

namespace A339048.P2429909297818164970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * Int.xor (-1) (n ^ 2 : ℤ) - 7|

end

end A339048.P2429909297818164970

namespace A339048

/-- `abs(2*xor(-1, n²)-7)` -/
def P2429909297818164970.Spec : Prop :=
  ∀ n, P2429909297818164970.a n = A339048 n

end A339048

/-! ## A339048.P10865296493307770551

`abs(C(3*n+1-n, 2)-n+9)`
-/

namespace A339048.P10865296493307770551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose ((3 * n + 1 : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 9|

end

end A339048.P10865296493307770551

namespace A339048

/-- `abs(C(3*n+1-n, 2)-n+9)` -/
def P10865296493307770551.Spec : Prop :=
  ∀ n, P10865296493307770551.a n = A339048 n

end A339048

/-! ## A339048.P6754079577675809129

`abs(2*lcm(n, n+1)+9-n-n)`
-/

namespace A339048.P6754079577675809129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.lcm n (n + 1) + 9 : ℤ) - (n : ℤ) - (n : ℤ)|

end

end A339048.P6754079577675809129

namespace A339048

/-- `abs(2*lcm(n, n+1)+9-n-n)` -/
def P6754079577675809129.Spec : Prop :=
  ∀ n, P6754079577675809129.a n = A339048 n

end A339048

/-! ## A339048.P175916216588362055

`abs(A056220(n)+10)`
-/

namespace A339048.P175916216588362055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056220 n + 10|

end

end A339048.P175916216588362055

namespace A339048

/-- `abs(A056220(n)+10)` -/
def P175916216588362055.Spec : Prop :=
  ∀ n, P175916216588362055.a n = A339048 n

end A339048

/-! ## A339048.P9389830783693094974

`abs(A000217(2*n)+9-n)`
-/

namespace A339048.P9389830783693094974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (2 * n) + 9 - (n : ℤ)|

end

end A339048.P9389830783693094974

namespace A339048

/-- `abs(A000217(2*n)+9-n)` -/
def P9389830783693094974.Spec : Prop :=
  ∀ n, P9389830783693094974.a n = A339048 n

end A339048

/-! ## A339048.P17120506206886747924

`record[(n+1)*A001057(n)+9]`
-/

namespace A339048.P17120506206886747924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001057 n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339048.P17120506206886747924

namespace A339048

/-- `record[(n+1)*A001057(n)+9]` -/
def P17120506206886747924.Spec : Prop :=
  ∀ n, P17120506206886747924.a n = A339048 n

end A339048

/-! ## A339048.P11244052203815655801

`A241848(2*n)/2`
-/

namespace A339048.P11244052203815655801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241848 (2 * n) : ℚ) / 2

end

end A339048.P11244052203815655801

namespace A339048

/-- `A241848(2*n)/2` -/
def P11244052203815655801.Spec : Prop :=
  ∀ n, P11244052203815655801.a n = (A339048 n : ℚ)

end A339048

/-! ## A339048.P5591906980749434822

`(A241847(2*n)+1)/2`
-/

namespace A339048.P5591906980749434822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241847 (2 * n) + 1 : ℚ) / 2

end

end A339048.P5591906980749434822

namespace A339048

/-- `(A241847(2*n)+1)/2` -/
def P5591906980749434822.Spec : Prop :=
  ∀ n, P5591906980749434822.a n = (A339048 n : ℚ)

end A339048

/-! ## A339048.P5481665278375389192

`(A241849(2*n)-1)/2`
-/

namespace A339048.P5481665278375389192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241849 (2 * n) - 1 : ℚ) / 2

end

end A339048.P5481665278375389192

namespace A339048

/-- `(A241849(2*n)-1)/2` -/
def P5481665278375389192.Spec : Prop :=
  ∀ n, P5481665278375389192.a n = (A339048 n : ℚ)

end A339048

/-! ## A339048.P6440525528671471637

`A000027(A051890(n)+A005408(n+3))`
-/

namespace A339048.P6440525528671471637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051890 n + A005408 (n + 3)).toNat

end

end A339048.P6440525528671471637

namespace A339048

/-- `A000027(A051890(n)+A005408(n+3))` -/
def P6440525528671471637.Spec : Prop :=
  ∀ n, P6440525528671471637.a n = A339048 n

end A339048

/-! ## A339048.P4058813940323484449

`A020742(n²+1)`
-/

namespace A339048.P4058813940323484449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (n ^ 2 + 1)

end

end A339048.P4058813940323484449

namespace A339048

/-- `A020742(n²+1)` -/
def P4058813940323484449.Spec : Prop :=
  ∀ n, P4058813940323484449.a n = A339048 n

end A339048

/-! ## A339048.P8265157331652408238

`A005818(n²+3)`
-/

namespace A339048.P8265157331652408238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n ^ 2 + 3)

end

end A339048.P8265157331652408238

namespace A339048

/-- `A005818(n²+3)` -/
def P8265157331652408238.Spec : Prop :=
  ∀ n, P8265157331652408238.a n = A339048 n

end A339048

/-! ## A339048.P717630075778768153

`A020735(n²+3)`
-/

namespace A339048.P717630075778768153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n ^ 2 + 3)

end

end A339048.P717630075778768153

namespace A339048

/-- `A020735(n²+3)` -/
def P717630075778768153.Spec : Prop :=
  ∀ n, P717630075778768153.a n = A339048 n

end A339048

/-! ## A339048.P11653269347203229105

`A062545(n²+3)`
-/

namespace A339048.P11653269347203229105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (n ^ 2 + 3)

end

end A339048.P11653269347203229105

namespace A339048

/-- `A062545(n²+3)` -/
def P11653269347203229105.Spec : Prop :=
  ∀ n, P11653269347203229105.a n = A339048 n

end A339048

/-! ## A339048.P13761759124627952082

`A005408(n²+4)`
-/

namespace A339048.P13761759124627952082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n ^ 2 + 4)

end

end A339048.P13761759124627952082

namespace A339048

/-- `A005408(n²+4)` -/
def P13761759124627952082.Spec : Prop :=
  ∀ n, P13761759124627952082.a n = A339048 n

end A339048

/-!
# A339049: a(n) = A000010(2*n + 1)/A053447(n), for n >= 0.

The programs for A339049, there is no canonical definition to state claims against.
-/

/-! ## A339049.P6453168104070977838

`A000010(2*n+1)/A053447(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339049.P6453168104070977838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A053447 n : ℚ)

end

end A339049.P6453168104070977838

/-! ## A339049.P10302935104901275297

`A037225(n)/A053447(n)`
-/

namespace A339049.P10302935104901275297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 n : ℚ) / (A053447 n : ℚ)

end

end A339049.P10302935104901275297

/-! ## A339049.P9877728488398147516

`gcd(2, A002326(n))*A037226(n)`
-/

namespace A339049.P9877728488398147516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002326 n) : ℤ) * A037226 n

end

end A339049.P9877728488398147516

/-! ## A339049.P5791474138960472897

`ceil(A000010(n+1+n)/A053447(n))`
-/

namespace A339049.P5791474138960472897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1 + n) : ℚ) / (A053447 n : ℚ)⌉

end

end A339049.P5791474138960472897

/-! ## A339049.P5162236392053243384

`A000010(8*n+4)/A055388(n+1)`
-/

namespace A339049.P5162236392053243384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (8 * n + 4) : ℚ) / (A055388 (n + 1) : ℚ)

end

end A339049.P5162236392053243384

/-! ## A339049.P11723235342525043034

`A327813(Δ[n²])`
-/

namespace A339049.P11723235342525043034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327813 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A339049.P11723235342525043034

/-! ## A339049.P9869463399782959875

`A327813(2*n+1)%(n+2)`
-/

namespace A339049.P9869463399782959875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327813 (2 * n + 1)) (n + 2 : ℤ)

end

end A339049.P9869463399782959875

/-! ## A339049.P11340491956767827442

`A037225(n)/A007735(2*n+1)`
-/

namespace A339049.P11340491956767827442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 n : ℚ) / (A007735 (2 * n + 1) : ℚ)

end

end A339049.P11340491956767827442

/-! ## A339049.P17318907886124479520

`A000010(Δ[n²])/A007735(Δ[n²])`
-/

namespace A339049.P17318907886124479520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007735 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ)

end

end A339049.P17318907886124479520

/-! ## A339049.P13976146584560896351

`A000010(2*n+1)/A054705(2*n+1)`
-/

namespace A339049.P13976146584560896351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A054705 (2 * n + 1) : ℚ)

end

end A339049.P13976146584560896351

/-! ## A339049.P2686809733913531240

`A318622(2*A066393(2*n+1))`
-/

namespace A339049.P2686809733913531240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (2 * A066393 (2 * n + 1)).toNat

end

end A339049.P2686809733913531240

/-! ## A339049.P13272563389069024197

`filter[A327813(2*n+1), A102609(#)]`
-/

namespace A339049.P13272563389069024197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327813 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A339049.P13272563389069024197

/-!
# A339050: Triangle read by rows T(n, m) = F(2*m-1)*(n-m) + F(2*m), for 1 <= m <= n, where F = A000045 (Fibonacci).

The programs for A339050, there is no canonical definition to state claims against.
-/

/-! ## A339050.P14931188576972659872

`A323902(A303555(n+1))`
-/

namespace A339050.P14931188576972659872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (A303555 (n + 1)).toNat

end

end A339050.P14931188576972659872

/-! ## A339050.P6269313343552382701

`A193979(n)-A309528(A334629(n))`
-/

namespace A339050.P6269313343552382701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193979 n - A309528 (A334629 n).toNat

end

end A339050.P6269313343552382701

/-! ## A339050.P17067363357117068562

`A193979(n)-A054524(A089549(n+1))`
-/

namespace A339050.P17067363357117068562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193979 n - A054524 (A089549 (n + 1)).toNat

end

end A339050.P17067363357117068562

/-! ## A339050.P13544531848648189001

`or(A053218(n+1), A083025(A010927(n)))`
-/

namespace A339050.P13544531848648189001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053218 (n + 1)) (A083025 (A010927 n).toNat)

end

end A339050.P13544531848648189001

/-!
# A339051: Even bisection of the infinite Fibonacci word A096270.

The programs for A339051, the canonical program `A339051.P302812047121566327` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339051 has offset 0).

The definition of A339051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339051.P1720858498461055912

`floor(Δ[n²/ϕ])-floor(2*n/ϕ)`
-/

namespace A339051.P1720858498461055912
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ - ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋

end

end A339051.P1720858498461055912

namespace A339051

/-- `floor(Δ[n²/ϕ])-floor(2*n/ϕ)` -/
def P1720858498461055912.Spec : Prop :=
  ∀ n, P1720858498461055912.a n = A339051 n

end A339051

/-! ## A339051.P7858356961005727004

`(ceil(n*(3-sqrt(5)))+floor(Δ[(ϕ*n)²]))%2`
-/

namespace A339051.P7858356961005727004
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio * (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(n : ℝ) * (3 - Real.sqrt (5 : ℝ))⌉ + ⌊f1 (n + 1) - f1 n⌋) 2

end

end A339051.P7858356961005727004

namespace A339051

/-- `(ceil(n*(3-sqrt(5)))+floor(Δ[(ϕ*n)²]))%2` -/
def P7858356961005727004.Spec : Prop :=
  ∀ n, P7858356961005727004.a n = A339051 n

end A339051

/-! ## A339051.P6628556738250192944

`and(1, floor(Δ[(ϕ*n)²])+floor(2*ϕ*n)%2)`
-/

namespace A339051.P6628556738250192944
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio * (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (⌊f1 (n + 1) - f1 n⌋ + Int.tmod ⌊2 * (Real.goldenRatio * (n : ℝ))⌋ 2)

end

end A339051.P6628556738250192944

namespace A339051

/-- `and(1, floor(Δ[(ϕ*n)²])+floor(2*ϕ*n)%2)` -/
def P6628556738250192944.Spec : Prop :=
  ∀ n, P6628556738250192944.a n = A339051 n

end A339051

/-! ## A339051.P14296330095771496441

`char[(2*floor(ϕ*(n+1))+n)%(3*(floor(ϕ*n/2)+1)+n)]`
-/

namespace A339051.P14296330095771496441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)) (3 * (⌊Real.goldenRatio * ((n : ℚ) / 2 : ℝ)⌋ + 1) + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A339051.P14296330095771496441

namespace A339051

/-- `char[(2*floor(ϕ*(n+1))+n)%(3*(floor(ϕ*n/2)+1)+n)]` -/
def P14296330095771496441.Spec : Prop :=
  ∀ n, (P14296330095771496441.a n : ℤ) = A339051 n

end A339051

/-! ## A339051.P302812047121566327

`A096270(2*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A339051

/-- `A096270(2*n)` -/
def P302812047121566327.Spec : Prop :=
  ∀ n, P302812047121566327.a n = A339051 n

theorem P302812047121566327.correct : P302812047121566327.Spec := by
  intro n
  simp only [A339051]

end A339051

/-! ## A339051.P5493862671012592740

`and(1, A104326(2*n))`
-/

namespace A339051.P5493862671012592740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A104326 (2 * n))

end

end A339051.P5493862671012592740

namespace A339051

/-- `and(1, A104326(2*n))` -/
def P5493862671012592740.Spec : Prop :=
  ∀ n, P5493862671012592740.a n = A339051 n

end A339051

/-! ## A339051.P88762827606195578

`and(1, A003754(2*n+1))`
-/

namespace A339051.P88762827606195578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003754 (2 * n + 1))

end

end A339051.P88762827606195578

namespace A339051

/-- `and(1, A003754(2*n+1))` -/
def P88762827606195578.Spec : Prop :=
  ∀ n, P88762827606195578.a n = A339051 n

end A339051

/-! ## A339051.P12871358313922307981

`xor(A188187(n+1), A339824(n))`
-/

namespace A339051.P12871358313922307981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A188187 (n + 1)) (A339824 n)

end

end A339051.P12871358313922307981

namespace A339051

/-- `xor(A188187(n+1), A339824(n))` -/
def P12871358313922307981.Spec : Prop :=
  ∀ n, P12871358313922307981.a n = A339051 n

end A339051

/-! ## A339051.P2872279871644779734

`and(1, A282162(2*n))`
-/

namespace A339051.P2872279871644779734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A282162 (2 * n))

end

end A339051.P2872279871644779734

namespace A339051

/-- `and(1, A282162(2*n))` -/
def P2872279871644779734.Spec : Prop :=
  ∀ n, P2872279871644779734.a n = A339051 n

end A339051

/-! ## A339051.P4709477619060704960

`log2(A001468(2*n))`
-/

namespace A339051.P4709477619060704960
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001468 (2 * n) : ℝ)

end

end A339051.P4709477619060704960

namespace A339051

/-- `log2(A001468(2*n))` -/
def P4709477619060704960.Spec : Prop :=
  ∀ n, P4709477619060704960.a n = (A339051 n : ℝ)

end A339051

/-! ## A339051.P5286365636021946770

`A287523(2*(n+1))`
-/

namespace A339051.P5286365636021946770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (2 * (n + 1))

end

end A339051.P5286365636021946770

namespace A339051

/-- `A287523(2*(n+1))` -/
def P5286365636021946770.Spec : Prop :=
  ∀ n, P5286365636021946770.a n = A339051 n

end A339051

/-! ## A339051.P16131966749268364282

`A189479(A103517(n))`
-/

namespace A339051.P16131966749268364282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (A103517 n).toNat

end

end A339051.P16131966749268364282

namespace A339051

/-- `A189479(A103517(n))` -/
def P16131966749268364282.Spec : Prop :=
  ∀ n, P16131966749268364282.a n = A339051 n

end A339051

/-! ## A339051.P17203237699971915581

`A286746(A195121(2*n)+1)`
-/

namespace A339051.P17203237699971915581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 (A195121 (2 * n) + 1).toNat

end

end A339051.P17203237699971915581

namespace A339051

/-- `A286746(A195121(2*n)+1)` -/
def P17203237699971915581.Spec : Prop :=
  ∀ n, P17203237699971915581.a n = A339051 n

end A339051

/-! ## A339051.P16294718329045991477

`and(1, A345291(2*n))`
-/

namespace A339051.P16294718329045991477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A345291 (2 * n))

end

end A339051.P16294718329045991477

namespace A339051

/-- `and(1, A345291(2*n))` -/
def P16294718329045991477.Spec : Prop :=
  ∀ n, P16294718329045991477.a n = A339051 n

end A339051

/-! ## A339051.P6284519671235032117

`A003849(A276854(n))`
-/

namespace A339051.P6284519671235032117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A276854 n).toNat

end

end A339051.P6284519671235032117

namespace A339051

/-- `A003849(A276854(n))` -/
def P6284519671235032117.Spec : Prop :=
  ∀ n, P6284519671235032117.a n = A339051 n

end A339051

/-! ## A339051.P15846133299974302901

`A005614(A026351(2*n))`
-/

namespace A339051.P15846133299974302901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A026351 (2 * n)).toNat

end

end A339051.P15846133299974302901

namespace A339051

/-- `A005614(A026351(2*n))` -/
def P15846133299974302901.Spec : Prop :=
  ∀ n, P15846133299974302901.a n = A339051 n

end A339051

/-! ## A339051.P16702106873408181519

`A003849(A004976(n)-n)`
-/

namespace A339051.P16702106873408181519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A004976 n - (n : ℤ)).toNat

end

end A339051.P16702106873408181519

namespace A339051

/-- `A003849(A004976(n)-n)` -/
def P16702106873408181519.Spec : Prop :=
  ∀ n, P16702106873408181519.a n = A339051 n

end A339051

/-! ## A339051.P750804251316259040

`A005614(A066096(2*n)+1)`
-/

namespace A339051.P750804251316259040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A066096 (2 * n) + 1).toNat

end

end A339051.P750804251316259040

namespace A339051

/-- `A005614(A066096(2*n)+1)` -/
def P750804251316259040.Spec : Prop :=
  ∀ n, P750804251316259040.a n = A339051 n

end A339051

/-! ## A339051.P14450469229627043848

`A003849(A026351(2*n)-1)`
-/

namespace A339051.P14450469229627043848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A026351 (2 * n) - 1).toNat

end

end A339051.P14450469229627043848

namespace A339051

/-- `A003849(A026351(2*n)-1)` -/
def P14450469229627043848.Spec : Prop :=
  ∀ n, P14450469229627043848.a n = A339051 n

end A339051

/-! ## A339051.P7226661547614773601

`A005614(A099267(2*n+1)-1)`
-/

namespace A339051.P7226661547614773601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A099267 (2 * n + 1) - 1).toNat

end

end A339051.P7226661547614773601

namespace A339051

/-- `A005614(A099267(2*n+1)-1)` -/
def P7226661547614773601.Spec : Prop :=
  ∀ n, P7226661547614773601.a n = A339051 n

end A339051

/-!
# A339052: Odd bisection of the infinite Fibonacci word A096270.

The programs for A339052, the canonical program `A339052.P10319866431429922829` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339052 has offset 0).

The definition of A339052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339052.P16179130413602078962

`A001961(n+1)-A001965(n)`
-/

namespace A339052.P16179130413602078962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1) - A001965 n

end

end A339052.P16179130413602078962

namespace A339052

/-- `A001961(n+1)-A001965(n)` -/
def P16179130413602078962.Spec : Prop :=
  ∀ n, P16179130413602078962.a n = A339052 n

end A339052

/-! ## A339052.P10319866431429922829

`A005206(2*n+1)-A005206(2*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A339052

/-- `A005206(2*n+1)-A005206(2*n)` -/
def P10319866431429922829.Spec : Prop :=
  ∀ n, P10319866431429922829.a n = A339052 n

theorem P10319866431429922829.correct : P10319866431429922829.Spec := by
  intro n
  simp only [A339052]

end A339052

/-! ## A339052.P4744151411756507703

`record[xor(1, floor(ϕ*(n+1))-1)]%2`
-/

namespace A339052.P4744151411756507703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A339052.P4744151411756507703

namespace A339052

/-- `record[xor(1, floor(ϕ*(n+1))-1)]%2` -/
def P4744151411756507703.Spec : Prop :=
  ∀ n, P4744151411756507703.a n = A339052 n

end A339052

/-! ## A339052.P2712754722771534031

`and(1, record[xor(1, floor(ϕ*(n+1))-1)])`
-/

namespace A339052.P2712754722771534031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A339052.P2712754722771534031

namespace A339052

/-- `and(1, record[xor(1, floor(ϕ*(n+1))-1)])` -/
def P2712754722771534031.Spec : Prop :=
  ∀ n, P2712754722771534031.a n = A339052 n

end A339052

/-! ## A339052.P14131694490392868356

`floor(ϕ*floor(2*(n+1)/ϕ))%2`
-/

namespace A339052.P14131694490392868356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (⌊2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋ : ℝ)⌋ 2

end

end A339052.P14131694490392868356

namespace A339052

/-- `floor(ϕ*floor(2*(n+1)/ϕ))%2` -/
def P14131694490392868356.Spec : Prop :=
  ∀ n, P14131694490392868356.a n = A339052 n

end A339052

/-! ## A339052.P4463661691295254452

`1-floor(ceil(n*(3-sqrt(5)))/ϕ)%2`
-/

namespace A339052.P4463661691295254452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ⌊(⌈(n : ℝ) * (3 - Real.sqrt (5 : ℝ))⌉ : ℝ) / Real.goldenRatio⌋ 2

end

end A339052.P4463661691295254452

namespace A339052

/-- `1-floor(ceil(n*(3-sqrt(5)))/ϕ)%2` -/
def P4463661691295254452.Spec : Prop :=
  ∀ n, P4463661691295254452.a n = A339052 n

end A339052

/-! ## A339052.P12507904142654540945

`1-and(1, floor(ceil(n*(3-sqrt(5)))/ϕ))`
-/

namespace A339052.P12507904142654540945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 ⌊(⌈(n : ℝ) * (3 - Real.sqrt (5 : ℝ))⌉ : ℝ) / Real.goldenRatio⌋

end

end A339052.P12507904142654540945

namespace A339052

/-- `1-and(1, floor(ceil(n*(3-sqrt(5)))/ϕ))` -/
def P12507904142654540945.Spec : Prop :=
  ∀ n, P12507904142654540945.a n = A339052 n

end A339052

/-! ## A339052.P10512470234800390955

`1-char[floor(n*ϕ²)-ceil(xor(1, n)/2)]`
-/

namespace A339052.P10512470234800390955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - ⌈(Nat.xor 1 n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339052.P10512470234800390955

namespace A339052

/-- `1-char[floor(n*ϕ²)-ceil(xor(1, n)/2)]` -/
def P10512470234800390955.Spec : Prop :=
  ∀ n, P10512470234800390955.a n = A339052 n

end A339052

/-! ## A339052.P3435479330315727845

`floor(2*(n+1)/ϕ)-floor(Δ[n²/ϕ])`
-/

namespace A339052.P3435479330315727845
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋ - ⌊f1 (n + 1) - f1 n⌋

end

end A339052.P3435479330315727845

namespace A339052

/-- `floor(2*(n+1)/ϕ)-floor(Δ[n²/ϕ])` -/
def P3435479330315727845.Spec : Prop :=
  ∀ n, P3435479330315727845.a n = A339052 n

end A339052

/-! ## A339052.P11195706851034188438

`C(floor(2*(n+1)/ϕ), ceil((2*n+1)/ϕ))`
-/

namespace A339052.P11195706851034188438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋.toNat ⌈(2 * n + 1 : ℝ) / Real.goldenRatio⌉.toNat

end

end A339052.P11195706851034188438

namespace A339052

/-- `C(floor(2*(n+1)/ϕ), ceil((2*n+1)/ϕ))` -/
def P11195706851034188438.Spec : Prop :=
  ∀ n, (P11195706851034188438.a n : ℤ) = A339052 n

end A339052

/-! ## A339052.P1418286472100870273

`and(1, floor((2*n+1)/ϕ)+floor((sqrt(5)+3)*(n+1)))`
-/

namespace A339052.P1418286472100870273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋ + ⌊(Real.sqrt (5 : ℝ) + 3) * (n + 1 : ℝ)⌋)

end

end A339052.P1418286472100870273

namespace A339052

/-- `and(1, floor((2*n+1)/ϕ)+floor((sqrt(5)+3)*(n+1)))` -/
def P1418286472100870273.Spec : Prop :=
  ∀ n, P1418286472100870273.a n = A339052 n

end A339052

/-! ## A339052.P9000780094352421411

`A096270(Δ[n²])`
-/

namespace A339052.P9000780094352421411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A339052.P9000780094352421411

namespace A339052

/-- `A096270(Δ[n²])` -/
def P9000780094352421411.Spec : Prop :=
  ∀ n, P9000780094352421411.a n = A339052 n

end A339052

/-! ## A339052.P12717531317470639477

`val(A319432(2*n+1), 2)`
-/

namespace A339052.P12717531317470639477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319432 (2 * n + 1)).toNat 2

end

end A339052.P12717531317470639477

namespace A339052

/-- `val(A319432(2*n+1), 2)` -/
def P12717531317470639477.Spec : Prop :=
  ∀ n, (P12717531317470639477.a n : ℤ) = A339052 n

end A339052

/-! ## A339052.P10006867998806292227

`A339825(n-a(n-1))` with `a(0)=1`
-/

namespace A339052.P10006867998806292227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339825 ((n : ℤ) - a (n - 1)).toNat

end

end A339052.P10006867998806292227

namespace A339052

/-- `A339825(n-a(n-1))` -/
def P10006867998806292227.Spec : Prop :=
  ∀ n, P10006867998806292227.a n = A339052 n

end A339052

/-! ## A339052.P14232694291951856739

`A000045(floor(2*(n+1)/ϕ)-floor((2*n+1)/ϕ))`
-/

namespace A339052.P14232694291951856739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋ - ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋).toNat

end

end A339052.P14232694291951856739

namespace A339052

/-- `A000045(floor(2*(n+1)/ϕ)-floor((2*n+1)/ϕ))` -/
def P14232694291951856739.Spec : Prop :=
  ∀ n, P14232694291951856739.a n = A339052 n

end A339052

/-! ## A339052.P10839395049917316329

`A339825(n*A339051(n))`
-/

namespace A339052.P10839395049917316329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339825 ((n : ℤ) * A339051 n).toNat

end

end A339052.P10839395049917316329

namespace A339052

/-- `A339825(n*A339051(n))` -/
def P10839395049917316329.Spec : Prop :=
  ∀ n, P10839395049917316329.a n = A339052 n

end A339052

/-! ## A339052.P9093835712394551045

`A339825(n*A339824(n))`
-/

namespace A339052.P9093835712394551045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339825 ((n : ℤ) * A339824 n).toNat

end

end A339052.P9093835712394551045

namespace A339052

/-- `A339825(n*A339824(n))` -/
def P9093835712394551045.Spec : Prop :=
  ∀ n, P9093835712394551045.a n = A339052 n

end A339052

/-! ## A339052.P13983357862156366537

`xor(A089809(n+1), A380151(n+1))`
-/

namespace A339052.P13983357862156366537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A089809 (n + 1)) (A380151 (n + 1))

end

end A339052.P13983357862156366537

namespace A339052

/-- `xor(A089809(n+1), A380151(n+1))` -/
def P13983357862156366537.Spec : Prop :=
  ∀ n, P13983357862156366537.a n = A339052 n

end A339052

/-! ## A339052.P572909674952389127

`A085002(A001961(n+1))`
-/

namespace A339052.P572909674952389127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A001961 (n + 1)).toNat

end

end A339052.P572909674952389127

namespace A339052

/-- `A085002(A001961(n+1))` -/
def P572909674952389127.Spec : Prop :=
  ∀ n, P572909674952389127.a n = A339052 n

end A339052

/-! ## A339052.P17711054159289853867

`A085002(A001963(n+1))`
-/

namespace A339052.P17711054159289853867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A001963 (n + 1)).toNat

end

end A339052.P17711054159289853867

namespace A339052

/-- `A085002(A001963(n+1))` -/
def P17711054159289853867.Spec : Prop :=
  ∀ n, P17711054159289853867.a n = A339052 n

end A339052

/-!
# A339053: a(n) = least k such that the first n-block in A339051 occurs in A339052 beginning at the k-th term.

The programs for A339053, there is no canonical definition to state claims against.
-/

/-! ## A339053.P6431815229010286865

`A041016(∑[char[A125855(n+1)]])`
-/

namespace A339053.P6431815229010286865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125855 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041016 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339053.P6431815229010286865

/-!
# A339054: a(n) = least k such that the first n-block in A339052 occurs in A339051 beginning at the k-th term.

The programs for A339054, there is no canonical definition to state claims against.
-/

/-! ## A339054.P10442229497917776617

`A339826(n+1)+1`
-/

namespace A339054.P10442229497917776617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339826 (n + 1) + 1

end

end A339054.P10442229497917776617

/-! ## A339054.P15766376871098014322

`A339827(char[n*C(n, 3)]+n)`
-/

namespace A339054.P15766376871098014322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339827 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A339054.P15766376871098014322

/-! ## A339054.P1605883833872076870

`A339827(char[ceil(n*ϕ²)]+n)`
-/

namespace A339054.P1605883833872076870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339827 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A339054.P1605883833872076870

/-! ## A339054.P2429999177400811596

`A020725(A339826(n+1))`
-/

namespace A339054.P2429999177400811596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A339826 (n + 1)).toNat

end

end A339054.P2429999177400811596

/-! ## A339054.P13010240659283582571

`abs(A339827(A120613(n+2))-1)+1`
-/

namespace A339054.P13010240659283582571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A339827 (A120613 (n + 2)).toNat - 1| + 1

end

end A339054.P13010240659283582571

/-! ## A339054.P9527482343444625902

`Δ[floor(n/ϕ)]!+A339827(A005614(n)+n)-1`
-/

namespace A339054.P9527482343444625902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) + (A339827 (A005614 n + (n : ℤ)).toNat - 1)

end

end A339054.P9527482343444625902

/-! ## A339054.P14814933340357308253

`char[A048679(n)]+A339827(A120613(n+2))-1`
-/

namespace A339054.P14814933340357308253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A339827 (A120613 (n + 2)).toNat - 1)

end

end A339054.P14814933340357308253

/-! ## A339054.P4815822259407350210

`char[A048679(n)]+A339827(A005614(n)+n)-1`
-/

namespace A339054.P4815822259407350210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A339827 (A005614 n + (n : ℤ)).toNat - 1)

end

end A339054.P4815822259407350210

/-!
# A339055: Values taken by d(k^2)/d(k) where d(k) is the number of divisors of k and when this ratio is an integer.

The programs for A339055, there is no canonical definition to state claims against.
-/

/-! ## A339055.P17810788937774037917

`A124420(∑{e}[A217584(n+1), #])`
-/

namespace A339055.P17810788937774037917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124420 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A339055.P17810788937774037917

/-!
# A339057: a(n) = (-1)^(n + 1)*3^(2*n + 1)*Euler(2*n + 1, 1/3)*2^(valuation_{2}(2*(n + 1))), the Steinhaus-Euler sequence S_{3}(n).

The programs for A339057, there is no canonical definition to state claims against.
-/

/-! ## A339057.P17929070571839399855

`abs(A156179(Δ[n²]))`
-/

namespace A339057.P17929070571839399855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156179 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A339057.P17929070571839399855

/-! ## A339057.P10883882199941846937

`record[abs(A156179(A004442(n)))]`
-/

namespace A339057.P10883882199941846937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156179 (A004442 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339057.P10883882199941846937

/-! ## A339057.P2230500104820354445

`record[abs(A156179(A198954(n)))]`
-/

namespace A339057.P2230500104820354445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156179 (A198954 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339057.P2230500104820354445

/-! ## A339057.P18227568276470373239

`record[A156179(n)*A163805(n)]`
-/

namespace A339057.P18227568276470373239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156179 n * A163805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339057.P18227568276470373239

/-! ## A339057.P4197151112307544881

`record[gcd(A122045(n), A156179(n))]`
-/

namespace A339057.P4197151112307544881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122045 n) (A156179 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339057.P4197151112307544881

/-!
# A339058: a(n) = 4^n*Euler(n, 1/4)*2^(valuation_{2}(n + 1)).

The programs for A339058, there is no canonical definition to state claims against.
-/

/-! ## A339058.P15377300904291534030

`gcd(n+1, 2^n)*A212435(n)`
-/

namespace A339058.P15377300904291534030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (2 ^ n) : ℤ) * A212435 n

end

end A339058.P15377300904291534030

/-! ## A339058.P1217487169479320565

`A006519(n+1)*A212435(n)`
-/

namespace A339058.P1217487169479320565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A212435 n

end

end A339058.P1217487169479320565

/-! ## A339058.P10646991461570742602

`A171977(n+1)/2*A212435(n)`
-/

namespace A339058.P10646991461570742602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) : ℚ) / 2 * (A212435 n : ℚ)

end

end A339058.P10646991461570742602

/-! ## A339058.P14627544779962423588

`(n+1)/A000265(n+1)*A212435(n)`
-/

namespace A339058.P14627544779962423588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (n + 1) : ℚ) * (A212435 n : ℚ)

end

end A339058.P14627544779962423588

/-! ## A339058.P14626692318773933282

`A000079(A007814(n+1))*A212435(n)`
-/

namespace A339058.P14626692318773933282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat * A212435 n

end

end A339058.P14626692318773933282

/-! ## A339058.P3916514134806998060

`A000010(A171977(n+1))*A212435(n)`
-/

namespace A339058.P3916514134806998060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A171977 (n + 1)).toNat * A212435 n

end

end A339058.P3916514134806998060

/-!
# A339059: Number of compositions (ordered partitions) of n into distinct parts congruent to 1 mod 4.

The programs for A339059, there is no canonical definition to state claims against.
-/

/-! ## A339059.P18033687196264538440

`A339086(comp[A095319(3*n+4)-A192255(n+1)+n+1])`
-/

namespace A339059.P18033687196264538440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095319 (3 * n + 4) - A192255 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339086 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A339059.P18033687196264538440

/-! ## A339059.P4460707620733690384

`A339086(A047263(n+1))%A074144(n+1)`
-/

namespace A339059.P4460707620733690384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339086 (A047263 (n + 1)).toNat) (A074144 (n + 1))

end

end A339059.P4460707620733690384

/-!
# A339060: Number of compositions (ordered partitions) of n into distinct parts congruent to 3 mod 4.

The programs for A339060, there is no canonical definition to state claims against.
-/

/-! ## A339060.P12366653420651964534

`A001468(A000045(n))*A147599(n)`
-/

namespace A339060.P12366653420651964534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A000045 n).toNat * A147599 n

end

end A339060.P12366653420651964534

/-! ## A339060.P8781655366508155336

`A001468(A000045(n))*A170984(n)`
-/

namespace A339060.P8781655366508155336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A000045 n).toNat * A170984 n

end

end A339060.P8781655366508155336

/-! ## A339060.P3436482843259214156

`A003842(A014259(n))*A170984(n)`
-/

namespace A339060.P3436482843259214156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A014259 n).toNat * A170984 n

end

end A339060.P3436482843259214156

/-! ## A339060.P11470771969126352527

`A000188(A089408(n))*A147599(n)`
-/

namespace A339060.P11470771969126352527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A089408 n).toNat * A147599 n

end

end A339060.P11470771969126352527

/-! ## A339060.P15548765198202989164

`A000188(A089408(n))*A170959(n)`
-/

namespace A339060.P15548765198202989164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A089408 n).toNat * A170959 n

end

end A339060.P15548765198202989164

/-!
# A339061: Least integer j such that H(k+j)>=n+1, where k is the least integer to satisfy H(k)>=n, and H(k) is the sum of the first k terms of the harmonic series.

The programs for A339061, there is no canonical definition to state claims against.
-/

/-! ## A339061.P3588908257900872818

`char[1]+Δ[round(exp(n-γ))]`
-/

namespace A339061.P3588908257900872818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A339061.P3588908257900872818

/-! ## A339061.P10039327115737386084

`or(Δ[round(exp(n-γ))], char[1])`
-/

namespace A339061.P10039327115737386084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A339061.P10039327115737386084

/-! ## A339061.P14323105361888795775

`Δ[round(exp(n-γ))+floor(atan(n))]`
-/

namespace A339061.P14323105361888795775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant)) + ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339061.P14323105361888795775

/-! ## A339061.P8593754497921731398

`Δ[xor(C(3, n²), round(exp(n-γ)))]`
-/

namespace A339061.P8593754497921731398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 3 (n ^ 2) : ℤ) (SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339061.P8593754497921731398

/-! ## A339061.P5901714438209638164

`Δ[round(exp(n-γ))-C(n, n²)]`
-/

namespace A339061.P5901714438209638164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant)) - (Nat.choose n (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339061.P5901714438209638164

/-!
# A339062: Sorted list of prime numbers in the union of 7-tuples (a,b,c,d,e,f,g) satisfying a^2 + b^2 + c^2 + d^2 + e^2 + f^2 + g^2 = a*b*c*d*e*f*g.

The programs for A339062, there is no canonical definition to state claims against.
-/

/-! ## A339062.P1891608197541421

`p?[∪[2*n, A227208(n+1)]]`
-/

namespace A339062.P1891608197541421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227208 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A339062.P1891608197541421

/-! ## A339062.P2615366399409883093

`p?[∪[A227208(n+1), A000079(n)]]`
-/

namespace A339062.P2615366399409883093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227208 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A339062.P2615366399409883093

/-! ## A339062.P13405530734579251344

`p?[∪[A227208(n+1), A024023(n)]]`
-/

namespace A339062.P13405530734579251344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227208 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A339062.P13405530734579251344

/-! ## A339062.P10533303565273886581

`p?[A227208(n+1)%A006978(n+1)]`
-/

namespace A339062.P10533303565273886581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227208 (n + 1)) (A006978 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339062.P10533303565273886581

/-! ## A339062.P16688796624810080532

`p?[∪[A227208(n+1), A227197(n+1)]]`
-/

namespace A339062.P16688796624810080532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227208 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227197 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A339062.P16688796624810080532

/-!
# A339063: Number of unlabeled simple graphs with n edges rooted at two noninterchangeable vertices.

The programs for A339063, there is no canonical definition to state claims against.
-/

/-! ## A339063.P7494787901248922404

`A248180(Δ[A017937(n)])`
-/

namespace A339063.P7494787901248922404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (f1 (n + 1) - f1 n).toNat

end

end A339063.P7494787901248922404

/-! ## A339063.P17218354324305087247

`A269381(A217274(n+1))`
-/

namespace A339063.P17218354324305087247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (A217274 (n + 1)).toNat

end

end A339063.P17218354324305087247

/-!
# A339064: Number of unlabeled simple graphs with n edges rooted at two indistinguishable vertices.

The programs for A339064, there is no canonical definition to state claims against.
-/

/-! ## A339064.P597970809866769511

`floor(sqrt(A330146((n+3)*(n+1))))`
-/

namespace A339064.P597970809866769511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A330146 ((n + 3) * (n + 1)))

end

end A339064.P597970809866769511

/-! ## A339064.P4754965450374366359

`A054404(27*a(n-2))-2` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A339064.P4754965450374366359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A054404 (27 * a (n - 2)).toNat - 2

end

end A339064.P4754965450374366359

/-!
# A339065: Number of unlabeled loopless multigraphs with n edges rooted at two noninterchangeable vertices.

The programs for A339065, there is no canonical definition to state claims against.
-/

/-! ## A339065.P9338614831453619872

`A087504(A397302(n+1))`
-/

namespace A339065.P9338614831453619872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087504 (A397302 (n + 1)).toNat

end

end A339065.P9338614831453619872

/-! ## A339065.P3439685847407312092

`A036234(A188716(2*n))+n`
-/

namespace A339065.P3439685847407312092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A188716 (2 * n)).toNat + (n : ℤ)

end

end A339065.P3439685847407312092

/-!
# A339066: Number of unlabeled loopless multigraphs with n edges rooted at two indistinguishable vertices.

The programs for A339066, there is no canonical definition to state claims against.
-/

/-! ## A339066.P13472631014205648077

`A058032(A258350(n))`
-/

namespace A339066.P13472631014205648077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058032 (A258350 n).toNat

end

end A339066.P13472631014205648077

/-! ## A339066.P3121622851366271045

`A039708(A003947(n))-n`
-/

namespace A339066.P3121622851366271045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A003947 n).toNat - (n : ℤ)

end

end A339066.P3121622851366271045

/-!
# A339067: Triangle read by rows: T(n,k) is the number of linear forests with n nodes and k rooted trees.

The programs for A339067, there is no canonical definition to state claims against.
-/

/-! ## A339067.P16590399677262435871

`A322329(n)+A016389(A216914(n+1))`
-/

namespace A339067.P16590399677262435871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322329 n + A016389 (A216914 (n + 1)).toNat

end

end A339067.P16590399677262435871

/-! ## A339067.P4700302086413638405

`(A322329(n)-A285006(A216914(n+1)))^A178334(n)`
-/

namespace A339067.P4700302086413638405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322329 n - A285006 (A216914 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A339067.P4700302086413638405

/-! ## A339067.P13063369323993361072

`A089866(A273897(n+2))`
-/

namespace A339067.P13063369323993361072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089866 (A273897 (n + 2)).toNat

end

end A339067.P13063369323993361072

/-! ## A339067.P2861616271839539520

`A089867(A322329(n)+1)-1`
-/

namespace A339067.P2861616271839539520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A322329 n + 1).toNat - 1

end

end A339067.P2861616271839539520

/-! ## A339067.P1402902769552295059

`A089868(A322329(n)+1)-1`
-/

namespace A339067.P1402902769552295059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A322329 n + 1).toNat - 1

end

end A339067.P1402902769552295059

/-!
# A339070: Triangle read by rows: T(n,k) is the number of unlabeled nonseparable (or 2-connected) graphs with n edges and k nodes (n >= 1, 2 <= k <= n + 1).

The programs for A339070, there is no canonical definition to state claims against.
-/

/-! ## A339070.P17032191456113328975

`A343870(n+1)-A178798(A174448(n))`
-/

namespace A339070.P17032191456113328975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343870 (n + 1) - A178798 (A174448 n).toNat

end

end A339070.P17032191456113328975

/-! ## A339070.P7745188232142669266

`A343870(n+1)+A001878(A331927(n))`
-/

namespace A339070.P7745188232142669266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343870 (n + 1) + A001878 (A331927 n).toNat

end

end A339070.P7745188232142669266

/-! ## A339070.P8022658872856774696

`A343870(n+1)-A178798(A109223(n))`
-/

namespace A339070.P8022658872856774696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343870 (n + 1) - A178798 (A109223 n).toNat

end

end A339070.P8022658872856774696

/-! ## A339070.P6092331506821266305

`A343870(n+1)+A178798(A343870(n+1)+A109223(n))`
-/

namespace A339070.P6092331506821266305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343870 (n + 1) + A178798 (A343870 (n + 1) + A109223 n).toNat

end

end A339070.P6092331506821266305

/-! ## A339070.P11613206517179014357

`A343870(n+1)+A025456(A010894(n))`
-/

namespace A339070.P11613206517179014357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343870 (n + 1) + A025456 (A010894 (n + 21)).toNat

end

end A339070.P11613206517179014357

/-!
# A339071: Triangle read by rows: T(n,k) is the number of unlabeled simple nonseparable (or 2-connected) graphs with n nodes and k edges (n >= 1, n-1 <= k <= n*(n-1)/2).

The programs for A339071, there is no canonical definition to state claims against.
-/

/-! ## A339071.P13073162858147931488

`A001878(∑[record[A051849(n+1)]])`
-/

namespace A339071.P13073162858147931488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051849 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339071.P13073162858147931488

/-! ## A339071.P15594811603958389229

`abs(A334090(∑[A077947(n)]))`
-/

namespace A339071.P15594811603958389229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A334090 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A339071.P15594811603958389229

/-! ## A339071.P16759159347549366602

`A003961(A051920(n))%∑[A092152(n+2)]`
-/

namespace A339071.P16759159347549366602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A051920 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339071.P16759159347549366602

/-! ## A339071.P3011819895654553419

`A051724(and(A018614(n+1), A256267(n+1)))`
-/

namespace A339071.P3011819895654553419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Int.land (A018614 (n + 1)) (A256267 (n + 1))).toNat

end

end A339071.P3011819895654553419

/-! ## A339071.P1125976906097996589

`7%A053735(A328627(n))`
-/

namespace A339071.P1125976906097996589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A053735 (A328627 n).toNat)

end

end A339071.P1125976906097996589

/-!
# A339073: Number of strings of Hebrew letters with a gematria value equal to n.

The programs for A339073, there is no canonical definition to state claims against.
-/

/-! ## A339073.P6910542049946753389

`A000027(Δ[A172320(n)])`
-/

namespace A339073.P6910542049946753389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A339073.P6910542049946753389

/-! ## A339073.P3444154647880691480

`A000027(A258800(n)+A011782(n))`
-/

namespace A339073.P3444154647880691480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A258800 n + A011782 n).toNat

end

end A339073.P3444154647880691480

/-! ## A339073.P5030585568598928175

`A000027(A172320(n)-A354600(n))`
-/

namespace A339073.P5030585568598928175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A172320 n - A354600 n).toNat

end

end A339073.P5030585568598928175

/-! ## A339073.P7166568921883834475

`A172320(A000027(n+1))-A000027(A172320(n))`
-/

namespace A339073.P7166568921883834475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172320 (A000027 (n + 1)).toNat - A000027 (A172320 n).toNat

end

end A339073.P7166568921883834475

/-! ## A339073.P6825836122319821678

`Δ[A234592(n)]%A270339(2*(n+2))`
-/

namespace A339073.P6825836122319821678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A270339 (2 * (n + 2)))

end

end A339073.P6825836122319821678

/-!
# A339076: Numbers which are coprime to their digital sum (A007953).

The programs for A339076, there is no canonical definition to state claims against.
-/

/-! ## A339076.P14345302855182151046

`∪[A038187(n+1), A144980(n+1)]`
-/

namespace A339076.P14345302855182151046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339076.P14345302855182151046

/-! ## A339076.P6740817762204104269

`record[A065517(n+1)]`
-/

namespace A339076.P6740817762204104269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339076.P6740817762204104269

/-! ## A339076.P15041269296548843428

`eq[1, gcd(n, A007953(n))]`
-/

namespace A339076.P15041269296548843428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339076.P15041269296548843428

/-! ## A339076.P2077301920178870139

`eq[1, A066750(n+1)]+1`
-/

namespace A339076.P2077301920178870139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339076.P2077301920178870139

/-! ## A339076.P9548120338969518114

`record[(n+1)/gcd(n+1, A007953(n+1))]`
-/

namespace A339076.P9548120338969518114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A007953 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339076.P9548120338969518114

/-! ## A339076.P8401027815135604857

`eq[1, A066750(A000038(n)+n)]`
-/

namespace A339076.P8401027815135604857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066750 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339076.P8401027815135604857

/-! ## A339076.P18104739017112612247

`A065517(eq[n+1, A065517(n+1)]+1)`
-/

namespace A339076.P18104739017112612247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A339076.P18104739017112612247

/-! ## A339076.P17176512317244996110

`eq[A007953(n), A065518(A028310(n))]`
-/

namespace A339076.P17176512317244996110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339076.P17176512317244996110

/-!
# A339077: Numbers k such that k and k+1 are both coprime to their digital sum (A339076).

The programs for A339077, there is no canonical definition to state claims against.
-/

/-! ## A339077.P7500650363923892469

`∩[A339076(n+1)-1, A339076(n+1)]`
-/

namespace A339077.P7500650363923892469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339076 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339077.P7500650363923892469

/-! ## A339077.P2119898995619789060

`eq[gcd(n, A007953(n)), A066750(n+1)]`
-/

namespace A339077.P2119898995619789060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007953 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339077.P2119898995619789060

/-! ## A339077.P2450115066692067558

`record[A065517(n+10)%A065517(n+11)]`
-/

namespace A339077.P2450115066692067558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065517 (n + 10)) (A065517 (n + 11))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339077.P2450115066692067558

/-! ## A339077.P18389189297483751596

`eq[A066750(n+2), A066750(n+1)]+1`
-/

namespace A339077.P18389189297483751596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066750 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A339077.P18389189297483751596

/-! ## A339077.P5543983850389788497

`eq[A066750(n+1), A066750(A000038(n)+n)]`
-/

namespace A339077.P5543983850389788497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066750 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339077.P5543983850389788497

/-! ## A339077.P18318997591914112481

`A065517(eq[A065517(n+1)+1, A065517(n+2)]+1)`
-/

namespace A339077.P18318997591914112481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A339077.P18318997591914112481

/-! ## A339077.P18329252843319951769

`∩[A339076(n+1), A233583(A339076(n+1))]`
-/

namespace A339077.P18329252843319951769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A339076 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339077.P18329252843319951769

/-!
# A339079: a(n) is the least number which is coprime to its binary weight (A094387) with a gap n to the next term of A094387, or 0 if such a number does not exist.

The programs for A339079, there is no canonical definition to state claims against.
-/

/-! ## A339079.P4884744597540229071

`A374249(A272919(3*n+1))+A063170(n)`
-/

namespace A339079.P4884744597540229071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (A272919 (3 * n + 1)).toNat + A063170 n

end

end A339079.P4884744597540229071

/-!
# A339080: Smaller members of binary Ormiston prime pairs: two consecutive primes whose binary representations are anagrams of each other.

The programs for A339080, the canonical program `A339080.P13752444290317850624` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339080 has offset 1).

The definition of A339080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339080.P13752444290317850624

`A045319(eq[A035103(n+1), A035103(n+2)])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A339080

/-- `A045319(eq[A035103(n+1), A035103(n+2)])` -/
def P13752444290317850624.Spec : Prop :=
  ∀ n, P13752444290317850624.a n = A339080 (n + 1)

theorem P13752444290317850624.correct : P13752444290317850624.Spec := by
  intro n
  simp only [A339080, Nat.add_sub_cancel]

end A339080

/-! ## A339080.P8172098296993855820

`A000040(eq[A035103(n+2), A035103(n+1)]+1)`
-/

namespace A339080.P8172098296993855820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A339080.P8172098296993855820

namespace A339080

/-- `A000040(eq[A035103(n+2), A035103(n+1)]+1)` -/
def P8172098296993855820.Spec : Prop :=
  ∀ n, P8172098296993855820.a n = A339080 (n + 1)

end A339080

/-! ## A339080.P17855087175936420992

`A000040(eq[A102566(n+2), A102566(n+1)]+1)`
-/

namespace A339080.P17855087175936420992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102566 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A339080.P17855087175936420992

namespace A339080

/-- `A000040(eq[A102566(n+2), A102566(n+1)]+1)` -/
def P17855087175936420992.Spec : Prop :=
  ∀ n, P17855087175936420992.a n = A339080 (n + 1)

end A339080

/-! ## A339080.P15186158328072427763

`A006093(eq[A102566(n+2), A102566(n+1)]+1)+1`
-/

namespace A339080.P15186158328072427763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102566 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A339080.P15186158328072427763

namespace A339080

/-- `A006093(eq[A102566(n+2), A102566(n+1)]+1)+1` -/
def P15186158328072427763.Spec : Prop :=
  ∀ n, P15186158328072427763.a n = A339080 (n + 1)

end A339080

/-!
# A339081: Initial prime in the least binary Ormiston n-tuple: n consecutive primes whose binary representations are anagrams of each other.

The programs for A339081, there is no canonical definition to state claims against.
-/

/-! ## A339081.P6064051008322660129

`p?[∑[A046542(A314167(n))]]`
-/

namespace A339081.P6064051008322660129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046542 (A314167 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339081.P6064051008322660129

/-!
# A339082: a(n) is the number m such that F(prime(m)) is the greatest prime Fibonacci divisor of F(n)^2 + 1 where F(n) is the n-th Fibonacci number, or 0 if no such prime factor exists.

The programs for A339082, there is no canonical definition to state claims against.
-/

/-! ## A339082.P5888294501505531413

`A000720(A335568(n+1)+1)`
-/

namespace A339082.P5888294501505531413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A335568 (n + 1) + 1).toNat

end

end A339082.P5888294501505531413

/-! ## A339082.P2753120980051583891

`A230980(A335568(n+1))`
-/

namespace A339082.P2753120980051583891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A335568 (n + 1)).toNat

end

end A339082.P2753120980051583891

/-! ## A339082.P7961045986059937417

`A049084(or(1, A335568(n+1)))`
-/

namespace A339082.P7961045986059937417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A335568 (n + 1))).toNat

end

end A339082.P7961045986059937417

/-! ## A339082.P7837896606425995226

`A061395(or(1, A335568(n+1)))`
-/

namespace A339082.P7837896606425995226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A335568 (n + 1))).toNat

end

end A339082.P7837896606425995226

/-! ## A339082.P9001870559854372353

`A335603(or(1, A335568(n+1)))`
-/

namespace A339082.P9001870559854372353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (Int.lor 1 (A335568 (n + 1))).toNat

end

end A339082.P9001870559854372353

/-! ## A339082.P17508017142959224226

`∑{d}[A335568(n+1), A049084(#)]`
-/

namespace A339082.P17508017142959224226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A339082.P17508017142959224226

/-! ## A339082.P4483392227673557828

`∑{d}[A335568(n+1), A056239(#)]`
-/

namespace A339082.P4483392227673557828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A339082.P4483392227673557828

/-! ## A339082.P15849727518883734978

`∑{p}[A335568(n+1), A003963(#)]`
-/

namespace A339082.P15849727518883734978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A339082.P15849727518883734978

/-! ## A339082.P10039615975357875728

`∑{p}[A335568(n+1), A335603(#)]`
-/

namespace A339082.P10039615975357875728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A335603 p

end

end A339082.P10039615975357875728

/-! ## A339082.P8599143885960882000

`A335603(∏{p}[A335568(n+1), #])`
-/

namespace A339082.P8599143885960882000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A339082.P8599143885960882000

/-! ## A339082.P10838827001837832577

`A056811((A335568(n+1)+1)²)`
-/

namespace A339082.P10838827001837832577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 ((A335568 (n + 1) + 1) ^ 2).toNat

end

end A339082.P10838827001837832577

/-!
# A339085: Number of primes p with n - pi(n) < p <= n + pi(n), where pi(n) is the number of primes <= n.

The programs for A339085, the canonical program `A339085.P16037434498493791391` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339085 has offset 1).

The definition of A339085 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339085.P16037434498493791391

`A000720(n+1+A000720(n+1))-A000720(n+1-A000720(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A339085

/-- `A000720(n+1+A000720(n+1))-A000720(n+1-A000720(n+1))` -/
def P16037434498493791391.Spec : Prop :=
  ∀ n, P16037434498493791391.a n = A339085 (n + 1)

theorem P16037434498493791391.correct : P16037434498493791391.Spec := by
  intro n
  simp only [A339085, Nat.add_sub_cancel]

end A339085

/-! ## A339085.P7210307069442113931

`A000720(A095117(n+1))-A000720(A062298(n+1))`
-/

namespace A339085.P7210307069442113931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095117 (n + 1)).toNat - A000720 (A062298 (n + 1)).toNat

end

end A339085.P7210307069442113931

namespace A339085

/-- `A000720(A095117(n+1))-A000720(A062298(n+1))` -/
def P7210307069442113931.Spec : Prop :=
  ∀ n, P7210307069442113931.a n = A339085 (n + 1)

end A339085

/-! ## A339085.P6289287669108536076

`A337788(n+1)+n+1-A338215(n+1)`
-/

namespace A339085.P6289287669108536076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (n + 1) + ((n + 1 : ℤ) - A338215 (n + 1))

end

end A339085.P6289287669108536076

namespace A339085

/-- `A337788(n+1)+n+1-A338215(n+1)` -/
def P6289287669108536076.Spec : Prop :=
  ∀ n, P6289287669108536076.a n = A339085 (n + 1)

end A339085

/-! ## A339085.P16423344671632810997

`A010051(n+1)+A338521(n+1)+A337788(n+1)`
-/

namespace A339085.P16423344671632810997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A338521 (n + 1) + A337788 (n + 1))

end

end A339085.P16423344671632810997

namespace A339085

/-- `A010051(n+1)+A338521(n+1)+A337788(n+1)` -/
def P16423344671632810997.Spec : Prop :=
  ∀ n, P16423344671632810997.a n = A339085 (n + 1)

end A339085

/-! ## A339085.P12557510452969255341

`A337788(n+1)+n+1-A095117(A062298(n+1))`
-/

namespace A339085.P12557510452969255341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (n + 1) + ((n + 1 : ℤ) - A095117 (A062298 (n + 1)).toNat)

end

end A339085.P12557510452969255341

namespace A339085

/-- `A337788(n+1)+n+1-A095117(A062298(n+1))` -/
def P12557510452969255341.Spec : Prop :=
  ∀ n, P12557510452969255341.a n = A339085 (n + 1)

end A339085

/-! ## A339085.P8728134050911121256

`A000720(A000720(n+1)+n+1)-A000720(A062298(n+1))`
-/

namespace A339085.P8728134050911121256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (n + 1) + (n + 1 : ℤ)).toNat - A000720 (A062298 (n + 1)).toNat

end

end A339085.P8728134050911121256

namespace A339085

/-- `A000720(A000720(n+1)+n+1)-A000720(A062298(n+1))` -/
def P8728134050911121256.Spec : Prop :=
  ∀ n, P8728134050911121256.a n = A339085 (n + 1)

end A339085

/-! ## A339085.P927490311459506614

`A000720(A095117(n+1))-A000720(A065855(n+1)+1)`
-/

namespace A339085.P927490311459506614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095117 (n + 1)).toNat - A000720 (A065855 (n + 1) + 1).toNat

end

end A339085.P927490311459506614

namespace A339085

/-- `A000720(A095117(n+1))-A000720(A065855(n+1)+1)` -/
def P927490311459506614.Spec : Prop :=
  ∀ n, P927490311459506614.a n = A339085 (n + 1)

end A339085

/-! ## A339085.P4076298407426591382

`A000720(A095117(n+1))-A000720(n+1-A000720(n+1))`
-/

namespace A339085.P4076298407426591382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095117 (n + 1)).toNat - A000720 ((n + 1 : ℤ) - A000720 (n + 1)).toNat

end

end A339085.P4076298407426591382

namespace A339085

/-- `A000720(A095117(n+1))-A000720(n+1-A000720(n+1))` -/
def P4076298407426591382.Spec : Prop :=
  ∀ n, P4076298407426591382.a n = A339085 (n + 1)

end A339085

/-!
# A339086: Number of compositions (ordered partitions) of n into distinct parts congruent to 1 mod 5.

The programs for A339086, there is no canonical definition to state claims against.
-/

/-! ## A339086.P11472358252574625365

`A339088(record[A214394(n)])`
-/

namespace A339086.P11472358252574625365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A339086.P11472358252574625365

/-! ## A339086.P14745346841346486443

`A339088(eq[n, A214394(n)])`
-/

namespace A339086.P14745346841346486443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339086.P14745346841346486443

/-! ## A339086.P12660959102052506863

`A339088(comp[A016969(n)+1])`
-/

namespace A339086.P12660959102052506863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A339086.P12660959102052506863

/-! ## A339086.P6717854522044592491

`A339088(A187390(n+1)-1)`
-/

namespace A339086.P6717854522044592491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339088 (A187390 (n + 1) - 1).toNat

end

end A339086.P6717854522044592491

/-!
# A339087: Number of compositions (ordered partitions) of n into distinct parts congruent to 4 mod 5.

The programs for A339087, there is no canonical definition to state claims against.
-/

/-! ## A339087.P7939025658760717626

`A339089(comp[A008458(n)])`
-/

namespace A339087.P7939025658760717626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A339087.P7939025658760717626

/-! ## A339087.P7061116145270478525

`A339089(comp[Δ[A019426(n)]])`
-/

namespace A339087.P7061116145270478525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A339087.P7061116145270478525

/-! ## A339087.P11371753117190636412

`A339089(A047253(n+1))+C(2, n+2)`
-/

namespace A339087.P11371753117190636412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (A047253 (n + 1)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A339087.P11371753117190636412

/-! ## A339087.P17986625823824587815

`A339089(A047253(n+1))+A000007(n)`
-/

namespace A339087.P17986625823824587815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (A047253 (n + 1)).toNat + A000007 n

end

end A339087.P17986625823824587815

/-! ## A339087.P6666254083362550941

`A339089(A087156(n+1)+A002266(n))`
-/

namespace A339087.P6666254083362550941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (A087156 (n + 1) + A002266 n).toNat

end

end A339087.P6666254083362550941

/-! ## A339087.P7131557730737869870

`A339089(A047253(n+1))+A151933(n)`
-/

namespace A339087.P7131557730737869870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (A047253 (n + 1)).toNat + A151933 n

end

end A339087.P7131557730737869870

/-! ## A339087.P17071692830669307246

`A339089(A047253(n+1)%A005891(n))`
-/

namespace A339087.P17071692830669307246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (Int.tmod (A047253 (n + 1)) (A005891 n)).toNat

end

end A339087.P17071692830669307246

/-! ## A339087.P5455171788742074295

`A339089(lcm(A011619(n), A047253(n+1)))`
-/

namespace A339087.P5455171788742074295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (Int.lcm (A011619 n) (A047253 (n + 1)))

end

end A339087.P5455171788742074295

/-! ## A339087.P6436095202142254734

`A339089(and(A047253(n+1), A057428(n)))`
-/

namespace A339087.P6436095202142254734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (Int.land (A047253 (n + 1)) (A057428 n)).toNat

end

end A339087.P6436095202142254734

/-! ## A339087.P2560830206536542811

`A339089(A011619(n²)*A047253(n+1))`
-/

namespace A339087.P2560830206536542811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (A011619 (n ^ 2) * A047253 (n + 1)).toNat

end

end A339087.P2560830206536542811

/-!
# A339088: Number of compositions (ordered partitions) of n into distinct parts congruent to 1 mod 6.

The programs for A339088, there is no canonical definition to state claims against.
-/

/-! ## A339088.P8474722894011237444

`(n%6)!*A280456(n)`
-/

namespace A339088.P8474722894011237444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 6) : ℤ) * A280456 n

end

end A339088.P8474722894011237444

/-! ## A339088.P15832951293446755889

`A010875(n)!*A280456(n)`
-/

namespace A339088.P15832951293446755889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010875 n).toNat : ℤ) * A280456 n

end

end A339088.P15832951293446755889

/-! ## A339088.P15859190833245003707

`A001227(A325677(3*n+1))!*A280456(n)`
-/

namespace A339088.P15859190833245003707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001227 (A325677 (3 * n + 1)).toNat).toNat : ℤ) * A280456 n

end

end A339088.P15859190833245003707

/-! ## A339088.P9666529181296655629

`A040001(∑[A000045(n)])*A280456(n)`
-/

namespace A339088.P9666529181296655629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A280456 n

end

end A339088.P9666529181296655629

/-! ## A339088.P1999487748425855801

`A280456(n)*A318314(A000045(n+1))`
-/

namespace A339088.P1999487748425855801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280456 n * A318314 (A000045 (n + 1)).toNat

end

end A339088.P1999487748425855801

/-!
# A339089: Number of compositions (ordered partitions) of n into distinct parts congruent to 5 mod 6.

The programs for A339089, there is no canonical definition to state claims against.
-/

/-! ## A339089.P17977698285604957559

`A258969(A281244(n+1)%A271269(n+1))*A281244(n)`
-/

namespace A339089.P17977698285604957559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258969 (Int.tmod (A281244 (n + 1)) (A271269 (n + 1))).toNat * A281244 n

end

end A339089.P17977698285604957559

/-! ## A339089.P15013358958656836601

`A040001(A010009(n))*A281244(n)`
-/

namespace A339089.P15013358958656836601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A010009 n).toNat * A281244 n

end

end A339089.P15013358958656836601

/-! ## A339089.P4037428430884135550

`A281244(n)*A330098(A168056(2*n+1))`
-/

namespace A339089.P4037428430884135550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281244 n * A330098 (A168056 (2 * n + 1)).toNat

end

end A339089.P4037428430884135550

/-! ## A339089.P8181375888788272235

`A281228(sqrt(A232530(n+1))!)*A281244(n)`
-/

namespace A339089.P8181375888788272235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281228 (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (A232530 (n + 1) : ℝ))).toNat) * A281244 n

end

end A339089.P8181375888788272235

/-! ## A339089.P13746138540801054262

`A040001(A010009(n))*A284586(n)*A033999(n)`
-/

namespace A339089.P13746138540801054262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A010009 n).toNat * A284586 n * A033999 n

end

end A339089.P13746138540801054262

/-!
# A339090: GCD of friendly pairs.

The programs for A339090, there is no canonical definition to state claims against.
-/

/-! ## A339090.P14112566188311782910

`gcd(A050972(n+1), A050973(n+1))`
-/

namespace A339090.P14112566188311782910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050972 (n + 1)) (A050973 (n + 1))

end

end A339090.P14112566188311782910

/-! ## A339090.P662244369715954759

`gcd(A095301(n+1), A259918(A082743(n)))`
-/

namespace A339090.P662244369715954759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095301 (n + 1)) (A259918 (A082743 n).toNat)

end

end A339090.P662244369715954759

/-!
# A339092: Number of steps needed for a(1) = k ("the seed") to reappear in the sequence under the A339091 protocol, for k = 1, 2, 3, 4, ... to n. Else -1 if the seed never reappears.

The programs for A339092, there is no canonical definition to state claims against.
-/

/-! ## A339092.P4011489345052673502

`A087960(A184983(n))+A064532(A299988(n))`
-/

namespace A339092.P4011489345052673502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A184983 n).toNat + A064532 (A299988 n).toNat

end

end A339092.P4011489345052673502

/-! ## A339092.P11776579980379759035

`or(A010693(n), A178798(A117822(n)))`
-/

namespace A339092.P11776579980379759035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010693 n) (A178798 (A117822 n).toNat)

end

end A339092.P11776579980379759035

/-! ## A339092.P5554305673695751949

`A308778(A308003(n)^A047726(n+1))`
-/

namespace A339092.P5554305673695751949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (SequenceMachineLib.roundAway ((A308003 n : ℚ) ^ (A047726 (n + 1) : ℤ))).toNat

end

end A339092.P5554305673695751949

/-! ## A339092.P6474357026564874682

`or(A010693(n), A178798(A067466(n+1)))`
-/

namespace A339092.P6474357026564874682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010693 n) (A178798 (A067466 (n + 1)).toNat)

end

end A339092.P6474357026564874682

/-!
# A339093: Seeds producing -1 under the A339091 protocol.

The programs for A339093, there is no canonical definition to state claims against.
-/

/-! ## A339093.P13459129425504950617

`lt[A339092(n+1), 0]+1`
-/

namespace A339093.P13459129425504950617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339092 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A339093.P13459129425504950617

/-! ## A339093.P14290948031014771842

`eq[char[A339111(n+1)], A000007(n)]`
-/

namespace A339093.P14290948031014771842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339111 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A339093.P14290948031014771842

/-! ## A339093.P12516305541108860092

`eq[char[A339111(n+1)], A000038(n)]`
-/

namespace A339093.P12516305541108860092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339111 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A339093.P12516305541108860092

/-! ## A339093.P10120298719164579934

`eq[-1, A339092(A065033(2*n))]`
-/

namespace A339093.P10120298719164579934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339092 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339093.P10120298719164579934

/-! ## A339093.P980984053020635452

`eq[A339092(A065033(2*n))², A054977(n)]`
-/

namespace A339093.P980984053020635452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339092 (A065033 (2 * n)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339093.P980984053020635452

/-! ## A339093.P13639813022291854186

`eq[1, A339091(A339092(n+1)²)]+1`
-/

namespace A339093.P13639813022291854186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339091 (A339092 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339093.P13639813022291854186

/-! ## A339093.P12710454006553371512

`eq[1, A339111(A339092(n+1)²)]+1`
-/

namespace A339093.P12710454006553371512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339111 (A339092 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339093.P12710454006553371512

/-!
# A339094: 

The programs for A339094, there is no canonical definition to state claims against.
-/

/-! ## A339094.P15749537263402177827

`∑[∑[A001343(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A339094.P15749537263402177827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A001343 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339094.P15749537263402177827

/-! ## A339094.P4777797537064602095

`A001306(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A339094.P4777797537064602095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001306 n + a (n - 2)

end

end A339094.P4777797537064602095

/-! ## A339094.P279461991620037997

`A001306(n)-A057428(n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A339094.P279461991620037997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001306 n - A057428 n * a (n - 2)

end

end A339094.P279461991620037997

/-!
# A339096: Record values in A306400.

The programs for A339096, there is no canonical definition to state claims against.
-/

/-! ## A339096.P17209737851753807331

`record[A306400(n+1)]`
-/

namespace A339096.P17209737851753807331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339096.P17209737851753807331

/-! ## A339096.P11094262806839894078

`p?[record[A306400(A008619(n))]]`
-/

namespace A339096.P11094262806839894078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306400 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339096.P11094262806839894078

/-! ## A339096.P11066955872642665503

`p?[record[A306400(A019303(n))]]`
-/

namespace A339096.P11066955872642665503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306400 (A019303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339096.P11066955872642665503

