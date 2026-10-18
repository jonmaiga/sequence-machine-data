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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A205700: Prime(A205698(n)), the n-th number s(k) such that 7 divides s(k)-s(j) for some j

The programs for A205700, there is no canonical definition to state claims against.
-/

/-! ## A205700.P977866076491728574

`A000040(A205698(n+1))`
-/

namespace A205700.P977866076491728574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205698 (n + 1)).toNat

end

end A205700.P977866076491728574

/-! ## A205700.P4354513090951631161

`A008578(A205698(n+1)+1)`
-/

namespace A205700.P4354513090951631161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205698 (n + 1) + 1).toNat

end

end A205700.P4354513090951631161

/-! ## A205700.P12493603127154824120

`A116974(A205698(n+1)+1)`
-/

namespace A205700.P12493603127154824120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (A205698 (n + 1) + 1).toNat

end

end A205700.P12493603127154824120

/-! ## A205700.P14493058649001371360

`A065091(A205698(n+1)-1)`
-/

namespace A205700.P14493058649001371360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A205698 (n + 1) - 1).toNat

end

end A205700.P14493058649001371360

/-! ## A205700.P14430605698828714804

`or(A000035(n), A006005(A205698(n+1)))`
-/

namespace A205700.P14430605698828714804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A006005 (A205698 (n + 1)).toNat)

end

end A205700.P14430605698828714804

/-! ## A205700.P3351417970067367054

`A205702(n+1)+A000040(A205699(n+1))`
-/

namespace A205700.P3351417970067367054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205702 (n + 1) + A000040 (A205699 (n + 1)).toNat

end

end A205700.P3351417970067367054

/-! ## A205700.P18417335613487426432

`A154269(2*n+5)+A006005(A205698(n+1))`
-/

namespace A205700.P18417335613487426432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (2 * n + 5) + A006005 (A205698 (n + 1)).toNat

end

end A205700.P18417335613487426432

/-! ## A205700.P124253133042028060

`∑{p}[A001248(A205698(n+1)), A014963(#)]`
-/

namespace A205700.P124253133042028060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A205698 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A205700.P124253133042028060

/-! ## A205700.P18403358821194272644

`A006093(A205698(n+1))+A001511(A067793(n+1))`
-/

namespace A205700.P18403358821194272644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A205698 (n + 1)).toNat + A001511 (A067793 (n + 1)).toNat

end

end A205700.P18403358821194272644

/-! ## A205700.P9254298170272218824

`A389809(A205697(n+1))`
-/

namespace A205700.P9254298170272218824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (A205697 (n + 1)).toNat

end

end A205700.P9254298170272218824

/-! ## A205700.P15211487647077479363

`A005145(A205698(n+1)+A205697(n+1))`
-/

namespace A205700.P15211487647077479363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A205698 (n + 1) + A205697 (n + 1)).toNat

end

end A205700.P15211487647077479363

/-! ## A205700.P10283663894402794203

`A006093(A205698(n+1))+A001511(A045807(n+1))`
-/

namespace A205700.P10283663894402794203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A205698 (n + 1)).toNat + A001511 (A045807 (n + 1)).toNat

end

end A205700.P10283663894402794203

/-!
# A205701: Prime(A205700(n)), the n-th number s(j) such that 7 divides s(k)-s(j), where the pairs (k,j) are given by A205698 and A205699.

The programs for A205701, there is no canonical definition to state claims against.
-/

/-! ## A205701.P15764488675420096170

`A000040(A205699(n+1))`
-/

namespace A205701.P15764488675420096170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205699 (n + 1)).toNat

end

end A205701.P15764488675420096170

/-! ## A205701.P14699473701398349194

`A037126(A205697(n+1))`
-/

namespace A205701.P14699473701398349194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A205697 (n + 1)).toNat

end

end A205701.P14699473701398349194

/-! ## A205701.P1681443493318809703

`A008578(A205699(n+1)+1)`
-/

namespace A205701.P1681443493318809703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205699 (n + 1) + 1).toNat

end

end A205701.P1681443493318809703

/-! ## A205701.P16280442467899367701

`A015919(A205699(n+1)+1)`
-/

namespace A205701.P16280442467899367701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A205699 (n + 1) + 1).toNat

end

end A205701.P16280442467899367701

/-! ## A205701.P3748946659785042768

`A182986(A205699(n+1)+1)`
-/

namespace A205701.P3748946659785042768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A205699 (n + 1) + 1).toNat

end

end A205701.P3748946659785042768

/-! ## A205701.P3425689035725847584

`A073846(2*A205699(n+1))`
-/

namespace A205701.P3425689035725847584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A205699 (n + 1)).toNat

end

end A205701.P3425689035725847584

/-! ## A205701.P12225337368880178997

`A205700(n+1)-A205702(n+1)`
-/

namespace A205701.P12225337368880178997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205700 (n + 1) - A205702 (n + 1)

end

end A205701.P12225337368880178997

/-! ## A205701.P16910736523532218170

`A000040(A205698(n+1))-A205702(n+1)`
-/

namespace A205701.P16910736523532218170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205698 (n + 1)).toNat - A205702 (n + 1)

end

end A205701.P16910736523532218170

/-!
# A205702: prime(k)-prime(j), where the pairs (k,j) are given by A205698 and A205699.

The programs for A205702, there is no canonical definition to state claims against.
-/

/-! ## A205702.P6210789879542284349

`7*A205703(n+1)`
-/

namespace A205702.P6210789879542284349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A205703 (n + 1)

end

end A205702.P6210789879542284349

/-! ## A205702.P1053558366542702260

`A008589(A205703(n+1))`
-/

namespace A205702.P1053558366542702260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A205703 (n + 1)).toNat

end

end A205702.P1053558366542702260

/-! ## A205702.P6007027832315530382

`A205700(n+1)-A000040(A205699(n+1))`
-/

namespace A205702.P6007027832315530382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205700 (n + 1) - A000040 (A205699 (n + 1)).toNat

end

end A205702.P6007027832315530382

/-! ## A205702.P8222128816586769276

`A204890(A205697(n+1))`
-/

namespace A205702.P8222128816586769276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A205697 (n + 1)).toNat

end

end A205702.P8222128816586769276

/-! ## A205702.P15585533263526181446

`A205700(n+1)-A037126(A205697(n+1))`
-/

namespace A205702.P15585533263526181446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205700 (n + 1) - A037126 (A205697 (n + 1)).toNat

end

end A205702.P15585533263526181446

/-! ## A205702.P12762836229885363278

`A205700(n+1)-A205701(n+1)`
-/

namespace A205702.P12762836229885363278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205700 (n + 1) - A205701 (n + 1)

end

end A205702.P12762836229885363278

/-! ## A205702.P2344494533841163875

`A000040(A205698(n+1))-A205701(n+1)`
-/

namespace A205702.P2344494533841163875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205698 (n + 1)).toNat - A205701 (n + 1)

end

end A205702.P2344494533841163875

/-!
# A205703: (prime(k)-prime(j))/7, where the pairs (k,j) are given by A205698 and A205699.

The programs for A205703, there is no canonical definition to state claims against.
-/

/-! ## A205703.P5063452184798223664

`A205702(n+1)/7`
-/

namespace A205703.P5063452184798223664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205702 (n + 1) : ℚ) / 7

end

end A205703.P5063452184798223664

/-! ## A205703.P1178386713850130885

`A194515(A205702(n+1))`
-/

namespace A205703.P1178386713850130885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194515 (A205702 (n + 1)).toNat

end

end A205703.P1178386713850130885

/-! ## A205703.P8301272139228414182

`A138999(A205702(n+1)-1)`
-/

namespace A205703.P8301272139228414182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A205702 (n + 1) - 1).toNat

end

end A205703.P8301272139228414182

/-! ## A205703.P10095422223854514468

`A204890(A205697(n+1))/7`
-/

namespace A205703.P10095422223854514468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204890 (A205697 (n + 1)).toNat : ℚ) / 7

end

end A205703.P10095422223854514468

/-! ## A205703.P13041923079276727113

`(A205700(n+1)-A037126(A205697(n+1)))/7`
-/

namespace A205703.P13041923079276727113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205700 (n + 1) - A037126 (A205697 (n + 1)).toNat : ℚ) / 7

end

end A205703.P13041923079276727113

/-! ## A205703.P6443848638904388077

`(A205700(n+1)-A205701(n+1))/7`
-/

namespace A205703.P6443848638904388077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205700 (n + 1) - A205701 (n + 1) : ℚ) / 7

end

end A205703.P6443848638904388077

/-!
# A205705: Numbers k for which 8 divides prime(k)-prime(j) for some j

The programs for A205705, there is no canonical definition to state claims against.
-/

/-! ## A205705.P17618975874506787130

`A000720(A205707(n+1))`
-/

namespace A205705.P17618975874506787130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205707 (n + 1)).toNat

end

end A205705.P17618975874506787130

/-! ## A205705.P4846424889582504727

`A204892(A205707(n+1)-2)`
-/

namespace A205705.P4846424889582504727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205707 (n + 1) - 2).toNat

end

end A205705.P4846424889582504727

/-! ## A205705.P6258830056347573725

`A000720(A205709(n+1)+A205708(n+1))`
-/

namespace A205705.P6258830056347573725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205709 (n + 1) + A205708 (n + 1)).toNat

end

end A205705.P6258830056347573725

/-! ## A205705.P2141378762753151083

`A003963(A205709(n+1)+A205708(n+1))`
-/

namespace A205705.P2141378762753151083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A205709 (n + 1) + A205708 (n + 1)).toNat

end

end A205705.P2141378762753151083

/-! ## A205705.P9913526588335146129

`A026238(A205709(n+1)+A205708(n+1))`
-/

namespace A205705.P9913526588335146129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A205709 (n + 1) + A205708 (n + 1)).toNat

end

end A205705.P9913526588335146129

/-! ## A205705.P5860000115621972040

`A049084(A205709(n+1)+A205708(n+1))`
-/

namespace A205705.P5860000115621972040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205709 (n + 1) + A205708 (n + 1)).toNat

end

end A205705.P5860000115621972040

/-! ## A205705.P14747870857532318854

`A055396(A205709(n+1)+A205708(n+1))`
-/

namespace A205705.P14747870857532318854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205709 (n + 1) + A205708 (n + 1)).toNat

end

end A205705.P14747870857532318854

/-! ## A205705.P233423087923632169

`A056239(A205709(n+1)+A205708(n+1))`
-/

namespace A205705.P233423087923632169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A205709 (n + 1) + A205708 (n + 1)).toNat

end

end A205705.P233423087923632169

/-! ## A205705.P15245880327255677989

`A204892(A205708(n+1)+A205709(n+1)-2)`
-/

namespace A205705.P15245880327255677989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205708 (n + 1) + (A205709 (n + 1) - 2)).toNat

end

end A205705.P15245880327255677989

/-! ## A205705.P4859287987189409740

`A003057(A205704(n+1))`
-/

namespace A205705.P4859287987189409740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205704 (n + 1)).toNat

end

end A205705.P4859287987189409740

/-!
# A205706: The number j such that 8 divides prime(k)-prime(j), where k(n)=A205705(n).

The programs for A205706, there is no canonical definition to state claims against.
-/

/-! ## A205706.P10312505623880426284

`A000720(A205708(n+1))`
-/

namespace A205706.P10312505623880426284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205708 (n + 1)).toNat

end

end A205706.P10312505623880426284

/-! ## A205706.P16343059083065134471

`A003963(p?[A205708(n+1)])`
-/

namespace A205706.P16343059083065134471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A205706.P16343059083065134471

/-! ## A205706.P17282529206586584860

`A026238(p?[A205708(n+1)])`
-/

namespace A205706.P17282529206586584860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A205706.P17282529206586584860

/-! ## A205706.P5777332485393445592

`A204892(A205708(n+1)-2)`
-/

namespace A205706.P5777332485393445592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205708 (n + 1) - 2).toNat

end

end A205706.P5777332485393445592

/-! ## A205706.P6501469150291365538

`A003963(2*A205708(n+1))`
-/

namespace A205706.P6501469150291365538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A205708 (n + 1)).toNat

end

end A205706.P6501469150291365538

/-! ## A205706.P12651101283048374780

`A061395(2*A205708(n+1))`
-/

namespace A205706.P12651101283048374780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A205708 (n + 1)).toNat

end

end A205706.P12651101283048374780

/-! ## A205706.P17142281872182018760

`A263323(2*A205708(n+1))`
-/

namespace A205706.P17142281872182018760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (2 * A205708 (n + 1)).toNat

end

end A205706.P17142281872182018760

/-! ## A205706.P4274221404484345601

`A290103(2*A205708(n+1))`
-/

namespace A205706.P4274221404484345601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A205708 (n + 1)).toNat

end

end A205706.P4274221404484345601

/-! ## A205706.P2507321357745904078

`A323902(3*A205708(n+1))`
-/

namespace A205706.P2507321357745904078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (3 * A205708 (n + 1)).toNat

end

end A205706.P2507321357745904078

/-! ## A205706.P8742536726314282168

`A003963(lcm(2, A205708(n+1)))`
-/

namespace A205706.P8742536726314282168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A205708 (n + 1)))

end

end A205706.P8742536726314282168

/-! ## A205706.P17632601399301218766

`A003963(or(1, A205708(n+1)))`
-/

namespace A205706.P17632601399301218766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A205708 (n + 1))).toNat

end

end A205706.P17632601399301218766

/-! ## A205706.P2617187183290850330

`∑{d}[A205708(n+1), A061395(#)]`
-/

namespace A205706.P2617187183290850330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A205706.P2617187183290850330

/-! ## A205706.P3311514480484706345

`val(A122111(p?[A205708(n+1)]), 2)`
-/

namespace A205706.P3311514480484706345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A122111 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat 2

end

end A205706.P3311514480484706345

/-! ## A205706.P17416277111275058666

`A056239(2*A205708(n+1))-1`
-/

namespace A205706.P17416277111275058666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A205708 (n + 1)).toNat - 1

end

end A205706.P17416277111275058666

/-! ## A205706.P11128280445137778144

`A026238(A205708(n+1)%(53*(n+1)-n))`
-/

namespace A205706.P11128280445137778144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (Int.tmod (A205708 (n + 1)) ((53 * (n + 1) : ℤ) - (n : ℤ))).toNat

end

end A205706.P11128280445137778144

/-! ## A205706.P8859325918995392620

`A290103(A205708(n+1))%A060939(n+1)`
-/

namespace A205706.P8859325918995392620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (A205708 (n + 1)).toNat) (A060939 (n + 1))

end

end A205706.P8859325918995392620

/-! ## A205706.P2405566753678140311

`A290103(A205708(n+1)%A135930(n+1))`
-/

namespace A205706.P2405566753678140311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (Int.tmod (A205708 (n + 1)) (A135930 (n + 1))).toNat

end

end A205706.P2405566753678140311

/-! ## A205706.P13354314542293426373

`A205708(n+1)-A026238(A205708(n+1)+1)`
-/

namespace A205706.P13354314542293426373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205708 (n + 1) - A026238 (A205708 (n + 1) + 1).toNat

end

end A205706.P13354314542293426373

/-! ## A205706.P318785348254494799

`A049084(2*A205708(n+1)-A205708(n+1))`
-/

namespace A205706.P318785348254494799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A205708 (n + 1) - A205708 (n + 1)).toNat

end

end A205706.P318785348254494799

/-! ## A205706.P3064736967233211673

`A055396(2*A205708(n+1)-A205708(n+1))`
-/

namespace A205706.P3064736967233211673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A205708 (n + 1) - A205708 (n + 1)).toNat

end

end A205706.P3064736967233211673

/-!
# A205707: Prime(A205705(n)), the n-th number s(k) such that 8 divides s(k)-s(j) for some j

The programs for A205707, there is no canonical definition to state claims against.
-/

/-! ## A205707.P17836531102362893088

`A000040(A205705(n+1))`
-/

namespace A205707.P17836531102362893088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205705 (n + 1)).toNat

end

end A205707.P17836531102362893088

/-! ## A205707.P13256490739619494905

`A008578(A205705(n+1)+1)`
-/

namespace A205707.P13256490739619494905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205705 (n + 1) + 1).toNat

end

end A205707.P13256490739619494905

/-! ## A205707.P13027929141658052083

`A065091(A205705(n+1)-1)`
-/

namespace A205707.P13027929141658052083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A205705 (n + 1) - 1).toNat

end

end A205707.P13027929141658052083

/-! ## A205707.P6037629604540917675

`∑{d}[A205705(n+1), A007444(#)]`
-/

namespace A205707.P6037629604540917675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A205707.P6037629604540917675

/-! ## A205707.P10163347739493493932

`A205709(n+1)+A205708(n+1)`
-/

namespace A205707.P10163347739493493932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205709 (n + 1) + A205708 (n + 1)

end

end A205707.P10163347739493493932

/-! ## A205707.P15785268687729116712

`A205709(n+1)+A000040(A205706(n+1))`
-/

namespace A205707.P15785268687729116712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205709 (n + 1) + A000040 (A205706 (n + 1)).toNat

end

end A205707.P15785268687729116712

/-! ## A205707.P11010548135122749668

`A389809(A205704(n+1))`
-/

namespace A205707.P11010548135122749668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (A205704 (n + 1)).toNat

end

end A205707.P11010548135122749668

/-! ## A205707.P17764679838500711760

`A205708(n+1)+A204890(A205704(n+1))`
-/

namespace A205707.P17764679838500711760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205708 (n + 1) + A204890 (A205704 (n + 1)).toNat

end

end A205707.P17764679838500711760

/-!
# A205708: Prime(A205706(n)), the n-th number s(j) such that 8 divides s(k)-s(j), where the pairs (k,j) are given by A205705 and A205706.

