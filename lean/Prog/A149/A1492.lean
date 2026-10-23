import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B010.C000
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
# A149200: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149200, there is no canonical definition to state claims against.
-/

/-! ## A149200.P12144857679008891808

`A130446(A149199(n))`
-/

namespace A149200.P12144857679008891808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A149199 n).toNat

end

end A149200.P12144857679008891808

/-! ## A149200.P3147423158492728336

`A001462(A218298(n))-A120035(n)`
-/

namespace A149200.P3147423158492728336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A218298 n).toNat - A120035 n

end

end A149200.P3147423158492728336

/-!
# A149201: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149201, there is no canonical definition to state claims against.
-/

/-! ## A149201.P15905686290125329431

`Δ[Δ[A287693(n+1)-A309689(n)]]`
-/

namespace A149201.P15905686290125329431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287693 (n + 1) - A309689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A149201.P15905686290125329431

/-! ## A149201.P14474084020362231406

`A105516(A289976(2*(n+2)))+A000010(n+1)`
-/

namespace A149201.P14474084020362231406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105516 (A289976 (2 * (n + 2))).toNat + A000010 (n + 1)

end

end A149201.P14474084020362231406

/-!
# A149202: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149202, there is no canonical definition to state claims against.
-/

/-! ## A149202.P2528820237077993240

`or(A094263(A149193(n)), A149193(n))`
-/

namespace A149202.P2528820237077993240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094263 (A149193 n).toNat) (A149193 n)

end

end A149202.P2528820237077993240

/-! ## A149202.P4383078181060207093

`or(A094263(A149194(n)), A149194(n))`
-/

namespace A149202.P4383078181060207093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094263 (A149194 n).toNat) (A149194 n)

end

end A149202.P4383078181060207093

/-! ## A149202.P2205480637039193580

`or(A149193(n), A298055(A208227(n)))`
-/

namespace A149202.P2205480637039193580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149193 n) (A298055 (A208227 n).toNat)

end

end A149202.P2205480637039193580

/-!
# A149203: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149203, there is no canonical definition to state claims against.
-/

/-! ## A149203.P5558694686857733462

`A194640(or(A001791(n), A126869(n)))`
-/

namespace A149203.P5558694686857733462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (Int.lor (A001791 n) (A126869 n)).toNat

end

end A149203.P5558694686857733462

/-! ## A149203.P12537560226981359871

`or(A149199(n), A214701(A149201(n)))`
-/

namespace A149203.P12537560226981359871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149199 n) (A214701 (A149201 n).toNat)

end

end A149203.P12537560226981359871

/-!
# A149204: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149204, there is no canonical definition to state claims against.
-/

/-! ## A149204.P1156263548767472702

`A149205(n)-A185284(n²+1)`
-/

namespace A149204.P1156263548767472702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149205 n - A185284 (n ^ 2 + 1)

end

end A149204.P1156263548767472702

/-! ## A149204.P6582853381045047978

`A149205(n)-A178798(and(-2, 2^n))`
-/

namespace A149204.P6582853381045047978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149205 n - A178798 (Int.land (-2) (2 ^ n : ℤ)).toNat

end

end A149204.P6582853381045047978

/-! ## A149204.P475779390133151409

`A178798(A000085(n))+A149205(n)`
-/

namespace A149204.P475779390133151409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000085 n).toNat + A149205 n

end

end A149204.P475779390133151409

/-!
# A149205: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149205, there is no canonical definition to state claims against.
-/

/-! ## A149205.P4508225738482175852

`A178798(2^n)+A149204(n)`
-/

namespace A149205.P4508225738482175852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (2 ^ n) + A149204 n

end

end A149205.P4508225738482175852

/-! ## A149205.P8480247828369750637

`A185284(floor(2^(n-1)))+A149204(n)`
-/

namespace A149205.P8480247828369750637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat + A149204 n

end

end A149205.P8480247828369750637

/-! ## A149205.P16586131463766678949

`A149204(n)-A178798(A000085(n))`
-/

namespace A149205.P16586131463766678949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149204 n - A178798 (A000085 n).toNat

end

end A149205.P16586131463766678949

/-!
# A149206: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149206, there is no canonical definition to state claims against.
-/

/-! ## A149206.P10437705390466656959

`A185238(A192968(n))+A149205(n)`
-/

namespace A149206.P10437705390466656959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A192968 n).toNat + A149205 n

end

end A149206.P10437705390466656959

/-! ## A149206.P2315711442107686545

`A180649(A340568(n))+A149205(n)`
-/

namespace A149206.P2315711442107686545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A340568 n).toNat + A149205 n

end

end A149206.P2315711442107686545

/-! ## A149206.P13883057231096284340

`A222703(n+1)-1+A185284(floor(2^(n-1)))+A149204(n)`
-/

namespace A149206.P13883057231096284340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (n + 1) - 1 + (A185284 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat + A149204 n)

end

end A149206.P13883057231096284340

/-!
# A149207: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A149207, there is no canonical definition to state claims against.
-/

/-! ## A149207.P5804538415123559453

`A149206(n)+A185238(A192968(n))²`
-/

namespace A149207.P5804538415123559453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149206 n + A185238 (A192968 n).toNat ^ 2

end

end A149207.P5804538415123559453

/-!
# A149208: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A149208, there is no canonical definition to state claims against.
-/

/-! ## A149208.P10829205753906722278

`A004525(A149216(n)+A149194(n))`
-/

namespace A149208.P10829205753906722278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149216 n + A149194 n).toNat

end

end A149208.P10829205753906722278

/-! ## A149208.P17803565867055326049

`A004526(A149216(n)+A149194(n))`
-/

namespace A149208.P17803565867055326049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149216 n + A149194 n).toNat

end

end A149208.P17803565867055326049

/-!
# A149209: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149209, there is no canonical definition to state claims against.
-/

/-! ## A149209.P3669377987013601263

`A141206(or(A333576(n+1), A383984(n)))`
-/

namespace A149209.P3669377987013601263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (Int.lor (A333576 (n + 1)) (A383984 n)).toNat

end

end A149209.P3669377987013601263

/-! ## A149209.P1583700180178255778

`A093517(A148415(n))`
-/

namespace A149209.P1583700180178255778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093517 (A148415 n).toNat

end

end A149209.P1583700180178255778

/-!
# A149210: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149210, there is no canonical definition to state claims against.
-/

/-! ## A149210.P5358952444059117407

`A105517(A149153(n))+A096457(A149202(n))`
-/

namespace A149210.P5358952444059117407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A149153 n).toNat + A096457 (A149202 n).toNat

end

end A149210.P5358952444059117407

/-! ## A149210.P5861510226648516400

`A105517(A151447(n))+A096457(A149202(n))`
-/

namespace A149210.P5861510226648516400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A151447 n).toNat + A096457 (A149202 n).toNat

end

end A149210.P5861510226648516400

/-! ## A149210.P5339063187301282375

