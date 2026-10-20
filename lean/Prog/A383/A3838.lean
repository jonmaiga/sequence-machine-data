import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
# A383800: Number of polyforms with n cells on the faces of a triakis octahedron up to rotation and reflection.

The programs for A383800, there is no canonical definition to state claims against.
-/

/-! ## A383800.P17338390637274419494

`A091245(A000602(n))+A016116(n)`
-/

namespace A383800.P17338390637274419494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A000602 n).toNat + A016116 n

end

end A383800.P17338390637274419494

/-!
# A383801: Number of polyforms with n cells on the faces of a triakis octahedron up to rotation.

The programs for A383801, there is no canonical definition to state claims against.
-/

/-! ## A383801.P9116871779124007481

`A121701(A051920(n))`
-/

namespace A383801.P9116871779124007481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121701 (A051920 n).toNat

end

end A383801.P9116871779124007481

/-! ## A383801.P9562161302130267089

`A083277(A149085(n))`
-/

namespace A383801.P9562161302130267089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A149085 n).toNat

end

end A383801.P9562161302130267089

/-! ## A383801.P7881662712316108904

`A116066(A241726(n))`
-/

namespace A383801.P7881662712316108904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116066 (A241726 (n + 36)).toNat

end

end A383801.P7881662712316108904

/-! ## A383801.P18187903626971809740

`A167976(A383493(n))`
-/

namespace A383801.P18187903626971809740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167976 (A383493 n).toNat

end

end A383801.P18187903626971809740

/-! ## A383801.P6460371725991541181

`A121701(A001405(n)+1)`
-/

namespace A383801.P6460371725991541181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121701 (A001405 n + 1).toNat

end

end A383801.P6460371725991541181

/-!
# A383802: Number of polyforms with n cells on the faces of a tetrakis hexahedron up to rotation and reflection.

The programs for A383802, there is no canonical definition to state claims against.
-/

/-! ## A383802.P2400766730690237943

`A108319(A319005(n+2)%A273936(n+1))`
-/

namespace A383802.P2400766730690237943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (Int.tmod (A319005 (n + 2)) (A273936 (n + 1))).toNat

end

end A383802.P2400766730690237943

/-! ## A383802.P5998159563689713809

`A108319(gcd(A273936(n+1), A319005(n+2)))`
-/

namespace A383802.P5998159563689713809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (Int.gcd (A273936 (n + 1)) (A319005 (n + 2)))

end

end A383802.P5998159563689713809

/-!
# A383804: Number of polyforms with n cells on the faces of a deltoidal icositetrahedron up to rotation and reflection.

The programs for A383804, there is no canonical definition to state claims against.
-/

/-! ## A383804.P15165401422645989074

`A216601(A134955(n))+A209383(n)`
-/

namespace A383804.P15165401422645989074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216601 (A134955 n).toNat + A209383 n

end

end A383804.P15165401422645989074

/-! ## A383804.P1459241014800119445

`A166516(n)-A014081(A110256(n+1))`
-/

namespace A383804.P1459241014800119445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 n - A014081 (A110256 (n + 1)).toNat

end

end A383804.P1459241014800119445

/-!
# A383805: Number of polyforms with n cells on the faces of a deltoidal icositetrahedron up to rotation.

The programs for A383805, there is no canonical definition to state claims against.
-/

/-! ## A383805.P2932492105523637340

`A046108(A227824(n))`
-/

namespace A383805.P2932492105523637340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A227824 n).toNat

end

end A383805.P2932492105523637340

/-! ## A383805.P486273391118437527

`A332110(A126764(n))`
-/

namespace A383805.P486273391118437527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332110 (A126764 n).toNat

end

end A383805.P486273391118437527

/-! ## A383805.P16023562478971739032

`A304708(A283969(n))`
-/

namespace A383805.P16023562478971739032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 (A283969 n).toNat

end

end A383805.P16023562478971739032

/-!
# A383806: Number of polyforms with n cells on the faces of a disdyakis dodecahedron up to rotation and reflection.

The programs for A383806, there is no canonical definition to state claims against.
-/

/-! ## A383806.P1084389463938161580

`A383496(n)-A383511(A383492(n))`
-/

namespace A383806.P1084389463938161580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383496 n - A383511 (A383492 n).toNat

end

end A383806.P1084389463938161580

/-! ## A383806.P9669964350330571361

`A197462(A250264(n+1))-A000588(A361953(n))`
-/

namespace A383806.P9669964350330571361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197462 (A250264 (n + 1)).toNat - A000588 (A361953 n).toNat

end

end A383806.P9669964350330571361

/-! ## A383806.P6907385778911784923

`A197462(A250265(n+1))-A383511(A383492(n))`
-/

namespace A383806.P6907385778911784923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197462 (A250265 (n + 1)).toNat - A383511 (A383492 n).toNat

end

end A383806.P6907385778911784923

/-! ## A383806.P4534140936698297693

`A197462(A250264(n+1))-A383511(A126424(n+1))`
-/

namespace A383806.P4534140936698297693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197462 (A250264 (n + 1)).toNat - A383511 (A126424 (n + 1)).toNat

end

end A383806.P4534140936698297693

/-!
# A383807: Number of polyforms with n cells on the faces of a disdyakis dodecahedron up to rotation.

The programs for A383807, there is no canonical definition to state claims against.
-/

/-! ## A383807.P12410116173913469522

`A383497(n)-A308016(A104676(n))`
-/

namespace A383807.P12410116173913469522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383497 n - A308016 (A104676 n).toNat

end

end A383807.P12410116173913469522

/-! ## A383807.P4175540563350658127

`A383497(n)-A383511(A383492(n))`
-/

namespace A383807.P4175540563350658127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383497 n - A383511 (A383492 n).toNat

end

end A383807.P4175540563350658127

/-! ## A383807.P17017381777158748027

`A383497(n)-A086015(A117770(n+1))`
-/

namespace A383807.P17017381777158748027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383497 n - A086015 (A117770 (n + 1)).toNat

end

end A383807.P17017381777158748027

/-! ## A383807.P881378173477961679

`A383497(n)-A033886(A327143(n+1))`
-/

namespace A383807.P881378173477961679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383497 n - A033886 (A327143 (n + 1)).toNat

end

end A383807.P881378173477961679

/-! ## A383807.P16239794533559233220

`A383497(n)-A213725(A287645(n+1))`
-/

namespace A383807.P16239794533559233220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383497 n - A213725 (A287645 (n + 1)).toNat

end

end A383807.P16239794533559233220

/-!
# A383808: Number of polyforms with n cells on the faces of a pentagonal icositetrahedron up to rotation.

The programs for A383808, there is no canonical definition to state claims against.
-/

/-! ## A383808.P11526581083696854387

`A376343(A001006(n))-1`
-/

namespace A383808.P11526581083696854387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376343 (A001006 n).toNat - 1

end

end A383808.P11526581083696854387

/-! ## A383808.P11451825909945609739

`A247911(Δ[record[A073202(n)]])`
-/

namespace A383808.P11451825909945609739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073202 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (f1 (n + 1) - f1 n).toNat

end

end A383808.P11451825909945609739

/-!
# A383810: Primes which satisfy the requirements of A380943 in more than one way.

The programs for A383810, there is no canonical definition to state claims against.
-/

/-! ## A383810.P12697543305657492233

`A383811(A024646(n+1))`
-/

namespace A383810.P12697543305657492233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383811 (A024646 (n + 1)).toNat

end

end A383810.P12697543305657492233

/-! ## A383810.P14646547068855077702

`A383811(A024647(n+1))`
-/

namespace A383810.P14646547068855077702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383811 (A024647 (n + 1)).toNat

end

end A383810.P14646547068855077702

/-! ## A383810.P12506045623996233885

`A383811(A024648(n+1))`
-/

namespace A383810.P12506045623996233885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383811 (A024648 (n + 1)).toNat

end

end A383810.P12506045623996233885

/-!
# A383811: Primes which satisfy the requirements of A380943 in exactly two ways.

The programs for A383811, there is no canonical definition to state claims against.
-/

/-! ## A383811.P17758424929575581626

`A383810(A366902(n+1)+A029804(n+1))`
-/

namespace A383811.P17758424929575581626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383810 (A366902 (n + 1) + A029804 (n + 1)).toNat

end

end A383811.P17758424929575581626

/-! ## A383811.P8515029378015730909

