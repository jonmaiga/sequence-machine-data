import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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
import Seq.B009.C001
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
# A354300: Numbers k such that k! and (k+1)! have the same binary weight (A000120).

The programs for A354300, there is no canonical definition to state claims against.
-/

/-! ## A354300.P13005108295261220702

`eq[0, Δ[A079584(n)]]`
-/

namespace A354300.P13005108295261220702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354300.P13005108295261220702

/-! ## A354300.P15188103742432804099

`eq[A079584(n+1), A079584(n)]`
-/

namespace A354300.P15188103742432804099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354300.P15188103742432804099

/-! ## A354300.P12339309064295019536

`eq[0, Δ[A078565(n)-A067850(n)]]`
-/

namespace A354300.P12339309064295019536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078565 n - A067850 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354300.P12339309064295019536

/-! ## A354300.P9497692619681641216

`eq[0, Δ[A078565(n)-A072831(n)]]`
-/

namespace A354300.P9497692619681641216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078565 n - A072831 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354300.P9497692619681641216

/-! ## A354300.P6886730185580426431

`lt[A033109(A163511(n)), A152822(n)]`
-/

namespace A354300.P6886730185580426431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033109 (A163511 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354300.P6886730185580426431

/-!
# A354302: a(n) is the numerator of Sum_{k=0..n} 1 / (k!)^2.

The programs for A354302, there is no canonical definition to state claims against.
-/

/-! ## A354302.P3336156205954951629

`A006040(n)/gcd(A000142(n), A006040(n))`
-/

namespace A354302.P3336156205954951629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006040 n : ℚ) / (Int.gcd (A000142 n) (A006040 n) : ℚ)

end

end A354302.P3336156205954951629

/-! ## A354302.P1149858139009350570

`lcm(A006040(n), A354303(n))/A354303(n)`
-/

namespace A354302.P1149858139009350570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A006040 n) (A354303 n) : ℚ) / (A354303 n : ℚ)

end

end A354302.P1149858139009350570

/-! ## A354302.P7281733475356813750

`A006040(n)/A003557(A087433(n))`
-/

namespace A354302.P7281733475356813750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006040 n : ℚ) / (A003557 (A087433 n).toNat : ℚ)

end

end A354302.P7281733475356813750

/-!
# A354303: a(n) is the denominator of Sum_{k=0..n} 1 / (k!)^2.

The programs for A354303, there is no canonical definition to state claims against.
-/

/-! ## A354303.P6756085805335286685

`A000142(n)²/gcd(A000142(n), A006040(n))`
-/

namespace A354303.P6756085805335286685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n ^ 2 : ℚ) / (Int.gcd (A000142 n) (A006040 n) : ℚ)

end

end A354303.P6756085805335286685

/-! ## A354303.P6525931987737666680

`n!²/A003557(A087433(n))`
-/

namespace A354303.P6525931987737666680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℚ) / (A003557 (A087433 n).toNat : ℚ)

end

end A354303.P6525931987737666680

/-! ## A354303.P2549389509277736798

`A001044(n)/A003557(A087433(n))`
-/

namespace A354303.P2549389509277736798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 n : ℚ) / (A003557 (A087433 n).toNat : ℚ)

end

end A354303.P2549389509277736798

/-! ## A354303.P1880074202960733056

`A000290(A000142(n))/A178254(n+1)`
-/

namespace A354303.P1880074202960733056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A000142 n).toNat : ℚ) / (A178254 (n + 1) : ℚ)

end

end A354303.P1880074202960733056

/-!
# A354304: a(n) is the numerator of Sum_{k=0..n} (-1)^k / (k!)^2.

The programs for A354304, there is no canonical definition to state claims against.
-/

/-! ## A354304.P6364951406964109172

`A073701(n)/gcd(A073701(n), A340789(n))`
-/

namespace A354304.P6364951406964109172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073701 n : ℚ) / (Int.gcd (A073701 n) (A340789 n) : ℚ)

end

end A354304.P6364951406964109172

/-! ## A354304.P8968467880556878988

`A352799(A007559(n)-n)`
-/

namespace A354304.P8968467880556878988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352799 (A007559 n - (n : ℤ)).toNat

end

end A354304.P8968467880556878988

/-!
# A354305: a(n) is the denominator of Sum_{k=0..n} (-1)^k / (k!)^2.

The programs for A354305, there is no canonical definition to state claims against.
-/

/-! ## A354305.P2819913166251096059

`n!/A276337(n!)*A061355(n)`
-/

namespace A354305.P2819913166251096059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A276337 (Nat.factorial n) : ℚ) * (A061355 n : ℚ)

end

end A354305.P2819913166251096059

/-! ## A354305.P11224237003608221815

`n!/A276337(n!)*A279335(n)`
-/

namespace A354305.P11224237003608221815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A276337 (Nat.factorial n) : ℚ) * (A279335 n : ℚ)

end

end A354305.P11224237003608221815

/-!
# A354306: Number of one-sided polypentagrams with n cells.

The programs for A354306, there is no canonical definition to state claims against.
-/

/-! ## A354306.P17729718402539558821

`A115570(A068764(n))*A369265(n)`
-/

namespace A354306.P17729718402539558821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (A068764 n).toNat * A369265 n

end

end A354306.P17729718402539558821

/-!
# A354307: Number of fixed polypentagrams with n cells.

The programs for A354307, there is no canonical definition to state claims against.
-/

/-! ## A354307.P16222507298850789747

`A160016(or(n, C(4*n+2, n)))`
-/

namespace A354307.P16222507298850789747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160016 (Nat.lor n (Nat.choose (4 * n + 2) n))

end

end A354307.P16222507298850789747

/-!
# A354308: Number of free polyjogs with n cells.

The programs for A354308, there is no canonical definition to state claims against.
-/

/-! ## A354308.P6280494496237717080

`A066508(Δ[A054091(n)])`
-/

namespace A354308.P6280494496237717080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (f1 (n + 1) - f1 n).toNat

end

end A354308.P6280494496237717080

/-! ## A354308.P11692128190032004651

`A308163(A058300(n+1))`
-/

namespace A354308.P11692128190032004651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308163 (A058300 (n + 1)).toNat

end

end A354308.P11692128190032004651

/-!
# A354309: Expansion of e.g.f. 1/(1 - 2*x)^(x/2).

The programs for A354309, there is no canonical definition to state claims against.
-/

/-! ## A354309.P1684664529325396154

`A053693(∏[A033270(n+1)+n+1])`
-/

namespace A354309.P1684664529325396154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053693 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354309.P1684664529325396154

/-! ## A354309.P16883308293899660978

`A001511(Δ[4^n]-2)*A354327(n)`
-/

namespace A354309.P16883308293899660978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2).toNat * A354327 n

end

end A354309.P16883308293899660978

/-!
# A354310: Expansion of e.g.f. 1/(1 - 3*x)^(x/3).

The programs for A354310, there is no canonical definition to state claims against.
-/

/-! ## A354310.P5982309318957144456

`A008615(A254529(n)+A093934(n))`
-/

namespace A354310.P5982309318957144456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A254529 n + A093934 n).toNat

end

end A354310.P5982309318957144456

/-! ## A354310.P9335277322162408707

`A008616(A349363(n)+A002110(n))`
-/

namespace A354310.P9335277322162408707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A349363 n + A002110 n).toNat

end

end A354310.P9335277322162408707

/-!
# A354311: Expansion of e.g.f. exp( x/2 * (exp(2 * x) - 1) ).

The programs for A354311, there is no canonical definition to state claims against.
-/

/-! ## A354311.P751316760958977781

`A354313(n)-A004525(n!*floor(2^(n-4)))`
-/

namespace A354311.P751316760958977781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354313 n - A004525 ((Nat.factorial n : ℤ) * ⌊(2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)⌋).toNat

end

end A354311.P751316760958977781

/-! ## A354311.P8135653783565048726

`A354313(n)-A004525(A052652(n))`
-/

namespace A354311.P8135653783565048726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354313 n - A004525 (A052652 n).toNat

end

end A354311.P8135653783565048726

/-! ## A354311.P3878475967398673159

`A357703(n)-A055254(A351816(n))`
-/

namespace A354311.P3878475967398673159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357703 n - A055254 (A351816 n).toNat

end

end A354311.P3878475967398673159

/-!
# A354312: Expansion of e.g.f. exp( x/3 * (exp(3 * x) - 1) ).

The programs for A354312, there is no canonical definition to state claims against.
-/

/-! ## A354312.P11532046137806102936

`A052826(n)-A240328(A333093(n))`
-/

namespace A354312.P11532046137806102936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052826 n - A240328 (A333093 n).toNat

end

end A354312.P11532046137806102936

/-! ## A354312.P7950965532050303612

`xor(A052826(n), A103451(A027261(n)))`
-/

namespace A354312.P7950965532050303612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052826 n) (A103451 (A027261 n).toNat)

end

end A354312.P7950965532050303612

/-! ## A354312.P10034026310456472052

`xor(A052826(n), A103451(A002997(n+1)))`
-/

namespace A354312.P10034026310456472052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052826 n) (A103451 (A002997 (n + 1)).toNat)

end

end A354312.P10034026310456472052

/-!
# A354313: Expansion of e.g.f. 1/(1 - x/2 * (exp(2 * x) - 1)).

The programs for A354313, there is no canonical definition to state claims against.
-/

/-! ## A354313.P11261354448537541818

`A354311(n)+A004525(n!*floor(2^(n-4)))`
-/

namespace A354313.P11261354448537541818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354311 n + A004525 ((Nat.factorial n : ℤ) * ⌊(2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)⌋).toNat

end

end A354313.P11261354448537541818

/-! ## A354313.P3271583387412415320

`A354311(n)+A004525(A052652(n))`
-/

namespace A354313.P3271583387412415320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354311 n + A004525 (A052652 n).toNat

end

end A354313.P3271583387412415320

/-! ## A354313.P10852699552505281960

`A354311(n)+and(-4, A004525(A052671(n)))`
-/

namespace A354313.P10852699552505281960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354311 n + Int.land (-4) (A004525 (A052671 n).toNat)

end

end A354313.P10852699552505281960

/-!
# A354314: Expansion of e.g.f. 1/(1 - x/3 * (exp(3 * x) - 1)).

The programs for A354314, there is no canonical definition to state claims against.
-/

/-! ## A354314.P8083196317092866757

`n*A244644(a(n-1))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A354314.P8083196317092866757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  (n : ℤ) * A244644 (a (n - 1)).toNat

end

end A354314.P8083196317092866757

/-! ## A354314.P3105690106002761851

`A289440(A320343(n+1)+1)`
-/

namespace A354314.P3105690106002761851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A320343 (n + 1) + 1).toNat

end

end A354314.P3105690106002761851

/-!
# A354315: Expansion of e.g.f. 1/(1 + x/2 * log(1 - 2 * x)).

The programs for A354315, there is no canonical definition to state claims against.
-/

/-! ## A354315.P12790376893348231018

`A004525(A053491(n))`
-/

namespace A354315.P12790376893348231018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A053491 n).toNat

end

end A354315.P12790376893348231018

/-! ## A354315.P12476237774414790219

`A004526(A053491(n)+1)`
-/

namespace A354315.P12476237774414790219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A053491 n + 1).toNat

end

end A354315.P12476237774414790219

/-!
# A354316: Expansion of e.g.f. 1/(1 + x/3 * log(1 - 3 * x)).

The programs for A354316, there is no canonical definition to state claims against.
-/

/-! ## A354316.P8482167681264656926

`A140472(xor(a(n-1), A006531(n)))` with `a(0)=1`
-/

namespace A354316.P8482167681264656926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140472 (Int.xor (a (n - 1)) (A006531 n)).toNat

end

end A354316.P8482167681264656926

/-! ## A354316.P3028376353252887963

`A103221(A346667(n)+A099323(n))`
-/

namespace A354316.P3028376353252887963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A346667 n + A099323 n).toNat

end

end A354316.P3028376353252887963

/-!
# A354318: Expansion of e.g.f. exp(-log(1 + x)^4 / 24).

The programs for A354318, there is no canonical definition to state claims against.
-/

/-! ## A354318.P12867314385936166747

`A354390(n)-A185034(A185034(n))`
-/

namespace A354318.P12867314385936166747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354390 n - A185034 (A185034 n).toNat

end

end A354318.P12867314385936166747

/-! ## A354318.P11859123875166226320

`A354390(n)-A185234(A185234(n))`
-/

namespace A354318.P11859123875166226320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354390 n - A185234 (A185234 n).toNat

end

end A354318.P11859123875166226320

/-! ## A354318.P14677781188935536893

`A354390(A004880(n+1))`
-/

namespace A354318.P14677781188935536893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354390 (A004880 (n + 1)).toNat

end

end A354318.P14677781188935536893

/-! ## A354318.P14335569109761708649

`A354390(A001222(5^n))`
-/

namespace A354318.P14335569109761708649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354390 (A001222 (5 ^ n)).toNat

end

end A354318.P14335569109761708649

/-!
# A354319: Expansion of e.g.f. 1/(1 - 2*x)^(x/4).

The programs for A354319, there is no canonical definition to state claims against.
-/

/-! ## A354319.P12957076960530029167

`round(A350680(n)/(comp[∑[n]]-n))`
-/

namespace A354319.P12957076960530029167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A350680 n : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ))

end

end A354319.P12957076960530029167

/-! ## A354319.P3075637283064174544

`A338317(and(-2, 2^n)-(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))`
-/

namespace A354319.P3075637283064174544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338317 (SequenceMachineLib.roundAway ((Int.land (-2) (2 ^ n : ℤ) : ℚ) - (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)))).toNat

end

end A354319.P3075637283064174544

/-!
# A354320: Expansion of e.g.f. 1/(1 - 4*x)^(x/8).

The programs for A354320, there is no canonical definition to state claims against.
-/

/-! ## A354320.P17603758175758684943

`A028242(∑{d}[n, A215363(#)])`
-/

namespace A354320.P17603758175758684943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ d ∈ Nat.divisors (f1 n), A215363 d).toNat

end

end A354320.P17603758175758684943

/-! ## A354320.P13910773159807706549

`A207481(A001951(12*a(n-1)-30*a(n-2)))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=6`
-/

namespace A354320.P13910773159807706549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 6] fun n a =>
  A207481 (A001951 (12 * a (n - 1) - 30 * a (n - 2)).toNat).toNat

end

end A354320.P13910773159807706549

/-!
# A354321: Digit above the least significant 01 digit pair in the Zeckendorf representation of n.

The programs for A354321, the canonical program `A354321.P4938463087146750966` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354321 has offset 1).

The definition of A354321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354321.P4938463087146750966

`A003849(A019586(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A354321

/-- `A003849(A019586(n+1))` -/
def P4938463087146750966.Spec : Prop :=
  ∀ n, P4938463087146750966.a n = A354321 (n + 1)

theorem P4938463087146750966.correct : P4938463087146750966.Spec := by
  intro n
  simp only [A354321, Nat.add_sub_cancel]

end A354321

/-! ## A354321.P12137591503940073832

`A327219(A348853(n+1))`
-/

namespace A354321.P12137591503940073832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 (A348853 (n + 1)).toNat

end

end A354321.P12137591503940073832

namespace A354321

/-- `A327219(A348853(n+1))` -/
def P12137591503940073832.Spec : Prop :=
  ∀ n, P12137591503940073832.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P5460021534953595413

`A005713(A348853(n+1)+1)`
-/

namespace A354321.P5460021534953595413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A348853 (n + 1) + 1).toNat

end

end A354321.P5460021534953595413

namespace A354321

/-- `A005713(A348853(n+1)+1)` -/
def P5460021534953595413.Spec : Prop :=
  ∀ n, P5460021534953595413.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P9123738644306644085

`A003849(A003603(n+1)-1)`
-/

namespace A354321.P9123738644306644085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A003603 (n + 1) - 1).toNat

end

end A354321.P9123738644306644085

namespace A354321

/-- `A003849(A003603(n+1)-1)` -/
def P9123738644306644085.Spec : Prop :=
  ∀ n, P9123738644306644085.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P14047565076617573515

`A188432(A019586(n+1)+2)`
-/

namespace A354321.P14047565076617573515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A019586 (n + 1) + 2).toNat

end

end A354321.P14047565076617573515

namespace A354321

/-- `A188432(A019586(n+1)+2)` -/
def P14047565076617573515.Spec : Prop :=
  ∀ n, P14047565076617573515.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P7425115705903023856

`A003849(A348853(n+1)+2)`
-/

namespace A354321.P7425115705903023856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A348853 (n + 1) + 2).toNat

end

end A354321.P7425115705903023856

namespace A354321

/-- `A003849(A348853(n+1)+2)` -/
def P7425115705903023856.Spec : Prop :=
  ∀ n, P7425115705903023856.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P6941214228854992008

`1-A005614(A003603(n+1)-1)`
-/

namespace A354321.P6941214228854992008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005614 (A003603 (n + 1) - 1).toNat

end

end A354321.P6941214228854992008

namespace A354321

/-- `1-A005614(A003603(n+1)-1)` -/
def P6941214228854992008.Spec : Prop :=
  ∀ n, P6941214228854992008.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P12213321562865558240

`A005614(A000201(A003603(n+1)))`
-/

namespace A354321.P12213321562865558240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A000201 (A003603 (n + 1)).toNat).toNat

end

end A354321.P12213321562865558240

namespace A354321

/-- `A005614(A000201(A003603(n+1)))` -/
def P12213321562865558240.Spec : Prop :=
  ∀ n, P12213321562865558240.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P7272352925833515934

`A003849(A377738(n+1))`
-/

namespace A354321.P7272352925833515934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A377738 (n + 1)).toNat

end

end A354321.P7272352925833515934

namespace A354321

/-- `A003849(A377738(n+1))` -/
def P7272352925833515934.Spec : Prop :=
  ∀ n, P7272352925833515934.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P8140055433264518407

`A059841(A304100(n+1))`
-/

namespace A354321.P8140055433264518407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A304100 (n + 1)).toNat

end

end A354321.P8140055433264518407

namespace A354321

/-- `A059841(A304100(n+1))` -/
def P8140055433264518407.Spec : Prop :=
  ∀ n, P8140055433264518407.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P7796283363090051500

`A030308(A007814(A304100(n+1))²)`
-/

namespace A354321.P7796283363090051500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A007814 (A304100 (n + 1)).toNat ^ 2).toNat

end

end A354321.P7796283363090051500

namespace A354321

/-- `A030308(A007814(A304100(n+1))²)` -/
def P7796283363090051500.Spec : Prop :=
  ∀ n, P7796283363090051500.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P15576471288874951192

`A038189(A048679(n+1))`
-/

namespace A354321.P15576471288874951192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A048679 (n + 1)).toNat

end

end A354321.P15576471288874951192

namespace A354321

/-- `A038189(A048679(n+1))` -/
def P15576471288874951192.Spec : Prop :=
  ∀ n, P15576471288874951192.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P635742902340821140

`A086483(A003714(n+1))`
-/

namespace A354321.P635742902340821140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086483 (A003714 (n + 1)).toNat

end

end A354321.P635742902340821140

namespace A354321

/-- `A086483(A003714(n+1))` -/
def P635742902340821140.Spec : Prop :=
  ∀ n, P635742902340821140.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P1600997377385322760

`A086483(A022340(n+1)/2)`
-/

namespace A354321.P1600997377385322760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086483 (SequenceMachineLib.roundAway ((A022340 (n + 1) : ℚ) / 2)).toNat

end

end A354321.P1600997377385322760

namespace A354321

/-- `A086483(A022340(n+1)/2)` -/
def P1600997377385322760.Spec : Prop :=
  ∀ n, P1600997377385322760.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P12441440340685070964

`A038189(A371176(n+1))`
-/

namespace A354321.P12441440340685070964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A371176 (n + 1)).toNat

end

end A354321.P12441440340685070964

namespace A354321

/-- `A038189(A371176(n+1))` -/
def P12441440340685070964.Spec : Prop :=
  ∀ n, P12441440340685070964.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P7207522844314724466

`A014707(A295897(n+1))`
-/

namespace A354321.P7207522844314724466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A295897 (n + 1)).toNat

end

end A354321.P7207522844314724466

namespace A354321

/-- `A014707(A295897(n+1))` -/
def P7207522844314724466.Spec : Prop :=
  ∀ n, P7207522844314724466.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P5997999438031938890

`A086483(A022340(n+1))`
-/

namespace A354321.P5997999438031938890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086483 (A022340 (n + 1)).toNat

end

end A354321.P5997999438031938890

namespace A354321

/-- `A086483(A022340(n+1))` -/
def P5997999438031938890.Spec : Prop :=
  ∀ n, P5997999438031938890.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P16385937601090425218

`A086483(A277335(n+1))`
-/

namespace A354321.P16385937601090425218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086483 (A277335 (n + 1)).toNat

end

end A354321.P16385937601090425218

namespace A354321

/-- `A086483(A277335(n+1))` -/
def P16385937601090425218.Spec : Prop :=
  ∀ n, P16385937601090425218.a n = A354321 (n + 1)

end A354321

/-! ## A354321.P2874230861584665220

`A086483(A290258(n+2))`
-/

namespace A354321.P2874230861584665220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086483 (A290258 (n + 2)).toNat

end

end A354321.P2874230861584665220

namespace A354321

/-- `A086483(A290258(n+2))` -/
def P2874230861584665220.Spec : Prop :=
  ∀ n, P2874230861584665220.a n = A354321 (n + 1)

end A354321

/-!
# A354322: Irregular triangle read by rows where row n lists the distinct Matula-Goebel numbers of terminal subtrees occurring in the tree with Matula-Goebel number n.

The programs for A354322, there is no canonical definition to state claims against.
-/

/-! ## A354322.P14429117142381179779

`A324924(A260992(n+1))`
-/

namespace A354322.P14429117142381179779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324924 (A260992 (n + 1)).toNat

end

end A354322.P14429117142381179779

/-! ## A354322.P5124825376814496924

`A265691(∑[A369596(n)!])`
-/

namespace A354322.P5124825376814496924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A369596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354322.P5124825376814496924

/-! ## A354322.P2195391663067235024

`A002260(lt[A281269(n+2), A332402(3*n+1)])`
-/

namespace A354322.P2195391663067235024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281269 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332402 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354322.P2195391663067235024

/-! ## A354322.P5297800188404196906

`A124763(or(1, A272919(n+3)))`
-/

namespace A354322.P5297800188404196906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (Int.lor 1 (A272919 (n + 3))).toNat

end

end A354322.P5297800188404196906

/-! ## A354322.P1722235372145773682

`A333632(A272919(n+3)-2^val(n+1, 2))`
-/

namespace A354322.P1722235372145773682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A272919 (n + 3) - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)).toNat

end

end A354322.P1722235372145773682

/-!
# A354323: Expansion of e.g.f. exp( x/4 * (exp(2 * x) - 1) ).

The programs for A354323, there is no canonical definition to state claims against.
-/

/-! ## A354323.P16338059687502377170

`A266123(floor(A294222(n)+acot(n)))`
-/

namespace A354323.P16338059687502377170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266123 ⌊(A294222 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A354323.P16338059687502377170

/-! ## A354323.P8032952394472051782

`A063993(A094013(n))+A000166(n)`
-/

namespace A354323.P8032952394472051782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 (A094013 n).toNat + A000166 n

end

end A354323.P8032952394472051782

/-! ## A354323.P7553688164811573925

`A229969(A088715(n))+A109972(n)`
-/

namespace A354323.P7553688164811573925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229969 (A088715 n).toNat + A109972 n

end

end A354323.P7553688164811573925

/-!
# A354324: Expansion of e.g.f. exp( x/8 * (exp(4 * x) - 1) ).

The programs for A354324, there is no canonical definition to state claims against.
-/

/-! ## A354324.P8979140867104052015

`A056812(∑[2*(n+1)]*a(n-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A354324.P8979140867104052015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A056812 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * a (n - 1)).toNat

end

end A354324.P8979140867104052015

/-! ## A354324.P16282777343878123201

`abs(A317409(A001096(n)))`
-/

namespace A354324.P16282777343878123201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317409 (A001096 n).toNat|

end

end A354324.P16282777343878123201

/-!
# A354325: Expansion of e.g.f. 1/(1 - x/4 * (exp(2 * x) - 1)).

The programs for A354325, there is no canonical definition to state claims against.
-/

/-! ## A354325.P17458938202501252841

`A008617(xor(6, A030904(n+1)))`
-/

namespace A354325.P17458938202501252841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (Int.xor 6 (A030904 (n + 1))).toNat

end

end A354325.P17458938202501252841

/-! ## A354325.P5440779419082339326

`floor(A055254(A351816(n))+acot(n))`
-/

namespace A354325.P5440779419082339326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055254 (A351816 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A354325.P5440779419082339326

/-! ## A354325.P5928192239740311111

`A055254(A351816(n)-floor(acot(n)))`
-/

namespace A354325.P5928192239740311111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055254 (A351816 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A354325.P5928192239740311111

/-!
# A354326: Expansion of e.g.f. 1/(1 - x/8 * (exp(4 * x) - 1)).

The programs for A354326, there is no canonical definition to state claims against.
-/

/-! ## A354326.P12276041794591575377

`A081753(A099156(n)+n)`
-/

namespace A354326.P12276041794591575377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A099156 n + (n : ℤ)).toNat

end

end A354326.P12276041794591575377

/-! ## A354326.P17562650344213777538

`A008676(A130744(n)-n)`
-/

namespace A354326.P17562650344213777538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A130744 n - (n : ℤ)).toNat

end

end A354326.P17562650344213777538

/-!
# A354327: Expansion of e.g.f. 1/(1 + x/4 * log(1 - 2 * x)).

The programs for A354327, there is no canonical definition to state claims against.
-/

/-! ## A354327.P15436980557460013850

`A011371(A271215(n)+A000161(n))`
-/

namespace A354327.P15436980557460013850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A271215 n + A000161 n).toNat