`A105517(A302183(n))+A096457(A149202(n))`
-/

namespace A149210.P5339063187301282375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A302183 n).toNat + A096457 (A149202 n).toNat

end

end A149210.P5339063187301282375

/-!
# A149213: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149213, there is no canonical definition to state claims against.
-/

/-! ## A149213.P2948856997026480359

`A141613(A105696(n))`
-/

namespace A149213.P2948856997026480359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141613 (A105696 n).toNat

end

end A149213.P2948856997026480359

/-! ## A149213.P9434806453528664029

`A144000(A150677(n))`
-/

namespace A149213.P9434806453528664029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144000 (A150677 n).toNat

end

end A149213.P9434806453528664029

/-!
# A149214: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149214, there is no canonical definition to state claims against.
-/

/-! ## A149214.P7405596760449624608

`A329395(2^n-n%2)-char[5]`
-/

namespace A149214.P7405596760449624608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329395 (2 ^ n - n % 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A149214.P7405596760449624608

/-! ## A149214.P14861467955096452915

`A141613(A148442(n))`
-/

namespace A149214.P14861467955096452915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141613 (A148442 n).toNat

end

end A149214.P14861467955096452915

/-!
# A149215: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149215, there is no canonical definition to state claims against.
-/

/-! ## A149215.P1036862878917964560

`A149216(n)-A185238(A192968(n))`
-/

namespace A149215.P1036862878917964560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149216 n - A185238 (A192968 n).toNat

end

end A149215.P1036862878917964560

/-! ## A149215.P13689577752083668228

`A149216(n)-A185238(A320813(n))`
-/

namespace A149215.P13689577752083668228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149216 n - A185238 (A320813 n).toNat

end

end A149215.P13689577752083668228

/-!
# A149216: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149216, there is no canonical definition to state claims against.
-/

/-! ## A149216.P9685859493370577682

`A185238(A192968(n))+A149215(n)`
-/

namespace A149216.P9685859493370577682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A192968 n).toNat + A149215 n

end

end A149216.P9685859493370577682

/-! ## A149216.P6487668190394772704

`A185238(A320813(n))+A149215(n)`
-/

namespace A149216.P6487668190394772704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A320813 n).toNat + A149215 n

end

end A149216.P6487668190394772704

/-! ## A149216.P14085050845695964232

`A180649(A340568(n))+A149215(n)`
-/

namespace A149216.P14085050845695964232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A340568 n).toNat + A149215 n

end

end A149216.P14085050845695964232

/-!
# A149218: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149218, there is no canonical definition to state claims against.
-/

/-! ## A149218.P3552425230127987888

`A120750(A323792(n))-A075928(A309685(n))`
-/

namespace A149218.P3552425230127987888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A323792 n).toNat - A075928 (A309685 n).toNat

end

end A149218.P3552425230127987888

/-! ## A149218.P5408170411659917757

`A149219(n)%p?[round(exp(n-γ))]`
-/

namespace A149218.P5408170411659917757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149219 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A149218.P5408170411659917757

/-!
# A149219: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149219, there is no canonical definition to state claims against.
-/

/-! ## A149219.P13109723290832573292

`A120750(A323792(n))`
-/

namespace A149219.P13109723290832573292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A323792 n).toNat

end

end A149219.P13109723290832573292

/-! ## A149219.P1102880887958302860

`A196096(A149209(n))+A149048(n)`
-/

namespace A149219.P1102880887958302860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196096 (A149209 n).toNat + A149048 n

end

end A149219.P1102880887958302860

/-! ## A149219.P13550339353637895217

`A196096(A149209(n))+A194640(A149603(n))`
-/

namespace A149219.P13550339353637895217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196096 (A149209 n).toNat + A194640 (A149603 n).toNat

end

end A149219.P13550339353637895217

/-!
# A149220: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A149220, there is no canonical definition to state claims against.
-/

/-! ## A149220.P15838083436920694631

`A351093(A000168(n))`
-/

namespace A149220.P15838083436920694631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351093 (A000168 n).toNat

end

end A149220.P15838083436920694631

/-! ## A149220.P17946465969058907827

`A231009(A148635(n))`
-/

namespace A149220.P17946465969058907827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (A148635 n).toNat

end

end A149220.P17946465969058907827

/-!
# A149221: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149221, there is no canonical definition to state claims against.
-/

/-! ## A149221.P10212763506788513012

`∏{e}[13^n, A149222(#)]`
-/

namespace A149221.P10212763506788513012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A149222 (Nat.factorization (f1 n) p)

end

end A149221.P10212763506788513012

/-! ## A149221.P14073986758240976533

`A149222(A001096(n))`
-/

namespace A149221.P14073986758240976533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149222 (A001096 n).toNat

end

end A149221.P14073986758240976533

/-!
# A149223: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149223, there is no canonical definition to state claims against.
-/

/-! ## A149223.P13121167025105388996

`A008616(9*A149307(n))`
-/

namespace A149223.P13121167025105388996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (9 * A149307 n).toNat

end

end A149223.P13121167025105388996

/-! ## A149223.P4430439383870727714

`A108141(A149304(n))`
-/

namespace A149223.P4430439383870727714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A149304 n).toNat

end

end A149223.P4430439383870727714

/-!
# A149224: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149224, there is no canonical definition to state claims against.
-/

/-! ## A149224.P13547982305773791350

`A149225(A001096(n))`
-/

namespace A149224.P13547982305773791350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149225 (A001096 n).toNat

end

end A149224.P13547982305773791350

/-! ## A149224.P2586863684835487201

`A161205(A287603(n²))`
-/

namespace A149224.P2586863684835487201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A287603 (n ^ 2)).toNat

end

end A149224.P2586863684835487201

/-!
# A149226: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149226, there is no canonical definition to state claims against.
-/

/-! ## A149226.P10446806856644342170

`A132270(8*A302179(n))`
-/

namespace A149226.P10446806856644342170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (8 * A302179 n).toNat

end

end A149226.P10446806856644342170

/-! ## A149226.P4427338505232500522

`A149368(n)-A127952(A127942(n+1))`
-/

namespace A149226.P4427338505232500522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149368 n - A127952 (A127942 (n + 1)).toNat

end

end A149226.P4427338505232500522

/-!
# A149227: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149227, there is no canonical definition to state claims against.
-/

/-! ## A149227.P913975186811816112

`A110655(A083380(n+1)²)+lcm(3, A294175(n))`
-/

namespace A149227.P913975186811816112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A083380 (n + 1) ^ 2).toNat + (Int.lcm 3 (A294175 n) : ℤ)

end

end A149227.P913975186811816112

/-! ## A149227.P6140253100527541567

`A093517(A148434(n))`
-/

namespace A149227.P6140253100527541567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093517 (A148434 n).toNat

end

end A149227.P6140253100527541567

/-!
# A149228: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149228, there is no canonical definition to state claims against.
-/

/-! ## A149228.P13461675426241689810

