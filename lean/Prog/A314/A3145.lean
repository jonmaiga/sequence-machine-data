import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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

/-!
# A314500: Coordination sequence Gal.6.366.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314500, there is no canonical definition to state claims against.
-/

/-! ## A314500.P16431130344873905595

`A311625(n)+A070176(A000244(n))`
-/

namespace A314500.P16431130344873905595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + A070176 (A000244 n).toNat

end

end A314500.P16431130344873905595

/-! ## A314500.P10967087812637734618

`xor(A085021(A001519(n)), A250120(n))`
-/

namespace A314500.P10967087812637734618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A085021 (A001519 n).toNat) (A250120 n)

end

end A314500.P10967087812637734618

/-!
# A314501: Coordination sequence Gal.6.478.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314501, there is no canonical definition to state claims against.
-/

/-! ## A314501.P16423393209513742740

`A314447(n)-A343746(A004978(n+1))`
-/

namespace A314501.P16423393209513742740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314447 n - A343746 (A004978 (n + 1)).toNat

end

end A314501.P16423393209513742740

/-! ## A314501.P12026846471042888429

`A315901(n)-A138886((n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1)))`
-/

namespace A314501.P12026846471042888429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315901 n - A138886 ((n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ))).toNat

end

end A314501.P12026846471042888429

/-! ## A314501.P17926224731999005046

`A314502(n)-A286804(A000110(n))`
-/

namespace A314501.P17926224731999005046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314502 n - A286804 (A000110 n).toNat

end

end A314501.P17926224731999005046

/-!
# A314502: Coordination sequence Gal.4.125.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314502, there is no canonical definition to state claims against.
-/

/-! ## A314502.P5087926597467138283

`xor(A185284(A312241(n)), A314503(n))`
-/

namespace A314502.P5087926597467138283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A312241 n).toNat) (A314503 n)

end

end A314502.P5087926597467138283

/-! ## A314502.P11295763471713418255

`xor(A185284(A314504(n)), A314503(n))`
-/

namespace A314502.P11295763471713418255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A314504 n).toNat) (A314503 n)

end

end A314502.P11295763471713418255

/-! ## A314502.P14893726627882831811

`xor(A185284(A314713(n)), A314503(n))`
-/

namespace A314502.P14893726627882831811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A314713 n).toNat) (A314503 n)

end

end A314502.P14893726627882831811

/-! ## A314502.P3979165211781770352

`xor(A185284(A315901(n)), A314503(n))`
-/

namespace A314502.P3979165211781770352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A315901 n).toNat) (A314503 n)

end

end A314502.P3979165211781770352

/-! ## A314502.P1545493340681913467

`A310813(n)+A001221(A069008(n)-n)`
-/

namespace A314502.P1545493340681913467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310813 n + A001221 (A069008 n - (n : ℤ)).toNat

end

end A314502.P1545493340681913467

/-!
# A314503: Coordination sequence Gal.5.276.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314503, there is no canonical definition to state claims against.
-/

/-! ## A314503.P16565820175325427094

`xor(A185284(A310649(n)), A314502(n))`
-/

namespace A314503.P16565820175325427094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A310649 n).toNat) (A314502 n)

end

end A314503.P16565820175325427094

/-! ## A314503.P5306668771625668041

`xor(A185284(A312241(n)), A314502(n))`
-/

namespace A314503.P5306668771625668041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A312241 n).toNat) (A314502 n)

end

end A314503.P5306668771625668041

/-! ## A314503.P17539403879800136952

`xor(A185284(A312904(n)), A314502(n))`
-/

namespace A314503.P17539403879800136952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A312904 n).toNat) (A314502 n)

end

end A314503.P17539403879800136952

/-! ## A314503.P13225481668786956276

`xor(A185284(A314504(n)), A314502(n))`
-/

namespace A314503.P13225481668786956276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A314504 n).toNat) (A314502 n)

end

end A314503.P13225481668786956276

/-! ## A314503.P2807685412409062408

`xor(A185284(A314713(n)), A314502(n))`
-/

namespace A314503.P2807685412409062408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A314713 n).toNat) (A314502 n)

end

end A314503.P2807685412409062408

/-!
# A314504: Coordination sequence Gal.5.92.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314504, there is no canonical definition to state claims against.
-/

/-! ## A314504.P12208653171142437179

`A085515(A314411(n))+A030308(n)`
-/

namespace A314504.P12208653171142437179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085515 (A314411 n).toNat + A030308 n

end

end A314504.P12208653171142437179

/-! ## A314504.P9288262305996992659

`eq[A027359(n+1), A071625(A325329(n))]`
-/

namespace A314504.P9288262305996992659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A325329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314504.P9288262305996992659

/-!
# A314505: Coordination sequence Gal.6.315.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314505, there is no canonical definition to state claims against.
-/

/-! ## A314505.P10771483854137284111

`A314506(n)-A010894(A313116(n))`
-/

namespace A314505.P10771483854137284111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314506 n - A010894 ((A313116 n).toNat + 21)

end

end A314505.P10771483854137284111

/-! ## A314505.P14683738180395665874

`A314506(n)-A010894(A313865(n))`
-/

namespace A314505.P14683738180395665874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314506 n - A010894 ((A313865 n).toNat + 21)

end

end A314505.P14683738180395665874

/-! ## A314505.P1754591190402060371

`A314506(n)-A010894(A314510(n))`
-/

namespace A314505.P1754591190402060371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314506 n - A010894 ((A314510 n).toNat + 21)

end

end A314505.P1754591190402060371

/-! ## A314505.P8279161079335062078

`xor(A185284(A329699(n)), A314506(n))`
-/

namespace A314505.P8279161079335062078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A329699 n).toNat) (A314506 n)

end

end A314505.P8279161079335062078

/-! ## A314505.P6697144814248113697

`A314506(n^A238352(n))`
-/

namespace A314505.P6697144814248113697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314506 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A238352 n : ℤ))).toNat

end

end A314505.P6697144814248113697

/-!
# A314506: Coordination sequence Gal.5.249.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314506, there is no canonical definition to state claims against.
-/

/-! ## A314506.P9837758772814092969

`A314505(n)+A010894(A313116(n))`
-/

namespace A314506.P9837758772814092969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314505 n + A010894 ((A313116 n).toNat + 21)

end

end A314506.P9837758772814092969

/-! ## A314506.P5252318631773218981

`A314505(n)+A010894(A313865(n))`
-/

namespace A314506.P5252318631773218981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314505 n + A010894 ((A313865 n).toNat + 21)

end

end A314506.P5252318631773218981

/-! ## A314506.P13302019219813878531

`A314505(n)+A010894(A314510(n))`
-/

namespace A314506.P13302019219813878531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314505 n + A010894 ((A314510 n).toNat + 21)

end

end A314506.P13302019219813878531

/-! ## A314506.P15430243800657303500

`A250120(n)-A163540(A000110(n))`
-/

namespace A314506.P15430243800657303500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A163540 (A000110 n).toNat

end

end A314506.P15430243800657303500

/-! ## A314506.P14878614684015471809

`A350251(A057660(n+1))+A314505(n)`
-/

namespace A314506.P14878614684015471809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350251 (A057660 (n + 1)).toNat + A314505 n

end

end A314506.P14878614684015471809

/-!
# A314507: Coordination sequence Gal.6.538.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314507, there is no canonical definition to state claims against.
-/

/-! ## A314507.P16436625480900549707

`A313049(n)+A102283(n)`
-/

namespace A314507.P16436625480900549707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313049 n + A102283 n

end

end A314507.P16436625480900549707

/-! ## A314507.P4526649319823564972

`A313049(n)+A049347(n+2)`
-/

namespace A314507.P4526649319823564972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313049 n + A049347 (n + 2)

end

end A314507.P4526649319823564972

/-! ## A314507.P18287723864958823429

`A313049(n)+A131736(2*n)`
-/

namespace A314507.P18287723864958823429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313049 n + A131736 (2 * n)

end

end A314507.P18287723864958823429

/-! ## A314507.P788489903266475506

`A313049(n)-A134667(2*n+3)`
-/

namespace A314507.P788489903266475506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313049 n - A134667 (2 * n + 3)

end

end A314507.P788489903266475506

/-! ## A314507.P982967564670224618

`A313049(n)-A010892(A017329(n))`
-/

namespace A314507.P982967564670224618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313049 n - A010892 (A017329 n).toNat

end

end A314507.P982967564670224618

/-!
# A314509: Coordination sequence Gal.6.76.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314509, there is no canonical definition to state claims against.
-/

/-! ## A314509.P7645114715620376625

`A054386(3*n+1)-A211996(A340689(n+1))`
-/

namespace A314509.P7645114715620376625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (3 * n + 1) - A211996 (A340689 (n + 1)).toNat

end

end A314509.P7645114715620376625

/-! ## A314509.P5905154251881113399

`A315263(n)-A001222(A151083(n))`
-/

namespace A314509.P5905154251881113399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315263 n - A001222 (A151083 n).toNat

end

end A314509.P5905154251881113399

/-! ## A314509.P195981263393689025

`A315273(n)-A001222(A026017(n+2))`
-/

namespace A314509.P195981263393689025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315273 n - A001222 (A026017 (n + 2)).toNat

end

end A314509.P195981263393689025

/-! ## A314509.P11625703164588362502

`A054353(3*n+1)-A305193(A068642(n+1))`
-/

namespace A314509.P11625703164588362502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (3 * n + 1) - A305193 (A068642 (n + 1)).toNat

end

end A314509.P11625703164588362502

/-!
# A314510: Coordination sequence Gal.5.267.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314510, there is no canonical definition to state claims against.
-/