end

end A354327.P15436980557460013850

/-! ## A354327.P10109385295717794009

`A011371(A271215(n)+A084938(n))`
-/

namespace A354327.P10109385295717794009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A271215 n + A084938 n).toNat

end

end A354327.P10109385295717794009

/-! ## A354327.P8281053303334299641

`A011371(A271215(n)+A264428(n))`
-/

namespace A354327.P8281053303334299641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A271215 n + A264428 n).toNat

end

end A354327.P8281053303334299641

/-!
# A354328: Expansion of e.g.f. 1/(1 + x/8 * log(1 - 4 * x)).

The programs for A354328, there is no canonical definition to state claims against.
-/

/-! ## A354328.P14591510594560124513

`A004442(A052719(n)+∑{e}[xor(n, -n), 2-#])`
-/

namespace A354328.P14591510594560124513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A052719 n + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ))).toNat

end

end A354328.P14591510594560124513

/-! ## A354328.P17340351252627717519

`A165026(A045912(n)+A005968(n))`
-/

namespace A354328.P17340351252627717519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165026 (A045912 n + A005968 n).toNat

end

end A354328.P17340351252627717519

/-!
# A354329: Triangular number nearest to the sum of the first n positive triangular numbers.

The programs for A354329, there is no canonical definition to state claims against.
-/

/-! ## A354329.P15078386218191445626

`C(ceil(sqrt(∑[∑[2*n]])), 2)`
-/

namespace A354329.P15078386218191445626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat 2

end

end A354329.P15078386218191445626

/-! ## A354329.P11288459114950455276

`A161680(ceil(sqrt(∑[∑[2*n]])))`
-/

namespace A354329.P11288459114950455276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A354329.P11288459114950455276

/-! ## A354329.P2075508281034821555

`A000217(A172471(∑[∑[n]]))`
-/

namespace A354329.P2075508281034821555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A172471 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A354329.P2075508281034821555

/-! ## A354329.P17655545667431173553

`A000217(floor(sqrt(A007290(n+2))))`
-/

namespace A354329.P17655545667431173553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.sqrt (A007290 (n + 2))).toNat

end

end A354329.P17655545667431173553

/-! ## A354329.P16136522225624338034

`A000217(floor(sqrt(A006918(2*n))))`
-/

namespace A354329.P16136522225624338034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.sqrt (A006918 (2 * n))).toNat

end

end A354329.P16136522225624338034

/-!
# A354330: Distance from the sum of the first n positive triangular numbers to the nearest triangular number.

The programs for A354330, the canonical program `A354330.P1810111766731009996` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354330 has offset 0).

The definition of A354330 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354330.P9402818153506576611

`abs(A000292(n)-A354329(n))`
-/

namespace A354330.P9402818153506576611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000292 n - A354329 n|

end

end A354330.P9402818153506576611

namespace A354330

/-- `abs(A000292(n)-A354329(n))` -/
def P9402818153506576611.Spec : Prop :=
  ∀ n, P9402818153506576611.a n = A354330 n

end A354330

/-! ## A354330.P1810111766731009996

`A053616(A000292(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A354330

/-- `A053616(A000292(n))` -/
def P1810111766731009996.Spec : Prop :=
  ∀ n, P1810111766731009996.a n = A354330 n

theorem P1810111766731009996.correct : P1810111766731009996.Spec := by
  intro n
  simp only [A354330]

end A354330

/-! ## A354330.P9274274750274997565

`A053616(∑[∑[n]])`
-/

namespace A354330.P9274274750274997565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354330.P9274274750274997565

namespace A354330

/-- `A053616(∑[∑[n]])` -/
def P9274274750274997565.Spec : Prop :=
  ∀ n, P9274274750274997565.a n = A354330 n

end A354330

/-! ## A354330.P8671525543983790116

`A053616(C(n+2, 3))%64`
-/

namespace A354330.P8671525543983790116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053616 (Nat.choose (n + 2) 3)) 64

end

end A354330.P8671525543983790116

namespace A354330

/-- `A053616(C(n+2, 3))%64` -/
def P8671525543983790116.Spec : Prop :=
  ∀ n, P8671525543983790116.a n = A354330 n

end A354330

/-! ## A354330.P13783584535652826399

`floor(A274773(∑[∑[n]]+1)/2)`
-/

namespace A354330.P13783584535652826399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A274773 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2⌋

end

end A354330.P13783584535652826399

namespace A354330

/-- `floor(A274773(∑[∑[n]]+1)/2)` -/
def P13783584535652826399.Spec : Prop :=
  ∀ n, P13783584535652826399.a n = A354330 n

end A354330

/-!
# A354331: a(n) is the denominator of Sum_{k=0..n} 1 / (2*k+1)!.

The programs for A354331, there is no canonical definition to state claims against.
-/

/-! ## A354331.P5171546426156479788

`A187829(2*n+1)!/3^val(n+1, 3)`
-/

namespace A354331.P5171546426156479788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A187829 (2 * n + 1)).toNat : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

end

end A354331.P5171546426156479788

/-! ## A354331.P8620614783444847861

`A067653(Δ[A171722(n)²])`
-/

namespace A354331.P8620614783444847861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171722 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067653 (f1 (n + 1) - f1 n).toNat

end

end A354331.P8620614783444847861

/-! ## A354331.P10818571332543352573

`A279333(Δ[A171679(n)²])`
-/

namespace A354331.P10818571332543352573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171679 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279333 (f1 (n + 1) - f1 n).toNat

end

end A354331.P10818571332543352573

/-! ## A354331.P14669312016641529246

`A067653(Δ[n*A171722(n)])`
-/

namespace A354331.P14669312016641529246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A171722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067653 (f1 (n + 1) - f1 n).toNat

end

end A354331.P14669312016641529246

/-!
# A354332: a(n) is the numerator of Sum_{k=0..n} (-1)^k / (2*k+1)!.

The programs for A354332, there is no canonical definition to state claims against.
-/

/-! ## A354332.P16690963936259328390

`A354333(n)-A067621(n)`
-/

namespace A354332.P16690963936259328390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354333 n - A067621 n

end

end A354332.P16690963936259328390

/-! ## A354332.P12467615607882587994

`Δ[n²]!/A301330(A301308(n))-A067621(n)`
-/

namespace A354332.P12467615607882587994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A301330 (A301308 n).toNat : ℚ) - (A067621 n : ℚ)

end

end A354332.P12467615607882587994

/-! ## A354332.P15900925532831410571

`A074790(n)/A281392(A318112(n+1))`
-/

namespace A354332.P15900925532831410571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074790 n : ℚ) / (A281392 (A318112 (n + 1)).toNat : ℚ)

end

end A354332.P15900925532831410571

/-!
# A354333: a(n) is the denominator of Sum_{k=0..n} (-1)^k / (2*k+1)!.

The programs for A354333, there is no canonical definition to state claims against.
-/

/-! ## A354333.P15973477290886153768

`A354332(n)+A067621(n)`
-/

namespace A354333.P15973477290886153768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354332 n + A067621 n

end

end A354333.P15973477290886153768

/-! ## A354333.P3552514495607918093

`Δ[n²]!/A301330(A301308(n))`
-/

namespace A354333.P3552514495607918093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A301330 (A301308 n).toNat : ℚ)

end

end A354333.P3552514495607918093

/-! ## A354333.P489727614509410133

`record[A004442(n)!]/A301330(A301308(n))`
-/

namespace A354333.P489727614509410133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004442 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A301330 (A301308 n).toNat : ℚ)

end

end A354333.P489727614509410133

/-! ## A354333.P4173144894915022973

`A000142(2*n+1)/A348129(A157136(n))`
-/

namespace A354333.P4173144894915022973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n + 1) : ℚ) / (A348129 (A157136 n).toNat : ℚ)

end

end A354333.P4173144894915022973

/-!
# A354334: a(n) is the numerator of Sum_{k=0..n} 1 / (2*k)!.

The programs for A354334, there is no canonical definition to state claims against.
-/

/-! ## A354334.P14080464433417988310

`record[A196080(n)-A266437(n)]`
-/

namespace A354334.P14080464433417988310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196080 n - A266437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354334.P14080464433417988310

/-! ## A354334.P18432841751518594307

`A196080(2*n)-A000007(n)`
-/

namespace A354334.P18432841751518594307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196080 (2 * n) - A000007 n

end

end A354334.P18432841751518594307

/-! ## A354334.P1379354313109788855

`A196080(2*n)-A015068(n)`
-/

namespace A354334.P1379354313109788855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196080 (2 * n) - A015068 n

end

end A354334.P1379354313109788855

/-! ## A354334.P9135818914650978956

`A196080(2*n)/A054977(n)`
-/

namespace A354334.P9135818914650978956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196080 (2 * n) : ℚ) / (A054977 n : ℚ)

end

end A354334.P9135818914650978956

/-! ## A354334.P9301455468995055913

`A196080(2*n)-A266437(2*n)`
-/

namespace A354334.P9301455468995055913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196080 (2 * n) - A266437 (2 * n)

end

end A354334.P9301455468995055913

/-!
# A354335: a(n) is the denominator of Sum_{k=0..n} 1 / (2*k)!.

The programs for A354335, there is no canonical definition to state claims against.
-/

/-! ## A354335.P11228847431049271122

`gcd((2*n)!, A323491(A323481(n+1)))`
-/

namespace A354335.P11228847431049271122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (2 * n) : ℤ) (A323491 (A323481 (n + 1)).toNat)

end

end A354335.P11228847431049271122

/-! ## A354335.P17019776930832275422

`gcd(A010050(n), A323491(A323481(n+1)))`
-/

namespace A354335.P17019776930832275422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010050 n) (A323491 (A323481 (n + 1)).toNat)

end

end A354335.P17019776930832275422

/-! ## A354335.P10442249539037086520

`A036503(2*n+1)/A073201(A326524(3*n+4))`
-/

namespace A354335.P10442249539037086520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036503 (2 * n + 1) : ℚ) / (A073201 (A326524 (3 * n + 4)).toNat : ℚ)

end

end A354335.P10442249539037086520

/-!
# A354336: a(n) is the integer w such that (L(2*n)^2, -L(2*n-1)^2, -w) is a primitive solution to the Diophantine equation 2*x^3 + 2*y^3 + z^3 = 125, where L(n) is the n-th Lucas number (A000032).

The programs for A354336, the canonical program `A354336.P242940925303812282` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354336 has offset 0).

The definition of A354336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354336.P242940925303812282

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=11, a(2)=61`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A354336

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P242940925303812282.Spec : Prop :=
  ∀ n, P242940925303812282.a n = A354336 n

theorem P242940925303812282.correct : P242940925303812282.Spec := by
  intro n
  simp only [A354336]

end A354336

/-! ## A354336.P9050192003894500744

`A052995(n)*A054888(n)+1`
-/

namespace A354336.P9050192003894500744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052995 n * A054888 n + 1

end

end A354336.P9050192003894500744

namespace A354336

/-- `A052995(n)*A054888(n)+1` -/
def P9050192003894500744.Spec : Prop :=
  ∀ n, P9050192003894500744.a n = A354336 n

end A354336

/-! ## A354336.P1075539233474440005

`A006355(2*n)*A022088(2*n)+1`
-/

namespace A354336.P1075539233474440005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (2 * n) * A022088 (2 * n) + 1

end

end A354336.P1075539233474440005

namespace A354336

/-- `A006355(2*n)*A022088(2*n)+1` -/
def P1075539233474440005.Spec : Prop :=
  ∀ n, P1075539233474440005.a n = A354336 n

end A354336

/-! ## A354336.P18061065858568221903

`A201157(2*n+1)+2-A005592(2*n)`
-/

namespace A354336.P18061065858568221903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (2 * n + 1) + (2 - A005592 (2 * n))

end

end A354336.P18061065858568221903

namespace A354336

/-- `A201157(2*n+1)+2-A005592(2*n)` -/
def P18061065858568221903.Spec : Prop :=
  ∀ n, P18061065858568221903.a n = A354336 n

end A354336

/-! ## A354336.P1488274456870412164

`1-A022093(2*n)*A152163(2*n+1)`
-/

namespace A354336.P1488274456870412164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A022093 (2 * n) * A152163 (2 * n + 1)

end

end A354336.P1488274456870412164

namespace A354336

/-- `1-A022093(2*n)*A152163(2*n+1)` -/
def P1488274456870412164.Spec : Prop :=
  ∀ n, P1488274456870412164.a n = A354336 n

end A354336

/-! ## A354336.P17601763454131192183

`A052995(n)*A229339(A008574(n))+1`
-/

namespace A354336.P17601763454131192183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052995 n * A229339 (A008574 n).toNat + 1

end

end A354336.P17601763454131192183

namespace A354336

/-- `A052995(n)*A229339(A008574(n))+1` -/
def P17601763454131192183.Spec : Prop :=
  ∀ n, P17601763454131192183.a n = A354336 n

end A354336

/-! ## A354336.P9176678952973396262

`A055850(2*n)-A081074(n+1)`
-/

namespace A354336.P9176678952973396262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055850 (2 * n) - A081074 (n + 1)

end

end A354336.P9176678952973396262

namespace A354336

/-- `A055850(2*n)-A081074(n+1)` -/
def P9176678952973396262.Spec : Prop :=
  ∀ n, P9176678952973396262.a n = A354336 n

end A354336

/-! ## A354336.P3374392847573090636

`A081071(n)²%A081069(n+1)`
-/

namespace A354336.P3374392847573090636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081071 n ^ 2) (A081069 (n + 1))

end

end A354336.P3374392847573090636

namespace A354336

/-- `A081071(n)²%A081069(n+1)` -/
def P3374392847573090636.Spec : Prop :=
  ∀ n, P3374392847573090636.a n = A354336 n

end A354336

/-!
# A354337: a(n) is the integer w such that (L(2*n)^2, -L(2*n + 1)^2, w) is a primitive solution to the Diophantine equation 2*x^3 + 2*y^3 + z^3 = 125, where L(n) is the n-th Lucas number (A000032).

The programs for A354337, the canonical program `A354337.P8034457894308853883` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354337 has offset 1).

The definition of A354337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354337.P5964067992643235001

`2*A081017(n+1)-1`
-/

namespace A354337.P5964067992643235001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081017 (n + 1) - 1

end

end A354337.P5964067992643235001

namespace A354337

/-- `2*A081017(n+1)-1` -/
def P5964067992643235001.Spec : Prop :=
  ∀ n, P5964067992643235001.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P7704180923718847194

`2*A056914(n+1)-3`
-/

namespace A354337.P7704180923718847194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056914 (n + 1) - 3

end

end A354337.P7704180923718847194

namespace A354337

/-- `2*A056914(n+1)-3` -/
def P7704180923718847194.Spec : Prop :=
  ∀ n, P7704180923718847194.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P3926279725267471037

`10*A089508(n+1)+9`
-/

namespace A354337.P3926279725267471037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A089508 (n + 1) + 9

end

end A354337.P3926279725267471037

namespace A354337

/-- `10*A089508(n+1)+9` -/
def P3926279725267471037.Spec : Prop :=
  ∀ n, P3926279725267471037.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P8034457894308853883