`A383810(A029804(n+2))`
-/

namespace A383811.P8515029378015730909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383810 (A029804 (n + 2)).toNat

end

end A383811.P8515029378015730909

/-! ## A383811.P17858739452227865925

`A383810(∑{d}[A143402(n), #]+n+1)`
-/

namespace A383811.P17858739452227865925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383810 (∑ d ∈ Nat.divisors (f1 n).natAbs, d + (n + 1))

end

end A383811.P17858739452227865925

/-! ## A383811.P14531878524004224591

`A383810(or(A115309(n+1), A271194(n+1)))`
-/

namespace A383811.P14531878524004224591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383810 (Int.lor (A115309 (n + 1)) (A271194 (n + 1))).toNat

end

end A383811.P14531878524004224591

/-!
# A383815: Palindromic primes in A380943.

The programs for A383815, there is no canonical definition to state claims against.
-/

/-! ## A383815.P7614640442944936419

`∩[A002385(n+1), A380943(n+1)]`
-/

namespace A383815.P7614640442944936419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383815.P7614640442944936419

/-! ## A383815.P18063219956259295136

`∩[A029950(n+1), A380943(n+1)]`
-/

namespace A383815.P18063219956259295136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383815.P18063219956259295136

/-! ## A383815.P2183016383913658797

`∩[A056525(n+1), A380943(n+1)]`
-/

namespace A383815.P2183016383913658797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383815.P2183016383913658797

/-! ## A383815.P3360401081588339546

`∩[A062687(n+1), A380943(n+1)]`
-/

namespace A383815.P3360401081588339546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383815.P3360401081588339546

/-! ## A383815.P16653215718697011646

`∩[A071251(n+1), A380943(n+1)]`
-/

namespace A383815.P16653215718697011646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383815.P16653215718697011646

/-!
# A383818: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where column k is the expansion of 1/(1 - k*x) * Product_{j=0..k-1} (1 + j*x)/(1 - j*x).

The programs for A383818, there is no canonical definition to state claims against.
-/

/-! ## A383818.P5788657361490971794

`A118345(n)²%A342222(n+3)`
-/

namespace A383818.P5788657361490971794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118345 n ^ 2) (A342222 (n + 3))

end

end A383818.P5788657361490971794

/-! ## A383818.P9735090411922845780

`A287698(n)^A049710(A330994(2*n+3))`
-/

namespace A383818.P9735090411922845780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287698 n : ℚ) ^ (A049710 (A330994 (2 * n + 3)).toNat : ℤ)

end

end A383818.P9735090411922845780

/-! ## A383818.P15834221332195191967

`A007953(A003992(n)^A165768(n+5))`
-/

namespace A383818.P15834221332195191967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A003992 n : ℚ) ^ (A165768 (n + 5) : ℤ))).toNat

end

end A383818.P15834221332195191967

/-! ## A383818.P13168553276377775542

`A003714(A106800(n)%A370583(2*(n+2)))`
-/

namespace A383818.P13168553276377775542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (Int.tmod (A106800 n) (A370583 (2 * (n + 2)))).toNat

end

end A383818.P13168553276377775542

/-! ## A383818.P6781185026169032739

`A308590(C(A369923(n+1), A375032(n+1)))`
-/

namespace A383818.P6781185026169032739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308590 (Nat.choose (A369923 (n + 1)).toNat (A375032 (n + 1)).toNat)

end

end A383818.P6781185026169032739

/-!
# A383823: a(n) is the number of secondary GL(4) invariants contructed from n+3 distinct four component vectors.

The programs for A383823, there is no canonical definition to state claims against.
-/

/-! ## A383823.P7068844301457200126

`A056940(∑[4*n])`
-/

namespace A383823.P7068844301457200126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383823.P7068844301457200126

/-! ## A383823.P2571785052006907467

`A000356(n+1)*A005700(n)`
-/

namespace A383823.P2571785052006907467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000356 (n + 1) * A005700 n

end

end A383823.P2571785052006907467

/-!
# A383828: Number of involutory racks of order n, up to isomorphism.

The programs for A383828, there is no canonical definition to state claims against.
-/

/-! ## A383828.P7004084414445797111

`A135646(A137953(n))`
-/

namespace A383828.P7004084414445797111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135646 (A137953 n).toNat

end

end A383828.P7004084414445797111

/-! ## A383828.P6559902603959438709

`A308627(A382367(n))`
-/

namespace A383828.P6559902603959438709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308627 (A382367 n).toNat

end

end A383828.P6559902603959438709

/-! ## A383828.P12090475998027622627

`A077767(A149055(n+1))`
-/

namespace A383828.P12090475998027622627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (A149055 (n + 1)).toNat

end

end A383828.P12090475998027622627

/-!
# A383829: Number of medial involutory racks of order n, up to isomorphism.

The programs for A383829, there is no canonical definition to state claims against.
-/

/-! ## A383829.P13822080871056357928

`A105659(A247295(n))`
-/

namespace A383829.P13822080871056357928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105659 (A247295 n).toNat

end

end A383829.P13822080871056357928

/-! ## A383829.P1496998329698071154

`A375590(A129519(n))`
-/

namespace A383829.P1496998329698071154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375590 (A129519 n).toNat

end

end A383829.P1496998329698071154

/-! ## A383829.P3219804704524307151

`A105659(A157133(n+1))`
-/

namespace A383829.P3219804704524307151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105659 (A157133 (n + 1)).toNat

end

end A383829.P3219804704524307151

/-!
# A383830: Number of Legendrian quandles of order n, up to isomorphism.

The programs for A383830, there is no canonical definition to state claims against.
-/

/-! ## A383830.P17823678626413221415

`A325412(A182806(n))`
-/

namespace A383830.P17823678626413221415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325412 (A182806 n).toNat

end

end A383830.P17823678626413221415

/-! ## A383830.P1284965314418715119

`A325412(A266108(n))`
-/

namespace A383830.P1284965314418715119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325412 (A266108 n).toNat

end

end A383830.P1284965314418715119

/-! ## A383830.P12178688455206999170

`A325412(A271318(n))`
-/

namespace A383830.P12178688455206999170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325412 (A271318 n).toNat

end

end A383830.P12178688455206999170

/-!
# A383831: Number of medial Legendrian quandles of order n, up to isomorphism.

The programs for A383831, there is no canonical definition to state claims against.
-/

/-! ## A383831.P13964453910008822274

`A036873(A037444(n))+A000108(n)`
-/

namespace A383831.P13964453910008822274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036873 (A037444 n).toNat + A000108 n

end

end A383831.P13964453910008822274

/-! ## A383831.P17088552614602554632

`A097597(n)+A056239(A112934(n))`
-/

namespace A383831.P17088552614602554632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097597 n + A056239 (A112934 n).toNat

end

end A383831.P17088552614602554632

/-! ## A383831.P8990260389153254494

`A006390(n)-A241467(A001037(n))`
-/

namespace A383831.P8990260389153254494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006390 n - A241467 (A001037 n).toNat

end

end A383831.P8990260389153254494

/-!
# A383832: a(n) = Sum_{k=0..n} (k+1) * 3^k * binomial(2*n+2,n-k).

The programs for A383832, the canonical program `A383832.P14484919071808481643` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383832 has offset 0).

The definition of A383832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383832.P14484919071808481643