/-! ## A314510.P14016851266641879775

`A312144(n)+A196563(A195858(n))`
-/

namespace A314510.P14016851266641879775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + A196563 (A195858 n).toNat

end

end A314510.P14016851266641879775

/-! ## A314510.P16947857229962587597

`A250120(n)+A057078(A019589(n))`
-/

namespace A314510.P16947857229962587597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A057078 (A019589 n).toNat

end

end A314510.P16947857229962587597

/-! ## A314510.P10788175951284955586

`A250120(n)-A057078(A002906(n))`
-/

namespace A314510.P10788175951284955586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A057078 (A002906 n).toNat

end

end A314510.P10788175951284955586

/-! ## A314510.P5154165220237122570

`A250120(n)-A109017(A066810(n))`
-/

namespace A314510.P5154165220237122570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A109017 (A066810 n).toNat

end

end A314510.P5154165220237122570

/-! ## A314510.P11412331571742174590

`A314549(n)-A001221(A328323(n))`
-/

namespace A314510.P11412331571742174590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314549 n - A001221 (A328323 n).toNat

end

end A314510.P11412331571742174590

/-!
# A314511: Coordination sequence Gal.6.368.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314511, there is no canonical definition to state claims against.
-/

/-! ## A314511.P3613407500996907938

`A312178(n)+A064692(A070428(n))`
-/

namespace A314511.P3613407500996907938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312178 n + A064692 (A070428 n).toNat

end

end A314511.P3613407500996907938

/-! ## A314511.P718808332923945585

`A315027(n)-A046080(A255631(n))`
-/

namespace A314511.P718808332923945585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315027 n - A046080 (A255631 n).toNat

end

end A314511.P718808332923945585

/-! ## A314511.P10674707536025957960

`A311861(n)+A001221(A150904(n))-char[2]`
-/

namespace A314511.P10674707536025957960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + A001221 (A150904 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A314511.P10674707536025957960

/-! ## A314511.P5118327975167563023

`A314958(n)-A001221(A205800(n))-char[2]`
-/

namespace A314511.P5118327975167563023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314958 n - A001221 (A205800 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A314511.P5118327975167563023

/-!
# A314512: Coordination sequence Gal.5.128.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314512, there is no canonical definition to state claims against.
-/

/-! ## A314512.P8038236985176690409

`A312979(n)+A102283(A004146(n))`
-/

namespace A314512.P8038236985176690409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n + A102283 (A004146 n).toNat

end

end A314512.P8038236985176690409

/-! ## A314512.P14211944284139561021

`or(A092248(A040977(n)), A314511(n))`
-/

namespace A314512.P14211944284139561021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092248 (A040977 n).toNat) (A314511 n)

end

end A314512.P14211944284139561021

/-! ## A314512.P16243143816475290416

`or(A314511(n), A339824(A339848(n+1)))`
-/

namespace A314512.P16243143816475290416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314511 n) (A339824 (A339848 (n + 1)).toNat)

end

end A314512.P16243143816475290416

/-! ## A314512.P2262767222849958622

`xor(A266502(A002906(n)), A314895(n))`
-/

namespace A314512.P2262767222849958622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A266502 (A002906 n).toNat) (A314895 n)

end

end A314512.P2262767222849958622

/-! ## A314512.P1638968658732354388

`A312979(n)-A244895(A029858(n+1))`
-/

namespace A314512.P1638968658732354388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n - A244895 (A029858 (n + 1)).toNat

end

end A314512.P1638968658732354388

/-!
# A314513: Coordination sequence Gal.5.143.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314513, there is no canonical definition to state claims against.
-/

/-! ## A314513.P2048989863315126856

`xor(A035232(A000108(n)), A250120(n))`
-/

namespace A314513.P2048989863315126856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035232 (A000108 n).toNat) (A250120 n)

end

end A314513.P2048989863315126856

/-! ## A314513.P1882235358918747063

`xor(A035232(A211216(n)), A250120(n))`
-/

namespace A314513.P1882235358918747063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035232 (A211216 n).toNat) (A250120 n)

end

end A314513.P1882235358918747063

/-! ## A314513.P16338630510068659683

`xor(A035232(A028304(2*n)), A250120(n))`
-/

namespace A314513.P16338630510068659683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035232 (A028304 (2 * n)).toNat) (A250120 n)

end

end A314513.P16338630510068659683

/-! ## A314513.P7115816882863158909

`xor(A035232(A208355(2*n)), A250120(n))`
-/

namespace A314513.P7115816882863158909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035232 (A208355 (2 * n)).toNat) (A250120 n)

end

end A314513.P7115816882863158909

/-! ## A314513.P1598166533653674306

`A137893(A315006(n+1))+xor(A102683(A136628(n)), A312569(n))`
-/

namespace A314513.P1598166533653674306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (A315006 (n + 1)).toNat + Int.xor (A102683 (A136628 n).toNat) (A312569 n)

end

end A314513.P1598166533653674306

/-!
# A314515: Coordination sequence Gal.5.147.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314515, there is no canonical definition to state claims against.
-/

/-! ## A314515.P10084466348271631933

`A314516(n)-A023969(A267946(n+1)-n)`
-/

namespace A314515.P10084466348271631933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314516 n - A023969 (A267946 (n + 1) - (n : ℤ)).toNat

end

end A314515.P10084466348271631933

/-! ## A314515.P9684024516210510631

`A314518(n)+A056594(A046979(n))`
-/

namespace A314515.P9684024516210510631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314518 n + A056594 (A046979 n).toNat

end

end A314515.P9684024516210510631

/-! ## A314515.P15160324501213067646

`A314517(n)-A351907(A295987(n)+1)`
-/

namespace A314515.P15160324501213067646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314517 n - A351907 (A295987 n + 1).toNat

end

end A314515.P15160324501213067646

/-! ## A314515.P2688815239757341217

`A314516(n)-(A265757(n+1)+A265757(A148454(n)))`
-/

namespace A314515.P2688815239757341217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314516 n - (A265757 (n + 1) + A265757 (A148454 n).toNat)

end

end A314515.P2688815239757341217

/-! ## A314515.P4482469770871357003

`∑[A127752(A231336(n+1)²)]-A325334(A004525(n))`
-/

namespace A314515.P4482469770871357003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127752 (A231336 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325334 (A004525 n).toNat

end

end A314515.P4482469770871357003

/-!
# A314516: Coordination sequence Gal.5.157.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314516, there is no canonical definition to state claims against.
-/

/-! ## A314516.P13277818020444355469

`∑[A369174(A280085(n+3))]`
-/

namespace A314516.P13277818020444355469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369174 (A280085 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314516.P13277818020444355469

/-! ## A314516.P14216004824086082401

`∑[A127752(A231336(n+1)²)]-char[5]`
-/

namespace A314516.P14216004824086082401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127752 (A231336 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A314516.P14216004824086082401

/-! ## A314516.P16058065332095344031

`A312486(n)+A028930(A002137(n))`
-/

namespace A314516.P16058065332095344031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312486 n + A028930 (A002137 n).toNat

end

end A314516.P16058065332095344031

/-! ## A314516.P6169409807358453675

`A314517(n)-A038189(A078480(n))`
-/

namespace A314516.P6169409807358453675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314517 n - A038189 (A078480 n).toNat

end

end A314516.P6169409807358453675

/-! ## A314516.P11500786655883314924

`A314517(n)-A103589(A037952(n))`
-/

namespace A314516.P11500786655883314924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314517 n - A103589 (A037952 n).toNat

end

end A314516.P11500786655883314924

/-!
# A314517: Coordination sequence Gal.3.27.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314517, there is no canonical definition to state claims against.
-/

/-! ## A314517.P7562403180970238635

`A008706(n)+A250122(n)-A301287(n)`
-/

namespace A314517.P7562403180970238635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A250122 n - A301287 n)

end

end A314517.P7562403180970238635

/-! ## A314517.P3048015636975455701

`A008574(n)+A250122(n)-A301287(n)+n`
-/

namespace A314517.P3048015636975455701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A250122 n - A301287 n) + (n : ℤ)

end

end A314517.P3048015636975455701

/-! ## A314517.P1169796926987556491

`A250122(n)-A301287(n)+A008458(n)-n`
-/

namespace A314517.P1169796926987556491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n - A301287 n + (A008458 n - (n : ℤ))

end

end A314517.P1169796926987556491

/-! ## A314517.P5578874669892380956

`A315925(n)+A087509(n)-A004525(n)`
-/

namespace A314517.P5578874669892380956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315925 n + A087509 n - A004525 n

end

end A314517.P5578874669892380956

/-! ## A314517.P15386367548737050101

`char[7]+∑[A369174(A280085(n+3))]`
-/

namespace A314517.P15386367548737050101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369174 (A280085 (n + 3)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A314517.P15386367548737050101

/-!
# A314518: Coordination sequence Gal.6.560.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314518, there is no canonical definition to state claims against.
-/

/-! ## A314518.P5395992398112929040

`or(A174391(A087475(n)), A314516(n))`
-/

namespace A314518.P5395992398112929040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A174391 (A087475 n).toNat) (A314516 n)

end

end A314518.P5395992398112929040

/-! ## A314518.P13020805314421408118

`∑[A127752(A231336(n+1)²)]`
-/

namespace A314518.P13020805314421408118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127752 (A231336 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314518.P13020805314421408118

/-! ## A314518.P6404632066656823099

`char[5]+∑[A369174(A280085(n+3))]`
-/

namespace A314518.P6404632066656823099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369174 (A280085 (n + 3)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A314518.P6404632066656823099

/-! ## A314518.P9860976618886606171

`A014682(record[A179686(3*n+2)+1])`
-/

namespace A314518.P9860976618886606171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179686 (3 * n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A314518.P9860976618886606171

/-! ## A314518.P6823393857018522565

`A314457(n)+A055736(A330211(n))`
-/

namespace A314518.P6823393857018522565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314457 n + A055736 (A330211 n).toNat

end

end A314518.P6823393857018522565

/-!
# A314519: Coordination sequence Gal.6.373.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314519, there is no canonical definition to state claims against.
-/

/-! ## A314519.P17242386749878060061

`A106744(A315564(n))-(1-C(n, n²))`
-/

namespace A314519.P17242386749878060061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A315564 n).toNat - (1 - (Nat.choose n (n ^ 2) : ℤ))

end

end A314519.P17242386749878060061

/-! ## A314519.P1807859210198629057

`A100679(A047412(n+1))+A106744(A315564(n))-n`
-/

namespace A314519.P1807859210198629057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100679 (A047412 (n + 1)).toNat + (A106744 (A315564 n).toNat - (n : ℤ))

end

end A314519.P1807859210198629057

/-!
# A314520: Coordination sequence Gal.6.585.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314520, there is no canonical definition to state claims against.
-/

/-! ## A314520.P7236682790711911769

`A250120(n)-A245194(A005558(n))`
-/

namespace A314520.P7236682790711911769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A245194 (A005558 n).toNat

end

end A314520.P7236682790711911769

/-! ## A314520.P10743862946988621708

`A250120(n)-A157658(A368098(n))`
-/

namespace A314520.P10743862946988621708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A157658 (A368098 n).toNat

end

end A314520.P10743862946988621708

/-! ## A314520.P16509891496377806375

`xor(A314524(n), A317748(A007562(n+1)))`
-/

namespace A314520.P16509891496377806375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A314524 n) (A317748 (A007562 (n + 1)).toNat)

end

end A314520.P16509891496377806375

/-! ## A314520.P10355849551737993794

`A250120(n)+A074290(A243505(3*n+1))`
-/

namespace A314520.P10355849551737993794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A074290 (A243505 (3 * n + 1)).toNat

end

end A314520.P10355849551737993794

/-! ## A314520.P2191004794235651940

`A278513(A085986(3*(n+1)))+A250120(n)`
-/

namespace A314520.P2191004794235651940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278513 (A085986 (3 * (n + 1))).toNat + A250120 n

end

end A314520.P2191004794235651940

/-!
# A314521: Coordination sequence Gal.6.372.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314521, there is no canonical definition to state claims against.
-/

/-! ## A314521.P15667472310502710786

`A314443(n)+A001221(A351502(n))`
-/

namespace A314521.P15667472310502710786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314443 n + A001221 (A351502 n).toNat

end

end A314521.P15667472310502710786

/-!
# A314522: Coordination sequence Gal.6.382.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314522, there is no canonical definition to state claims against.
-/

/-! ## A314522.P16380029972202702938

`A160755(or(A060500(n), A315053(n)))`
-/

namespace A314522.P16380029972202702938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.lor (A060500 n) (A315053 n)).toNat

end

end A314522.P16380029972202702938

/-! ## A314522.P704139751124746802

`xor(A010892(A068599(n+1)), A315053(n))`
-/

namespace A314522.P704139751124746802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010892 (A068599 (n + 1)).toNat) (A315053 n)