`15*A092521(n+1)+A288913(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A354337

/-- `15*A092521(n+1)+A288913(n)` -/
def P8034457894308853883.Spec : Prop :=
  ∀ n, P8034457894308853883.a n = A354337 (n + 1)

theorem P8034457894308853883.correct : P8034457894308853883.Spec := by
  intro n
  simp only [A354337, Nat.add_sub_cancel]

end A354337

/-! ## A354337.P13823190156721600929

`A168674(4*(n+1))-1`
-/

namespace A354337.P13823190156721600929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 (4 * (n + 1)) - 1

end

end A354337.P13823190156721600929

namespace A354337

/-- `A168674(4*(n+1))-1` -/
def P13823190156721600929.Spec : Prop :=
  ∀ n, P13823190156721600929.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P18265052784808400420

`2*A005970(2*(n+1))-1`
-/

namespace A354337.P18265052784808400420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005970 (2 * (n + 1)) - 1

end

end A354337.P18265052784808400420

namespace A354337

/-- `2*A005970(2*(n+1))-1` -/
def P18265052784808400420.Spec : Prop :=
  ∀ n, P18265052784808400420.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P13313850030710011407

`A022112(A008574(n+1))-3`
-/

namespace A354337.P13313850030710011407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 (A008574 (n + 1)).toNat - 3

end

end A354337.P13313850030710011407

namespace A354337

/-- `A022112(A008574(n+1))-3` -/
def P13313850030710011407.Spec : Prop :=
  ∀ n, P13313850030710011407.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P13577766099820563482

`A081078(n+1)+Δ[A081071(n)]`
-/

namespace A354337.P13577766099820563482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081078 (n + 1) + (f1 (n + 1) - f1 n)

end

end A354337.P13577766099820563482

namespace A354337

/-- `A081078(n+1)+Δ[A081071(n)]` -/
def P13577766099820563482.Spec : Prop :=
  ∀ n, P13577766099820563482.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P8195848396598685446

`A081078(n+1)+Δ[A081077(n)]`
-/

namespace A354337.P8195848396598685446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081078 (n + 1) + (f1 (n + 1) - f1 n)

end

end A354337.P8195848396598685446

namespace A354337

/-- `A081078(n+1)+Δ[A081077(n)]` -/
def P8195848396598685446.Spec : Prop :=
  ∀ n, P8195848396598685446.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P4106709931858018311

`A081078(n+1)+Δ[A081079(n)]`
-/

namespace A354337.P4106709931858018311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081078 (n + 1) + (f1 (n + 1) - f1 n)

end

end A354337.P4106709931858018311

namespace A354337

/-- `A081078(n+1)+Δ[A081079(n)]` -/
def P4106709931858018311.Spec : Prop :=
  ∀ n, P4106709931858018311.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P16625618990230175477

`A081074(n+2)+A001906(2*n+1)`
-/

namespace A354337.P16625618990230175477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081074 (n + 2) + A001906 (2 * n + 1)

end

end A354337.P16625618990230175477

namespace A354337

/-- `A081074(n+2)+A001906(2*n+1)` -/
def P16625618990230175477.Spec : Prop :=
  ∀ n, P16625618990230175477.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P16732098751915429255

`A215602(2*n+1)+A288219(2*n+1)²`
-/

namespace A354337.P16732098751915429255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 (2 * n + 1) + A288219 (2 * n + 1) ^ 2

end

end A354337.P16732098751915429255

namespace A354337

/-- `A215602(2*n+1)+A288219(2*n+1)²` -/
def P16732098751915429255.Spec : Prop :=
  ∀ n, P16732098751915429255.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P357873711523387259

`A081071(n+1)+A002878(n)*A005248(n+1)`
-/

namespace A354337.P357873711523387259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081071 (n + 1) + A002878 n * A005248 (n + 1)

end

end A354337.P357873711523387259

namespace A354337

/-- `A081071(n+1)+A002878(n)*A005248(n+1)` -/
def P357873711523387259.Spec : Prop :=
  ∀ n, P357873711523387259.a n = A354337 (n + 1)

end A354337

/-! ## A354337.P13432167419748592248

`A002878(n+1)*A054888(n+1)-A081071(n)`
-/

namespace A354337.P13432167419748592248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) * A054888 (n + 1) - A081071 n

end

end A354337.P13432167419748592248

namespace A354337

/-- `A002878(n+1)*A054888(n+1)-A081071(n)` -/
def P13432167419748592248.Spec : Prop :=
  ∀ n, P13432167419748592248.a n = A354337 (n + 1)

end A354337

/-!
# A354338: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} 1/(d * (k/d)!) )/(n-k)!.

The programs for A354338, there is no canonical definition to state claims against.
-/

/-! ## A354338.P14755701264191688996

`ceil(sqrt(A300694(n+1)))`
-/

namespace A354338.P14755701264191688996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A300694 (n + 1) : ℝ)⌉

end

end A354338.P14755701264191688996

/-!
# A354340: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} d^(k/d + 1) )/(k * (n-k)!).

The programs for A354340, there is no canonical definition to state claims against.
-/

/-! ## A354340.P5486764544697630977

`A341820(A007318(n)+A000803(3*n+1))`
-/

namespace A354340.P5486764544697630977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341820 (A007318 n + A000803 (3 * n + 1)).toNat

end

end A354340.P5486764544697630977

/-!
# A354341: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} 1/(d * ((k/d)!)^d) )/(n-k)!.

The programs for A354341, there is no canonical definition to state claims against.
-/

/-! ## A354341.P18213736363357785350

`A267306(∑[n²+2])`
-/

namespace A354341.P18213736363357785350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354341.P18213736363357785350

/-!
# A354342: Numbers divisible by a square greater than 1 that are the sum of two consecutive numbers divisible by a square greater than 1.

The programs for A354342, there is no canonical definition to state claims against.
-/

/-! ## A354342.P130565711359044192

`∩[A068781(n+1), A005408(A068781(n+1))]`
-/

namespace A354342.P130565711359044192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A068781 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354342.P130565711359044192

/-!
# A354343: Number of distinct sums of n complex 6th power roots of unity.

The programs for A354343, the canonical program `A354343.P7149696695525684523` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354343 has offset 0).

The definition of A354343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354343.P7149696695525684523

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=19, a(3)=37, a(4)=61`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A354343

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7149696695525684523.Spec : Prop :=
  ∀ n, P7149696695525684523.a n = A354343 n

theorem P7149696695525684523.correct : P7149696695525684523.Spec := by
  intro n
  simp only [A354343]

end A354343

/-! ## A354343.P7717427217042451888

`Δ[n^3]-char[1]`
-/

namespace A354343.P7717427217042451888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A354343.P7717427217042451888

namespace A354343

/-- `Δ[n^3]-char[1]` -/
def P7717427217042451888.Spec : Prop :=
  ∀ n, P7717427217042451888.a n = A354343 n

end A354343

/-! ## A354343.P15832170463220587010

`xor(Δ[n^3], char[1])`
-/

namespace A354343.P15832170463220587010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A354343.P15832170463220587010

namespace A354343

/-- `xor(Δ[n^3], char[1])` -/
def P15832170463220587010.Spec : Prop :=
  ∀ n, P15832170463220587010.a n = A354343 n

end A354343

/-! ## A354343.P4590193481657403360

`Δ[n^3-floor(atan(n))]`
-/

namespace A354343.P4590193481657403360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354343.P4590193481657403360

namespace A354343

/-- `Δ[n^3-floor(atan(n))]` -/
def P4590193481657403360.Spec : Prop :=
  ∀ n, P4590193481657403360.a n = A354343 n

end A354343

/-! ## A354343.P18251526487929966391

`or(1-char[1], ∑[6*n])`
-/

namespace A354343.P18251526487929966391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A354343.P18251526487929966391

namespace A354343

/-- `or(1-char[1], ∑[6*n])` -/
def P18251526487929966391.Spec : Prop :=
  ∀ n, P18251526487929966391.a n = A354343 n

end A354343

/-! ## A354343.P1771677582568985937

`Δ[xor(n^3, C(3, n²))]`
-/

namespace A354343.P1771677582568985937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n ^ 3) (Nat.choose 3 (n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A354343.P1771677582568985937

namespace A354343

/-- `Δ[xor(n^3, C(3, n²))]` -/
def P1771677582568985937.Spec : Prop :=
  ∀ n, P1771677582568985937.a n = A354343 n

end A354343

/-! ## A354343.P12624876851409277536

`Δ[C(n, n²)+n^3]`
-/

namespace A354343.P12624876851409277536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2) + n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A354343.P12624876851409277536

namespace A354343

/-- `Δ[C(n, n²)+n^3]` -/
def P12624876851409277536.Spec : Prop :=
  ∀ n, P12624876851409277536.a n = A354343 n

end A354343

/-! ## A354343.P2868866241593324433

`Δ[ceil(abs(n^3-atan(n)))]`
-/

namespace A354343.P2868866241593324433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(n ^ 3 : ℝ) - Real.arctan (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354343.P2868866241593324433

namespace A354343

/-- `Δ[ceil(abs(n^3-atan(n)))]` -/
def P2868866241593324433.Spec : Prop :=
  ∀ n, P2868866241593324433.a n = A354343 n

end A354343

/-! ## A354343.P1477054327611401189

`Δ[(n*a(floor(acot(n))))^3]` with `a(0)=1, a(1)=2`
-/

namespace A354343.P1477054327611401189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n * f1 ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A354343.P1477054327611401189

namespace A354343

/-- `Δ[(n*a(floor(acot(n))))^3]` -/
def P1477054327611401189.Spec : Prop :=
  ∀ n, P1477054327611401189.a n = A354343 n

end A354343

/-! ## A354343.P6579455632497743554

`Δ[A000578(n)+C(n, n²)]`
-/

namespace A354343.P6579455632497743554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (Nat.choose n (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354343.P6579455632497743554

namespace A354343

/-- `Δ[A000578(n)+C(n, n²)]` -/
def P6579455632497743554.Spec : Prop :=
  ∀ n, P6579455632497743554.a n = A354343 n

end A354343

/-! ## A354343.P936890532378793528

`Δ[(A103505(n)+n)*A028310(n)]`
-/

namespace A354343.P936890532378793528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103505 n + (n : ℤ)) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354343.P936890532378793528

namespace A354343

/-- `Δ[(A103505(n)+n)*A028310(n)]` -/
def P936890532378793528.Spec : Prop :=
  ∀ n, P936890532378793528.a n = A354343 n

end A354343

/-! ## A354343.P7143561614131298972

`Δ[Δ[A161680(n)²-A004275(n)]]`
-/

namespace A354343.P7143561614131298972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n ^ 2 - A004275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354343.P7143561614131298972

namespace A354343

/-- `Δ[Δ[A161680(n)²-A004275(n)]]` -/
def P7143561614131298972.Spec : Prop :=
  ∀ n, P7143561614131298972.a n = A354343 n

end A354343

/-! ## A354343.P4953941609519486459

`Δ[record[A126951(n+1)]]`
-/

namespace A354343.P4953941609519486459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126951 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354343.P4953941609519486459

namespace A354343

/-- `Δ[record[A126951(n+1)]]` -/
def P4953941609519486459.Spec : Prop :=
  ∀ n, P4953941609519486459.a n = A354343 n

end A354343

/-! ## A354343.P6945570594583592108

`Δ[record[A109594(n+1)]]`
-/

namespace A354343.P6945570594583592108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354343.P6945570594583592108

namespace A354343

/-- `Δ[record[A109594(n+1)]]` -/
def P6945570594583592108.Spec : Prop :=
  ∀ n, P6945570594583592108.a n = A354343 n

end A354343

/-! ## A354343.P15722104413700392358

`Δ[record[A110001(2*n+1)]]`
-/

namespace A354343.P15722104413700392358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354343.P15722104413700392358

namespace A354343

/-- `Δ[record[A110001(2*n+1)]]` -/
def P15722104413700392358.Spec : Prop :=
  ∀ n, P15722104413700392358.a n = A354343 n

end A354343

/-! ## A354343.P7035394580385697512

`Δ[record[A110008(2*n+1)]]`
-/

namespace A354343.P7035394580385697512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354343.P7035394580385697512

namespace A354343

/-- `Δ[record[A110008(2*n+1)]]` -/
def P7035394580385697512.Spec : Prop :=
  ∀ n, P7035394580385697512.a n = A354343 n

end A354343

/-! ## A354343.P2252646965186455068

`and(A003215(n), A267890(n))`
-/

namespace A354343.P2252646965186455068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003215 n) (A267890 n)

end

end A354343.P2252646965186455068

namespace A354343

/-- `and(A003215(n), A267890(n))` -/
def P2252646965186455068.Spec : Prop :=
  ∀ n, P2252646965186455068.a n = A354343 n

end A354343

/-!
# A354344: a(n) = 1 if n is x * A005383(i), where x is either 2, 3, 8, 9 or 15 and i > 2 [i.e., A005383(i) > 5], otherwise 0.

The programs for A354344, the canonical program `A354344.P140278104913935227` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354344 has offset 1).

The definition of A354344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354344.P16157866235127184074

`and(A051007(A129647(n+1)), A353637(n+1))`
-/

namespace A354344.P16157866235127184074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051007 (A129647 (n + 1)).toNat) (A353637 (n + 1))

end

end A354344.P16157866235127184074

namespace A354344

/-- `and(A051007(A129647(n+1)), A353637(n+1))` -/
def P16157866235127184074.Spec : Prop :=
  ∀ n, P16157866235127184074.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P3153803887053958433

`and(A078826(A209434(n)), A353637(n+1))`
-/

namespace A354344.P3153803887053958433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078826 (A209434 n).toNat) (A353637 (n + 1))

end

end A354344.P3153803887053958433

namespace A354344

/-- `and(A078826(A209434(n)), A353637(n+1))` -/
def P3153803887053958433.Spec : Prop :=
  ∀ n, P3153803887053958433.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P8233926852316084369

`A332677(A028234(n+1))*A353637(n+1)`
-/

namespace A354344.P8233926852316084369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 (A028234 (n + 1)).toNat * A353637 (n + 1)

end

end A354344.P8233926852316084369

namespace A354344

/-- `A332677(A028234(n+1))*A353637(n+1)` -/
def P8233926852316084369.Spec : Prop :=
  ∀ n, P8233926852316084369.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P3250629926564681913

`A332677(A119288(n+1))*A353637(n+1)`
-/

namespace A354344.P3250629926564681913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 (A119288 (n + 1)).toNat * A353637 (n + 1)

end

end A354344.P3250629926564681913

namespace A354344

/-- `A332677(A119288(n+1))*A353637(n+1)` -/
def P3250629926564681913.Spec : Prop :=
  ∀ n, P3250629926564681913.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P886551601244578263

`(A353682(n+1)-A353681(n+1))*A332677(A119288(n+1))`
-/

namespace A354344.P886551601244578263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353682 (n + 1) - A353681 (n + 1)) * A332677 (A119288 (n + 1)).toNat

end

end A354344.P886551601244578263

namespace A354344

/-- `(A353682(n+1)-A353681(n+1))*A332677(A119288(n+1))` -/
def P886551601244578263.Spec : Prop :=
  ∀ n, P886551601244578263.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P4249536650443375717

`A059841(A035457(n)^(A353682(n+1)-A353681(n+1)))`
-/

namespace A354344.P4249536650443375717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (SequenceMachineLib.roundAway ((A035457 n : ℚ) ^ (A353682 (n + 1) - A353681 (n + 1) : ℤ))).toNat

end

end A354344.P4249536650443375717

namespace A354344

/-- `A059841(A035457(n)^(A353682(n+1)-A353681(n+1)))` -/
def P4249536650443375717.Spec : Prop :=
  ∀ n, P4249536650443375717.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P13298527927046764695

`A124010(A007318(n))*A353637(n+1)`
-/

namespace A354344.P13298527927046764695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A007318 n).toNat * A353637 (n + 1)

end

end A354344.P13298527927046764695

namespace A354344

/-- `A124010(A007318(n))*A353637(n+1)` -/
def P13298527927046764695.Spec : Prop :=
  ∀ n, P13298527927046764695.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P140278104913935227

`A014306(A131060(n))*A353637(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A354344

/-- `A014306(A131060(n))*A353637(n+1)` -/
def P140278104913935227.Spec : Prop :=
  ∀ n, P140278104913935227.a n = A354344 (n + 1)

theorem P140278104913935227.correct : P140278104913935227.Spec := by
  intro n
  simp only [A354344, Nat.add_sub_cancel]

end A354344

/-! ## A354344.P12894584189565932934

`A014306(A131063(n))*A353637(n+1)`
-/

namespace A354344.P12894584189565932934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A131063 n).toNat * A353637 (n + 1)

end

end A354344.P12894584189565932934

namespace A354344

/-- `A014306(A131063(n))*A353637(n+1)` -/
def P12894584189565932934.Spec : Prop :=
  ∀ n, P12894584189565932934.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P2479917190574571075

`and(A033945(A047010(n)), A353637(n+1))`
-/

namespace A354344.P2479917190574571075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033945 (A047010 n).toNat) (A353637 (n + 1))

end

end A354344.P2479917190574571075

namespace A354344

/-- `and(A033945(A047010(n)), A353637(n+1))` -/
def P2479917190574571075.Spec : Prop :=
  ∀ n, P2479917190574571075.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P1832928066283610840

`A001221(A130321(n))*A353637(n+1)`
-/

namespace A354344.P1832928066283610840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130321 n).toNat * A353637 (n + 1)

end

end A354344.P1832928066283610840

namespace A354344

/-- `A001221(A130321(n))*A353637(n+1)` -/
def P1832928066283610840.Spec : Prop :=
  ∀ n, P1832928066283610840.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P15065038480631198367

`and(A019426(A135278(n)), A353637(n+1))`
-/

namespace A354344.P15065038480631198367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019426 (A135278 n).toNat) (A353637 (n + 1))

end

end A354344.P15065038480631198367

namespace A354344

/-- `and(A019426(A135278(n)), A353637(n+1))` -/
def P15065038480631198367.Spec : Prop :=
  ∀ n, P15065038480631198367.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P8300155694787814147

`and(A038700(A329052(n)), A353637(n+1))`
-/

namespace A354344.P8300155694787814147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038700 (A329052 n).toNat) (A353637 (n + 1))

end

end A354344.P8300155694787814147

namespace A354344

/-- `and(A038700(A329052(n)), A353637(n+1))` -/
def P8300155694787814147.Spec : Prop :=
  ∀ n, P8300155694787814147.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P3776236133789825078

`and(A353632(A089633(n)), A353637(n+1))`
-/

namespace A354344.P3776236133789825078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353632 (A089633 n).toNat) (A353637 (n + 1))

end

end A354344.P3776236133789825078

namespace A354344

/-- `and(A353632(A089633(n)), A353637(n+1))` -/
def P3776236133789825078.Spec : Prop :=
  ∀ n, P3776236133789825078.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P18063663179173393776

`and(A032741(A046568(n+1)), A353637(n+1))`
-/

namespace A354344.P18063663179173393776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032741 (A046568 (n + 1)).toNat) (A353637 (n + 1))

end

end A354344.P18063663179173393776

namespace A354344

/-- `and(A032741(A046568(n+1)), A353637(n+1))` -/
def P18063663179173393776.Spec : Prop :=
  ∀ n, P18063663179173393776.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P6756594950864393444

`and(A029218(A238341(n)), A353637(n+1))`
-/

namespace A354344.P6756594950864393444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029218 (A238341 n).toNat) (A353637 (n + 1))

end

end A354344.P6756594950864393444

namespace A354344

/-- `and(A029218(A238341(n)), A353637(n+1))` -/
def P6756594950864393444.Spec : Prop :=
  ∀ n, P6756594950864393444.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P10935472396948872505

`and(A056594(A035457(n)), A353637(n+1))`
-/

namespace A354344.P10935472396948872505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056594 (A035457 n).toNat) (A353637 (n + 1))

end

end A354344.P10935472396948872505

namespace A354344

/-- `and(A056594(A035457(n)), A353637(n+1))` -/
def P10935472396948872505.Spec : Prop :=
  ∀ n, P10935472396948872505.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P2284427627088874201

`A070105(A119288(n+1)+A096810(n))`
-/

namespace A354344.P2284427627088874201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070105 (A119288 (n + 1) + A096810 n).toNat

end

end A354344.P2284427627088874201

namespace A354344

/-- `A070105(A119288(n+1)+A096810(n))` -/
def P2284427627088874201.Spec : Prop :=
  ∀ n, P2284427627088874201.a n = A354344 (n + 1)

end A354344

/-! ## A354344.P11524611021981676395

`A089633(n)%A000034(A128399(n+1))`
-/

namespace A354344.P11524611021981676395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089633 n) (A000034 (A128399 (n + 1)).toNat)

end

end A354344.P11524611021981676395

namespace A354344

/-- `A089633(n)%A000034(A128399(n+1))` -/
def P11524611021981676395.Spec : Prop :=
  ∀ n, P11524611021981676395.a n = A354344 (n + 1)

end A354344

/-!
# A354345: Numbers k such that k = x * A005383(i), where x is either 2, 3, 8, 9 or 15 and i > 2 [i.e., A005383(i) > 5].

The programs for A354345, there is no canonical definition to state claims against.
-/

/-! ## A354345.P2447407095498684919

`eq[1, A354344(n+1)]+1`
-/

namespace A354345.P2447407095498684919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354345.P2447407095498684919

/-! ## A354345.P14848072857260089075

`eq[1, A354344(A028310(n))]`
-/

namespace A354345.P14848072857260089075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354345.P14848072857260089075

/-! ## A354345.P12978311493092549685

`A020725(eq[1, A354344(n+1)])`
-/

namespace A354345.P12978311493092549685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354345.P12978311493092549685

/-! ## A354345.P13210143807238722399

`A114637(eq[1, A354344(n+1)])`
-/

namespace A354345.P13210143807238722399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354345.P13210143807238722399

/-! ## A354345.P15997154855163468728

`filter[A006872(n+1), A354344(#)]`
-/

namespace A354345.P15997154855163468728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354344 (f1 j).toNat = 1) n)