The programs for A205708, there is no canonical definition to state claims against.
-/

/-! ## A205708.P13766148430596750365

`A000040(A205706(n+1))`
-/

namespace A205708.P13766148430596750365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205706 (n + 1)).toNat

end

end A205708.P13766148430596750365

/-! ## A205708.P9136297150589979059

`A008578(A205706(n+1)+1)`
-/

namespace A205708.P9136297150589979059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205706 (n + 1) + 1).toNat

end

end A205708.P9136297150589979059

/-! ## A205708.P13649517645124442912

`A158611(A205706(n+1)+2)`
-/

namespace A205708.P13649517645124442912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A205706 (n + 1) + 2).toNat

end

end A205708.P13649517645124442912

/-! ## A205708.P1670441328705416948

`A205707(n+1)-A205709(n+1)`
-/

namespace A205708.P1670441328705416948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205707 (n + 1) - A205709 (n + 1)

end

end A205708.P1670441328705416948

/-! ## A205708.P6568094305685670357

`A000040(A205705(n+1))-A205709(n+1)`
-/

namespace A205708.P6568094305685670357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205705 (n + 1)).toNat - A205709 (n + 1)

end

end A205708.P6568094305685670357

/-! ## A205708.P6019143610336554009

`A205707(n+1)-A022144(A205710(n+1))`
-/

namespace A205708.P6019143610336554009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205707 (n + 1) - A022144 (A205710 (n + 1)).toNat

end

end A205708.P6019143610336554009

/-! ## A205708.P12533483571404876693

`A037126(A205704(n+1))`
-/

namespace A205708.P12533483571404876693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A205704 (n + 1)).toNat

end

end A205708.P12533483571404876693

/-! ## A205708.P777768627776731977

`A205707(n+1)-A204890(A205704(n+1))`
-/

namespace A205708.P777768627776731977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205707 (n + 1) - A204890 (A205704 (n + 1)).toNat

end

end A205708.P777768627776731977

/-!
# A205709: prime(k)-prime(j), where the pairs (k,j) are given by A205705 and A205706.

The programs for A205709, there is no canonical definition to state claims against.
-/

/-! ## A205709.P9468174549704003714

`8*A205710(n+1)`
-/

namespace A205709.P9468174549704003714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A205710 (n + 1)

end

end A205709.P9468174549704003714

/-! ## A205709.P8880849609684003211

`A008590(A205710(n+1))`
-/

namespace A205709.P8880849609684003211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A205710 (n + 1)).toNat

end

end A205709.P8880849609684003211

/-! ## A205709.P11696876364680575444

`A205707(n+1)-A205708(n+1)`
-/

namespace A205709.P11696876364680575444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205707 (n + 1) - A205708 (n + 1)

end

end A205709.P11696876364680575444

/-! ## A205709.P10847321488818219250

`A022144(A205710(n+1)%(n+2))`
-/

namespace A205709.P10847321488818219250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (Int.tmod (A205710 (n + 1)) (n + 2 : ℤ)).toNat

end

end A205709.P10847321488818219250

/-! ## A205709.P3658007711887520180

`A022144(A205710(A000027(n+1)))`
-/

namespace A205709.P3658007711887520180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A205710 (A000027 (n + 1)).toNat).toNat

end

end A205709.P3658007711887520180

/-! ## A205709.P11425360422920838992

`A022144(A205710(A181440(n+1)))`
-/

namespace A205709.P11425360422920838992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A205710 (A181440 (n + 1)).toNat).toNat

end

end A205709.P11425360422920838992

/-! ## A205709.P16105522823185037179

`A000040(A205705(n+1))-A205708(n+1)`
-/

namespace A205709.P16105522823185037179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205705 (n + 1)).toNat - A205708 (n + 1)

end

end A205709.P16105522823185037179

/-! ## A205709.P2070566249195800084

`A205707(n+1)-A000040(A205706(n+1))`
-/

namespace A205709.P2070566249195800084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205707 (n + 1) - A000040 (A205706 (n + 1)).toNat

end

end A205709.P2070566249195800084

/-! ## A205709.P16827827667213360099

`filter[A205681(n+1), A253513(#)]`
-/

namespace A205709.P16827827667213360099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A253513 (f1 j).toNat = 1) n)

end

end A205709.P16827827667213360099

/-! ## A205709.P7300859986701538161

`A204890(A205704(n+1))`
-/

namespace A205709.P7300859986701538161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A205704 (n + 1)).toNat

end

end A205709.P7300859986701538161

/-!
# A205710: (prime(k)-prime(j))/8, where the pairs (k,j) are given by A205705 and A205706.

The programs for A205710, there is no canonical definition to state claims against.
-/

/-! ## A205710.P2519067156486353606

`A205709(n+1)/8`
-/

namespace A205710.P2519067156486353606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205709 (n + 1) : ℚ) / 8

end

end A205710.P2519067156486353606

/-! ## A205710.P5374733166270535073

`A006085(A205709(n+1))`
-/

namespace A205710.P5374733166270535073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A205709 (n + 1)).toNat

end

end A205710.P5374733166270535073

/-! ## A205710.P4324663796397110852

`A003602(A205709(n+1)-4)`
-/

namespace A205710.P4324663796397110852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A205709 (n + 1) - 4).toNat

end

end A205710.P4324663796397110852

/-! ## A205710.P12676445363588656619

`A226581(lcm(2, A205709(n+1)))`
-/

namespace A205710.P12676445363588656619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226581 (Int.lcm 2 (A205709 (n + 1)))

end

end A205710.P12676445363588656619

/-! ## A205710.P3150115705160590476

`A226581(A205709(n+1))%A000040(n+1)`
-/

namespace A205710.P3150115705160590476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226581 (A205709 (n + 1)).toNat) (A000040 (n + 1))

end

end A205710.P3150115705160590476

/-! ## A205710.P13366146950483789668

`A226581(A205709(n+1)%A226599(n+1))`
-/

namespace A205710.P13366146950483789668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226581 (Int.tmod (A205709 (n + 1)) (A226599 (n + 1))).toNat

end

end A205710.P13366146950483789668

/-! ## A205710.P11741327556423302938

`A204890(A205704(n+1))/8`
-/

namespace A205710.P11741327556423302938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204890 (A205704 (n + 1)).toNat : ℚ) / 8

end

end A205710.P11741327556423302938

/-!
# A205711: Positions of multiples of 9 in A204890 (differences of primes).

The programs for A205711, the canonical program `A205711.P11359309019057096152` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205711 has offset 1).

The definition of A205711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205711.P11359309019057096152

`eq[9, dr(A204890(n+1))]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A205711

/-- `eq[9, dr(A204890(n+1))]+1` -/
def P11359309019057096152.Spec : Prop :=
  ∀ n, (P11359309019057096152.a n : ℤ) = A205711 (n + 1)

theorem P11359309019057096152.correct : P11359309019057096152.Spec := by
  intro n
  simp only [A205711, Nat.add_sub_cancel]

end A205711

/-! ## A205711.P16863741059464020480

`eq[9, gcd(9, A204890(A028310(n)))]`
-/

namespace A205711.P16863741059464020480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A204890 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205711.P16863741059464020480

namespace A205711

/-- `eq[9, gcd(9, A204890(A028310(n)))]` -/
def P16863741059464020480.Spec : Prop :=
  ∀ n, (P16863741059464020480.a n : ℤ) = A205711 (n + 1)

end A205711

/-!
# A205712: Numbers k for which 9 divides prime(k)-prime(j) for some j

The programs for A205712, there is no canonical definition to state claims against.
-/

/-! ## A205712.P3483424027345938171

`A000720(A205714(n+1))`
-/

namespace A205712.P3483424027345938171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205714 (n + 1)).toNat

end

end A205712.P3483424027345938171

/-! ## A205712.P2758907961093590729

`A204892(A205714(n+1)-2)`
-/

namespace A205712.P2758907961093590729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205714 (n + 1) - 2).toNat

end

end A205712.P2758907961093590729

/-! ## A205712.P11570438572509166366

`A061395(2*A205714(n+1))`
-/

namespace A205712.P11570438572509166366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A205714 (n + 1)).toNat

end

end A205712.P11570438572509166366

/-! ## A205712.P17755716027191868229

`A346698(2*A205714(n+1))`
-/

namespace A205712.P17755716027191868229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * A205714 (n + 1)).toNat

end

end A205712.P17755716027191868229

/-! ## A205712.P10171690299406793624

`A346698(lcm(2, A205714(n+1)))`
-/

namespace A205712.P10171690299406793624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (Int.lcm 2 (A205714 (n + 1)))

end

end A205712.P10171690299406793624

/-! ## A205712.P15011089772959729506

`A000720(A205716(n+1)+A205715(n+1))`
-/

namespace A205712.P15011089772959729506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205716 (n + 1) + A205715 (n + 1)).toNat

end

end A205712.P15011089772959729506

/-! ## A205712.P17144334356840569936

`A003963(A205716(n+1)+A205715(n+1))`
-/

namespace A205712.P17144334356840569936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A205716 (n + 1) + A205715 (n + 1)).toNat

end

end A205712.P17144334356840569936

/-! ## A205712.P2336422607425778613

`A026233(A205716(n+1)+A205715(n+1))`
-/

namespace A205712.P2336422607425778613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A205716 (n + 1) + A205715 (n + 1)).toNat

end

end A205712.P2336422607425778613

/-! ## A205712.P3672291185132130913

`A026238(A205716(n+1)+A205715(n+1))`
-/

namespace A205712.P3672291185132130913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A205716 (n + 1) + A205715 (n + 1)).toNat

end

end A205712.P3672291185132130913

/-! ## A205712.P15543245275458682393

`A049084(A205716(n+1)+A205715(n+1))`
-/

namespace A205712.P15543245275458682393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205716 (n + 1) + A205715 (n + 1)).toNat

end

end A205712.P15543245275458682393

/-! ## A205712.P5335350833528893139

`A055396(A205716(n+1)+A205715(n+1))`
-/

namespace A205712.P5335350833528893139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205716 (n + 1) + A205715 (n + 1)).toNat

end

end A205712.P5335350833528893139

/-! ## A205712.P7126858805471054909

`A056239(A205716(n+1)+A205715(n+1))`
-/

namespace A205712.P7126858805471054909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A205716 (n + 1) + A205715 (n + 1)).toNat

end

end A205712.P7126858805471054909

/-! ## A205712.P1633015015642544724

`A058933(A205716(n+1)+A205715(n+1))`
-/

namespace A205712.P1633015015642544724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A205716 (n + 1) + A205715 (n + 1)).toNat

end

end A205712.P1633015015642544724

/-! ## A205712.P1703721737294820374

`A061395(A205716(n+1)+A205715(n+1))`
-/

namespace A205712.P1703721737294820374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A205716 (n + 1) + A205715 (n + 1)).toNat

end

end A205712.P1703721737294820374

/-! ## A205712.P942503109456504772

`A252759(A205716(n+1)+A205715(n+1))`
-/

namespace A205712.P942503109456504772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252759 (A205716 (n + 1) + A205715 (n + 1)).toNat

end

end A205712.P942503109456504772

/-! ## A205712.P6944370762029606560

`A346698(A205714(n+1)+A205714(n+1))`
-/

namespace A205712.P6944370762029606560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A205714 (n + 1) + A205714 (n + 1)).toNat

end

end A205712.P6944370762029606560

/-!
# A205713: The number j such that 9 divides prime(k)-prime(j), where k(n)=A205712(n).

The programs for A205713, there is no canonical definition to state claims against.
-/

/-! ## A205713.P18232536822226139602

`A000720(A205715(n+1))`
-/

namespace A205713.P18232536822226139602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205715 (n + 1)).toNat

end

end A205713.P18232536822226139602

/-! ## A205713.P9785036243266268863

`A003963(p?[A205715(n+1)])`
-/

namespace A205713.P9785036243266268863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A205713.P9785036243266268863

/-! ## A205713.P15174539527778916787

`A055396(p?[A205715(n+1)])`
-/

namespace A205713.P15174539527778916787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A205713.P15174539527778916787

/-! ## A205713.P11261067279644761935

`A036234(A205715(n+1)-1)`
-/

namespace A205713.P11261067279644761935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A205715 (n + 1) - 1).toNat

end

end A205713.P11261067279644761935

/-! ## A205713.P14687138908788046301

`A003963(2*A205715(n+1))`
-/

namespace A205713.P14687138908788046301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A205715 (n + 1)).toNat

end

end A205713.P14687138908788046301

/-! ## A205713.P16096572554907769173

`A061395(2*A205715(n+1))`
-/

namespace A205713.P16096572554907769173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A205715 (n + 1)).toNat

end

end A205713.P16096572554907769173

/-! ## A205713.P6949838855988683194

`A003963(lcm(2, A205715(n+1)))`
-/

namespace A205713.P6949838855988683194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A205715 (n + 1)))

end

end A205713.P6949838855988683194

/-! ## A205713.P14181181508309383925

`∑{d}[A205715(n+1), A055396(#)]`
-/

namespace A205713.P14181181508309383925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A205713.P14181181508309383925

/-! ## A205713.P11365682964459246118

`∑{d}[A205715(n+1), A056239(#)]`
-/

namespace A205713.P11365682964459246118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A205713.P11365682964459246118

/-! ## A205713.P16551846864568188399

`A055396(∏{p}[A205715(n+1), #])`
-/

namespace A205713.P16551846864568188399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A205713.P16551846864568188399

/-! ## A205713.P16535317473114619654

`A056239(2*A205715(n+1))-1`
-/

namespace A205713.P16535317473114619654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A205715 (n + 1)).toNat - 1

end

end A205713.P16535317473114619654

/-! ## A205713.P2003038097605912692

`A205715(n+1)-A026233(A205715(n+1)-1)`
-/

namespace A205713.P2003038097605912692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205715 (n + 1) - A026233 (A205715 (n + 1) - 1).toNat

end

end A205713.P2003038097605912692

/-! ## A205713.P10194939069807119544

`A026238(2*A205715(n+1)-A205715(n+1))`
-/

namespace A205713.P10194939069807119544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (2 * A205715 (n + 1) - A205715 (n + 1)).toNat

end

end A205713.P10194939069807119544

/-! ## A205713.P12429791821990331861

`A049084(2*A205715(n+1)-A205715(n+1))`
-/

namespace A205713.P12429791821990331861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A205715 (n + 1) - A205715 (n + 1)).toNat

end

end A205713.P12429791821990331861

/-! ## A205713.P2945435762850354913

`A055396(2*A205715(n+1)-A205715(n+1))`
-/

namespace A205713.P2945435762850354913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A205715 (n + 1) - A205715 (n + 1)).toNat

end

end A205713.P2945435762850354913

/-! ## A205713.P18407801161276119227

`A058933(2*A205715(n+1)-A205715(n+1))`
-/

namespace A205713.P18407801161276119227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A205715 (n + 1) - A205715 (n + 1)).toNat

end

end A205713.P18407801161276119227

/-! ## A205713.P14156886968209103057

`A252759(2*A205715(n+1)-A205715(n+1))`
-/

namespace A205713.P14156886968209103057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252759 (2 * A205715 (n + 1) - A205715 (n + 1)).toNat

end

end A205713.P14156886968209103057

/-! ## A205713.P18029232068715539290

`A049084(A205715(n+1))+A049084(A205716(n+1))`
-/

namespace A205713.P18029232068715539290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205715 (n + 1)).toNat + A049084 (A205716 (n + 1)).toNat

end

end A205713.P18029232068715539290

/-! ## A205713.P15686645298128650674

`A003963(A205715(n+1))%A000040(n+2)`
-/

namespace A205713.P15686645298128650674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A205715 (n + 1)).toNat) (A000040 (n + 2))

end

end A205713.P15686645298128650674

/-! ## A205713.P1625929304246540568

`A002260(A205711(n+1))`
-/

namespace A205713.P1625929304246540568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205711 (n + 1)).toNat

end

end A205713.P1625929304246540568

/-!
# A205714: Prime(A205712(n)), the n-th number s(k) such that 9 divides s(k)-s(j) for some j

The programs for A205714, there is no canonical definition to state claims against.
-/

/-! ## A205714.P8208967747567586823

`A000040(A205712(n+1))`
-/

namespace A205714.P8208967747567586823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205712 (n + 1)).toNat

end

end A205714.P8208967747567586823

/-! ## A205714.P14110481473575264033

`A008578(A205712(n+1)+1)`
-/

namespace A205714.P14110481473575264033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205712 (n + 1) + 1).toNat

end

end A205714.P14110481473575264033

/-! ## A205714.P10207764521197016540

`A065091(A205712(n+1)-1)`
-/

namespace A205714.P10207764521197016540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A205712 (n + 1) - 1).toNat

end

end A205714.P10207764521197016540

/-! ## A205714.P2795627771666504077

`A205716(n+1)+A205715(n+1)`
-/

namespace A205714.P2795627771666504077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205716 (n + 1) + A205715 (n + 1)

end

end A205714.P2795627771666504077

/-! ## A205714.P11063987998401209813

`A205716(n+1)+A000040(A205713(n+1))`
-/

namespace A205714.P11063987998401209813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205716 (n + 1) + A000040 (A205713 (n + 1)).toNat

end

end A205714.P11063987998401209813

/-! ## A205714.P5344490768409608563

`A389809(A205711(n+1))`
-/

namespace A205714.P5344490768409608563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (A205711 (n + 1)).toNat

end

end A205714.P5344490768409608563

/-! ## A205714.P2019456290581628198

`A205715(n+1)+A204890(A205711(n+1))`
-/

namespace A205714.P2019456290581628198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205715 (n + 1) + A204890 (A205711 (n + 1)).toNat

end

end A205714.P2019456290581628198

/-! ## A205714.P1981166244489026759