end

end A314522.P704139751124746802

/-! ## A314522.P16432494259263532701

`A114275(n+1)+A001221(A038119(n+1))`
-/

namespace A314522.P16432494259263532701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114275 (n + 1) + A001221 (A038119 (n + 1)).toNat

end

end A314522.P16432494259263532701

/-!
# A314523: Coordination sequence Gal.6.388.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314523, there is no canonical definition to state claims against.
-/

/-! ## A314523.P10318384920581813111

`A217001(n+1)-A196564(A101495(n))`
-/

namespace A314523.P10318384920581813111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217001 (n + 1) - A196564 (A101495 n).toNat

end

end A314523.P10318384920581813111

/-! ## A314523.P949976561202038726

`A250120(n)-A191904(A202180(n+1))`
-/

namespace A314523.P949976561202038726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A191904 (A202180 (n + 1)).toNat

end

end A314523.P949976561202038726

/-! ## A314523.P10778708527544946349

`A184415(2*n+1)+A023416(A184436(n+1))`
-/

namespace A314523.P10778708527544946349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184415 (2 * n + 1) + A023416 (A184436 (n + 1)).toNat

end

end A314523.P10778708527544946349

/-!
# A314524: Coordination sequence Gal.5.150.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314524, there is no canonical definition to state claims against.
-/

/-! ## A314524.P16969893671675693242

`xor(A314520(n), A317748(A007562(n+1)))`
-/

namespace A314524.P16969893671675693242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A314520 n) (A317748 (A007562 (n + 1)).toNat)

end

end A314524.P16969893671675693242

/-! ## A314524.P17033839453139204109

`A250120(n)+A117449(A097710(2*(n+1)))`
-/

namespace A314524.P17033839453139204109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A117449 (A097710 (2 * (n + 1))).toNat

end

end A314524.P17033839453139204109

/-! ## A314524.P15808779546549370767

`A217001(n+1)-A010892(A005034(n))`
-/

namespace A314524.P15808779546549370767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217001 (n + 1) - A010892 (A005034 n).toNat

end

end A314524.P15808779546549370767

/-! ## A314524.P91791242343641607

`A315110(n)-A309823(A229242(n+1))`
-/

namespace A314524.P91791242343641607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315110 n - A309823 (A229242 (n + 1)).toNat

end

end A314524.P91791242343641607

/-!
# A314526: Coordination sequence Gal.6.390.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314526, there is no canonical definition to state claims against.
-/

/-! ## A314526.P8142373104848653381

`or(A025435(A001168(n)), A312702(n))`
-/

namespace A314526.P8142373104848653381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025435 (A001168 n).toNat) (A312702 n)

end

end A314526.P8142373104848653381

/-! ## A314526.P98815439524509472

`xor(A008706(n), A056169(A100307(n)))`
-/

namespace A314526.P98815439524509472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008706 n) (A056169 (A100307 n).toNat)

end

end A314526.P98815439524509472

/-!
# A314529: Coordination sequence Gal.4.120.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314529, there is no canonical definition to state claims against.
-/

/-! ## A314529.P17372640894945539692

`A310828(n)+A001221(A175934(n))`
-/

namespace A314529.P17372640894945539692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310828 n + A001221 (A175934 n).toNat

end

end A314529.P17372640894945539692

/-!
# A314531: Coordination sequence Gal.5.251.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314531, there is no canonical definition to state claims against.
-/

/-! ## A314531.P16399704299713882064

`∑[dr(A004901(A007689(n)))]`
-/

namespace A314531.P16399704299713882064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004901 (A007689 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314531.P16399704299713882064

/-! ## A314531.P3265438705476070444

`xor(A296211(A106184(n)), A313162(n))`
-/

namespace A314531.P3265438705476070444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A296211 (A106184 n).toNat) (A313162 n)

end

end A314531.P3265438705476070444

/-! ## A314531.P6134115084257272527

`A049622(n+1)-A329515(A000288(n))`
-/

namespace A314531.P6134115084257272527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049622 (n + 1) - A329515 (A000288 n).toNat

end

end A314531.P6134115084257272527

/-! ## A314531.P15833962312348809018

`A315929(n)-A164056(A032559(n+1))`
-/

namespace A314531.P15833962312348809018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315929 n - A164056 (A032559 (n + 1)).toNat

end

end A314531.P15833962312348809018

/-! ## A314531.P14943916144351759194

`A315929(n)-A164056(A078213(n+1))`
-/

namespace A314531.P14943916144351759194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315929 n - A164056 (A078213 (n + 1)).toNat

end

end A314531.P14943916144351759194

/-!
# A314532: Coordination sequence Gal.6.506.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314532, there is no canonical definition to state claims against.
-/

/-! ## A314532.P3963831258072038692

`A250120(n)-A352514(ceil(2^(n+1-log2(n+1))))`
-/

namespace A314532.P3963831258072038692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A352514 ⌈(2 : ℝ) ^ ((n + 1 : ℝ) - Real.logb 2 (n + 1 : ℝ))⌉.toNat

end

end A314532.P3963831258072038692

/-! ## A314532.P18342691775546548310

`A250120(n)-A287451(A000110(n))`
-/

namespace A314532.P18342691775546548310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A287451 (A000110 n).toNat

end

end A314532.P18342691775546548310

/-! ## A314532.P5188353862350422772

`A250120(n)-A334956(A115993(n))`
-/

namespace A314532.P5188353862350422772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A334956 (A115993 n).toNat

end

end A314532.P5188353862350422772

/-! ## A314532.P4469443092743156455

`A250120(n)-A341685(A305204(n))`
-/

namespace A314532.P4469443092743156455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A341685 (A305204 n).toNat

end

end A314532.P4469443092743156455

/-! ## A314532.P10335634617823429852

`or(A186724(A163328(n)), A312253(n))`
-/

namespace A314532.P10335634617823429852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186724 (A163328 n).toNat) (A312253 n)

end

end A314532.P10335634617823429852

/-!
# A314534: Coordination sequence Gal.5.250.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314534, there is no canonical definition to state claims against.
-/

/-! ## A314534.P17925127442589915518

`A314540(A087051(n))+A008683(A312561(3*n+2))`
-/

namespace A314534.P17925127442589915518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314540 (A087051 n).toNat + A008683 (A312561 (3 * n + 2)).toNat