`2*A377214(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A149228.P13461675426241689810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A377214 (a (n - 1)).toNat

end

end A149228.P13461675426241689810

/-! ## A149228.P9522849935308184351

`A149229(A001096(n))`
-/

namespace A149228.P9522849935308184351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149229 (A001096 n).toNat

end

end A149228.P9522849935308184351

/-!
# A149230: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149230, there is no canonical definition to state claims against.
-/

/-! ## A149230.P2653620771354784706

`A129830(a(n-2)+n)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A149230.P2653620771354784706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A129830 (a (n - 2) + (n : ℤ)).toNat

end

end A149230.P2653620771354784706

/-! ## A149230.P7595084382533000960

`A129830(A036661(n))`
-/

namespace A149230.P7595084382533000960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129830 (A036661 n).toNat

end

end A149230.P7595084382533000960

/-!
# A149231: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (-1, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A149231, there is no canonical definition to state claims against.
-/

/-! ## A149231.P4939800290365822885

`A348486((n+1)^∑[∑{e}[n, #]])`
-/

namespace A149231.P4939800290365822885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348486 ((n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A149231.P4939800290365822885

/-! ## A149231.P6882615102225761655

`A334733(A052365(n))`
-/

namespace A149231.P6882615102225761655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334733 (A052365 n).toNat

end

end A149231.P6882615102225761655

/-!
# A149232: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149232, there is no canonical definition to state claims against.
-/

/-! ## A149232.P2672945589847628824

`A149233(A073788(n))`
-/

namespace A149232.P2672945589847628824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149233 (A073788 n).toNat

end

end A149232.P2672945589847628824

/-! ## A149232.P6767658375855684056

`A149233(A004868(n+1))`
-/

namespace A149232.P6767658375855684056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149233 (A004868 (n + 1)).toNat

end

end A149232.P6767658375855684056

/-! ## A149232.P16833074341995033079

`A149233(A004879(n+1))`
-/

namespace A149232.P16833074341995033079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149233 (A004879 (n + 1)).toNat

end

end A149232.P16833074341995033079

/-!
# A149234: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (0, -1, 0), (1, 1, 0)}.

The programs for A149234, there is no canonical definition to state claims against.
-/

/-! ## A149234.P14480815246192215482

`A149235(n)^C(n, 5)!`
-/

namespace A149234.P14480815246192215482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149235 n ^ Nat.factorial (Nat.choose n 5)

end

end A149234.P14480815246192215482

/-! ## A149234.P13959138667698280230

`A360628(a(n-1))+3` with `a(0)=1, a(1)=1`
-/

namespace A149234.P13959138667698280230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A360628 (a (n - 1)).toNat + 3

end

end A149234.P13959138667698280230

/-!
# A149235: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (0, 0, -1), (1, 0, 1)}.

The programs for A149235, there is no canonical definition to state claims against.
-/

/-! ## A149235.P2392115578124238814

`∏{d}[floor(10^n/3), #%2]*A149236(n)`
-/

namespace A149235.P2392115578124238814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2 : ℕ) : ℤ) * A149236 n

end

end A149235.P2392115578124238814

/-! ## A149235.P2570470464639221392

`A149236(A073788(n))`
-/

namespace A149235.P2570470464639221392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149236 (A073788 n).toNat

end

end A149235.P2570470464639221392

/-! ## A149235.P14092118645753745693

`A149236(A171596(n))`
-/

namespace A149235.P14092118645753745693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149236 (A171596 n).toNat

end

end A149235.P14092118645753745693

/-!
# A149236: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (0, 0, -1), (1, 0, 1)}.

The programs for A149236, there is no canonical definition to state claims against.
-/

/-! ## A149236.P2189338488278247225

`or(A149234(A004880(n+1)), A149235(n))`
-/

namespace A149236.P2189338488278247225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149234 (A004880 (n + 1)).toNat) (A149235 n)

end

end A149236.P2189338488278247225

/-! ## A149236.P802801626654670710

`or(A149235(n), A165052(A126754(n+1)))`
-/

namespace A149236.P802801626654670710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149235 n) (A165052 (A126754 (n + 1)).toNat)

end

end A149236.P802801626654670710

/-!
# A149237: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 1, 1)}.

The programs for A149237, there is no canonical definition to state claims against.
-/

/-! ## A149237.P6981277595550008637

`A054900(22*A192207(n))`
-/

namespace A149237.P6981277595550008637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (22 * A192207 n).toNat

end

end A149237.P6981277595550008637

/-! ## A149237.P4996679852175803503

`record[A212808(n)]-A081150(n+1)`
-/

namespace A149237.P4996679852175803503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A081150 (n + 1)

end

end A149237.P4996679852175803503

/-! ## A149237.P8549672327024217469

`A141207(A202060(n))-A051573(n)`
-/

namespace A149237.P8549672327024217469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141207 (A202060 n).toNat - A051573 n

end

end A149237.P8549672327024217469

/-!
# A149238: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A149238, there is no canonical definition to state claims against.
-/

/-! ## A149238.P10661796952075575724

`or(A049639(n), A256502(A150043(n)))`
-/

namespace A149238.P10661796952075575724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049639 n) (A256502 (A150043 n).toNat)

end

end A149238.P10661796952075575724

/-! ## A149238.P11722938997858855505

`or(A256502(A150043(n)), A339369(n))`
-/

namespace A149238.P11722938997858855505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A256502 (A150043 n).toNat) (A339369 n)

end

end A149238.P11722938997858855505

/-!
# A149239: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 1)}.

The programs for A149239, there is no canonical definition to state claims against.
-/

/-! ## A149239.P6189607791485240887

`A149241(n)-A188170(A149713(n))`
-/

namespace A149239.P6189607791485240887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149241 n - A188170 (A149713 n).toNat

end

end A149239.P6189607791485240887

/-! ## A149239.P17053190752826943969

`A149240(A073788(n))`
-/

namespace A149239.P17053190752826943969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149240 (A073788 n).toNat

end

end A149239.P17053190752826943969

/-! ## A149239.P75008183367941324

`A149240(A171596(n))`
-/

namespace A149239.P75008183367941324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149240 (A171596 n).toNat

end

end A149239.P75008183367941324

/-!
# A149240: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 1)}.

The programs for A149240, there is no canonical definition to state claims against.
-/

/-! ## A149240.P469261598075732327

`A110654(or(A049820(n+1), A147748(n)))`
-/

namespace A149240.P469261598075732327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lor (A049820 (n + 1)) (A147748 n)).toNat

end

end A149240.P469261598075732327

/-!
# A149241: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 1, 1), (0, -1, 0), (1, 1, 0)}.

The programs for A149241, there is no canonical definition to state claims against.
-/

/-! ## A149241.P8166131850632909406

`A188170(A149713(n))+A149239(n)`
-/

namespace A149241.P8166131850632909406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A149713 n).toNat + A149239 n

end

end A149241.P8166131850632909406

/-! ## A149241.P9912662235099587226