end

end A354345.P15997154855163468728

/-! ## A354345.P9118020820293624015

`filter[A009003(n+1), A354344(#)]`
-/

namespace A354345.P9118020820293624015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354344 (f1 j).toNat = 1) n)

end

end A354345.P9118020820293624015

/-! ## A354345.P11607233482247798983

`filter[A047243(n+1), A354344(#)]`
-/

namespace A354345.P11607233482247798983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354344 (f1 j).toNat = 1) n)

end

end A354345.P11607233482247798983

/-! ## A354345.P4915338526956720095

`filter[A050931(n+1), A354344(#)]`
-/

namespace A354345.P4915338526956720095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354344 (f1 j).toNat = 1) n)

end

end A354345.P4915338526956720095

/-! ## A354345.P4561228275011368132

`filter[A071821(n+1), A354344(#)]`
-/

namespace A354345.P4561228275011368132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354344 (f1 j).toNat = 1) n)

end

end A354345.P4561228275011368132

/-! ## A354345.P9611216402795960307

`filter[A072864(n+1), A354344(#)]`
-/

namespace A354345.P9611216402795960307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354344 (f1 j).toNat = 1) n)

end

end A354345.P9611216402795960307

/-!
# A354346: a(n) = 2*n - A064989(sigma(sigma(A003961(n)))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

The programs for A354346, the canonical program `A354346.P8135819062916911884` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354346 has offset 1).

The definition of A354346 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A354195, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354346.P8135819062916911884

`2*(n+1)-A354195(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A354346

/-- `2*(n+1)-A354195(n+1)` -/
def P8135819062916911884.Spec : Prop :=
  ∀ n, P8135819062916911884.a n = A354346 (n + 1)

theorem P8135819062916911884.correct : P8135819062916911884.Spec := by
  intro n
  simp only [A354346, Nat.add_sub_cancel]

end A354346

/-! ## A354346.P13350560287322229439

`A005843(n)+2-A354195(n+1)`
-/

namespace A354346.P13350560287322229439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A354195 (n + 1))

end

end A354346.P13350560287322229439

namespace A354346

/-- `A005843(n)+2-A354195(n+1)` -/
def P13350560287322229439.Spec : Prop :=
  ∀ n, P13350560287322229439.a n = A354346 (n + 1)

end A354346

/-! ## A354346.P4708293242400960458

`A016789(n)-(A354195(n+1)+n)`
-/

namespace A354346.P4708293242400960458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A354195 (n + 1) + (n : ℤ))

end

end A354346.P4708293242400960458

namespace A354346

/-- `A016789(n)-(A354195(n+1)+n)` -/
def P4708293242400960458.Spec : Prop :=
  ∀ n, P4708293242400960458.a n = A354346 (n + 1)

end A354346

/-! ## A354346.P14073343397750226098

`A023443(n)-A354195(n+1)+n+3`
-/

namespace A354346.P14073343397750226098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n - A354195 (n + 1) + (n + 3 : ℤ)

end

end A354346.P14073343397750226098

namespace A354346

/-- `A023443(n)-A354195(n+1)+n+3` -/
def P14073343397750226098.Spec : Prop :=
  ∀ n, P14073343397750226098.a n = A354346 (n + 1)

end A354346

/-! ## A354346.P8106001139394620222

`n+1-(A354195(n+1)+A001478(n+1))`
-/

namespace A354346.P8106001139394620222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A354195 (n + 1) + A001478 (n + 1))

end

end A354346.P8106001139394620222

namespace A354346

/-- `n+1-(A354195(n+1)+A001478(n+1))` -/
def P8106001139394620222.Spec : Prop :=
  ∀ n, P8106001139394620222.a n = A354346 (n + 1)

end A354346

/-! ## A354346.P11907725038478099791

`A000203(n+1)+A033879(n+1)-A354195(n+1)`
-/

namespace A354346.P11907725038478099791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A033879 (n + 1) - A354195 (n + 1))

end

end A354346.P11907725038478099791

namespace A354346

/-- `A000203(n+1)+A033879(n+1)-A354195(n+1)` -/
def P11907725038478099791.Spec : Prop :=
  ∀ n, P11907725038478099791.a n = A354346 (n + 1)

end A354346

/-!
# A354347: Dirichlet inverse of A345000, where A345000(n) = gcd(A003415(n), A003415(A276086(n))), with A003415 the arithmetic derivative, and A276086 the primorial base exp-function.

The programs for A354347, there is no canonical definition to state claims against.
-/

/-! ## A354347.P6383879900210137414

`∏{e}[n+1, A008683(#^(n+3)+2)]`
-/

namespace A354347.P6383879900210137414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 (Nat.factorization (f1 n) p ^ (n + 3) + 2)

end

end A354347.P6383879900210137414

/-! ## A354347.P4860557179199402269

`∏{p}[n+1, -1%#]%A366487(2^n)`
-/

namespace A354347.P4860557179199402269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (p : ℤ)) (A366487 (2 ^ n))

end

end A354347.P4860557179199402269

/-! ## A354347.P8987097911582512563

`A011584(Δ[n²]²*∏{e}[n+1, C(#+2, 2)])`
-/

namespace A354347.P8987097911582512563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2 : ℕ) : ℤ)).toNat

end

end A354347.P8987097911582512563

/-! ## A354347.P15796496405739974064

`A107064((∏{p}[n+1, (n+1)/#]%(n+1))^6)`
-/

namespace A354347.P15796496405739974064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107064 (Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ) ^ 6).toNat

end

end A354347.P15796496405739974064

/-! ## A354347.P4842170569003630087

`A355689(C((n+1)²/∏{p}[n+1, #], ∏{e}[n+1, #]))`
-/

namespace A354347.P4842170569003630087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (Nat.choose (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A354347.P4842170569003630087

/-!
# A354349: Dirichlet inverse of A181819, prime shadow of n.

The programs for A354349, there is no canonical definition to state claims against.
-/

/-! ## A354349.P479290368518237086

`∏{e}[n+1, A030018(#)]`
-/

namespace A354349.P479290368518237086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A030018 (Nat.factorization (f1 n) p)

end

end A354349.P479290368518237086

/-! ## A354349.P2900796201868336508

`∏{e}[n+1, ceil(2/#)]*A008836(19^∑{e}[n+1, #])`
-/

namespace A354349.P2900796201868336508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ)⌉) * A008836 (19 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A354349.P2900796201868336508

/-! ## A354349.P1551118697560149216

`∏{e}[n+1, (-C(2, #))^#]-A181153(2^val(n+1, 2))`
-/

namespace A354349.P1551118697560149216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p - A181153 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A354349.P1551118697560149216

/-! ## A354349.P13236048306101567853

`∏{e}[n+1, (-C(2, #))^#]-A205577(2^val(n+1, 2))`
-/

namespace A354349.P13236048306101567853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p - A205577 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A354349.P13236048306101567853

/-! ## A354349.P367563853046929193

`∏{e}[n+1, (-C(2, #))^#]-A324088(2^val(n+1, 2))`
-/

namespace A354349.P367563853046929193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p - A324088 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A354349.P367563853046929193

/-!
# A354350: a(n) = n + A354365(n).

The programs for A354350, the canonical program `A354350.P5336862926094437975` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354350 has offset 1).

The definition of A354350 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A354365, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354350.P5336862926094437975

`n+1+A354365(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A354350

/-- `n+1+A354365(n+1)` -/
def P5336862926094437975.Spec : Prop :=
  ∀ n, P5336862926094437975.a n = A354350 (n + 1)

theorem P5336862926094437975.correct : P5336862926094437975.Spec := by
  intro n
  simp only [A354350, Nat.add_sub_cancel]

end A354350

/-! ## A354350.P17095201344111762955

`n+1+(A007423(n+1)-1)*A319626(n+1)`
-/

namespace A354350.P17095201344111762955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A007423 (n + 1) - 1) * A319626 (n + 1)

end

end A354350.P17095201344111762955

namespace A354350

/-- `n+1+(A007423(n+1)-1)*A319626(n+1)` -/
def P17095201344111762955.Spec : Prop :=
  ∀ n, P17095201344111762955.a n = A354350 (n + 1)

end A354350

/-! ## A354350.P15682761623548319059

`n+1+A162512(n+1)%2*A319626(n+1)`
-/

namespace A354350.P15682761623548319059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + Int.tmod (A162512 (n + 1)) 2 * A319626 (n + 1)

end

end A354350.P15682761623548319059

namespace A354350

/-- `n+1+A162512(n+1)%2*A319626(n+1)` -/
def P15682761623548319059.Spec : Prop :=
  ∀ n, P15682761623548319059.a n = A354350 (n + 1)

end A354350

/-! ## A354350.P17724695216227484825

`n+1+A326937(n+1)%2*A319626(n+1)`
-/

namespace A354350.P17724695216227484825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + Int.tmod (A326937 (n + 1)) 2 * A319626 (n + 1)

end

end A354350.P17724695216227484825

namespace A354350

/-- `n+1+A326937(n+1)%2*A319626(n+1)` -/
def P17724695216227484825.Spec : Prop :=
  ∀ n, P17724695216227484825.a n = A354350 (n + 1)

end A354350

/-! ## A354350.P919116362713568992

`n+1+A181434(n+1)%2*A319626(n+1)`
-/

namespace A354350.P919116362713568992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + Int.tmod (A181434 (n + 1)) 2 * A319626 (n + 1)

end

end A354350.P919116362713568992

namespace A354350

/-- `n+1+A181434(n+1)%2*A319626(n+1)` -/
def P919116362713568992.Spec : Prop :=
  ∀ n, P919116362713568992.a n = A354350 (n + 1)

end A354350

/-! ## A354350.P14635055822660793197

`A349125(A253885(n)+1)/A330749(n+1)+1+n`
-/

namespace A354350.P14635055822660793197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349125 (A253885 n + 1).toNat : ℚ) / (A330749 (n + 1) : ℚ) + 1 + (n : ℚ)

end

end A354350.P14635055822660793197

namespace A354350

/-- `A349125(A253885(n)+1)/A330749(n+1)+1+n` -/
def P14635055822660793197.Spec : Prop :=
  ∀ n, P14635055822660793197.a n = (A354350 (n + 1) : ℚ)

end A354350

/-!
# A354351: Dirichlet inverse of A108951, primorial inflation of n.

The programs for A354351, the canonical program `A354351.P12081168981414843608` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354351 has offset 1).

The definition of A354351 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354351.P14050733948513935008

`A354352(n+1)-A108951(n+1)`
-/

namespace A354351.P14050733948513935008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354352 (n + 1) - A108951 (n + 1)

end

end A354351.P14050733948513935008

namespace A354351

/-- `A354352(n+1)-A108951(n+1)` -/
def P14050733948513935008.Spec : Prop :=
  ∀ n, P14050733948513935008.a n = A354351 (n + 1)

end A354351

/-! ## A354351.P12081168981414843608

`A008683(n+1)*A108951(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A354351

/-- `A008683(n+1)*A108951(n+1)` -/
def P12081168981414843608.Spec : Prop :=
  ∀ n, P12081168981414843608.a n = A354351 (n + 1)

theorem P12081168981414843608.correct : P12081168981414843608.Spec := by
  intro n
  simp only [A354351, Nat.add_sub_cancel]

end A354351

/-! ## A354351.P6385641951239121002

`A055615(n+1)*A181811(n+1)`
-/

namespace A354351.P6385641951239121002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A181811 (n + 1)

end

end A354351.P6385641951239121002

namespace A354351

/-- `A055615(n+1)*A181811(n+1)` -/
def P6385641951239121002.Spec : Prop :=
  ∀ n, P6385641951239121002.a n = A354351 (n + 1)

end A354351

/-! ## A354351.P11237240851325382553

`(A007423(n+1)-1)*A108951(n+1)`
-/

namespace A354351.P11237240851325382553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * A108951 (n + 1)

end

end A354351.P11237240851325382553

namespace A354351

/-- `(A007423(n+1)-1)*A108951(n+1)` -/
def P11237240851325382553.Spec : Prop :=
  ∀ n, P11237240851325382553.a n = A354351 (n + 1)

end A354351

/-! ## A354351.P9729976439963659180

`A354352(n+1)-(n+1)*A181811(n+1)`
-/

namespace A354351.P9729976439963659180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354352 (n + 1) - (n + 1 : ℤ) * A181811 (n + 1)

end

end A354351.P9729976439963659180

namespace A354351

/-- `A354352(n+1)-(n+1)*A181811(n+1)` -/
def P9729976439963659180.Spec : Prop :=
  ∀ n, P9729976439963659180.a n = A354351 (n + 1)

end A354351

/-! ## A354351.P15090152723744591735

`A354352(n+1)-(n+1)*A181812(A003602(n+1))`
-/

namespace A354351.P15090152723744591735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354352 (n + 1) - (n + 1 : ℤ) * A181812 (A003602 (n + 1)).toNat

end

end A354351.P15090152723744591735

namespace A354351

/-- `A354352(n+1)-(n+1)*A181812(A003602(n+1))` -/
def P15090152723744591735.Spec : Prop :=
  ∀ n, P15090152723744591735.a n = A354351 (n + 1)

end A354351

/-! ## A354351.P13774943179723169682

`A108951(n+1)/A319626(n+1)*A354365(n+1)`
-/

namespace A354351.P13774943179723169682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) : ℚ) / (A319626 (n + 1) : ℚ) * (A354365 (n + 1) : ℚ)

end

end A354351.P13774943179723169682

namespace A354351

/-- `A108951(n+1)/A319626(n+1)*A354365(n+1)` -/
def P13774943179723169682.Spec : Prop :=
  ∀ n, P13774943179723169682.a n = (A354351 (n + 1) : ℚ)

end A354351

/-! ## A354351.P14832421538424477523

`A354352(n+1)-A073039(A007947(n+1))*A331188(n+1)`
-/

namespace A354351.P14832421538424477523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354352 (n + 1) - A073039 (A007947 (n + 1)).toNat * A331188 (n + 1)

end

end A354351.P14832421538424477523

namespace A354351

/-- `A354352(n+1)-A073039(A007947(n+1))*A331188(n+1)` -/
def P14832421538424477523.Spec : Prop :=
  ∀ n, P14832421538424477523.a n = A354351 (n + 1)

end A354351

/-!
# A354352: Sum of primorial inflation (A108951) and its Dirichlet inverse.

The programs for A354352, the canonical program `A354352.P17273981126051983419` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354352 has offset 1).

The definition of A354352 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A354351, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354352.P17273981126051983419

`A108951(n+1)+A354351(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A354352

/-- `A108951(n+1)+A354351(n+1)` -/
def P17273981126051983419.Spec : Prop :=
  ∀ n, P17273981126051983419.a n = A354352 (n + 1)

theorem P17273981126051983419.correct : P17273981126051983419.Spec := by
  intro n
  simp only [A354352, Nat.add_sub_cancel]

end A354352

/-! ## A354352.P3876323981782890589

`A061669(n+1)*A181811(n+1)`
-/

namespace A354352.P3876323981782890589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (n + 1) * A181811 (n + 1)

end

end A354352.P3876323981782890589

namespace A354352

/-- `A061669(n+1)*A181811(n+1)` -/
def P3876323981782890589.Spec : Prop :=
  ∀ n, P3876323981782890589.a n = A354352 (n + 1)

end A354352

/-! ## A354352.P14629414144560388132

`A007423(n+1)*A108951(n+1)`
-/

namespace A354352.P14629414144560388132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) * A108951 (n + 1)

end

end A354352.P14629414144560388132

namespace A354352

/-- `A007423(n+1)*A108951(n+1)` -/
def P14629414144560388132.Spec : Prop :=
  ∀ n, P14629414144560388132.a n = A354352 (n + 1)

end A354352

/-! ## A354352.P14420256660614885766

`(A008683(n+1)+1)*A108951(n+1)`
-/

namespace A354352.P14420256660614885766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 1) * A108951 (n + 1)

end

end A354352.P14420256660614885766

namespace A354352

/-- `(A008683(n+1)+1)*A108951(n+1)` -/
def P14420256660614885766.Spec : Prop :=
  ∀ n, P14420256660614885766.a n = A354352 (n + 1)

end A354352

/-! ## A354352.P10130535093349557982

`A354351(n+1)+A331188((n+1)*A006530(n+1))`
-/

namespace A354352.P10130535093349557982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354351 (n + 1) + A331188 ((n + 1 : ℤ) * A006530 (n + 1)).toNat

end

end A354352.P10130535093349557982

namespace A354352

/-- `A354351(n+1)+A331188((n+1)*A006530(n+1))` -/
def P10130535093349557982.Spec : Prop :=
  ∀ n, P10130535093349557982.a n = A354352 (n + 1)

end A354352

/-! ## A354352.P5415920569472209583

`A354351(n+1)+A331188(A013636(n+1))`
-/

namespace A354352.P5415920569472209583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354351 (n + 1) + A331188 (A013636 (n + 1)).toNat

end

end A354352.P5415920569472209583

namespace A354352

/-- `A354351(n+1)+A331188(A013636(n+1))` -/
def P5415920569472209583.Spec : Prop :=
  ∀ n, P5415920569472209583.a n = A354352 (n + 1)

end A354352

/-!
# A354353: a(n) = 1 if n is either a squarefree composite or a power of squarefree composite, otherwise 0.

The programs for A354353, the canonical program `A354353.P7138683096085960204` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354353 has offset 1).

The definition of A354353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354353.P9880075793291984947

`char[A182853(n+1)-1]`
-/

namespace A354353.P9880075793291984947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354353.P9880075793291984947

namespace A354353

/-- `char[A182853(n+1)-1]` -/
def P9880075793291984947.Spec : Prop :=
  ∀ n, (P9880075793291984947.a n : ℤ) = A354353 (n + 1)

end A354353

/-! ## A354353.P7940536718819611748

`char[eq[2, A304455(n+1)]]`
-/

namespace A354353.P7940536718819611748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354353.P7940536718819611748

namespace A354353

/-- `char[eq[2, A304455(n+1)]]` -/
def P7940536718819611748.Spec : Prop :=
  ∀ n, (P7940536718819611748.a n : ℤ) = A354353 (n + 1)

end A354353

/-! ## A354353.P9750159526271174523

`char[eq[3, A182850(n+1)]]`
-/

namespace A354353.P9750159526271174523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354353.P9750159526271174523

namespace A354353

/-- `char[eq[3, A182850(n+1)]]` -/
def P9750159526271174523.Spec : Prop :=
  ∀ n, (P9750159526271174523.a n : ℤ) = A354353 (n + 1)

end A354353

/-! ## A354353.P7599746611983451654

`char[eq[3, A323014(n+1)]]`
-/

namespace A354353.P7599746611983451654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354353.P7599746611983451654

namespace A354353

/-- `char[eq[3, A323014(n+1)]]` -/
def P7599746611983451654.Spec : Prop :=
  ∀ n, (P7599746611983451654.a n : ℤ) = A354353 (n + 1)

end A354353

/-! ## A354353.P7138683096085960204

`A268340(A181819(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A354353

/-- `A268340(A181819(n+1))` -/
def P7138683096085960204.Spec : Prop :=
  ∀ n, P7138683096085960204.a n = A354353 (n + 1)

theorem P7138683096085960204.correct : P7138683096085960204.Spec := by
  intro n
  simp only [A354353, Nat.add_sub_cancel]

end A354353

/-! ## A354353.P4857313973563282119

`A010055(A181819(n+1))-A010055(n+1)`
-/

namespace A354353.P4857313973563282119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A181819 (n + 1)).toNat - A010055 (n + 1)

end

end A354353.P4857313973563282119

namespace A354353

/-- `A010055(A181819(n+1))-A010055(n+1)` -/
def P4857313973563282119.Spec : Prop :=
  ∀ n, P4857313973563282119.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P1855457282221103798

`A124760(A323238(2*n+3)+A182850(n+1))`
-/

namespace A354353.P1855457282221103798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A323238 (2 * n + 3) + A182850 (n + 1)).toNat