`A204890(A205711(n+1))+A000040(A205713(n+1))`
-/

namespace A205714.P1981166244489026759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A205711 (n + 1)).toNat + A000040 (A205713 (n + 1)).toNat

end

end A205714.P1981166244489026759

/-!
# A205715: Prime(A205713(n)), the n-th number s(j) such that 9 divides s(k)-s(j), where the pairs (k,j) are given by A205712 and A205713.

The programs for A205715, there is no canonical definition to state claims against.
-/

/-! ## A205715.P3067201009267043475

`A000040(A205713(n+1))`
-/

namespace A205715.P3067201009267043475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205713 (n + 1)).toNat

end

end A205715.P3067201009267043475

/-! ## A205715.P9126972280899810701

`A008578(A205713(n+1)+1)`
-/

namespace A205715.P9126972280899810701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205713 (n + 1) + 1).toNat

end

end A205715.P9126972280899810701

/-! ## A205715.P4044295447106188527

`A205714(n+1)-A205716(n+1)`
-/

namespace A205715.P4044295447106188527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205714 (n + 1) - A205716 (n + 1)

end

end A205715.P4044295447106188527

/-! ## A205715.P10529222595051533175

`A000040(A205712(n+1))-A205716(n+1)`
-/

namespace A205715.P10529222595051533175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205712 (n + 1)).toNat - A205716 (n + 1)

end

end A205715.P10529222595051533175

/-! ## A205715.P12394533192025665476

`A037126(A205711(n+1))`
-/

namespace A205715.P12394533192025665476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A205711 (n + 1)).toNat

end

end A205715.P12394533192025665476

/-! ## A205715.P18248882611436286621

`A205714(n+1)-A204890(A205711(n+1))`
-/

namespace A205715.P18248882611436286621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205714 (n + 1) - A204890 (A205711 (n + 1)).toNat

end

end A205715.P18248882611436286621

/-! ## A205715.P1514504939943455275

`A037126(2*A205713(n+1)²)`
-/

namespace A205715.P1514504939943455275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (2 * A205713 (n + 1) ^ 2).toNat

end

end A205715.P1514504939943455275

/-! ## A205715.P14784274626221830164

`A037126(2*A205713(n+1)*A205713(n+1))`
-/

namespace A205715.P14784274626221830164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (2 * A205713 (n + 1) * A205713 (n + 1)).toNat

end

end A205715.P14784274626221830164

/-! ## A205715.P6724473742847897363

`A037126(A205713(n+1)+A161680(n+6))`
-/

namespace A205715.P6724473742847897363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A205713 (n + 1) + A161680 (n + 6)).toNat

end

end A205715.P6724473742847897363

/-!
# A205716: prime(k)-prime(j), where the pairs (k,j) are given by A205712 and A205713.

The programs for A205716, there is no canonical definition to state claims against.
-/

/-! ## A205716.P16471734232115970842

`9*A205717(n+1)`
-/

namespace A205716.P16471734232115970842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A205717 (n + 1)

end

end A205716.P16471734232115970842

/-! ## A205716.P9738944672768727953

`A008591(A205717(n+1))`
-/

namespace A205716.P9738944672768727953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A205717 (n + 1)).toNat

end

end A205716.P9738944672768727953

/-! ## A205716.P15710058807494610770

`A205714(n+1)-A205715(n+1)`
-/

namespace A205716.P15710058807494610770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205714 (n + 1) - A205715 (n + 1)

end

end A205716.P15710058807494610770

/-! ## A205716.P16769672502851228217

`A000040(A205712(n+1))-A205715(n+1)`
-/

namespace A205716.P16769672502851228217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205712 (n + 1)).toNat - A205715 (n + 1)

end

end A205716.P16769672502851228217

/-! ## A205716.P8166967245698314092

`A205714(n+1)-A000040(A205713(n+1))`
-/

namespace A205716.P8166967245698314092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205714 (n + 1) - A000040 (A205713 (n + 1)).toNat

end

end A205716.P8166967245698314092

/-! ## A205716.P17460930689801006837

`filter[A205557(n+1), A267142(#)]`
-/

namespace A205716.P17460930689801006837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267142 (f1 j).toNat = 1) n)

end

end A205716.P17460930689801006837

/-! ## A205716.P7446179517372774335

`filter[A205557(n+1), A359430(#)]`
-/

namespace A205716.P7446179517372774335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A205716.P7446179517372774335

/-! ## A205716.P3191423712455705484

`filter[A205557(n+1), A373991(#)]`
-/

namespace A205716.P3191423712455705484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A205716.P3191423712455705484

/-! ## A205716.P6827708375144218719

`filter[A205557(n+1), A374039(#)]`
-/

namespace A205716.P6827708375144218719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A205716.P6827708375144218719

/-! ## A205716.P3652783082475358956

`filter[A205557(n+1), A374117(#)]`
-/

namespace A205716.P3652783082475358956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374117 (f1 j).toNat = 1) n)

end

end A205716.P3652783082475358956

/-! ## A205716.P18336891708813975581

`filter[A205557(n+1), A374121(#)]`
-/

namespace A205716.P18336891708813975581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A205716.P18336891708813975581

/-! ## A205716.P16412950489431169132

`A204890(A205711(n+1))`
-/

namespace A205716.P16412950489431169132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A205711 (n + 1)).toNat

end

end A205716.P16412950489431169132

/-!
# A205717: (prime(k)-prime(j))/9, where the pairs (k,j) are given by A205712 and A205713.

The programs for A205717, there is no canonical definition to state claims against.
-/

/-! ## A205717.P12355886212105267864

`A205716(n+1)/9`
-/

namespace A205717.P12355886212105267864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205716 (n + 1) : ℚ) / 9

end

end A205717.P12355886212105267864

/-! ## A205717.P14821815982541159122

`A343609(A205716(n+1))`
-/

namespace A205717.P14821815982541159122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A205716 (n + 1)).toNat

end

end A205717.P14821815982541159122

/-! ## A205717.P920538306339596544

`(A205714(n+1)-A205715(n+1))/9`
-/

namespace A205717.P920538306339596544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205714 (n + 1) - A205715 (n + 1) : ℚ) / 9

end

end A205717.P920538306339596544

/-! ## A205717.P9873204910312860401

`A343609(A205714(n+1)-A205715(n+1))`
-/

namespace A205717.P9873204910312860401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A205714 (n + 1) - A205715 (n + 1)).toNat

end

end A205717.P9873204910312860401

/-! ## A205717.P16878652026987858832

`A204890(A205711(n+1))/9`
-/

namespace A205717.P16878652026987858832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204890 (A205711 (n + 1)).toNat : ℚ) / 9

end

end A205717.P16878652026987858832

/-! ## A205717.P10845674251976097031

`A341456(47*A205716(n+1))`
-/

namespace A205717.P10845674251976097031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341456 (47 * A205716 (n + 1)).toNat

end

end A205717.P10845674251976097031

/-! ## A205717.P12046985968432983760

`A341456(lcm(47, A205716(n+1)))`
-/

namespace A205717.P12046985968432983760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341456 (Int.lcm 47 (A205716 (n + 1)))

end

end A205717.P12046985968432983760

/-!
# A205718: Positions of multiples of 10 in A204890 (differences of primes).

The programs for A205718, the canonical program `A205718.P15912331110075494012` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205718 has offset 1).

The definition of A205718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205718.P15912331110075494012

`∩[A205683(n+1), A080036(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A205718

/-- `∩[A205683(n+1), A080036(n)]` -/
def P15912331110075494012.Spec : Prop :=
  ∀ n, (P15912331110075494012.a n : ℤ) = A205718 (n + 1)

theorem P15912331110075494012.correct : P15912331110075494012.Spec := by
  intro n
  simp only [A205718, Nat.add_sub_cancel]

end A205718

/-! ## A205718.P11213072718380629833

`∩[A205683(n+1), A035254(n)+4]`
-/

namespace A205718.P11213072718380629833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035254 n + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205718.P11213072718380629833

namespace A205718

/-- `∩[A205683(n+1), A035254(n)+4]` -/
def P11213072718380629833.Spec : Prop :=
  ∀ n, (P11213072718380629833.a n : ℤ) = A205718 (n + 1)

end A205718

/-! ## A205718.P11479365584428721442

`∩[A014132(n+1)+1, A205683(n+1)]`
-/

namespace A205718.P11479365584428721442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205718.P11479365584428721442

namespace A205718

/-- `∩[A014132(n+1)+1, A205683(n+1)]` -/
def P11479365584428721442.Spec : Prop :=
  ∀ n, (P11479365584428721442.a n : ℤ) = A205718 (n + 1)

end A205718

/-! ## A205718.P10389268945424456362

`∩[A205683(n+1), A336986(n+1)]`
-/

namespace A205718.P10389268945424456362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205718.P10389268945424456362

namespace A205718

/-- `∩[A205683(n+1), A336986(n+1)]` -/
def P10389268945424456362.Spec : Prop :=
  ∀ n, (P10389268945424456362.a n : ℤ) = A205718 (n + 1)

end A205718

/-! ## A205718.P17438875246001215281

`∩[A205683(n+1), A335433(n+1)]`
-/

namespace A205718.P17438875246001215281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205718.P17438875246001215281

namespace A205718

/-- `∩[A205683(n+1), A335433(n+1)]` -/
def P17438875246001215281.Spec : Prop :=
  ∀ n, (P17438875246001215281.a n : ℤ) = A205718 (n + 1)

end A205718

/-!
# A205719: Primes of the form Fibonacci(n) + 3.

The programs for A205719, there is no canonical definition to state claims against.
-/

/-! ## A205719.P10636133912788039629

`∩[A178576(n+1), A018910(n)+1]`
-/

namespace A205719.P10636133912788039629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205719.P10636133912788039629

/-! ## A205719.P3453288610060573829

`∩[A169622(n+1), A178576(n+1)]`
-/

namespace A205719.P3453288610060573829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205719.P3453288610060573829

/-!
# A205720: Numbers k for which 10 divides prime(k)-prime(j) for some j

The programs for A205720, there is no canonical definition to state claims against.
-/

/-! ## A205720.P17944368018419375881

`A000720(A205722(n+1))`
-/

namespace A205720.P17944368018419375881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205722 (n + 1)).toNat

end

end A205720.P17944368018419375881

/-! ## A205720.P486356326549879455

`A204892(A205722(n+1)-2)`
-/

namespace A205720.P486356326549879455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205722 (n + 1) - 2).toNat

end

end A205720.P486356326549879455

/-! ## A205720.P13442357611193352029

`A000720(A205724(n+1)+A205723(n+1))`
-/

namespace A205720.P13442357611193352029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205724 (n + 1) + A205723 (n + 1)).toNat

end

end A205720.P13442357611193352029

/-! ## A205720.P1925254707265447164

`A003963(A205724(n+1)+A205723(n+1))`
-/

namespace A205720.P1925254707265447164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A205724 (n + 1) + A205723 (n + 1)).toNat

end

end A205720.P1925254707265447164

/-! ## A205720.P6218952325959865077

`A026233(A205724(n+1)+A205723(n+1))`
-/

namespace A205720.P6218952325959865077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A205724 (n + 1) + A205723 (n + 1)).toNat

end

end A205720.P6218952325959865077

/-! ## A205720.P12282030458635519096

`A026238(A205724(n+1)+A205723(n+1))`
-/

namespace A205720.P12282030458635519096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A205724 (n + 1) + A205723 (n + 1)).toNat

end

end A205720.P12282030458635519096

/-! ## A205720.P15094241838141526703

`A049084(A205724(n+1)+A205723(n+1))`
-/

namespace A205720.P15094241838141526703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205724 (n + 1) + A205723 (n + 1)).toNat

end

end A205720.P15094241838141526703

/-! ## A205720.P10367719609195656311

`A055396(A205724(n+1)+A205723(n+1))`
-/

namespace A205720.P10367719609195656311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205724 (n + 1) + A205723 (n + 1)).toNat

end

end A205720.P10367719609195656311

/-! ## A205720.P9789776763891912918

`A056239(A205724(n+1)+A205723(n+1))`
-/

namespace A205720.P9789776763891912918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A205724 (n + 1) + A205723 (n + 1)).toNat

end

end A205720.P9789776763891912918

/-! ## A205720.P17391487511100884022

`A058933(A205724(n+1)+A205723(n+1))`
-/

namespace A205720.P17391487511100884022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A205724 (n + 1) + A205723 (n + 1)).toNat

end

end A205720.P17391487511100884022

/-! ## A205720.P6368523185638739026

`A061395(A205724(n+1)+A205723(n+1))`
-/

namespace A205720.P6368523185638739026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A205724 (n + 1) + A205723 (n + 1)).toNat

end

end A205720.P6368523185638739026

/-! ## A205720.P9972232966994254721

`A003057(A205718(n+1))`
-/

namespace A205720.P9972232966994254721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205718 (n + 1)).toNat

end

end A205720.P9972232966994254721

/-!
# A205721: The number j such that 10 divides prime(k)-prime(j), where k(n)=A205720(n).

The programs for A205721, there is no canonical definition to state claims against.
-/

/-! ## A205721.P3233107651073282443

`A000720(A205723(n+1))`
-/

namespace A205721.P3233107651073282443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205723 (n + 1)).toNat

end

end A205721.P3233107651073282443

/-! ## A205721.P4509560145152115510

`A003963(p?[A205723(n+1)])`
-/

namespace A205721.P4509560145152115510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A205721.P4509560145152115510

/-! ## A205721.P2271300214229210370

`A204892(A205723(n+1)-2)`
-/

namespace A205721.P2271300214229210370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205723 (n + 1) - 2).toNat

end

end A205721.P2271300214229210370

/-! ## A205721.P15898176041480431613

`A003963(2*A205723(n+1))`
-/

namespace A205721.P15898176041480431613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A205723 (n + 1)).toNat

end

end A205721.P15898176041480431613

/-! ## A205721.P470349047920501166

`A061395(2*A205723(n+1))`
-/

namespace A205721.P470349047920501166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A205723 (n + 1)).toNat

end

end A205721.P470349047920501166

/-! ## A205721.P1981657234973654126

`A003963(lcm(2, A205723(n+1)))`
-/

namespace A205721.P1981657234973654126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A205723 (n + 1)))

end

end A205721.P1981657234973654126

/-! ## A205721.P16036322334244332823

`A003963(or(1, A205723(n+1)))`
-/

namespace A205721.P16036322334244332823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A205723 (n + 1))).toNat

end

end A205721.P16036322334244332823

/-! ## A205721.P310338027694392897

`A061395(∏{d}[A205723(n+1), #])`
-/

namespace A205721.P310338027694392897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A205721.P310338027694392897

/-! ## A205721.P12013960273696428580

`A056239(2*A205723(n+1))-1`
-/

namespace A205721.P12013960273696428580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A205723 (n + 1)).toNat - 1

end

end A205721.P12013960273696428580

/-! ## A205721.P5085872490898535794

`A205723(n+1)-A026238(A205723(n+1)+1)`
-/

namespace A205721.P5085872490898535794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205723 (n + 1) - A026238 (A205723 (n + 1) + 1).toNat

end

end A205721.P5085872490898535794

/-! ## A205721.P11151921339296347340

`A205723(n+1)-A026233(A205723(n+1)-1)`
-/

namespace A205721.P11151921339296347340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205723 (n + 1) - A026233 (A205723 (n + 1) - 1).toNat

end

end A205721.P11151921339296347340

/-! ## A205721.P8426983337608568004

`A049084(2*A205723(n+1)-A205723(n+1))`
-/

namespace A205721.P8426983337608568004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A205723 (n + 1) - A205723 (n + 1)).toNat

end

end A205721.P8426983337608568004

/-! ## A205721.P7055971460011028822

`A055396(2*A205723(n+1)-A205723(n+1))`
-/

namespace A205721.P7055971460011028822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A205723 (n + 1) - A205723 (n + 1)).toNat

end

end A205721.P7055971460011028822

/-! ## A205721.P13784978284874500846

`A058933(2*A205723(n+1)-A205723(n+1))`
-/

namespace A205721.P13784978284874500846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A205723 (n + 1) - A205723 (n + 1)).toNat

end

end A205721.P13784978284874500846

/-! ## A205721.P4562654042845264264

`A049084(A205723(n+1))+A049084(A205724(n+1))`
-/

namespace A205721.P4562654042845264264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205723 (n + 1)).toNat + A049084 (A205724 (n + 1)).toNat

end

end A205721.P4562654042845264264

/-! ## A205721.P16976757869902409077

`A002260(A205718(n+1))`
-/

namespace A205721.P16976757869902409077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205718 (n + 1)).toNat

end

end A205721.P16976757869902409077

/-! ## A205721.P12601393601617002727

`A061395(A205723(n+1)²)`
-/

namespace A205721.P12601393601617002727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A205723 (n + 1) ^ 2).toNat

end

end A205721.P12601393601617002727

/-!
# A205722: Prime(A205720(n)), the n-th number s(k) such that 10 divides s(k)-s(j) for some j

The programs for A205722, there is no canonical definition to state claims against.
-/

/-! ## A205722.P13863727235299330292

`A000040(A205720(n+1))`
-/

namespace A205722.P13863727235299330292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205720 (n + 1)).toNat

end

end A205722.P13863727235299330292

/-! ## A205722.P2456063433427232388

`A008578(A205720(n+1)+1)`
-/

namespace A205722.P2456063433427232388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205720 (n + 1) + 1).toNat

end

end A205722.P2456063433427232388

/-! ## A205722.P14765675684914503929

`A065091(A205720(n+1)-1)`
-/

namespace A205722.P14765675684914503929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A205720 (n + 1) - 1).toNat

end

end A205722.P14765675684914503929

/-! ## A205722.P448728007303296247