`(n+1)*A076025(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A383832

/-- `(n+1)*A076025(n+1)` -/
def P14484919071808481643.Spec : Prop :=
  ∀ n, P14484919071808481643.a n = A383832 n

theorem P14484919071808481643.correct : P14484919071808481643.Spec := by
  intro n
  simp only [A383832]

end A383832

/-! ## A383832.P6408633824542096578

`(n+1)*A076035(n+1)/4`
-/

namespace A383832.P6408633824542096578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A076035 (n + 1) : ℚ) / 4)

end

end A383832.P6408633824542096578

namespace A383832

/-- `(n+1)*A076035(n+1)/4` -/
def P6408633824542096578.Spec : Prop :=
  ∀ n, P6408633824542096578.a n = (A383832 n : ℚ)

end A383832

/-! ## A383832.P14734397037165258522

`A000079(n)/A000142(n)*A308939(n+1)`
-/

namespace A383832.P14734397037165258522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A000142 n : ℚ) * (A308939 (n + 1) : ℚ)

end

end A383832.P14734397037165258522

namespace A383832

/-- `A000079(n)/A000142(n)*A308939(n+1)` -/
def P14734397037165258522.Spec : Prop :=
  ∀ n, P14734397037165258522.a n = (A383832 n : ℚ)

end A383832

/-! ## A383832.P948304087081265198

`A011782(n+1)/A000142(n)*A308939(n+1)`
-/

namespace A383832.P948304087081265198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A000142 n : ℚ) * (A308939 (n + 1) : ℚ)

end

end A383832.P948304087081265198

namespace A383832

/-- `A011782(n+1)/A000142(n)*A308939(n+1)` -/
def P948304087081265198.Spec : Prop :=
  ∀ n, P948304087081265198.a n = (A383832 n : ℚ)

end A383832

/-!
# A383833: Area of the unique primitive Pythagorean triple whose inradius is A000217(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A383833, the canonical program `A383833.P17811188111289876932` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383833 has offset 0).

The definition of A383833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383833.P17119993049952026420

`n*(n+1)*(n²+n+1)*(n²+n+2)/4`
-/

namespace A383833.P17119993049952026420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n ^ 2 + n + 1) * (n ^ 2 + n + 2) : ℚ) / 4

end

end A383833.P17119993049952026420

namespace A383833

/-- `n*(n+1)*(n²+n+1)*(n²+n+2)/4` -/
def P17119993049952026420.Spec : Prop :=
  ∀ n, P17119993049952026420.a n = (A383833 n : ℚ)

end A383833

/-! ## A383833.P17811188111289876932

`A000217(n)*(A000217(n)+1)*(2*A000217(n)+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A383833

/-- `A000217(n)*(A000217(n)+1)*(2*A000217(n)+1)` -/
def P17811188111289876932.Spec : Prop :=
  ∀ n, P17811188111289876932.a n = A383833 n

theorem P17811188111289876932.correct : P17811188111289876932.Spec := by
  intro n
  simp only [A383833]

end A383833

/-! ## A383833.P17099233746904987188

`lcm(C(n²+n+2, 2), ∑[n])`
-/

namespace A383833.P17099233746904987188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.choose (n ^ 2 + (n + 2)) 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383833.P17099233746904987188

namespace A383833

/-- `lcm(C(n²+n+2, 2), ∑[n])` -/
def P17099233746904987188.Spec : Prop :=
  ∀ n, (P17099233746904987188.a n : ℤ) = A383833 n

end A383833

/-! ## A383833.P10354130802162693505

`lcm(A000124(n), A110450(n))`
-/

namespace A383833.P10354130802162693505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000124 n) (A110450 n)

end

end A383833.P10354130802162693505

namespace A383833

/-- `lcm(A000124(n), A110450(n))` -/
def P10354130802162693505.Spec : Prop :=
  ∀ n, (P10354130802162693505.a n : ℤ) = A383833 n

end A383833

/-! ## A383833.P607441075034953469

`lcm(A000217(n), A336535(n+1))`
-/

namespace A383833.P607441075034953469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000217 n) (A336535 (n + 1))

end

end A383833.P607441075034953469

namespace A383833

/-- `lcm(A000217(n), A336535(n+1))` -/
def P607441075034953469.Spec : Prop :=
  ∀ n, (P607441075034953469.a n : ℤ) = A383833 n

end A383833

/-! ## A383833.P6911503454696881343

`A001621(n)+A001621(n)*A002378(n)`
-/

namespace A383833.P6911503454696881343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n + A001621 n * A002378 n

end

end A383833.P6911503454696881343

namespace A383833

/-- `A001621(n)+A001621(n)*A002378(n)` -/
def P6911503454696881343.Spec : Prop :=
  ∀ n, P6911503454696881343.a n = A383833 n

end A383833

/-! ## A383833.P12051275353732499785

`A002817(n)+A001844(n)*A002817(n)`
-/

namespace A383833.P12051275353732499785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n + A001844 n * A002817 n

end

end A383833.P12051275353732499785

namespace A383833

/-- `A002817(n)+A001844(n)*A002817(n)` -/
def P12051275353732499785.Spec : Prop :=
  ∀ n, P12051275353732499785.a n = A383833 n

end A383833

/-! ## A383833.P15742727686388195350

`A000537(n)+A006003(n+1)*A006003(n)`
-/

namespace A383833.P15742727686388195350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + A006003 (n + 1) * A006003 n

end

end A383833.P15742727686388195350

namespace A383833

/-- `A000537(n)+A006003(n+1)*A006003(n)` -/
def P15742727686388195350.Spec : Prop :=
  ∀ n, P15742727686388195350.a n = A383833 n

end A383833

/-! ## A383833.P1277397748343018220

`A055112(∑[n])`
-/

namespace A383833.P1277397748343018220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383833.P1277397748343018220

namespace A383833

/-- `A055112(∑[n])` -/
def P1277397748343018220.Spec : Prop :=
  ∀ n, P1277397748343018220.a n = A383833 n

end A383833

/-! ## A383833.P15911585517335609216

`A276670(n²+n+1)`
-/

namespace A383833.P15911585517335609216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276670 (n ^ 2 + (n + 1))

end

end A383833.P15911585517335609216

namespace A383833

/-- `A276670(n²+n+1)` -/
def P15911585517335609216.Spec : Prop :=
  ∀ n, P15911585517335609216.a n = A383833 n

end A383833

/-! ## A383833.P170948322911878274

`A390343(n²+n+1)`
-/

namespace A383833.P170948322911878274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390343 (n ^ 2 + (n + 1))

end

end A383833.P170948322911878274

namespace A383833

/-- `A390343(n²+n+1)` -/
def P170948322911878274.Spec : Prop :=
  ∀ n, P170948322911878274.a n = A383833 n

end A383833

/-! ## A383833.P1740682988549386083

`A011886(n²+n+2)`
-/

namespace A383833.P1740682988549386083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (n ^ 2 + n + 2)

end

end A383833.P1740682988549386083

namespace A383833

/-- `A011886(n²+n+2)` -/
def P1740682988549386083.Spec : Prop :=
  ∀ n, P1740682988549386083.a n = A383833 n

end A383833

/-!
# A383834: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000217(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A383834, the canonical program `A383834.P10743144755230545223` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383834 has offset 0).

The definition of A383834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383834.P2030630734380948895

`(n^4+2*n^3+5*n²+4*n+2)/2`
-/

namespace A383834.P2030630734380948895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + 2 * n ^ 3 + 5 * n ^ 2 + 4 * n + 2 : ℚ) / 2

end

end A383834.P2030630734380948895

namespace A383834

/-- `(n^4+2*n^3+5*n²+4*n+2)/2` -/
def P2030630734380948895.Spec : Prop :=
  ∀ n, P2030630734380948895.a n = (A383834 n : ℚ)

end A383834

/-! ## A383834.P10743144755230545223