end

end A354353.P1855457282221103798

namespace A354353

/-- `A124760(A323238(2*n+3)+A182850(n+1))` -/
def P1855457282221103798.Spec : Prop :=
  ∀ n, P1855457282221103798.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P6922203753345363857

`and(A020478(A000040(n+1)), A328830(n+1))`
-/

namespace A354353.P6922203753345363857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020478 (A000040 (n + 1)).toNat) (A328830 (n + 1))

end

end A354353.P6922203753345363857

namespace A354353

/-- `and(A020478(A000040(n+1)), A328830(n+1))` -/
def P6922203753345363857.Spec : Prop :=
  ∀ n, P6922203753345363857.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P16082366673914505628

`and(A020478(A040159(n+1)), A328830(n+1))`
-/

namespace A354353.P16082366673914505628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020478 (A040159 (n + 1)).toNat) (A328830 (n + 1))

end

end A354353.P16082366673914505628

namespace A354353

/-- `and(A020478(A040159(n+1)), A328830(n+1))` -/
def P16082366673914505628.Spec : Prop :=
  ∀ n, P16082366673914505628.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P2371781345966764363

`and(A328824(n), A328830(n+1))`
-/

namespace A354353.P2371781345966764363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A328824 n) (A328830 (n + 1))

end

end A354353.P2371781345966764363

namespace A354353

/-- `and(A328824(n), A328830(n+1))` -/
def P2371781345966764363.Spec : Prop :=
  ∀ n, P2371781345966764363.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P17104675759965115109

`and(A000337(n), A328830(n+1))`
-/

namespace A354353.P17104675759965115109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A328830 (n + 1))

end

end A354353.P17104675759965115109

namespace A354353

/-- `and(A000337(n), A328830(n+1))` -/
def P17104675759965115109.Spec : Prop :=
  ∀ n, P17104675759965115109.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P2701466470099623637

`and(A018201(A001614(n+1))+1, A238745(n+1))`
-/

namespace A354353.P2701466470099623637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018201 (A001614 (n + 1)).toNat + 1) (A238745 (n + 1))

end

end A354353.P2701466470099623637

namespace A354353

/-- `and(A018201(A001614(n+1))+1, A238745(n+1))` -/
def P2701466470099623637.Spec : Prop :=
  ∀ n, P2701466470099623637.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P720754908289764139

`and(A018200(A001614(n+2))+1, A238745(n+1))`
-/

namespace A354353.P720754908289764139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018200 (A001614 (n + 2)).toNat + 1) (A238745 (n + 1))

end

end A354353.P720754908289764139

namespace A354353

/-- `and(A018200(A001614(n+2))+1, A238745(n+1))` -/
def P720754908289764139.Spec : Prop :=
  ∀ n, P720754908289764139.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P7245015601574108161

`and(A028400(n), A238745(n+1))`
-/

namespace A354353.P7245015601574108161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028400 n) (A238745 (n + 1))

end

end A354353.P7245015601574108161

namespace A354353

/-- `and(A028400(n), A238745(n+1))` -/
def P7245015601574108161.Spec : Prop :=
  ∀ n, P7245015601574108161.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P16590814091984745455

`and(A052539(n), A238745(n+1))`
-/

namespace A354353.P16590814091984745455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052539 n) (A238745 (n + 1))

end

end A354353.P16590814091984745455

namespace A354353

/-- `and(A052539(n), A238745(n+1))` -/
def P16590814091984745455.Spec : Prop :=
  ∀ n, P16590814091984745455.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P3402409015214302367

`and(A054851(2*n+7)+1, A238745(n+1))`
-/

namespace A354353.P3402409015214302367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054851 (2 * n + 7) + 1) (A238745 (n + 1))

end

end A354353.P3402409015214302367

namespace A354353

/-- `and(A054851(2*n+7)+1, A238745(n+1))` -/
def P3402409015214302367.Spec : Prop :=
  ∀ n, P3402409015214302367.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P16510357672824624784

`A334871(A265390(n+1))%A225546(A340673(n+1))`
-/

namespace A354353.P16510357672824624784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334871 (A265390 (n + 1)).toNat) (A225546 (A340673 (n + 1)).toNat)

end

end A354353.P16510357672824624784

namespace A354353

/-- `A334871(A265390(n+1))%A225546(A340673(n+1))` -/
def P16510357672824624784.Spec : Prop :=
  ∀ n, P16510357672824624784.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P3754705709451809838

`and(A198277(n)², A181819(A181819(n+1)))`
-/

namespace A354353.P3754705709451809838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198277 n ^ 2) (A181819 (A181819 (n + 1)).toNat)

end

end A354353.P3754705709451809838

namespace A354353

/-- `and(A198277(n)², A181819(A181819(n+1)))` -/
def P3754705709451809838.Spec : Prop :=
  ∀ n, P3754705709451809838.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P7673670846399151347

`and(A018200(3*n+2)+1, A238745(n+1))`
-/

namespace A354353.P7673670846399151347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018200 (3 * n + 2) + 1) (A238745 (n + 1))

end

end A354353.P7673670846399151347

namespace A354353

/-- `and(A018200(3*n+2)+1, A238745(n+1))` -/
def P7673670846399151347.Spec : Prop :=
  ∀ n, P7673670846399151347.a n = A354353 (n + 1)

end A354353

/-! ## A354353.P6891511535534698670

`(A238745(n+1)+A324582(n+1)/A324581(n+1))%2`
-/

namespace A354353.P6891511535534698670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A238745 (n + 1) : ℚ) + (A324582 (n + 1) : ℚ) / (A324581 (n + 1) : ℚ))) 2

end

end A354353.P6891511535534698670

namespace A354353

/-- `(A238745(n+1)+A324582(n+1)/A324581(n+1))%2` -/
def P6891511535534698670.Spec : Prop :=
  ∀ n, P6891511535534698670.a n = A354353 (n + 1)

end A354353

/-!
# A354354: a(n) = 1 if n is neither a multiple of 2 nor 3, and otherwise 0.

The programs for A354354, there is no canonical definition to state claims against.
-/

/-! ## A354354.P9062321085242788313

`abs(A109017(n))`
-/

namespace A354354.P9062321085242788313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109017 n|

end

end A354354.P9062321085242788313

/-!
# A354355: Characteristic function of numbers with their sum of divisors (sigma) 3-smooth.

The programs for A354355, the canonical program `A354355.P15941333231430950290` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354355 has offset 1).

The definition of A354355 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065333, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354355.P15941333231430950290

`A065333(A000203(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A354355

/-- `A065333(A000203(n+1))` -/
def P15941333231430950290.Spec : Prop :=
  ∀ n, P15941333231430950290.a n = A354355 (n + 1)

theorem P15941333231430950290.correct : P15941333231430950290.Spec := by
  intro n
  simp only [A354355, Nat.add_sub_cancel]

end A354355

/-! ## A354355.P11959573422910565182

`round(5/(∏{p}[∑{d}[n+1, #], #]+4))`
-/

namespace A354355.P11959573422910565182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 / ((∏ p ∈ Nat.primeFactors (f1 n), p + 4 : ℕ) : ℚ))

end

end A354355.P11959573422910565182

namespace A354355

/-- `round(5/(∏{p}[∑{d}[n+1, #], #]+4))` -/
def P11959573422910565182.Spec : Prop :=
  ∀ n, P11959573422910565182.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P15636263580645934668

`A336455(n+1)%3`
-/

namespace A354355.P15636263580645934668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336455 (n + 1)) 3

end

end A354355.P15636263580645934668

namespace A354355

/-- `A336455(n+1)%3` -/
def P15636263580645934668.Spec : Prop :=
  ∀ n, P15636263580645934668.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P4757473083297592004

`char[A354356(n+1)-1]`
-/

namespace A354355.P4757473083297592004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354355.P4757473083297592004

namespace A354355

/-- `char[A354356(n+1)-1]` -/
def P4757473083297592004.Spec : Prop :=
  ∀ n, (P4757473083297592004.a n : ℤ) = A354355 (n + 1)

end A354355

/-! ## A354355.P14588416424746659229

`C(2, A336457(n+1)+1)`
-/

namespace A354355.P14588416424746659229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A336457 (n + 1) + 1).toNat

end

end A354355.P14588416424746659229

namespace A354355

/-- `C(2, A336457(n+1)+1)` -/
def P14588416424746659229.Spec : Prop :=
  ∀ n, (P14588416424746659229.a n : ℤ) = A354355 (n + 1)

end A354355

/-! ## A354355.P10330447432184435959

`A010051(A336457(n+1)+1)`
-/

namespace A354355.P10330447432184435959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A336457 (n + 1) + 1).toNat

end

end A354355.P10330447432184435959

namespace A354355

/-- `A010051(A336457(n+1)+1)` -/
def P10330447432184435959.Spec : Prop :=
  ∀ n, P10330447432184435959.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P16403438337485425514

`A033325(A071190(n+1)+2)`
-/

namespace A354355.P16403438337485425514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033325 (A071190 (n + 1) + 2).toNat

end

end A354355.P16403438337485425514

namespace A354355

/-- `A033325(A071190(n+1)+2)` -/
def P16403438337485425514.Spec : Prop :=
  ∀ n, P16403438337485425514.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P8597976983733464815

`A000045(C(2, A336455(n+1)))`
-/

namespace A354355.P8597976983733464815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A336455 (n + 1)).toNat)

end

end A354355.P8597976983733464815

namespace A354355

/-- `A000045(C(2, A336455(n+1)))` -/
def P8597976983733464815.Spec : Prop :=
  ∀ n, P8597976983733464815.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P12435156008978660345

`A000045(C(2, A336457(n+1)))`
-/

namespace A354355.P12435156008978660345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A336457 (n + 1)).toNat)

end

end A354355.P12435156008978660345

namespace A354355

/-- `A000045(C(2, A336457(n+1)))` -/
def P12435156008978660345.Spec : Prop :=
  ∀ n, P12435156008978660345.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P1602517619933858777

`A022559(C(2, A336457(n+1)))`
-/

namespace A354355.P1602517619933858777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (Nat.choose 2 (A336457 (n + 1)).toNat)

end

end A354355.P1602517619933858777

namespace A354355

/-- `A022559(C(2, A336457(n+1)))` -/
def P1602517619933858777.Spec : Prop :=
  ∀ n, P1602517619933858777.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P13067955431682350488

`A076276(C(2, A336457(n+1)))`
-/

namespace A354355.P13067955431682350488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076276 (Nat.choose 2 (A336457 (n + 1)).toNat)

end

end A354355.P13067955431682350488

namespace A354355

/-- `A076276(C(2, A336457(n+1)))` -/
def P13067955431682350488.Spec : Prop :=
  ∀ n, P13067955431682350488.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P6508246243178680024

`A336439(C(2, A336457(n+1)))`
-/

namespace A354355.P6508246243178680024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336439 (Nat.choose 2 (A336457 (n + 1)).toNat)

end

end A354355.P6508246243178680024

namespace A354355

/-- `A336439(C(2, A336457(n+1)))` -/
def P6508246243178680024.Spec : Prop :=
  ∀ n, P6508246243178680024.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P2673577642830884263

`A336440(C(2, A336457(n+1)))`
-/

namespace A354355.P2673577642830884263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336440 (Nat.choose 2 (A336457 (n + 1)).toNat)

end

end A354355.P2673577642830884263

namespace A354355

/-- `A336440(C(2, A336457(n+1)))` -/
def P2673577642830884263.Spec : Prop :=
  ∀ n, P2673577642830884263.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P8388643937349707018

`val(A000040(n+1), A000040(n+1)*A336457(n+1))`
-/

namespace A354355.P8388643937349707018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1)).toNat (A000040 (n + 1) * A336457 (n + 1)).toNat

end

end A354355.P8388643937349707018

namespace A354355

/-- `val(A000040(n+1), A000040(n+1)*A336457(n+1))` -/
def P8388643937349707018.Spec : Prop :=
  ∀ n, (P8388643937349707018.a n : ℤ) = A354355 (n + 1)

end A354355

/-! ## A354355.P18007406932039854065

`val(A077068(n+1), A077068(n+1)*A336457(n+1))`
-/

namespace A354355.P18007406932039854065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077068 (n + 1)).toNat (A077068 (n + 1) * A336457 (n + 1)).toNat

end

end A354355.P18007406932039854065

namespace A354355

/-- `val(A077068(n+1), A077068(n+1)*A336457(n+1))` -/
def P18007406932039854065.Spec : Prop :=
  ∀ n, (P18007406932039854065.a n : ℤ) = A354355 (n + 1)

end A354355

/-! ## A354355.P17056917849775128112

`val(A006530(A272027(n+1)), 3)`
-/

namespace A354355.P17056917849775128112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (A272027 (n + 1)).toNat).toNat 3

end

end A354355.P17056917849775128112

namespace A354355

/-- `val(A006530(A272027(n+1)), 3)` -/
def P17056917849775128112.Spec : Prop :=
  ∀ n, (P17056917849775128112.a n : ℤ) = A354355 (n + 1)

end A354355

/-! ## A354355.P4567712198730806276

`A340363(3*A000203(n+1))`
-/

namespace A354355.P4567712198730806276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (3 * A000203 (n + 1)).toNat

end

end A354355.P4567712198730806276

namespace A354355

/-- `A340363(3*A000203(n+1))` -/
def P4567712198730806276.Spec : Prop :=
  ∀ n, P4567712198730806276.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P4531914991780112379

`A340373(3*A000203(n+1))`
-/

namespace A354355.P4531914991780112379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (3 * A000203 (n + 1)).toNat

end

end A354355.P4531914991780112379

namespace A354355

/-- `A340373(3*A000203(n+1))` -/
def P4531914991780112379.Spec : Prop :=
  ∀ n, P4531914991780112379.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P7365711709290697763

`A065333(A057020(n+1))`
-/

namespace A354355.P7365711709290697763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A057020 (n + 1)).toNat

end

end A354355.P7365711709290697763

namespace A354355

/-- `A065333(A057020(n+1))` -/
def P7365711709290697763.Spec : Prop :=
  ∀ n, P7365711709290697763.a n = A354355 (n + 1)

end A354355

/-! ## A354355.P4411197579233269248

`A065332(A336457(n+1))`
-/

namespace A354355.P4411197579233269248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (A336457 (n + 1)).toNat

end

end A354355.P4411197579233269248

namespace A354355

/-- `A065332(A336457(n+1))` -/
def P4411197579233269248.Spec : Prop :=
  ∀ n, P4411197579233269248.a n = A354355 (n + 1)

end A354355

/-!
# A354356: Numbers k such that sigma(k) is 3-smooth (has no larger prime factors than 3).

The programs for A354356, the canonical program `A354356.P6972406899638248837` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354356 has offset 1).

The definition of A354356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354356.P6972406899638248837

