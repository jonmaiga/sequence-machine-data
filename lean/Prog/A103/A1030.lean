import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C001
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
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A103000: Numbers k such that 4*10^k + 8*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103000, there is no canonical definition to state claims against.
-/

/-! ## A103000.P8228851786236313659

`lt[A094683(n), A031347(A254319(n+1))]`
-/

namespace A103000.P8228851786236313659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A254319 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103000.P8228851786236313659

/-!
# A103001: Numbers k such that 5*10^k - 9 is prime.

The programs for A103001, there is no canonical definition to state claims against.
-/

/-! ## A103001.P11511169997692040691

`A101738(n+1)+1`
-/

namespace A103001.P11511169997692040691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101738 (n + 1) + 1

end

end A103001.P11511169997692040691

/-! ## A103001.P1794162077819067549

`eq[A002110(A025427(2*n+3)), A226762(n+1)]`
-/

namespace A103001.P1794162077819067549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A025427 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103001.P1794162077819067549

/-!
# A103002: Numbers k such that 5*10^k - 7 is prime.

The programs for A103002, there is no canonical definition to state claims against.
-/

/-! ## A103002.P17755424524920565749

`A101739(n+1)+1`
-/

namespace A103002.P17755424524920565749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101739 (n + 1) + 1

end

end A103002.P17755424524920565749

/-!
# A103003: Numbers k such that 5*10^k - 3 is prime.

The programs for A103003, there is no canonical definition to state claims against.
-/

/-! ## A103003.P15241263382938402510

`A101740(A028310(n))+A057427(n)`
-/

namespace A103003.P15241263382938402510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101740 (A028310 n).toNat + A057427 n

end

end A103003.P15241263382938402510

/-! ## A103003.P5237840238751403847

`A178334(n)+A101740(A028310(n))`
-/

namespace A103003.P5237840238751403847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101740 (A028310 n).toNat

end

end A103003.P5237840238751403847

/-! ## A103003.P5724197776617795894

`A101740(A028310(n))-A057428(n)`
-/

namespace A103003.P5724197776617795894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101740 (A028310 n).toNat - A057428 n

end

end A103003.P5724197776617795894

/-! ## A103003.P8640068321059671503

`A101740(A028310(n))+char[A007318(n)]`
-/

namespace A103003.P8640068321059671503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101740 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103003.P8640068321059671503

/-! ## A103003.P5960836492386760528

`A101740(A028310(n))+A000040(n+1)%2`
-/

namespace A103003.P5960836492386760528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101740 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A103003.P5960836492386760528

/-!
# A103004: Numbers k such that 5*10^k + 9 is prime.

The programs for A103004, there is no canonical definition to state claims against.
-/

/-! ## A103004.P17803055010577214452

`A101569(n+1)+1`
-/

namespace A103004.P17803055010577214452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101569 (n + 1) + 1

end

end A103004.P17803055010577214452

/-!
# A103005: Numbers k such that 5*10^k + R_k + 2 is a prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103005, there is no canonical definition to state claims against.
-/

/-! ## A103005.P191450193322835759

`A101570(n+1)+1`
-/

namespace A103005.P191450193322835759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101570 (n + 1) + 1

end

end A103005.P191450193322835759

/-!
# A103007: Numbers k such that 5*10^k + R_k + 8 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103007, there is no canonical definition to state claims against.
-/

/-! ## A103007.P7414567832540150595

`A101572(A028310(n))+ceil(sin(n)²)`
-/

namespace A103007.P7414567832540150595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101572 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A103007.P7414567832540150595

/-! ## A103007.P11414613115246705628

`A101572(round(sqrt(n²+1)))-A057428(n)`
-/

namespace A103007.P11414613115246705628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101572 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A057428 n

end

end A103007.P11414613115246705628

/-! ## A103007.P12829820180555140559

`A151843(A024012(2*n+1)+A000217(n))+n`
-/

namespace A103007.P12829820180555140559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (A024012 (2 * n + 1) + A000217 n).toNat + (n : ℤ)

end

end A103007.P12829820180555140559

/-!
# A103008: Numbers k such that 5*10^k + 2*R_k - 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103008, there is no canonical definition to state claims against.
-/

/-! ## A103008.P12857261918506388994

`A101573(n+1)+1`
-/

namespace A103008.P12857261918506388994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101573 (n + 1) + 1

end

end A103008.P12857261918506388994

/-!
# A103009: Numbers k such that 5*10^k + 2*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103009, there is no canonical definition to state claims against.
-/

/-! ## A103009.P10386489405208512664

`A101574(n+1)+1`
-/

namespace A103009.P10386489405208512664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101574 (n + 1) + 1

end

end A103009.P10386489405208512664

/-! ## A103009.P14143073743448484095

`∑[A112911(Δ[A002524(n)])]`
-/

namespace A103009.P14143073743448484095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112911 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103009.P14143073743448484095

/-!
# A103010: Numbers k such that 5*10^k + 2*R_k + 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103010, there is no canonical definition to state claims against.
-/

/-! ## A103010.P1552334879705643857

`A101575(n+1)+1`
-/

namespace A103010.P1552334879705643857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101575 (n + 1) + 1

end

end A103010.P1552334879705643857

/-! ## A103010.P7716297331493667814

`A020725(A101575(n+1))`
-/

namespace A103010.P7716297331493667814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101575 (n + 1)).toNat

end

end A103010.P7716297331493667814

/-!
# A103011: Numbers k such that 5*10^k + 2*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103011, there is no canonical definition to state claims against.
-/

/-! ## A103011.P8887918203840919830

`A101576(n+1)+1`
-/

namespace A103011.P8887918203840919830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101576 (n + 1) + 1

end

end A103011.P8887918203840919830

/-!
# A103012: Numbers k such that 5*10^k + 3*R_k + 6 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103012, there is no canonical definition to state claims against.
-/

/-! ## A103012.P15509068076991136733

`A101577(A028310(n))+ceil(sin(n)²)`
-/

namespace A103012.P15509068076991136733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101577 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A103012.P15509068076991136733

/-! ## A103012.P1706354721907791165

`A178334(n)+A101577(round(sqrt(n²+1)))`
-/

namespace A103012.P1706354721907791165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101577 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A103012.P1706354721907791165

/-! ## A103012.P3258021240083084813

`A101577(round(sqrt(n²+1)))-A057428(n)`
-/

namespace A103012.P3258021240083084813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101577 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A057428 n

end

end A103012.P3258021240083084813

/-! ## A103012.P6916886855340670351

`A136400(n)+A101577(A028310(n))`
-/

namespace A103012.P6916886855340670351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n + A101577 (A028310 n).toNat

end

end A103012.P6916886855340670351

/-! ## A103012.P10101243601636379189

`or(A101577(A028310(n)), A178334(n))`
-/

namespace A103012.P10101243601636379189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101577 (A028310 n).toNat) (A178334 n)

end

end A103012.P10101243601636379189

/-!
# A103013: Numbers k such that 5*10^k + 4*R_k - 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103013, there is no canonical definition to state claims against.
-/

/-! ## A103013.P5614416350455776640

`eq[(n%2)^n+n, A215244(∪[2*n², n*(n+2)])]`
-/