`6*A006007(n)+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A383834

/-- `6*A006007(n)+1` -/
def P10743144755230545223.Spec : Prop :=
  ∀ n, P10743144755230545223.a n = A383834 n

theorem P10743144755230545223.correct : P10743144755230545223.Spec := by
  intro n
  simp only [A383834]

end A383834

/-! ## A383834.P52955162706010025

`2*A000217(n)²+4*A000217(n)+1`
-/

namespace A383834.P52955162706010025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 n ^ 2 + 4 * A000217 n + 1

end

end A383834.P52955162706010025

namespace A383834

/-- `2*A000217(n)²+4*A000217(n)+1` -/
def P52955162706010025.Spec : Prop :=
  ∀ n, P52955162706010025.a n = A383834 n

end A383834

/-! ## A383834.P2921451613896718057

`a(n-1)+2*n*(n²+2)` with `a(0)=1`
-/

namespace A383834.P2921451613896718057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * (n * (n ^ 2 + 2))

end

end A383834.P2921451613896718057

namespace A383834

/-- `a(n-1)+2*n*(n²+2)` -/
def P2921451613896718057.Spec : Prop :=
  ∀ n, (P2921451613896718057.a n : ℤ) = A383834 n

end A383834

/-! ## A383834.P5416536843338253359

`floor(a(n-1)+2*n*(n*n+2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A383834.P5416536843338253359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * (n * (n * n + 2))

end

end A383834.P5416536843338253359

namespace A383834

/-- `floor(a(n-1)+2*n*(n*n+2))` -/
def P5416536843338253359.Spec : Prop :=
  ∀ n, (P5416536843338253359.a n : ℤ) = A383834 n

end A383834

/-! ## A383834.P3492739520609219691

`∑[A288534(n)+n]`
-/

namespace A383834.P3492739520609219691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288534 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383834.P3492739520609219691

namespace A383834

/-- `∑[A288534(n)+n]` -/
def P3492739520609219691.Spec : Prop :=
  ∀ n, P3492739520609219691.a n = A383834 n

end A383834

/-! ## A383834.P6767388854724882919

`2*A061316(n)+1`
-/

namespace A383834.P6767388854724882919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061316 n + 1

end

end A383834.P6767388854724882919

namespace A383834

/-- `2*A061316(n)+1` -/
def P6767388854724882919.Spec : Prop :=
  ∀ n, P6767388854724882919.a n = A383834 n

end A383834

/-! ## A383834.P11444583767663008032

`2*A086601(n)-1`
-/

namespace A383834.P11444583767663008032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086601 n - 1

end

end A383834.P11444583767663008032

namespace A383834

/-- `2*A086601(n)-1` -/
def P11444583767663008032.Spec : Prop :=
  ∀ n, P11444583767663008032.a n = A383834 n

end A383834

/-! ## A383834.P5072500129404813860

`A336535(n+1)+∑[n]`
-/

namespace A383834.P5072500129404813860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336535 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A383834.P5072500129404813860

namespace A383834

/-- `A336535(n+1)+∑[n]` -/
def P5072500129404813860.Spec : Prop :=
  ∀ n, P5072500129404813860.a n = A383834 n

end A383834

/-! ## A383834.P4154577397066570817

`3*A103290(n+1)+1`
-/

namespace A383834.P4154577397066570817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A103290 (n + 1) + 1

end

end A383834.P4154577397066570817

namespace A383834

/-- `3*A103290(n+1)+1` -/
def P4154577397066570817.Spec : Prop :=
  ∀ n, P4154577397066570817.a n = A383834 n

end A383834

/-! ## A383834.P11074029324632197074

`(n+1)*A006004(n+1)-n`
-/

namespace A383834.P11074029324632197074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006004 (n + 1) - (n : ℤ)

end

end A383834.P11074029324632197074

namespace A383834

/-- `(n+1)*A006004(n+1)-n` -/
def P11074029324632197074.Spec : Prop :=
  ∀ n, P11074029324632197074.a n = A383834 n

end A383834

/-! ## A383834.P5971589355494209754

`A062392(n)+A005891(n)`
-/

namespace A383834.P5971589355494209754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n + A005891 n

end

end A383834.P5971589355494209754

namespace A383834

/-- `A062392(n)+A005891(n)` -/
def P5971589355494209754.Spec : Prop :=
  ∀ n, P5971589355494209754.a n = A383834 n

end A383834

/-! ## A383834.P1590447112568652605

`A069778(n)+A037270(n)`
-/

namespace A383834.P1590447112568652605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n + A037270 n

end

end A383834.P1590447112568652605

namespace A383834

/-- `A069778(n)+A037270(n)` -/
def P1590447112568652605.Spec : Prop :=
  ∀ n, P1590447112568652605.a n = A383834 n

end A383834

/-! ## A383834.P16917930476586968029

`A086601(n)+A061316(n)`
-/

namespace A383834.P16917930476586968029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086601 n + A061316 n

end

end A383834.P16917930476586968029

namespace A383834

/-- `A086601(n)+A061316(n)` -/
def P16917930476586968029.Spec : Prop :=
  ∀ n, P16917930476586968029.a n = A383834 n

end A383834

/-! ## A383834.P16111193301488167621

`A163102(n)+A001844(n)`
-/

namespace A383834.P16111193301488167621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n + A001844 n

end

end A383834.P16111193301488167621

namespace A383834

/-- `A163102(n)+A001844(n)` -/
def P16111193301488167621.Spec : Prop :=
  ∀ n, P16111193301488167621.a n = A383834 n

end A383834

/-! ## A383834.P18158014525250353528

`A255499(n)+A056109(n)`
-/

namespace A383834.P18158014525250353528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n + A056109 n

end

end A383834.P18158014525250353528

namespace A383834

/-- `A255499(n)+A056109(n)` -/
def P18158014525250353528.Spec : Prop :=
  ∀ n, P18158014525250353528.a n = A383834 n

end A383834

/-! ## A383834.P11371030566646601145

`A334694(n)+A123350(n)`
-/

namespace A383834.P11371030566646601145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334694 n + A123350 n

end

end A383834.P11371030566646601145

namespace A383834

/-- `A334694(n)+A123350(n)` -/
def P11371030566646601145.Spec : Prop :=
  ∀ n, P11371030566646601145.a n = A383834 n

end A383834

/-! ## A383834.P13737565944176596781

`A110450(n)+A005448(n+1)`
-/

namespace A383834.P13737565944176596781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n + A005448 (n + 1)

end

end A383834.P13737565944176596781

namespace A383834

/-- `A110450(n)+A005448(n+1)` -/
def P13737565944176596781.Spec : Prop :=
  ∀ n, P13737565944176596781.a n = A383834 n

end A383834

/-! ## A383834.P8153241684816871450

`A212134(n)+A054567(n+1)`
-/

namespace A383834.P8153241684816871450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + A054567 (n + 1)

end

end A383834.P8153241684816871450

namespace A383834

/-- `A212134(n)+A054567(n+1)` -/
def P8153241684816871450.Spec : Prop :=
  ∀ n, P8153241684816871450.a n = A383834 n

end A383834

/-! ## A383834.P6390069658197719429

`A171129(n)+A100175(n+1)`
-/

namespace A383834.P6390069658197719429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 n + A100175 (n + 1)

end

end A383834.P6390069658197719429

namespace A383834

/-- `A171129(n)+A100175(n+1)` -/
def P6390069658197719429.Spec : Prop :=
  ∀ n, P6390069658197719429.a n = A383834 n

end A383834

/-!
# A383835: Number of permutations of [n] whose compositional square is the identity permutation or its reverse.

The programs for A383835, there is no canonical definition to state claims against.
-/

/-! ## A383835.P1941698329543202604

`A052928(A122670(n))+A000085(n)`
-/

namespace A383835.P1941698329543202604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A122670 n).toNat + A000085 n

end

end A383835.P1941698329543202604

/-! ## A383835.P10368403417566906460

`A070895(∑[n])+A052928(A122670(n))`
-/

namespace A383835.P10368403417566906460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (∑ j ∈ Finset.range (n + 1), f1 j) + A052928 (A122670 n).toNat

end

end A383835.P10368403417566906460

/-! ## A383835.P3350039938817418686

`A099020(∑[n])+A052928(A122670(n))`
-/

namespace A383835.P3350039938817418686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) + A052928 (A122670 n).toNat

end

end A383835.P3350039938817418686

/-! ## A383835.P8811187443465414681

`A052928(A122670(n))+A013989(n)/(n+1)`
-/

namespace A383835.P8811187443465414681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052928 (A122670 n).toNat : ℚ) + (A013989 n : ℚ) / (n + 1 : ℚ)

end

end A383835.P8811187443465414681

/-! ## A383835.P12216259002848101694

`A293808(A133263(n)-1)+A052928(A122670(n))`
-/

namespace A383835.P12216259002848101694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A133263 n - 1).toNat + A052928 (A122670 n).toNat

end

end A383835.P12216259002848101694

/-!
# A383837: a(n) = (3*n)!/n! * [x^(3*n)] sinh(x)^n.

The programs for A383837, there is no canonical definition to state claims against.
-/

/-! ## A383837.P15104559789408240668

`A136630(A062725(n))`
-/

namespace A383837.P15104559789408240668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 (A062725 n).toNat

end

end A383837.P15104559789408240668

/-! ## A383837.P7794854612909300799

`A136630(A062728(n)-n)`
-/

namespace A383837.P7794854612909300799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 (A062728 n - (n : ℤ)).toNat

end

end A383837.P7794854612909300799

/-! ## A383837.P7119743269668665512

`A136630(A000217(3*n)+n)`
-/

namespace A383837.P7119743269668665512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A383837.P7119743269668665512

/-! ## A383837.P13749686289965760217

`A136630(A049451(n)+A033436(2*n+1))`
-/

namespace A383837.P13749686289965760217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 (A049451 n + A033436 (2 * n + 1)).toNat

end

end A383837.P13749686289965760217