`A205724(n+1)+A205723(n+1)`
-/

namespace A205722.P448728007303296247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205724 (n + 1) + A205723 (n + 1)

end

end A205722.P448728007303296247

/-! ## A205722.P1329953720789044617

`A205724(n+1)+A000040(A205721(n+1))`
-/

namespace A205722.P1329953720789044617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205724 (n + 1) + A000040 (A205721 (n + 1)).toNat

end

end A205722.P1329953720789044617

/-! ## A205722.P9963229967093389076

`A389809(A205718(n+1))`
-/

namespace A205722.P9963229967093389076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (A205718 (n + 1)).toNat

end

end A205722.P9963229967093389076

/-! ## A205722.P9291471511862568447

`A205723(n+1)+A204890(A205718(n+1))`
-/

namespace A205722.P9291471511862568447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205723 (n + 1) + A204890 (A205718 (n + 1)).toNat

end

end A205722.P9291471511862568447

/-! ## A205722.P15076960796406459053

`A173135(A205720(n+1)-2)`
-/

namespace A205722.P15076960796406459053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173135 (A205720 (n + 1) - 2).toNat

end

end A205722.P15076960796406459053

/-!
# A205723: Prime(A205721(n)), the n-th number s(j) such that 10 divides s(k)-s(j), where the pairs (k,j) are given by A205720 and A205721.

The programs for A205723, there is no canonical definition to state claims against.
-/

/-! ## A205723.P6914678953908667526

`A000040(A205721(n+1))`
-/

namespace A205723.P6914678953908667526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205721 (n + 1)).toNat

end

end A205723.P6914678953908667526

/-! ## A205723.P6674074684748814218

`A008578(A205721(n+1)+1)`
-/

namespace A205723.P6674074684748814218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205721 (n + 1) + 1).toNat

end

end A205723.P6674074684748814218

/-! ## A205723.P16094062793659915877

`A065091(A205721(n+1)-1)`
-/

namespace A205723.P16094062793659915877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A205721 (n + 1) - 1).toNat

end

end A205723.P16094062793659915877

/-! ## A205723.P15306892000109675383

`A205722(n+1)-A205724(n+1)`
-/

namespace A205723.P15306892000109675383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205722 (n + 1) - A205724 (n + 1)

end

end A205723.P15306892000109675383

/-! ## A205723.P18405857286395380998

`A000040(A205720(n+1))-A205724(n+1)`
-/

namespace A205723.P18405857286395380998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205720 (n + 1)).toNat - A205724 (n + 1)

end

end A205723.P18405857286395380998

/-! ## A205723.P1038286469453913039

`p?[or(1, A205687(n+1)-1)]`
-/

namespace A205723.P1038286469453913039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A205687 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205723.P1038286469453913039

/-! ## A205723.P15324544374981637589

`p?[A000265(A205687(n+1))]`
-/

namespace A205723.P15324544374981637589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A205687 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205723.P15324544374981637589

/-! ## A205723.P14590452711264768281

`p?[A132740(A205687(n+2))]`
-/

namespace A205723.P14590452711264768281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A205687 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205723.P14590452711264768281

/-! ## A205723.P18208170903755253865

`filter[A205687(n+1), A000035(#)]`
-/

namespace A205723.P18208170903755253865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A205723.P18208170903755253865

/-! ## A205723.P14821434787605982499

`filter[A205687(n+1), A023532(#)]`
-/

namespace A205723.P14821434787605982499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A205723.P14821434787605982499

/-! ## A205723.P4164273274456978886

`filter[A205687(n+1), A035263(#)]`
-/

namespace A205723.P4164273274456978886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A205723.P4164273274456978886

/-! ## A205723.P8236321055603394640

`filter[A205687(n+1), A039982(#)]`
-/

namespace A205723.P8236321055603394640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A205723.P8236321055603394640

/-! ## A205723.P18111443155789353748

`filter[A205687(n+1), A080545(#)]`
-/

namespace A205723.P18111443155789353748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A205723.P18111443155789353748

/-! ## A205723.P13846106861034568266

`filter[A205687(n+1), A093719(#)]`
-/

namespace A205723.P13846106861034568266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A205723.P13846106861034568266

/-! ## A205723.P5450685190569995762

`filter[A205687(n+1), A102863(#)]`
-/

namespace A205723.P5450685190569995762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A205723.P5450685190569995762

/-! ## A205723.P15796440645504218428

`filter[A205687(n+1), A104106(#)]`
-/

namespace A205723.P15796440645504218428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A205723.P15796440645504218428

/-! ## A205723.P6076385814920560785

`filter[A205687(n+1), A105234(#)]`
-/

namespace A205723.P6076385814920560785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A205723.P6076385814920560785

/-! ## A205723.P4816881590047848938

`filter[A205687(n+1), A115971(#)]`
-/

namespace A205723.P4816881590047848938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A205723.P4816881590047848938

/-! ## A205723.P4593484392585154836

`filter[A205687(n+1), A127254(#)]`
-/

namespace A205723.P4593484392585154836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A205723.P4593484392585154836

/-! ## A205723.P10728863552305835032

`filter[A205687(n+1), A141260(#)]`
-/

namespace A205723.P10728863552305835032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A205723.P10728863552305835032

/-!
# A205724: prime(k)-prime(j), where the pairs (k,j) are given by A205720 and A205721.

The programs for A205724, there is no canonical definition to state claims against.
-/

/-! ## A205724.P10406720151592959755

`10*A205725(n+1)`
-/

namespace A205724.P10406720151592959755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A205725 (n + 1)

end

end A205724.P10406720151592959755

/-! ## A205724.P10790648359256483915

`A008592(A205725(n+1))`
-/

namespace A205724.P10790648359256483915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A205725 (n + 1)).toNat

end

end A205724.P10790648359256483915

/-! ## A205724.P17302969239667160406

`A205722(n+1)-A205723(n+1)`
-/

namespace A205724.P17302969239667160406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205722 (n + 1) - A205723 (n + 1)

end

end A205724.P17302969239667160406

/-! ## A205724.P3141381489552996664

`A000040(A205720(n+1))-A205723(n+1)`
-/

namespace A205724.P3141381489552996664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205720 (n + 1)).toNat - A205723 (n + 1)

end

end A205724.P3141381489552996664

/-! ## A205724.P3447436351515248825

`A205722(n+1)-A000040(A205721(n+1))`
-/

namespace A205724.P3447436351515248825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205722 (n + 1) - A000040 (A205721 (n + 1)).toNat

end

end A205724.P3447436351515248825

/-! ## A205724.P345460769345863706

`A000040(A205720(n+1))-A000040(A205721(n+1))`
-/

namespace A205724.P345460769345863706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205720 (n + 1)).toNat - A000040 (A205721 (n + 1)).toNat

end

end A205724.P345460769345863706

/-! ## A205724.P13423644178098369213

`filter[A205688(n+1), A059841(#)]`
-/

namespace A205724.P13423644178098369213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A205724.P13423644178098369213

/-! ## A205724.P3003267505993955546

`filter[A205688(n+1), A135528(#)]`
-/

namespace A205724.P3003267505993955546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A205724.P3003267505993955546

/-! ## A205724.P5296886515764243826

`filter[A205688(n+1), A266591(#)]`
-/

namespace A205724.P5296886515764243826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A205724.P5296886515764243826

/-! ## A205724.P15619929299782959627

`filter[A205688(n+1), A267043(#)]`
-/

namespace A205724.P15619929299782959627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A205724.P15619929299782959627

/-! ## A205724.P2328777856522289456

`A204890(A205718(n+1))`
-/

namespace A205724.P2328777856522289456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A205718 (n + 1)).toNat

end

end A205724.P2328777856522289456

/-!
# A205725: (prime(k)-prime(j))/10, where the pairs (k,j) are given by A205720 and A205721.

The programs for A205725, there is no canonical definition to state claims against.
-/

/-! ## A205725.P2068775268410763750

`A205724(n+1)/10`
-/

namespace A205725.P2068775268410763750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205724 (n + 1) : ℚ) / 10

end

end A205725.P2068775268410763750

/-! ## A205725.P12422534405081101419

`A059995(A205724(n+1))`
-/

namespace A205725.P12422534405081101419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A205724 (n + 1)).toNat

end

end A205725.P12422534405081101419

/-! ## A205725.P17555605593462571217

`A008616(A205724(n+1)+1)`
-/

namespace A205725.P17555605593462571217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A205724 (n + 1) + 1).toNat

end

end A205725.P17555605593462571217

/-! ## A205725.P17097277882986647949

`A076312(A205724(A000027(n+1)))`
-/

namespace A205725.P17097277882986647949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (A205724 (A000027 (n + 1)).toNat).toNat

end

end A205725.P17097277882986647949

/-! ## A205725.P3077558924903863271

`A061395(p?[A207790(A205689(n+1))])`
-/

namespace A205725.P3077558924903863271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A205689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A205725.P3077558924903863271

/-!
# A205726: Number of semiprimes <= n^2.

The programs for A205726, the canonical program `A205726.P10294114532479088683` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205726 has offset 1).

The definition of A205726 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072000, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A205726.P10294114532479088683

`A072000(A000290(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A205726

/-- `A072000(A000290(n+1))` -/
def P10294114532479088683.Spec : Prop :=
  ∀ n, P10294114532479088683.a n = A205726 (n + 1)

theorem P10294114532479088683.correct : P10294114532479088683.Spec := by
  intro n
  simp only [A205726, Nat.add_sub_cancel]

end A205726

/-! ## A205726.P9447159798540512484

`A000720(n+1)+∑[A140114(n)]`
-/

namespace A205726.P9447159798540512484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205726.P9447159798540512484

namespace A205726

/-- `A000720(n+1)+∑[A140114(n)]` -/
def P9447159798540512484.Spec : Prop :=
  ∀ n, P9447159798540512484.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P17569698464733314810

`∑[A140114(n)+A010051(n+1)]`
-/

namespace A205726.P17569698464733314810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 n + A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205726.P17569698464733314810

namespace A205726

/-- `∑[A140114(n)+A010051(n+1)]` -/
def P17569698464733314810.Spec : Prop :=
  ∀ n, P17569698464733314810.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P17322878055467586306

`A038108(n+2)-A140114(n+1)`
-/

namespace A205726.P17322878055467586306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038108 (n + 2) - A140114 (n + 1)

end

end A205726.P17322878055467586306

namespace A205726

/-- `A038108(n+2)-A140114(n+1)` -/
def P17322878055467586306.Spec : Prop :=
  ∀ n, P17322878055467586306.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P2135131933842718399

`A242096(A062545(n))+∑[A140114(n)]`
-/

namespace A205726.P2135131933842718399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (A062545 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205726.P2135131933842718399

namespace A205726

/-- `A242096(A062545(n))+∑[A140114(n)]` -/
def P2135131933842718399.Spec : Prop :=
  ∀ n, P2135131933842718399.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P16001774964155175453

`A000027(a(n-1)+A140114(n)+A010051(n+1))` with `a(0)=0`
-/

namespace A205726.P16001774964155175453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000027 (a (n - 1) + (A140114 n + A010051 (n + 1))).toNat

end

end A205726.P16001774964155175453

namespace A205726

/-- `A000027(a(n-1)+A140114(n)+A010051(n+1))` -/
def P16001774964155175453.Spec : Prop :=
  ∀ n, P16001774964155175453.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P11986067166953034585

`A072000((n+1)²)`
-/

namespace A205726.P11986067166953034585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 ((n + 1) ^ 2)

end

end A205726.P11986067166953034585

namespace A205726

/-- `A072000((n+1)²)` -/
def P11986067166953034585.Spec : Prop :=
  ∀ n, P11986067166953034585.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P4149812828703602306

`record[A072000(A141256(n)²)]`
-/

namespace A205726.P4149812828703602306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A141256 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205726.P4149812828703602306

namespace A205726

/-- `record[A072000(A141256(n)²)]` -/
def P4149812828703602306.Spec : Prop :=
  ∀ n, P4149812828703602306.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P16332161943771302108

`record[A072000(A154958(n)²)]`
-/

namespace A205726.P16332161943771302108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A154958 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205726.P16332161943771302108

namespace A205726

/-- `record[A072000(A154958(n)²)]` -/
def P16332161943771302108.Spec : Prop :=
  ∀ n, P16332161943771302108.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P4912671387607154358

`record[A072000(A157128(n)²)]`
-/

namespace A205726.P4912671387607154358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A157128 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205726.P4912671387607154358

namespace A205726

/-- `record[A072000(A157128(n)²)]` -/
def P4912671387607154358.Spec : Prop :=
  ∀ n, P4912671387607154358.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P7666620138060045412

`record[A072000(A263274(n)²)]`
-/

namespace A205726.P7666620138060045412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A263274 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205726.P7666620138060045412

namespace A205726

/-- `record[A072000(A263274(n)²)]` -/
def P7666620138060045412.Spec : Prop :=
  ∀ n, P7666620138060045412.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P6689587851470848873

`record[A072000(A291769(n)²)]`
-/

namespace A205726.P6689587851470848873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A291769 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205726.P6689587851470848873

namespace A205726

/-- `record[A072000(A291769(n)²)]` -/
def P6689587851470848873.Spec : Prop :=
  ∀ n, P6689587851470848873.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P4056853734548376610

`record[A072000(A000463(n+1))]`
-/

namespace A205726.P4056853734548376610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205726.P4056853734548376610

namespace A205726

/-- `record[A072000(A000463(n+1))]` -/
def P4056853734548376610.Spec : Prop :=
  ∀ n, P4056853734548376610.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P1953471800709781665

`record[A072000(A123596(n+2))]`
-/

namespace A205726.P1953471800709781665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A123596 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205726.P1953471800709781665

namespace A205726

/-- `record[A072000(A123596(n+2))]` -/
def P1953471800709781665.Spec : Prop :=
  ∀ n, P1953471800709781665.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P15950556776150406258

`record[A072000(A003602(n+1)^2)]`
-/

namespace A205726.P15950556776150406258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A003602 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205726.P15950556776150406258

namespace A205726

/-- `record[A072000(A003602(n+1)^2)]` -/
def P15950556776150406258.Spec : Prop :=
  ∀ n, P15950556776150406258.a n = A205726 (n + 1)

end A205726

/-! ## A205726.P12130503882101320849

`∑{d}[A072000(∑[2*n+1]), A000010(#)]`
-/

namespace A205726.P12130503882101320849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A205726.P12130503882101320849

namespace A205726

/-- `∑{d}[A072000(∑[2*n+1]), A000010(#)]` -/
def P12130503882101320849.Spec : Prop :=
  ∀ n, P12130503882101320849.a n = A205726 (n + 1)

end A205726

/-!
# A205727: Number of odd semiprimes <= n^2.

The programs for A205727, there is no canonical definition to state claims against.
-/

/-! ## A205727.P6017059868022884684

`A205728(n+1)+∑[char[p?[2*n+1]-1]]`
-/

namespace A205727.P6017059868022884684
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205728 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A205727.P6017059868022884684

/-! ## A205727.P15090629654623015918

`A205726(n+1)-∑[A105149(n)]`
-/

namespace A205727.P15090629654623015918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205727.P15090629654623015918

/-! ## A205727.P14040455012173025732

`A205728(n+1)+A033270(n+1)`
-/

namespace A205727.P14040455012173025732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205728 (n + 1) + A033270 (n + 1)

end

end A205727.P14040455012173025732

/-! ## A205727.P16337254680623300071

`A072000((n+1)²)-∑[A105149(n)]`
-/

namespace A205727.P16337254680623300071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 ((n + 1) ^ 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205727.P16337254680623300071

/-! ## A205727.P299055476995984535

`A205728(n+1)+∑[A257531(n+1)]`
-/

namespace A205727.P299055476995984535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205728 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205727.P299055476995984535

/-! ## A205727.P15393061789977466941

`A257531(n+1)+A178133(n)+a(n-1)` with `a(0)=0`
-/

namespace A205727.P15393061789977466941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A257531 (n + 1) + (A178133 n + a (n - 1))

end

end A205727.P15393061789977466941

/-! ## A205727.P7195726068500086771

`A033270(n+1)+∑[A178133(A028310(n))]`
-/

namespace A205727.P7195726068500086771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205727.P7195726068500086771

/-! ## A205727.P2533525505727034242

`A205726(n+1)+A001489(∑[A105149(n)])`
-/

namespace A205727.P2533525505727034242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (n + 1) + A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205727.P2533525505727034242

/-! ## A205727.P2762823828499290149

`∑[A257531(n+1)+A178133(A028310(n))]`
-/

namespace A205727.P2762823828499290149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (n + 1) + A178133 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205727.P2762823828499290149

/-! ## A205727.P1114607393323519911

`A205726(n+1)-A000720(A080476(n+1))`
-/

namespace A205727.P1114607393323519911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (n + 1) - A000720 (A080476 (n + 1)).toNat

end

end A205727.P1114607393323519911

/-!
# A205728: Number of odd, nonsquare semiprimes <= n^2.

The programs for A205728, there is no canonical definition to state claims against.
-/

/-! ## A205728.P15356033930483067097

`∑[A178133(gcd(n, C(2, n)))]`
-/

namespace A205728.P15356033930483067097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205728.P15356033930483067097

/-! ## A205728.P4310162318871068238

`∑[A178133(round(acot(n)+n))]`
-/

namespace A205728.P4310162318871068238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205728.P4310162318871068238

/-! ## A205728.P13944268095986149464

`A178133(n)+a(n-1)` with `a(0)=0`
-/

namespace A205728.P13944268095986149464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A178133 n + a (n - 1)

end

end A205728.P13944268095986149464

/-! ## A205728.P13083126094236045002

`∑[A178133(abs(1-n)+1)]`
-/

namespace A205728.P13083126094236045002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205728.P13083126094236045002

/-! ## A205728.P8156702676962800300

`A302643(A080335(n))`
-/

namespace A205728.P8156702676962800300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A080335 n).toNat

end

end A205728.P8156702676962800300

/-! ## A205728.P13472953439091872090

`A302643(A099610(n+1))`
-/

namespace A205728.P13472953439091872090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A099610 (n + 1)).toNat

end

end A205728.P13472953439091872090

/-! ## A205728.P8920813378969788393

`A302643(A286264(n+1))`
-/

namespace A205728.P8920813378969788393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A286264 (n + 1)).toNat