namespace A103013.P5614416350455776640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 (SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103013.P5614416350455776640

/-!
# A103014: Numbers k such that 5*10^k + 4*R_k - 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103014, there is no canonical definition to state claims against.
-/

/-! ## A103014.P7417161388013520424

`A101579(n+1)+1`
-/

namespace A103014.P7417161388013520424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101579 (n + 1) + 1

end

end A103014.P7417161388013520424

/-! ## A103014.P15907224622564468847

`A373416(A145153(2*n+1)+∑[C(n, 4)+1])`
-/

namespace A103014.P15907224622564468847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373416 (A145153 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A103014.P15907224622564468847

/-! ## A103014.P7578122933670953115

`lcm(A025474(n+1), A117331(A271394(n+1)))+1`
-/

namespace A103014.P7578122933670953115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025474 (n + 1)) (A117331 (A271394 (n + 1)).toNat) + 1

end

end A103014.P7578122933670953115

/-!
# A103015: Numbers n such that 5*10^n + 4*R_n + 3 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103015, there is no canonical definition to state claims against.
-/

/-! ## A103015.P7228609547996675821

`A101580(n+1)+1`
-/

namespace A103015.P7228609547996675821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101580 (n + 1) + 1

end

end A103015.P7228609547996675821

/-! ## A103015.P15266097725722269161

`A020725(A101580(n+1))`
-/

namespace A103015.P15266097725722269161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101580 (n + 1)).toNat

end

end A103015.P15266097725722269161

/-!
# A103016: Numbers n such that 5*10^n + 4*R_n + 5 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103016, there is no canonical definition to state claims against.
-/

/-! ## A103016.P5008048616173649640

`A101581(n+1)+1`
-/

namespace A103016.P5008048616173649640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101581 (n + 1) + 1

end

end A103016.P5008048616173649640

/-! ## A103016.P11294471030434498023

`A061800(A101581(n+1))`
-/

namespace A103016.P11294471030434498023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A101581 (n + 1)).toNat

end

end A103016.P11294471030434498023

/-!
# A103017: Numbers n such that 5*10^n + 6*R_n - 3 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103017, there is no canonical definition to state claims against.
-/

/-! ## A103017.P8252279492169217048

`A101582(A028310(n))+A057427(n)`
-/

namespace A103017.P8252279492169217048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101582 (A028310 n).toNat + A057427 n

end

end A103017.P8252279492169217048

/-! ## A103017.P5212188867070568896

`A178334(n)+A101582(A028310(n))`
-/

namespace A103017.P5212188867070568896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101582 (A028310 n).toNat

end

end A103017.P5212188867070568896

/-! ## A103017.P3016805040468377619

`A101582(A028310(n))-A057428(n)`
-/

namespace A103017.P3016805040468377619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101582 (A028310 n).toNat - A057428 n

end

end A103017.P3016805040468377619

/-! ## A103017.P16045935818666563693

`A101582(A028310(n))+char[A007318(n)]`
-/

namespace A103017.P16045935818666563693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101582 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103017.P16045935818666563693

/-! ## A103017.P16867895829010226805

`A101582(A028310(n))+A000040(n+1)%2`
-/

namespace A103017.P16867895829010226805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101582 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A103017.P16867895829010226805

/-!
# A103018: Numbers n such that 5*10^n + 6*R_n + 3 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103018, there is no canonical definition to state claims against.
-/

/-! ## A103018.P9547664591598187188

`A101583(n+1)+1`
-/

namespace A103018.P9547664591598187188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101583 (n + 1) + 1

end

end A103018.P9547664591598187188

/-!
# A103019: Numbers n such that 5*10^n + 7*R_n - 6 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103019, there is no canonical definition to state claims against.
-/

/-! ## A103019.P16622163980647967574

`A101584(n+1)+1`
-/

namespace A103019.P16622163980647967574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101584 (n + 1) + 1

end

end A103019.P16622163980647967574

/-! ## A103019.P12877263341701017337

`A020725(A101584(n+1))`
-/

namespace A103019.P12877263341701017337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101584 (n + 1)).toNat

end

end A103019.P12877263341701017337

/-! ## A103019.P13511026526461194334

`A206551(A371789(n))+A099897(n)`
-/

namespace A103019.P13511026526461194334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206551 (A371789 n).toNat + A099897 n

end

end A103019.P13511026526461194334

/-!
# A103020: Numbers n such that 5*10^n + 7*R_n - 4 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103020, there is no canonical definition to state claims against.
-/

/-! ## A103020.P7314411120827493881

`A101585(n+1)+1`
-/

namespace A103020.P7314411120827493881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101585 (n + 1) + 1

end

end A103020.P7314411120827493881

/-!
# A103021: Numbers n such that 5*10^n + 7*R_n + 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103021, there is no canonical definition to state claims against.
-/

/-! ## A103021.P17616388384504012282

`A101586(A028310(n))+ceil(sin(n)²)`
-/

namespace A103021.P17616388384504012282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101586 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A103021.P17616388384504012282

/-! ## A103021.P10277035403474446543

`A101586(round(sqrt(n²+1)))-A057428(n)`
-/

namespace A103021.P10277035403474446543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101586 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A057428 n

end

end A103021.P10277035403474446543

/-! ## A103021.P17264567207825021493

`A101586(A028310(n))+A057427(n)`
-/

namespace A103021.P17264567207825021493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101586 (A028310 n).toNat + A057427 n

end

end A103021.P17264567207825021493

/-! ## A103021.P9943763145839906827

`A205295(A205295(n))+A101586(A028310(n))`
-/

namespace A103021.P9943763145839906827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 (A205295 n).toNat + A101586 (A028310 n).toNat

end

end A103021.P9943763145839906827

/-!
# A103022: Numbers n such that 5*10^n + 8*R_n - 7 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103022, there is no canonical definition to state claims against.
-/

/-! ## A103022.P16549344757031866773

`A101587(n+1)+1`
-/

namespace A103022.P16549344757031866773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101587 (n + 1) + 1

end

end A103022.P16549344757031866773

/-! ## A103022.P9919933418616640003

`A020725(A101587(n+1))`
-/

namespace A103022.P9919933418616640003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101587 (n + 1)).toNat

end

end A103022.P9919933418616640003

/-!
# A103023: Numbers n such that 5*10^n + 8*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103023, there is no canonical definition to state claims against.
-/

/-! ## A103023.P10589477459668836591

`A101588(n+1)+1`
-/

namespace A103023.P10589477459668836591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101588 (n + 1) + 1

end

end A103023.P10589477459668836591

/-! ## A103023.P17150338625782601319

`∑{e}[6*2^n, A101588(#)]`
-/

namespace A103023.P17150338625782601319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A101588 (Nat.factorization (f1 n) p)

end

end A103023.P17150338625782601319

/-! ## A103023.P17147188190143138912

`A020725(A101588(n+1))`
-/

namespace A103023.P17147188190143138912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101588 (n + 1)).toNat

end

end A103023.P17147188190143138912

/-!
# A103024: Numbers n such that 5*10^n + 8*R_n + 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103024, there is no canonical definition to state claims against.
-/

/-! ## A103024.P7657809163318692341

`A101589(n+1)+1`
-/

namespace A103024.P7657809163318692341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101589 (n + 1) + 1

end

end A103024.P7657809163318692341

/-!
# A103025: Numbers n such that 6*10^n-7 is prime.

The programs for A103025, there is no canonical definition to state claims against.
-/

/-! ## A103025.P10407383547935485198

`A101590(n+1)+1`
-/

namespace A103025.P10407383547935485198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101590 (n + 1) + 1

end

end A103025.P10407383547935485198