/-! ## A383837.P16063688062379955167

`A136630(eq[A038263(n), A038294(n)])`
-/

namespace A383837.P16063688062379955167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038263 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A383837.P16063688062379955167

/-!
# A383838: Expansion of 1/((1-x) * (1-4*x) * (1-9*x) * (1-16*x)).

The programs for A383838, there is no canonical definition to state claims against.
-/

/-! ## A383838.P2565326273546634453

`A269945(eq[4, A002262(n)])`
-/

namespace A383838.P2565326273546634453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A383838.P2565326273546634453

/-! ## A383838.P2845061711611309239

`record[A269945(A046691(n)+8)]`
-/

namespace A383838.P2845061711611309239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (A046691 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383838.P2845061711611309239

/-! ## A383838.P2688720382345488475

`A269945(A133263(n+4)+2)`
-/

namespace A383838.P2688720382345488475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (A133263 (n + 4) + 2).toNat

end

end A383838.P2688720382345488475

/-! ## A383838.P16662186722224299059

`A036969(A166136(n+1)+n+1)`
-/

namespace A383838.P16662186722224299059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036969 (A166136 (n + 1) + (n + 1 : ℤ)).toNat

end

end A383838.P16662186722224299059

/-! ## A383838.P17054903199370857673

`A008957(A000124(n+3)+n)`
-/

namespace A383838.P17054903199370857673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (A000124 (n + 3) + (n : ℤ)).toNat

end

end A383838.P17054903199370857673

/-!
# A383839: a(n) = [x^n] 1/(1 - n*x) * Product_{k=0..n-1} (1 + k*x)/(1 - k*x).

The programs for A383839, there is no canonical definition to state claims against.
-/

/-! ## A383839.P3675990572051725278

`A383818(∑[4*n])`
-/

namespace A383839.P3675990572051725278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383839.P3675990572051725278

/-!
# A383840: Expansion of 1/((1-x) * (1-4*x) * (1-9*x) * (1-16*x) * (1-25*x)).

The programs for A383840, there is no canonical definition to state claims against.
-/

/-! ## A383840.P17665430151966197111

`A036969(A167499(n+3))`
-/

namespace A383840.P17665430151966197111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036969 (A167499 (n + 3)).toNat

end

end A383840.P17665430151966197111

/-! ## A383840.P12099742509739226247

`A269945(eq[5, A002262(n)])`
-/

namespace A383840.P12099742509739226247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A383840.P12099742509739226247

/-! ## A383840.P16708129996901783168

`A269945(A167614(n+4)+2)`
-/

namespace A383840.P16708129996901783168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (A167614 (n + 4) + 2).toNat

end

end A383840.P16708129996901783168

/-! ## A383840.P12161615560769815697

`A269945(eq[6, A002260(n+1)])`
-/

namespace A383840.P12161615560769815697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A383840.P12161615560769815697

/-! ## A383840.P10716949347235872136

`A269945(eq[6, A134868(n+1)])`
-/

namespace A383840.P10716949347235872136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A383840.P10716949347235872136

/-! ## A383840.P13587758008319174004

`A008957(A155212(n+1)+4)`
-/

namespace A383840.P13587758008319174004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (A155212 (n + 1) + 4).toNat

end

end A383840.P13587758008319174004

/-!
# A383841: Expansion of 1/((1-x) * (1-2*x) * (1-3*x))^2.

The programs for A383841, there is no canonical definition to state claims against.
-/

/-! ## A383841.P9202435191438354154

`A246118(A167487(n+5))`
-/

namespace A383841.P9202435191438354154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246118 (A167487 (n + 5)).toNat

end

end A383841.P9202435191438354154

/-!
# A383842: Expansion of 1/((1-x) * (1-2*x) * (1-3*x) * (1-4*x))^2.

The programs for A383842, there is no canonical definition to state claims against.
-/

/-! ## A383842.P11489655059321987316

`A383843(A000217(n+4)+n)`
-/

namespace A383842.P11489655059321987316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383843 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A383842.P11489655059321987316

/-!
# A383843: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where column k is the expansion of 1/Product_{j=0..k} (1 - j*x)^2.

The programs for A383843, there is no canonical definition to state claims against.
-/

/-! ## A383843.P178657748353829050

`A162344(A059299(n))`
-/

namespace A383843.P178657748353829050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A059299 n).toNat

end

end A383843.P178657748353829050

/-! ## A383843.P17687004691242902023

`A059299(n)-A187117(n+2)%A008621(A115281(n))`
-/

namespace A383843.P17687004691242902023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059299 n - Int.tmod (A187117 (n + 2)) (A008621 (A115281 n).toNat)

end

end A383843.P17687004691242902023

/-! ## A383843.P12063194933219792266

`A059299(n)-A358841(A250283(n+1))`
-/

namespace A383843.P12063194933219792266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059299 n - A358841 (A250283 (n + 1)).toNat

end

end A383843.P12063194933219792266

/-!
# A383845: Triangle T(n,k) read by rows: where T(n,k) is the number of the k-th eliminated person in the variation of the Josephus elimination process for n people, where the elimination pattern is eliminate-eliminate-skip.

The programs for A383845, there is no canonical definition to state claims against.
-/

/-! ## A383845.P16297833052145638898

`and(A113860(n), A380911(n+1))`
-/

namespace A383845.P16297833052145638898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113860 n) (A380911 (n + 1))

end

end A383845.P16297833052145638898

/-! ## A383845.P2440269268430022796

`and(A249511(n+1), A380911(n+1))`
-/

namespace A383845.P2440269268430022796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249511 (n + 1)) (A380911 (n + 1))

end

end A383845.P2440269268430022796

/-! ## A383845.P17619575647395737429

`A380911(n+1)%A001952(A143897(n))`
-/

namespace A383845.P17619575647395737429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380911 (n + 1)) (A001952 (A143897 n).toNat)

end

end A383845.P17619575647395737429

/-! ## A383845.P9693540689688983622

`A380911(n+1)+A292262(A075585(n+1))`
-/

namespace A383845.P9693540689688983622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380911 (n + 1) + A292262 (A075585 (n + 1)).toNat

end

end A383845.P9693540689688983622

/-! ## A383845.P6115698424635812006

`A380911(n+1)+A000007(A049074(n+2))`
-/

namespace A383845.P6115698424635812006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380911 (n + 1) + A000007 (A049074 (n + 2)).toNat

end

end A383845.P6115698424635812006

/-!
# A383846: A version of the Josephus problem: a(n) is the surviving integer under the eliminate-eliminate-skip version of the elimination process.

The programs for A383846, there is no canonical definition to state claims against.
-/

/-! ## A383846.P2186750707332743598

`a(n-2)%(1-n)+3` with `a(0)=1, a(1)=2`
-/

namespace A383846.P2186750707332743598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (a (n - 2)) (1 - (n : ℤ)) + 3

end

end A383846.P2186750707332743598

/-! ## A383846.P3625064891024021

`A382356(A337191(2*n+1+n))`
-/

namespace A383846.P3625064891024021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382356 (A337191 (2 * n + 1 + n)).toNat

end

end A383846.P3625064891024021

/-! ## A383846.P18363276378981023737

`A381591(A381051(2*n+n+2))`
-/

namespace A383846.P18363276378981023737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381591 (A381051 (2 * n + (n + 2))).toNat

end

end A383846.P18363276378981023737

/-!
# A383847: Triangle T(n,k) read by rows, where row n is a permutation of the numbers 1 through n, such that if a deck of n cards is prepared in this order, and down-down-under dealing is used, then the resulting cards will be dealt in increasing order.

The programs for A383847, there is no canonical definition to state claims against.
-/

/-! ## A383847.P14264432680655697310

`A382528(A066181(n+1))`
-/

namespace A383847.P14264432680655697310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382528 (A066181 (n + 1)).toNat

end

end A383847.P14264432680655697310

/-! ## A383847.P16533109300842086921

`A366737(A095904(n))`
-/

namespace A383847.P16533109300842086921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366737 (A095904 n).toNat

end

end A383847.P16533109300842086921

/-! ## A383847.P4425565714553144286

`A366737(A096153(n+1))`
-/

namespace A383847.P4425565714553144286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366737 (A096153 (n + 1)).toNat

end

end A383847.P4425565714553144286

/-! ## A383847.P5274867295329043305

`A002260(A194977(n+1)%A271657(2*n+5))`
-/