`record[(n+1)*A354355(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A354356

/-- `record[(n+1)*A354355(n+1)]` -/
def P6972406899638248837.Spec : Prop :=
  ∀ n, P6972406899638248837.a n = A354356 (n + 1)

theorem P6972406899638248837.correct : P6972406899638248837.Spec := by
  intro n
  simp only [A354356, Nat.add_sub_cancel]

end A354356

/-! ## A354356.P1202907790561629508

`filter[A382546(n+1), A354355(#)]`
-/

namespace A354356.P1202907790561629508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P1202907790561629508

namespace A354356

/-- `filter[A382546(n+1), A354355(#)]` -/
def P1202907790561629508.Spec : Prop :=
  ∀ n, P1202907790561629508.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P5709314744275451882

`eq[1, A354355(n+1)]+1`
-/

namespace A354356.P5709314744275451882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354356.P5709314744275451882

namespace A354356

/-- `eq[1, A354355(n+1)]+1` -/
def P5709314744275451882.Spec : Prop :=
  ∀ n, (P5709314744275451882.a n : ℤ) = A354356 (n + 1)

end A354356

/-! ## A354356.P13813359559752938335

`lt[A006530(A000203(n+1)), 4]+1`
-/

namespace A354356.P13813359559752938335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354356.P13813359559752938335

namespace A354356

/-- `lt[A006530(A000203(n+1)), 4]+1` -/
def P13813359559752938335.Spec : Prop :=
  ∀ n, (P13813359559752938335.a n : ℤ) = A354356 (n + 1)

end A354356

/-! ## A354356.P4565552742296660234

`lt[A006530(A155085(n+1)-(n+1)), 4]+1`
-/

namespace A354356.P4565552742296660234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354356.P4565552742296660234

namespace A354356

/-- `lt[A006530(A155085(n+1)-(n+1)), 4]+1` -/
def P4565552742296660234.Spec : Prop :=
  ∀ n, (P4565552742296660234.a n : ℤ) = A354356 (n + 1)

end A354356

/-! ## A354356.P12783024094875163023

`filter[A005117(n+1), A354355(#)]`
-/

namespace A354356.P12783024094875163023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P12783024094875163023

namespace A354356

/-- `filter[A005117(n+1), A354355(#)]` -/
def P12783024094875163023.Spec : Prop :=
  ∀ n, P12783024094875163023.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P15016075128049089258

`filter[A064594(n+1), A354355(#)]`
-/

namespace A354356.P15016075128049089258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P15016075128049089258

namespace A354356

/-- `filter[A064594(n+1), A354355(#)]` -/
def P15016075128049089258.Spec : Prop :=
  ∀ n, P15016075128049089258.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P13876783075334267939

`filter[A167207(n+1), A354355(#)]`
-/

namespace A354356.P13876783075334267939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P13876783075334267939

namespace A354356

/-- `filter[A167207(n+1), A354355(#)]` -/
def P13876783075334267939.Spec : Prop :=
  ∀ n, P13876783075334267939.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P8313754727889790345

`filter[A303554(n+1), A354355(#)]`
-/

namespace A354356.P8313754727889790345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P8313754727889790345

namespace A354356

/-- `filter[A303554(n+1), A354355(#)]` -/
def P8313754727889790345.Spec : Prop :=
  ∀ n, P8313754727889790345.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P11950504363981416426

`filter[A348506(n+1), A354355(#)]`
-/

namespace A354356.P11950504363981416426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P11950504363981416426

namespace A354356

/-- `filter[A348506(n+1), A354355(#)]` -/
def P11950504363981416426.Spec : Prop :=
  ∀ n, P11950504363981416426.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P14549892218176287237

`filter[A367801(n+1), A354355(#)]`
-/

namespace A354356.P14549892218176287237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P14549892218176287237

namespace A354356

/-- `filter[A367801(n+1), A354355(#)]` -/
def P14549892218176287237.Spec : Prop :=
  ∀ n, P14549892218176287237.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P755964555041537401

`filter[A072774(n+1), A354355(#)]`
-/

namespace A354356.P755964555041537401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P755964555041537401

namespace A354356

/-- `filter[A072774(n+1), A354355(#)]` -/
def P755964555041537401.Spec : Prop :=
  ∀ n, P755964555041537401.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P3545563521886954691

`filter[A210490(n+1), A354355(#)]`
-/

namespace A354356.P3545563521886954691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P3545563521886954691

namespace A354356

/-- `filter[A210490(n+1), A354355(#)]` -/
def P3545563521886954691.Spec : Prop :=
  ∀ n, P3545563521886954691.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P7475544895891986566

`filter[A304449(n+1), A354355(#)]`
-/

namespace A354356.P7475544895891986566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P7475544895891986566

namespace A354356

/-- `filter[A304449(n+1), A354355(#)]` -/
def P7475544895891986566.Spec : Prop :=
  ∀ n, P7475544895891986566.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P7926710575378165071

`filter[A317101(n+1), A354355(#)]`
-/

namespace A354356.P7926710575378165071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P7926710575378165071

namespace A354356

/-- `filter[A317101(n+1), A354355(#)]` -/
def P7926710575378165071.Spec : Prop :=
  ∀ n, P7926710575378165071.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P5396438856796956823

`filter[A348961(n+1), A354355(#)]`
-/

namespace A354356.P5396438856796956823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P5396438856796956823

namespace A354356

/-- `filter[A348961(n+1), A354355(#)]` -/
def P5396438856796956823.Spec : Prop :=
  ∀ n, P5396438856796956823.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P15236631192400535454

`filter[A348499(n+1), A354355(#)]`
-/

namespace A354356.P15236631192400535454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P15236631192400535454

namespace A354356

/-- `filter[A348499(n+1), A354355(#)]` -/
def P15236631192400535454.Spec : Prop :=
  ∀ n, P15236631192400535454.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P4172909418939494950

`filter[A065200(n+1), A354355(#)]`
-/

namespace A354356.P4172909418939494950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P4172909418939494950

namespace A354356

/-- `filter[A065200(n+1), A354355(#)]` -/
def P4172909418939494950.Spec : Prop :=
  ∀ n, P4172909418939494950.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P18156504418979783341

`filter[A390440(n+1), A354355(#)]`
-/

namespace A354356.P18156504418979783341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P18156504418979783341

namespace A354356

/-- `filter[A390440(n+1), A354355(#)]` -/
def P18156504418979783341.Spec : Prop :=
  ∀ n, P18156504418979783341.a n = A354356 (n + 1)

end A354356

/-! ## A354356.P11500313401968437468

`filter[A193304(n+1), A354355(#)]`
-/

namespace A354356.P11500313401968437468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354356.P11500313401968437468

namespace A354356

/-- `filter[A193304(n+1), A354355(#)]` -/
def P11500313401968437468.Spec : Prop :=
  ∀ n, P11500313401968437468.a n = A354356 (n + 1)

end A354356

/-!
# A354357: Numbers k, not divisible by 2 or 3, such that sigma(k) is 3-smooth (has no larger prime factors than 3).

The programs for A354357, the canonical program `A354357.P12412967713382681019` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354357 has offset 1).

The definition of A354357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354357.P12412967713382681019

`filter[A354356(n+1), A187074(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A354357

/-- `filter[A354356(n+1), A187074(#)]` -/
def P12412967713382681019.Spec : Prop :=
  ∀ n, P12412967713382681019.a n = A354357 (n + 1)

theorem P12412967713382681019.correct : P12412967713382681019.Spec := by
  intro n
  simp only [A354357, Nat.add_sub_cancel]

end A354357

/-! ## A354357.P13398304710199466346

`filter[A354356(n+1), A372574(#)]`
-/

namespace A354357.P13398304710199466346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A354357.P13398304710199466346

namespace A354357

/-- `filter[A354356(n+1), A372574(#)]` -/
def P13398304710199466346.Spec : Prop :=
  ∀ n, P13398304710199466346.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P3774723823996613449

`filter[A354356(n+1), A373154(#)]`
-/

namespace A354357.P3774723823996613449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A354357.P3774723823996613449

namespace A354357

/-- `filter[A354356(n+1), A373154(#)]` -/
def P3774723823996613449.Spec : Prop :=
  ∀ n, P3774723823996613449.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P11360287000405077596

`filter[A354356(n+1), A373155(#)]`
-/

namespace A354357.P11360287000405077596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A354357.P11360287000405077596

namespace A354357

/-- `filter[A354356(n+1), A373155(#)]` -/
def P11360287000405077596.Spec : Prop :=
  ∀ n, P11360287000405077596.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P14955791699625714242

`filter[A354356(n+1), A373991(#)]`
-/

namespace A354357.P14955791699625714242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A354357.P14955791699625714242

namespace A354357

/-- `filter[A354356(n+1), A373991(#)]` -/
def P14955791699625714242.Spec : Prop :=
  ∀ n, P14955791699625714242.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P17640294429927904868

`filter[A354356(n+1), A374041(#)]`
-/

namespace A354357.P17640294429927904868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A354357.P17640294429927904868

namespace A354357

/-- `filter[A354356(n+1), A374041(#)]` -/
def P17640294429927904868.Spec : Prop :=
  ∀ n, P17640294429927904868.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P4228901277502933130

`filter[A354356(n+1), A374043(#)]`
-/

namespace A354357.P4228901277502933130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A354357.P4228901277502933130

namespace A354357

/-- `filter[A354356(n+1), A374043(#)]` -/
def P4228901277502933130.Spec : Prop :=
  ∀ n, P4228901277502933130.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P15966861964099457408

`filter[A354356(n+1), A354354(#)]`
-/

namespace A354357.P15966861964099457408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A354357.P15966861964099457408

namespace A354357

/-- `filter[A354356(n+1), A354354(#)]` -/
def P15966861964099457408.Spec : Prop :=
  ∀ n, P15966861964099457408.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P12105404538119687504

`filter[A276378(n+1), A354355(#)]`
-/

namespace A354357.P12105404538119687504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354357.P12105404538119687504

namespace A354357

/-- `filter[A276378(n+1), A354355(#)]` -/
def P12105404538119687504.Spec : Prop :=
  ∀ n, P12105404538119687504.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P409729259991801462

`∩[A276378(n+1), A354356(n+1)]`
-/

namespace A354357.P409729259991801462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354357.P409729259991801462

namespace A354357

/-- `∩[A276378(n+1), A354356(n+1)]` -/
def P409729259991801462.Spec : Prop :=
  ∀ n, (P409729259991801462.a n : ℤ) = A354357 (n + 1)

end A354357

/-! ## A354357.P11697775536029079737

`filter[A219016(n+1), A354355(#)]`
-/

namespace A354357.P11697775536029079737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354357.P11697775536029079737

namespace A354357

/-- `filter[A219016(n+1), A354355(#)]` -/
def P11697775536029079737.Spec : Prop :=
  ∀ n, P11697775536029079737.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P10839964986064216566

`∩[A219016(n+1), A354356(n+1)]`
-/

namespace A354357.P10839964986064216566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354357.P10839964986064216566

namespace A354357

/-- `∩[A219016(n+1), A354356(n+1)]` -/
def P10839964986064216566.Spec : Prop :=
  ∀ n, (P10839964986064216566.a n : ℤ) = A354357 (n + 1)

end A354357

/-! ## A354357.P3546703421751494189

`filter[A007310(n+1), A354355(#)]`
-/

namespace A354357.P3546703421751494189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354357.P3546703421751494189

namespace A354357

/-- `filter[A007310(n+1), A354355(#)]` -/
def P3546703421751494189.Spec : Prop :=
  ∀ n, P3546703421751494189.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P5088697938494059700

`∩[A007310(n+1), A354356(n+1)]`
-/

namespace A354357.P5088697938494059700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354357.P5088697938494059700

namespace A354357

/-- `∩[A007310(n+1), A354356(n+1)]` -/
def P5088697938494059700.Spec : Prop :=
  ∀ n, (P5088697938494059700.a n : ℤ) = A354357 (n + 1)

end A354357

/-! ## A354357.P10366743703566850689

`filter[A374044(n+1), A354355(#)]`
-/

namespace A354357.P10366743703566850689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354357.P10366743703566850689

namespace A354357

/-- `filter[A374044(n+1), A354355(#)]` -/
def P10366743703566850689.Spec : Prop :=
  ∀ n, P10366743703566850689.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P4053921427579229121

`∩[A354356(n+1), A374044(n+1)]`
-/

namespace A354357.P4053921427579229121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354357.P4053921427579229121

namespace A354357

/-- `∩[A354356(n+1), A374044(n+1)]` -/
def P4053921427579229121.Spec : Prop :=
  ∀ n, (P4053921427579229121.a n : ℤ) = A354357 (n + 1)

end A354357

/-! ## A354357.P16524853048252230058

`filter[A374042(n+1), A354355(#)]`
-/

namespace A354357.P16524853048252230058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354357.P16524853048252230058

namespace A354357

/-- `filter[A374042(n+1), A354355(#)]` -/
def P16524853048252230058.Spec : Prop :=
  ∀ n, P16524853048252230058.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P14684745880472343009

`∩[A354356(n+1), A374042(n+1)]`
-/

namespace A354357.P14684745880472343009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354357.P14684745880472343009

namespace A354357

/-- `∩[A354356(n+1), A374042(n+1)]` -/
def P14684745880472343009.Spec : Prop :=
  ∀ n, (P14684745880472343009.a n : ℤ) = A354357 (n + 1)

end A354357

/-! ## A354357.P9783838132897058142

`filter[A084087(n+1), A354355(#)]`
-/

namespace A354357.P9783838132897058142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A354357.P9783838132897058142

namespace A354357

/-- `filter[A084087(n+1), A354355(#)]` -/
def P9783838132897058142.Spec : Prop :=
  ∀ n, P9783838132897058142.a n = A354357 (n + 1)

end A354357

/-! ## A354357.P12965211238330245716

`∩[A084087(n+1), A354356(n+1)]`
-/

namespace A354357.P12965211238330245716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354357.P12965211238330245716

namespace A354357

/-- `∩[A084087(n+1), A354356(n+1)]` -/
def P12965211238330245716.Spec : Prop :=
  ∀ n, (P12965211238330245716.a n : ℤ) = A354357 (n + 1)

end A354357

/-!
# A354358: Möbius transform of A124859.

The programs for A354358, the canonical program `A354358.P2002367195340805469` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354358 has offset 1).

The definition of A354358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354358.P14282768453918635378

`∏{e}[(n+1)/∏{p}[n+1, #], A061720(#)]`
-/

namespace A354358.P14282768453918635378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A061720 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A354358.P14282768453918635378

namespace A354358

/-- `∏{e}[(n+1)/∏{p}[n+1, #], A061720(#)]` -/
def P14282768453918635378.Spec : Prop :=
  ∀ n, P14282768453918635378.a n = A354358 (n + 1)

end A354358

/-! ## A354358.P2002367195340805469

`∑{d}[n+1, A008683(#)*A124859((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A354358

/-- `∑{d}[n+1, A008683(#)*A124859((n+1)/#)]` -/
def P2002367195340805469.Spec : Prop :=
  ∀ n, P2002367195340805469.a n = A354358 (n + 1)

theorem P2002367195340805469.correct : P2002367195340805469.Spec := by
  intro n
  simp only [A354358, Nat.add_sub_cancel]

end A354358

/-! ## A354358.P6930629927903067734

`A003958(A181819(n+1)+A124859(n+1))`
-/

namespace A354358.P6930629927903067734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A181819 (n + 1) + A124859 (n + 1)).toNat

end

end A354358.P6930629927903067734

namespace A354358

/-- `A003958(A181819(n+1)+A124859(n+1))` -/
def P6930629927903067734.Spec : Prop :=
  ∀ n, P6930629927903067734.a n = A354358 (n + 1)

end A354358

/-! ## A354358.P4293284574076868401

`A294280(A294875(n+1))`
-/

namespace A354358.P4293284574076868401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294280 (A294875 (n + 1)).toNat

end

end A354358.P4293284574076868401

namespace A354358

/-- `A294280(A294875(n+1))` -/
def P4293284574076868401.Spec : Prop :=
  ∀ n, P4293284574076868401.a n = A354358 (n + 1)

end A354358

/-! ## A354358.P5756890009619889103

`A070172(∏{e}[n+1, A232058(#)])`
-/

namespace A354358.P5756890009619889103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (∏ p ∈ Nat.primeFactors (f1 n), A232058 (Nat.factorization (f1 n) p)).toNat

end

end A354358.P5756890009619889103

namespace A354358

/-- `A070172(∏{e}[n+1, A232058(#)])` -/
def P5756890009619889103.Spec : Prop :=
  ∀ n, P5756890009619889103.a n = A354358 (n + 1)

end A354358

/-!
# A354359: Dirichlet inverse of A124859.

The programs for A354359, there is no canonical definition to state claims against.
-/

/-! ## A354359.P9391820113639399271

`∏{e}[n+1, A140876(A140872(#))]`
-/

namespace A354359.P9391820113639399271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A140876 (A140872 (Nat.factorization (f1 n) p)).toNat

end

end A354359.P9391820113639399271

/-!
# A354360: Positions of 1's in A354366.

The programs for A354360, the canonical program `A354360.P2549211365831135699` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354360 has offset 1).

The definition of A354360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354360.P14031351633505847306

`∪[A013929(n+1), A070175(n)]`
-/

namespace A354360.P14031351633505847306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354360.P14031351633505847306

namespace A354360

/-- `∪[A013929(n+1), A070175(n)]` -/
def P14031351633505847306.Spec : Prop :=
  ∀ n, (P14031351633505847306.a n : ℤ) = A354360 (n + 1)

end A354360

/-! ## A354360.P2549211365831135699

`∪[A013929(n+1), A090958(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A354360

/-- `∪[A013929(n+1), A090958(n)]` -/
def P2549211365831135699.Spec : Prop :=
  ∀ n, (P2549211365831135699.a n : ℤ) = A354360 (n + 1)

theorem P2549211365831135699.correct : P2549211365831135699.Spec := by
  intro n
  simp only [A354360, Nat.add_sub_cancel]

end A354360

/-! ## A354360.P2106357794656214545

`∪[A080756(n+1), A070175(n)]`
-/

namespace A354360.P2106357794656214545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354360.P2106357794656214545

namespace A354360

/-- `∪[A080756(n+1), A070175(n)]` -/
def P2106357794656214545.Spec : Prop :=
  ∀ n, (P2106357794656214545.a n : ℤ) = A354360 (n + 1)

end A354360

/-! ## A354360.P7061309755043599112

`∪[A080756(n+1), A090958(n)]`
-/

namespace A354360.P7061309755043599112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354360.P7061309755043599112

namespace A354360

/-- `∪[A080756(n+1), A090958(n)]` -/
def P7061309755043599112.Spec : Prop :=
  ∀ n, (P7061309755043599112.a n : ℤ) = A354360 (n + 1)

end A354360

/-! ## A354360.P910270269589280423

`∪[A162966(n+1), A070175(n)]`
-/

namespace A354360.P910270269589280423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354360.P910270269589280423

namespace A354360

/-- `∪[A162966(n+1), A070175(n)]` -/
def P910270269589280423.Spec : Prop :=
  ∀ n, (P910270269589280423.a n : ℤ) = A354360 (n + 1)

end A354360

/-! ## A354360.P3141712627333653478

`∪[A162966(n+1), A090958(n)]`
-/

namespace A354360.P3141712627333653478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354360.P3141712627333653478

namespace A354360

/-- `∪[A162966(n+1), A090958(n)]` -/
def P3141712627333653478.Spec : Prop :=
  ∀ n, (P3141712627333653478.a n : ℤ) = A354360 (n + 1)

end A354360

/-! ## A354360.P805122975416467636

`∪[A013929(n+1), A025487(n+1)]`
-/

namespace A354360.P805122975416467636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354360.P805122975416467636

namespace A354360

/-- `∪[A013929(n+1), A025487(n+1)]` -/
def P805122975416467636.Spec : Prop :=
  ∀ n, (P805122975416467636.a n : ℤ) = A354360 (n + 1)

end A354360

/-! ## A354360.P3028924849078435312

`∪[A013929(n+1), A220219(n+1)]`
-/

namespace A354360.P3028924849078435312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354360.P3028924849078435312

namespace A354360

/-- `∪[A013929(n+1), A220219(n+1)]` -/
def P3028924849078435312.Spec : Prop :=
  ∀ n, (P3028924849078435312.a n : ℤ) = A354360 (n + 1)

end A354360

/-! ## A354360.P74992280231925625

`eq[1, A354366(n+1)]+1`
-/

namespace A354360.P74992280231925625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354360.P74992280231925625

namespace A354360

/-- `eq[1, A354366(n+1)]+1` -/
def P74992280231925625.Spec : Prop :=
  ∀ n, (P74992280231925625.a n : ℤ) = A354360 (n + 1)

end A354360

/-! ## A354360.P2996181830929691555

`record[A324160(n)/A354366(A324160(n))]`
-/

namespace A354360.P2996181830929691555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324160 n : ℚ) / (A354366 (A324160 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354360.P2996181830929691555

namespace A354360

/-- `record[A324160(n)/A354366(A324160(n))]` -/
def P2996181830929691555.Spec : Prop :=
  ∀ n, P2996181830929691555.a n = (A354360 (n + 1) : ℚ)

end A354360

/-!
# A354361: Numbers k such that A354203(sigma(A354202(k))) = 1.

The programs for A354361, there is no canonical definition to state claims against.
-/

/-! ## A354361.P7998022556192375132

`eq[1, A354206(n+1)]+1`
-/

namespace A354361.P7998022556192375132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354361.P7998022556192375132

/-! ## A354361.P14883688548041444220

`eq[n, A354207(n+1)]+1`
-/

namespace A354361.P14883688548041444220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354207 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354361.P14883688548041444220

/-! ## A354361.P12233649139624631786

`eq[3, A354206(A008706(n))]`
-/

namespace A354361.P12233649139624631786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354206 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354361.P12233649139624631786

/-! ## A354361.P6620586545903506244

`record[A000026(n+1)/A354206(n+1)]`
-/

namespace A354361.P6620586545903506244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (n + 1) : ℚ) / (A354206 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354361.P6620586545903506244

/-! ## A354361.P8077686974247950242

`record[A000027(n+1)/A354206(n+1)]`
-/

namespace A354361.P8077686974247950242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A354206 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354361.P8077686974247950242

/-! ## A354361.P16941114380183418427

`record[A004151(n+1)/A354206(n+1)]`
-/

namespace A354361.P16941114380183418427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004151 (n + 1) : ℚ) / (A354206 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354361.P16941114380183418427

/-! ## A354361.P1588842586595292865

`record[A007913(n+1)/A354206(n+1)]`
-/

namespace A354361.P1588842586595292865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A354206 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354361.P1588842586595292865

/-! ## A354361.P11898446542553544221

`record[A007947(n+1)/A354206(n+1)]`
-/

namespace A354361.P11898446542553544221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A354206 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354361.P11898446542553544221

/-!
# A354363: a(n) = LCM_{p^e||n} (q^(e+1)-1)/(q-1), when n = Product_{p^e||n}, with each p^e the maximal power of prime p that divides n, and q = nextPrime(p).

The programs for A354363, there is no canonical definition to state claims against.
-/

/-! ## A354363.P14167855538465039845

`A003973(n+1)/A354364(n+1)`
-/

namespace A354363.P14167855538465039845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A354364 (n + 1) : ℚ)

end

end A354363.P14167855538465039845

/-! ## A354363.P7664288982313647607

`A353783(A003961(n+1))`
-/

namespace A354363.P7664288982313647607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353783 (A003961 (n + 1)).toNat

end

end A354363.P7664288982313647607

/-! ## A354363.P14950577931607641775

`ceil(A341528(n+1)/(n+1))/A354364(n+1)`
-/

namespace A354363.P14950577931607641775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A341528 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / (A354364 (n + 1) : ℚ)

end

end A354363.P14950577931607641775

/-! ## A354363.P3551569208843296295

`A336846(n+1)*A336848(n+1)/A354364(n+1)`
-/

namespace A354363.P3551569208843296295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336846 (n + 1) * A336848 (n + 1) : ℚ) / (A354364 (n + 1) : ℚ)

end

end A354363.P3551569208843296295

/-! ## A354363.P10520048228586825212

`(2*A336840(n+1)-A000005(n+1))/A354364(n+1)`
-/

namespace A354363.P10520048228586825212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A336840 (n + 1) - A000005 (n + 1) : ℚ) / (A354364 (n + 1) : ℚ)

end

end A354363.P10520048228586825212

/-! ## A354363.P8226401752337837742

`A000203(A003961(n+1))/A354364(n+1)`
-/

namespace A354363.P8226401752337837742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A003961 (n + 1)).toNat : ℚ) / (A354364 (n + 1) : ℚ)

end

end A354363.P8226401752337837742

/-! ## A354363.P16608327361240904297

`A000203(A253885(n)+1)/A354364(n+1)`
-/

namespace A354363.P16608327361240904297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A253885 n + 1).toNat : ℚ) / (A354364 (n + 1) : ℚ)

end

end A354363.P16608327361240904297

/-! ## A354363.P11220396447820728902

`A000203(A243501(n+1)-1)/A354364(n+1)`
-/

namespace A354363.P11220396447820728902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A243501 (n + 1) - 1).toNat : ℚ) / (A354364 (n + 1) : ℚ)

end

end A354363.P11220396447820728902

/-! ## A354363.P18254124673715184492

`A353783(A045965(n+1)-A000007(n))`
-/

namespace A354363.P18254124673715184492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353783 (A045965 (n + 1) - A000007 n).toNat

end

end A354363.P18254124673715184492

/-! ## A354363.P16174353179739035628

`A003973(n+1)/A353784(A003961(n+1))`
-/

namespace A354363.P16174353179739035628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A353784 (A003961 (n + 1)).toNat : ℚ)

end

end A354363.P16174353179739035628

/-! ## A354363.P12191100956048208065

`A353783(A045965(n+1)/(A000007(n)+1))`
-/

namespace A354363.P12191100956048208065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353783 (SequenceMachineLib.roundAway ((A045965 (n + 1) : ℚ) / (A000007 n + 1 : ℚ))).toNat

end

end A354363.P12191100956048208065

/-! ## A354363.P6111155373239124346

`and(A153881(n+1), A353783(A045965(n+1)))`
-/

namespace A354363.P6111155373239124346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A353783 (A045965 (n + 1)).toNat)

end

end A354363.P6111155373239124346

/-!
# A354364: a(n) = A003973(n) / A354363(n).

The programs for A354364, there is no canonical definition to state claims against.
-/

/-! ## A354364.P10615963261650371563

`A003973(n+1)/A354363(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354364.P10615963261650371563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A354363 (n + 1) : ℚ)

end

end A354364.P10615963261650371563

/-! ## A354364.P18279248170920472054

`A353784(A003961(n+1))`
-/

namespace A354364.P18279248170920472054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353784 (A003961 (n + 1)).toNat

end

end A354364.P18279248170920472054

/-! ## A354364.P8746302575472821468

`A000203(A336853(n+1)+1+n)/A354363(n+1)`
-/

namespace A354364.P8746302575472821468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A336853 (n + 1) + 1 + (n : ℤ)).toNat : ℚ) / (A354363 (n + 1) : ℚ)