`A149242(n)-A338868(A000041(n))`
-/

namespace A149241.P9912662235099587226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149242 n - A338868 (A000041 n).toNat

end

end A149241.P9912662235099587226

/-! ## A149241.P13618811783489876490

`A149243(n)-A338868(A000041(n))`
-/

namespace A149241.P13618811783489876490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149243 n - A338868 (A000041 n).toNat

end

end A149241.P13618811783489876490

/-!
# A149242: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 1)}.

The programs for A149242, there is no canonical definition to state claims against.
-/

/-! ## A149242.P5260321536496377246

`A149243(A073789(n))`
-/

namespace A149242.P5260321536496377246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149243 (A073789 n).toNat

end

end A149242.P5260321536496377246

/-! ## A149242.P10499607831563339825

`A154470(A149243(n))`
-/

namespace A149242.P10499607831563339825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A149243 n).toNat

end

end A149242.P10499607831563339825

/-! ## A149242.P3138922802647605597

`A149243(A171644(n))`
-/

namespace A149242.P3138922802647605597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149243 (A171644 n).toNat

end

end A149242.P3138922802647605597

/-! ## A149242.P13243631398921576375

`A149243(A004869(n+1))`
-/

namespace A149242.P13243631398921576375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149243 (A004869 (n + 1)).toNat

end

end A149242.P13243631398921576375

/-!
# A149244: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149244, there is no canonical definition to state claims against.
-/

/-! ## A149244.P2065016793684804127

`A088218(n)+A060763(A002872(n))`
-/

namespace A149244.P2065016793684804127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + A060763 (A002872 n).toNat

end

end A149244.P2065016793684804127

/-! ## A149244.P13656182283258380633

`A327968(A000262(n))+A088218(n)`
-/

namespace A149244.P13656182283258380633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327968 (A000262 n).toNat + A088218 n

end

end A149244.P13656182283258380633

/-! ## A149244.P2708155784472899417

`A305193(A122455(n))+A088218(n)`
-/

namespace A149244.P2708155784472899417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (A122455 n).toNat + A088218 n

end

end A149244.P2708155784472899417

/-!
# A149245: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (0, -1, 1), (1, 1, 0)}.

The programs for A149245, there is no canonical definition to state claims against.
-/

/-! ## A149245.P15818808914927605159

`floor(root(A330042(n+2), ϕ))`
-/

namespace A149245.P15818808914927605159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330042 (n + 2) : ℝ) ^ (1 / Real.goldenRatio)⌋

end

end A149245.P15818808914927605159

/-!
# A149246: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149246, there is no canonical definition to state claims against.
-/

/-! ## A149246.P2488006389994205865

`A149247(A073789(n))`
-/

namespace A149246.P2488006389994205865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149247 (A073789 n).toNat

end

end A149246.P2488006389994205865

/-! ## A149246.P10166000134506806323

`A154470(A149247(n))`
-/

namespace A149246.P10166000134506806323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A149247 n).toNat

end

end A149246.P10166000134506806323

/-! ## A149246.P2954174227132016412

`A149247(A171644(n))`
-/

namespace A149246.P2954174227132016412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149247 (A171644 n).toNat

end

end A149246.P2954174227132016412

/-! ## A149246.P6002490501060786396

`A149247(A004869(n+1))`
-/

namespace A149246.P6002490501060786396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149247 (A004869 (n + 1)).toNat

end

end A149246.P6002490501060786396

/-!
# A149248: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A149248, there is no canonical definition to state claims against.
-/

/-! ## A149248.P14743646691646793238

`A149250(n)-A338868(A000041(n))`
-/

namespace A149248.P14743646691646793238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149250 n - A338868 (A000041 n).toNat

end

end A149248.P14743646691646793238

/-! ## A149248.P8386646753805045851

`A149249(n)%p?[∑[(-2)^n]]`
-/

namespace A149248.P8386646753805045851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149249 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A149248.P8386646753805045851

/-! ## A149248.P13883290931485548488

`A149249(A073788(n))`
-/

namespace A149248.P13883290931485548488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149249 (A073788 n).toNat

end

end A149248.P13883290931485548488

/-!
# A149249: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 1)}.

The programs for A149249, there is no canonical definition to state claims against.
-/

/-! ## A149249.P14946851260631244797

`A149250(A073789(n))`
-/

namespace A149249.P14946851260631244797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149250 (A073789 n).toNat

end

end A149249.P14946851260631244797

/-! ## A149249.P10235340470743687423

`A154470(A149250(n))`
-/

namespace A149249.P10235340470743687423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A149250 n).toNat

end

end A149249.P10235340470743687423

/-! ## A149249.P11236198334864948194

`A149250(A171644(n))`
-/

namespace A149249.P11236198334864948194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149250 (A171644 n).toNat

end

end A149249.P11236198334864948194

/-! ## A149249.P17530413766338431365

`A149250(A304036(n!))`
-/

namespace A149249.P17530413766338431365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149250 (A304036 (Nat.factorial n)).toNat

end

end A149249.P17530413766338431365

/-!
# A149251: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149251, there is no canonical definition to state claims against.
-/

/-! ## A149251.P3118346515817617668

`A216672(A230232(n))+A104184(n)`
-/

namespace A149251.P3118346515817617668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216672 (A230232 n).toNat + A104184 n

end

end A149251.P3118346515817617668

/-! ## A149251.P1708865280250098601

`A004001(p?[A149288(n)+A148844(n)])`
-/

namespace A149251.P1708865280250098601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149288 n + A148844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A149251.P1708865280250098601

/-!
# A149252: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A149252, there is no canonical definition to state claims against.
-/

/-! ## A149252.P3238338002050586563

`A103221(A148941(n)+A026013(n+1))`
-/

namespace A149252.P3238338002050586563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A148941 n + A026013 (n + 1)).toNat

end

end A149252.P3238338002050586563

/-! ## A149252.P9176597925505995429

`A345256(A000079(n))+A345200(n+1)`
-/

namespace A149252.P9176597925505995429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345256 (A000079 n).toNat + A345200 (n + 1)

end

end A149252.P9176597925505995429

/-! ## A149252.P1740811759846929606

`A195174(A072929(n+1))-A000035(n)`
-/

namespace A149252.P1740811759846929606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A072929 (n + 1)).toNat - A000035 n

end

end A149252.P1740811759846929606

/-!
# A149253: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 1)}.

The programs for A149253, there is no canonical definition to state claims against.
-/

/-! ## A149253.P4462749182467722332

`A149254(n)%p?[2^n-1]`
-/

namespace A149253.P4462749182467722332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149254 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A149253.P4462749182467722332

/-! ## A149253.P6380506771446296122

`A149254(A073788(n))`
-/

namespace A149253.P6380506771446296122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149254 (A073788 n).toNat

end

end A149253.P6380506771446296122

/-! ## A149253.P15745242247815204428

`A149254(A171596(n))`
-/