namespace A383847.P5274867295329043305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.tmod (A194977 (n + 1)) (A271657 (2 * n + 5))).toNat

end

end A383847.P5274867295329043305

/-! ## A383847.P14348484811728191776

`A327390(A181854(n))`
-/

namespace A383847.P14348484811728191776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327390 (A181854 n).toNat

end

end A383847.P14348484811728191776

/-!
# A383849: In the binary representation of n, rotate right by the number of ones.

The programs for A383849, there is no canonical definition to state claims against.
-/

/-! ## A383849.P7188321205496429280

`A243109(n)+A025455(A122843(3*(n+1)))`
-/

namespace A383849.P7188321205496429280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 n + A025455 (A122843 (3 * (n + 1))).toNat

end

end A383849.P7188321205496429280

/-!
# A383850: Fixed points of A383848 and A383849.

The programs for A383850, there is no canonical definition to state claims against.
-/

/-! ## A383850.P9417651685952720174

`eq[n, A383848(n)]`
-/

namespace A383850.P9417651685952720174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383848 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A383850.P9417651685952720174

/-! ## A383850.P16424045705433963075

`eq[n, A383849(n)]`
-/

namespace A383850.P16424045705433963075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A383850.P16424045705433963075

/-! ## A383850.P6950510894017140759

`A340500(A096260(n))`
-/

namespace A383850.P6950510894017140759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340500 (A096260 n).toNat

end

end A383850.P6950510894017140759

/-! ## A383850.P4580399868688395065

`A340500(A354645(n+1))`
-/

namespace A383850.P4580399868688395065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340500 (A354645 (n + 1)).toNat

end

end A383850.P4580399868688395065

/-! ## A383850.P5457367934659289829

`eq[A049641(n), A153007(n)]`
-/

namespace A383850.P5457367934659289829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383850.P5457367934659289829

/-!
# A383854: a(n) = 4*n^3 + 5*n - 1.

The programs for A383854, the canonical program `A383854.P7702102812663462635` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383854 has offset 1).

The definition of A383854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)^3+5*(n+1)-1` (program `A383854.P7702102812663462635`, by `A383854.P7702102812663462635.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383854.P7702102812663462635

`4*(n+1)^3+5*(n+1)-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A383854

/-- `4*(n+1)^3+5*(n+1)-1` -/
def P7702102812663462635.Spec : Prop :=
  ∀ n, P7702102812663462635.a n = A383854 (n + 1)

theorem P7702102812663462635.correct : P7702102812663462635.Spec := by
  intro n
  simp only [A383854, Nat.add_sub_cancel]

end A383854

/-! ## A383854.P1505340403006538058

`∑[A005897(n+1)+A005897(n)-1]`
-/

namespace A383854.P1505340403006538058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (n + 1) + A005897 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383854.P1505340403006538058

namespace A383854

/-- `∑[A005897(n+1)+A005897(n)-1]` -/
def P1505340403006538058.Spec : Prop :=
  ∀ n, P1505340403006538058.a n = A383854 (n + 1)

end A383854

/-! ## A383854.P3506205822348014199

`Δ[A051895(n)+A000583(n)]`
-/

namespace A383854.P3506205822348014199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051895 n + A000583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383854.P3506205822348014199

namespace A383854

/-- `Δ[A051895(n)+A000583(n)]` -/
def P3506205822348014199.Spec : Prop :=
  ∀ n, P3506205822348014199.a n = A383854 (n + 1)

end A383854

/-! ## A383854.P9931711747398502064

`Δ[A014409(2*n+1)]`
-/

namespace A383854.P9931711747398502064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014409 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383854.P9931711747398502064

namespace A383854

/-- `Δ[A014409(2*n+1)]` -/
def P9931711747398502064.Spec : Prop :=
  ∀ n, P9931711747398502064.a n = A383854 (n + 1)

end A383854

/-! ## A383854.P15638455548156505782

`∑[A077588(n)+A002061(3*(n+1))]`
-/

namespace A383854.P15638455548156505782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n + A002061 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383854.P15638455548156505782

namespace A383854

/-- `∑[A077588(n)+A002061(3*(n+1))]` -/
def P15638455548156505782.Spec : Prop :=
  ∀ n, P15638455548156505782.a n = A383854 (n + 1)

end A383854

/-!
# A383855: The n-th term of the sequence is k after every k*(k+1)/2 occurrences of 1, with multiple values following a 1 listed in order.

The programs for A383855, there is no canonical definition to state claims against.
-/

/-! ## A383855.P10000022353250406158

`A000120(A389732(n+2))`
-/

namespace A383855.P10000022353250406158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A389732 (n + 2)).toNat

end

end A383855.P10000022353250406158

/-! ## A383855.P4683885777365603550

`gcd(A029783(n+2), A367402(A000009(n)))`
-/

namespace A383855.P4683885777365603550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029783 (n + 2)) (A367402 (A000009 n).toNat)

end

end A383855.P4683885777365603550

/-! ## A383855.P8955875765021634828

`A279060(A154692(2*(n+2))-A030190(n))`
-/

namespace A383855.P8955875765021634828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A154692 (2 * (n + 2)) - A030190 n).toNat

end

end A383855.P8955875765021634828

/-! ## A383855.P9926004686493102495

`gcd(A069777(n+4), A143949(A272437(3*n+2)))`
-/

namespace A383855.P9926004686493102495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069777 (n + 4)) (A143949 (A272437 (3 * n + 2)).toNat)

end

end A383855.P9926004686493102495

/-! ## A383855.P17110893321239308837

`A382422(A205536(n))`
-/

namespace A383855.P17110893321239308837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382422 (A205536 n).toNat

end

end A383855.P17110893321239308837

/-!
# A383857: Number of permutations of [n] such that precisely one rising or falling succession occurs, but without either n(n-1) or (n-1)n.

The programs for A383857, there is no canonical definition to state claims against.
-/

/-! ## A383857.P18404914923384838771

`A002464(n+2)-n*A002464(n+1)`
-/

namespace A383857.P18404914923384838771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002464 (n + 2) - (n : ℤ) * A002464 (n + 1)

end

end A383857.P18404914923384838771

/-! ## A383857.P6130878884217615351

`A086852(n+1)-A384186(n+1)`
-/

namespace A383857.P6130878884217615351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086852 (n + 1) - A384186 (n + 1)

end

end A383857.P6130878884217615351

/-!
# A383863: The number of divisors d of n having the property that for every prime p dividing n the p-adic valuation of d is either 0 or a unitary divisor of the p-adic valuation of n.

The programs for A383863, the canonical program `A383863.P10403754587481525438` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383863 has offset 1).

The definition of A383863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383863.P10403754587481525438

`∏{e}[n+1, A034444(#)+1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A383863

/-- `∏{e}[n+1, A034444(#)+1]` -/
def P10403754587481525438.Spec : Prop :=
  ∀ n, P10403754587481525438.a n = A383863 (n + 1)

theorem P10403754587481525438.correct : P10403754587481525438.Spec := by
  intro n
  simp only [A383863, Nat.add_sub_cancel]

end A383863

/-! ## A383863.P13698525075724510030

`A049599(A338782(n+1))`
-/

namespace A383863.P13698525075724510030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (A338782 (n + 1)).toNat

end

end A383863.P13698525075724510030

namespace A383863

/-- `A049599(A338782(n+1))` -/
def P13698525075724510030.Spec : Prop :=
  ∀ n, P13698525075724510030.a n = A383863 (n + 1)

end A383863

/-!
# A383865: 

The programs for A383865, there is no canonical definition to state claims against.
-/

/-! ## A383865.P4497382084449238987

`∏{e}[n+1, A183322(A000005(#))]`
-/

namespace A383865.P4497382084449238987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A183322 (A000005 (Nat.factorization (f1 n) p)).toNat

end

end A383865.P4497382084449238987

/-!
# A383867: The sum of divisors d of n having the property that for every prime p dividing n the p-adic valuation of d is either 0 or a squarefree divisor of the p-adic valuation of n.

The programs for A383867, there is no canonical definition to state claims against.
-/

/-! ## A383867.P2397284504868588512

`A051378(A338782(n+1))`
-/

namespace A383867.P2397284504868588512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051378 (A338782 (n + 1)).toNat

end

end A383867.P2397284504868588512

/-!
# A383868: a(n) = 2^(n-3)*(3*binomial(n,4) + 4*binomial(n,2) + 8).

The programs for A383868, the canonical program `A383868.P9420525451582998741` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383868 has offset 0).

The definition of A383868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383868.P9420525451582998741

`2^(n-3)*(3*C(n, 4)+4*C(n, 2)+8)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A383868

/-- `2^(n-3)*(3*C(n, 4)+4*C(n, 2)+8)` -/
def P9420525451582998741.Spec : Prop :=
  ∀ n, P9420525451582998741.a n = (A383868 n : ℚ)

end A383868

/-! ## A383868.P4770776426726213312

`A384243(n)+A081908(n)`
-/

namespace A383868.P4770776426726213312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384243 n + A081908 n

end

end A383868.P4770776426726213312

namespace A383868

/-- `A384243(n)+A081908(n)` -/
def P4770776426726213312.Spec : Prop :=
  ∀ n, P4770776426726213312.a n = A383868 n

end A383868

/-! ## A383868.P16624189946719381470

`A103221(2*A344614(2*n+1))`
-/

namespace A383868.P16624189946719381470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * A344614 (2 * n + 1)).toNat

end

end A383868.P16624189946719381470

namespace A383868

/-- `A103221(2*A344614(2*n+1))` -/
def P16624189946719381470.Spec : Prop :=
  ∀ n, P16624189946719381470.a n = A383868 n

end A383868

/-!
# A383869: a(n) = [x^n] 1/Product_{k=0..n} (1 - (n+k)*x).

The programs for A383869, there is no canonical definition to state claims against.
-/

/-! ## A383869.P12286981705077189263

`A143395(∑[4*n])`
-/

namespace A383869.P12286981705077189263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143395 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383869.P12286981705077189263

/-! ## A383869.P2859385802112952842

`record[A143395(A225232(n+3))]`
-/

namespace A383869.P2859385802112952842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143395 (A225232 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383869.P2859385802112952842

/-! ## A383869.P8872818478799347692

`A354794(2*(n+1)²)`
-/

namespace A383869.P8872818478799347692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 (2 * (n + 1) ^ 2)

end

end A383869.P8872818478799347692

/-!
# A383870: Number of compositions of n such that none of the smallest parts are adjacent.

The programs for A383870, there is no canonical definition to state claims against.
-/

/-! ## A383870.P2628264127676988198

`A206912(A227309(n))`
-/

namespace A383870.P2628264127676988198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206912 (A227309 n).toNat

end

end A383870.P2628264127676988198

/-! ## A383870.P11025014807729820791

`A000196(A131428(n)-A083392(n))`
-/

namespace A383870.P11025014807729820791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A131428 n - A083392 n).toNat

end

end A383870.P11025014807729820791

/-! ## A383870.P17186470573230590249

`or(A003056(A000108(n)), A087897(n))`
-/

namespace A383870.P17186470573230590249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A000108 n).toNat) (A087897 n)

end

end A383870.P17186470573230590249

/-! ## A383870.P14574182069658365106

`A003056(A048050(n+1)+A000108(n))`
-/

namespace A383870.P14574182069658365106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A048050 (n + 1) + A000108 n).toNat

end

end A383870.P14574182069658365106

/-!
# A383871: Number of labeled 3-nilpotent semigroups of order n.

The programs for A383871, there is no canonical definition to state claims against.
-/

/-! ## A383871.P3128340905930437959

`A209987(A091669(n+1))*A290077(n)`
-/

namespace A383871.P3128340905930437959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209987 (A091669 (n + 1)).toNat * A290077 n

end

end A383871.P3128340905930437959

/-!
# A383872: Nonprime numbers whose sum of proper divisors is a power of 4.

The programs for A383872, there is no canonical definition to state claims against.
-/

/-! ## A383872.P9624853056797241521

`∩[A048699(n+1), A279731(n+1)]`
-/

namespace A383872.P9624853056797241521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383872.P9624853056797241521

/-!
# A383873: a(n) = 3*a(n-1) - 2*a(n-2) + 5*a(n-3) starting with 1, 2, 3.

The programs for A383873, the canonical program `A383873.P1849854743493215426` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383873 has offset 0).

The definition of A383873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)+5*a(n-3)` (program `A383873.P1849854743493215426`, by `A383873.P1849854743493215426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383873.P1849854743493215426

`3*a(n-1)-2*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A383873

/-- `3*a(n-1)-2*a(n-2)+5*a(n-3)` -/
def P1849854743493215426.Spec : Prop :=
  ∀ n, P1849854743493215426.a n = A383873 n

theorem P1849854743493215426.correct : P1849854743493215426.Spec := by
  intro n
  simp only [A383873]

end A383873

/-! ## A383873.P13503406755220392797

`ogf((-1+x+x^2)/(-1+3x-2x^2+5x^3))`
-/

namespace A383873.P13503406755220392797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, 2, -5] n

end

end A383873.P13503406755220392797

namespace A383873

/-- `ogf((-1+x+x^2)/(-1+3x-2x^2+5x^3))` -/
def P13503406755220392797.Spec : Prop :=
  ∀ n, P13503406755220392797.a n = A383873 n

end A383873

/-!
# A383876: a(0) = 0, a(1) = 1. Let n be greatest index such that a(0),...a(n) are already known. If a(n) is not a record term, a(n+1) = number of k < n such that a(k) = a(n). If a(n) is a record term a(n+1) = a(r) where r is the greatest record < a(n).

The programs for A383876, there is no canonical definition to state claims against.
-/

/-! ## A383876.P12352520384235950675

`A107015(A081990(n+1))`
-/

namespace A383876.P12352520384235950675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (A081990 (n + 1)).toNat

end

end A383876.P12352520384235950675

/-! ## A383876.P3444745588745226857

`A347705(n+1)-A101605(A097585(n+4))`
-/

namespace A383876.P3444745588745226857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347705 (n + 1) - A101605 (A097585 (n + 4)).toNat

end

end A383876.P3444745588745226857

/-! ## A383876.P2008527822537433115

`A079227(A059234(n+1))%A000005(n+1)`
-/

namespace A383876.P2008527822537433115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079227 (A059234 (n + 1)).toNat) (A000005 (n + 1))