end

end A354364.P8746302575472821468

/-! ## A354364.P205057747229388576

`A353784(A045965(n+1))`
-/

namespace A354364.P205057747229388576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353784 (A045965 (n + 1)).toNat

end

end A354364.P205057747229388576

/-! ## A354364.P7451730586764891559

`A003973(n+1)/A353783(A003961(n+1))`
-/

namespace A354364.P7451730586764891559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A353783 (A003961 (n + 1)).toNat : ℚ)

end

end A354364.P7451730586764891559

/-!
# A354365: Numerators of Dirichlet inverse of primorial deflation fraction A319626(n) / A319627(n).

The programs for A354365, the canonical program `A354365.P9234671817111692656` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354365 has offset 1).

The definition of A354365 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354365.P9234671817111692656

`A055615(n+1)/gcd(n+1, A055615(A064989(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A354365

/-- `A055615(n+1)/gcd(n+1, A055615(A064989(n+1)))` -/
def P9234671817111692656.Spec : Prop :=
  ∀ n, P9234671817111692656.a n = (A354365 (n + 1) : ℚ)

end A354365

/-! ## A354365.P15197041369504270540

`A354350(n+1)-(n+1)`
-/

namespace A354365.P15197041369504270540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354350 (n + 1) - (n + 1 : ℤ)

end

end A354365.P15197041369504270540

namespace A354365

/-- `A354350(n+1)-(n+1)` -/
def P15197041369504270540.Spec : Prop :=
  ∀ n, P15197041369504270540.a n = A354365 (n + 1)

end A354365

/-! ## A354365.P15566160341799768714

`A008683(n+1)*A319626(n+1)`
-/

namespace A354365.P15566160341799768714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A319626 (n + 1)

end

end A354365.P15566160341799768714

namespace A354365

/-- `A008683(n+1)*A319626(n+1)` -/
def P15566160341799768714.Spec : Prop :=
  ∀ n, P15566160341799768714.a n = A354365 (n + 1)

end A354365

/-! ## A354365.P11056749307818378986

`A055615(n+1)/A330749(n+1)`
-/

namespace A354365.P11056749307818378986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (A330749 (n + 1) : ℚ)

end

end A354365.P11056749307818378986

namespace A354365

/-- `A055615(n+1)/A330749(n+1)` -/
def P11056749307818378986.Spec : Prop :=
  ∀ n, P11056749307818378986.a n = (A354365 (n + 1) : ℚ)

end A354365

/-! ## A354365.P17399200402338506979

`(A007423(n+1)-1)*A319626(n+1)`
-/

namespace A354365.P17399200402338506979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * A319626 (n + 1)

end

end A354365.P17399200402338506979

namespace A354365

/-- `(A007423(n+1)-1)*A319626(n+1)` -/
def P17399200402338506979.Spec : Prop :=
  ∀ n, P17399200402338506979.a n = A354365 (n + 1)

end A354365

/-! ## A354365.P10668164053891121880

`(A231821(n+1)-3)*A319626(n+1)`
-/

namespace A354365.P10668164053891121880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A231821 (n + 1) - 3) * A319626 (n + 1)

end

end A354365.P10668164053891121880

namespace A354365

/-- `(A231821(n+1)-3)*A319626(n+1)` -/
def P10668164053891121880.Spec : Prop :=
  ∀ n, P10668164053891121880.a n = A354365 (n + 1)

end A354365

/-! ## A354365.P17595524651302376631

`A162512(n+1)%2*A319626(n+1)`
-/

namespace A354365.P17595524651302376631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 * A319626 (n + 1)

end

end A354365.P17595524651302376631

namespace A354365

/-- `A162512(n+1)%2*A319626(n+1)` -/
def P17595524651302376631.Spec : Prop :=
  ∀ n, P17595524651302376631.a n = A354365 (n + 1)

end A354365

/-! ## A354365.P2739158887066686041

`(n+1)*A008683(n+1)/A330749(n+1)`
-/

namespace A354365.P2739158887066686041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A008683 (n + 1) : ℚ) / (A330749 (n + 1) : ℚ)

end

end A354365.P2739158887066686041

namespace A354365

/-- `(n+1)*A008683(n+1)/A330749(n+1)` -/
def P2739158887066686041.Spec : Prop :=
  ∀ n, P2739158887066686041.a n = (A354365 (n + 1) : ℚ)

end A354365

/-! ## A354365.P8181459889274304627

`A055615(n+1)/A064989(n+1)*A319627(n+1)`
-/

namespace A354365.P8181459889274304627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (A064989 (n + 1) : ℚ) * (A319627 (n + 1) : ℚ)

end

end A354365.P8181459889274304627

namespace A354365

/-- `A055615(n+1)/A064989(n+1)*A319627(n+1)` -/
def P8181459889274304627.Spec : Prop :=
  ∀ n, P8181459889274304627.a n = (A354365 (n + 1) : ℚ)

end A354365

/-! ## A354365.P5997288142444303243

`A055615(n+1)/A064989(n+1)*A354366(n+1)`
-/

namespace A354365.P5997288142444303243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (A064989 (n + 1) : ℚ) * (A354366 (n + 1) : ℚ)

end

end A354365.P5997288142444303243

namespace A354365

/-- `A055615(n+1)/A064989(n+1)*A354366(n+1)` -/
def P5997288142444303243.Spec : Prop :=
  ∀ n, P5997288142444303243.a n = (A354365 (n + 1) : ℚ)

end A354365

/-!
# A354366: Denominators of Dirichlet inverse of primorial deflation fraction A319626(n) / A319627(n).

The programs for A354366, the canonical program `A354366.P1214752980405363545` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354366 has offset 1).

The definition of A354366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354366.P15567779815291427983

`A319627(n+1)^abs(round(1/∏{e}[n+1, -#²]))`
-/

namespace A354366.P15567779815291427983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319627 (n + 1) : ℚ) ^ (|SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ))| : ℤ)

end

end A354366.P15567779815291427983

namespace A354366

/-- `A319627(n+1)^abs(round(1/∏{e}[n+1, -#²]))` -/
def P15567779815291427983.Spec : Prop :=
  ∀ n, P15567779815291427983.a n = (A354366 (n + 1) : ℚ)

end A354366

/-! ## A354366.P1214752980405363545

`A319627(A385212(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A354366

/-- `A319627(A385212(n+1))` -/
def P1214752980405363545.Spec : Prop :=
  ∀ n, P1214752980405363545.a n = A354366 (n + 1)

theorem P1214752980405363545.correct : P1214752980405363545.Spec := by
  intro n
  simp only [A354366, Nat.add_sub_cancel]

end A354366

/-! ## A354366.P10203281843432247976

`A319627(∏{p}[A055615(n+1), #])`
-/

namespace A354366.P10203281843432247976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A354366.P10203281843432247976

namespace A354366

/-- `A319627(∏{p}[A055615(n+1), #])` -/
def P10203281843432247976.Spec : Prop :=
  ∀ n, P10203281843432247976.a n = A354366 (n + 1)

end A354366

/-! ## A354366.P1675842923365820503

`A319627(lcm(n, A008683(n+1))+1)`
-/

namespace A354366.P1675842923365820503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (Int.lcm (n : ℤ) (A008683 (n + 1)) + 1)

end

end A354366.P1675842923365820503

namespace A354366

/-- `A319627(lcm(n, A008683(n+1))+1)` -/
def P1675842923365820503.Spec : Prop :=
  ∀ n, P1675842923365820503.a n = A354366 (n + 1)

end A354366

/-! ## A354366.P1333670046902723378

`A319627(n+1)^abs(A008683(n+1))`
-/

namespace A354366.P1333670046902723378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319627 (n + 1) : ℚ) ^ (|A008683 (n + 1)| : ℤ)

end

end A354366.P1333670046902723378

namespace A354366

/-- `A319627(n+1)^abs(A008683(n+1))` -/
def P1333670046902723378.Spec : Prop :=
  ∀ n, P1333670046902723378.a n = (A354366 (n + 1) : ℚ)

end A354366

/-! ## A354366.P7868984898598653892

`A319627(∏{p}[(n+1)*A008683(n+1), #])`
-/

namespace A354366.P7868984898598653892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A354366.P7868984898598653892

namespace A354366

/-- `A319627(∏{p}[(n+1)*A008683(n+1), #])` -/
def P7868984898598653892.Spec : Prop :=
  ∀ n, P7868984898598653892.a n = A354366 (n + 1)

end A354366

/-! ## A354366.P992147047705772028

`C(A319627(∏{p}[n+1, #]), A008683(n+1)²)`
-/

namespace A354366.P992147047705772028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A319627 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat (A008683 (n + 1) ^ 2).toNat

end

end A354366.P992147047705772028

namespace A354366

/-- `C(A319627(∏{p}[n+1, #]), A008683(n+1)²)` -/
def P992147047705772028.Spec : Prop :=
  ∀ n, (P992147047705772028.a n : ℤ) = A354366 (n + 1)

end A354366

/-! ## A354366.P10347600142861649297

`A064989(A348990(n+1))^∏{e}[n+1, -floor(1/#)]²`
-/

namespace A354366.P10347600142861649297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A348990 (n + 1)).toNat : ℚ) ^ ((∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)) ^ 2 : ℤ)

end

end A354366.P10347600142861649297

namespace A354366

/-- `A064989(A348990(n+1))^∏{e}[n+1, -floor(1/#)]²` -/
def P10347600142861649297.Spec : Prop :=
  ∀ n, P10347600142861649297.a n = (A354366 (n + 1) : ℚ)

end A354366

/-! ## A354366.P11918488376450879231

`A319627(n+1)^A181434(n+1)²`
-/

namespace A354366.P11918488376450879231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319627 (n + 1) : ℚ) ^ (A181434 (n + 1) ^ 2 : ℤ)

end

end A354366.P11918488376450879231

namespace A354366

/-- `A319627(n+1)^A181434(n+1)²` -/
def P11918488376450879231.Spec : Prop :=
  ∀ n, P11918488376450879231.a n = (A354366 (n + 1) : ℚ)

end A354366

/-! ## A354366.P2961215361884936071

`A319627(A349630((n+1)²))`
-/

namespace A354366.P2961215361884936071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A349630 ((n + 1) ^ 2)).toNat

end

end A354366.P2961215361884936071

namespace A354366

/-- `A319627(A349630((n+1)²))` -/
def P2961215361884936071.Spec : Prop :=
  ∀ n, P2961215361884936071.a n = A354366 (n + 1)

end A354366

/-!
# A354373: Square spiral on a 2D square lattice, one term per cell, starting at the origin with 0; the digits of the four integers forming any 2 X 2 square add up to a prime.

The programs for A354373, there is no canonical definition to state claims against.
-/

/-! ## A354373.P3862407949438592649

`A354374(A077168(n))`
-/

namespace A354373.P3862407949438592649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354374 (A077168 n).toNat

end

end A354373.P3862407949438592649

/-! ## A354373.P17340381808264809803

`A354374(A043319(n+1))`
-/

namespace A354373.P17340381808264809803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354374 (A043319 (n + 1)).toNat

end

end A354373.P17340381808264809803

/-! ## A354373.P5756134761979428474

`A354374(A044916(n+1))`
-/

namespace A354373.P5756134761979428474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354374 (A044916 (n + 1)).toNat

end

end A354373.P5756134761979428474

/-! ## A354373.P16327807870497629514

`A354374(A055646(n+1))`
-/

namespace A354373.P16327807870497629514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354374 (A055646 (n + 1)).toNat

end

end A354373.P16327807870497629514

/-! ## A354373.P15475430127424050951

`A354374(A055647(n)+1)`
-/

namespace A354373.P15475430127424050951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354374 (A055647 n + 1).toNat

end

end A354373.P15475430127424050951

/-!
# A354375: Square spiral on a 2D square lattice, one term per cell, starting at the origin with 0; the digits of the four integers forming any 2 X 2 square add up to a square and those sums themselves form another infinite 2D square lattice with the same property.

The programs for A354375, there is no canonical definition to state claims against.
-/

/-! ## A354375.P1916776517313684016

`A304527(record[A306091(n+1)])`
-/

namespace A354375.P1916776517313684016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A354375.P1916776517313684016

/-! ## A354375.P5458533581265054506

`A327062(n)-A000217(A020106(n))`
-/

namespace A354375.P5458533581265054506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327062 n - A000217 (A020106 n).toNat

end

end A354375.P5458533581265054506

/-!
# A354376: Smallest prime which is at the end of an arithmetic progression of exactly n primes.

The programs for A354376, there is no canonical definition to state claims against.
-/

/-! ## A354376.P14663730878334144990

`A354485(∑[n+1])`
-/

namespace A354376.P14663730878334144990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354485 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354376.P14663730878334144990

/-! ## A354376.P12525632940347901832

`A354485(A025747(n))+A185037(n)`
-/

namespace A354376.P12525632940347901832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354485 (A025747 n).toNat + A185037 n

end

end A354376.P12525632940347901832

/-! ## A354376.P14773739727732374450

`A354485(record[A133825(n)])+A185037(n)`
-/

namespace A354376.P14773739727732374450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354485 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A185037 n

end

end A354376.P14773739727732374450

/-! ## A354376.P4443589928064565721

`A354485(A025747(n))*A354487(n+4)`
-/

namespace A354376.P4443589928064565721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354485 (A025747 n).toNat * A354487 (n + 4)

end

end A354376.P4443589928064565721

/-! ## A354376.P12467584463064940549

`A354485(A025747(n))/A354487(n+7)`
-/

namespace A354376.P12467584463064940549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354485 (A025747 n).toNat : ℚ) / (A354487 (n + 7) : ℚ)

end

end A354376.P12467584463064940549

/-!
# A354377: Initial terms associated with the arithmetic progressions of primes of A354376.

The programs for A354377, there is no canonical definition to state claims against.
-/

/-! ## A354377.P16560560108995344733

`A354485(∑[n]+1)`
-/

namespace A354377.P16560560108995344733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354485 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A354377.P16560560108995344733

/-! ## A354377.P9893891311740779935

`A354376(n+1)-n*A354484(n+1)`
-/

namespace A354377.P9893891311740779935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354376 (n + 1) - (n : ℤ) * A354484 (n + 1)

end

end A354377.P9893891311740779935

/-! ## A354377.P1466284357045054148

`A354485(A000124(n))+A185037(n)`
-/

namespace A354377.P1466284357045054148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354485 (A000124 n).toNat + A185037 n

end

end A354377.P1466284357045054148

/-! ## A354377.P13845725197137277703

`A193592(∑[n])*A354485(A000124(n))`
-/

namespace A354377.P13845725197137277703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (∑ j ∈ Finset.range (n + 1), f1 j) * A354485 (A000124 n).toNat

end

end A354377.P13845725197137277703

/-! ## A354377.P4823004064689160771

`A354485(A000124(n))+A111757(2*n+3)`
-/

namespace A354377.P4823004064689160771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354485 (A000124 n).toNat + A111757 (2 * n + 3)

end

end A354377.P4823004064689160771

/-!
# A354378: a(n) is the denominator of Sum_{k=0..n} (-1)^k / (2*k)!.

The programs for A354378, there is no canonical definition to state claims against.
-/

/-! ## A354378.P14488657047305858707

`A010050(n)/gcd(A010050(n), A275651(n))`
-/

namespace A354378.P14488657047305858707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 n : ℚ) / (Int.gcd (A010050 n) (A275651 n) : ℚ)

end

end A354378.P14488657047305858707

/-! ## A354378.P8721842917591336592

`A276463(n)!/A170818(n+1)`
-/

namespace A354378.P8721842917591336592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A276463 n).toNat : ℚ) / (A170818 (n + 1) : ℚ)

end

end A354378.P8721842917591336592

/-! ## A354378.P15934689728221071398

`∏{e}[4^n, #!]/A170817(n+1)`
-/

namespace A354378.P15934689728221071398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ) / (A170817 (n + 1) : ℚ)

end

end A354378.P15934689728221071398

/-! ## A354378.P1233765509431639397

`lcm(A174614(n)!, A279331(n))`
-/

namespace A354378.P1233765509431639397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A174614 n).toNat : ℤ) (A279331 n)

end

end A354378.P1233765509431639397

/-! ## A354378.P9628175126163413363

`A110725(n)!/A170817(n+1)`
-/

namespace A354378.P9628175126163413363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A110725 n).toNat : ℚ) / (A170817 (n + 1) : ℚ)

end

end A354378.P9628175126163413363

/-!
# A354381: Primitive elements in A354379, being those not divisible by any previous term.

The programs for A354381, there is no canonical definition to state claims against.
-/

/-! ## A354381.P3681119657249749816

`∩[A317304(n+1), A354379(n+1)]`
-/

namespace A354381.P3681119657249749816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354381.P3681119657249749816

/-! ## A354381.P3303327803367245235

`∩[A354379(n+1), A359544(n+1)]`
-/

namespace A354381.P3303327803367245235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354381.P3303327803367245235

/-!
# A354383: Fibonacci sequence beginning 11, 26.

The programs for A354383, the canonical program `A354383.P15716922264132695872` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354383 has offset 0).

The definition of A354383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354383.P15716922264132695872

`a(n-1)+a(n-2)` with `a(0)=11, a(1)=26`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A354383

/-- `a(n-1)+a(n-2)` -/
def P15716922264132695872.Spec : Prop :=
  ∀ n, (P15716922264132695872.a n : ℤ) = A354383 n

theorem P15716922264132695872.correct : P15716922264132695872.Spec := by
  intro n
  simp only [A354383]

end A354383

/-! ## A354383.P16179720800461185127

`a(n-1)-floor(-a(n-2))` with `a(0)=11, a(1)=26`

`floor` is left out, it is the identity on integers.
-/

namespace A354383.P16179720800461185127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 26] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A354383.P16179720800461185127

namespace A354383

/-- `a(n-1)-floor(-a(n-2))` -/
def P16179720800461185127.Spec : Prop :=
  ∀ n, P16179720800461185127.a n = A354383 n

end A354383

/-! ## A354383.P13985822199855038645

`a(n-1)-ceil(-a(n-2))` with `a(0)=11, a(1)=26`

`ceil` is left out, it is the identity on integers.
-/

namespace A354383.P13985822199855038645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 26] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A354383.P13985822199855038645

namespace A354383

/-- `a(n-1)-ceil(-a(n-2))` -/
def P13985822199855038645.Spec : Prop :=
  ∀ n, P13985822199855038645.a n = A354383 n

end A354383

/-! ## A354383.P11148884385516647178

`A022388(n)+A022138(n)`
-/

namespace A354383.P11148884385516647178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022388 n + A022138 n

end

end A354383.P11148884385516647178