namespace A149253.P15745242247815204428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149254 (A171596 n).toNat

end

end A149253.P15745242247815204428

/-!
# A149255: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149255, there is no canonical definition to state claims against.
-/

/-! ## A149255.P10516289044800290420

`A081515(ceil(2^(n-1)))+A057554(2*n+1)`
-/

namespace A149255.P10516289044800290420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081515 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A057554 (2 * n + 1)

end

end A149255.P10516289044800290420

/-! ## A149255.P414343849770023850

`A120751(A010892(n)+A002212(n))`
-/

namespace A149255.P414343849770023850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 (A010892 n + A002212 n).toNat

end

end A149255.P414343849770023850

/-! ## A149255.P12473500862843484554

`A316524(A005867(n))+A002212(n)`
-/

namespace A149255.P12473500862843484554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A005867 n).toNat + A002212 n

end

end A149255.P12473500862843484554

/-!
# A149256: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (0, -1, 1), (1, 1, 0)}.

The programs for A149256, there is no canonical definition to state claims against.
-/

/-! ## A149256.P1467732518306094380

`A149257(n)-A339210(A143569(n))`
-/

namespace A149256.P1467732518306094380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149257 n - A339210 (A143569 n).toNat

end

end A149256.P1467732518306094380

/-! ## A149256.P11729128490915799845

`A151735(A037027(∑[n]+1))`
-/

namespace A149256.P11729128490915799845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151735 (A037027 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A149256.P11729128490915799845

/-! ## A149256.P7184751772364141256

`A149257(n)-A025469(A001563(n))`
-/

namespace A149256.P7184751772364141256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149257 n - A025469 (A001563 n).toNat

end

end A149256.P7184751772364141256

/-!
# A149257: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 1, 1), (0, -1, 1), (1, 1, 0)}.

The programs for A149257, there is no canonical definition to state claims against.
-/

/-! ## A149257.P1429322300354237346

`A339210(A143569(n))+A149256(n)`
-/

namespace A149257.P1429322300354237346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339210 (A143569 n).toNat + A149256 n

end

end A149257.P1429322300354237346

/-! ## A149257.P16746190941853700888

`A149256(n)+A025469(A001563(n))`
-/

namespace A149257.P16746190941853700888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149256 n + A025469 (A001563 n).toNat

end

end A149257.P16746190941853700888

/-!
# A149258: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (0, 0, -1), (1, 1, 0)}.

The programs for A149258, there is no canonical definition to state claims against.
-/

/-! ## A149258.P16394494295756053178

`A004396(A316953(n+1)+A149578(n))`
-/

namespace A149258.P16394494295756053178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A316953 (n + 1) + A149578 n).toNat

end

end A149258.P16394494295756053178

/-! ## A149258.P10632663890112924775

`A110656(6*A197601(n))`
-/

namespace A149258.P10632663890112924775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (6 * A197601 n).toNat

end

end A149258.P10632663890112924775

/-! ## A149258.P12438838725229008855

`A303399(A001858(n))+A122448(n)`
-/

namespace A149258.P12438838725229008855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303399 (A001858 n).toNat + A122448 n

end

end A149258.P12438838725229008855

/-!
# A149259: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149259, there is no canonical definition to state claims against.
-/

/-! ## A149259.P8163112911155968697

`∑[ceil(3^(n-1))]-∑{e}[∑[12^n], #]`
-/

namespace A149259.P8163112911155968697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A149259.P8163112911155968697

/-! ## A149259.P17267392762038027735

`A152019(A148417(n))`
-/

namespace A149259.P17267392762038027735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152019 (A148417 n).toNat

end

end A149259.P17267392762038027735

/-!
# A149260: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149260, there is no canonical definition to state claims against.
-/

/-! ## A149260.P3696560953849929216

`A274529(A151482(n))`
-/

namespace A149260.P3696560953849929216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274529 (A151482 n).toNat

end

end A149260.P3696560953849929216

/-!
# A149261: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149261, there is no canonical definition to state claims against.
-/

/-! ## A149261.P6933322915955057983

`A274529(A151482(n)+char[5])`
-/

namespace A149261.P6933322915955057983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274529 (A151482 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A149261.P6933322915955057983

/-! ## A149261.P6402924501233374151

`xor(A149262(n), A185284(n²))`
-/

namespace A149261.P6402924501233374151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149262 n) (A185284 (n ^ 2))

end

end A149261.P6402924501233374151

/-!
# A149262: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149262, there is no canonical definition to state claims against.
-/

/-! ## A149262.P3890605731809664353

`xor(A149261(n), A185284(n²))`
-/

namespace A149262.P3890605731809664353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149261 n) (A185284 (n ^ 2))

end

end A149262.P3890605731809664353

/-!
# A149263: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149263, there is no canonical definition to state claims against.
-/

/-! ## A149263.P14418275172079822689

`A276212(A148913(n))`
-/

namespace A149263.P14418275172079822689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276212 (A148913 n).toNat

end

end A149263.P14418275172079822689

/-! ## A149263.P16851527291270860294

`A274529(A398113(n))`
-/

namespace A149263.P16851527291270860294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274529 (A398113 n).toNat

end

end A149263.P16851527291270860294

/-! ## A149263.P8775234778605212511

`A274529(A376230(n+1))`
-/

namespace A149263.P8775234778605212511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274529 (A376230 (n + 1)).toNat

end

end A149263.P8775234778605212511

/-!
# A149264: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149264, there is no canonical definition to state claims against.
-/

/-! ## A149264.P10458743369658741146

`A276212(A148915(n))`
-/

namespace A149264.P10458743369658741146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276212 (A148915 n).toNat

end

end A149264.P10458743369658741146

/-! ## A149264.P1673814966984530258

`A264749(A248119(n)+A151191(n))`
-/

namespace A149264.P1673814966984530258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A248119 (n + 19) + A151191 n).toNat

end

end A149264.P1673814966984530258

/-!
# A149265: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149265, there is no canonical definition to state claims against.
-/

/-! ## A149265.P10406098238924175614

`A149332(n)-A277151(A215492(n))`
-/

namespace A149265.P10406098238924175614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149332 n - A277151 (A215492 n).toNat

end

end A149265.P10406098238924175614

/-! ## A149265.P17926353523100763724

`A149332(n)-A316866(A000129(n)²)`
-/

namespace A149265.P17926353523100763724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149332 n - A316866 (A000129 n ^ 2).toNat

end

end A149265.P17926353523100763724

/-! ## A149265.P5994596338088999941

`A156563(A338593(n+9))-A100883(n)`
-/

namespace A149265.P5994596338088999941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156563 (A338593 (n + 9)).toNat - A100883 n

end

end A149265.P5994596338088999941

/-!
# A149266: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149266, there is no canonical definition to state claims against.
-/

/-! ## A149266.P12478680223655886515

`A076222(A150624(n))`
-/

namespace A149266.P12478680223655886515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076222 (A150624 n).toNat

end