end

end A383876.P2008527822537433115

/-! ## A383876.P17798418166969139951

`A241827(A245708(n+2))%A000005(n+1)`
-/

namespace A383876.P17798418166969139951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241827 (A245708 (n + 2)).toNat) (A000005 (n + 1))

end

end A383876.P17798418166969139951

/-! ## A383876.P1762604733992981937

`A120795(n+8)%A000120(A074854(n+1))`
-/

namespace A383876.P1762604733992981937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120795 (n + 8)) (A000120 (A074854 (n + 1)).toNat)

end

end A383876.P1762604733992981937

/-!
# A383880: a(n) = [x^n] 1/Product_{k=0..n-1} (1 - k*x)^2.

The programs for A383880, there is no canonical definition to state claims against.
-/

/-! ## A383880.P224615175949175134

`A383843(2*n²)`
-/

namespace A383880.P224615175949175134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383843 (2 * n ^ 2)

end

end A383880.P224615175949175134

/-! ## A383880.P15177281197239506602

`A383843(A001105(n))^A257990(n+1)`
-/

namespace A383880.P15177281197239506602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383843 (A001105 n).toNat : ℚ) ^ (A257990 (n + 1) : ℤ)

end

end A383880.P15177281197239506602

/-!
# A383881: a(n) = [x^n] Product_{k=1..3*n} 1/(1 - k*x).

The programs for A383881, there is no canonical definition to state claims against.
-/

/-! ## A383881.P2680314604449164749

`A048993(A139277(n))`
-/

namespace A383881.P2680314604449164749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A139277 n).toNat

end

end A383881.P2680314604449164749

/-! ## A383881.P14808228170029435252

`A048993(A033586(n)+n)`
-/

namespace A383881.P14808228170029435252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A033586 n + (n : ℤ)).toNat

end

end A383881.P14808228170029435252

/-! ## A383881.P5626155305816360261

`A106800(A033585(n)+n)`
-/

namespace A383881.P5626155305816360261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A033585 n + (n : ℤ)).toNat

end

end A383881.P5626155305816360261

/-! ## A383881.P515226075060694535

`A048993(A033587(n)-n)`
-/

namespace A383881.P515226075060694535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A033587 n - (n : ℤ)).toNat

end

end A383881.P515226075060694535