namespace A354383

/-- `A022388(n)+A022138(n)` -/
def P11148884385516647178.Spec : Prop :=
  ∀ n, P11148884385516647178.a n = A354383 n

end A354383

/-! ## A354383.P10827721229752334589

`A022389(n)+A022131(n)`
-/

namespace A354383.P10827721229752334589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022389 n + A022131 n

end

end A354383.P10827721229752334589

namespace A354383

/-- `A022389(n)+A022131(n)` -/
def P10827721229752334589.Spec : Prop :=
  ∀ n, P10827721229752334589.a n = A354383 n

end A354383

/-! ## A354383.P4795477378982533164

`A022390(n)+A022379(n)`
-/

namespace A354383.P4795477378982533164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022390 n + A022379 n

end

end A354383.P4795477378982533164

namespace A354383

/-- `A022390(n)+A022379(n)` -/
def P4795477378982533164.Spec : Prop :=
  ∀ n, P4795477378982533164.a n = A354383 n

end A354383

/-! ## A354383.P9468810150234490872

`A097657(n)+A022086(n)`
-/

namespace A354383.P9468810150234490872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097657 n + A022086 n

end

end A354383.P9468810150234490872

namespace A354383

/-- `A097657(n)+A022086(n)` -/
def P9468810150234490872.Spec : Prop :=
  ∀ n, P9468810150234490872.a n = A354383 n

end A354383

/-! ## A354383.P8204928735345356626

`A184959(n)+A022107(n)`
-/

namespace A354383.P8204928735345356626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 n + A022107 n

end

end A354383.P8204928735345356626

namespace A354383

/-- `A184959(n)+A022107(n)` -/
def P8204928735345356626.Spec : Prop :=
  ∀ n, P8204928735345356626.a n = A354383 n

end A354383

/-! ## A354383.P542312709725382991

`A185691(n)+A022095(n)`
-/

namespace A354383.P542312709725382991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185691 n + A022095 n

end

end A354383.P542312709725382991

namespace A354383

/-- `A185691(n)+A022095(n)` -/
def P542312709725382991.Spec : Prop :=
  ∀ n, P542312709725382991.a n = A354383 n

end A354383

/-! ## A354383.P5549901837060365034

`A190996(n)+A022109(n)`
-/

namespace A354383.P5549901837060365034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A022109 n

end

end A354383.P5549901837060365034

namespace A354383

/-- `A190996(n)+A022109(n)` -/
def P5549901837060365034.Spec : Prop :=
  ∀ n, P5549901837060365034.a n = A354383 n

end A354383

/-! ## A354383.P13775994839541405992

`A190995(n)+A022119(n)`
-/

namespace A354383.P13775994839541405992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + A022119 n

end

end A354383.P13775994839541405992

namespace A354383

/-- `A190995(n)+A022119(n)` -/
def P13775994839541405992.Spec : Prop :=
  ∀ n, P13775994839541405992.a n = A354383 n

end A354383

/-! ## A354383.P17793380665908729628

`A280154(n)+A022391(n)`
-/

namespace A354383.P17793380665908729628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A022391 n

end

end A354383.P17793380665908729628

namespace A354383

/-- `A280154(n)+A022391(n)` -/
def P17793380665908729628.Spec : Prop :=
  ∀ n, P17793380665908729628.a n = A354383 n

end A354383

/-! ## A354383.P227077022554567385

`A186620(n)-A152163(n)`
-/

namespace A354383.P227077022554567385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186620 n - A152163 n

end

end A354383.P227077022554567385

namespace A354383

/-- `A186620(n)-A152163(n)` -/
def P227077022554567385.Spec : Prop :=
  ∀ n, P227077022554567385.a n = A354383 n

end A354383

/-! ## A354383.P13269812166532732231

`A022106(n)+A022093(n+1)`
-/

namespace A354383.P13269812166532732231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022093 (n + 1)

end

end A354383.P13269812166532732231

namespace A354383

/-- `A022106(n)+A022093(n+1)` -/
def P13269812166532732231.Spec : Prop :=
  ∀ n, P13269812166532732231.a n = A354383 n

end A354383

/-! ## A354383.P1598918307154002343

`A022118(n)+A022092(n+1)`
-/

namespace A354383.P1598918307154002343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A022092 (n + 1)

end

end A354383.P1598918307154002343

namespace A354383

/-- `A022118(n)+A022092(n+1)` -/
def P1598918307154002343.Spec : Prop :=
  ∀ n, P1598918307154002343.a n = A354383 n

end A354383

/-! ## A354383.P12686011266826418621

`A022135(n)+A022090(n+1)`
-/

namespace A354383.P12686011266826418621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022135 n + A022090 (n + 1)

end

end A354383.P12686011266826418621

namespace A354383

/-- `A022135(n)+A022090(n+1)` -/
def P12686011266826418621.Spec : Prop :=
  ∀ n, P12686011266826418621.a n = A354383 n

end A354383

/-! ## A354383.P7639844001344360790

`A022348(n)+A022101(n+1)`
-/

namespace A354383.P7639844001344360790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022101 (n + 1)

end

end A354383.P7639844001344360790

namespace A354383

/-- `A022348(n)+A022101(n+1)` -/
def P7639844001344360790.Spec : Prop :=
  ∀ n, P7639844001344360790.a n = A354383 n

end A354383

/-! ## A354383.P4002741396642002990

`A022347(n)+A022115(n+1)`
-/

namespace A354383.P4002741396642002990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022115 (n + 1)

end

end A354383.P4002741396642002990

namespace A354383

/-- `A022347(n)+A022115(n+1)` -/
def P4002741396642002990.Spec : Prop :=
  ∀ n, P4002741396642002990.a n = A354383 n

end A354383

/-! ## A354383.P6510664722457342319

`A022367(n+1)+A022104(n)`
-/

namespace A354383.P6510664722457342319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 (n + 1) + A022104 n

end

end A354383.P6510664722457342319

namespace A354383

/-- `A022367(n+1)+A022104(n)` -/
def P6510664722457342319.Spec : Prop :=
  ∀ n, P6510664722457342319.a n = A354383 n

end A354383

/-!
# A354384: Difference sequence of A356133.

The programs for A354384, the canonical program `A354384.P17452812884453466185` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354384 has offset 1).

The definition of A354384 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036580, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354384.P17452812884453466185

`A036580(n)+2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A354384

/-- `A036580(n)+2` -/
def P17452812884453466185.Spec : Prop :=
  ∀ n, P17452812884453466185.a n = A354384 (n + 1)

theorem P17452812884453466185.correct : P17452812884453466185.Spec := by
  intro n
  simp only [A354384, Nat.add_sub_cancel]

end A354384

/-! ## A354384.P13153800116215831410

`A007413(n+1)+1`
-/

namespace A354384.P13153800116215831410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (n + 1) + 1

end

end A354384.P13153800116215831410

namespace A354384

/-- `A007413(n+1)+1` -/
def P13153800116215831410.Spec : Prop :=
  ∀ n, P13153800116215831410.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P15395869106866061168

`Δ[A010059(n)]+3`
-/

namespace A354384.P15395869106866061168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A354384.P15395869106866061168

namespace A354384

/-- `Δ[A010059(n)]+3` -/
def P15395869106866061168.Spec : Prop :=
  ∀ n, P15395869106866061168.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P1594108915127718624

`3-Δ[A001285(n)]`
-/

namespace A354384.P1594108915127718624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A354384.P1594108915127718624

namespace A354384

/-- `3-Δ[A001285(n)]` -/
def P1594108915127718624.Spec : Prop :=
  ∀ n, P1594108915127718624.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P5218384516674056625

`3-Δ[A010060(n)]`
-/

namespace A354384.P5218384516674056625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A354384.P5218384516674056625

namespace A354384

/-- `3-Δ[A010060(n)]` -/
def P5218384516674056625.Spec : Prop :=
  ∀ n, P5218384516674056625.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P12903044320882220997

`3-A029883(n+1)`
-/

namespace A354384.P12903044320882220997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A029883 (n + 1)

end

end A354384.P12903044320882220997

namespace A354384

/-- `3-A029883(n+1)` -/
def P12903044320882220997.Spec : Prop :=
  ∀ n, P12903044320882220997.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P17114129027311798641

`4-A036577(n+1)`
-/

namespace A354384.P17114129027311798641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A036577 (n + 1)

end

end A354384.P17114129027311798641

namespace A354384

/-- `4-A036577(n+1)` -/
def P17114129027311798641.Spec : Prop :=
  ∀ n, P17114129027311798641.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P1432147172969476218

`4-A316826(n+1)`
-/

namespace A354384.P1432147172969476218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A316826 (n + 1)

end

end A354384.P1432147172969476218

namespace A354384

/-- `4-A316826(n+1)` -/
def P1432147172969476218.Spec : Prop :=
  ∀ n, P1432147172969476218.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P1658239070725356398

`5-A036585(n+1)`
-/

namespace A354384.P1658239070725356398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A036585 (n + 1)

end

end A354384.P1658239070725356398

namespace A354384

/-- `5-A036585(n+1)` -/
def P1658239070725356398.Spec : Prop :=
  ∀ n, P1658239070725356398.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P7590575347501554398

`Δ[A000069(n+1)]+1`
-/

namespace A354384.P7590575347501554398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A354384.P7590575347501554398

namespace A354384

/-- `Δ[A000069(n+1)]+1` -/
def P7590575347501554398.Spec : Prop :=
  ∀ n, P7590575347501554398.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P12282603440797049505

`A036583(n)+A036578(n)`
-/

namespace A354384.P12282603440797049505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 n + A036578 n

end

end A354384.P12282603440797049505

namespace A354384

/-- `A036583(n)+A036578(n)` -/
def P12282603440797049505.Spec : Prop :=
  ∀ n, P12282603440797049505.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P5418433335249498343

`A036581(n)+A005679(n+1)`
-/

namespace A354384.P5418433335249498343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 n + A005679 (n + 1)

end

end A354384.P5418433335249498343

namespace A354384

/-- `A036581(n)+A005679(n+1)` -/
def P5418433335249498343.Spec : Prop :=
  ∀ n, P5418433335249498343.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P8656539680632685325

`A161175(n+1)+A001285(n)`
-/

namespace A354384.P8656539680632685325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161175 (n + 1) + A001285 n

end

end A354384.P8656539680632685325

namespace A354384

/-- `A161175(n+1)+A001285(n)` -/
def P8656539680632685325.Spec : Prop :=
  ∀ n, P8656539680632685325.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P14415843031175084703

`A001285(n)+A001285(A025480(n))`
-/

namespace A354384.P14415843031175084703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n + A001285 (A025480 n).toNat

end

end A354384.P14415843031175084703

namespace A354384

/-- `A001285(n)+A001285(A025480(n))` -/
def P14415843031175084703.Spec : Prop :=
  ∀ n, P14415843031175084703.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P1136195930825034635

`Δ[comp[xor(n, 2*n)]]+1`
-/

namespace A354384.P1136195930825034635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A354384.P1136195930825034635

namespace A354384

/-- `Δ[comp[xor(n, 2*n)]]+1` -/
def P1136195930825034635.Spec : Prop :=
  ∀ n, P1136195930825034635.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P8920235327378733423

`Δ[char[xor(n, 2*n)]]+3`
-/

namespace A354384.P8920235327378733423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3

end

end A354384.P8920235327378733423

namespace A354384

/-- `Δ[char[xor(n, 2*n)]]+3` -/
def P8920235327378733423.Spec : Prop :=
  ∀ n, P8920235327378733423.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P17143712670405405328

`3-Δ[char[xor(n, Δ[n²])]]`
-/

namespace A354384.P17143712670405405328
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A354384.P17143712670405405328

namespace A354384

/-- `3-Δ[char[xor(n, Δ[n²])]]` -/
def P17143712670405405328.Spec : Prop :=
  ∀ n, P17143712670405405328.a n = A354384 (n + 1)

end A354384

/-! ## A354384.P14851460724441921402

`Δ[comp[xor(n, 2*n)]-(1-n)]`
-/

namespace A354384.P14851460724441921402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354384.P14851460724441921402

namespace A354384

/-- `Δ[comp[xor(n, 2*n)]-(1-n)]` -/
def P14851460724441921402.Spec : Prop :=
  ∀ n, P14851460724441921402.a n = A354384 (n + 1)

end A354384

/-!
# A354387: a(n) is the number of arch configuration solutions with n arches derived from 2 concentric arches using the exterior arch splitting algorithm.

The programs for A354387, there is no canonical definition to state claims against.
-/

/-! ## A354387.P16068609508466869014

`A331499(∑[n+1]+2)`
-/

namespace A354387.P16068609508466869014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331499 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A354387.P16068609508466869014

/-! ## A354387.P7678750760663894859

`A334273(a(n-1)+9)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A354387.P7678750760663894859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 6] fun n a =>
  A334273 (a (n - 1) + 9).toNat

end

end A354387.P7678750760663894859

/-! ## A354387.P4215264772026999225

`A055086(floor((floor(n/2)/2+1)²)*∑{digits}[n, #!])`
-/

namespace A354387.P4215264772026999225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (⌊((⌊(n : ℚ) / 2⌋ : ℚ) / 2 + 1) ^ 2⌋ * ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ)).toNat

end

end A354387.P4215264772026999225

/-!
# A354388: Table read upward by antidiagonals: the n-th row gives the sums of each weakly decreasing nonnegative integer sequence of length n, listed in lexicographic order.

The programs for A354388, there is no canonical definition to state claims against.
-/

/-! ## A354388.P5815156816769432039

`A055941(A066884(n+1))`
-/

namespace A354388.P5815156816769432039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A066884 (n + 1)).toNat

end

end A354388.P5815156816769432039

/-! ## A354388.P8012286198767872709

`A002262(n)-A123740(A108131(n))`
-/

namespace A354388.P8012286198767872709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A123740 (A108131 n).toNat

end

end A354388.P8012286198767872709

/-! ## A354388.P14413047707609067512

`A270339(A335545(n))%A002260(n+1)`
-/

namespace A354388.P14413047707609067512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270339 (A335545 n).toNat) (A002260 (n + 1))

end

end A354388.P14413047707609067512

/-! ## A354388.P10411221438624425568

`A002260(n+1)-A354579(A275870(n+1))`
-/

namespace A354388.P10411221438624425568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A354579 (A275870 (n + 1)).toNat

end

end A354388.P10411221438624425568

/-! ## A354388.P13966637863866187115

`A002260(n+1)-A001511(A085074(n+2))`
-/

namespace A354388.P13966637863866187115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A001511 (A085074 (n + 2)).toNat

end

end A354388.P13966637863866187115

/-!
# A354390: Expansion of e.g.f. 1/(1 + log(1 + x)^4 / 24).

The programs for A354390, there is no canonical definition to state claims against.
-/

/-! ## A354390.P6753105401352917392

`A354318(n)+A185034(A185034(n))`
-/

namespace A354390.P6753105401352917392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354318 n + A185034 (A185034 n).toNat

end

end A354390.P6753105401352917392

/-! ## A354390.P14685276006094388589

`A354318(n)+A185234(A185234(n))`
-/

namespace A354390.P14685276006094388589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354318 n + A185234 (A185234 n).toNat

end

end A354390.P14685276006094388589

/-!
# A354393: Expansion of e.g.f. 1/(1 + (exp(x) - 1)^4 / 24).

The programs for A354393, there is no canonical definition to state claims against.
-/

/-! ## A354393.P12023082275394242546

`A354397(n)+A185234(A185234(n))`
-/

namespace A354393.P12023082275394242546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354397 n + A185234 (A185234 n).toNat

end

end A354393.P12023082275394242546

/-! ## A354393.P12154039369466628966

`A354397(A004880(n+1))`
-/

namespace A354393.P12154039369466628966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354397 (A004880 (n + 1)).toNat

end

end A354393.P12154039369466628966

/-! ## A354393.P12374926982325697567

`A354397(A032551(n+1))`
-/

namespace A354393.P12374926982325697567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354397 (A032551 (n + 1)).toNat

end

end A354393.P12374926982325697567

/-! ## A354393.P7127985660202084174

`A354397(A099146(n+1))`
-/

namespace A354393.P7127985660202084174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354397 (A099146 (n + 1)).toNat

end

end A354393.P7127985660202084174

/-!
# A354394: Expansion of e.g.f. 1/(1 + (exp(x) - 1)^5 / 120).

The programs for A354394, there is no canonical definition to state claims against.
-/

/-! ## A354394.P14548239931806676814

`A354398(n^∑[char[10*n]])`
-/

namespace A354394.P14548239931806676814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354398 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A354394.P14548239931806676814

/-! ## A354394.P15857106411338367782

`A024000(1-A354398(n))`
-/

namespace A354394.P15857106411338367782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (1 - A354398 n).toNat

end

end A354394.P15857106411338367782

/-! ## A354394.P6987833662548750144

`A022958(2-A354398(n))`
-/

namespace A354394.P6987833662548750144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (2 - A354398 n).toNat

end

end A354394.P6987833662548750144

/-! ## A354394.P13912178650217853183

`A354398(n)+A324660(∑[n+1])`
-/

namespace A354394.P13912178650217853183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354398 n + A324660 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354394.P13912178650217853183

/-! ## A354394.P6125294456670984604

`A354398(n)+A010815((10*n+1)*(10*n+9))`
-/

namespace A354394.P6125294456670984604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354398 n + A010815 ((10 * n + 1) * (10 * n + 9))

end

end A354394.P6125294456670984604

/-!
# A354395: Expansion of e.g.f. exp( -(exp(x) - 1)^2 / 2 ).

The programs for A354395, there is no canonical definition to state claims against.
-/

/-! ## A354395.P632865311329104705

`A322912(A328743(n))-A047412(n+1)`
-/

namespace A354395.P632865311329104705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322912 (A328743 n).toNat - A047412 (n + 1)

end

end A354395.P632865311329104705

/-!
# A354396: Expansion of e.g.f. exp( -(exp(x) - 1)^3 / 6 ).

The programs for A354396, there is no canonical definition to state claims against.
-/

/-! ## A354396.P8740256459821872505

`A327504(n)-A002264(3^n+3*(1-2^n))`
-/

namespace A354396.P8740256459821872505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327504 n - A002264 ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ))).toNat

end

end A354396.P8740256459821872505

/-! ## A354396.P12388531514864257711

`A004525(A346894(n)-A000392(n))-A000392(n)`
-/

namespace A354396.P12388531514864257711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A346894 n - A000392 n).toNat - A000392 n

end

end A354396.P12388531514864257711

/-! ## A354396.P18035173409969528707

`A026741(A346894(n)-A000392(n))-A000392(n)`
-/

namespace A354396.P18035173409969528707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A346894 n - A000392 n).toNat - A000392 n

end

end A354396.P18035173409969528707

/-!
# A354397: Expansion of e.g.f. exp( -(exp(x) - 1)^4 / 24 ).

The programs for A354397, there is no canonical definition to state claims against.
-/

/-! ## A354397.P5239450214426408246

`A354393(n)-A185034(A185034(n))`
-/

namespace A354397.P5239450214426408246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354393 n - A185034 (A185034 n).toNat

end

end A354397.P5239450214426408246

/-! ## A354397.P2525751485120229963

`A354393(n)-A185234(A185234(n))`
-/

namespace A354397.P2525751485120229963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354393 n - A185234 (A185234 n).toNat

end

end A354397.P2525751485120229963

/-!
# A354399: List of k such that sign(A009273(k)) = sign(A009273(k+1)).

The programs for A354399, there is no canonical definition to state claims against.
-/

/-! ## A354399.P4029599071049316204

`A060143(comp[2*(n+1)]*A187829(n+1))`
-/

namespace A354399.P4029599071049316204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A187829 (n + 1)).toNat

end

end A354399.P4029599071049316204

/-! ## A354399.P7779410692069736446

`A060143(A004273(n)*A077168(n))`
-/

namespace A354399.P7779410692069736446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A004273 n * A077168 n).toNat

end

end A354399.P7779410692069736446

/-! ## A354399.P5590253639607437255

`A123578(A212097(n))`
-/

namespace A354399.P5590253639607437255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A212097 n).toNat

end

end A354399.P5590253639607437255

/-! ## A354399.P10064412188746821281

`A123578(A212098(n))`
-/

namespace A354399.P10064412188746821281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A212098 n).toNat

end

end A354399.P10064412188746821281

/-! ## A354399.P7771793654524173364

`A369464(A267874(n))`
-/

namespace A354399.P7771793654524173364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369464 (A267874 n).toNat

end

end A354399.P7771793654524173364