end A149266.P12478680223655886515

/-! ## A149266.P3886806809328735062

`A064042(A149953(n+1))`
-/

namespace A149266.P3886806809328735062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064042 (A149953 (n + 1)).toNat

end

end A149266.P3886806809328735062

/-! ## A149266.P8386562650747915110

`A064042(A367639(n+1))`
-/

namespace A149266.P8386562650747915110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064042 (A367639 (n + 1)).toNat

end

end A149266.P8386562650747915110

/-!
# A149267: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, -1, 1), (0, 0, -1), (1, 1, 0)}.

The programs for A149267, there is no canonical definition to state claims against.
-/

/-! ## A149267.P8691882198862763739

`A030981(n+1)-A263627(A113184(n+1))`
-/

namespace A149267.P8691882198862763739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030981 (n + 1) - A263627 (A113184 (n + 1)).toNat

end

end A149267.P8691882198862763739

/-! ## A149267.P5874887672957518429

`A233547(A006307(3*n+2))+A149032(n)`
-/

namespace A149267.P5874887672957518429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233547 (A006307 (3 * n + 2)).toNat + A149032 n

end

end A149267.P5874887672957518429

/-! ## A149267.P13467940389623172812

`A130942(A351509(n))-A026797(2*n+3)`
-/

namespace A149267.P13467940389623172812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130942 (A351509 n).toNat - A026797 (2 * n + 3)

end

end A149267.P13467940389623172812

/-!
# A149268: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (0, -1, 1), (1, 1, 0)}.

The programs for A149268, there is no canonical definition to state claims against.
-/

/-! ## A149268.P16791202906516473163

`A141204(A213185(n+1)+A120305(n))`
-/

namespace A149268.P16791202906516473163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A213185 (n + 1) + A120305 n).toNat

end

end A149268.P16791202906516473163

/-! ## A149268.P12228520681313447908

`A103221(A164216(2*n)-1)+A103221(A088218(n))`
-/

namespace A149268.P12228520681313447908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A164216 (2 * n) - 1).toNat + A103221 (A088218 n).toNat

end

end A149268.P12228520681313447908

/-!
# A149269: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149269, there is no canonical definition to state claims against.
-/

/-! ## A149269.P8914352241768818218

`A256502(A145847(n))-char[5]`
-/

namespace A149269.P8914352241768818218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A145847 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A149269.P8914352241768818218

/-! ## A149269.P17898598350395612711

`A097992(A319312(n+2)-2)`
-/

namespace A149269.P17898598350395612711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A319312 (n + 2) - 2).toNat

end

end A149269.P17898598350395612711

/-! ## A149269.P12646003464673057267

`A184955(2*n+3)+A151455(n)`
-/

namespace A149269.P12646003464673057267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (2 * n + 3) + A151455 n

end

end A149269.P12646003464673057267

/-!
# A149270: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149270, there is no canonical definition to state claims against.
-/

/-! ## A149270.P1107389007081524359

`floor(A151455(n)+sqrt(A184955((2-n)²)))`
-/

namespace A149270.P1107389007081524359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151455 n : ℝ) + Real.sqrt (A184955 ((2 - (n : ℤ)) ^ 2).toNat : ℝ)⌋

end

end A149270.P1107389007081524359

/-! ## A149270.P16320433506491098472

`A152467(A083424(n))+A000041(n)`
-/

namespace A149270.P16320433506491098472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A083424 n).toNat + A000041 n

end

end A149270.P16320433506491098472

/-!
# A149271: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A149271, there is no canonical definition to state claims against.
-/

/-! ## A149271.P12066245778088796663

`∑{d}[n!, A057958(#)]`
-/

namespace A149271.P12066245778088796663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057958 d

end

end A149271.P12066245778088796663

/-! ## A149271.P4296822029194085132

`A088458(A036882(n))`
-/

namespace A149271.P4296822029194085132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088458 (A036882 n).toNat

end

end A149271.P4296822029194085132

/-!
# A149272: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149272, there is no canonical definition to state claims against.
-/

/-! ## A149272.P12321721744697895506

`∑{d}[n!, A057958(#)]+char[5]`
-/

namespace A149272.P12321721744697895506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057958 d + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A149272.P12321721744697895506

/-! ## A149272.P11428450048776502152

`A122955(a(n-1))-(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A149272.P11428450048776502152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A122955 (a (n - 1)).toNat - ((n : ℤ) - 1)

end

end A149272.P11428450048776502152

/-!
# A149273: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149273, there is no canonical definition to state claims against.
-/

/-! ## A149273.P7264220600609280101

`A268601(n)+A123503(A091487(n+1))`
-/

namespace A149273.P7264220600609280101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268601 n + A123503 (A091487 (n + 1)).toNat

end

end A149273.P7264220600609280101

/-!
# A149274: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149274, there is no canonical definition to state claims against.
-/

/-! ## A149274.P10916072534689055673

`A059995(A020988(n))+A047974(n)`
-/

namespace A149274.P10916072534689055673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A020988 n).toNat + A047974 n

end

end A149274.P10916072534689055673

/-! ## A149274.P8708289357190753526

`A109081(n+1)+A001222(A305307(n))`
-/

namespace A149274.P8708289357190753526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109081 (n + 1) + A001222 (A305307 n).toNat

end

end A149274.P8708289357190753526

/-! ## A149274.P11055222322314872725

`A047974(n)+A033182(2*A171449(n)²)`
-/

namespace A149274.P11055222322314872725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047974 n + A033182 (2 * A171449 n ^ 2).toNat

end

end A149274.P11055222322314872725

/-!
# A149275: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 1, 0)}.

The programs for A149275, there is no canonical definition to state claims against.
-/

/-! ## A149275.P16370510528852184714

`A151427(n)+A025457(A000262(n))`
-/

namespace A149275.P16370510528852184714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151427 n + A025457 (A000262 n).toNat

end

end A149275.P16370510528852184714

/-! ## A149275.P6857597196708133273

`A151427(n)-A178798(A000225(n))`
-/

namespace A149275.P6857597196708133273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151427 n - A178798 (A000225 n).toNat

end

end A149275.P6857597196708133273

/-! ## A149275.P157134835045876095

`A277194(A267406(n+1))+A151455(n)`
-/

namespace A149275.P157134835045876095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277194 (A267406 (n + 1)).toNat + A151455 n

end

end A149275.P157134835045876095

/-!
# A149276: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 1, 0)}.

The programs for A149276, there is no canonical definition to state claims against.
-/

/-! ## A149276.P7605335189595845165

`A256502(A150102(n)+A059848(n))`
-/

namespace A149276.P7605335189595845165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A150102 n + A059848 n).toNat

end

end A149276.P7605335189595845165

/-! ## A149276.P16923967203428961293

`A256502(A301570(n)+A150102(n))`
-/

namespace A149276.P16923967203428961293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A301570 n + A150102 n).toNat

end

end A149276.P16923967203428961293

/-! ## A149276.P15715289664216690702

`A256502(A171588(2*(n+1))+A150102(n))`
-/

namespace A149276.P15715289664216690702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A171588 (2 * (n + 1)) + A150102 n).toNat

end

end A149276.P15715289664216690702

/-!
# A149277: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149277, there is no canonical definition to state claims against.
-/

/-! ## A149277.P11315967281134745001

`A039708(A144316(n+1))`
-/

namespace A149277.P11315967281134745001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A144316 (n + 1)).toNat

end

end A149277.P11315967281134745001

/-! ## A149277.P16215715958867137493

`A378875(A378834(2*n+1))+A378830(n+1)`
-/

namespace A149277.P16215715958867137493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378875 (A378834 (2 * n + 1)).toNat + A378830 (n + 1)

end

end A149277.P16215715958867137493

/-!
# A149278: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149278, there is no canonical definition to state claims against.
-/

/-! ## A149278.P15465848194229034271

`A036234(A002310(n))-A001350(n)`
-/

namespace A149278.P15465848194229034271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A002310 n).toNat - A001350 n

end

end A149278.P15465848194229034271

/-! ## A149278.P4966539175893700792

`A108954(xor(A001629(n), A151214(n)))`
-/

namespace A149278.P4966539175893700792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.xor (A001629 n) (A151214 n)).toNat

end

end A149278.P4966539175893700792

/-!
# A149279: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A149279, there is no canonical definition to state claims against.
-/

/-! ## A149279.P11050170272684806735

`A174800(A003430(n))`
-/

namespace A149279.P11050170272684806735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174800 (A003430 n).toNat

end

end A149279.P11050170272684806735

/-! ## A149279.P4144496761703807177

`A094727(A247772(n))`
-/

namespace A149279.P4144496761703807177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A247772 n).toNat

end

end A149279.P4144496761703807177

/-!
# A149280: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A149280, there is no canonical definition to state claims against.
-/

/-! ## A149280.P2928949508029663850

`A088458(ceil(exp(n-1)))`
-/

namespace A149280.P2928949508029663850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088458 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A149280.P2928949508029663850

/-! ## A149280.P3321258638128041276

`A375496(or(n, A217358(n+3)))`
-/

namespace A149280.P3321258638128041276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375496 (Int.lor (n : ℤ) (A217358 (n + 3))).toNat

end

end A149280.P3321258638128041276

/-!
# A149281: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149281, there is no canonical definition to state claims against.
-/

/-! ## A149281.P17434678053404532163

`filter[A387811(n+3), A022933(#)]`
-/

namespace A149281.P17434678053404532163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022933 (f1 j).toNat = 1) n)