/-! ## A103025.P8310788553527765075

`eq[A097966(n+1), A108354(n)]+1`
-/

namespace A103025.P8310788553527765075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A103025.P8310788553527765075

/-! ## A103025.P3699115039046192900

`eq[∑[(-1)^∑[∑[n]]], A004526(A333221(n+1))]`
-/

namespace A103025.P3699115039046192900
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A333221 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f5 j) n

end

end A103025.P3699115039046192900

/-!
# A103026: Numbers n such that 6*10^n+7 is prime.

The programs for A103026, there is no canonical definition to state claims against.
-/

/-! ## A103026.P8170007463694780031

`∑{e}[A020639(n+1), A101518(n)+#]`
-/

namespace A103026.P8170007463694780031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A101518 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A103026.P8170007463694780031

/-! ## A103026.P3177059268781087475

`A101518(A028310(n))-A057428(n)`
-/

namespace A103026.P3177059268781087475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101518 (A028310 n).toNat - A057428 n

end

end A103026.P3177059268781087475

/-! ## A103026.P6471152466482437135

`A101518(A028310(n))+A000040(n+1)%2`
-/

namespace A103026.P6471152466482437135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101518 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A103026.P6471152466482437135

/-! ## A103026.P14358052727863624214

`A101518(A028310(n))+record[A020639(n+2)]%2`
-/

namespace A103026.P14358052727863624214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101518 (A028310 n).toNat + Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A103026.P14358052727863624214

/-! ## A103026.P5335184432590698420

`A101518(A028310(n))+A000045(round(n/(n+1)))`
-/

namespace A103026.P5335184432590698420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101518 (A028310 n).toNat + A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A103026.P5335184432590698420

/-!
# A103027: Numbers n such that 6*10^n + R_n + 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103027, there is no canonical definition to state claims against.
-/

/-! ## A103027.P4245618329439740008

`A101519(n+1)+1`
-/

namespace A103027.P4245618329439740008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101519 (n + 1) + 1

end

end A103027.P4245618329439740008

/-! ## A103027.P5546226344781897894

`A020725(A101519(n+1))`
-/

namespace A103027.P5546226344781897894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101519 (n + 1)).toNat

end

end A103027.P5546226344781897894

/-!
# A103028: Numbers n such that 6*10^n + R_n + 6 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103028, there is no canonical definition to state claims against.
-/

/-! ## A103028.P14696777299825329926

`A101520(n+1)+1`
-/

namespace A103028.P14696777299825329926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101520 (n + 1) + 1

end

end A103028.P14696777299825329926

/-! ## A103028.P9111130511670152559

`A004482(A101520(n+1))`
-/

namespace A103028.P9111130511670152559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A101520 (n + 1)).toNat

end

end A103028.P9111130511670152559

/-!
# A103029: Numbers n such that 6*10^n + R_n + 8 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103029, there is no canonical definition to state claims against.
-/

/-! ## A103029.P15876948722659955280

`A101521(n+1)+1`
-/

namespace A103029.P15876948722659955280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101521 (n + 1) + 1

end

end A103029.P15876948722659955280

/-! ## A103029.P4246399915355093375

`A020725(A101521(n+1))`
-/

namespace A103029.P4246399915355093375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101521 (n + 1)).toNat

end

end A103029.P4246399915355093375

/-!
# A103030: Numbers n such that 6*10^n + 2*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103030, there is no canonical definition to state claims against.
-/

/-! ## A103030.P614726323584485612

`A101522(A028310(n))+A057427(n)`
-/

namespace A103030.P614726323584485612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101522 (A028310 n).toNat + A057427 n

end

end A103030.P614726323584485612

/-! ## A103030.P992297858972255208

`A101522(A028310(n))+A002828(n²)`
-/

namespace A103030.P992297858972255208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101522 (A028310 n).toNat + A002828 (n ^ 2)

end

end A103030.P992297858972255208

/-! ## A103030.P14328232253789244890

`(A101522(A028310(n))+1)%A283424(∑[n])`
-/

namespace A103030.P14328232253789244890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101522 (A028310 n).toNat + 1) (A283424 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A103030.P14328232253789244890

/-! ## A103030.P6203983801683948825

`A101522(A028310(n))+2*n+1-A004277(n)`
-/

namespace A103030.P6203983801683948825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101522 (A028310 n).toNat + ((2 * n + 1 : ℤ) - A004277 n)

end

end A103030.P6203983801683948825

/-!
# A103032: Numbers n such that 6*10^n + 3*R_n - 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103032, there is no canonical definition to state claims against.
-/

/-! ## A103032.P14703201633019425866

`A101525(n+1)+1`
-/

namespace A103032.P14703201633019425866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101525 (n + 1) + 1

end

end A103032.P14703201633019425866

/-! ## A103032.P12871064616122283312

`lt[A071934(A071950(n+2)), A071922(n)]`
-/

namespace A103032.P12871064616122283312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071934 (A071950 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103032.P12871064616122283312

/-!
# A103033: Numbers n such that 6*10^n + 3*R_n + 4 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103033, there is no canonical definition to state claims against.
-/

/-! ## A103033.P15284967755938411839

`A101526(n+1)+1`
-/

namespace A103033.P15284967755938411839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101526 (n + 1) + 1

end

end A103033.P15284967755938411839

/-!
# A103034: Numbers n such that 6*10^n + 4*R_n - 3 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103034, there is no canonical definition to state claims against.
-/

/-! ## A103034.P8524442773383807599

`A101527(A028310(n))-(floor(acot(n))-1)`
-/

namespace A103034.P8524442773383807599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101527 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A103034.P8524442773383807599

/-! ## A103034.P14991739561427747407

`A178334(n)+A101527(round(sqrt(n²+1)))`
-/

namespace A103034.P14991739561427747407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101527 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A103034.P14991739561427747407

/-! ## A103034.P1062043953215167781

`A101527(A028310(n))+A057427(n)`
-/

namespace A103034.P1062043953215167781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101527 (A028310 n).toNat + A057427 n

end

end A103034.P1062043953215167781

/-! ## A103034.P2319129989647428415

`A165471(n²)+A101527(A114806(n))`
-/

namespace A103034.P2319129989647428415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (n ^ 2) + A101527 (A114806 n).toNat

end

end A103034.P2319129989647428415

/-!
# A103035: Numbers n such that 6*10^n + 4*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103035, there is no canonical definition to state claims against.
-/

/-! ## A103035.P15617696677936188296

`A101528(round(sqrt(n²+1)))+n-abs(1-n)`
-/

namespace A103035.P15617696677936188296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101528 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((n : ℤ) - |1 - (n : ℤ)|)

end

end A103035.P15617696677936188296

/-! ## A103035.P14181524881038090412

`(A101528(A028310(n))+1)%(3^n)`
-/

namespace A103035.P14181524881038090412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101528 (A028310 n).toNat + 1) (3 ^ n : ℤ)

end

end A103035.P14181524881038090412

/-! ## A103035.P5321110315096553459

`(A101528(A028310(n))+1)*char[A007318(n)]`
-/

namespace A103035.P5321110315096553459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101528 (A028310 n).toNat + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103035.P5321110315096553459

/-! ## A103035.P8893193967016426320

`(A101528(A028310(n))+1)*A000045(ceil(n/(n+1)))`
-/

namespace A103035.P8893193967016426320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101528 (A028310 n).toNat + 1) * A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A103035.P8893193967016426320

/-! ## A103035.P11947651535170851005