end

end A205728.P8920813378969788393

/-! ## A205728.P1310042587130722867

`∑[A178133(n+1)]-A178133(n+1)`
-/

namespace A205728.P1310042587130722867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178133 (n + 1)

end

end A205728.P1310042587130722867

/-! ## A205728.P13962894269047105638

`A178133(n)-a(n-1)*A057428(n)` with `a(0)=0`
-/

namespace A205728.P13962894269047105638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A178133 n - a (n - 1) * A057428 n

end

end A205728.P13962894269047105638

/-! ## A205728.P3520017462009722610

`A205726(n+1)-(A033270(n+1)+∑[A105149(n)])`
-/

namespace A205728.P3520017462009722610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (n + 1) - (A033270 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205728.P3520017462009722610

/-!
# A205729: Number of (n+1)X(n+1) 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205729, there is no canonical definition to state claims against.
-/

/-! ## A205729.P16945955832104565939

`A205736(∑[4*n]+1)`
-/

namespace A205729.P16945955832104565939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205729.P16945955832104565939

/-! ## A205729.P5038197667427435902

`lcm(3, A205736(A001844(n)))`
-/

namespace A205729.P5038197667427435902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205736 (A001844 n).toNat)

end

end A205729.P5038197667427435902

/-! ## A205729.P8585269643157826714

`record[char[A046092(n)]*A205736(n+1)]`
-/

namespace A205729.P8585269643157826714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A205736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205729.P8585269643157826714

/-! ## A205729.P14116500395866676196

`record[gcd(A165507(n+1), A205736(n+1))]`
-/

namespace A205729.P14116500395866676196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165507 (n + 1)) (A205736 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205729.P14116500395866676196

/-! ## A205729.P15235045637022174133

`or(A000007(n), A205736(A001844(n)))`
-/

namespace A205729.P15235045637022174133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A205736 (A001844 n).toNat)

end

end A205729.P15235045637022174133

/-!
# A205730: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205730, there is no canonical definition to state claims against.
-/

/-! ## A205730.P5216954468833563436

`A205736(∑[n+2])`
-/

namespace A205730.P5216954468833563436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205730.P5216954468833563436

/-! ## A205730.P2130028586458605981

`record[lcm(A143434(n+3), A205736(n+2))]`
-/

namespace A205730.P2130028586458605981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143434 (n + 3)) (A205736 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205730.P2130028586458605981

/-! ## A205730.P13604596767057950319

`record[A205736(A000096(A324533(n)))]`
-/

namespace A205730.P13604596767057950319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A000096 (A324533 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205730.P13604596767057950319

/-! ## A205730.P3271375049103712655

`record[A205736(A000096(A003963(n+1)))]`
-/

namespace A205730.P3271375049103712655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205730.P3271375049103712655

/-! ## A205730.P12594785202689318910

`record[A205736(A000096(A071797(n+1)))]`
-/

namespace A205730.P12594785202689318910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A000096 (A071797 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205730.P12594785202689318910

/-!
# A205731: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205731, there is no canonical definition to state claims against.
-/

/-! ## A205731.P740598387384458541

`A205736(∑[n+3]+1)`
-/

namespace A205731.P740598387384458541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205731.P740598387384458541

/-! ## A205731.P6265476958238985591

`lcm(3, A205736(A055999(n)+4))`
-/

namespace A205731.P6265476958238985591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205736 (A055999 n + 4).toNat)

end

end A205731.P6265476958238985591

/-! ## A205731.P8393990513098686061

`A205736(A055999(n)+4)+A034560(n+1)`
-/

namespace A205731.P8393990513098686061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A055999 n + 4).toNat + A034560 (n + 1)

end

end A205731.P8393990513098686061

/-! ## A205731.P3442911033858323274

`A205736(A034856(n+2))+A147986(2*n+3)`
-/

namespace A205731.P3442911033858323274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A034856 (n + 2)).toNat + A147986 (2 * n + 3)

end

end A205731.P3442911033858323274

/-! ## A205731.P10573418545304464764

`A008683(A007519(n+1))²*A205736(A055999(n)+4)`
-/

namespace A205731.P10573418545304464764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007519 (n + 1)).toNat ^ 2 * A205736 (A055999 n + 4).toNat

end

end A205731.P10573418545304464764

/-!
# A205732: Number of (n+1)X5 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205732, there is no canonical definition to state claims against.
-/

/-! ## A205732.P2483083716941576010

`A205736(A141214(n+1))`
-/

namespace A205732.P2483083716941576010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A141214 (n + 1)).toNat

end

end A205732.P2483083716941576010

/-! ## A205732.P5334711956105848848

`A205736(A055998(n+2))`
-/

namespace A205732.P5334711956105848848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A055998 (n + 2)).toNat

end

end A205732.P5334711956105848848

/-! ## A205732.P17311792791183623823

`A205736(A155212(n)+5)`
-/

namespace A205732.P17311792791183623823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A155212 n + 5).toNat

end

end A205732.P17311792791183623823

/-! ## A205732.P461432591867945908

`A205736(A056000(n)+7)`
-/

namespace A205732.P461432591867945908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A056000 n + 7).toNat

end

end A205732.P461432591867945908

/-! ## A205732.P16304560764039407846

`A205736(eq[2, A220062(n)])`
-/

namespace A205732.P16304560764039407846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205732.P16304560764039407846

/-!
# A205733: Number of (n+1)X6 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205733, there is no canonical definition to state claims against.
-/

/-! ## A205733.P905318182069021458

`A205736(Δ[A264443(n)])`
-/

namespace A205733.P905318182069021458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (f1 (n + 1) - f1 n).toNat

end

end A205733.P905318182069021458

/-! ## A205733.P15356857187795554064

`A205736(A046691(n+3))`
-/

namespace A205733.P15356857187795554064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A046691 (n + 3)).toNat

end

end A205733.P15356857187795554064

/-! ## A205733.P1758449235658808436

`A205736(eq[4, A193592(n)])`
-/

namespace A205733.P1758449235658808436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205733.P1758449235658808436

/-! ## A205733.P3477864661864997776

`A205736(eq[8, A140996(n)])`
-/

namespace A205733.P3477864661864997776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205733.P3477864661864997776

/-! ## A205733.P3554723365685155320

`A205736(Δ[A023545(n+1)])`
-/

namespace A205733.P3554723365685155320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (f1 (n + 1) - f1 n).toNat

end

end A205733.P3554723365685155320

/-!
# A205734: Number of (n+1)X7 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205734, there is no canonical definition to state claims against.
-/

/-! ## A205734.P3877897590220954690

`A205736(A052905(n+3))`
-/

namespace A205734.P3877897590220954690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A052905 (n + 3)).toNat

end

end A205734.P3877897590220954690

/-! ## A205734.P16544458926108822254

`A205736(eq[3, A219347(n)])`
-/

namespace A205734.P16544458926108822254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205734.P16544458926108822254

/-! ## A205734.P5022583059193573541

`A205736(eq[5, A193592(n)])`
-/

namespace A205734.P5022583059193573541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205734.P5022583059193573541

/-! ## A205734.P5657926575938953778

`A205736(eq[8, A258709(n)])`
-/

namespace A205734.P5657926575938953778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205734.P5657926575938953778

/-! ## A205734.P12047202859103568141

`A205736(A055998(n+4)-2)`
-/

namespace A205734.P12047202859103568141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A055998 (n + 4) - 2).toNat

end

end A205734.P12047202859103568141

/-!
# A205735: Number of (n+1)X8 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205735, there is no canonical definition to state claims against.
-/

/-! ## A205735.P12848125895239406328

`A205736(A055999(n+4))`
-/

namespace A205735.P12848125895239406328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A055999 (n + 4)).toNat

end

end A205735.P12848125895239406328

/-! ## A205735.P16090138032833788574

`A205736(eq[4, A219347(n)])`
-/

namespace A205735.P16090138032833788574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205735.P16090138032833788574

/-! ## A205735.P8175333541814228222

`A205736(eq[6, A193592(n)])`
-/

namespace A205735.P8175333541814228222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205735.P8175333541814228222

/-! ## A205735.P7484165509713389404

`A205736(A052905(n+4)-1)`
-/

namespace A205735.P7484165509713389404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A052905 (n + 4) - 1).toNat

end

end A205735.P7484165509713389404

/-! ## A205735.P7819574246668945415

`A205736(eq[7, A200370(n+1)])`
-/

namespace A205735.P7819574246668945415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205735.P7819574246668945415

/-!
# A205737: Number of 2 X (n+1) 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205737, there is no canonical definition to state claims against.
-/

/-! ## A205737.P9291142876152256098

`A205736(∑[n]+1)`
-/

namespace A205737.P9291142876152256098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205737.P9291142876152256098

/-! ## A205737.P6114612747300508643

`lcm(3, A205736(A000124(n)))`
-/

namespace A205737.P6114612747300508643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205736 (A000124 n).toNat)

end

end A205737.P6114612747300508643

/-! ## A205737.P17126635711756758611

`record[A205736(∑[A057979(n)])]`
-/

namespace A205737.P17126635711756758611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205737.P17126635711756758611

/-! ## A205737.P9809366335169031641

`record[A176270(n)*A205736(n+1)]`
-/

namespace A205737.P9809366335169031641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A205736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205737.P9809366335169031641

/-! ## A205737.P13821587294209537233

`record[A205736(n+1)/A007318(n)]`
-/

namespace A205737.P13821587294209537233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205736 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205737.P13821587294209537233

/-!
# A205738: Number of 3X(n+1) 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205738, there is no canonical definition to state claims against.
-/

/-! ## A205738.P4853504761901744098

`A205736(∑[n+1]+2)`
-/

namespace A205738.P4853504761901744098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205738.P4853504761901744098

/-! ## A205738.P14704241544592363073

`lcm(2, A205736(A133263(n+1)))`
-/

namespace A205738.P14704241544592363073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205736 (A133263 (n + 1)).toNat)

end

end A205738.P14704241544592363073

/-! ## A205738.P15503092703299551430

`char[A004448(n)]*A205736(A133263(n+1))`
-/

namespace A205738.P15503092703299551430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A205736 (A133263 (n + 1)).toNat

end

end A205738.P15503092703299551430

/-! ## A205738.P12455802881905452

`A205736(A133263(n+1))%A205732(n+1)`
-/

namespace A205738.P12455802881905452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205736 (A133263 (n + 1)).toNat) (A205732 (n + 1))

end

end A205738.P12455802881905452

/-! ## A205738.P1915458663511564102

`A205736(A167487(n)-5)%A205732(n+1)`
-/

namespace A205738.P1915458663511564102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205736 (A167487 n - 5).toNat) (A205732 (n + 1))

end

end A205738.P1915458663511564102

/-!
# A205739: Number of 4X(n+1) 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205739, there is no canonical definition to state claims against.
-/

/-! ## A205739.P15658191505739119224

`A205736(∑[n+2]+4)`
-/

namespace A205739.P15658191505739119224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205739.P15658191505739119224

/-! ## A205739.P12435545873948293572

`lcm(3, A205736(A167614(n+1)))`
-/

namespace A205739.P12435545873948293572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205736 (A167614 (n + 1)).toNat)

end

end A205739.P12435545873948293572

/-! ## A205739.P13343915366060670436

`A205736(A167614(n+1))+A011738(n)`
-/

namespace A205739.P13343915366060670436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A167614 (n + 1)).toNat + A011738 n

end

end A205739.P13343915366060670436

/-! ## A205739.P4951428085748606564

`A205736(A167614(n+1))+A178798(n)`
-/

namespace A205739.P4951428085748606564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A167614 (n + 1)).toNat + A178798 n

end

end A205739.P4951428085748606564

/-! ## A205739.P18011773695452120871

`A205736(A167614(n+1))+A185284(n)`
-/

namespace A205739.P18011773695452120871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A167614 (n + 1)).toNat + A185284 n

end

end A205739.P18011773695452120871

/-!
# A205740: Number of 5X(n+1) 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205740, there is no canonical definition to state claims against.
-/

/-! ## A205740.P3047106325126103775

`A205736(A141214(n)+7)`
-/

namespace A205740.P3047106325126103775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A141214 n + 7).toNat

end

end A205740.P3047106325126103775

/-! ## A205740.P2879172032124511388

`A205736(A052905(n)+9)`
-/

namespace A205740.P2879172032124511388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A052905 n + 9).toNat

end

end A205740.P2879172032124511388

/-! ## A205740.P11065734073330323452

`A205736(A167614(n+2)+1)`
-/

namespace A205740.P11065734073330323452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A167614 (n + 2) + 1).toNat

end

end A205740.P11065734073330323452

/-! ## A205740.P800937838504021154

`A205736(A133263(n+3)+2)`
-/

namespace A205740.P800937838504021154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A133263 (n + 3) + 2).toNat

end

end A205740.P800937838504021154

/-! ## A205740.P16073182077922305480

`A205736(A000124(n+3)+3)`
-/

namespace A205740.P16073182077922305480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A000124 (n + 3) + 3).toNat

end

end A205740.P16073182077922305480

/-!
# A205741: Number of 6X(n+1) 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205741, there is no canonical definition to state claims against.
-/

/-! ## A205741.P11659207021814131507

`A205736(A167499(n+3))`
-/

namespace A205741.P11659207021814131507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A167499 (n + 3)).toNat

end

end A205741.P11659207021814131507

/-! ## A205741.P861194458383091241

`A205736(A056000(n)+15)`
-/

namespace A205741.P861194458383091241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A056000 n + 15).toNat

end

end A205741.P861194458383091241

/-! ## A205741.P6383243280977219349

`A205736(A000217(n+4)+5)`
-/

namespace A205741.P6383243280977219349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A000217 (n + 4) + 5).toNat

end

end A205741.P6383243280977219349

/-! ## A205741.P13317557813074911460

`A205736(eq[6, A131818(n+1)])`
-/

namespace A205741.P13317557813074911460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205741.P13317557813074911460

/-! ## A205741.P8483479257987990596

`A205736(eq[6, A004736(n+1)]-2*n)`
-/

namespace A205741.P8483479257987990596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A205741.P8483479257987990596

/-!
# A205742: Number of 7X(n+1) 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205742, there is no canonical definition to state claims against.
-/

/-! ## A205742.P13973227797666407940

`A205736(A056115(n)+21)`
-/

namespace A205742.P13973227797666407940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A056115 n + 21).toNat

end

end A205742.P13973227797666407940

/-! ## A205742.P7389368411922354677

`A205736(A246172(n+1)+20)`
-/

namespace A205742.P7389368411922354677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A246172 (n + 1) + 20).toNat

end

end A205742.P7389368411922354677

/-! ## A205742.P7543623446062297071

`A205736(eq[7, A131818(n+1)])`
-/

namespace A205742.P7543623446062297071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205742.P7543623446062297071

/-! ## A205742.P7961670381198074267

`A205736(Δ[A023545(n+1)]+10)`
-/

namespace A205742.P7961670381198074267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (f1 (n + 1) - f1 n + 10).toNat

end

end A205742.P7961670381198074267

/-! ## A205742.P4689609887762287054

`A205736(A167499(n+5)-(n+5))`
-/

namespace A205742.P4689609887762287054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A167499 (n + 5) - (n + 5 : ℤ)).toNat

end

end A205742.P4689609887762287054

/-!
# A205743: Number of 8X(n+1) 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205743, there is no canonical definition to state claims against.
-/

/-! ## A205743.P5724983771021112964

`A205736(A167487(n+5))`
-/

namespace A205743.P5724983771021112964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A167487 (n + 5)).toNat

end

end A205743.P5724983771021112964

/-! ## A205743.P8201741748977445316

`A205736(A167499(n+5)+2)`
-/

namespace A205743.P8201741748977445316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A167499 (n + 5) + 2).toNat

end

end A205743.P8201741748977445316

/-! ## A205743.P8852208251165618119

`A205736(A055998(n+4)+10)`
-/

namespace A205743.P8852208251165618119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (A055998 (n + 4) + 10).toNat

end

end A205743.P8852208251165618119

/-! ## A205743.P9754795846736999457

`A205736(eq[8, A131818(n+1)])`
-/

namespace A205743.P9754795846736999457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205743.P9754795846736999457

/-! ## A205743.P2145411009415115687

`A205736(eq[6, A004736(n+1)]+13)`
-/

namespace A205743.P2145411009415115687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 13)

end

end A205743.P2145411009415115687

/-!
# A205744: The sequence "u_{n-r}" used by Conway and Guy in the construction of A005318 and A096858.

The programs for A205744, the canonical program `A205744.P9071350796322645306` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205744 has offset 1).

The definition of A205744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205744.P9071350796322645306