end

end A149281.P17434678053404532163

/-! ## A149281.P7419407074296739408

`filter[A387811(n+3), A051065(#)]`
-/

namespace A149281.P7419407074296739408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051065 (f1 j).toNat = 1) n)

end

end A149281.P7419407074296739408

/-! ## A149281.P14122919610744966332

`filter[A387811(n+3), A057211(#)]`
-/

namespace A149281.P14122919610744966332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057211 (f1 j).toNat = 1) n)

end

end A149281.P14122919610744966332

/-!
# A149282: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (1, -1, 0), (1, 1, 0)}.

The programs for A149282, there is no canonical definition to state claims against.
-/

/-! ## A149282.P1473797397637426348

`A347778(2^n-1-n%2)`
-/

namespace A149282.P1473797397637426348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347778 ((2 ^ n : ℤ) - 1 - ((n % 2 : ℕ) : ℤ)).toNat

end

end A149282.P1473797397637426348

/-! ## A149282.P13952317568694522358

`A319837(2^n)-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A149282.P13952317568694522358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (2 ^ n) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A149282.P13952317568694522358

/-!
# A149283: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A149283, there is no canonical definition to state claims against.
-/

/-! ## A149283.P6407832209337199573

`A077191(∏{e}[n, #+1]^(n+1))`
-/

namespace A149283.P6407832209337199573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077191 ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ (n + 1))

end

end A149283.P6407832209337199573

/-! ## A149283.P4946587250081678629

`∑[A322531(2^n-ceil(n/2))]-∏{p}[n+1, (n+1)/#]%(n+1)`
-/

namespace A149283.P4946587250081678629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322531 ((2 ^ n : ℤ) - ⌈(n : ℚ) / 2⌉).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ)

end

end A149283.P4946587250081678629

/-!
# A149284: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A149284, there is no canonical definition to state claims against.
-/

/-! ## A149284.P12245775041616735352

`A342585(A000670(n))+A109085(n)`
-/

namespace A149284.P12245775041616735352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342585 (A000670 n).toNat + A109085 n

end

end A149284.P12245775041616735352

/-! ## A149284.P9308988344567982260

`A325393(∑[n²]+n+1-2^val(n+1, 2))`
-/

namespace A149284.P9308988344567982260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) - 2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A149284.P9308988344567982260

/-!
# A149285: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149285, there is no canonical definition to state claims against.
-/

/-! ## A149285.P5938922568519669364

`A136498(a(n-1))+6%(2*n)` with `a(0)=1, a(1)=1`
-/

namespace A149285.P5938922568519669364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A136498 (a (n - 1)).toNat + ((6 % (2 * n) : ℕ) : ℤ)

end

end A149285.P5938922568519669364

/-! ## A149285.P17535643812440782466

`A024417(xor(∑[round(sqrt(2*n))]+1, 3^(n-1)*C(n, 2)))`
-/

namespace A149285.P17535643812440782466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.xor (∑ j ∈ Finset.range (n + 1), f1 j + 1) (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose n 2 : ℚ)))).toNat

end

end A149285.P17535643812440782466

/-!
# A149286: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149286, there is no canonical definition to state claims against.
-/

/-! ## A149286.P5399905188557977200

`A149287(n)-A185063(A166444(n))`
-/

namespace A149286.P5399905188557977200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149287 n - A185063 (A166444 n).toNat

end

end A149286.P5399905188557977200

/-! ## A149286.P12316992843814627715

`A220658(or(A150996(n), A323847(n)))`
-/

namespace A149286.P12316992843814627715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (Int.lor (A150996 n) (A323847 n)).toNat

end

end A149286.P12316992843814627715

/-!
# A149287: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149287, there is no canonical definition to state claims against.
-/

/-! ## A149287.P7078600232421167960

`A195177(A151035(n)+A003665(n))`
-/

namespace A149287.P7078600232421167960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A151035 n + A003665 n).toNat

end

end A149287.P7078600232421167960

/-! ## A149287.P11577688928883368464

`A185063(A166444(n))+A149286(n)`
-/

namespace A149287.P11577688928883368464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 (A166444 n).toNat + A149286 n

end

end A149287.P11577688928883368464

/-!
# A149288: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149288, there is no canonical definition to state claims against.
-/

/-! ## A149288.P10232537826817070626

`A304708(∑[4*n]+n)-round(sqrt(n))`
-/