/-! ## A383881.P5951134010048846648

`A048993(n*A004770(n+1))`
-/

namespace A383881.P5951134010048846648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 ((n : ℤ) * A004770 (n + 1)).toNat

end

end A383881.P5951134010048846648

/-!
# A383883: a(n) = [x^n] 1/((1 - n*x) * Product_{k=0..n-1} (1 - k*x)^2).

The programs for A383883, there is no canonical definition to state claims against.
-/

/-! ## A383883.P2116614644724339302

`A287532(A303677(n+1))`
-/

namespace A383883.P2116614644724339302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287532 (A303677 (n + 1)).toNat

end

end A383883.P2116614644724339302

/-! ## A383883.P11776367766693623182

`A287532((n+1)*A392712(n+1)+1)`
-/

namespace A383883.P11776367766693623182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287532 ((n + 1 : ℤ) * A392712 (n + 1) + 1).toNat

end

end A383883.P11776367766693623182

/-!
# A383884: a(n) = Sum_{k=0..n} 2^k * binomial(2*n+1,k) * binomial(2*n-k,n-k).

The programs for A383884, there is no canonical definition to state claims against.
-/

/-! ## A383884.P9944827041243906693

`A193856(∑[4*n])`
-/

namespace A383884.P9944827041243906693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383884.P9944827041243906693

/-! ## A383884.P17099546828861099527

`A193857(∑[4*n])`
-/

namespace A383884.P17099546828861099527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383884.P17099546828861099527

/-!
# A383885: Number of nonisomorphic 3-nilpotent semigroups of order n.

The programs for A383885, there is no canonical definition to state claims against.
-/

/-! ## A383885.P12652125059301550878

`∑[A235043(n^(n+1))]`
-/

namespace A383885.P12652125059301550878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235043 (n ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383885.P12652125059301550878

/-!
# A383886: Number of 3-nilpotent semigroups, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A383886, there is no canonical definition to state claims against.
-/

/-! ## A383886.P3455066868114451602

`A002264(A000045(n)*A353743(n))`
-/

namespace A383886.P3455066868114451602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000045 n * A353743 n).toNat

end

end A383886.P3455066868114451602

/-!
# A383888: a(n) = Sum_{k=0..n} 3^k * binomial(n+k-1,k).

The programs for A383888, there is no canonical definition to state claims against.
-/

/-! ## A383888.P18428700795594575370

`A193842(2*n²)`
-/

namespace A383888.P18428700795594575370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (2 * n ^ 2)

end

end A383888.P18428700795594575370

/-! ## A383888.P14929575635393601754

`A119673(∑[4*n])`
-/

namespace A383888.P14929575635393601754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383888.P14929575635393601754

/-! ## A383888.P6437128256746098517

`record[A193842(∑[A014682(n)])]`
-/

namespace A383888.P6437128256746098517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383888.P6437128256746098517

/-! ## A383888.P16547890297193154851

`record[gcd(A114327(n), A119673(n))]`
-/

namespace A383888.P16547890297193154851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A119673 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383888.P16547890297193154851

/-! ## A383888.P18096290886002880953

`A193843(A056220(n)%A110520(n))`
-/

namespace A383888.P18096290886002880953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 (Int.tmod (A056220 n) (A110520 n)).toNat

end

end A383888.P18096290886002880953

/-!
# A383889: Record high points in A083533.

The programs for A383889, there is no canonical definition to state claims against.
-/

/-! ## A383889.P7632939385325376823

`∑[A373833(A238938(n+1))]`
-/

namespace A383889.P7632939385325376823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373833 (A238938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383889.P7632939385325376823

/-! ## A383889.P16482961350062637797

`A004277(lt[A000196(n), A078355(3*n+4)])`
-/

namespace A383889.P16482961350062637797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078355 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383889.P16482961350062637797

/-! ## A383889.P2190720374913451758

`A004277(lt[A053737(n), A078355(3*n+4)])`
-/

namespace A383889.P2190720374913451758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078355 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383889.P2190720374913451758

/-! ## A383889.P16543987589774138601

`A004277(lt[A321014(n+1), A078355(3*n+4)])`
-/

namespace A383889.P16543987589774138601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078355 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383889.P16543987589774138601

/-!
# A383890: Index of record gaps between totient numbers.

The programs for A383890, there is no canonical definition to state claims against.
-/

/-! ## A383890.P1007448326295629190

`A264810(A392633(n+1))`
-/

namespace A383890.P1007448326295629190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A392633 (n + 1)).toNat

end

end A383890.P1007448326295629190

/-! ## A383890.P9189369885246458328

`A318285(A173564(2*(n+1))-A017984(n))`
-/

namespace A383890.P9189369885246458328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318285 (A173564 (2 * (n + 1)) - A017984 n).toNat

end

end A383890.P9189369885246458328

/-!
# A383891: a(n) is the length of chunks of the prime number sequence such that each chunk's sum of reciprocals is no less than 1/n, chunks being consecutive and of minimal length, for n>=2.

The programs for A383891, there is no canonical definition to state claims against.
-/

/-! ## A383891.P8334496381969320290

`A088141(A001372(n))`
-/

namespace A383891.P8334496381969320290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A001372 n).toNat

end

end A383891.P8334496381969320290

/-! ## A383891.P12784083521339498748

`A088141(A293733(n))`
-/

namespace A383891.P12784083521339498748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A293733 n).toNat

end

end A383891.P12784083521339498748

/-! ## A383891.P8762339211221809109

`A000194(Δ[A261236(n)])`
-/

namespace A383891.P8762339211221809109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (f1 (n + 1) - f1 n).toNat

end

end A383891.P8762339211221809109

/-! ## A383891.P7950691752525937716

`A100617(A091561(n+1))`
-/

namespace A383891.P7950691752525937716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A091561 (n + 1)).toNat

end

end A383891.P7950691752525937716

/-! ## A383891.P3555377980213272468

`A232746(A001006(n+1))`
-/

namespace A383891.P3555377980213272468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A001006 (n + 1)).toNat

end

end A383891.P3555377980213272468

/-!
# A383892: Expansion of 1/( ((1-x)*(1-2*x)*(1-3*x)*(1-4*x))^2 * (1-5*x) ).

The programs for A383892, there is no canonical definition to state claims against.
-/

/-! ## A383892.P15021732235617159939

`A287532(A026287(n+1))`
-/

namespace A383892.P15021732235617159939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287532 (A026287 (n + 1)).toNat

end

end A383892.P15021732235617159939

/-!
# A383895: Number of spiny partitions with exactly n parts.

The programs for A383895, there is no canonical definition to state claims against.
-/

/-! ## A383895.P6317337053578186776

`A245473(A003449(n+4))`
-/

namespace A383895.P6317337053578186776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A003449 (n + 4)).toNat

end

end A383895.P6317337053578186776

/-! ## A383895.P14477458736345569007

`A003018(n+1)-A014376(A322770(n))`
-/

namespace A383895.P14477458736345569007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003018 (n + 1) - A014376 (A322770 n).toNat

end

end A383895.P14477458736345569007

/-! ## A383895.P307966753817282055

`A003018(n+1)-A363953(A390800(n+4))`
-/

namespace A383895.P307966753817282055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003018 (n + 1) - A363953 (A390800 (n + 4)).toNat

end

end A383895.P307966753817282055

/-!
# A383897: Expansion of e.g.f. log(1 + x)/(1 - 2*x).

The programs for A383897, the canonical program `A383897.P9819798051837960920` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383897 has offset 0).

The definition of A383897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383897.P9819798051837960920

`2*n*a(n-1)-(-1)^n*(n-1)!` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A383897

/-- `2*n*a(n-1)-(-1)^n*(n-1)!` -/
def P9819798051837960920.Spec : Prop :=
  ∀ n, P9819798051837960920.a n = A383897 n

theorem P9819798051837960920.correct : P9819798051837960920.Spec := by
  intro n
  simp only [A383897]

end A383897

/-! ## A383897.P5016747841295393340

`(n+1)*a(n-1)+2*(n-1)²*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A383897.P5016747841295393340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1 : ℤ) * a (n - 1) + 2 * ((n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A383897.P5016747841295393340

namespace A383897

/-- `(n+1)*a(n-1)+2*(n-1)²*a(n-2)` -/
def P5016747841295393340.Spec : Prop :=
  ∀ n, P5016747841295393340.a n = A383897 n

end A383897