end

end A314534.P17925127442589915518

/-! ## A314534.P7139448504790284467

`A314540(A227549(n+1))+A008683(A312561(3*n+2))`
-/

namespace A314534.P7139448504790284467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314540 (A227549 (n + 1)).toNat + A008683 (A312561 (3 * n + 2)).toNat

end

end A314534.P7139448504790284467

/-! ## A314534.P1443479730939406916

`A314540(n^A111696(n))+A008683(A312561(3*n+2))`
-/

namespace A314534.P1443479730939406916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314540 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A111696 n : ℤ))).toNat + A008683 (A312561 (3 * n + 2)).toNat

end

end A314534.P1443479730939406916

/-! ## A314534.P18011395680432673675

`A314540(n^A196222(n))+A008683(A312561(3*n+2))`
-/

namespace A314534.P18011395680432673675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314540 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A196222 n : ℤ))).toNat + A008683 (A312561 (3 * n + 2)).toNat

end

end A314534.P18011395680432673675

/-!
# A314535: Coordination sequence Gal.6.537.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314535, there is no canonical definition to state claims against.
-/

/-! ## A314535.P6867249732955312593

`A250120(n)-A077267(A331680(2*n+3))`
-/

namespace A314535.P6867249732955312593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A077267 (A331680 (2 * n + 3)).toNat

end

end A314535.P6867249732955312593

/-! ## A314535.P3584964929950255286

`abs(2*A037911(A330816(n+1))-A313688(n))`
-/

namespace A314535.P3584964929950255286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A037911 (A330816 (n + 1)).toNat - A313688 n|

end

end A314535.P3584964929950255286

/-! ## A314535.P3359538256756374401

`A250120(n)-A037800(A291731(n))`
-/

namespace A314535.P3359538256756374401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A037800 (A291731 n).toNat

end

end A314535.P3359538256756374401

/-! ## A314535.P3360824264242458712

`A072154(2*n)-A037800(A291731(n))`
-/

namespace A314535.P3360824264242458712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A037800 (A291731 n).toNat

end

end A314535.P3360824264242458712

/-! ## A314535.P3425273925677829890

`A250120(n)-A102677(A233862(2*n+3))`
-/

namespace A314535.P3425273925677829890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A102677 (A233862 (2 * n + 3)).toNat

end

end A314535.P3425273925677829890

/-!
# A314536: Coordination sequence Gal.6.536.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314536, there is no canonical definition to state claims against.
-/

/-! ## A314536.P12530150204423314550

`A072670(A029858(n+1))+A008574(n)`
-/

namespace A314536.P12530150204423314550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A029858 (n + 1)).toNat + A008574 n

end

end A314536.P12530150204423314550

/-!
# A314538: Coordination sequence Gal.5.127.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314538, there is no canonical definition to state claims against.
-/

/-! ## A314538.P7445285210235341942

`∑[A320033(A000070(3*n))]`
-/

namespace A314538.P7445285210235341942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320033 (A000070 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314538.P7445285210235341942

/-! ## A314538.P1903180970050544777

`record[A340510(record[A350849(n+2)])]`
-/

namespace A314538.P1903180970050544777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350849 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340510 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314538.P1903180970050544777

/-! ## A314538.P17097118671860446734

`∑[A320033(record[A100824(3*n+4)])]`
-/

namespace A314538.P17097118671860446734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320033 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314538.P17097118671860446734

/-! ## A314538.P14296620165998890727

`A084089(A032555(n+1))+A003056(n)`
-/

namespace A314538.P14296620165998890727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (A032555 (n + 1)).toNat + A003056 n

end

end A314538.P14296620165998890727

/-!
# A314539: Coordination sequence Gal.6.537.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314539, there is no canonical definition to state claims against.
-/

/-! ## A314539.P7665635864582113382

`A314540(n)-A010894(A314526(n))`
-/

namespace A314539.P7665635864582113382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314540 n - A010894 ((A314526 n).toNat + 21)

end

end A314539.P7665635864582113382

/-! ## A314539.P7858931039950459048

`A314540(A087051(n))`
-/

namespace A314539.P7858931039950459048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314540 (A087051 n).toNat

end

end A314539.P7858931039950459048

/-! ## A314539.P3118467230582823512

`A314540(A227549(n+1))`
-/

namespace A314539.P3118467230582823512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314540 (A227549 (n + 1)).toNat

end

end A314539.P3118467230582823512

/-! ## A314539.P5622247593349212421

`A314540(A396204(n+1))`
-/

namespace A314539.P5622247593349212421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314540 (A396204 (n + 1)).toNat

end

end A314539.P5622247593349212421

/-! ## A314539.P17707484898239197974

`A314540(n^A111696(n))`
-/

namespace A314539.P17707484898239197974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314540 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A111696 n : ℤ))).toNat

end

end A314539.P17707484898239197974

/-!
# A314540: Coordination sequence Gal.6.536.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314540, there is no canonical definition to state claims against.
-/

/-! ## A314540.P11664082064241109092

`A314539(n)+A010894(A314526(n))`
-/

namespace A314540.P11664082064241109092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314539 n + A010894 ((A314526 n).toNat + 21)

end

end A314540.P11664082064241109092

/-! ## A314540.P7365974341141359458

`or(A083037(A000085(n)), A314539(n))`
-/

namespace A314540.P7365974341141359458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083037 (A000085 n).toNat) (A314539 n)

end

end A314540.P7365974341141359458

/-!
# A314541: Coordination sequence Gal.5.261.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314541, there is no canonical definition to state claims against.
-/

/-! ## A314541.P6407912509067554926

`A312506(n)+A285501(A059826(n))`
-/

namespace A314541.P6407912509067554926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 n + A285501 (A059826 n).toNat

end

end A314541.P6407912509067554926

/-! ## A314541.P17908997055861580363

`A250120(n)-A196563(A036766(n))`
-/

namespace A314541.P17908997055861580363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A196563 (A036766 n).toNat

end

end A314541.P17908997055861580363

/-! ## A314541.P12180298685237746168

`A315018(n)-A151774(A117189(n))`
-/

namespace A314541.P12180298685237746168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315018 n - A151774 (A117189 n).toNat

end

end A314541.P12180298685237746168

/-! ## A314541.P11863464340445675091

`A250120(n)-A244415(A288805(n))`
-/

namespace A314541.P11863464340445675091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A244415 (A288805 n).toNat

end

end A314541.P11863464340445675091

/-! ## A314541.P15207428212393454328

`A250120(n)-A363795(A022562(n+1))`
-/

namespace A314541.P15207428212393454328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A363795 (A022562 (n + 1)).toNat

end

end A314541.P15207428212393454328

/-!
# A314542: Coordination sequence Gal.6.554.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314542, there is no canonical definition to state claims against.
-/

/-! ## A314542.P17494285825362995391

`A310814(n)+A001221(A150971(n))`
-/

namespace A314542.P17494285825362995391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310814 n + A001221 (A150971 n).toNat

end

end A314542.P17494285825362995391

/-! ## A314542.P4953061511905747883

`A049820(3*n+2)+A000005(A081294(n))`
-/

namespace A314542.P4953061511905747883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (3 * n + 2) + A000005 (A081294 n).toNat

end

end A314542.P4953061511905747883

/-!
# A314543: Coordination sequence Gal.6.560.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314543, there is no canonical definition to state claims against.
-/

/-! ## A314543.P14755428771228246584

`xor(A101671(n^4), A313115(n))`
-/

namespace A314543.P14755428771228246584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A101671 (n ^ 4)) (A313115 n)

end

end A314543.P14755428771228246584

/-! ## A314543.P15641482491803778769

`xor(A278700((1-n)²+n), A314898(n))`
-/

namespace A314543.P15641482491803778769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278700 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat) (A314898 n)

end

end A314543.P15641482491803778769

/-! ## A314543.P3887660979438908711

`xor(A080764(A017306(n)), A314849(n))`
-/

namespace A314543.P3887660979438908711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080764 (A017306 n).toNat) (A314849 n)

end

end A314543.P3887660979438908711

/-! ## A314543.P16286370726799510736

`xor(A172324(n), A172395(A172395(n)))`
-/

namespace A314543.P16286370726799510736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A172324 n) (A172395 (A172395 n).toNat)

end

end A314543.P16286370726799510736

/-! ## A314543.P14757975960197427872

`xor(A172324(n), A256038(A165877(n)))`
-/

namespace A314543.P14757975960197427872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A172324 n) (A256038 (A165877 n).toNat)

end

end A314543.P14757975960197427872

/-!
# A314544: Coordination sequence Gal.5.275.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314544, there is no canonical definition to state claims against.
-/

/-! ## A314544.P16319417191740143880

`A314491(n)+A086009(A361865(n+2))`
-/

namespace A314544.P16319417191740143880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314491 n + A086009 (A361865 (n + 2)).toNat

end

end A314544.P16319417191740143880

/-!
# A314547: Coordination sequence Gal.5.205.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314547, there is no canonical definition to state claims against.
-/

/-! ## A314547.P8988694837893899693

`A314565(n)-A080225(A291698(n))`
-/

namespace A314547.P8988694837893899693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314565 n - A080225 (A291698 n).toNat

end

end A314547.P8988694837893899693

/-! ## A314547.P13594548145316426751

`xor(A228177(n), A251660(A166884(n)))`
-/

namespace A314547.P13594548145316426751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A228177 n) (A251660 (A166884 n).toNat)

end

end A314547.P13594548145316426751

/-! ## A314547.P2767576656627407482

`A312427(n)+A136176(A058481(n+1))`
-/