`(A101528(A028310(n))+1)*A001221(∏{e}[n+1, 4^#])`
-/

namespace A103035.P11947651535170851005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101528 (A028310 n).toNat + 1) * A001221 (∏ p ∈ Nat.primeFactors (f1 n), 4 ^ Nat.factorization (f1 n) p)

end

end A103035.P11947651535170851005

/-!
# A103036: Numbers n such that 6*10^n + 4*R_n + 3 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103036, there is no canonical definition to state claims against.
-/

/-! ## A103036.P8547834721605202216

`A101529(n+1)+1`
-/

namespace A103036.P8547834721605202216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101529 (n + 1) + 1

end

end A103036.P8547834721605202216

/-!
# A103038: Numbers n such that 6*10^n + 5*R_n - 4 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103038, there is no canonical definition to state claims against.
-/

/-! ## A103038.P8734331339111841007

`A178334(n)+A101531(round(sqrt(n²+1)))`
-/

namespace A103038.P8734331339111841007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101531 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A103038.P8734331339111841007

/-! ## A103038.P10396959089547855026

`A101531(A028310(n))+A057427(n)`
-/

namespace A103038.P10396959089547855026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101531 (A028310 n).toNat + A057427 n

end

end A103038.P10396959089547855026

/-! ## A103038.P13556178314139340559

`A178489(n)+A101531(A028310(n))`
-/

namespace A103038.P13556178314139340559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A101531 (A028310 n).toNat

end

end A103038.P13556178314139340559

/-! ## A103038.P4162273588842005858

`A101531(A028310(n))+and(1, A000040(n+1))`
-/

namespace A103038.P4162273588842005858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101531 (A028310 n).toNat + Int.land 1 (A000040 (n + 1))

end

end A103038.P4162273588842005858

/-! ## A103038.P12815144942176436827

`(A101531(A028310(n))+1)%A000045(2*n+1)`
-/

namespace A103038.P12815144942176436827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101531 (A028310 n).toNat + 1) (A000045 (2 * n + 1))

end

end A103038.P12815144942176436827

/-!
# A103039: Numbers n such that 6*10^n + 5*R_n - 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103039, there is no canonical definition to state claims against.
-/

/-! ## A103039.P4244058532630992904

`A101532(n+1)+1`
-/

namespace A103039.P4244058532630992904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101532 (n + 1) + 1

end

end A103039.P4244058532630992904

/-! ## A103039.P9735579159315632927

`A020725(A101532(n+1))`
-/

namespace A103039.P9735579159315632927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101532 (n + 1)).toNat

end

end A103039.P9735579159315632927

/-!
# A103040: Numbers n such that 6*10^n + 5*R_n + 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103040, there is no canonical definition to state claims against.
-/

/-! ## A103040.P10948700278308085241

`A101533(n+1)+1`
-/

namespace A103040.P10948700278308085241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101533 (n + 1) + 1

end

end A103040.P10948700278308085241

/-!
# A103041: Numbers n such that 6*10^n + 5*R_n + 4 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103041, there is no canonical definition to state claims against.
-/

/-! ## A103041.P11622619516913199717

`A101534(n+1)+1`
-/

namespace A103041.P11622619516913199717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101534 (n + 1) + 1

end

end A103041.P11622619516913199717

/-! ## A103041.P17593307060293979197

`A020725(A101534(n+1))`
-/

namespace A103041.P17593307060293979197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101534 (n + 1)).toNat

end

end A103041.P17593307060293979197

/-!
# A103042: Numbers n such that 6*10^n + 7*R_n - 4 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103042, there is no canonical definition to state claims against.
-/

/-! ## A103042.P16333547205274838978

`A101535(round(sqrt(n²+1)))+n-abs(1-n)`
-/

namespace A103042.P16333547205274838978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101535 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((n : ℤ) - |1 - (n : ℤ)|)

end

end A103042.P16333547205274838978

/-!
# A103043: Numbers n such that 6*10^n + 7*R_n + 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103043, there is no canonical definition to state claims against.
-/

/-! ## A103043.P13512554306906944157

`A101536(n+1)+1`
-/

namespace A103043.P13512554306906944157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101536 (n + 1) + 1

end

end A103043.P13512554306906944157

/-! ## A103043.P9812322413258515697

`A020725(A101536(n+1))`
-/

namespace A103043.P9812322413258515697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101536 (n + 1)).toNat

end

end A103043.P9812322413258515697

/-!
# A103044: Numbers n such that 6*10^n + 8*R_n - 7 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103044, there is no canonical definition to state claims against.
-/

/-! ## A103044.P8889497311159508504

`A101537(n+1)+1`
-/

namespace A103044.P8889497311159508504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101537 (n + 1) + 1

end

end A103044.P8889497311159508504

/-! ## A103044.P3109276774193302127

`A318099(A256130(3*n+1))+A074430(n+1)`
-/

namespace A103044.P3109276774193302127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318099 (A256130 (3 * n + 1)).toNat + A074430 (n + 1)

end

end A103044.P3109276774193302127

/-!
# A103045: Numbers n such that 6*10^n + 8*R_n - 5 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103045, there is no canonical definition to state claims against.
-/

/-! ## A103045.P10451169211532144806

`A101538(n+1)+1`
-/

namespace A103045.P10451169211532144806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101538 (n + 1) + 1

end

end A103045.P10451169211532144806

/-! ## A103045.P5523881618641508222

`A020725(A101538(n+1))`
-/

namespace A103045.P5523881618641508222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101538 (n + 1)).toNat

end

end A103045.P5523881618641508222

/-!
# A103046: Numbers n such that 6*10^n + 8*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103046, there is no canonical definition to state claims against.
-/

/-! ## A103046.P8391550674949139640

`A178334(n)+A101539(round(sqrt(n²+1)))`
-/

namespace A103046.P8391550674949139640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101539 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A103046.P8391550674949139640

/-! ## A103046.P9503477017151955371

`A101539(A028310(n))+A057427(n)`
-/

namespace A103046.P9503477017151955371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101539 (A028310 n).toNat + A057427 n

end

end A103046.P9503477017151955371

/-! ## A103046.P12235233027661758118

`A101539(A028310(n))-A057428(n)`
-/

namespace A103046.P12235233027661758118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101539 (A028310 n).toNat - A057428 n

end

end A103046.P12235233027661758118

/-! ## A103046.P17564610479429749288

`A101539(A028310(n))+A062157(n)²`
-/

namespace A103046.P17564610479429749288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101539 (A028310 n).toNat + A062157 n ^ 2

end

end A103046.P17564610479429749288

/-! ## A103046.P11046070270567460859

`A101539(A028310(n))-A062157(2*n)`
-/

namespace A103046.P11046070270567460859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101539 (A028310 n).toNat - A062157 (2 * n)

end

end A103046.P11046070270567460859

/-!
# A103047: Numbers n such that 6*10^n + 8*R_n + 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103047, there is no canonical definition to state claims against.
-/

/-! ## A103047.P2505069511495875700

`A101540(n+1)+1`
-/

namespace A103047.P2505069511495875700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101540 (n + 1) + 1

end

end A103047.P2505069511495875700

/-! ## A103047.P2166885182295705653

`or(1, A101540(A077168(n)))`
-/

namespace A103047.P2166885182295705653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101540 (A077168 n).toNat)

end

end A103047.P2166885182295705653

/-! ## A103047.P10069411004832068105