namespace A149288.P10232537826817070626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 (∑ j ∈ Finset.range (n + 1), f1 j + n) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

end

end A149288.P10232537826817070626

/-! ## A149288.P3450405535411977558

`A123133(a(n-1))-Δ[∑{d}[n, #]]` with `a(0)=1, a(1)=1`
-/

namespace A149288.P3450405535411977558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A123133 (a (n - 1)).toNat - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A149288.P3450405535411977558

/-!
# A149289: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149289, there is no canonical definition to state claims against.
-/

/-! ## A149289.P3248359756330079846

`A332677(n)+A008612(A295505(n+1))`
-/

namespace A149289.P3248359756330079846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 n + A008612 (A295505 (n + 1)).toNat

end

end A149289.P3248359756330079846

/-! ## A149289.P8781457722964779394

`A071610(A156234(n))`
-/

namespace A149289.P8781457722964779394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071610 (A156234 n).toNat

end

end A149289.P8781457722964779394

/-!
# A149290: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149290, there is no canonical definition to state claims against.
-/

/-! ## A149290.P12346557684153236989

`ceil(sqrt(A350842(floor(7*(n/2)²))))`
-/

namespace A149290.P12346557684153236989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A350842 ⌊7 * ((n : ℚ) / 2) ^ 2⌋.toNat : ℝ)⌉

end

end A149290.P12346557684153236989

/-! ## A149290.P14726717177963232243

`A157271(A150332(n))`
-/

namespace A149290.P14726717177963232243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A150332 n).toNat

end

end A149290.P14726717177963232243

/-!
# A149291: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A149291, there is no canonical definition to state claims against.
-/

/-! ## A149291.P5295886741788226027

`A149292(A073788(n))`
-/

namespace A149291.P5295886741788226027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149292 (A073788 n).toNat

end

end A149291.P5295886741788226027

/-! ## A149291.P14723488260173545192

`A149292(A171596(n))`
-/

namespace A149291.P14723488260173545192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149292 (A171596 n).toNat

end

end A149291.P14723488260173545192

/-! ## A149291.P14167521826361456079

`A149292(A004868(n+1))`
-/

namespace A149291.P14167521826361456079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149292 (A004868 (n + 1)).toNat

end

end A149291.P14167521826361456079

/-!
# A149292: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 1, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A149292, there is no canonical definition to state claims against.
-/

/-! ## A149292.P9598980573085139713

`A321800(n+4)+A020725(A149291(n))`
-/

namespace A149292.P9598980573085139713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (n + 4) + A020725 (A149291 n).toNat

end

end A149292.P9598980573085139713

/-!
# A149293: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A149293, there is no canonical definition to state claims against.
-/

/-! ## A149293.P18047225404251727217

`A084469(A149347(n))`
-/

namespace A149293.P18047225404251727217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084469 (A149347 n).toNat

end

end A149293.P18047225404251727217

/-! ## A149293.P16964290322511005549

`A130446(A149291(n))`
-/

namespace A149293.P16964290322511005549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A149291 n).toNat

end

end A149293.P16964290322511005549

/-!
# A149294: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149294, there is no canonical definition to state claims against.
-/

/-! ## A149294.P9160297548226023580

`A194962(A149291(n))`
-/

namespace A149294.P9160297548226023580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194962 (A149291 n).toNat

end

end A149294.P9160297548226023580

/-! ## A149294.P12564067998432960175

`A194962(A149292(n))`
-/

namespace A149294.P12564067998432960175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194962 (A149292 n).toNat

end

end A149294.P12564067998432960175

/-! ## A149294.P8228386445269757164

`A149295(n)-A037857(A000272(n))`
-/

namespace A149294.P8228386445269757164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149295 n - A037857 (A000272 n).toNat

end

end A149294.P8228386445269757164

/-!
# A149295: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149295, there is no canonical definition to state claims against.
-/

/-! ## A149295.P2189696409659915410

`A149294(n)+A037857(A000272(n))`
-/

namespace A149295.P2189696409659915410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149294 n + A037857 (A000272 n).toNat

end

end A149295.P2189696409659915410

/-! ## A149295.P947257014314960113

`A149294(n)+A056973(A005130(n))`
-/

namespace A149295.P947257014314960113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149294 n + A056973 (A005130 n).toNat

end

end A149295.P947257014314960113

/-! ## A149295.P3612978728519839470

`or(A056973(A124562(n)), A149294(n))`
-/

namespace A149295.P3612978728519839470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056973 (A124562 n).toNat) (A149294 n)

end

end A149295.P3612978728519839470

/-!
# A149296: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149296, there is no canonical definition to state claims against.
-/

/-! ## A149296.P3058896950917294746

`2*A194962(A149291(n))-A149291(n)`
-/

namespace A149296.P3058896950917294746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194962 (A149291 n).toNat - A149291 n

end

end A149296.P3058896950917294746

/-! ## A149296.P9140323712917356007

`2*A194962(A149292(n))-A149292(n)`
-/

namespace A149296.P9140323712917356007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194962 (A149292 n).toNat - A149292 n

end

end A149296.P9140323712917356007

/-!
# A149297: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149297, there is no canonical definition to state claims against.
-/

/-! ## A149297.P12360406496303059571

`A151893(∑[n*∑[n]+∑[3*n-2]+3])`
-/

namespace A149297.P12360406496303059571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f3 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151893 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149297.P12360406496303059571

/-! ## A149297.P3541962951307045292

`A149298(A001096(n))`
-/

namespace A149297.P3541962951307045292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149298 (A001096 n).toNat

end

end A149297.P3541962951307045292

/-!
# A149298: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149298, there is no canonical definition to state claims against.
-/

/-! ## A149298.P3197903211900224085

`A279565(n)+A004526(A149312(n))`
-/

namespace A149298.P3197903211900224085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279565 n + A004526 (A149312 n).toNat

end

end A149298.P3197903211900224085

/-! ## A149298.P5358995607654281877

`A055256(A026671(n)-1+n)`
-/

namespace A149298.P5358995607654281877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055256 (A026671 n - 1 + (n : ℤ)).toNat

end

end A149298.P5358995607654281877

/-! ## A149298.P18410678370211758940

`A055256(n-(1-A026671(n)))`
-/

namespace A149298.P18410678370211758940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055256 ((n : ℤ) - (1 - A026671 n)).toNat

end

end A149298.P18410678370211758940

/-!
# A149299: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149299, there is no canonical definition to state claims against.
-/

/-! ## A149299.P5852481904287054402

`A149300(n)-A216599(A149295(n))`
-/

namespace A149299.P5852481904287054402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149300 n - A216599 (A149295 n).toNat

end

end A149299.P5852481904287054402

/-! ## A149299.P9680321395340205606

`A266948(A000296(n))+A000296(n+2)`
-/

namespace A149299.P9680321395340205606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266948 (A000296 n).toNat + A000296 (n + 2)

end

end A149299.P9680321395340205606