namespace A314547.P2767576656627407482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312427 n + A136176 (A058481 (n + 1)).toNat

end

end A314547.P2767576656627407482

/-! ## A314547.P912406828991252692

`A172329(n)-A033999(A303035(n+1))`
-/

namespace A314547.P912406828991252692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172329 n - A033999 (A303035 (n + 1)).toNat

end

end A314547.P912406828991252692

/-! ## A314547.P17243614517134324058

`xor(A219347(A227549(n+1)), A228177(n))`
-/

namespace A314547.P17243614517134324058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A219347 (A227549 (n + 1)).toNat) (A228177 n)

end

end A314547.P17243614517134324058

/-!
# A314548: Coordination sequence Gal.4.99.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314548, the canonical program `A314548.P16561424659105891053` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314548 has offset 0).

The definition of A314548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314548.P16561424659105891053

`A314364(n)+A087509(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314548

/-- `A314364(n)+A087509(n)` -/
def P16561424659105891053.Spec : Prop :=
  ∀ n, P16561424659105891053.a n = A314548 n

theorem P16561424659105891053.correct : P16561424659105891053.Spec := by
  intro n
  simp only [A314548]

end A314548

/-! ## A314548.P4033001189274844933

`A314364(n)+Δ[A008133(n)]`
-/

namespace A314548.P4033001189274844933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314364 n + (f1 (n + 1) - f1 n)

end

end A314548.P4033001189274844933

namespace A314548

/-- `A314364(n)+Δ[A008133(n)]` -/
def P4033001189274844933.Spec : Prop :=
  ∀ n, P4033001189274844933.a n = A314548 n

end A314548

/-! ## A314548.P14478340629749973894

`A314364(n)+A105964(2*n)`
-/

namespace A314548.P14478340629749973894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314364 n + A105964 (2 * n)

end

end A314548.P14478340629749973894

namespace A314548

/-- `A314364(n)+A105964(2*n)` -/
def P14478340629749973894.Spec : Prop :=
  ∀ n, P14478340629749973894.a n = A314548 n

end A314548

/-! ## A314548.P10194845897637407057

`A314364(n)+A186731(A091684(n))`
-/

namespace A314548.P10194845897637407057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314364 n + A186731 (A091684 n).toNat

end

end A314548.P10194845897637407057

namespace A314548

/-- `A314364(n)+A186731(A091684(n))` -/
def P10194845897637407057.Spec : Prop :=
  ∀ n, P10194845897637407057.a n = A314548 n

end A314548

/-! ## A314548.P15863532714674151241

`A301720(n)-A006368(A004396(n))`
-/

namespace A314548.P15863532714674151241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n - A006368 (A004396 n).toNat

end

end A314548.P15863532714674151241

namespace A314548

/-- `A301720(n)-A006368(A004396(n))` -/
def P15863532714674151241.Spec : Prop :=
  ∀ n, P15863532714674151241.a n = A314548 n

end A314548

/-! ## A314548.P11871870038289045848

`A301690(A047222(n+1))-A006368(A004396(n))`
-/

namespace A314548.P11871870038289045848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 (A047222 (n + 1)).toNat - A006368 (A004396 n).toNat

end

end A314548.P11871870038289045848

namespace A314548

/-- `A301690(A047222(n+1))-A006368(A004396(n))` -/
def P11871870038289045848.Spec : Prop :=
  ∀ n, P11871870038289045848.a n = A314548 n

end A314548

/-! ## A314548.P9587047419440234810

`A008706(n)-Δ[A007494(A008133(n))]`
-/

namespace A314548.P9587047419440234810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A008133 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (f1 (n + 1) - f1 n)

end

end A314548.P9587047419440234810

namespace A314548

/-- `A008706(n)-Δ[A007494(A008133(n))]` -/
def P9587047419440234810.Spec : Prop :=
  ∀ n, P9587047419440234810.a n = A314548 n

end A314548

/-!
# A314549: Coordination sequence Gal.6.600.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314549, there is no canonical definition to state claims against.
-/

/-! ## A314549.P15368530460481178019

`A250120(n)+A088568(A346530(n+1))`
-/

namespace A314549.P15368530460481178019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A088568 (A346530 (n + 1)).toNat

end

end A314549.P15368530460481178019

/-! ## A314549.P8322547489456484657

`A250120(n)-A353354(A230823(n))`
-/

namespace A314549.P8322547489456484657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A353354 (A230823 n).toNat

end

end A314549.P8322547489456484657

/-! ## A314549.P15574481593516004408

`A250120(n)+A101455(A006776(n+3))`
-/

namespace A314549.P15574481593516004408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A101455 (A006776 (n + 3)).toNat

end

end A314549.P15574481593516004408

/-! ## A314549.P15058616702421941684

`A250120(n)-A319448(A073502(n+6))`
-/

namespace A314549.P15058616702421941684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A319448 (A073502 (n + 6)).toNat

end

end A314549.P15058616702421941684

/-! ## A314549.P17987235549245761926

`A250120(n)+A016416(A000217(2*(n+1)))`
-/

namespace A314549.P17987235549245761926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A016416 (A000217 (2 * (n + 1))).toNat

end

end A314549.P17987235549245761926

/-!
# A314550: Coordination sequence Gal.5.263.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314550, there is no canonical definition to state claims against.
-/

/-! ## A314550.P7424443892787938311

`or(A030308(A000110(n)), A312554(n))`
-/

namespace A314550.P7424443892787938311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030308 (A000110 n).toNat) (A312554 n)

end

end A314550.P7424443892787938311

/-! ## A314550.P4397360179928566643

`A313062(n)+A056594(A238117(n+1))`
-/

namespace A314550.P4397360179928566643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313062 n + A056594 (A238117 (n + 1)).toNat

end

end A314550.P4397360179928566643

/-! ## A314550.P7248369833202070078

`xor(A083025(A000108(n+1)), A250120(n))`
-/

namespace A314550.P7248369833202070078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083025 (A000108 (n + 1)).toNat) (A250120 n)

end

end A314550.P7248369833202070078

/-! ## A314550.P11634491168936807136

`xor(A083912(A000903(n+1)), A250120(n))`
-/

namespace A314550.P11634491168936807136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083912 (A000903 (n + 1)).toNat) (A250120 n)

end

end A314550.P11634491168936807136

/-! ## A314550.P17402005141511446170

`xor(A178725(A079079(n+1)), A315032(n))`
-/

namespace A314550.P17402005141511446170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178725 (A079079 (n + 1)).toNat) (A315032 n)

end

end A314550.P17402005141511446170

/-!
# A314551: Coordination sequence Gal.6.597.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314551, there is no canonical definition to state claims against.
-/

/-! ## A314551.P9163290646341811406

`A315056(n)-A169675(A001906(n))`
-/

namespace A314551.P9163290646341811406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315056 n - A169675 (A001906 n).toNat

end

end A314551.P9163290646341811406

/-! ## A314551.P7212674763797944278

`A315034(n)-A101688(A132461(n))`
-/

namespace A314551.P7212674763797944278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315034 n - A101688 (A132461 n).toNat

end

end A314551.P7212674763797944278

/-! ## A314551.P16954451142557446076

`A315056(n)-A169675(A088305(n))`
-/

namespace A314551.P16954451142557446076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315056 n - A169675 (A088305 n).toNat

end

end A314551.P16954451142557446076

/-! ## A314551.P1033349063079676773

`A314552(n)-A185284(A314588(n))`
-/

namespace A314551.P1033349063079676773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314552 n - A185284 (A314588 n).toNat

end

end A314551.P1033349063079676773

/-! ## A314551.P10639400973555449105

`A315052(n)-A353638(A213757(n+1))`
-/

namespace A314551.P10639400973555449105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315052 n - A353638 (A213757 (n + 1)).toNat

end

end A314551.P10639400973555449105

/-!
# A314552: Coordination sequence Gal.3.45.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314552, there is no canonical definition to state claims against.
-/

/-! ## A314552.P6687956952228251312

`or(A097325(A075927(n)), A312556(n))`
-/

namespace A314552.P6687956952228251312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097325 (A075927 n).toNat) (A312556 n)

end

end A314552.P6687956952228251312

/-! ## A314552.P17030499859548901904

`or(A097325(A075927(n)), A314551(n))`
-/

namespace A314552.P17030499859548901904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097325 (A075927 n).toNat) (A314551 n)

end

end A314552.P17030499859548901904

/-! ## A314552.P6967067266680595934

`A315052(n)-A151909(A217246(n+1))`
-/

namespace A314552.P6967067266680595934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315052 n - A151909 (A217246 (n + 1)).toNat

end

end A314552.P6967067266680595934

/-! ## A314552.P2992887857304224115

`A330025(A275309(n)-A182883(n))+A312561(n)`
-/

namespace A314552.P2992887857304224115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A275309 n - A182883 n).toNat + A312561 n

end

end A314552.P2992887857304224115

/-! ## A314552.P14174679002452281148

`or(A000035(A145129(n)), A314551(n))`
-/

namespace A314552.P14174679002452281148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A145129 n).toNat) (A314551 n)

end

end A314552.P14174679002452281148

/-!
# A314553: Coordination sequence Gal.3.46.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314553, there is no canonical definition to state claims against.
-/

/-! ## A314553.P10581754034570833467

`A314554(n)-A198318(A186745(n+1))`
-/

namespace A314553.P10581754034570833467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314554 n - A198318 (A186745 (n + 1)).toNat

end

end A314553.P10581754034570833467

/-! ## A314553.P14113257004842650044

`(A314554(n)-A047766(n+1))%Δ[A273535(n)]`
-/

namespace A314553.P14113257004842650044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314554 n - A047766 (n + 1)) (f1 (n + 1) - f1 n)

end

end A314553.P14113257004842650044

/-! ## A314553.P7683637438293295165

`(A314554(n)-A047766(n+1))^A014963(A010004(n))`
-/

namespace A314553.P7683637438293295165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314554 n - A047766 (n + 1) : ℚ) ^ (A014963 (A010004 n).toNat : ℤ)

end

end A314553.P7683637438293295165

/-! ## A314553.P12799813829037448735

`or(A314554(n), A340988(A139204(n+1)))`
-/

namespace A314553.P12799813829037448735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314554 n) (A340988 ((A139204 (n + 1)).toNat + 91))

end

end A314553.P12799813829037448735

/-! ## A314553.P12574805691513711519

`A314554(A062399(n))`
-/

namespace A314553.P12574805691513711519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314554 (A062399 n).toNat

end

end A314553.P12574805691513711519

/-!
# A314554: Coordination sequence Gal.6.597.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314554, there is no canonical definition to state claims against.
-/

/-! ## A314554.P18034117901363240566

`A314553(n)+A186741(A001405(n+1))`
-/

namespace A314554.P18034117901363240566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314553 n + A186741 (A001405 (n + 1)).toNat

end

end A314554.P18034117901363240566

/-! ## A314554.P1298741958510325937

`A314553(n)+A180601(A007826(n+1))`
-/

namespace A314554.P1298741958510325937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314553 n + A180601 (A007826 (n + 1)).toNat

end

end A314554.P1298741958510325937

/-! ## A314554.P2104924307077879078

`or(A102683(A000079(n)), A314553(n))`
-/

namespace A314554.P2104924307077879078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A000079 n).toNat) (A314553 n)

end

end A314554.P2104924307077879078

/-! ## A314554.P14406516497451726392

`or(A127872(A264507(n+1)), A314553(n))`
-/

namespace A314554.P14406516497451726392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127872 (A264507 (n + 1)).toNat) (A314553 n)

end

end A314554.P14406516497451726392

/-!
# A314555: Coordination sequence Gal.6.606.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314555, there is no canonical definition to state claims against.
-/

/-! ## A314555.P9930486059311605074

`(A314566(n)+A314468(n))/2`
-/

namespace A314555.P9930486059311605074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314566 n + A314468 n : ℚ) / 2

end

end A314555.P9930486059311605074

/-! ## A314555.P6670821851980886168

`A001281(A314566(n)+A314468(n))`
-/

namespace A314555.P6670821851980886168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A314566 n + A314468 n).toNat

end

end A314555.P6670821851980886168

/-! ## A314555.P8332636443947017330

`A004525(A314566(n)+A314468(n))`
-/

namespace A314555.P8332636443947017330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314566 n + A314468 n).toNat

end

end A314555.P8332636443947017330

/-! ## A314555.P5303820144280084731

`A004526(A314566(n)+A314468(n))`
-/

namespace A314555.P5303820144280084731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A314566 n + A314468 n).toNat

end

end A314555.P5303820144280084731

/-! ## A314555.P4439978968822441091

`A006370(A314566(n)+A314468(n))`
-/

namespace A314555.P4439978968822441091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A314566 n + A314468 n).toNat

end

end A314555.P4439978968822441091

/-! ## A314555.P12342142033938650542

`A025480(A314566(n)+A314468(n))`
-/

namespace A314555.P12342142033938650542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A314566 n + A314468 n).toNat

end

end A314555.P12342142033938650542

/-! ## A314555.P9835728760160934391

`A026741(A314566(n)+A314468(n))`
-/

namespace A314555.P9835728760160934391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A314566 n + A314468 n).toNat

end

end A314555.P9835728760160934391

/-! ## A314555.P16970676233021068986

`A029578(A314566(n)+A314468(n))`
-/

namespace A314555.P16970676233021068986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A314566 n + A314468 n).toNat

end

end A314555.P16970676233021068986

/-! ## A314555.P9457351959265427729

`A065033(A314566(n)+A314468(n))`
-/

namespace A314555.P9457351959265427729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A314566 n + A314468 n).toNat

end

end A314555.P9457351959265427729

/-! ## A314555.P8108606276688077456

`A008619(A314468(n)+A314566(n)-1)`
-/

namespace A314555.P8108606276688077456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A314468 n + (A314566 n - 1)).toNat

end

end A314555.P8108606276688077456

/-! ## A314555.P10708455870702342587

`A008619(A314468(n)-(1-A314566(n)))`
-/

namespace A314555.P10708455870702342587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A314468 n - (1 - A314566 n)).toNat

end

end A314555.P10708455870702342587

/-! ## A314555.P13047175360370650874

`A065033(A314468(n)-(1-A314566(n)))`
-/

namespace A314555.P13047175360370650874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A314468 n - (1 - A314566 n)).toNat

end

end A314555.P13047175360370650874

/-!
# A314556: Coordination sequence Gal.5.204.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314556, there is no canonical definition to state claims against.
-/

/-! ## A314556.P6217151894684692999

`A194125(3*n+1)-A085357(A016054(n+1))`
-/

namespace A314556.P6217151894684692999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194125 (3 * n + 1) - A085357 (A016054 (n + 1)).toNat

end

end A314556.P6217151894684692999

/-!
# A314558: Coordination sequence Gal.6.562.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314558, there is no canonical definition to state claims against.
-/

/-! ## A314558.P8106079868783678127

`A351570(A002961(2*(n+1)))+A314554(n)`
-/

namespace A314558.P8106079868783678127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (A002961 (2 * (n + 1))).toNat + A314554 n

end

end A314558.P8106079868783678127

/-! ## A314558.P1089858591719194550

`A158648(3*n+2)-A057918(A011971(∑[n]))`
-/

namespace A314558.P1089858591719194550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158648 (3 * n + 2) - A057918 (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A314558.P1089858591719194550

/-! ## A314558.P9829131468103312662

`A158648(3*n+2)-A057918(A108087(∑[n]))`
-/

namespace A314558.P9829131468103312662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158648 (3 * n + 2) - A057918 (A108087 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A314558.P9829131468103312662

/-! ## A314558.P14063751197332456339

`A158648(3*n+2)-A057918(A212431(∑[n]))`
-/

namespace A314558.P14063751197332456339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158648 (3 * n + 2) - A057918 (A212431 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A314558.P14063751197332456339

/-! ## A314558.P9599134055389115378

`A158648(3*n+2)-A057918(A259691(∑[n]))`
-/

namespace A314558.P9599134055389115378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158648 (3 * n + 2) - A057918 (A259691 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A314558.P9599134055389115378

/-!
# A314559: Coordination sequence Gal.6.607.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314559, there is no canonical definition to state claims against.
-/

/-! ## A314559.P5865869452882225332

`A314560(n)-A185284(A097921(n))`
-/

namespace A314559.P5865869452882225332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314560 n - A185284 (A097921 n).toNat

end

end A314559.P5865869452882225332

/-! ## A314559.P1091781654910567149

`A314560(n)-A185284(A310656(n))`
-/

namespace A314559.P1091781654910567149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314560 n - A185284 (A310656 n).toNat

end

end A314559.P1091781654910567149

/-! ## A314559.P5194454511968618092

`A314560(n)-A185284(A314606(n))`
-/

namespace A314559.P5194454511968618092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314560 n - A185284 (A314606 n).toNat

end

end A314559.P5194454511968618092

/-! ## A314559.P13861961618345229864

`A314560(A087051(n))`
-/

namespace A314559.P13861961618345229864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314560 (A087051 n).toNat

end

end A314559.P13861961618345229864

/-! ## A314559.P13827141229757798687

`A314560(A227549(n+1))`
-/

namespace A314559.P13827141229757798687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314560 (A227549 (n + 1)).toNat

end

end A314559.P13827141229757798687

/-!
# A314560: Coordination sequence Gal.6.608.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314560, there is no canonical definition to state claims against.
-/

/-! ## A314560.P5682064400974464095

`A314559(n)+A185284(A097921(n))`
-/

namespace A314560.P5682064400974464095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314559 n + A185284 (A097921 n).toNat

end

end A314560.P5682064400974464095

/-! ## A314560.P2727867549005552371

`A314559(n)+A185284(A310656(n))`
-/

namespace A314560.P2727867549005552371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314559 n + A185284 (A310656 n).toNat

end

end A314560.P2727867549005552371

/-! ## A314560.P8834769282323593803

`A314559(n)+A185284(A314606(n))`
-/

namespace A314560.P8834769282323593803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314559 n + A185284 (A314606 n).toNat

end

end A314560.P8834769282323593803

/-! ## A314560.P11950239226534765528

`A314559(n)+A185284(A065091(n+1))`
-/

namespace A314560.P11950239226534765528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314559 n + A185284 (A065091 (n + 1)).toNat

end

end A314560.P11950239226534765528

/-! ## A314560.P1134116292013355404

`or(A000035(A205577(n+1)), A314559(n))`
-/

namespace A314560.P1134116292013355404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A205577 (n + 1)).toNat) (A314559 n)

end

end A314560.P1134116292013355404

/-!
# A314561: Coordination sequence Gal.6.512.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314561, there is no canonical definition to state claims against.
-/

/-! ## A314561.P3981864556078298713

`A314562(n)-A185284(A314562(n)-n)`
-/

namespace A314561.P3981864556078298713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314562 n - A185284 (A314562 n - (n : ℤ)).toNat

end

end A314561.P3981864556078298713

/-! ## A314561.P14431009108421216237

`A314562(n)-A100910(A106303(n+1))`
-/

namespace A314561.P14431009108421216237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314562 n - A100910 (A106303 (n + 1)).toNat

end

end A314561.P14431009108421216237

/-! ## A314561.P4318184907639733611

`A314562(A032559(n+1)-1)`
-/

namespace A314561.P4318184907639733611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314562 (A032559 (n + 1) - 1).toNat

end

end A314561.P4318184907639733611

/-! ## A314561.P4261184405785899460

`A314562(n)+A151878(A374635(n))`
-/

namespace A314561.P4261184405785899460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314562 n + A151878 (A374635 n).toNat

end

end A314561.P4261184405785899460

/-!
# A314562: Coordination sequence Gal.6.515.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314562, there is no canonical definition to state claims against.
-/

/-! ## A314562.P9100287697883363599

`or(A205577(A100577(n+1)), A314561(n))`
-/

namespace A314562.P9100287697883363599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A205577 (A100577 (n + 1)).toNat) (A314561 n)

end

end A314562.P9100287697883363599

/-! ## A314562.P9506894005674706157

`A344739(A131065(2*n+1))+A314561(n)`
-/

namespace A314562.P9506894005674706157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344739 (A131065 (2 * n + 1)).toNat + A314561 n

end

end A314562.P9506894005674706157

/-! ## A314562.P18189264273558656115

`A314561(n)+A011736(A328319(n))`
-/

namespace A314562.P18189264273558656115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314561 n + A011736 (A328319 n).toNat

end

end A314562.P18189264273558656115

/-! ## A314562.P3731391304383295116

`A314561(n)+A185284(A314578(n))`
-/

namespace A314562.P3731391304383295116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314561 n + A185284 (A314578 n).toNat

end

end A314562.P3731391304383295116

/-! ## A314562.P7658865963567543667

`A314561(n)+A185284(A314595(n))`
-/

namespace A314562.P7658865963567543667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314561 n + A185284 (A314595 n).toNat

end

end A314562.P7658865963567543667

/-!
# A314563: Coordination sequence Gal.5.154.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314563, there is no canonical definition to state claims against.
-/

/-! ## A314563.P661990473655994986

`A312499(n)-A088705(A158127(n+1))`
-/

namespace A314563.P661990473655994986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312499 n - A088705 (A158127 (n + 1)).toNat

end

end A314563.P661990473655994986

/-! ## A314563.P17086045850516168016

`record[A180681(A001844(n))%A338598(n+1)]`
-/

namespace A314563.P17086045850516168016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180681 (A001844 n).toNat) (A338598 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314563.P17086045850516168016

/-! ## A314563.P15515885990234513503

`A076141(A057711(n+3))+A055742(2*n+1)`
-/

namespace A314563.P15515885990234513503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076141 (A057711 (n + 3)).toNat + A055742 (2 * n + 1)

end

end A314563.P15515885990234513503

/-! ## A314563.P9541803849969936941

`A216230(A060735(3*n+2))+A055742(2*n+1)`
-/

namespace A314563.P9541803849969936941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 (A060735 (3 * n + 2)).toNat + A055742 (2 * n + 1)

end

end A314563.P9541803849969936941

/-!
# A314565: Coordination sequence Gal.6.558.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314565, there is no canonical definition to state claims against.
-/

/-! ## A314565.P1315380694976252785

`A314547(n)+A080225(A291698(n))`
-/

namespace A314565.P1315380694976252785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314547 n + A080225 (A291698 n).toNat

end

end A314565.P1315380694976252785

/-! ## A314565.P6542914243139284294

`A358135(A126569(n))+A250120(n)`
-/

namespace A314565.P6542914243139284294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358135 (A126569 n).toNat + A250120 n

end

end A314565.P6542914243139284294

/-!
# A314566: Coordination sequence Gal.4.129.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314566, there is no canonical definition to state claims against.
-/

/-! ## A314566.P15894503793383538889

`2*A314555(n)-A314468(n)`
-/

namespace A314566.P15894503793383538889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314555 n - A314468 n

end

end A314566.P15894503793383538889

/-! ## A314566.P2227348678362323043

`A005843(A314555(n))-A314468(n)`
-/

namespace A314566.P2227348678362323043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314555 n).toNat - A314468 n

end

end A314566.P2227348678362323043

/-!
# A314568: Coordination sequence Gal.6.559.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314568, there is no canonical definition to state claims against.
-/

/-! ## A314568.P14905780718842910986

`eq[A001222(A227891(n+1)), A099054(n)]`
-/

namespace A314568.P14905780718842910986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A227891 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314568.P14905780718842910986

/-!
# A314579: Coordination sequence Gal.5.48.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314579, there is no canonical definition to state claims against.
-/

/-! ## A314579.P17744711285625178552

`A055743(n+1)-A082064(A272177(n))`
-/

namespace A314579.P17744711285625178552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055743 (n + 1) - A082064 (A272177 n).toNat

end

end A314579.P17744711285625178552

/-!
# A314580: Coordination sequence Gal.5.49.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314580, there is no canonical definition to state claims against.
-/

/-! ## A314580.P16938192475683657314

`A123580(A131882(n)+A123573(n))`
-/

namespace A314580.P16938192475683657314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A131882 n + A123573 n).toNat

end

end A314580.P16938192475683657314

/-! ## A314580.P15263217954390869650

`A345197(A300307(n+1))+A339212(n+1)`
-/

namespace A314580.P15263217954390869650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (A300307 (n + 1)).toNat + A339212 (n + 1)

end

end A314580.P15263217954390869650

/-!
# A314581: Coordination sequence Gal.3.48.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314581, there is no canonical definition to state claims against.
-/

/-! ## A314581.P17201729413176611913

`∑[A273751(A168208(n+1)^A234398(2*n+1))]`
-/

namespace A314581.P17201729413176611913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273751 (SequenceMachineLib.roundAway ((A168208 (n + 1) : ℚ) ^ (A234398 (2 * n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314581.P17201729413176611913

/-!
# A314584: Coordination sequence Gal.6.100.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314584, there is no canonical definition to state claims against.
-/

/-! ## A314584.P13656555120455709862

`∑[A037180(A377904(n))]`
-/

namespace A314584.P13656555120455709862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037180 (A377904 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314584.P13656555120455709862

/-! ## A314584.P3728140361485241075

`A056556(A281225(n+1)+A281208(n+1))`
-/

namespace A314584.P3728140361485241075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A281225 (n + 1) + A281208 (n + 1)).toNat

end

end A314584.P3728140361485241075

/-!
# A314585: Coordination sequence Gal.6.101.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314585, there is no canonical definition to state claims against.
-/

/-! ## A314585.P16495142320363530169

`A339841(A339841(n+1))+A217032(2*n+1)`
-/

namespace A314585.P16495142320363530169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339841 (A339841 (n + 1)).toNat + A217032 (2 * n + 1)

end

end A314585.P16495142320363530169

/-!
# A314586: Coordination sequence Gal.5.207.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314586, there is no canonical definition to state claims against.
-/

/-! ## A314586.P2380980124140693930

`A064377(2*n+1)-A076479(A221882(n+1))`
-/

namespace A314586.P2380980124140693930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064377 (2 * n + 1) - A076479 (A221882 (n + 1)).toNat

end

end A314586.P2380980124140693930

/-! ## A314586.P12373136380475213155

`eq[A087838(n+1), A124224(n+1)]`
-/

namespace A314586.P12373136380475213155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314586.P12373136380475213155

/-! ## A314586.P6995891891770826870

`or(A061373(A104743(n)), A193592(n))`
-/

namespace A314586.P6995891891770826870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061373 (A104743 n).toNat) (A193592 n)

end

end A314586.P6995891891770826870

/-! ## A314586.P3553270093388370822

`A314614(n)-A073424(A000513(n+1))`
-/

namespace A314586.P3553270093388370822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314614 n - A073424 (A000513 (n + 1)).toNat

end

end A314586.P3553270093388370822

/-! ## A314586.P14088410249661982537

`A026491(2*n)-A357621(A001629(n))`
-/

namespace A314586.P14088410249661982537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (2 * n) - A357621 (A001629 n).toNat

end

end A314586.P14088410249661982537

/-!
# A314587: Coordination sequence Gal.5.213.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314587, there is no canonical definition to state claims against.
-/

/-! ## A314587.P2145355448886112534

`∩[∑[A242062(3*n+2)], A346129(n+1)]`
-/

namespace A314587.P2145355448886112534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A314587.P2145355448886112534

/-! ## A314587.P15068413699775493780

`A055743(n+1)-A071773(A000111(n))`
-/

namespace A314587.P15068413699775493780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055743 (n + 1) - A071773 (A000111 n).toNat

end

end A314587.P15068413699775493780

/-! ## A314587.P2954883995412283648

`A055743(n+1)-A000688(A274585(n))`
-/

namespace A314587.P2954883995412283648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055743 (n + 1) - A000688 (A274585 n).toNat

end

end A314587.P2954883995412283648

/-! ## A314587.P397705854262576723

`A063440(n+1)+record[A326152(n)]`
-/

namespace A314587.P397705854262576723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314587.P397705854262576723

/-! ## A314587.P11601958345720219602

`xor(A050626(n+1), A288622(3^n))`
-/

namespace A314587.P11601958345720219602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A050626 (n + 1)) (A288622 (3 ^ n))

end

end A314587.P11601958345720219602

/-!
# A314588: Coordination sequence Gal.3.47.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314588, there is no canonical definition to state claims against.
-/

/-! ## A314588.P17275123209030464233

`A314587(n)+A067169(A100823(n))`
-/

namespace A314588.P17275123209030464233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314587 n + A067169 ((A100823 n).toNat + 11)

end

end A314588.P17275123209030464233

/-! ## A314588.P1511458360912608972

`eq[A085794(n), A326786(A272038(n))]`
-/

namespace A314588.P1511458360912608972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085794 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 (A272038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314588.P1511458360912608972

/-!
# A314589: Coordination sequence Gal.6.112.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314589, there is no canonical definition to state claims against.
-/

/-! ## A314589.P11264662833750040551

`or(A075743(A000984(n)), A320497(n))`
-/

namespace A314589.P11264662833750040551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A075743 (A000984 n).toNat) (A320497 n)

end

end A314589.P11264662833750040551

/-! ## A314589.P17276883115868717886

`A314587(n)-A248805(A259490(n+1))`
-/

namespace A314589.P17276883115868717886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314587 n - A248805 (A259490 (n + 1)).toNat

end

end A314589.P17276883115868717886

/-! ## A314589.P7705818914443167508

`∑[A060937(A131480(n+1)+A103446(n))]`
-/

namespace A314589.P7705818914443167508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060937 (A131480 (n + 1) + A103446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314589.P7705818914443167508

/-! ## A314589.P17653736478709991720

`A247752(3*n+1)+A002828(A071721(n))`
-/

namespace A314589.P17653736478709991720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247752 (3 * n + 1) + A002828 (A071721 n).toNat

end

end A314589.P17653736478709991720

/-! ## A314589.P10501805589369936115

`A345914(3*n+1)+A344618(A163493(n))`
-/

namespace A314589.P10501805589369936115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345914 (3 * n + 1) + A344618 (A163493 n).toNat

end

end A314589.P10501805589369936115

/-!
# A314590: Coordination sequence Gal.6.113.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314590, there is no canonical definition to state claims against.
-/

/-! ## A314590.P18101202130187203851

`eq[1, A090277(A114615(n+1))]`
-/

namespace A314590.P18101202130187203851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090277 (A114615 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A314590.P18101202130187203851

/-! ## A314590.P5302233240889599444

`A000267(Δ[n²]*A050731(n))`
-/

namespace A314590.P5302233240889599444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A050731 n).toNat

end

end A314590.P5302233240889599444

/-! ## A314590.P3109739312757373872

`4*n+1-A332887(A374634(n+2))`
-/

namespace A314590.P3109739312757373872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) - A332887 (A374634 (n + 2)).toNat

end

end A314590.P3109739312757373872

/-! ## A314590.P5586020956395716539

`A346132((∑[5-gcd(3, n)]-1)%A019286(n+1))`
-/

namespace A314590.P5586020956395716539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) (A019286 (n + 1))).toNat

end

end A314590.P5586020956395716539

/-! ## A314590.P355286312441725793

`A211272(n+2)+A005843(A050731(n))`
-/

namespace A314590.P355286312441725793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (n + 2) + A005843 (A050731 n).toNat

end

end A314590.P355286312441725793

/-!
# A314591: Coordination sequence Gal.6.61.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314591, there is no canonical definition to state claims against.
-/

/-! ## A314591.P15822064752930325888

`∑[A042946(A022086(n))]`
-/

namespace A314591.P15822064752930325888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042946 (A022086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314591.P15822064752930325888

/-! ## A314591.P6168161790681368393

`∑[A000005(A257272(n)-1)]-1`
-/

namespace A314591.P6168161790681368393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A257272 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A314591.P6168161790681368393

/-! ## A314591.P16172063221606842354

`∑[A160163(Δ[A262609(2*(n+1))])]`
-/

namespace A314591.P16172063221606842354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160163 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314591.P16172063221606842354

/-! ## A314591.P8713021796899697870

`∑[A168142(A137508(3*n+1))]+n`
-/

namespace A314591.P8713021796899697870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168142 (A137508 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A314591.P8713021796899697870

/-! ## A314591.P14884221273962057607

`eq[A002057(A378006(n+1)), A378039(2*(n+1))]`
-/

namespace A314591.P14884221273962057607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 (A378006 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378039 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314591.P14884221273962057607

/-!
# A314592: Coordination sequence Gal.6.480.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314592, there is no canonical definition to state claims against.
-/

/-! ## A314592.P2453677941833754654

`eq[A193179(n+2), A193583(n+5)]`
-/

namespace A314592.P2453677941833754654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193179 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193583 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314592.P2453677941833754654

/-! ## A314592.P16587967485998068227

`or(A314588(n), A324828(A204648(n+1)))`
-/

namespace A314592.P16587967485998068227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314588 n) (A324828 (A204648 (n + 1)).toNat)

end

end A314592.P16587967485998068227

/-! ## A314592.P6011785219584435388

`A080907(3*n+1)+A023416(A353998(n))`
-/

namespace A314592.P6011785219584435388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (3 * n + 1) + A023416 (A353998 n).toNat

end

end A314592.P6011785219584435388

/-! ## A314592.P621473800442273963

`lt[A324389(A270264(n+1)), A348717(n+1)]`
-/

namespace A314592.P621473800442273963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324389 (A270264 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A314592.P621473800442273963

/-!
# A314593: Coordination sequence Gal.5.30.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314593, there is no canonical definition to state claims against.
-/

/-! ## A314593.P12584709647769437041

`∑[A251718(∑[8*n+7])]`
-/

namespace A314593.P12584709647769437041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251718 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314593.P12584709647769437041

/-!
# A314594: Coordination sequence Gal.4.27.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314594, there is no canonical definition to state claims against.
-/

/-! ## A314594.P8245257189302963878

`record[and(A120237(3*n+1), A120237(n+1))]`
-/

namespace A314594.P8245257189302963878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120237 (3 * n + 1)) (A120237 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314594.P8245257189302963878

/-! ## A314594.P13837489089672848554

`A337086(A002620(2*n+3))+A112800(2*(n+2))`
-/

namespace A314594.P13837489089672848554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337086 (A002620 (2 * n + 3)).toNat + A112800 (2 * (n + 2))

end

end A314594.P13837489089672848554

/-!
# A314595: Coordination sequence Gal.6.3.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314595, there is no canonical definition to state claims against.
-/

/-! ## A314595.P15641009024777270389

`A080600(n)+A080586(A007716(n))`
-/

namespace A314595.P15641009024777270389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 n + A080586 (A007716 n).toNat

end

end A314595.P15641009024777270389

/-! ## A314595.P11218579253804715920

`A021913(A229046(n))+A001954(n)`
-/

namespace A314595.P11218579253804715920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A229046 n).toNat + A001954 n

end

end A314595.P11218579253804715920

/-! ## A314595.P12633462391975524822

`A116865(A141214(n))+A001954(n)`
-/

namespace A314595.P12633462391975524822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116865 (A141214 n).toNat + A001954 n

end

end A314595.P12633462391975524822

/-! ## A314595.P12313210772936290299

`A327500(A000984(n))+A016777(n)`
-/

namespace A314595.P12313210772936290299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (A000984 n).toNat + A016777 n

end

end A314595.P12313210772936290299

/-! ## A314595.P3422024807940358411

`A340373(A127498(n))+A001954(n)`
-/

namespace A314595.P3422024807940358411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (A127498 n).toNat + A001954 n

end

end A314595.P3422024807940358411

/-!
# A314596: Coordination sequence Gal.6.39.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314596, there is no canonical definition to state claims against.
-/

/-! ## A314596.P4086732499485085919

`∑[A261180(A100304(n)+A014612(n+1))]`
-/

namespace A314596.P4086732499485085919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261180 (A100304 n + A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314596.P4086732499485085919

/-! ## A314596.P14535045407243495105

`A335467(3*n+2)+A001222(A124784(n))`
-/

namespace A314596.P14535045407243495105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (3 * n + 2) + A001222 (A124784 n).toNat

end

end A314596.P14535045407243495105

/-!
# A314597: Coordination sequence Gal.5.3.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314597, there is no canonical definition to state claims against.
-/

/-! ## A314597.P4042959762213561087

`A283593(3*n+1)+A000120(A056310(n+1))`
-/

namespace A314597.P4042959762213561087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283593 (3 * n + 1) + A000120 (A056310 (n + 1)).toNat

end

end A314597.P4042959762213561087

/-!
# A314598: Coordination sequence Gal.5.18.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314598, there is no canonical definition to state claims against.
-/

/-! ## A314598.P9264731222950097116

`A024467(A032559(n+1))+A016777(n)`
-/

namespace A314598.P9264731222950097116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024467 (A032559 (n + 1)).toNat + A016777 n

end

end A314598.P9264731222950097116

/-! ## A314598.P10293220512715253295

`A315146(n)-A001221(A208800(n+1))`
-/

namespace A314598.P10293220512715253295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315146 n - A001221 (A208800 (n + 1)).toNat

end

end A314598.P10293220512715253295

/-!
# A314599: Coordination sequence Gal.4.5.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314599, there is no canonical definition to state claims against.
-/

/-! ## A314599.P9844163063689184618

`A007814(A269921(n+2))+A001481(2*(n+1))`
-/

namespace A314599.P9844163063689184618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A269921 (n + 2)).toNat + A001481 (2 * (n + 1))

end

end A314599.P9844163063689184618

/-! ## A314599.P4860337672028522892

`A314600(n)-A011731(A113300(n))`
-/

namespace A314599.P4860337672028522892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314600 n - A011731 (A113300 n).toNat

end

end A314599.P4860337672028522892

/-! ## A314599.P8526519340879363768

`A314600(n)-A107846(A215512(n))`
-/

namespace A314599.P8526519340879363768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314600 n - A107846 (A215512 n).toNat

end

end A314599.P8526519340879363768