`or(1, A101540(A216556(n)))`
-/

namespace A103047.P10069411004832068105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101540 (A216556 n).toNat)

end

end A103047.P10069411004832068105

/-! ## A103047.P26567459778908497

`or(1, A101540(A291766(n)))`
-/

namespace A103047.P26567459778908497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101540 (A291766 n).toNat)

end

end A103047.P26567459778908497

/-! ## A103047.P8176057937697365349

`or(1, A101540(A158416(2*n)))`
-/

namespace A103047.P8176057937697365349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101540 (A158416 (2 * n)).toNat)

end

end A103047.P8176057937697365349

/-!
# A103048: Numbers k such that 7*10^k - 9 is prime.

The programs for A103048, there is no canonical definition to state claims against.
-/

/-! ## A103048.P7526682818559594558

`A101541(n+1)+1`
-/

namespace A103048.P7526682818559594558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101541 (n + 1) + 1

end

end A103048.P7526682818559594558

/-!
# A103049: Numbers n such that 7*10^n-3 is prime.

The programs for A103049, there is no canonical definition to state claims against.
-/

/-! ## A103049.P663740690024524891

`A101542(n+1)+1`
-/

namespace A103049.P663740690024524891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101542 (n + 1) + 1

end

end A103049.P663740690024524891

/-! ## A103049.P9137057348123522440

`A022894(n)+record[A316978(n+1)]`
-/

namespace A103049.P9137057348123522440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022894 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103049.P9137057348123522440

/-! ## A103049.P17100806514371386237

`A002024(A231005(2*n)+A206303(n))`
-/

namespace A103049.P17100806514371386237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A231005 (2 * n) + A206303 n).toNat

end

end A103049.P17100806514371386237

/-! ## A103049.P10580656147370584733

`A002024(A392918(n)+A175035(3*n+1))`
-/

namespace A103049.P10580656147370584733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A392918 n + A175035 (3 * n + 1)).toNat

end

end A103049.P10580656147370584733

/-!
# A103050: Numbers k such that 7*10^k + R_k + 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103050, there is no canonical definition to state claims against.
-/

/-! ## A103050.P2456617495313378519

`A101131(n+1)+1`
-/

namespace A103050.P2456617495313378519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101131 (n + 1) + 1

end

end A103050.P2456617495313378519

/-!
# A103051: Numbers k such that 7*10^k + R_k + 8 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103051, there is no canonical definition to state claims against.
-/

/-! ## A103051.P644859856730542840

`A101132(n+1)+1`
-/

namespace A103051.P644859856730542840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101132 (n + 1) + 1

end

end A103051.P644859856730542840

/-!
# A103052: Numbers k such that 7*10^k + 2*R_k - 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103052, there is no canonical definition to state claims against.
-/

/-! ## A103052.P9773193754931674180

`A101133(n+1)+1`
-/

namespace A103052.P9773193754931674180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101133 (n + 1) + 1

end

end A103052.P9773193754931674180

/-!
# A103053: Numbers k such that 7*10^k + 2*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103053, there is no canonical definition to state claims against.
-/

/-! ## A103053.P12200095119924667380

`A101134(n+1)+1`
-/

namespace A103053.P12200095119924667380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101134 (n + 1) + 1

end

end A103053.P12200095119924667380

/-! ## A103053.P6924596166926529910

`A092200(A101134(n+1))`
-/

namespace A103053.P6924596166926529910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (A101134 (n + 1)).toNat

end

end A103053.P6924596166926529910

/-!
# A103054: Numbers k such that 7*10^k + 2*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103054, there is no canonical definition to state claims against.
-/

/-! ## A103054.P16566770708010584265

`A101136(n+1)+1`
-/

namespace A103054.P16566770708010584265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101136 (n + 1) + 1

end

end A103054.P16566770708010584265

/-! ## A103054.P9070920543077880120

`A117571(A101136(n+1))`
-/

namespace A103054.P9070920543077880120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (A101136 (n + 1)).toNat

end

end A103054.P9070920543077880120

/-!
# A103055: Numbers k such that 7*10^k + 3*R_k - 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103055, there is no canonical definition to state claims against.
-/

/-! ## A103055.P2472385745775037313

`A101137(n+1)+1`
-/

namespace A103055.P2472385745775037313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101137 (n + 1) + 1

end

end A103055.P2472385745775037313

/-! ## A103055.P17778074032189119684

`A199343(A101137(n+1))`
-/

namespace A103055.P17778074032189119684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A101137 (n + 1)).toNat

end

end A103055.P17778074032189119684

/-!
# A103056: Numbers k such that 7*10^k + 3*R_k + 6 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103056, there is no canonical definition to state claims against.
-/

/-! ## A103056.P11203788575631437403

`A101138(A028310(n))+ceil(sin(n)²)`
-/

namespace A103056.P11203788575631437403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101138 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A103056.P11203788575631437403

/-! ## A103056.P13209519509600184573

`A101138(A028310(n))+A057427(n)`
-/

namespace A103056.P13209519509600184573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101138 (A028310 n).toNat + A057427 n

end

end A103056.P13209519509600184573

/-! ## A103056.P9457581464736235094

`A101138(A028310(n))+A019426(2*n)`
-/

namespace A103056.P9457581464736235094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101138 (A028310 n).toNat + A019426 (2 * n)

end

end A103056.P9457581464736235094

/-! ## A103056.P17128588563943441054

`A101138(A028310(n))+A071625(2*n+1)`
-/

namespace A103056.P17128588563943441054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101138 (A028310 n).toNat + A071625 (2 * n + 1)

end

end A103056.P17128588563943441054

/-!
# A103057: Numbers k such that 7*10^k + 4*R_k - 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103057, there is no canonical definition to state claims against.
-/

/-! ## A103057.P11067478930299623817

`A101139(n+1)+1`
-/

namespace A103057.P11067478930299623817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101139 (n + 1) + 1

end

end A103057.P11067478930299623817

/-!
# A103058: Numbers k such that 7*10^k + 4*R_k - 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103058, there is no canonical definition to state claims against.
-/

/-! ## A103058.P4360500561612644752

`A101140(n+1)+1`
-/

namespace A103058.P4360500561612644752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101140 (n + 1) + 1

end

end A103058.P4360500561612644752

/-!
# A103059: Numbers k such that 7*10^k + 4*R_k + 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103059, there is no canonical definition to state claims against.
-/

/-! ## A103059.P10201142923783583930

`A101142(n+1)+1`
-/

namespace A103059.P10201142923783583930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101142 (n + 1) + 1

end

end A103059.P10201142923783583930

/-! ## A103059.P12436578249654836429

`A030118(A101142(n+1))`
-/

namespace A103059.P12436578249654836429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 (A101142 (n + 1)).toNat

end

end A103059.P12436578249654836429

/-!
# A103060: Numbers k such that 7*10^k + 5*R_k - 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103060, there is no canonical definition to state claims against.
-/

/-! ## A103060.P17835550919881211084

`A101143(n+1)+1`
-/

namespace A103060.P17835550919881211084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101143 (n + 1) + 1

end

end A103060.P17835550919881211084

/-!
# A103061: Numbers k such that 7*10^k + 5*R_k - 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103061, there is no canonical definition to state claims against.
-/

/-! ## A103061.P16753997006398159667

`A101144(round(sqrt(n²+1)))+A057427(n)`
-/

namespace A103061.P16753997006398159667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101144 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A057427 n

end