`A005318(A083920(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A205744

/-- `A005318(A083920(n))` -/
def P9071350796322645306.Spec : Prop :=
  ∀ n, P9071350796322645306.a n = A205744 (n + 1)

theorem P9071350796322645306.correct : P9071350796322645306.Spec := by
  intro n
  simp only [A205744, Nat.add_sub_cancel]

end A205744

/-! ## A205744.P17077662529143080566

`A005318(∑[char[comp[∑[n]]]])`
-/

namespace A205744.P17077662529143080566
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205744.P17077662529143080566

namespace A205744

/-- `A005318(∑[char[comp[∑[n]]]])` -/
def P17077662529143080566.Spec : Prop :=
  ∀ n, P17077662529143080566.a n = A205744 (n + 1)

end A205744

/-! ## A205744.P2471375987895268589

`A005318(n)-A066777(n)`
-/

namespace A205744.P2471375987895268589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 n - A066777 n

end

end A205744.P2471375987895268589

namespace A205744

/-- `A005318(n)-A066777(n)` -/
def P2471375987895268589.Spec : Prop :=
  ∀ n, P2471375987895268589.a n = A205744 (n + 1)

end A205744

/-! ## A205744.P17609793112929598973

`A005318(n)-Δ[A005230(n+1)]`
-/

namespace A205744.P17609793112929598973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 n - (f1 (n + 1) - f1 n)

end

end A205744.P17609793112929598973

namespace A205744

/-- `A005318(n)-Δ[A005230(n+1)]` -/
def P17609793112929598973.Spec : Prop :=
  ∀ n, P17609793112929598973.a n = A205744 (n + 1)

end A205744

/-! ## A205744.P16681807466171871629

`Δ[A014172(n)]%A005230(n+2)`
-/

namespace A205744.P16681807466171871629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A005230 (n + 2))

end

end A205744.P16681807466171871629

namespace A205744

/-- `Δ[A014172(n)]%A005230(n+2)` -/
def P16681807466171871629.Spec : Prop :=
  ∀ n, P16681807466171871629.a n = A205744 (n + 1)

end A205744

/-!
# A205745: a(n) = card { d | d*p = n, d odd, p prime }.

The programs for A205745, the canonical program `A205745.P10456452147523085489` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205745 has offset 1).

The definition of A205745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205745.P10456452147523085489

`∑{p}[n+1, ((n+1)/#)%2]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A205745

/-- `∑{p}[n+1, ((n+1)/#)%2]` -/
def P10456452147523085489.Spec : Prop :=
  ∀ n, P10456452147523085489.a n = A205745 (n + 1)

theorem P10456452147523085489.correct : P10456452147523085489.Spec := by
  intro n
  simp only [A205745, Nat.add_sub_cancel]

end A205745

/-! ## A205745.P4740662076595173852

`∑{p}[n+1, and(1, (n+1)/#)]`
-/

namespace A205745.P4740662076595173852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.land 1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ)))

end

end A205745.P4740662076595173852

namespace A205745

/-- `∑{p}[n+1, and(1, (n+1)/#)]` -/
def P4740662076595173852.Spec : Prop :=
  ∀ n, P4740662076595173852.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P9479827645190844315

`val(A329350(n+1), 2)`
-/

namespace A205745.P9479827645190844315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329350 (n + 1)).toNat 2

end

end A205745.P9479827645190844315

namespace A205745

/-- `val(A329350(n+1), 2)` -/
def P9479827645190844315.Spec : Prop :=
  ∀ n, (P9479827645190844315.a n : ℤ) = A205745 (n + 1)

end A205745

/-! ## A205745.P6657835400119929537

`val(A329352(n+1), 2)`
-/

namespace A205745.P6657835400119929537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329352 (n + 1)).toNat 2

end

end A205745.P6657835400119929537

namespace A205745

/-- `val(A329352(n+1), 2)` -/
def P6657835400119929537.Spec : Prop :=
  ∀ n, (P6657835400119929537.a n : ℤ) = A205745 (n + 1)

end A205745

/-! ## A205745.P6909848686001316054

`A351244(n+1)%8`
-/

namespace A205745.P6909848686001316054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351244 (n + 1)) 8

end

end A205745.P6909848686001316054

namespace A205745

/-- `A351244(n+1)%8` -/
def P6909848686001316054.Spec : Prop :=
  ∀ n, P6909848686001316054.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P8499932440385899600

`A001221(gcd(n+1, C(or(1, n), 2)))`
-/

namespace A205745.P8499932440385899600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.gcd (n + 1) (Nat.choose (Nat.lor 1 n) 2))

end

end A205745.P8499932440385899600

namespace A205745

/-- `A001221(gcd(n+1, C(or(1, n), 2)))` -/
def P8499932440385899600.Spec : Prop :=
  ∀ n, P8499932440385899600.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P8478025090667938321

`val(∏{p}[n+1, A019565((n+1)/#)], 2)`
-/

namespace A205745.P8478025090667938321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), A019565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat).toNat 2

end

end A205745.P8478025090667938321

namespace A205745

/-- `val(∏{p}[n+1, A019565((n+1)/#)], 2)` -/
def P8478025090667938321.Spec : Prop :=
  ∀ n, (P8478025090667938321.a n : ℤ) = A205745 (n + 1)

end A205745

/-! ## A205745.P7464759609488755591

`A001221(A086112(n+1))`
-/

namespace A205745.P7464759609488755591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A086112 (n + 1)).toNat

end

end A205745.P7464759609488755591

namespace A205745

/-- `A001221(A086112(n+1))` -/
def P7464759609488755591.Spec : Prop :=
  ∀ n, P7464759609488755591.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P17319580947491332037

`and(A010729(n), A351244(n+1))`
-/

namespace A205745.P17319580947491332037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010729 n) (A351244 (n + 1))

end

end A205745.P17319580947491332037

namespace A205745

/-- `and(A010729(n), A351244(n+1))` -/
def P17319580947491332037.Spec : Prop :=
  ∀ n, P17319580947491332037.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P13129442430128679666

`and(A010729(n), A351248(n+1))`
-/

namespace A205745.P13129442430128679666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010729 n) (A351248 (n + 1))

end

end A205745.P13129442430128679666

namespace A205745

/-- `and(A010729(n), A351248(n+1))` -/
def P13129442430128679666.Spec : Prop :=
  ∀ n, P13129442430128679666.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P5591799062051412382

`A305614(n+1)+A106404(n+1)`
-/

namespace A205745.P5591799062051412382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 (n + 1) + A106404 (n + 1)

end

end A205745.P5591799062051412382

namespace A205745

/-- `A305614(n+1)+A106404(n+1)` -/
def P5591799062051412382.Spec : Prop :=
  ∀ n, P5591799062051412382.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P7311617260104113331

`A001221(n+1)-A106404(n+1)`
-/

namespace A205745.P7311617260104113331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A106404 (n + 1)

end

end A205745.P7311617260104113331

namespace A205745

/-- `A001221(n+1)-A106404(n+1)` -/
def P7311617260104113331.Spec : Prop :=
  ∀ n, P7311617260104113331.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P12229486038517024949

`A001221(floor(n^Δ[A000120(n)])+1)`
-/

namespace A205745.P12229486038517024949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (⌊(n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)⌋ + 1).toNat

end

end A205745.P12229486038517024949

namespace A205745

/-- `A001221(floor(n^Δ[A000120(n)])+1)` -/
def P12229486038517024949.Spec : Prop :=
  ∀ n, P12229486038517024949.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P10025274467254375022

`∑{d}[n+1, A001227(#)*A143519((n+1)/#)]`
-/

namespace A205745.P10025274467254375022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A205745.P10025274467254375022

namespace A205745

/-- `∑{d}[n+1, A001227(#)*A143519((n+1)/#)]` -/
def P10025274467254375022.Spec : Prop :=
  ∀ n, P10025274467254375022.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P12253286704413316109

`∑{d}[n+1, A062799(#)*A092673((n+1)/#)]`
-/

namespace A205745.P12253286704413316109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A205745.P12253286704413316109

namespace A205745

/-- `∑{d}[n+1, A062799(#)*A092673((n+1)/#)]` -/
def P12253286704413316109.Spec : Prop :=
  ∀ n, P12253286704413316109.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P1449187887211670494

`∑{d}[n+1, A001221(#)*A154955((n+1)/#)]`
-/

namespace A205745.P1449187887211670494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A205745.P1449187887211670494

namespace A205745

/-- `∑{d}[n+1, A001221(#)*A154955((n+1)/#)]` -/
def P1449187887211670494.Spec : Prop :=
  ∀ n, P1449187887211670494.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P11550870005893925107

`∑{d}[n+1, A323599(#)*A359484((n+1)/#)]`
-/

namespace A205745.P11550870005893925107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323599 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A205745.P11550870005893925107

namespace A205745

/-- `∑{d}[n+1, A323599(#)*A359484((n+1)/#)]` -/
def P11550870005893925107.Spec : Prop :=
  ∀ n, P11550870005893925107.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P17814293592411689878

`∑{d}[n+1, A347957(#)*A349346((n+1)/#)]`
-/

namespace A205745.P17814293592411689878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347957 d * A349346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A205745.P17814293592411689878

namespace A205745

/-- `∑{d}[n+1, A347957(#)*A349346((n+1)/#)]` -/
def P17814293592411689878.Spec : Prop :=
  ∀ n, P17814293592411689878.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P5546998847829783456

`∑{d}[n+1, A010051(#)*A059841((n+1)/#-1)]`
-/

namespace A205745.P5546998847829783456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A205745.P5546998847829783456

namespace A205745

/-- `∑{d}[n+1, A010051(#)*A059841((n+1)/#-1)]` -/
def P5546998847829783456.Spec : Prop :=
  ∀ n, P5546998847829783456.a n = A205745 (n + 1)

end A205745

/-! ## A205745.P7228574959063919231

`A001221(A240828(n+3)-abs(∑[n]%(n+1)-1))`
-/

namespace A205745.P7228574959063919231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A240828 (n + 3) - |(((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ) - 1|).toNat

end

end A205745.P7228574959063919231

namespace A205745

/-- `A001221(A240828(n+3)-abs(∑[n]%(n+1)-1))` -/
def P7228574959063919231.Spec : Prop :=
  ∀ n, P7228574959063919231.a n = A205745 (n + 1)

end A205745

/-!
# A205746: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205746, there is no canonical definition to state claims against.
-/

/-! ## A205746.P8327034172967287196

`A205753(∑[4*n]+1)`
-/

namespace A205746.P8327034172967287196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205746.P8327034172967287196

/-! ## A205746.P1410613970458426268

`lcm(1-2*n%2, A205753(n²+(n+1)²))`
-/

namespace A205746.P1410613970458426268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((2 * (n % 2) : ℕ) : ℤ)) (A205753 (n ^ 2 + (n + 1) ^ 2))

end

end A205746.P1410613970458426268

/-! ## A205746.P13619515488293336372

`record[A205753(Δ[A235355(n)])]`
-/

namespace A205746.P13619515488293336372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205746.P13619515488293336372

/-! ## A205746.P18025053204341955915

`record[A205753(A330613(n+1))]`
-/

namespace A205746.P18025053204341955915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205746.P18025053204341955915

/-!
# A205747: Number of (n+1)X3 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205747, there is no canonical definition to state claims against.
-/

/-! ## A205747.P1579026833189968607

`A205753(∑[n+2])`
-/

namespace A205747.P1579026833189968607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205747.P1579026833189968607

/-! ## A205747.P3759828795831335379

`record[A205753(abs(A201163(n)))]`
-/

namespace A205747.P3759828795831335379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205747.P3759828795831335379

/-! ## A205747.P13200777593672639007

`lcm(2, A205753(A000096(n+1)))`
-/

namespace A205747.P13200777593672639007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205753 (A000096 (n + 1)).toNat)

end

end A205747.P13200777593672639007

/-! ## A205747.P8681110958248914907

`A007318(C(2, n))*A205753(A000096(n+1))`
-/

namespace A205747.P8681110958248914907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A205753 (A000096 (n + 1)).toNat

end

end A205747.P8681110958248914907

/-! ## A205747.P11239349419811799026

`A000041(C(2, n+2))*A205753(A000096(n+1))`
-/

namespace A205747.P11239349419811799026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A205753 (A000096 (n + 1)).toNat

end

end A205747.P11239349419811799026

/-!
# A205748: Number of (n+1)X4 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205748, there is no canonical definition to state claims against.
-/

/-! ## A205748.P3639222923605672330

`A205753(∑[n+3]+1)`
-/

namespace A205748.P3639222923605672330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205748.P3639222923605672330

/-! ## A205748.P13324766128930187383

`record[A205753(A198464(n+1))]`
-/

namespace A205748.P13324766128930187383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205748.P13324766128930187383

/-! ## A205748.P16293884004864636359

`or(A205753(A034856(n+2)), A285476(n+1))`
-/

namespace A205748.P16293884004864636359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A205753 (A034856 (n + 2)).toNat) (A285476 (n + 1))

end

end A205748.P16293884004864636359

/-! ## A205748.P10548309722832988795

`or(A205753(A034856(n+2)), A240348(2*n))`
-/

namespace A205748.P10548309722832988795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A205753 (A034856 (n + 2)).toNat) (A240348 (2 * n))

end

end A205748.P10548309722832988795

/-! ## A205748.P17147777750776355370

`A240348(A205753(n+2))+A205753(A034856(n+2))`
-/

namespace A205748.P17147777750776355370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240348 (A205753 (n + 2)).toNat + A205753 (A034856 (n + 2)).toNat

end

end A205748.P17147777750776355370

/-!
# A205749: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205749, there is no canonical definition to state claims against.
-/

/-! ## A205749.P7038741598435888262

`A205753(∑[n+4]+3)`
-/

namespace A205749.P7038741598435888262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A205749.P7038741598435888262

/-!
# A205750: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205750, there is no canonical definition to state claims against.
-/

/-! ## A205750.P5755400893552378124

`A205753(Δ[A264443(n)])`
-/

namespace A205750.P5755400893552378124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (f1 (n + 1) - f1 n).toNat

end

end A205750.P5755400893552378124

/-! ## A205750.P9947007957984916971

`A205753(A046691(n+3))`
-/

namespace A205750.P9947007957984916971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A046691 (n + 3)).toNat

end

end A205750.P9947007957984916971

/-! ## A205750.P5038839079306945173

`A205753(A056115(n)+11)`
-/

namespace A205750.P5038839079306945173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A056115 n + 11).toNat

end

end A205750.P5038839079306945173

/-! ## A205750.P17791630941014255393

`A205753(eq[2, A092921(n)])`
-/

namespace A205750.P17791630941014255393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205750.P17791630941014255393

/-! ## A205750.P13592649999952185939

`A205753(eq[3, A152157(n)])`
-/

namespace A205750.P13592649999952185939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205750.P13592649999952185939

/-!
# A205751: Number of (n+1) X 7 0..2 arrays with every 2 X 2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205751, there is no canonical definition to state claims against.
-/

/-! ## A205751.P15812051178511045730

`A205753(A052905(n+3))`
-/

namespace A205751.P15812051178511045730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A052905 (n + 3)).toNat

end

end A205751.P15812051178511045730

/-! ## A205751.P9128749652081346458

`A205753(A056119(n)+16)`
-/

namespace A205751.P9128749652081346458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A056119 n + 16).toNat

end

end A205751.P9128749652081346458

/-! ## A205751.P16074793092046268479

`A205753(eq[3, A219347(n)])`
-/

namespace A205751.P16074793092046268479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205751.P16074793092046268479

/-! ## A205751.P17337448943491624240

`A205753(eq[5, A193592(n)])`
-/

namespace A205751.P17337448943491624240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205751.P17337448943491624240

/-! ## A205751.P4720895034422051

`A205753(eq[8, A258709(n)])`
-/

namespace A205751.P4720895034422051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205751.P4720895034422051

/-!
# A205752: Number of (n+1)X8 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205752, there is no canonical definition to state claims against.
-/

/-! ## A205752.P16744078617872975191

`A205753(A056121(n)+22)`
-/

namespace A205752.P16744078617872975191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A056121 n + 22).toNat

end

end A205752.P16744078617872975191

/-! ## A205752.P14898694660664794740

`A205753(eq[4, A219347(n)])`
-/

namespace A205752.P14898694660664794740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205752.P14898694660664794740

/-! ## A205752.P955430157072585303

`A205753(eq[5, A332954(n)])`
-/

namespace A205752.P955430157072585303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205752.P955430157072585303

/-! ## A205752.P12464750577845521630

`A205753(eq[6, A193592(n)])`
-/

namespace A205752.P12464750577845521630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205752.P12464750577845521630

/-! ## A205752.P17660359602527188887

`A205753(Δ[A023551(n+2)])`
-/

namespace A205752.P17660359602527188887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (f1 (n + 1) - f1 n).toNat

end

end A205752.P17660359602527188887

/-!
# A205754: Number of 3X(n+1) 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205754, there is no canonical definition to state claims against.
-/

/-! ## A205754.P5740301838925845342

`A205753(∑[n+1]+2)`
-/

namespace A205754.P5740301838925845342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205754.P5740301838925845342

/-! ## A205754.P3719729189599835001

`lcm(2, A205753(A133263(n+1)))`
-/

namespace A205754.P3719729189599835001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205753 (A133263 (n + 1)).toNat)

end

end A205754.P3719729189599835001

/-! ## A205754.P14830075746064417159

`and(-2, A205753(A167499(n)-3))`
-/

namespace A205754.P14830075746064417159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A205753 (A167499 n - 3).toNat)

end

end A205754.P14830075746064417159

/-! ## A205754.P18253852779306591904

`record[A205753(A106255(n+1)+2)]`
-/

namespace A205754.P18253852779306591904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A106255 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205754.P18253852779306591904

/-! ## A205754.P7876890043488344373

`record[A205753(A115017(n+1)+2)]`
-/

namespace A205754.P7876890043488344373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A115017 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205754.P7876890043488344373

/-!
# A205755: Number of 4X(n+1) 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205755, there is no canonical definition to state claims against.
-/

/-! ## A205755.P13753315747114859440

`A205753(∑[n+2]+4)`
-/

namespace A205755.P13753315747114859440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205755.P13753315747114859440

/-! ## A205755.P1498679651629940691

`or(char[3], A205753(A167614(n+1)))`
-/

namespace A205755.P1498679651629940691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A205753 (A167614 (n + 1)).toNat)

end

end A205755.P1498679651629940691

/-! ## A205755.P11371773655924341823

`A205753(A167614(n+1))*A351084(n)`
-/

namespace A205755.P11371773655924341823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A167614 (n + 1)).toNat * A351084 n

end

end A205755.P11371773655924341823

/-! ## A205755.P15984423696244769015

`A205753(A167614(n+1))+A000007(n+1)`
-/

namespace A205755.P15984423696244769015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A205755.P15984423696244769015

/-! ## A205755.P7735304685317711004

`A060576(n+2)*A205753(A167614(n+1))`
-/

namespace A205755.P7735304685317711004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 2) * A205753 (A167614 (n + 1)).toNat

end

end A205755.P7735304685317711004

/-!
# A205756: Number of 5X(n+1) 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205756, there is no canonical definition to state claims against.
-/

/-! ## A205756.P2941500848537157242

`A205753(∑[n+3]+7)`
-/

namespace A205756.P2941500848537157242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205756.P2941500848537157242

/-!
# A205757: Number of 6X(n+1) 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205757, there is no canonical definition to state claims against.
-/

/-! ## A205757.P7656378914451916784

`A205753(∑[n+4]+11)`
-/

namespace A205757.P7656378914451916784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A205757.P7656378914451916784

/-!
# A205758: Number of 7X(n+1) 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205758, there is no canonical definition to state claims against.
-/

/-! ## A205758.P2159057578751968032

`A205753(A167499(n+4)+1)`
-/

namespace A205758.P2159057578751968032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A167499 (n + 4) + 1).toNat

end

end A205758.P2159057578751968032

/-! ## A205758.P17357031320973817561

`A205753(A000124(n+5)+5)`
-/

namespace A205758.P17357031320973817561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A000124 (n + 5) + 5).toNat

end

end A205758.P17357031320973817561

/-! ## A205758.P16379842534487151252

`A205753(eq[7, A131818(n+1)])`
-/

namespace A205758.P16379842534487151252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205758.P16379842534487151252

/-! ## A205758.P9938928791832049757

`A205753(Δ[Δ[A022815(n+1)]]+11)`
-/

namespace A205758.P9938928791832049757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (f1 (n + 1) - f1 n + 11).toNat

end

end A205758.P9938928791832049757

/-!
# A205759: Number of 8X(n+1) 0..2 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205759, there is no canonical definition to state claims against.
-/

/-! ## A205759.P5342508279392879503

`A205753(A167487(n+5))`
-/

namespace A205759.P5342508279392879503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A167487 (n + 5)).toNat

end

end A205759.P5342508279392879503

/-! ## A205759.P17569301317432318290

`A205753(A302537(n)+27)`
-/

namespace A205759.P17569301317432318290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A302537 n + 27).toNat

end

end A205759.P17569301317432318290

/-! ## A205759.P37422762502160763

`A205753(A056119(n)+28)`
-/

namespace A205759.P37422762502160763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A056119 n + 28).toNat

end

end A205759.P37422762502160763

/-! ## A205759.P4131352240999642028

`A205753(eq[11, A066657(n)])`
-/

namespace A205759.P4131352240999642028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205759.P4131352240999642028

/-! ## A205759.P1678613645893859272

`A205753(A166136(n+5)+1)`
-/

namespace A205759.P1678613645893859272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A166136 (n + 5) + 1).toNat

end

end A205759.P1678613645893859272

/-!
# A205760: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A205760, there is no canonical definition to state claims against.
-/

/-! ## A205760.P15547567637975081527

`A205768(∑[4*n]+1)`
-/

namespace A205760.P15547567637975081527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205760.P15547567637975081527

/-!
# A205761: Number of (n+1)X2 0..3 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A205761, there is no canonical definition to state claims against.
-/

/-! ## A205761.P8722255236590233114

`A205768(∑[n]+1)`
-/

namespace A205761.P8722255236590233114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205761.P8722255236590233114

/-! ## A205761.P16166981480268947854

`record[A103451(n)*A205768(n+1)]`
-/

namespace A205761.P16166981480268947854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A205768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205761.P16166981480268947854

/-! ## A205761.P4270446158597576683

`record[A205768(n+1)/A022168(n)]`
-/

namespace A205761.P4270446158597576683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205768 (n + 1) : ℚ) / (A022168 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205761.P4270446158597576683

/-! ## A205761.P17544099824188409837

`record[root(A205768(n+1), A059268(n))]`
-/

namespace A205761.P17544099824188409837
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205768 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205761.P17544099824188409837

/-! ## A205761.P2675245674695679976

`record[gcd(A002262(n), A205768(n+1))]`
-/

namespace A205761.P2675245674695679976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205768 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205761.P2675245674695679976

/-!
# A205762: Number of (n+1)X3 0..3 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A205762, there is no canonical definition to state claims against.
-/

/-! ## A205762.P12107124844814691908

`A205768(∑[n+1]+2)`
-/

namespace A205762.P12107124844814691908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205762.P12107124844814691908

/-! ## A205762.P7975670565122285505

`record[root(A205768(n+2), A059268(n))]`
-/

namespace A205762.P7975670565122285505
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205768 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205762.P7975670565122285505

/-! ## A205762.P8074577923086077325

`record[gcd(A002262(n), A205768(n+2))]`
-/

namespace A205762.P8074577923086077325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205768 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205762.P8074577923086077325

/-! ## A205762.P3549566318124530274

`record[root(A205768(n+2), A263905(n+1))]`
-/

namespace A205762.P3549566318124530274
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205768 (n + 2) : ℝ) ^ (1 / (A263905 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205762.P3549566318124530274

/-! ## A205762.P14330908297116520455

`A007318(∑{e}[n+1, #])*A205768(A000096(n)+3)`
-/

namespace A205762.P14330908297116520455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A205768 (A000096 n + 3).toNat

end

end A205762.P14330908297116520455

/-!
# A205763: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A205763, there is no canonical definition to state claims against.
-/

/-! ## A205763.P16765748093415784041

`A205768(∑[n+2]+4)`
-/

namespace A205763.P16765748093415784041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205763.P16765748093415784041

/-! ## A205763.P1145833673689559862

`A205768(A167614(n+1))+A011742(n)`
-/

namespace A205763.P1145833673689559862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A167614 (n + 1)).toNat + A011742 n

end

end A205763.P1145833673689559862

/-! ## A205763.P2494203706784330969

`A205768(A167614(n+1))+A061858(n)`
-/

namespace A205763.P2494203706784330969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A167614 (n + 1)).toNat + A061858 n

end

end A205763.P2494203706784330969

/-! ## A205763.P11775448634972622883

`A205768(A167614(n+1))+A185037(n)`
-/

namespace A205763.P11775448634972622883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A167614 (n + 1)).toNat + A185037 n

end

end A205763.P11775448634972622883

/-! ## A205763.P13050686539831139803

`or(A000007(n), A205768(A167614(n+1)))`
-/

namespace A205763.P13050686539831139803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A205768 (A167614 (n + 1)).toNat)

end

end A205763.P13050686539831139803

/-!
# A205764: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A205764, there is no canonical definition to state claims against.
-/

/-! ## A205764.P3191279028601048599

`A205768(A167614(n+2)+1)`
-/

namespace A205764.P3191279028601048599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A167614 (n + 2) + 1).toNat

end

end A205764.P3191279028601048599

/-! ## A205764.P10529601376054915287

`A205768(A000217(n+3)+4)`
-/

namespace A205764.P10529601376054915287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A000217 (n + 3) + 4).toNat

end

end A205764.P10529601376054915287

/-! ## A205764.P17660070913996197928

`A205768(Δ[A264443(n)-n²])`
-/

namespace A205764.P17660070913996197928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (f1 (n + 1) - f1 n).toNat

end

end A205764.P17660070913996197928

/-!
# A205765: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A205765, there is no canonical definition to state claims against.
-/

/-! ## A205765.P11845915014142130545

`A205768(Δ[A264443(n)])`
-/

namespace A205765.P11845915014142130545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (f1 (n + 1) - f1 n).toNat

end

end A205765.P11845915014142130545

/-! ## A205765.P13410759341648743608

`A205768(A374005(n+1))`
-/

namespace A205765.P13410759341648743608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A374005 (n + 1)).toNat

end

end A205765.P13410759341648743608

/-! ## A205765.P8619350140547968830

`A205768(eq[5, A200370(n+1)])`
-/

namespace A205765.P8619350140547968830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205765.P8619350140547968830

/-! ## A205765.P1301190582896723693

`A205768(A264443(n+1)-A264443(n))`
-/

namespace A205765.P1301190582896723693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A264443 (n + 1) - A264443 n).toNat

end

end A205765.P1301190582896723693

/-!
# A205766: 

The programs for A205766, there is no canonical definition to state claims against.
-/

/-! ## A205766.P1125551091864011112

`A205768(A167614(n+4)+3)`
-/

namespace A205766.P1125551091864011112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A167614 (n + 4) + 3).toNat

end

end A205766.P1125551091864011112

/-! ## A205766.P2354037231212489796

`A205768(A000096(n+5)+1-n)`
-/

namespace A205766.P2354037231212489796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A000096 (n + 5) + 1 - (n : ℤ)).toNat

end

end A205766.P2354037231212489796

/-! ## A205766.P2460639708244496958

`A205768(A052905(n+3))`
-/

namespace A205766.P2460639708244496958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A052905 (n + 3)).toNat

end

end A205766.P2460639708244496958

/-! ## A205766.P17595973246756019548

`A205768(A000096(n+5)-4)`
-/

namespace A205766.P17595973246756019548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A000096 (n + 5) - 4).toNat

end

end A205766.P17595973246756019548

/-!
# A205767: 

The programs for A205767, there is no canonical definition to state claims against.
-/

/-! ## A205767.P1939906339489536338

`A205768(A052905(n+4)-1)`
-/

namespace A205767.P1939906339489536338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A052905 (n + 4) - 1).toNat

end

end A205767.P1939906339489536338

/-! ## A205767.P14951802556210179522

`A205768(A000217(n+7)-6)`
-/

namespace A205767.P14951802556210179522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205768 (A000217 (n + 7) - 6).toNat

end

end A205767.P14951802556210179522

/-!
# A205770: Powers of fifth root of 100, rounded to the nearest integer.

The programs for A205770, the canonical program `A205770.P4417614791216105302` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205770 has offset 0).

The definition of A205770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205770.P4417614791216105302

`A018142(2*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A205770

/-- `A018142(2*n)` -/
def P4417614791216105302.Spec : Prop :=
  ∀ n, P4417614791216105302.a n = A205770 n

theorem P4417614791216105302.correct : P4417614791216105302.Spec := by
  intro n
  simp only [A205770]

end A205770

/-! ## A205770.P5513601231319491088

`record[A018142(and(n, n+1))]`
-/

namespace A205770.P5513601231319491088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018142 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205770.P5513601231319491088

namespace A205770

/-- `record[A018142(and(n, n+1))]` -/
def P5513601231319491088.Spec : Prop :=
  ∀ n, P5513601231319491088.a n = A205770 n

end A205770

/-! ## A205770.P10125337832711218364

`record[A018142(A153733(n))]`
-/

namespace A205770.P10125337832711218364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018142 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205770.P10125337832711218364

namespace A205770

/-- `record[A018142(A153733(n))]` -/
def P10125337832711218364.Spec : Prop :=
  ∀ n, P10125337832711218364.a n = A205770 n

end A205770

/-! ## A205770.P1243103762835014386

`record[A018142(n)/A001511(n+1)]`
-/

namespace A205770.P1243103762835014386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018142 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205770.P1243103762835014386

namespace A205770

/-- `record[A018142(n)/A001511(n+1)]` -/
def P1243103762835014386.Spec : Prop :=
  ∀ n, P1243103762835014386.a n = (A205770 n : ℚ)

end A205770

/-! ## A205770.P16337257187341850498

`record[A018142(sqrt(A181318(n+1))-1)]`
-/

namespace A205770.P16337257187341850498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018142 (SequenceMachineLib.roundAway (Real.sqrt (A181318 (n + 1) : ℝ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205770.P16337257187341850498

namespace A205770

/-- `record[A018142(sqrt(A181318(n+1))-1)]` -/
def P16337257187341850498.Spec : Prop :=
  ∀ n, P16337257187341850498.a n = A205770 n

end A205770

/-! ## A205770.P17066714916324429946

`round(root((10^n)², 5))`
-/

namespace A205770.P17066714916324429946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((10 ^ n) ^ 2 : ℝ) ^ (1 / (5 : ℝ)))

end

end A205770.P17066714916324429946

namespace A205770

/-- `round(root((10^n)², 5))` -/
def P17066714916324429946.Spec : Prop :=
  ∀ n, P17066714916324429946.a n = A205770 n

end A205770

/-!
# A205772: G.f. satisfies: A(x) = 1/Product_{n>=1} (1 - 2*x^n*A(x^n)).

The programs for A205772, there is no canonical definition to state claims against.
-/

/-! ## A205772.P11012407817242440030

`A156253(or(1, A063016(n)))`
-/

namespace A205772.P11012407817242440030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (Int.lor 1 (A063016 n)).toNat

end

end A205772.P11012407817242440030

/-! ## A205772.P4387313213966012771

`A048760(A275861(n))+∑{p}[n+1, gcd(n, #)]`
-/

namespace A205772.P4387313213966012771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A275861 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A205772.P4387313213966012771

/-!
# A205773: G.f. satisfies: A(x) = 1/Product_{n>=1} (1 - 3*x^n*A(x^n)).

The programs for A205773, there is no canonical definition to state claims against.
-/

/-! ## A205773.P1968609895959966006

`A194206(A006442(n)+n)+1`
-/

namespace A205773.P1968609895959966006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194206 (A006442 n + (n : ℤ)).toNat + 1

end

end A205773.P1968609895959966006

/-!
# A205774: G.f. satisfies: A(x) = 1/Product_{n>=1} (1 - x^n*A(x^n)^3).

The programs for A205774, there is no canonical definition to state claims against.
-/

/-! ## A205774.P4164094008907471343

`A008624(A278429(n)+1+n)`
-/

namespace A205774.P4164094008907471343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A278429 n + 1 + (n : ℤ)).toNat

end

end A205774.P4164094008907471343

/-!
# A205775: G.f. satisfies: A(x) = 1/Product_{n>=1} (1 - x^n*A(x^n)^n).

The programs for A205775, there is no canonical definition to state claims against.
-/

/-! ## A205775.P15638381538467885698

`A140199(A049942(n+1))`
-/

namespace A205775.P15638381538467885698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140199 (A049942 (n + 1)).toNat

end

end A205775.P15638381538467885698

/-! ## A205775.P6574489088744259149

`A140199(A122391(n+1))`
-/

namespace A205775.P6574489088744259149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140199 (A122391 (n + 1)).toNat

end

end A205775.P6574489088744259149

/-! ## A205775.P4938043476986635576

`A140199(A165929(n+1))`
-/

namespace A205775.P4938043476986635576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140199 (A165929 (n + 1)).toNat

end

end A205775.P4938043476986635576

/-!
# A205776: Primes of the form 2*6^n+1.

The programs for A205776, there is no canonical definition to state claims against.
-/

/-! ## A205776.P2153728372685999667

`A199317(A120023(n+1))`
-/

namespace A205776.P2153728372685999667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199317 (A120023 (n + 1)).toNat

end

end A205776.P2153728372685999667

/-! ## A205776.P13306718148299554560

`A164559(A120023(n+1)+1)+2`
-/

namespace A205776.P13306718148299554560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164559 (A120023 (n + 1) + 1).toNat + 2

end

end A205776.P13306718148299554560

/-!
# A205779: Least positive integer j such that n divides C(k)-C(j), where k, as in A205778, is the least number for which there is such a j, and C=A000108 (Catalan numbers).

The programs for A205779, there is no canonical definition to state claims against.
-/

/-! ## A205779.P5808706687840043974

`gcd(A154798(n+1), A187201(A208118(n+3)))`
-/

namespace A205779.P5808706687840043974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154798 (n + 1)) (A187201 (A208118 (n + 3)).toNat)

end

end A205779.P5808706687840043974

/-! ## A205779.P10526832318872367031

`A340035(A153335(n+1)+A060749(n+1))`
-/

namespace A205779.P10526832318872367031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (A153335 (n + 1) + A060749 (n + 1)).toNat

end

end A205779.P10526832318872367031

/-! ## A205779.P10334576974535987474

`A381454(A072981(n)*A097751(n+2)+2)`
-/

namespace A205779.P10334576974535987474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381454 (A072981 n * A097751 (n + 2) + 2).toNat

end

end A205779.P10334576974535987474

/-! ## A205779.P11662978610808285325

`gcd(A001222(A111981(n+1)), A129151(2*n))`
-/

namespace A205779.P11662978610808285325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A111981 (n + 1)).toNat) (A129151 (2 * n))

end

end A205779.P11662978610808285325

/-! ## A205779.P15508434123104248082

`A001222(or(A196527(n+1), A196570(n+1)))`
-/

namespace A205779.P15508434123104248082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A196527 (n + 1)) (A196570 (n + 1))).toNat

end

end A205779.P15508434123104248082

/-!
# A205780: Least positive integer k such that n divides C(k)-C(j) for some j in [1,k-1], where C=A007598 (squared Fibonacci numbers).

The programs for A205780, there is no canonical definition to state claims against.
-/

/-! ## A205780.P15278469798321316137

`A003057(n+4)-A348444(A036561(2*n+3))`
-/

namespace A205780.P15278469798321316137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 4) - A348444 (A036561 (2 * n + 3)).toNat

end

end A205780.P15278469798321316137