end A103061.P16753997006398159667

/-! ## A103061.P12995002155097092697

`A178334(n)+A101144(round(sqrt(n²+1)))`
-/

namespace A103061.P12995002155097092697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101144 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A103061.P12995002155097092697

/-! ## A103061.P4696957110521107809

`A101144(A028310(n))+char[A007306(n)]`
-/

namespace A103061.P4696957110521107809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101144 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103061.P4696957110521107809

/-! ## A103061.P5969258789195935467

`A065685(n+1)+A178334(n)+A101144(A028310(n))`
-/

namespace A103061.P5969258789195935467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065685 (n + 1) + (A178334 n + A101144 (A028310 n).toNat)

end

end A103061.P5969258789195935467

/-!
# A103062: Numbers k such that 7*10^k + 5*R_k + 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103062, there is no canonical definition to state claims against.
-/

/-! ## A103062.P10471673991632555309

`A178334(n)+A101146(round(sqrt(n²+1)))`
-/

namespace A103062.P10471673991632555309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101146 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A103062.P10471673991632555309

/-! ## A103062.P13122515531116927918

`A101146(A028310(n))+A057427(n)`
-/

namespace A103062.P13122515531116927918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101146 (A028310 n).toNat + A057427 n

end

end A103062.P13122515531116927918

/-! ## A103062.P16847387388265276352

`or(A101146(A028310(n)), A178334(n))`
-/

namespace A103062.P16847387388265276352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101146 (A028310 n).toNat) (A178334 n)

end

end A103062.P16847387388265276352

/-! ## A103062.P18395386011227218762

`A101146(A085158(n))+A057427(n)`
-/

namespace A103062.P18395386011227218762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101146 (A085158 n).toNat + A057427 n

end

end A103062.P18395386011227218762

/-!
# A103063: Numbers k such that 7*10^k + 6*R_k - 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103063, there is no canonical definition to state claims against.
-/

/-! ## A103063.P14273521002139037138

`A101147(A028310(n))+A057427(n)`
-/

namespace A103063.P14273521002139037138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101147 (A028310 n).toNat + A057427 n

end

end A103063.P14273521002139037138

/-! ## A103063.P2191068333053217163

`A178334(n)+A101147(A028310(n))`
-/

namespace A103063.P2191068333053217163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101147 (A028310 n).toNat

end

end A103063.P2191068333053217163

/-! ## A103063.P1328269383515555829

`A178489(n)+A101147(A028310(n))`
-/

namespace A103063.P1328269383515555829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A101147 (A028310 n).toNat

end

end A103063.P1328269383515555829

/-! ## A103063.P7974474194320299550

`A101147(A028310(n))+char[A007318(n)]`
-/

namespace A103063.P7974474194320299550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101147 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103063.P7974474194320299550

/-! ## A103063.P6406450675945383492

`A101147(A028310(n))+A000040(n+1)%2`
-/

namespace A103063.P6406450675945383492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101147 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A103063.P6406450675945383492

/-!
# A103064: Numbers k such that 7*10^k + 6*R_k - 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103064, there is no canonical definition to state claims against.
-/

/-! ## A103064.P14038275527521483759

`A101148(n+1)+1`
-/

namespace A103064.P14038275527521483759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101148 (n + 1) + 1

end

end A103064.P14038275527521483759

/-!
# A103065: Numbers k such that 7*10^k + 6*R_k + 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103065, there is no canonical definition to state claims against.
-/

/-! ## A103065.P9985279555039889611

`A101150(n+1)+1`
-/

namespace A103065.P9985279555039889611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101150 (n + 1) + 1

end

end A103065.P9985279555039889611

/-! ## A103065.P11107344851728301476

`eq[A169803(n), A265695(A049324(2*n+5))]`
-/

namespace A103065.P11107344851728301476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265695 (A049324 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103065.P11107344851728301476

/-!
# A103066: Numbers k such that 7*10^k + 8*R_k - 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103066, there is no canonical definition to state claims against.
-/

/-! ## A103066.P12847783226204238903

`∑{d}[A065719(A376805(n)), #]`
-/

namespace A103066.P12847783226204238903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A376805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A103066.P12847783226204238903

/-! ## A103066.P10809921852279200539

`∑{d}[A265356(A180632(n)), #]`
-/

namespace A103066.P10809921852279200539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (A180632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A103066.P10809921852279200539

/-!
# A103067: Numbers k such that 7*10^k + 8*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103067, there is no canonical definition to state claims against.
-/

/-! ## A103067.P6763331362699933367

`A101153(n+1)+1`
-/

namespace A103067.P6763331362699933367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101153 (n + 1) + 1

end

end A103067.P6763331362699933367

/-!
# A103068: Numbers k such that 8*10^k - 9 is prime.

The programs for A103068, there is no canonical definition to state claims against.
-/

/-! ## A103068.P6245001572957801350

`A101154(n+1)+1`
-/

namespace A103068.P6245001572957801350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101154 (n + 1) + 1

end

end A103068.P6245001572957801350

/-! ## A103068.P15488084322588275650

`2-(or(1, A010054(n))-A101154(A348553(n)))`
-/

namespace A103068.P15488084322588275650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.lor 1 (A010054 n) - A101154 (A348553 n).toNat)

end

end A103068.P15488084322588275650

/-!
# A103069: Numbers k such that 8*10^k + 3 is prime.

The programs for A103069, there is no canonical definition to state claims against.
-/

/-! ## A103069.P14090181823453408745

`A178334(n)+A101056(round(sqrt(n²+1)))`
-/

namespace A103069.P14090181823453408745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101056 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A103069.P14090181823453408745

/-! ## A103069.P17497088142938171205

`A101056(round(sqrt(n²+1)))-A057428(n)`
-/

namespace A103069.P17497088142938171205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101056 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A057428 n

end

end A103069.P17497088142938171205

/-! ## A103069.P12905927947240238389

`A101056(round(sqrt(n²+1)))+A071625(n+1)`
-/

namespace A103069.P12905927947240238389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101056 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A071625 (n + 1)

end

end A103069.P12905927947240238389

/-! ## A103069.P3211244712549891687

`A101056(A028310(n))+A057427(n)`
-/

namespace A103069.P3211244712549891687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101056 (A028310 n).toNat + A057427 n

end

end A103069.P3211244712549891687

/-! ## A103069.P13480898167508762142

`or(A101056(A028310(n)), A178334(n))`
-/

namespace A103069.P13480898167508762142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101056 (A028310 n).toNat) (A178334 n)

end

end A103069.P13480898167508762142

/-!
# A103070: Numbers n such that 8*10^n + 9 is prime.

The programs for A103070, there is no canonical definition to state claims against.
-/

/-! ## A103070.P9101049386624373309

`A101057(round(sqrt(n²+1)))+A057427(n)`
-/

namespace A103070.P9101049386624373309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101057 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A057427 n

end

end A103070.P9101049386624373309

/-! ## A103070.P496079600801105373

`A178334(n)+A101057(round(sqrt(n²+1)))`
-/

namespace A103070.P496079600801105373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101057 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A103070.P496079600801105373

/-! ## A103070.P11046141770005836854

`A101057(round(sqrt(n²+1)))-A057428(n)`
-/

namespace A103070.P11046141770005836854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101057 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A057428 n

end

end A103070.P11046141770005836854

/-! ## A103070.P12285610518126912680

`A101057(A028310(n))+char[A007318(n)]`
-/

namespace A103070.P12285610518126912680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101057 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103070.P12285610518126912680

/-! ## A103070.P16426938866814387219

`A101057(A028310(n))+A000040(n+1)%2`
-/

namespace A103070.P16426938866814387219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101057 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A103070.P16426938866814387219

/-!
# A103071: Numbers n such that 8*10^n + R_n + 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103071, there is no canonical definition to state claims against.
-/

/-! ## A103071.P5581370197856385876

`A101058(n+1)+1`
-/

namespace A103071.P5581370197856385876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101058 (n + 1) + 1

end

end A103071.P5581370197856385876

/-!
# A103072: Numbers n such that 8*10^n + R_n + 6 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103072, there is no canonical definition to state claims against.
-/

/-! ## A103072.P3709647801154568201

`A101059(n+1)+1`
-/

namespace A103072.P3709647801154568201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101059 (n + 1) + 1

end

end A103072.P3709647801154568201

/-! ## A103072.P17889228056345304862

`A020725(A101059(n+1))`
-/

namespace A103072.P17889228056345304862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101059 (n + 1)).toNat

end

end A103072.P17889228056345304862

/-!
# A103073: Numbers n such that 8*10^n + R_n + 8 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103073, there is no canonical definition to state claims against.
-/

/-! ## A103073.P12031620684319104430

`A101060(n+1)+1`
-/

namespace A103073.P12031620684319104430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101060 (n + 1) + 1

end

end A103073.P12031620684319104430

/-! ## A103073.P10060936587198751001

`A061800(A101060(n+1))`
-/

namespace A103073.P10060936587198751001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A101060 (n + 1)).toNat

end

end A103073.P10060936587198751001

/-!
# A103074: Numbers n such that 8*10^n + 2*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103074, there is no canonical definition to state claims against.
-/

/-! ## A103074.P13444871318171563076

`A191989(n+1)+A037203(A150953(n))`
-/

namespace A103074.P13444871318171563076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191989 (n + 1) + A037203 (A150953 n).toNat

end

end A103074.P13444871318171563076

/-!
# A103075: Numbers n such that 8*10^n + 2*R_n + 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103075, there is no canonical definition to state claims against.
-/

/-! ## A103075.P10289167542197553324

`A101062(n+1)+1`
-/

namespace A103075.P10289167542197553324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101062 (n + 1) + 1

end

end A103075.P10289167542197553324

/-!
# A103077: Numbers n such that 8*10^n + 2*R_n + 7 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103077, there is no canonical definition to state claims against.
-/

/-! ## A103077.P13670933513417501987

`A101064(n+1)+1`
-/

namespace A103077.P13670933513417501987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101064 (n + 1) + 1

end

end A103077.P13670933513417501987

/-! ## A103077.P12667724442800343257

`A324107(n+1)+A108194(A026621(n))`
-/

namespace A103077.P12667724442800343257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324107 (n + 1) + A108194 (A026621 n).toNat

end

end A103077.P12667724442800343257

/-! ## A103077.P18006534355956295435

`A303297(A078392(n+1)*A316980(n))`
-/

namespace A103077.P18006534355956295435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303297 (A078392 (n + 1) * A316980 n).toNat

end

end A103077.P18006534355956295435

/-!
# A103078: Numbers n such that 8*10^n + 3*R_n + 6 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103078, there is no canonical definition to state claims against.
-/

/-! ## A103078.P2627646650091352976

`A101065(n+1)+1`
-/

namespace A103078.P2627646650091352976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101065 (n + 1) + 1

end

end A103078.P2627646650091352976

/-!
# A103080: Numbers k such that 8*10^k + 4*R_k - 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103080, there is no canonical definition to state claims against.
-/

/-! ## A103080.P16130592569603547232

`∪[∑[8*n*A053625(n+6)], A101067(n+1)+1]`
-/

namespace A103080.P16130592569603547232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) * A053625 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101067 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A103080.P16130592569603547232

/-! ## A103080.P9625282194103613214

`A101067(A028310(n))+A057427(n)`
-/

namespace A103080.P9625282194103613214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101067 (A028310 n).toNat + A057427 n

end

end A103080.P9625282194103613214

/-! ## A103080.P17486721572026474302

`A178334(n)+A101067(A028310(n))`
-/

namespace A103080.P17486721572026474302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101067 (A028310 n).toNat

end

end A103080.P17486721572026474302

/-! ## A103080.P16291575266084012658

`A101067(A028310(n))+A000040(n+1)%2`
-/

namespace A103080.P16291575266084012658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101067 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A103080.P16291575266084012658

/-! ## A103080.P498458418117396886

`A101067(A028310(n))+A001221(A001222(n+1)+1)`
-/

namespace A103080.P498458418117396886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101067 (A028310 n).toNat + A001221 (A001222 (n + 1) + 1).toNat

end

end A103080.P498458418117396886

/-!
# A103081: Numbers k such that 8*10^k + 4*R_k + 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103081, there is no canonical definition to state claims against.
-/

/-! ## A103081.P3270217995763076506

`A127438(A084264(n))`
-/

namespace A103081.P3270217995763076506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127438 (A084264 n).toNat

end

end A103081.P3270217995763076506

/-!
# A103082: Numbers k such that 8*10^k + 4*R_k + 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103082, there is no canonical definition to state claims against.
-/

/-! ## A103082.P17762267786143855266

`eq[A079067(A008949(n)), A319703(n+1)]`
-/

namespace A103082.P17762267786143855266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A008949 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103082.P17762267786143855266

/-!
# A103083: Numbers k such that 8*10^k + 5*R_k - 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103083, there is no canonical definition to state claims against.
-/

/-! ## A103083.P16689809319369974988

`A101070(n+1)+1`
-/

namespace A103083.P16689809319369974988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101070 (n + 1) + 1

end

end A103083.P16689809319369974988

/-!
# A103084: Numbers k such that 8*10^k + 5*R_k - 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103084, there is no canonical definition to state claims against.
-/

/-! ## A103084.P758728001268147332

`A101071(n+1)+1`
-/

namespace A103084.P758728001268147332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101071 (n + 1) + 1

end

end A103084.P758728001268147332

/-! ## A103084.P7750158898348052778

`A353984(A191010(n))+1`
-/

namespace A103084.P7750158898348052778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353984 (A191010 n).toNat + 1

end

end A103084.P7750158898348052778

/-!
# A103085: Numbers k such that 8*10^k + 5*R_k + 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103085, there is no canonical definition to state claims against.
-/

/-! ## A103085.P5318246013324559588

`A101072(n+1)+1`
-/

namespace A103085.P5318246013324559588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101072 (n + 1) + 1

end

end A103085.P5318246013324559588

/-! ## A103085.P10742363659379888104

`∑{digits}[A270036(n), A101072(#)]`
-/

namespace A103085.P10742363659379888104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270036 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A101072 x).sum

end

end A103085.P10742363659379888104

/-!
# A103086: Numbers k such that 8*10^k + 5*R_k + 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103086, there is no canonical definition to state claims against.
-/

/-! ## A103086.P3620237071753229332

`A101073(n+1)+1`
-/

namespace A103086.P3620237071753229332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101073 (n + 1) + 1

end

end A103086.P3620237071753229332

/-!
# A103087: Numbers k such that 8*10^k + 6*R_k - 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103087, there is no canonical definition to state claims against.
-/

/-! ## A103087.P7410024242219441609

`A101074(A028310(n))+A057427(n)`
-/