/-! ## A205780.P4047075898764783228

`A335880(n+1)+A067018(A211618(n))`
-/

namespace A205780.P4047075898764783228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335880 (n + 1) + A067018 (A211618 n).toNat

end

end A205780.P4047075898764783228

/-! ## A205780.P16055572491689544176

`A320606(A166350(n+1))+A003056(n+2)`
-/

namespace A205780.P16055572491689544176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320606 (A166350 (n + 1)).toNat + A003056 (n + 2)

end

end A205780.P16055572491689544176

/-! ## A205780.P1352307514575736806

`A347871(A001006(n))+A165123(2*(n+1))`
-/

namespace A205780.P1352307514575736806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A001006 n).toNat + A165123 (2 * (n + 1))

end

end A205780.P1352307514575736806

/-!
# A205781: Least positive integer j such that n divides C(k)-C(j), where k, as in A205780, is the least number for which there is such a j, and C=A007598 (squared Fibonacci numbers).

The programs for A205781, there is no canonical definition to state claims against.
-/

/-! ## A205781.P7897490751994913237

`A102669(5*A327766(n))`
-/

namespace A205781.P7897490751994913237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (5 * A327766 n).toNat

end

end A205781.P7897490751994913237

/-! ## A205781.P9249157089203824517

`∏{e}[A265187(A004730(n)), #]`
-/

namespace A205781.P9249157089203824517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A004730 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A205781.P9249157089203824517

/-! ## A205781.P13880436226781562828

`A102669(A008587(A327766(n)))`
-/

namespace A205781.P13880436226781562828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A008587 (A327766 n).toNat).toNat

end

end A205781.P13880436226781562828

/-! ## A205781.P14257191548929137673

`A043562(A027750(n+4)^A008621(n))`
-/

namespace A205781.P14257191548929137673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (SequenceMachineLib.roundAway ((A027750 (n + 4) : ℚ) ^ (A008621 n : ℤ))).toNat

end

end A205781.P14257191548929137673

/-!
# A205782: Least positive integer k such that n divides C(k)-C(j) for some j in [1,k-1], where C=A205824.

The programs for A205782, there is no canonical definition to state claims against.
-/

/-! ## A205782.P5892154973446193997

`A205784(n+1)+A043285(A060961(n))`
-/

namespace A205782.P5892154973446193997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205784 (n + 1) + A043285 (A060961 n).toNat

end

end A205782.P5892154973446193997

/-! ## A205782.P12851408717827518245

`A205784(n+1)+A043285(A006327(n+5))`
-/

namespace A205782.P12851408717827518245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205784 (n + 1) + A043285 (A006327 (n + 5)).toNat

end

end A205782.P12851408717827518245

/-! ## A205782.P12482671311396969732

`A321650(A135899(n))+A205784(n+1)`
-/

namespace A205782.P12482671311396969732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321650 (A135899 n).toNat + A205784 (n + 1)

end

end A205782.P12482671311396969732

/-! ## A205782.P2495772729643619890

`xor(A075439(A329053(n)), A131818(n+4))`
-/

namespace A205782.P2495772729643619890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A075439 (A329053 n).toNat) (A131818 (n + 4))

end

end A205782.P2495772729643619890

/-! ## A205782.P14379345866094264876

`A331686(n+1)%A318153(n+4)+1`
-/

namespace A205782.P14379345866094264876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331686 (n + 1)) (A318153 (n + 4)) + 1

end

end A205782.P14379345866094264876

/-!
# A205783: Complement of A206074, a coding of reducible polynomials over Q (with coefficients 0 or 1).

The programs for A205783, there is no canonical definition to state claims against.
-/

/-! ## A205783.P16477801135068178091

`comp[n*A257000(n)]`
-/

namespace A205783.P16477801135068178091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A205783.P16477801135068178091

/-! ## A205783.P15360124622896862090

`eq[0, A257000(n+1)]+1`
-/

namespace A205783.P15360124622896862090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205783.P15360124622896862090

/-! ## A205783.P7367342558381468439

`comp[A206074(n+1)-1]+1`
-/

namespace A205783.P7367342558381468439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A205783.P7367342558381468439

/-! ## A205783.P8629685985135841829

`comp[A305430(n+1)-1]+1`
-/

namespace A205783.P8629685985135841829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305430 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A205783.P8629685985135841829

/-! ## A205783.P12041130786760593206

`A000007(n)+comp[A305429(n+1)]`
-/

namespace A205783.P12041130786760593206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A205783.P12041130786760593206

/-! ## A205783.P13748043039971012204

`eq[1, A260443(a(n-1)*A257000(n))]` with `a(0)=5`
-/

namespace A205783.P13748043039971012204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A260443 (f2 (n - 1) * A257000 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205783.P13748043039971012204

/-! ## A205783.P12272287743596914461

`eq[A000038(n), A257000(n)]`
-/

namespace A205783.P12272287743596914461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205783.P12272287743596914461

/-! ## A205783.P3758326904317291957

`eq[A000007(n), A257000(n)]`
-/

namespace A205783.P3758326904317291957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205783.P3758326904317291957

/-! ## A205783.P7925716353199913020

`eq[A019590(n+2), A257000(n)]`
-/

namespace A205783.P7925716353199913020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205783.P7925716353199913020

/-! ## A205783.P5770819703843810649

`lt[A257000(n), char[A256992(n+1)]]`
-/

namespace A205783.P5770819703843810649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A205783.P5770819703843810649

/-! ## A205783.P1323676900977220066

`lt[A257000(n), char[A256990(n+1)+1]]`
-/

namespace A205783.P1323676900977220066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256990 (n + 1) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A205783.P1323676900977220066

/-! ## A205783.P1018204932399100084

`lt[A257000(n), char[A256990(n+2)]]`
-/

namespace A205783.P1018204932399100084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256990 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A205783.P1018204932399100084

/-!
# A205784: Least positive integer j such that n divides C(k)-C(j), where k, as in A205782, is the least number for which there is such a j, and C=A205824.

The programs for A205784, there is no canonical definition to state claims against.
-/

/-! ## A205784.P7979652159434472184

`A205782(n+1)-A043285(A060961(n))`
-/

namespace A205784.P7979652159434472184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205782 (n + 1) - A043285 (A060961 n).toNat

end

end A205784.P7979652159434472184

/-! ## A205784.P3767145741393153424

`A092307(A016754(n))%A205782(n+1)`
-/

namespace A205784.P3767145741393153424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092307 (A016754 n).toNat) (A205782 (n + 1))

end

end A205784.P3767145741393153424

/-! ## A205784.P17965821365628482570

`A092307(A005408(n)²)%A205782(n+1)`
-/

namespace A205784.P17965821365628482570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092307 (A005408 n ^ 2).toNat) (A205782 (n + 1))

end

end A205784.P17965821365628482570

/-! ## A205784.P4304156822867627863

`A205782(n+1)-A321650(A135899(n))`
-/

namespace A205784.P4304156822867627863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205782 (n + 1) - A321650 (A135899 n).toNat

end

end A205784.P4304156822867627863

/-! ## A205784.P14741418382586970362

`A060651(A000045(n))%A205782(n+1)`
-/

namespace A205784.P14741418382586970362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060651 (A000045 n).toNat) (A205782 (n + 1))

end

end A205784.P14741418382586970362

/-!
# A205786: Least positive integer j such that n divides C(k)-C(j), where k, as in A205785, is the least number for which there is such a j, and C=A205825.

The programs for A205786, there is no canonical definition to state claims against.
-/

/-! ## A205786.P5090741781386320743

`A010883(xor(n+1, A290836(n)))`
-/

namespace A205786.P5090741781386320743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (Int.xor (n + 1 : ℤ) (A290836 n)).toNat

end

end A205786.P5090741781386320743

/-!
# A205787: Least positive integer k such that n divides k^3-j^3 for some j in [1,k-1].

The programs for A205787, there is no canonical definition to state claims against.
-/

/-! ## A205787.P13081901472042627659

`A046530(n+1)-A339265(A006720(n))`
-/

namespace A205787.P13081901472042627659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1) - A339265 (A006720 n).toNat

end

end A205787.P13081901472042627659

/-!
# A205788: Least positive integer j such that n divides k^3-j^3, where k, as in A205787, is the least number for which there is such a j.

The programs for A205788, there is no canonical definition to state claims against.
-/

/-! ## A205788.P10194567351597327682

`A159631(A320251(A320251(n))+A010873(n))`
-/

namespace A205788.P10194567351597327682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A320251 (A320251 n).toNat + A010873 n).toNat

end

end A205788.P10194567351597327682

/-! ## A205788.P9463752464987285809

`gcd(2, A002187(A174342(n)))`
-/

namespace A205788.P9463752464987285809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002187 (A174342 n).toNat)

end

end A205788.P9463752464987285809

/-! ## A205788.P3714473108024383657

`A040001(A319164(3*n+1))`
-/

namespace A205788.P3714473108024383657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A319164 (3 * n + 1)).toNat

end

end A205788.P3714473108024383657

/-! ## A205788.P15865954465466013685

`A177704(or(n, A283784(n+1)))`
-/

namespace A205788.P15865954465466013685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (Int.lor (n : ℤ) (A283784 (n + 1))).toNat

end

end A205788.P15865954465466013685

/-! ## A205788.P535920759607602564

`A267417(A100254(3*n+4))+1`
-/

namespace A205788.P535920759607602564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (A100254 (3 * n + 4)).toNat + 1

end

end A205788.P535920759607602564

/-!
# A205789: Least positive integer k such that n divides k^4-j^4 for some j in [1,k-1].

The programs for A205789, there is no canonical definition to state claims against.
-/

/-! ## A205789.P4358969829357690648

`A205790(n+1)+A000034(A007088(n))`
-/

namespace A205789.P4358969829357690648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (n + 1) + A000034 (A007088 n).toNat

end

end A205789.P4358969829357690648

/-! ## A205789.P15514043120024588228

`A205790(n+1)+A040001(A274761(n))`
-/

namespace A205789.P15514043120024588228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (n + 1) + A040001 (A274761 n).toNat

end

end A205789.P15514043120024588228

/-! ## A205789.P6394278803938973440

`A205790(n+1)+A002828(A000079(n))`
-/

namespace A205789.P6394278803938973440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (n + 1) + A002828 (A000079 n).toNat

end

end A205789.P6394278803938973440

/-! ## A205789.P3900526264781205495

`A205790(A187829(n+1))+A000034(n)`
-/

namespace A205789.P3900526264781205495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (A187829 (n + 1)).toNat + A000034 n

end

end A205789.P3900526264781205495

/-! ## A205789.P14753615924298618448

`A205790(n+1)+A040001(A280412(n))`
-/

namespace A205789.P14753615924298618448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (n + 1) + A040001 (A280412 n).toNat

end

end A205789.P14753615924298618448

/-!
# A205790: Least positive integer j such that n divides k^4-j^4, where k, as in A205789, is the least number for which there is such a j.

The programs for A205790, there is no canonical definition to state claims against.
-/

/-! ## A205790.P14392610634823857860

`∏{e}[A056487(A070673(n+1)), #]`
-/

namespace A205790.P14392610634823857860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (A070673 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A205790.P14392610634823857860

/-! ## A205790.P7635455976966183773

`A205789(n+1)-A000034(A007088(n))`
-/

namespace A205790.P7635455976966183773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205789 (n + 1) - A000034 (A007088 n).toNat

end

end A205790.P7635455976966183773

/-! ## A205790.P17672664546146942200

`A205789(n+1)-A040001(A274761(n))`
-/

namespace A205790.P17672664546146942200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205789 (n + 1) - A040001 (A274761 n).toNat

end

end A205790.P17672664546146942200

/-! ## A205790.P5011599545893804336

`A004526(A228710(A022346(n))+A070673(n+1))`
-/

namespace A205790.P5011599545893804336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A228710 (A022346 n).toNat + A070673 (n + 1)).toNat

end

end A205790.P5011599545893804336

/-! ## A205790.P3903006892650232041

`gcd(A350026(n+1), A356332(floor(n/2)))`
-/

namespace A205790.P3903006892650232041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A350026 (n + 1)) (A356332 ⌊(n : ℚ) / 2⌋.toNat)

end

end A205790.P3903006892650232041

/-!
# A205792: Least positive integer j such that n divides k^5-j^5, where k, as in A205791, is the least number for which there is such a j.

The programs for A205792, there is no canonical definition to state claims against.
-/

/-! ## A205792.P9929913610743740631

`A053164(6*(n+1)*∏{p}[n+1, #])`
-/

namespace A205792.P9929913610743740631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (6 * ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)))

end

end A205792.P9929913610743740631

/-! ## A205792.P7040677680367248042

`gcd((n+1)/∏{p}[n+1, #], A006851(n+4))`
-/

namespace A205792.P7040677680367248042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A006851 (n + 4))

end

end A205792.P7040677680367248042

/-! ## A205792.P8598781017090824851

`gcd(A306764(n), A362601(n+1))`
-/

namespace A205792.P8598781017090824851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306764 n) (A362601 (n + 1))

end

end A205792.P8598781017090824851

/-! ## A205792.P4270973147889836552

`gcd(6, A000188(A000326(2*(n+1))))`
-/

namespace A205792.P4270973147889836552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A000188 (A000326 (2 * (n + 1))).toNat)

end

end A205792.P4270973147889836552

/-! ## A205792.P11348613061384349642

`gcd(A064495(n+1), A308993(n+1))`
-/

namespace A205792.P11348613061384349642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064495 (n + 1)) (A308993 (n + 1))

end

end A205792.P11348613061384349642

/-!
# A205793: Least positive integer k such that n divides C(k)-C(j) for some j in [1,k-1], where C=A002808 (composite numbers).

The programs for A205793, there is no canonical definition to state claims against.
-/

/-! ## A205793.P5001473486916248894

`A172104(n+1)+A033762(A000079(n))`
-/

namespace A205793.P5001473486916248894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172104 (n + 1) + A033762 (A000079 n).toNat

end

end A205793.P5001473486916248894

/-!
# A205794: Least positive integer j such that n divides C(k)-C(j) , where k, as in A205793, is the least number for which there is such a j, and C=A002808 (composite numbers).

The programs for A205794, there is no canonical definition to state claims against.
-/

/-! ## A205794.P13773722977042964893

`A205793(n+1)-∑[char[A002808(n+1)-4]]`
-/

namespace A205794.P13773722977042964893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205793 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A205794.P13773722977042964893

/-! ## A205794.P4510754369992897470

`round(3/(Δ[A205793(n+1)]+3))`
-/

namespace A205794.P4510754369992897470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (f1 (n + 1) - f1 n + 3 : ℚ))

end

end A205794.P4510754369992897470

/-! ## A205794.P12149442385619741796

`A000048(3-Δ[A205793(n+1)])`
-/

namespace A205794.P12149442385619741796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A205794.P12149442385619741796

/-! ## A205794.P6700506476473463990

`A000055(3-Δ[A205793(n+1)])`
-/

namespace A205794.P6700506476473463990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A205794.P6700506476473463990

/-! ## A205794.P513205622399066910

`A011768(5-Δ[A205793(n+1)])`
-/

namespace A205794.P513205622399066910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011768 (5 - (f1 (n + 1) - f1 n)).toNat

end

end A205794.P513205622399066910

/-! ## A205794.P10438758344494614239

`A205790(5-Δ[A205793(n+1)])`
-/

namespace A205794.P10438758344494614239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (5 - (f1 (n + 1) - f1 n)).toNat

end

end A205794.P10438758344494614239

/-! ## A205794.P16738528642073695950

`ceil(A155875(n+1)%A020705(n)/2)`
-/

namespace A205794.P16738528642073695950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A155875 (n + 1)) (A020705 n) : ℚ) / 2⌉

end

end A205794.P16738528642073695950

/-! ## A205794.P8278096259095387605

`A000463(A155875(n+1)%A020705(n))`
-/

namespace A205794.P8278096259095387605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.tmod (A155875 (n + 1)) (A020705 n)).toNat

end

end A205794.P8278096259095387605

/-! ## A205794.P12043543576803247052

`A103609((A155875(n+1)-(n+1))%A023202(n+1))`
-/

namespace A205794.P12043543576803247052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (Int.tmod (A155875 (n + 1) - (n + 1 : ℤ)) (A023202 (n + 1))).toNat

end

end A205794.P12043543576803247052

/-!
# A205796: Numbers n such that 4*17^n - 1 is prime.

The programs for A205796, there is no canonical definition to state claims against.
-/

/-! ## A205796.P8017418893547515876

`A225523(A313099(n)+A281777(n))`
-/

namespace A205796.P8017418893547515876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225523 (A313099 n + A281777 n).toNat

end

end A205796.P8017418893547515876

/-!
# A205799: E.g.f.: exp( Sum_{n>=1} x^(n*(n+1)/2) / (n*(n+1)/2)! ).

The programs for A205799, there is no canonical definition to state claims against.
-/

/-! ## A205799.P4387952949561862991

`∏{p}[A275427(n)², #]+Δ[A275425(n)]`
-/

namespace A205799.P4387952949561862991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275427 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A205799.P4387952949561862991

/-! ## A205799.P6747852611038284235

`A275427(A073790(n))+Δ[A275425(n)]`
-/

namespace A205799.P6747852611038284235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275427 (A073790 n).toNat + (f1 (n + 1) - f1 n)

end

end A205799.P6747852611038284235

/-! ## A205799.P7398038784681925168

`A171561(A030033(n))`
-/

namespace A205799.P7398038784681925168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (A030033 n).toNat

end

end A205799.P7398038784681925168

/-! ## A205799.P7565153941362013917

`A054846(A032739(n²))`
-/

namespace A205799.P7565153941362013917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A032739 (n ^ 2)).toNat

end

end A205799.P7565153941362013917