namespace A103087.P7410024242219441609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101074 (A028310 n).toNat + A057427 n

end

end A103087.P7410024242219441609

/-! ## A103087.P14825200352724338396

`A178334(n)+A101074(A028310(n))`
-/

namespace A103087.P14825200352724338396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101074 (A028310 n).toNat

end

end A103087.P14825200352724338396

/-! ## A103087.P14927144287239698852

`A101074(A028310(n))+char[A007318(n)]`
-/

namespace A103087.P14927144287239698852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101074 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103087.P14927144287239698852

/-! ## A103087.P5533625412461895956

`A101074(A028310(n))+A000040(n+1)%2`
-/

namespace A103087.P5533625412461895956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101074 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A103087.P5533625412461895956

/-! ## A103087.P12420570835163017063

`A008683(16*(n+1))+A101074(A028310(n))+ceil(n/(n+1))`
-/

namespace A103087.P12420570835163017063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (16 * (n + 1)) + (A101074 (A028310 n).toNat + ⌈(n : ℚ) / (n + 1 : ℚ)⌉)

end

end A103087.P12420570835163017063

/-!
# A103088: Numbers k such that 8*10^k + 6*R_k + 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103088, there is no canonical definition to state claims against.
-/

/-! ## A103088.P7693120570918940694

`A101075(round(sqrt(n²+1)))+A057427(n)`
-/

namespace A103088.P7693120570918940694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101075 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A057427 n

end

end A103088.P7693120570918940694

/-! ## A103088.P14163594254514808674

`A101075(A065033(2*n))+floor(atan(n+1))`
-/

namespace A103088.P14163594254514808674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101075 (A065033 (2 * n)).toNat + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A103088.P14163594254514808674

/-! ## A103088.P3065320607292823875

`A178334(n)+A101075(A028310(n))`
-/

namespace A103088.P3065320607292823875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101075 (A028310 n).toNat

end

end A103088.P3065320607292823875

/-! ## A103088.P12123614588356490772

`or(A057427(n), A101075(A028310(n)))`
-/

namespace A103088.P12123614588356490772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n) (A101075 (A028310 n).toNat)

end

end A103088.P12123614588356490772

/-! ## A103088.P12485123707851007427

`A101075(A028310(n))+A000040(n+1)%2`
-/

namespace A103088.P12485123707851007427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101075 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A103088.P12485123707851007427

/-!
# A103090: Numbers k such that 8*10^k + 7*R_k - 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103090, there is no canonical definition to state claims against.
-/

/-! ## A103090.P12047960746328484197

`A101077(n+1)+1`
-/

namespace A103090.P12047960746328484197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101077 (n + 1) + 1

end

end A103090.P12047960746328484197

/-!
# A103091: Numbers n such that 8*10^n + 7*R_n + 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103091, there is no canonical definition to state claims against.
-/

/-! ## A103091.P10006954724271101433

`A101078(n+1)+1`
-/

namespace A103091.P10006954724271101433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101078 (n + 1) + 1

end

end A103091.P10006954724271101433

/-! ## A103091.P12937310933275748428

`A061800(A101078(n+1))`
-/

namespace A103091.P12937310933275748428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A101078 (n + 1)).toNat

end

end A103091.P12937310933275748428

/-!
# A103092: Numbers n such that 9*10^n-7 is prime.

The programs for A103092, there is no canonical definition to state claims against.
-/

/-! ## A103092.P3684087727217527700

`A101079(A028310(n))+A057427(n)`
-/

namespace A103092.P3684087727217527700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101079 (A028310 n).toNat + A057427 n

end

end A103092.P3684087727217527700

/-! ## A103092.P8326525003298044464

`A101079(A028310(n))-A057428(n)`
-/

namespace A103092.P8326525003298044464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101079 (A028310 n).toNat - A057428 n

end

end A103092.P8326525003298044464

/-! ## A103092.P11666087078756979720

`A101079(A028310(n))+char[A007318(n)]`
-/

namespace A103092.P11666087078756979720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101079 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103092.P11666087078756979720

/-! ## A103092.P15402567475128370795

`A101079(A028310(n))+A000040(n+1)%2`
-/

namespace A103092.P15402567475128370795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101079 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A103092.P15402567475128370795

/-! ## A103092.P11786111817900405173

`A101079(A028310(n))+A000045(ceil(n/(n+1)))`
-/

namespace A103092.P11786111817900405173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101079 (A028310 n).toNat + A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A103092.P11786111817900405173

/-!
# A103093: Numbers n such that 9*10^n + 2*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103093, there is no canonical definition to state claims against.
-/

/-! ## A103093.P7557496197018707636

`A101001(n+1)+1`
-/

namespace A103093.P7557496197018707636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101001 (n + 1) + 1

end

end A103093.P7557496197018707636

/-! ## A103093.P11516894145975184626

`A020725(A101001(n+1))`
-/

namespace A103093.P11516894145975184626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101001 (n + 1)).toNat

end

end A103093.P11516894145975184626

/-!
# A103094: Numbers n such that 9*10^n + 2*R_n + 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103094, there is no canonical definition to state claims against.
-/

/-! ## A103094.P12984878371353402319

`A101002(n+1)+1`
-/

namespace A103094.P12984878371353402319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101002 (n + 1) + 1

end

end A103094.P12984878371353402319

/-! ## A103094.P6454957979769447255

`A020725(A101002(n+1))`
-/

namespace A103094.P6454957979769447255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101002 (n + 1)).toNat

end

end A103094.P6454957979769447255

/-!
# A103095: Numbers n such that 9*10^n + 2*R_n + 5 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103095, there is no canonical definition to state claims against.
-/

/-! ## A103095.P1346168569634784652

`A101003(n+1)+1`
-/

namespace A103095.P1346168569634784652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101003 (n + 1) + 1

end

end A103095.P1346168569634784652

/-!
# A103097: Numbers k such that 9*10^k + 4*R_k - 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A103097, there is no canonical definition to state claims against.
-/

/-! ## A103097.P18002607941550284801

`A101006(n+1)+1`
-/

namespace A103097.P18002607941550284801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101006 (n + 1) + 1

end

end A103097.P18002607941550284801

/-! ## A103097.P9706784791897562295

`A020725(A101006(n+1))`
-/

namespace A103097.P9706784791897562295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101006 (n + 1)).toNat

end

end A103097.P9706784791897562295

/-!
# A103098: Numbers n such that 9*10^n + 4*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103098, there is no canonical definition to state claims against.
-/

/-! ## A103098.P5671754297361750170

`A101007(n+1)+1`
-/

namespace A103098.P5671754297361750170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101007 (n + 1) + 1

end

end A103098.P5671754297361750170

/-! ## A103098.P15632256820747212095

`A020725(A101007(n+1))`
-/

namespace A103098.P15632256820747212095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101007 (n + 1)).toNat

end

end A103098.P15632256820747212095

/-!
# A103099: Numbers n such that 9*10^n + 4*R_n + 3 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103099, there is no canonical definition to state claims against.
-/

/-! ## A103099.P6183873957236241052

`A101008(n+1)+1`
-/

namespace A103099.P6183873957236241052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101008 (n + 1) + 1

end

end A103099.P6183873957236241052

/-! ## A103099.P1501242067904771147

`A193096(A171432(n+1))`
-/

namespace A103099.P1501242067904771147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193096 (A171432 (n + 1)).toNat

end

end A103099.P1501242067904771147

