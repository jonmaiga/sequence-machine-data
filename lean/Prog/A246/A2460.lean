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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A246000: Number of length 5+2 0..n arrays with no pair in any consecutive three terms totalling exactly n.

The programs for A246000, there is no canonical definition to state claims against.
-/

/-! ## A246000.P14047146706003855268

`A245995(A167499(n+3))`
-/

namespace A246000.P14047146706003855268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167499 (n + 3)).toNat

end

end A246000.P14047146706003855268

/-! ## A246000.P7704280073395427754

`A245995(A167614(n+3)+2)`
-/

namespace A246000.P7704280073395427754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167614 (n + 3) + 2).toNat

end

end A246000.P7704280073395427754

/-! ## A246000.P12329480226271702762

`A245995(A000217(n+4)+5)`
-/

namespace A246000.P12329480226271702762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A000217 (n + 4) + 5).toNat

end

end A246000.P12329480226271702762

/-! ## A246000.P2456335777845549572

`A245995(Δ[A008778(n+1)]+7)`
-/

namespace A246000.P2456335777845549572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (f1 (n + 1) - f1 n + 7).toNat

end

end A246000.P2456335777845549572

/-! ## A246000.P6237133905788795305

`A245995(Δ[A034857(n+1)+A004771(n)])`
-/

namespace A246000.P6237133905788795305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1) + A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (f1 (n + 1) - f1 n).toNat

end

end A246000.P6237133905788795305

/-! ## A246000.P1958294702679543638

`A245995(A155212(n+3)-A016789(n+1))`
-/

namespace A246000.P1958294702679543638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A155212 (n + 3) - A016789 (n + 1)).toNat

end

end A246000.P1958294702679543638

/-!
# A246001: Number of length 6+2 0..n arrays with no pair in any consecutive three terms totalling exactly n.

The programs for A246001, there is no canonical definition to state claims against.
-/

/-! ## A246001.P11027925420684272591

`A245995(A167499(n+4)+1)`
-/

namespace A246001.P11027925420684272591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167499 (n + 4) + 1).toNat

end

end A246001.P11027925420684272591

/-! ## A246001.P12782153262005440886

`A245995(A167614(n+4)+3)`
-/

namespace A246001.P12782153262005440886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167614 (n + 4) + 3).toNat

end

end A246001.P12782153262005440886

/-! ## A246001.P10909973634217599682

`A245995(A000217(n+5)+6)`
-/

namespace A246001.P10909973634217599682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A000217 (n + 5) + 6).toNat

end

end A246001.P10909973634217599682

/-! ## A246001.P6137770896064346806

`A245995(A027379(n+3)+9)`
-/

namespace A246001.P6137770896064346806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A027379 (n + 3) + 9).toNat

end

end A246001.P6137770896064346806

/-! ## A246001.P10541525038481717563

`A245995(A055998(n+3)+9)`
-/

namespace A246001.P10541525038481717563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A055998 (n + 3) + 9).toNat

end

end A246001.P10541525038481717563

/-!
# A246002: Number of length 7+2 0..n arrays with no pair in any consecutive three terms totalling exactly n.

The programs for A246002, there is no canonical definition to state claims against.
-/

/-! ## A246002.P17250307514512726873

`A245995(A167487(n+5))`
-/

namespace A246002.P17250307514512726873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167487 (n + 5)).toNat

end

end A246002.P17250307514512726873

/-! ## A246002.P17594774736379322658

`A245995(A167499(n+5)+2)`
-/

namespace A246002.P17594774736379322658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167499 (n + 5) + 2).toNat

end

end A246002.P17594774736379322658

/-! ## A246002.P6601103721515186119

`A245995(A167614(n+5)+4)`
-/

namespace A246002.P6601103721515186119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167614 (n + 5) + 4).toNat

end

end A246002.P6601103721515186119

/-! ## A246002.P4170981286701926494

`A245995(A000217(n+6)+7)`
-/

namespace A246002.P4170981286701926494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A000217 (n + 6) + 7).toNat

end

end A246002.P4170981286701926494

/-! ## A246002.P18306703361169056238

`A245995(A052905(n+6)-A008585(n+4))`
-/

namespace A246002.P18306703361169056238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A052905 (n + 6) - A008585 (n + 4)).toNat

end

end A246002.P18306703361169056238

/-!
# A246003: Floor(m^n/n) with n >= m >= 1.

The programs for A246003, there is no canonical definition to state claims against.
-/

/-! ## A246003.P17150477240380876280

`floor((1-C(∑[char[∑[n]]], 2)+n)^∑[char[∑[n]]]/∑[char[∑[n]]])`
-/

namespace A246003.P17150477240380876280
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f4 j) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f7 j : ℕ) : ℚ)⌋

end

end A246003.P17150477240380876280

/-! ## A246003.P10341845525789554495

`floor(A089072(n+1)/∑[char[∑[n]]])`
-/

namespace A246003.P10341845525789554495
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089072 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A246003.P10341845525789554495

/-! ## A246003.P12276466585891375014

`floor(A076014(A014132(n+1))/A002024(n+1))`
-/

namespace A246003.P12276466585891375014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076014 (A014132 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A246003.P12276466585891375014

/-! ## A246003.P3895669355540655414

`floor(A095887(A038722(n+1))/A002024(n+1))`
-/

namespace A246003.P3895669355540655414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095887 (A038722 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A246003.P3895669355540655414

/-! ## A246003.P11768162653364092714

`floor(A095887(A061579(n)+1)/A002024(n+1))`
-/

namespace A246003.P11768162653364092714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095887 (A061579 n + 1).toNat : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A246003.P11768162653364092714

/-!
# A246004: The duodecimal period of 1/n, or 0 if 1/n terminates.

The programs for A246004, there is no canonical definition to state claims against.
-/

/-! ## A246004.P18428125323286551676

`A054712(A065330(n+1))-A065333(n+1)`
-/

namespace A246004.P18428125323286551676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054712 (A065330 (n + 1)).toNat - A065333 (n + 1)

end

end A246004.P18428125323286551676

/-! ## A246004.P5644010933551963854

`C(A054712(A065330(2*(n+1))), A065333(n+1)+1)`
-/

namespace A246004.P5644010933551963854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054712 (A065330 (2 * (n + 1))).toNat).toNat (A065333 (n + 1) + 1).toNat

end

end A246004.P5644010933551963854

/-! ## A246004.P15244671962651671482

`A347440(A175289(n+1))`
-/

namespace A246004.P15244671962651671482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (A175289 (n + 1)).toNat

end

end A246004.P15244671962651671482

/-! ## A246004.P4797957427709588394

`A099313(A029635(A065330((n+1)²)))`
-/

namespace A246004.P4797957427709588394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099313 (A029635 (A065330 ((n + 1) ^ 2)).toNat).toNat

end

end A246004.P4797957427709588394

/-!
# A246005: Least k such that ((2n+1)^k-1)/(2*n) is prime, or 0 if no such k exists.

The programs for A246005, there is no canonical definition to state claims against.
-/

/-! ## A246005.P13985210713945003160

`A084740(2*(n+1)+1)`
-/

namespace A246005.P13985210713945003160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084740 (2 * (n + 1) + 1)

end

end A246005.P13985210713945003160

/-! ## A246005.P10261402234612387024

`A128164(2*n+3)`
-/

namespace A246005.P10261402234612387024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128164 (2 * n + 3)

end

end A246005.P10261402234612387024

/-! ## A246005.P2339034823790491114

`∑{p}[A128164(Δ[(n+1)²]), #]`
-/

namespace A246005.P2339034823790491114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128164 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A246005.P2339034823790491114

/-! ## A246005.P13716433516951370354

`A195159(A128164(Δ[(n+1)²]))`
-/

namespace A246005.P13716433516951370354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (A128164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A246005.P13716433516951370354

/-! ## A246005.P2021168747953552419

`lcm(A033999(n), A128164(Δ[(n+1)²]))`
-/

namespace A246005.P2021168747953552419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A128164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A246005.P2021168747953552419

/-! ## A246005.P16887991659246607715

`A128164(Δ[(n+1)²])/A097807(n)²`
-/

namespace A246005.P16887991659246607715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A097807 n ^ 2 : ℚ)

end

end A246005.P16887991659246607715

/-! ## A246005.P9804633237919316636

`A128164(Δ[(n+1)²])%A022547(n+1)`
-/

namespace A246005.P9804633237919316636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A022547 (n + 1))

end

end A246005.P9804633237919316636

/-! ## A246005.P17207138825094565289

`A128164(Δ[(n+1)²])/A007318(C(2, n))`
-/

namespace A246005.P17207138825094565289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A246005.P17207138825094565289

/-! ## A246005.P11975685796056415779

`A128164(Δ[(n+1)²])/A005117(gcd(n, n+1))`
-/

namespace A246005.P11975685796056415779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A005117 (Nat.gcd n (n + 1)) : ℚ)

end

end A246005.P11975685796056415779

/-! ## A246005.P7774052495554246716

`A128164(Δ[(n+1)²])/A000041(C(n, n+2))`
-/

namespace A246005.P7774052495554246716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A000041 (Nat.choose n (n + 2)) : ℚ)

end

end A246005.P7774052495554246716

/-!
# A246006: a(2n) = numerator of |Bernoulli(2n)|, a(2n+1) = Euler(2n).

The programs for A246006, there is no canonical definition to state claims against.
-/

/-! ## A246006.P5724626561308140032

`gcd(A027641(n), A104035(A161680(n)))`
-/

namespace A246006.P5724626561308140032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027641 n) (A104035 (A161680 n).toNat)

end

end A246006.P5724626561308140032

/-! ## A246006.P10311877963474247301

`A193472(n)/A336898(A093178(n))`
-/

namespace A246006.P10311877963474247301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193472 n : ℚ) / (A336898 (A093178 n).toNat : ℚ)

end

end A246006.P10311877963474247301

/-! ## A246006.P13450549237387993297

`A193472(n)/gcd(n, A193472(A029579(n)))`
-/

namespace A246006.P13450549237387993297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193472 n : ℚ) / (Int.gcd (n : ℤ) (A193472 (A029579 n).toNat) : ℚ)

end

end A246006.P13450549237387993297

/-! ## A246006.P11963798885639045599

`A193472(n)/gcd(A093178(n), A131135(n))`
-/

namespace A246006.P11963798885639045599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193472 n : ℚ) / (Int.gcd (A093178 n) (A131135 n) : ℚ)

end

end A246006.P11963798885639045599

/-! ## A246006.P3135112954110696354

`A193472(n)/gcd(A126869(n), A336898(n))`
-/

namespace A246006.P3135112954110696354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193472 n : ℚ) / (Int.gcd (A126869 n) (A336898 n) : ℚ)

end

end A246006.P3135112954110696354

/-!
# A246008: Let pal(k) denote the k-th palindrome, A002113(k), and let a(0)=0 and a(1)=1. For n >= 2, if a(n-1) = pal(k), then a(n) = pal(k+i), where i = a(n-1)-a(n-2).

The programs for A246008, there is no canonical definition to state claims against.
-/

/-! ## A246008.P9930265329695537855

`A002113(a(n-1)+2)` with `a(0)=0`
-/

namespace A246008.P9930265329695537855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002113 (a (n - 1) + 2).toNat

end

end A246008.P9930265329695537855

/-! ## A246008.P18273753746602121451

`A014187(a(n-1)+1)^(1/3)` with `a(0)=0`
-/

namespace A246008.P18273753746602121451
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (A014187 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A246008.P18273753746602121451

/-! ## A246008.P16129889584466972267

`lt[tan(n)+n, 9]`
-/

namespace A246008.P16129889584466972267
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ) + (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246008.P16129889584466972267

/-! ## A246008.P3582497982214422491

`lt[n, 9-tan(n)]`
-/

namespace A246008.P3582497982214422491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  9 - Real.tan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246008.P3582497982214422491

/-! ## A246008.P17561518144982167187

`record[gcd(floor(n/10)+2*comp[98-11*n]-n, 11*n)]`
-/

namespace A246008.P17561518144982167187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / 10⌋ + ((2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))) (11 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246008.P17561518144982167187

/-!
# A246009: Length of Collatz cycles '3*n + 1' of prime numbers.

The programs for A246009, there is no canonical definition to state claims against.
-/

/-! ## A246009.P12159440456972411045

`A070975(n+1)+1`
-/

namespace A246009.P12159440456972411045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070975 (n + 1) + 1

end

end A246009.P12159440456972411045

/-! ## A246009.P4417560389717554603

`A020725(A070975(n+1))`
-/

namespace A246009.P4417560389717554603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A070975 (n + 1)).toNat

end

end A246009.P4417560389717554603

/-! ## A246009.P458142122118372645

`A008908(A000040(n+1))`
-/

namespace A246009.P458142122118372645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A000040 (n + 1)).toNat

end

end A246009.P458142122118372645

/-! ## A246009.P6537436897304485506

`A008908(A008578(n+2))`
-/

namespace A246009.P6537436897304485506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A008578 (n + 2)).toNat

end

end A246009.P6537436897304485506

/-! ## A246009.P15776515064846469719

`A008908(A182986(n+2))`
-/

namespace A246009.P15776515064846469719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A182986 (n + 2)).toNat

end

end A246009.P15776515064846469719

/-! ## A246009.P18157617501485377312

`A006577(Δ[A007504(n)])+1`
-/

namespace A246009.P18157617501485377312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (n + 1) - f1 n).toNat + 1

end

end A246009.P18157617501485377312

/-! ## A246009.P13293787963675427678

`A008908(record[A006530(n+2)])`
-/

namespace A246009.P13293787963675427678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246009.P13293787963675427678

/-! ## A246009.P10897958471619485761

`A008908(record[A014963(n+2)])`
-/

namespace A246009.P10897958471619485761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246009.P10897958471619485761

/-! ## A246009.P3644468034783505450

`A008908(record[A020639(n+2)])`
-/

namespace A246009.P3644468034783505450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246009.P3644468034783505450

/-! ## A246009.P7021840110063447683

`A008908(p?[A323309(n+1)])`
-/

namespace A246009.P7021840110063447683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246009.P7021840110063447683

/-! ## A246009.P18222541202121700329

`A008908(p?[n*A032741(n)])`
-/

namespace A246009.P18222541202121700329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246009.P18222541202121700329

/-! ## A246009.P11670852754848166565

`A006577(eq[1, A003415(n)])+1`
-/

namespace A246009.P11670852754848166565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A246009.P11670852754848166565

/-! ## A246009.P2790921587378160439

`A006577(eq[1, A018783(n)])+1`
-/

namespace A246009.P2790921587378160439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A246009.P2790921587378160439

/-! ## A246009.P5328595536218123271

`A006577(record[A006530(n+2)])+1`
-/

namespace A246009.P5328595536218123271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A246009.P5328595536218123271

/-! ## A246009.P6377658257929714747

`A006577(record[A014963(n+2)])+1`
-/

namespace A246009.P6377658257929714747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A246009.P6377658257929714747

/-! ## A246009.P17001316349060347855

`A006577(record[A020639(n+2)])+1`
-/

namespace A246009.P17001316349060347855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A246009.P17001316349060347855

/-! ## A246009.P3112709474353259201

`A006577(p?[A206074(n+1)])+1`
-/

namespace A246009.P3112709474353259201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A246009.P3112709474353259201

/-! ## A246009.P2897321885829187670

`A006577(A082500(2*(n+1)))+1`
-/

namespace A246009.P2897321885829187670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A082500 (2 * (n + 1))).toNat + 1

end

end A246009.P2897321885829187670

/-! ## A246009.P6287963724697647254

`A006577(A100484(n+1)/2)+1`
-/

namespace A246009.P6287963724697647254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat + 1

end

end A246009.P6287963724697647254

/-! ## A246009.P10559915362606805276

`A008908(eq[1, A001222(n+1)]+1)`
-/

namespace A246009.P10559915362606805276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A246009.P10559915362606805276

/-!
# A246010: a(n) = floor(5*prime(n)^2 / 4).

The programs for A246010, the canonical program `A246010.P11055632082061828004` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246010 has offset 1).

The definition of A246010 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246010.P11055632082061828004

`A032527(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246010

/-- `A032527(A000040(n+1))` -/
def P11055632082061828004.Spec : Prop :=
  ∀ n, P11055632082061828004.a n = A246010 (n + 1)

theorem P11055632082061828004.correct : P11055632082061828004.Spec := by
  intro n
  simp only [A246010, Nat.add_sub_cancel]

end A246010

/-! ## A246010.P14939211606817079069

`floor(5*A001248(n+1)/4)`
-/

namespace A246010.P14939211606817079069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * A001248 (n + 1) : ℚ) / 4⌋

end

end A246010.P14939211606817079069

namespace A246010

/-- `floor(5*A001248(n+1)/4)` -/
def P14939211606817079069.Spec : Prop :=
  ∀ n, P14939211606817079069.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P14280683601304663830

`A001248(n+1)+floor((A000040(n+1)/2)²)`
-/

namespace A246010.P14280683601304663830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + ⌊((A000040 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A246010.P14280683601304663830

namespace A246010

/-- `A001248(n+1)+floor((A000040(n+1)/2)²)` -/
def P14280683601304663830.Spec : Prop :=
  ∀ n, P14280683601304663830.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P3756759741546040103

`round(10/8*record[A006530(n+2)²])`
-/

namespace A246010.P3756759741546040103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℚ) / 8 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))

end

end A246010.P3756759741546040103

namespace A246010

/-- `round(10/8*record[A006530(n+2)²])` -/
def P3756759741546040103.Spec : Prop :=
  ∀ n, P3756759741546040103.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P15881088014781498871

`A032527(A008578(n+2))`
-/

namespace A246010.P15881088014781498871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (A008578 (n + 2)).toNat

end

end A246010.P15881088014781498871

namespace A246010

/-- `A032527(A008578(n+2))` -/
def P15881088014781498871.Spec : Prop :=
  ∀ n, P15881088014781498871.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P3358258464658055272

`A032527(A182986(n+2))`
-/

namespace A246010.P3358258464658055272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (A182986 (n + 2)).toNat

end

end A246010.P3358258464658055272

namespace A246010

/-- `A032527(A182986(n+2))` -/
def P3358258464658055272.Spec : Prop :=
  ∀ n, P3358258464658055272.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P14931429096910455843

`A032527(record[A006530(n+2)])`
-/

namespace A246010.P14931429096910455843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246010.P14931429096910455843

namespace A246010

/-- `A032527(record[A006530(n+2)])` -/
def P14931429096910455843.Spec : Prop :=
  ∀ n, P14931429096910455843.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P12337169783628189158

`A032527(record[A014963(n+2)])`
-/

namespace A246010.P12337169783628189158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246010.P12337169783628189158

namespace A246010

/-- `A032527(record[A014963(n+2)])` -/
def P12337169783628189158.Spec : Prop :=
  ∀ n, P12337169783628189158.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P12075287185509627576

`A032527(record[A020639(n+2)])`
-/

namespace A246010.P12075287185509627576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246010.P12075287185509627576

namespace A246010

/-- `A032527(record[A020639(n+2)])` -/
def P12075287185509627576.Spec : Prop :=
  ∀ n, P12075287185509627576.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P4064849987062728967

`A032527(A067747(2*n+1))`
-/

namespace A246010.P4064849987062728967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (A067747 (2 * n + 1)).toNat

end

end A246010.P4064849987062728967

namespace A246010

/-- `A032527(A067747(2*n+1))` -/
def P4064849987062728967.Spec : Prop :=
  ∀ n, P4064849987062728967.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P2094156411015313280

`A032526(record[A006530(n+2)])/2`
-/

namespace A246010.P2094156411015313280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A246010.P2094156411015313280

namespace A246010

/-- `A032526(record[A006530(n+2)])/2` -/
def P2094156411015313280.Spec : Prop :=
  ∀ n, P2094156411015313280.a n = (A246010 (n + 1) : ℚ)

end A246010

/-! ## A246010.P16570651887819202937

`A002620(A000040(n+1))+A001248(n+1)`
-/

namespace A246010.P16570651887819202937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A000040 (n + 1)).toNat + A001248 (n + 1)

end

end A246010.P16570651887819202937

namespace A246010

/-- `A002620(A000040(n+1))+A001248(n+1)` -/
def P16570651887819202937.Spec : Prop :=
  ∀ n, P16570651887819202937.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P11433770497565843697

`A115006(A000040(n+1)-1)+A000040(n+1)`
-/

namespace A246010.P11433770497565843697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115006 (A000040 (n + 1) - 1).toNat + A000040 (n + 1)

end

end A246010.P11433770497565843697

namespace A246010

/-- `A115006(A000040(n+1)-1)+A000040(n+1)` -/
def P11433770497565843697.Spec : Prop :=
  ∀ n, P11433770497565843697.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P12216433599467935157

`A249547(A000040(n+1))-(A006093(n+1)+1)`
-/

namespace A246010.P12216433599467935157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 (A000040 (n + 1)).toNat - (A006093 (n + 1) + 1)

end

end A246010.P12216433599467935157

namespace A246010

/-- `A249547(A000040(n+1))-(A006093(n+1)+1)` -/
def P12216433599467935157.Spec : Prop :=
  ∀ n, P12216433599467935157.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P7059461873826615835

`A032527(record[p?[A052938(n)-1]])`
-/

namespace A246010.P7059461873826615835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246010.P7059461873826615835

namespace A246010

/-- `A032527(record[p?[A052938(n)-1]])` -/
def P7059461873826615835.Spec : Prop :=
  ∀ n, P7059461873826615835.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P8154436382724214687

`record[A173151(2*n+1)+A006530(n+2)²]`
-/

namespace A246010.P8154436382724214687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 (2 * n + 1) + A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246010.P8154436382724214687

namespace A246010

/-- `record[A173151(2*n+1)+A006530(n+2)²]` -/
def P8154436382724214687.Spec : Prop :=
  ∀ n, P8154436382724214687.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P4692830389203337961

`record[A173151(2*n+1)+A014963(n+2)²]`
-/

namespace A246010.P4692830389203337961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 (2 * n + 1) + A014963 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246010.P4692830389203337961

namespace A246010

/-- `record[A173151(2*n+1)+A014963(n+2)²]` -/
def P4692830389203337961.Spec : Prop :=
  ∀ n, P4692830389203337961.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P3124811186057592994

`A213032(A001748(n+1))`
-/

namespace A246010.P3124811186057592994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213032 (A001748 (n + 1)).toNat

end

end A246010.P3124811186057592994

namespace A246010

/-- `A213032(A001748(n+1))` -/
def P3124811186057592994.Spec : Prop :=
  ∀ n, P3124811186057592994.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P1328538761688180952

`A213032(A112773(n+2))`
-/

namespace A246010.P1328538761688180952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213032 (A112773 (n + 2)).toNat

end

end A246010.P1328538761688180952

namespace A246010

/-- `A213032(A112773(n+2))` -/
def P1328538761688180952.Spec : Prop :=
  ∀ n, P1328538761688180952.a n = A246010 (n + 1)

end A246010

/-! ## A246010.P8906237962213212072

`A213032(3*A000040(n+1))`
-/

namespace A246010.P8906237962213212072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213032 (3 * A000040 (n + 1)).toNat

end

end A246010.P8906237962213212072

namespace A246010

/-- `A213032(3*A000040(n+1))` -/
def P8906237962213212072.Spec : Prop :=
  ∀ n, P8906237962213212072.a n = A246010 (n + 1)

end A246010

/-!
# A246011: a(n) = Product_{i in row n of A245562} Lucas(i+1), where Lucas = A000204.

The programs for A246011, there is no canonical definition to state claims against.
-/

/-! ## A246011.P6211622197986689591

`∏{e}[A286601(A193231(n)), A000032(#+1)]`
-/

namespace A246011.P6211622197986689591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286601 (A193231 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000032 (Nat.factorization (f1 n).natAbs p + 1)

end

end A246011.P6211622197986689591

/-! ## A246011.P1222004348800890188

`A351348(A278222(n))`
-/

namespace A246011.P1222004348800890188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351348 (A278222 n).toNat

end

end A246011.P1222004348800890188

/-! ## A246011.P2641746642486835011

`∏{e}[A005940(n+1), A000032(#+1)]`
-/

namespace A246011.P2641746642486835011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000032 (Nat.factorization (f1 n).natAbs p + 1)

end

end A246011.P2641746642486835011

/-! ## A246011.P16649691153944573104

`∏{e}[A250246(A252753(n)), A000032(#+1)]`
-/

namespace A246011.P16649691153944573104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A252753 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000032 (Nat.factorization (f1 n).natAbs p + 1)

end

end A246011.P16649691153944573104

/-! ## A246011.P7338183851236406372

`∏{e}[A332815(n), A000032(#+1)]`
-/

namespace A246011.P7338183851236406372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000032 (Nat.factorization (f1 n).natAbs p + 1)

end

end A246011.P7338183851236406372

/-! ## A246011.P9645650788461983047

`A351348(A005940(n+1))`
-/

namespace A246011.P9645650788461983047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351348 (A005940 (n + 1)).toNat

end

end A246011.P9645650788461983047

/-! ## A246011.P7911482533685261479

`A351348(A332815(n))`
-/

namespace A246011.P7911482533685261479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351348 (A332815 n).toNat

end

end A246011.P7911482533685261479

/-! ## A246011.P9692434703592055354

`A245564(A088698(n))/A245564(A048728(n))`
-/

namespace A246011.P9692434703592055354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245564 (A088698 n).toNat : ℚ) / (A245564 (A048728 n).toNat : ℚ)

end

end A246011.P9692434703592055354

/-! ## A246011.P14917540504432808156

`A351348(A374717(n+1))`
-/

namespace A246011.P14917540504432808156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351348 (A374717 (n + 1)).toNat

end

end A246011.P14917540504432808156

/-!
# A246012: Number of permutations of n letters that have all valleys even and all peaks odd.

The programs for A246012, there is no canonical definition to state claims against.
-/

/-! ## A246012.P7057934567508938237

`A246014(n)+A246013(round(acot(n)+n))`
-/

namespace A246012.P7057934567508938237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246014 n + A246013 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A246012.P7057934567508938237

/-! ## A246012.P1139679109906497076

`A246014(n)+A246013(A028310(n))`
-/

namespace A246012.P1139679109906497076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246014 n + A246013 (A028310 n).toNat

end

end A246012.P1139679109906497076

/-! ## A246012.P8960546374306830257

`A246014(n)+A246013(A137735(n²))`
-/

namespace A246012.P8960546374306830257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246014 n + A246013 (A137735 (n ^ 2)).toNat

end

end A246012.P8960546374306830257

/-! ## A246012.P15380729509753544543

`A246014(n)+A246013(A233583(n+1))`
-/

namespace A246012.P15380729509753544543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246014 n + A246013 (A233583 (n + 1)).toNat

end

end A246012.P15380729509753544543

/-! ## A246012.P2485387335405906611

`A151933(n)+A246014(n)+A246013(n)`
-/

namespace A246012.P2485387335405906611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + (A246014 n + A246013 n)

end

end A246012.P2485387335405906611

/-!
# A246013: Number of permutations of [n] with every alternating run of length less than 3 in which the last alternating run has length 1.

The programs for A246013, there is no canonical definition to state claims against.
-/

/-! ## A246013.P11863539808318545855

`A340764(A006384(n))`
-/

namespace A246013.P11863539808318545855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A006384 n).toNat

end

end A246013.P11863539808318545855

/-! ## A246013.P13437228961663916514

`A066339(A173324(n)+n)`
-/

namespace A246013.P13437228961663916514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A173324 n + (n : ℤ)).toNat

end

end A246013.P13437228961663916514

/-! ## A246013.P9049244363387101985

`A066490(A000112(n+1)+1)`
-/

namespace A246013.P9049244363387101985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A000112 (n + 1) + 1).toNat

end

end A246013.P9049244363387101985

/-!
# A246014: Number of permutations of [n] with every alternating run of length less than 3 in which the last alternating run has length 2.

The programs for A246014, there is no canonical definition to state claims against.
-/

/-! ## A246014.P6031938679837365191

`A246012(n)-A246013(A028310(n))`
-/

namespace A246014.P6031938679837365191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246012 n - A246013 (A028310 n).toNat

end

end A246014.P6031938679837365191

/-! ## A246014.P7629734026412961332

`A246012(n)-A246013(A137735(n²))`
-/

namespace A246014.P7629734026412961332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246012 n - A246013 (A137735 (n ^ 2)).toNat

end

end A246014.P7629734026412961332

/-! ## A246014.P17702637094845813691

`A246012(n)-A246013(A233583(n+1))`
-/

namespace A246014.P17702637094845813691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246012 n - A246013 (A233583 (n + 1)).toNat

end

end A246014.P17702637094845813691

/-! ## A246014.P13337217131729444165

`A246012(n)-A246013(A000038(n)+n)`
-/

namespace A246014.P13337217131729444165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246012 n - A246013 (A000038 n + (n : ℤ)).toNat

end

end A246014.P13337217131729444165

/-! ## A246014.P6996581802537846582

`A246012(n)-A246013(A151933(n)+n)`
-/

namespace A246014.P6996581802537846582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246012 n - A246013 (A151933 n + (n : ℤ)).toNat

end

end A246014.P6996581802537846582

/-! ## A246014.P4584195739913594078

`(A246012(n)-A246013(n))%A246012(n)`
-/

namespace A246014.P4584195739913594078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246012 n - A246013 n) (A246012 n)

end

end A246014.P4584195739913594078

/-!
# A246016: a(n) = (-1)^A055941(n).

The programs for A246016, the canonical program `A246016.P18249855041277099865` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246016 has offset 0).

The definition of A246016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246016.P18249855041277099865

`(-1)^A055941(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A246016

/-- `(-1)^A055941(n)` -/
def P18249855041277099865.Spec : Prop :=
  ∀ n, P18249855041277099865.a n = (A246016 n : ℚ)

end A246016

/-! ## A246016.P6677889162411466068

`1-and(2, ∑[and(n, -n)%3])`
-/

namespace A246016.P6677889162411466068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246016.P6677889162411466068

namespace A246016

/-- `1-and(2, ∑[and(n, -n)%3])` -/
def P6677889162411466068.Spec : Prop :=
  ∀ n, P6677889162411466068.a n = A246016 n

end A246016

/-! ## A246016.P791237107967866664

`-∏[-(-1)^val(comp[xor(n, 2*n)], 2)]`
-/

namespace A246016.P791237107967866664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A246016.P791237107967866664

namespace A246016

/-- `-∏[-(-1)^val(comp[xor(n, 2*n)], 2)]` -/
def P791237107967866664.Spec : Prop :=
  ∀ n, P791237107967866664.a n = A246016 n

end A246016

/-! ## A246016.P4779043336711248670

`-a(comp[xor(n, 2*n)]%(n+2))` with `a(0)=1, a(1)=1`
-/

namespace A246016.P4779043336711248670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -a (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2))

end

end A246016.P4779043336711248670

namespace A246016

/-- `-a(comp[xor(n, 2*n)]%(n+2))` -/
def P4779043336711248670.Spec : Prop :=
  ∀ n, P4779043336711248670.a n = A246016 n

end A246016

/-! ## A246016.P1125775490092057986

`-a(n-1-char[xor(n, Δ[n²])])` with `a(0)=1, a(1)=1`
-/

namespace A246016.P1125775490092057986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -a ((n : ℤ) - 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A246016.P1125775490092057986

namespace A246016

/-- `-a(n-1-char[xor(n, Δ[n²])])` -/
def P1125775490092057986.Spec : Prop :=
  ∀ n, P1125775490092057986.a n = A246016 n

end A246016

/-! ## A246016.P3243824478088014522

`-∏[-cos(π*val(comp[xor(n, 2*n)], 2))]`
-/

namespace A246016.P3243824478088014522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.cos (Real.pi * (SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) 2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A246016.P3243824478088014522

namespace A246016

/-- `-∏[-cos(π*val(comp[xor(n, 2*n)], 2))]` -/
def P3243824478088014522.Spec : Prop :=
  ∀ n, P3243824478088014522.a n = (A246016 n : ℝ)

end A246016

/-! ## A246016.P3756610802938611139

`1-and(2, (∑[and(n, -n)^log2(3)]+n)/2)`
-/

namespace A246016.P3756610802938611139
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2))

end

end A246016.P3756610802938611139

namespace A246016

/-- `1-and(2, (∑[and(n, -n)^log2(3)]+n)/2)` -/
def P3756610802938611139.Spec : Prop :=
  ∀ n, P3756610802938611139.a n = A246016 n

end A246016

/-! ## A246016.P8112316444656078373

`(-1)^floor(3*(∑[and(n, -n)^log2(3)]+1+n)/4)`
-/

namespace A246016.P8112316444656078373
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊3 * ((∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℝ)) / 4)⌋ : ℤ)

end

end A246016.P8112316444656078373

namespace A246016

/-- `(-1)^floor(3*(∑[and(n, -n)^log2(3)]+1+n)/4)` -/
def P8112316444656078373.Spec : Prop :=
  ∀ n, P8112316444656078373.a n = (A246016 n : ℚ)

end A246016

/-! ## A246016.P2110120104279678562

`(-1)^A343030(n)`
-/

namespace A246016.P2110120104279678562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A343030 n : ℤ)

end

end A246016.P2110120104279678562

namespace A246016

/-- `(-1)^A343030(n)` -/
def P2110120104279678562.Spec : Prop :=
  ∀ n, P2110120104279678562.a n = (A246016 n : ℚ)

end A246016

/-! ## A246016.P13851470285941573649

`1-and(2, A033051(n))`
-/

namespace A246016.P13851470285941573649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A033051 n)

end

end A246016.P13851470285941573649

namespace A246016

/-- `1-and(2, A033051(n))` -/
def P13851470285941573649.Spec : Prop :=
  ∀ n, P13851470285941573649.a n = A246016 n

end A246016

/-! ## A246016.P1489959017018808961

`1-and(2, A065359(n))`
-/

namespace A246016.P1489959017018808961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A065359 n)

end

end A246016.P1489959017018808961

namespace A246016

/-- `1-and(2, A065359(n))` -/
def P1489959017018808961.Spec : Prop :=
  ∀ n, P1489959017018808961.a n = A246016 n

end A246016

/-! ## A246016.P15268111060543053204

`1-and(2, A283985(n))`
-/

namespace A246016.P15268111060543053204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A283985 n)

end

end A246016.P15268111060543053204

namespace A246016

/-- `1-and(2, A283985(n))` -/
def P15268111060543053204.Spec : Prop :=
  ∀ n, P15268111060543053204.a n = A246016 n

end A246016

/-! ## A246016.P7560222901491454643

`1-and(2, A005836(n+1))`
-/

namespace A246016.P7560222901491454643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A005836 (n + 1))

end

end A246016.P7560222901491454643

namespace A246016

/-- `1-and(2, A005836(n+1))` -/
def P7560222901491454643.Spec : Prop :=
  ∀ n, P7560222901491454643.a n = A246016 n

end A246016

/-! ## A246016.P6330990304905062997

`1-and(2, A191107(n+1))`
-/

namespace A246016.P6330990304905062997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A191107 (n + 1))

end

end A246016.P6330990304905062997

namespace A246016

/-- `1-and(2, A191107(n+1))` -/
def P6330990304905062997.Spec : Prop :=
  ∀ n, P6330990304905062997.a n = A246016 n

end A246016

/-! ## A246016.P4655748546765439879

`A033999(∑[A268726(n)]-n)`
-/

namespace A246016.P4655748546765439879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A246016.P4655748546765439879

namespace A246016

/-- `A033999(∑[A268726(n)]-n)` -/
def P4655748546765439879.Spec : Prop :=
  ∀ n, P4655748546765439879.a n = A246016 n

end A246016

/-! ## A246016.P10430255666953134682

`A106400(A000225(A343030(n)))`
-/

namespace A246016.P10430255666953134682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A000225 (A343030 n).toNat).toNat

end

end A246016.P10430255666953134682

namespace A246016

/-- `A106400(A000225(A343030(n)))` -/
def P10430255666953134682.Spec : Prop :=
  ∀ n, P10430255666953134682.a n = A246016 n

end A246016

/-! ## A246016.P8912118851795426472

`A033999(n)*A033999(∑[A268726(n)])`
-/

namespace A246016.P8912118851795426472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A033999 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246016.P8912118851795426472

namespace A246016

/-- `A033999(n)*A033999(∑[A268726(n)])` -/
def P8912118851795426472.Spec : Prop :=
  ∀ n, P8912118851795426472.a n = A246016 n

end A246016

/-! ## A246016.P1024243552668213100

`A057077(A197354(n))`
-/

namespace A246016.P1024243552668213100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A197354 n).toNat

end

end A246016.P1024243552668213100

namespace A246016

/-- `A057077(A197354(n))` -/
def P1024243552668213100.Spec : Prop :=
  ∀ n, P1024243552668213100.a n = A246016 n

end A246016

/-! ## A246016.P14602502209860236360

`A020985(A006068(n))`
-/

namespace A246016.P14602502209860236360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A006068 n).toNat

end

end A246016.P14602502209860236360

namespace A246016

/-- `A020985(A006068(n))` -/
def P14602502209860236360.Spec : Prop :=
  ∀ n, P14602502209860236360.a n = A246016 n

end A246016

/-! ## A246016.P14700280733138473857

`A020985(A154437(n))`
-/

namespace A246016.P14700280733138473857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A154437 n).toNat

end

end A246016.P14700280733138473857

namespace A246016

/-- `A020985(A154437(n))` -/
def P14700280733138473857.Spec : Prop :=
  ∀ n, P14700280733138473857.a n = A246016 n

end A246016

/-!
# A246017: Partial sums of A246016.

The programs for A246017, the canonical program `A246017.P17242805474643553685` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246017 has offset 0).

The definition of A246017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246017.P17242805474643553685

`∑[A246016(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A246017

/-- `∑[A246016(n)]` -/
def P17242805474643553685.Spec : Prop :=
  ∀ n, P17242805474643553685.a n = A246017 n

theorem P17242805474643553685.correct : P17242805474643553685.Spec := by
  intro n
  simp only [A246017]

end A246017

/-! ## A246017.P5031146431375010831

`∑[(-1)^A055941(n)]`
-/

namespace A246017.P5031146431375010831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A055941 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P5031146431375010831

namespace A246017

/-- `∑[(-1)^A055941(n)]` -/
def P5031146431375010831.Spec : Prop :=
  ∀ n, P5031146431375010831.a n = (A246017 n : ℚ)

end A246017

/-! ## A246017.P9339544326807417040

`∑[(-1)^A343030(n)]`
-/

namespace A246017.P9339544326807417040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A343030 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P9339544326807417040

namespace A246017

/-- `∑[(-1)^A343030(n)]` -/
def P9339544326807417040.Spec : Prop :=
  ∀ n, P9339544326807417040.a n = (A246017 n : ℚ)

end A246017

/-! ## A246017.P17239905437508462019

`∑[1-and(2, A065359(n))]`
-/

namespace A246017.P17239905437508462019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A065359 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P17239905437508462019

namespace A246017

/-- `∑[1-and(2, A065359(n))]` -/
def P17239905437508462019.Spec : Prop :=
  ∀ n, P17239905437508462019.a n = A246017 n

end A246017

/-! ## A246017.P17068171659718330836

`∑[1-and(2, A005836(n+1))]`
-/

namespace A246017.P17068171659718330836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A005836 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P17068171659718330836

namespace A246017

/-- `∑[1-and(2, A005836(n+1))]` -/
def P17068171659718330836.Spec : Prop :=
  ∀ n, P17068171659718330836.a n = A246017 n

end A246017

/-! ## A246017.P12919549898556016378

`∑[A033999(∑[A268726(n)]-n)]`
-/

namespace A246017.P12919549898556016378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P12919549898556016378

namespace A246017

/-- `∑[A033999(∑[A268726(n)]-n)]` -/
def P12919549898556016378.Spec : Prop :=
  ∀ n, P12919549898556016378.a n = A246017 n

end A246017

/-! ## A246017.P7213614910294927180

`∑[A020985(A006068(n))]`
-/

namespace A246017.P7213614910294927180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P7213614910294927180

namespace A246017

/-- `∑[A020985(A006068(n))]` -/
def P7213614910294927180.Spec : Prop :=
  ∀ n, P7213614910294927180.a n = A246017 n

end A246017

/-! ## A246017.P6298691348504457180

`∑[A020985(A154437(n))]`
-/

namespace A246017.P6298691348504457180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A154437 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P6298691348504457180

namespace A246017

/-- `∑[A020985(A154437(n))]` -/
def P6298691348504457180.Spec : Prop :=
  ∀ n, P6298691348504457180.a n = A246017 n

end A246017

/-! ## A246017.P6217026762366292063

`∑[A106400(A000225(A343029(2*n)))]`
-/

namespace A246017.P6217026762366292063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A000225 (A343029 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P6217026762366292063

namespace A246017

/-- `∑[A106400(A000225(A343029(2*n)))]` -/
def P6217026762366292063.Spec : Prop :=
  ∀ n, P6217026762366292063.a n = A246017 n

end A246017

/-! ## A246017.P15253717391911513452

`ceil(A334236(2*n+1)/2)`
-/

namespace A246017.P15253717391911513452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334236 (2 * n + 1) : ℚ) / 2⌉

end

end A246017.P15253717391911513452

namespace A246017

/-- `ceil(A334236(2*n+1)/2)` -/
def P15253717391911513452.Spec : Prop :=
  ∀ n, P15253717391911513452.a n = A246017 n

end A246017

/-! ## A246017.P1914921173526602889

`∑[A020985(A268716(n))]`
-/

namespace A246017.P1914921173526602889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A268716 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P1914921173526602889

namespace A246017

/-- `∑[A020985(A268716(n))]` -/
def P1914921173526602889.Spec : Prop :=
  ∀ n, P1914921173526602889.a n = A246017 n

end A246017

/-! ## A246017.P137121391454652753

`∑[A334236(2*n+1)-A334236(2*n)]`
-/

namespace A246017.P137121391454652753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334236 (2 * n + 1) - A334236 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P137121391454652753

namespace A246017

/-- `∑[A334236(2*n+1)-A334236(2*n)]` -/
def P137121391454652753.Spec : Prop :=
  ∀ n, P137121391454652753.a n = A246017 n

end A246017

/-! ## A246017.P13281453387406554624

`∑[A011601(A005940(n+1))]`
-/

namespace A246017.P13281453387406554624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P13281453387406554624

namespace A246017

/-- `∑[A011601(A005940(n+1))]` -/
def P13281453387406554624.Spec : Prop :=
  ∀ n, P13281453387406554624.a n = A246017 n

end A246017

/-! ## A246017.P16912076032520731657

`∑[A034947(A332815(n))]`
-/

namespace A246017.P16912076032520731657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A332815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P16912076032520731657

namespace A246017

/-- `∑[A034947(A332815(n))]` -/
def P16912076032520731657.Spec : Prop :=
  ∀ n, P16912076032520731657.a n = A246017 n

end A246017

/-! ## A246017.P13280302138726282981

`∑[A112865(A124108(n))]`
-/

namespace A246017.P13280302138726282981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112865 (A124108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P13280302138726282981

namespace A246017

/-- `∑[A112865(A124108(n))]` -/
def P13280302138726282981.Spec : Prop :=
  ∀ n, P13280302138726282981.a n = A246017 n

end A246017

/-!
# A246018: Colored Sierksma configurations.

The programs for A246018, there is no canonical definition to state claims against.
-/

/-! ## A246018.P6712298155013806202

`A060656(n)*A318248(n)`
-/

namespace A246018.P6712298155013806202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060656 n * A318248 n

end

end A246018.P6712298155013806202

/-! ## A246018.P10726406290422513072

`A060968(A056986(n+1)+1)`
-/

namespace A246018.P10726406290422513072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (A056986 (n + 1) + 1).toNat

end

end A246018.P10726406290422513072

/-! ## A246018.P8344365357787303933

`A000010(a(n-1)*A243655(n))` with `a(0)=1`
-/

namespace A246018.P8344365357787303933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (a (n - 1) * A243655 n).toNat

end

end A246018.P8344365357787303933

/-!
# A246019: Number of palstars of length 2n over an alphabet of size 2.

The programs for A246019, there is no canonical definition to state claims against.
-/

/-! ## A246019.P5838612243206153711

`A330884(2*n+1)/2-A330884(2*n)`
-/

namespace A246019.P5838612243206153711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330884 (2 * n + 1) : ℚ) / 2 - (A330884 (2 * n) : ℚ)

end

end A246019.P5838612243206153711

/-! ## A246019.P15845950828600553408

`A330886(2*n+1)/2-A330886(2*n)`
-/

namespace A246019.P15845950828600553408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330886 (2 * n + 1) : ℚ) / 2 - (A330886 (2 * n) : ℚ)

end

end A246019.P15845950828600553408

/-! ## A246019.P1665502925056814023

`2*A002264(5*a(n-1))` with `a(0)=1`
-/

namespace A246019.P1665502925056814023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A002264 (5 * a (n - 1)).toNat

end

end A246019.P1665502925056814023

/-! ## A246019.P12501274605694689740

`A008611(10*a(n-1))-1` with `a(0)=1`
-/

namespace A246019.P12501274605694689740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008611 (10 * a (n - 1)).toNat - 1

end

end A246019.P12501274605694689740

/-!
# A246020: Number of palstars of length 2n over an alphabet of size 3.

The programs for A246020, there is no canonical definition to state claims against.
-/

/-! ## A246020.P10422808173889726560

`A161392(n+1)+∑[A237664(n)]`
-/

namespace A246020.P10422808173889726560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161392 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246020.P10422808173889726560

/-! ## A246020.P4070378943873285056

`A098180(A265227(3*a(n-1)))` with `a(0)=1`
-/

namespace A246020.P4070378943873285056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098180 (A265227 (3 * a (n - 1)).toNat).toNat

end

end A246020.P4070378943873285056

/-!
# A246021: Number of palstars of length 2n over an alphabet of size 4.

The programs for A246021, there is no canonical definition to state claims against.
-/

/-! ## A246021.P17380924809476820048

`A004526(2*(3^n+5^n+7^n-(2^n+4^n+6^n-1)))`
-/

namespace A246021.P17380924809476820048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * ((3 ^ n + (5 ^ n + 7 ^ n) : ℤ) - ((2 ^ n : ℤ) + ((4 ^ n : ℤ) + ((6 ^ n : ℤ) - 1))))).toNat

end

end A246021.P17380924809476820048

/-!
# A246023: a(n) = A070952(2^n).

The programs for A246023, there is no canonical definition to state claims against.
-/

/-! ## A246023.P3023491796952131351

`A070952(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246023.P3023491796952131351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 (2 ^ n)

end

end A246023.P3023491796952131351

/-! ## A246023.P8752786338263349981

`A265703(2^n+1)`
-/

namespace A246023.P8752786338263349981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 (2 ^ n + 1)

end

end A246023.P8752786338263349981

/-! ## A246023.P13659930536185068366

`A246024(2^n)+2^n`
-/

namespace A246023.P13659930536185068366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246024 (2 ^ n) + (2 ^ n : ℤ)

end

end A246023.P13659930536185068366

/-! ## A246023.P16832851296868984240

`and(-1, A070952(A000079(n)))`
-/

namespace A246023.P16832851296868984240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A070952 (A000079 n).toNat)

end

end A246023.P16832851296868984240

/-! ## A246023.P10858800195876207984

`A070952(A000079(n))+A011738(n)`
-/

namespace A246023.P10858800195876207984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 (A000079 n).toNat + A011738 n

end

end A246023.P10858800195876207984

/-!
# A246024: A070952(n)-n.

The programs for A246024, there is no canonical definition to state claims against.
-/

/-! ## A246024.P11792031318897660029

`A070952(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246024.P11792031318897660029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 n - (n : ℤ)

end

end A246024.P11792031318897660029

/-! ## A246024.P5570188864189894728

`∑[A151929(n)]-n`
-/

namespace A246024.P5570188864189894728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A246024.P5570188864189894728

/-! ## A246024.P2534330816071187978

`1-A070951(n)+n`
-/

namespace A246024.P2534330816071187978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070951 n + (n : ℤ)

end

end A246024.P2534330816071187978

/-! ## A246024.P5479646035808037877

`A110267(n)-(A265704(n)+n)`
-/

namespace A246024.P5479646035808037877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110267 n - (A265704 n + (n : ℤ))

end

end A246024.P5479646035808037877

/-! ## A246024.P16890618495679599660

`A151929(n)+A265703(n)-n`
-/

namespace A246024.P16890618495679599660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151929 n + (A265703 n - (n : ℤ))

end

end A246024.P16890618495679599660

/-! ## A246024.P13680148899597910722

`A265702(n)-(A265224(n)+n)`
-/

namespace A246024.P13680148899597910722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265702 n - (A265224 n + (n : ℤ))

end

end A246024.P13680148899597910722

/-! ## A246024.P10047580922064837800

`Δ[A265704(n)]-n`
-/

namespace A246024.P10047580922064837800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A246024.P10047580922064837800

/-! ## A246024.P16521860803334215537

`A265703(n+1)-n`
-/

namespace A246024.P16521860803334215537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 (n + 1) - (n : ℤ)

end

end A246024.P16521860803334215537

/-! ## A246024.P964684676754354243

`3-A265701(n+1)+n`
-/

namespace A246024.P964684676754354243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A265701 (n + 1) + (n : ℤ)

end

end A246024.P964684676754354243

/-! ## A246024.P11163248248634322143

`A328105(n)-(A110266(n+1)+n)`
-/

namespace A246024.P11163248248634322143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328105 n - (A110266 (n + 1) + (n : ℤ))

end

end A246024.P11163248248634322143

/-!
# A246025: Record high water marks in A246024.

The programs for A246025, there is no canonical definition to state claims against.
-/

/-! ## A246025.P10167688028410422346

`record[A246024(n)]`
-/

namespace A246025.P10167688028410422346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246025.P10167688028410422346

/-! ## A246025.P9740782507513125569

`record[A070952(n)-n]`
-/

namespace A246025.P9740782507513125569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246025.P9740782507513125569

/-! ## A246025.P16057413462642011618

`record[1-A070951(n)+n]`
-/

namespace A246025.P16057413462642011618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070951 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246025.P16057413462642011618

/-! ## A246025.P2564977253515296789

`record[A265703(n+1)-n]`
-/

namespace A246025.P2564977253515296789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246025.P2564977253515296789

/-! ## A246025.P2390055912059969734

`record[2-A265701(n)+n]`
-/

namespace A246025.P2390055912059969734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A265701 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246025.P2390055912059969734

/-!
# A246026: Positions of record high water marks in A246024.

The programs for A246026, there is no canonical definition to state claims against.
-/

/-! ## A246026.P8262369717684201522

`lt[A335040(n+1), A246024(n)²]`
-/

namespace A246026.P8262369717684201522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246024 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246026.P8262369717684201522

/-! ## A246026.P6926758997291764715

`lt[A051349(n), A000982(A070952(n))]`
-/

namespace A246026.P6926758997291764715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A070952 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246026.P6926758997291764715

/-! ## A246026.P5726303197582980681

`eq[A164089(n+1), A375493(n+1)]`
-/

namespace A246026.P5726303197582980681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375493 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246026.P5726303197582980681

/-! ## A246026.P6982048129751420614

`eq[A164799(n+1), A375082(n+1)]`
-/

namespace A246026.P6982048129751420614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246026.P6982048129751420614

/-! ## A246026.P2336536507720421862

`eq[A281945(n+1), A367580(n+1)]`
-/

namespace A246026.P2336536507720421862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246026.P2336536507720421862

/-!
# A246027: a(n) = n - A071049(n).

The programs for A246027, there is no canonical definition to state claims against.
-/

/-! ## A246027.P17761258489694693533

`n-A071049(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246027.P17761258489694693533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071049 n

end

end A246027.P17761258489694693533

/-! ## A246027.P1117471425486883517

`A071048(n)-1`
-/

namespace A246027.P1117471425486883517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071048 n - 1

end

end A246027.P1117471425486883517

/-! ## A246027.P3254035733456319408

`n-∑[A151931(n)]`
-/

namespace A246027.P3254035733456319408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246027.P3254035733456319408

/-! ## A246027.P12952031884004549330

`A265322(n)-(n+1)`
-/

namespace A246027.P12952031884004549330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265322 n - (n + 1 : ℤ)

end

end A246027.P12952031884004549330

/-! ## A246027.P4627261002225713404

`A023443(A071048(n))`
-/

namespace A246027.P4627261002225713404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A071048 n).toNat

end

end A246027.P4627261002225713404

/-! ## A246027.P16852734659278985964

`A023443(A265322(n)-n)`
-/

namespace A246027.P16852734659278985964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A265322 n - (n : ℤ)).toNat

end

end A246027.P16852734659278985964

/-! ## A246027.P2903669272646874300

`-(A071049(n)+A001489(n))`
-/

namespace A246027.P2903669272646874300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A071049 n + A001489 n)

end

end A246027.P2903669272646874300

/-! ## A246027.P6201526812403878972

`-A071049(n)%A111168(n+1)+n`
-/

namespace A246027.P6201526812403878972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A071049 n) (A111168 (n + 1)) + (n : ℤ)

end

end A246027.P6201526812403878972

/-! ## A246027.P9829822101143253430

`∑[A151931(n)]*A033999(10*n+3)+n`
-/

namespace A246027.P9829822101143253430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (10 * n + 3) + (n : ℤ)

end

end A246027.P9829822101143253430

/-! ## A246027.P16693059644647856565

`n-∑{digits}[A267356(n), #]`
-/

namespace A246027.P16693059644647856565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A246027.P16693059644647856565

/-!
# A246028: a(n) = Product_{i in row n of A245562} Fibonacci(i+1).

The programs for A246028, the canonical program `A246028.P8741333918522624492` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246028 has offset 0).

The definition of A246028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246028.P8741333918522624492

`A245564(and(n, 2*n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A246028

/-- `A245564(and(n, 2*n))` -/
def P8741333918522624492.Spec : Prop :=
  ∀ n, P8741333918522624492.a n = A246028 n

theorem P8741333918522624492.correct : P8741333918522624492.Spec := by
  intro n
  simp only [A246028]

end A246028

/-! ## A246028.P2662407656601234449

`A245564(A048735(n))`
-/

namespace A246028.P2662407656601234449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (A048735 n).toNat

end

end A246028.P2662407656601234449

namespace A246028

/-- `A245564(A048735(n))` -/
def P2662407656601234449.Spec : Prop :=
  ∀ n, P2662407656601234449.a n = A246028 n

end A246028

/-! ## A246028.P3889953493295432505

`A245564(A213370(n))`
-/

namespace A246028.P3889953493295432505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (A213370 n).toNat

end

end A246028.P3889953493295432505

namespace A246028

/-- `A245564(A213370(n))` -/
def P3889953493295432505.Spec : Prop :=
  ∀ n, P3889953493295432505.a n = A246028 n

end A246028

/-! ## A246028.P5531755977410344976

`A245564(A348710(n))`
-/

namespace A246028.P5531755977410344976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (A348710 n).toNat

end

end A246028.P5531755977410344976

namespace A246028

/-- `A245564(A348710(n))` -/
def P5531755977410344976.Spec : Prop :=
  ∀ n, P5531755977410344976.a n = A246028 n

end A246028

/-! ## A246028.P6337553443231932778

`A245564(A048728(n)/2)`
-/

namespace A246028.P6337553443231932778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat

end

end A246028.P6337553443231932778

namespace A246028

/-- `A245564(A048728(n)/2)` -/
def P6337553443231932778.Spec : Prop :=
  ∀ n, P6337553443231932778.a n = A246028 n

end A246028

/-! ## A246028.P9111364955103551480

`A245564(A048728(n))`
-/

namespace A246028.P9111364955103551480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (A048728 n).toNat

end

end A246028.P9111364955103551480

namespace A246028

/-- `A245564(A048728(n))` -/
def P9111364955103551480.Spec : Prop :=
  ∀ n, P9111364955103551480.a n = A246028 n

end A246028

/-! ## A246028.P1631153325653177402

`A351219(A278222(n))`
-/

namespace A246028.P1631153325653177402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (A278222 n).toNat

end

end A246028.P1631153325653177402

namespace A246028

/-- `A351219(A278222(n))` -/
def P1631153325653177402.Spec : Prop :=
  ∀ n, P1631153325653177402.a n = A246028 n

end A246028

/-! ## A246028.P598753495807249794

`A351219(A005940(n+1))`
-/

namespace A246028.P598753495807249794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (A005940 (n + 1)).toNat

end

end A246028.P598753495807249794

namespace A246028

/-- `A351219(A005940(n+1))` -/
def P598753495807249794.Spec : Prop :=
  ∀ n, P598753495807249794.a n = A246028 n

end A246028

/-! ## A246028.P9447685021579443483

`A351219(A332815(n))`
-/

namespace A246028.P9447685021579443483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (A332815 n).toNat

end

end A246028.P9447685021579443483

namespace A246028

/-- `A351219(A332815(n))` -/
def P9447685021579443483.Spec : Prop :=
  ∀ n, P9447685021579443483.a n = A246028 n

end A246028

/-! ## A246028.P15697246263566901753

`A351219(A374717(n+1))`
-/

namespace A246028.P15697246263566901753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (A374717 (n + 1)).toNat

end

end A246028.P15697246263566901753

namespace A246028

/-- `A351219(A374717(n+1))` -/
def P15697246263566901753.Spec : Prop :=
  ∀ n, P15697246263566901753.a n = A246028 n

end A246028

/-!
# A246029: a(n) = Product_{i in row n of A245562} prime(i).

The programs for A246029, the canonical program `A246029.P17934479731839839263` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246029 has offset 0).

The definition of A246029 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246029.P17934479731839839263

`A181819(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246029

/-- `A181819(A005940(1+n))` -/
def P17934479731839839263.Spec : Prop :=
  ∀ n, P17934479731839839263.a n = A246029 n

theorem P17934479731839839263.correct : P17934479731839839263.Spec := by
  intro n
  simp only [A246029]

end A246029

/-! ## A246029.P8413975290270502148

`∏{e}[A278222(n), A000040(#)]`
-/

namespace A246029.P8413975290270502148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A246029.P8413975290270502148

namespace A246029

/-- `∏{e}[A278222(n), A000040(#)]` -/
def P8413975290270502148.Spec : Prop :=
  ∀ n, P8413975290270502148.a n = A246029 n

end A246029

/-! ## A246029.P576321825995999924

`∏{e}[A278222(n), A095285(#)]`
-/

namespace A246029.P576321825995999924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A095285 (Nat.factorization (f1 n).natAbs p)

end

end A246029.P576321825995999924

namespace A246029

/-- `∏{e}[A278222(n), A095285(#)]` -/
def P576321825995999924.Spec : Prop :=
  ∀ n, P576321825995999924.a n = A246029 n

end A246029

/-! ## A246029.P3653121063760850622

`∏{e}[A278222(n), A008578(#+1)]`
-/

namespace A246029.P3653121063760850622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008578 (Nat.factorization (f1 n).natAbs p + 1)

end

end A246029.P3653121063760850622

namespace A246029

/-- `∏{e}[A278222(n), A008578(#+1)]` -/
def P3653121063760850622.Spec : Prop :=
  ∀ n, P3653121063760850622.a n = A246029 n

end A246029

/-! ## A246029.P16040709401226367196

`A181819(A278222(n))`
-/

namespace A246029.P16040709401226367196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A278222 n).toNat

end

end A246029.P16040709401226367196

namespace A246029

/-- `A181819(A278222(n))` -/
def P16040709401226367196.Spec : Prop :=
  ∀ n, P16040709401226367196.a n = A246029 n

end A246029

/-! ## A246029.P5385796449963194284

`∏{e}[A005940(n+1), A000040(#)]`
-/

namespace A246029.P5385796449963194284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A246029.P5385796449963194284

namespace A246029

/-- `∏{e}[A005940(n+1), A000040(#)]` -/
def P5385796449963194284.Spec : Prop :=
  ∀ n, P5385796449963194284.a n = A246029 n

end A246029

/-! ## A246029.P7385000002091349318

`∏{e}[A005940(n+1), A095320(#)]`
-/

namespace A246029.P7385000002091349318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A095320 (Nat.factorization (f1 n).natAbs p)

end

end A246029.P7385000002091349318

namespace A246029

/-- `∏{e}[A005940(n+1), A095320(#)]` -/
def P7385000002091349318.Spec : Prop :=
  ∀ n, P7385000002091349318.a n = A246029 n

end A246029

/-! ## A246029.P1969137106476467394

`∏{e}[A005940(n+1), A008578(#+1)]`
-/

namespace A246029.P1969137106476467394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008578 (Nat.factorization (f1 n).natAbs p + 1)

end

end A246029.P1969137106476467394

namespace A246029

/-- `∏{e}[A005940(n+1), A008578(#+1)]` -/
def P1969137106476467394.Spec : Prop :=
  ∀ n, P1969137106476467394.a n = A246029 n

end A246029

/-! ## A246029.P4205218673199857584

`∏{e}[A005940(n+1), A100484(#)/2]`
-/

namespace A246029.P4205218673199857584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A100484 (Nat.factorization (f1 n).natAbs p) : ℚ) / 2

end

end A246029.P4205218673199857584

namespace A246029

/-- `∏{e}[A005940(n+1), A100484(#)/2]` -/
def P4205218673199857584.Spec : Prop :=
  ∀ n, P4205218673199857584.a n = (A246029 n : ℚ)

end A246029

/-! ## A246029.P8076405336153465225

`∏{e}[A005940(n+1), A005940(A131577(#)+1)]`
-/

namespace A246029.P8076405336153465225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005940 (A131577 (Nat.factorization (f1 n).natAbs p) + 1).toNat

end

end A246029.P8076405336153465225

namespace A246029

/-- `∏{e}[A005940(n+1), A005940(A131577(#)+1)]` -/
def P8076405336153465225.Spec : Prop :=
  ∀ n, P8076405336153465225.a n = A246029 n

end A246029

/-! ## A246029.P1959420273210341991

`∏{e}[A332815(n), A000040(#)]`
-/

namespace A246029.P1959420273210341991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A246029.P1959420273210341991

namespace A246029

/-- `∏{e}[A332815(n), A000040(#)]` -/
def P1959420273210341991.Spec : Prop :=
  ∀ n, P1959420273210341991.a n = A246029 n

end A246029

/-! ## A246029.P571433904958828387

`A181819(A332815(n))`
-/

namespace A246029.P571433904958828387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A332815 n).toNat

end

end A246029.P571433904958828387

namespace A246029

/-- `A181819(A332815(n))` -/
def P571433904958828387.Spec : Prop :=
  ∀ n, P571433904958828387.a n = A246029 n

end A246029

/-! ## A246029.P12375929705325619864

`A329900(A278159(n))`
-/

namespace A246029.P12375929705325619864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A278159 n).toNat

end

end A246029.P12375929705325619864

namespace A246029

/-- `A329900(A278159(n))` -/
def P12375929705325619864.Spec : Prop :=
  ∀ n, P12375929705325619864.a n = A246029 n

end A246029

/-! ## A246029.P14297968266573362159

`A181819(A329886(2*n)/A329886(n))`
-/

namespace A246029.P14297968266573362159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((A329886 (2 * n) : ℚ) / (A329886 n : ℚ))).toNat

end

end A246029.P14297968266573362159

namespace A246029

/-- `A181819(A329886(2*n)/A329886(n))` -/
def P14297968266573362159.Spec : Prop :=
  ∀ n, P14297968266573362159.a n = A246029 n

end A246029

/-!
# A246030: a(n) = (5*2^(2*n)+(-2)^(n+1))/3.

The programs for A246030, the canonical program `A246030.P2105682331889114774` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246030 has offset 0).

The definition of A246030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*2^(2*n)+(-2)^(n+1))/3` (program `A246030.P16240047378340781769`, by `A246030.P16240047378340781769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246030.P2105682331889114774

`2*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A246030

/-- `2*a(n-1)+8*a(n-2)` -/
def P2105682331889114774.Spec : Prop :=
  ∀ n, (P2105682331889114774.a n : ℤ) = A246030 n

theorem P2105682331889114774.correct : P2105682331889114774.Spec := by
  intro n
  simp only [A246030]

end A246030

/-! ## A246030.P16240047378340781769

`(5*2^(2*n)+(-2)^(n+1))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246030.P16240047378340781769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ (2 * n) : ℤ) + (-2) ^ (n + 1) : ℚ) / 3

end

end A246030.P16240047378340781769

namespace A246030

/-- `(5*2^(2*n)+(-2)^(n+1))/3` -/
def P16240047378340781769.Spec : Prop :=
  ∀ n, P16240047378340781769.a n = (A246030 n : ℚ)

theorem P16240047378340781769.correct : P16240047378340781769.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A246030, Nat.add_sub_cancel, A246030.P16240047378340781769.a, A246030.P2105682331889114774.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A246030, Nat.add_sub_cancel, A246030.P16240047378340781769.a, A246030.P2105682331889114774.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A246030

/-! ## A246030.P11654698450942231079

`(-2)^(n+1)+4*a(n-1)` with `a(0)=1`
-/

namespace A246030.P11654698450942231079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-2) ^ (n + 1) + 4 * a (n - 1)

end

end A246030.P11654698450942231079

namespace A246030

/-- `(-2)^(n+1)+4*a(n-1)` -/
def P11654698450942231079.Spec : Prop :=
  ∀ n, P11654698450942231079.a n = A246030 n

end A246030

/-! ## A246030.P4114281099420894844

`Δ[A108924(n)]`
-/

namespace A246030.P4114281099420894844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246030.P4114281099420894844

namespace A246030

/-- `Δ[A108924(n)]` -/
def P4114281099420894844.Spec : Prop :=
  ∀ n, P4114281099420894844.a n = A246030 n

end A246030

/-! ## A246030.P11546379935704760350

`abs(Δ[A083086(n)])`
-/

namespace A246030.P11546379935704760350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A246030.P11546379935704760350

namespace A246030

/-- `abs(Δ[A083086(n)])` -/
def P11546379935704760350.Spec : Prop :=
  ∀ n, P11546379935704760350.a n = A246030 n

end A246030

/-! ## A246030.P16736889285885852806

`2^n*A084214(n+1)`
-/

namespace A246030.P16736889285885852806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A084214 (n + 1)

end

end A246030.P16736889285885852806

namespace A246030

/-- `2^n*A084214(n+1)` -/
def P16736889285885852806.Spec : Prop :=
  ∀ n, P16736889285885852806.a n = A246030 n

end A246030

/-! ## A246030.P2284727362305661917

`A047849(n)+∑[4^n-(-2)^n]`
-/

namespace A246030.P2284727362305661917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246030.P2284727362305661917

namespace A246030

/-- `A047849(n)+∑[4^n-(-2)^n]` -/
def P2284727362305661917.Spec : Prop :=
  ∀ n, P2284727362305661917.a n = A246030 n

end A246030

/-! ## A246030.P5635429365365472787

`record[∑[(-2)^n]+2^n]-A077925(n)`
-/

namespace A246030.P5635429365365472787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A077925 n

end

end A246030.P5635429365365472787

namespace A246030

/-- `record[∑[(-2)^n]+2^n]-A077925(n)` -/
def P5635429365365472787.Spec : Prop :=
  ∀ n, P5635429365365472787.a n = A246030 n

end A246030

/-! ## A246030.P10576382153516546977

`record[A151575(n)]+∑[4^n-(-2)^n]`
-/

namespace A246030.P10576382153516546977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A246030.P10576382153516546977

namespace A246030

/-- `record[A151575(n)]+∑[4^n-(-2)^n]` -/
def P10576382153516546977.Spec : Prop :=
  ∀ n, P10576382153516546977.a n = A246030 n

end A246030

/-! ## A246030.P10138396344791294178

`A279260(n)+A047849(n)`
-/

namespace A246030.P10138396344791294178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279260 n + A047849 n

end

end A246030.P10138396344791294178

namespace A246030

/-- `A279260(n)+A047849(n)` -/
def P10138396344791294178.Spec : Prop :=
  ∀ n, P10138396344791294178.a n = A246030 n

end A246030

/-! ## A246030.P4947692220435337283

`A370627(n)+A003674(n)`
-/

namespace A246030.P4947692220435337283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370627 n + A003674 n

end

end A246030.P4947692220435337283

namespace A246030

/-- `A370627(n)+A003674(n)` -/
def P4947692220435337283.Spec : Prop :=
  ∀ n, P4947692220435337283.a n = A246030 n

end A246030

/-! ## A246030.P12885126314622687755

`A136412(n)-A077925(n)`
-/

namespace A246030.P12885126314622687755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136412 n - A077925 n

end

end A246030.P12885126314622687755

namespace A246030

/-- `A136412(n)-A077925(n)` -/
def P12885126314622687755.Spec : Prop :=
  ∀ n, P12885126314622687755.a n = A246030 n

end A246030

/-! ## A246030.P737150065228083694

`A283642(n)²-A139818(n)`
-/

namespace A246030.P737150065228083694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n ^ 2 - A139818 n

end

end A246030.P737150065228083694

namespace A246030

/-- `A283642(n)²-A139818(n)` -/
def P737150065228083694.Spec : Prop :=
  ∀ n, P737150065228083694.a n = A246030 n

end A246030

/-! ## A246030.P16436553184639792481

`A054881(n+1)+A000302(n)`
-/

namespace A246030.P16436553184639792481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054881 (n + 1) + A000302 n

end

end A246030.P16436553184639792481

namespace A246030

/-- `A054881(n+1)+A000302(n)` -/
def P16436553184639792481.Spec : Prop :=
  ∀ n, P16436553184639792481.a n = A246030 n

end A246030

/-! ## A246030.P15803660288596244146

`A151575(n+1)+A020989(n)`
-/

namespace A246030.P15803660288596244146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 (n + 1) + A020989 n

end

end A246030.P15803660288596244146

namespace A246030

/-- `A151575(n+1)+A020989(n)` -/
def P15803660288596244146.Spec : Prop :=
  ∀ n, P15803660288596244146.a n = A246030 n

end A246030

/-! ## A246030.P6874796147973584343

`A246036(n)+A192382(n+1)`
-/

namespace A246030.P6874796147973584343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246036 n + A192382 (n + 1)

end

end A246030.P6874796147973584343

namespace A246030

/-- `A246036(n)+A192382(n+1)` -/
def P6874796147973584343.Spec : Prop :=
  ∀ n, P6874796147973584343.a n = A246030 n

end A246030

/-! ## A246030.P781916687550286671

`A110953(n+1)-A000302(n)`
-/

namespace A246030.P781916687550286671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110953 (n + 1) - A000302 n

end

end A246030.P781916687550286671

namespace A246030

/-- `A110953(n+1)-A000302(n)` -/
def P781916687550286671.Spec : Prop :=
  ∀ n, P781916687550286671.a n = A246030 n

end A246030

/-! ## A246030.P15089014766938080662

`A108924(n+1)-A108924(n)`
-/

namespace A246030.P15089014766938080662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108924 (n + 1) - A108924 n

end

end A246030.P15089014766938080662

namespace A246030

/-- `A108924(n+1)-A108924(n)` -/
def P15089014766938080662.Spec : Prop :=
  ∀ n, P15089014766938080662.a n = A246030 n

end A246030

/-!
# A246031: Number of ON cells in 3-D cellular automaton described in Comments, after n generations.

The programs for A246031, there is no canonical definition to state claims against.
-/

/-! ## A246031.P13026762976817196197

`(26^∑{e}[n+1, #])%A004434(A167137(n))`
-/

namespace A246031.P13026762976817196197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (26 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) (A004434 (A167137 n).toNat)

end

end A246031.P13026762976817196197

/-! ## A246031.P16219259833268853371

`A165847(n+1)%A022844(A070778(n+1))`
-/

namespace A246031.P16219259833268853371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165847 (n + 1)) (A022844 (A070778 (n + 1)).toNat)

end

end A246031.P16219259833268853371

/-!
# A246032: a(n) = A246031(2^n-1).

The programs for A246032, there is no canonical definition to state claims against.
-/

/-! ## A246032.P3699377151409620105

`A246031(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246032.P3699377151409620105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246031 (2 ^ n - 1)

end

end A246032.P3699377151409620105

/-! ## A246032.P6674637638780255778

`record[A246031(A006068(n))]`
-/

namespace A246032.P6674637638780255778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246031 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246032.P6674637638780255778

/-! ## A246032.P15224140884361249921

`record[A246031(A038573(n))]`
-/

namespace A246032.P15224140884361249921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246031 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246032.P15224140884361249921

/-! ## A246032.P9241969987479559233

`record[A246031(A060142(n))]`
-/

namespace A246032.P9241969987479559233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246031 (A060142 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246032.P9241969987479559233

/-! ## A246032.P4686380274924683135

`record[A246031(A173787(n))]`
-/

namespace A246032.P4686380274924683135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246031 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246032.P4686380274924683135

/-!
# A246033: "Convex" primes: extremal primes in the sense of Tutaj.

The programs for A246033, there is no canonical definition to state claims against.
-/

/-! ## A246033.P13704260748464794849

`A000040(A290652(n+1))`
-/

namespace A246033.P13704260748464794849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A290652 (n + 1)).toNat

end

end A246033.P13704260748464794849

/-! ## A246033.P9754373244935705897

`A008578(A290652(n+1)+1)`
-/

namespace A246033.P9754373244935705897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A290652 (n + 1) + 1).toNat

end

end A246033.P9754373244935705897

/-! ## A246033.P7526797665654850603

`A158611(A290652(n+1)+2)`
-/

namespace A246033.P7526797665654850603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A290652 (n + 1) + 2).toNat

end

end A246033.P7526797665654850603

/-! ## A246033.P9491021514489668079

`A001747(A290652(n+1)+1)/2`
-/

namespace A246033.P9491021514489668079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A290652 (n + 1) + 1).toNat : ℚ) / 2

end

end A246033.P9491021514489668079

/-! ## A246033.P6117056592446558268

`A006093(A290652(n+1))+A007318(∑[n])`
-/

namespace A246033.P6117056592446558268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A290652 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246033.P6117056592446558268

/-!
# A246035: Number of odd terms in f^n, where f = (1/x+1+x)*(1/y+1+y).

The programs for A246035, there is no canonical definition to state claims against.
-/

/-! ## A246035.P13629347749536695249

`A071053(n)²`
-/

namespace A246035.P13629347749536695249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n ^ 2

end

end A246035.P13629347749536695249

/-! ## A246035.P2158938012461077540

`A253102(n)^(2/3)`
-/

namespace A246035.P2158938012461077540
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253102 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A246035.P2158938012461077540

/-! ## A246035.P15290362175565505896

`(Δ[n²]-A071052(n))²`
-/

namespace A246035.P15290362175565505896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A071052 n) ^ 2

end

end A246035.P15290362175565505896

/-! ## A246035.P13577393470163229775

`A071053(A026741(n))^2`
-/

namespace A246035.P13577393470163229775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A026741 n).toNat ^ 2

end

end A246035.P13577393470163229775

/-! ## A246035.P162238170029714854

`A253102(n)/A071053(n)`
-/

namespace A246035.P162238170029714854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253102 n : ℚ) / (A071053 n : ℚ)

end

end A246035.P162238170029714854

/-! ## A246035.P3176546908038101488

`(A246037(n)/A001316(n))²`
-/

namespace A246035.P3176546908038101488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A246037 n : ℚ) / (A001316 n : ℚ)) ^ 2

end

end A246035.P3176546908038101488

/-! ## A246035.P3333605073402251966

`A246037(n)²/A102376(n)`
-/

namespace A246035.P3333605073402251966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246037 n ^ 2 : ℚ) / (A102376 n : ℚ)

end

end A246035.P3333605073402251966

/-! ## A246035.P13194428518389972501

`A016754((A071053(n)-1)/2)`
-/

namespace A246035.P13194428518389972501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (SequenceMachineLib.roundAway ((A071053 n - 1 : ℚ) / 2)).toNat

end

end A246035.P13194428518389972501

/-! ## A246035.P7175932174907551045

`A071053(n)^(A157532(n+1)-1)`
-/

namespace A246035.P7175932174907551045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071053 n : ℚ) ^ (A157532 (n + 1) - 1 : ℤ)

end

end A246035.P7175932174907551045

/-! ## A246035.P4785711851282275755

`A071053(A026741(n))*A071053(n)`
-/

namespace A246035.P4785711851282275755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A026741 n).toNat * A071053 n

end

end A246035.P4785711851282275755

/-! ## A246035.P5832482606377555979

`A071053(n)^A020639(A004277(n))`
-/

namespace A246035.P5832482606377555979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071053 n : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A246035.P5832482606377555979

/-! ## A246035.P4816560886054755218

`A071053(2*n)*A071053(n)`
-/

namespace A246035.P4816560886054755218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (2 * n) * A071053 n

end

end A246035.P4816560886054755218

/-! ## A246035.P7725605645109238788

`A000290(A071053(2*n))`
-/

namespace A246035.P7725605645109238788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A071053 (2 * n)).toNat

end

end A246035.P7725605645109238788

/-! ## A246035.P12319217976954882831

`A005563(A071053(n)-1)+1`
-/

namespace A246035.P12319217976954882831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A071053 n - 1).toNat + 1

end

end A246035.P12319217976954882831

/-! ## A246035.P7428767978976061505

`A267148(lcm(2, n))²`
-/

namespace A246035.P7428767978976061505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (Nat.lcm 2 n) ^ 2

end

end A246035.P7428767978976061505

/-! ## A246035.P10341939700832418178

`A267148(A109043(n))²`
-/

namespace A246035.P10341939700832418178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (A109043 n).toNat ^ 2

end

end A246035.P10341939700832418178

/-! ## A246035.P1288217607433818508

`A118911(2*n)²`
-/

namespace A246035.P1288217607433818508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 (2 * n) ^ 2

end

end A246035.P1288217607433818508

/-! ## A246035.P11988856803339761024

`A267148(2*n)²`
-/

namespace A246035.P11988856803339761024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (2 * n) ^ 2

end

end A246035.P11988856803339761024

/-! ## A246035.P11865480561612771223

`A253102(n)/A118911(2*n)`
-/

namespace A246035.P11865480561612771223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253102 n : ℚ) / (A118911 (2 * n) : ℚ)

end

end A246035.P11865480561612771223

/-! ## A246035.P2648854934441236013

`(A246037(n)/A071044(2*n))²`
-/

namespace A246035.P2648854934441236013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A246037 n : ℚ) / (A071044 (2 * n) : ℚ)) ^ 2

end

end A246035.P2648854934441236013

/-!
# A246036: Expansion of (1+4*x)/((1+2*x)*(1-4*x)).

The programs for A246036, the canonical program `A246036.P15420875330407910957` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246036 has offset 0).

The definition of A246036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246036.P3948516567296727529

`(4^(1+n)-(-2)^n)/3`
-/

namespace A246036.P3948516567296727529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (1 + n) : ℤ) - (-2) ^ n : ℚ) / 3

end

end A246036.P3948516567296727529

namespace A246036

/-- `(4^(1+n)-(-2)^n)/3` -/
def P3948516567296727529.Spec : Prop :=
  ∀ n, P3948516567296727529.a n = (A246036 n : ℚ)

theorem P3948516567296727529.correct : P3948516567296727529.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A246036, Nat.add_sub_cancel, A246036.P3948516567296727529.a, A246036.P15420875330407910957.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A246036, Nat.add_sub_cancel, A246036.P3948516567296727529.a, A246036.P15420875330407910957.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A246036

/-! ## A246036.P15420875330407910957

`2*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A246036

/-- `2*a(n-1)+8*a(n-2)` -/
def P15420875330407910957.Spec : Prop :=
  ∀ n, (P15420875330407910957.a n : ℤ) = A246036 n

theorem P15420875330407910957.correct : P15420875330407910957.Spec := by
  intro n
  simp only [A246036]

end A246036

/-! ## A246036.P12514342042897758714

`2^n*A001045(n+2)`
-/

namespace A246036.P12514342042897758714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001045 (n + 2)

end

end A246036.P12514342042897758714

namespace A246036

/-- `2^n*A001045(n+2)` -/
def P12514342042897758714.Spec : Prop :=
  ∀ n, P12514342042897758714.a n = A246036 n

end A246036

/-! ## A246036.P7537390697812296929

`2*(4^n-a(n-1))` with `a(0)=1`
-/

namespace A246036.P7537390697812296929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((4 ^ n : ℤ) - a (n - 1))

end

end A246036.P7537390697812296929

namespace A246036

/-- `2*(4^n-a(n-1))` -/
def P7537390697812296929.Spec : Prop :=
  ∀ n, P7537390697812296929.a n = A246036 n

end A246036

/-! ## A246036.P8335553981859963657

`4^(n+1)/2-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A246036.P8335553981859963657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ (n + 1) : ℚ) / 2 - a (n - 1) - a (n - 1)

end

end A246036.P8335553981859963657

namespace A246036

/-- `4^(n+1)/2-a(n-1)-a(n-1)` -/
def P8335553981859963657.Spec : Prop :=
  ∀ n, P8335553981859963657.a n = (A246036 n : ℚ)

end A246036

/-! ## A246036.P6139259243023215917

`2^n*A283642(n)`
-/

namespace A246036.P6139259243023215917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A283642 n

end

end A246036.P6139259243023215917

namespace A246036

/-- `2^n*A283642(n)` -/
def P6139259243023215917.Spec : Prop :=
  ∀ n, P6139259243023215917.a n = A246036 n

end A246036

/-! ## A246036.P8176908507743513837

`Δ[A084175(n+1)/2]`
-/

namespace A246036.P8176908507743513837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084175 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246036.P8176908507743513837

namespace A246036

/-- `Δ[A084175(n+1)/2]` -/
def P8176908507743513837.Spec : Prop :=
  ∀ n, P8176908507743513837.a n = (A246036 n : ℚ)

end A246036

/-! ## A246036.P9903297650817338257

`Δ[A015249(n+2)/2]`
-/

namespace A246036.P9903297650817338257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015249 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246036.P9903297650817338257

namespace A246036

/-- `Δ[A015249(n+2)/2]` -/
def P9903297650817338257.Spec : Prop :=
  ∀ n, P9903297650817338257.a n = (A246036 n : ℚ)

end A246036

/-! ## A246036.P14950167660345473412

`Δ[A084152(n+2)/2]`
-/

namespace A246036.P14950167660345473412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084152 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246036.P14950167660345473412

namespace A246036

/-- `Δ[A084152(n+2)/2]` -/
def P14950167660345473412.Spec : Prop :=
  ∀ n, P14950167660345473412.a n = (A246036 n : ℚ)

end A246036

/-! ## A246036.P8631498772850155432

`2^n*A152046(n+2)`
-/

namespace A246036.P8631498772850155432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A152046 (n + 2)

end

end A246036.P8631498772850155432

namespace A246036

/-- `2^n*A152046(n+2)` -/
def P8631498772850155432.Spec : Prop :=
  ∀ n, P8631498772850155432.a n = A246036 n

end A246036

/-! ## A246036.P18334890546621984134

`2^n*A167167(n+2)`
-/

namespace A246036.P18334890546621984134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A167167 (n + 2)

end

end A246036.P18334890546621984134

namespace A246036

/-- `2^n*A167167(n+2)` -/
def P18334890546621984134.Spec : Prop :=
  ∀ n, P18334890546621984134.a n = A246036 n

end A246036

/-! ## A246036.P3777201488640472905

`(∑[A014113(n)]+1)*2^n`
-/

namespace A246036.P3777201488640472905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (2 ^ n : ℤ)

end

end A246036.P3777201488640472905

namespace A246036

/-- `(∑[A014113(n)]+1)*2^n` -/
def P3777201488640472905.Spec : Prop :=
  ∀ n, P3777201488640472905.a n = A246036 n

end A246036

/-! ## A246036.P11359928547068858257

`2^(n-1)*A014113(n+2)`
-/

namespace A246036.P11359928547068858257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A014113 (n + 2) : ℚ)

end

end A246036.P11359928547068858257

namespace A246036

/-- `2^(n-1)*A014113(n+2)` -/
def P11359928547068858257.Spec : Prop :=
  ∀ n, P11359928547068858257.a n = (A246036 n : ℚ)

end A246036

/-! ## A246036.P2500935379976502842

`(2*A000975(n)+1)*2^n`
-/

namespace A246036.P2500935379976502842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000975 n + 1) * (2 ^ n : ℤ)

end

end A246036.P2500935379976502842

namespace A246036

/-- `(2*A000975(n)+1)*2^n` -/
def P2500935379976502842.Spec : Prop :=
  ∀ n, P2500935379976502842.a n = A246036 n

end A246036

/-! ## A246036.P7729315821365341497

`2^(n-1)*A078008(n+3)`
-/

namespace A246036.P7729315821365341497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A078008 (n + 3) : ℚ)

end

end A246036.P7729315821365341497

namespace A246036

/-- `2^(n-1)*A078008(n+3)` -/
def P7729315821365341497.Spec : Prop :=
  ∀ n, P7729315821365341497.a n = (A246036 n : ℚ)

end A246036

/-! ## A246036.P538785282167665184

`2^(n-2)*A097073(n+3)`
-/

namespace A246036.P538785282167665184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A097073 (n + 3) : ℚ)

end

end A246036.P538785282167665184

namespace A246036

/-- `2^(n-2)*A097073(n+3)` -/
def P538785282167665184.Spec : Prop :=
  ∀ n, P538785282167665184.a n = (A246036 n : ℚ)

end A246036

/-! ## A246036.P14982138273477563120

`4*a(n-1)-A122803(n)` with `a(0)=1`
-/

namespace A246036.P14982138273477563120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A122803 n

end

end A246036.P14982138273477563120

namespace A246036

/-- `4*a(n-1)-A122803(n)` -/
def P14982138273477563120.Spec : Prop :=
  ∀ n, P14982138273477563120.a n = A246036 n

end A246036

/-! ## A246036.P4842164258172033169

`A081654(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A246036.P4842164258172033169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081654 n - (a (n - 1) + a (n - 1))

end

end A246036.P4842164258172033169

namespace A246036

/-- `A081654(n)-(a(n-1)+a(n-1))` -/
def P4842164258172033169.Spec : Prop :=
  ∀ n, P4842164258172033169.a n = A246036 n

end A246036

/-! ## A246036.P8020280609952250093

`A083424(n)+A003674(n)`
-/

namespace A246036.P8020280609952250093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083424 n + A003674 n

end

end A246036.P8020280609952250093

namespace A246036

/-- `A083424(n)+A003674(n)` -/
def P8020280609952250093.Spec : Prop :=
  ∀ n, P8020280609952250093.a n = A246036 n

end A246036

/-!
# A246037: Number of odd terms in f^n, where f = (1/x+1+x)*(1/y+y).

The programs for A246037, there is no canonical definition to state claims against.
-/

/-! ## A246037.P6060642650398238113

`A001316(n)*A071053(n)`
-/

namespace A246037.P6060642650398238113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A071053 n

end

end A246037.P6060642650398238113

/-! ## A246037.P8240061937990353226

`A000079(A000120(n))*A071053(n)`
-/

namespace A246037.P8240061937990353226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 n).toNat * A071053 n

end

end A246037.P8240061937990353226

/-! ## A246037.P14446230693164616580

`A011782(A000120(n)+1)*A071053(n)`
-/

namespace A246037.P14446230693164616580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000120 n + 1).toNat * A071053 n

end

end A246037.P14446230693164616580

/-! ## A246037.P886724449653351737

`(A006046(n+1)-A006046(n))*A071053(n)`
-/

namespace A246037.P886724449653351737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006046 (n + 1) - A006046 n) * A071053 n

end

end A246037.P886724449653351737

/-! ## A246037.P16492208511112218378

`A001316(n)*A267148(2*n)`
-/

namespace A246037.P16492208511112218378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A267148 (2 * n)

end

end A246037.P16492208511112218378

/-! ## A246037.P6046442971172815323

`Δ[A006046(n)]*A267148(2*n)`
-/

namespace A246037.P6046442971172815323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A267148 (2 * n)

end

end A246037.P6046442971172815323

/-! ## A246037.P17516163798173125982

`(A006046(2*n+1)-A006046(2*n))*A267148(2*n)`
-/

namespace A246037.P17516163798173125982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006046 (2 * n + 1) - A006046 (2 * n)) * A267148 (2 * n)

end

end A246037.P17516163798173125982

/-! ## A246037.P9227680627879045832

`(A237120(2*n)+1)*A001316(n)`
-/

namespace A246037.P9227680627879045832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237120 (2 * n) + 1) * A001316 n

end

end A246037.P9227680627879045832

/-! ## A246037.P2532523390357494249

`A000005(A019565(n))*A071053(n)`
-/

namespace A246037.P2532523390357494249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019565 n).toNat * A071053 n

end

end A246037.P2532523390357494249

/-!
# A246038: G.f.: (1+2x)(1+2x+4x^2)/(1-3x-8x^3-8x^4).

The programs for A246038, there is no canonical definition to state claims against.
-/

/-! ## A246038.P7743026194237843973

`A246039(2^n-1)`
-/

namespace A246038.P7743026194237843973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246039 (2 ^ n - 1)

end

end A246038.P7743026194237843973

/-! ## A246038.P3586906996605991969

`record[A246039(A227351(n))]`
-/

namespace A246038.P3586906996605991969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246039 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246038.P3586906996605991969

/-! ## A246038.P157483156678538013

`record[A246039(A341916(n))]`
-/

namespace A246038.P157483156678538013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246039 (A341916 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246038.P157483156678538013

/-! ## A246038.P13182807934090147932

`or(1, A246039(A000225(n)))`
-/

namespace A246038.P13182807934090147932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A246039 (A000225 n).toNat)

end

end A246038.P13182807934090147932

/-! ## A246038.P246034700010470810

`record[A246039(A037013(n+1))]`
-/

namespace A246038.P246034700010470810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246039 (A037013 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246038.P246034700010470810

/-!
# A246039: Number of odd terms in f^n, where f = (1/x+1+x)*(1/y+y)+1.

The programs for A246039, there is no canonical definition to state claims against.
-/

/-! ## A246039.P583227930482814364

`or(A247666(n), A333638(A333668(n+2)))`
-/

namespace A246039.P583227930482814364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A247666 n) (A333638 (A333668 (n + 2)).toNat)

end

end A246039.P583227930482814364

/-!
# A246040: a(1)=1; a(n)=Sum_{k=1..n-1} Stirling_1(n,k)*a(k).

The programs for A246040, there is no canonical definition to state claims against.
-/

/-! ## A246040.P17014221595912796510

`(-1)^n*A086555(n+1)`
-/

namespace A246040.P17014221595912796510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A086555 (n + 1)

end

end A246040.P17014221595912796510

/-! ## A246040.P12232647508057363252

`A086555(n+1)/A033999(n)`
-/

namespace A246040.P12232647508057363252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086555 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A246040.P12232647508057363252

/-! ## A246040.P2944791315340009594

`A086555(n+1)*A165326(n+1)`
-/

namespace A246040.P2944791315340009594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086555 (n + 1) * A165326 (n + 1)

end

end A246040.P2944791315340009594

/-! ## A246040.P16593305103200465326

`A086555(n+1)*A102560(A014601(n))`
-/

namespace A246040.P16593305103200465326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086555 (n + 1) * A102560 (A014601 n).toNat

end

end A246040.P16593305103200465326

/-! ## A246040.P15580442828264456828

`A086555(n+1)*A130595(A000217(n))`
-/

namespace A246040.P15580442828264456828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086555 (n + 1) * A130595 (A000217 n).toNat

end

end A246040.P15580442828264456828

/-!
# A246043: Biprimatic permutable numbers: Decimal numbers whose digits can be arranged to form exactly two prime numbers. No leading zeros.

The programs for A246043, there is no canonical definition to state claims against.
-/

/-! ## A246043.P11217088180018799110

`eq[2, A046810(n+1)]+1`
-/

namespace A246043.P11217088180018799110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246043.P11217088180018799110

/-! ## A246043.P9171710825688104337

`eq[n, xor(n, a(A046810(n)))]` with `a(0)=3`
-/

namespace A246043.P9171710825688104337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  Nat.xor n (f2 (A046810 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246043.P9171710825688104337

/-! ## A246043.P16755269296846742599

`eq[2, A046810(A028310(n))]`
-/

namespace A246043.P16755269296846742599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246043.P16755269296846742599

/-! ## A246043.P16407788011811754679

`A063660(eq[2, A046810(n+1)])`
-/

namespace A246043.P16407788011811754679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246043.P16407788011811754679

/-! ## A246043.P5171958255482205184

`eq[2, A046810(A060000(n+1))]`
-/

namespace A246043.P5171958255482205184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246043.P5171958255482205184

/-! ## A246043.P11378622207635623203

`eq[2, A046810(A065033(2*n))]`
-/

namespace A246043.P11378622207635623203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246043.P11378622207635623203

/-! ## A246043.P6335797319931353182

`eq[2, A046810(A233583(n+1))]`
-/

namespace A246043.P6335797319931353182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246043.P6335797319931353182

/-!
# A246044: Monoprimatic permutable primes: Decimal prime numbers whose digits cannot be rearranged to form another prime number. No leading zeros allowed.

The programs for A246044, there is no canonical definition to state claims against.
-/

/-! ## A246044.P10159405115935364274

`p?[A245808(n+1)]`
-/

namespace A246044.P10159405115935364274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246044.P10159405115935364274

/-! ## A246044.P5342331790422357196

`∩[A143260(n+1), A245808(n+1)]`
-/

namespace A246044.P5342331790422357196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P5342331790422357196

/-! ## A246044.P7784335306006642123

`∩[A076805(n+1), A245808(n+1)]`
-/

namespace A246044.P7784335306006642123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P7784335306006642123

/-! ## A246044.P1356841792415550458

`∩[A000040(n+1), A245808(n+1)]`
-/

namespace A246044.P1356841792415550458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P1356841792415550458

/-! ## A246044.P18133051816226917391

`∩[A008578(n+1), A245808(n+1)]`
-/

namespace A246044.P18133051816226917391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P18133051816226917391

/-! ## A246044.P1173249216229237799

`∩[A046022(n+1), A245808(n+1)]`
-/

namespace A246044.P1173249216229237799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P1173249216229237799

/-! ## A246044.P11157884320655211887

`∩[A051948(n+1), A245808(n+1)]`
-/

namespace A246044.P11157884320655211887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P11157884320655211887

/-! ## A246044.P4265619800695176842

`∩[A067126(n+1), A245808(n+1)]`
-/

namespace A246044.P4265619800695176842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P4265619800695176842

/-! ## A246044.P17853905700034602657

`∩[A116974(n+1), A245808(n+1)]`
-/

namespace A246044.P17853905700034602657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P17853905700034602657

/-! ## A246044.P6023636968442501729

`∩[A158611(n+1), A245808(n+1)]`
-/

namespace A246044.P6023636968442501729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P6023636968442501729

/-! ## A246044.P9180046874726665072

`∩[A175787(n+1), A245808(n+1)]`
-/

namespace A246044.P9180046874726665072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P9180046874726665072

/-! ## A246044.P150299966964515520

`filter[A245808(n+1), A010051(#)]`
-/

namespace A246044.P150299966964515520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A246044.P150299966964515520

/-! ## A246044.P160367830528542030

`∩[A066050(n+1), A245808(n+1)]`
-/

namespace A246044.P160367830528542030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P160367830528542030

/-! ## A246044.P13055516617900014054

`∩[A251595(n+1), A245808(n+1)]`
-/

namespace A246044.P13055516617900014054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P13055516617900014054

/-! ## A246044.P5218949799698810598

`∩[A348283(n+1), A245808(n+1)]`
-/

namespace A246044.P5218949799698810598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P5218949799698810598

/-! ## A246044.P6473456831515727779

`∩[A062972(n+1), A245808(n+1)]`
-/

namespace A246044.P6473456831515727779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P6473456831515727779

/-! ## A246044.P10824584593543743463

`∩[A106843(n+1), A245808(n+1)]`
-/

namespace A246044.P10824584593543743463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P10824584593543743463

/-! ## A246044.P479967569723238644

`filter[A245808(n+1), A080339(#)]`
-/

namespace A246044.P479967569723238644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A246044.P479967569723238644

/-! ## A246044.P851601765828460999

`record[A051698(n)/A046810(A051698(n))]`
-/

namespace A246044.P851601765828460999
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051698 n : ℚ) / (A046810 (A051698 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246044.P851601765828460999

/-! ## A246044.P14796939508454057242

`∩[A005180(n+1), A245808(n+1)]`
-/

namespace A246044.P14796939508454057242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246044.P14796939508454057242

/-!
# A246045: Biprimatic permutable primes: prime numbers whose digits can be rearranged to form exactly one other prime number. No leading zeros allowed.

The programs for A246045, there is no canonical definition to state claims against.
-/

/-! ## A246045.P10105772419881145380

`p?[A246043(n+1)]`
-/

namespace A246045.P10105772419881145380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246045.P10105772419881145380

/-! ## A246045.P4736810504880903768

`∩[A000040(n+1), A246043(n+1)]`
-/

namespace A246045.P4736810504880903768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P4736810504880903768

/-! ## A246045.P5554982582916556506

`∩[A004139(n+1), A246043(n+1)]`
-/

namespace A246045.P5554982582916556506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P5554982582916556506

/-! ## A246045.P3404649026232505354

`∩[A006005(n+1), A246043(n+1)]`
-/

namespace A246045.P3404649026232505354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P3404649026232505354

/-! ## A246045.P13111950510766137644

`∩[A008578(n+1), A246043(n+1)]`
-/

namespace A246045.P13111950510766137644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P13111950510766137644

/-! ## A246045.P5993924418810402581

`∩[A033946(n+1), A246043(n+1)]`
-/

namespace A246045.P5993924418810402581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P5993924418810402581

/-! ## A246045.P14095439144414512650

`∩[A045319(n+1), A246043(n+1)]`
-/

namespace A246045.P14095439144414512650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P14095439144414512650

/-! ## A246045.P7543912941735255843

`∩[A045344(n+1), A246043(n+1)]`
-/

namespace A246045.P7543912941735255843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P7543912941735255843

/-! ## A246045.P16909792011986549073

`∩[A046022(n+1), A246043(n+1)]`
-/

namespace A246045.P16909792011986549073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P16909792011986549073

/-! ## A246045.P2661162887062225014

`∩[A051948(n+1), A246043(n+1)]`
-/

namespace A246045.P2661162887062225014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P2661162887062225014

/-! ## A246045.P4277284681777815159

`∩[A053813(n+1), A246043(n+1)]`
-/

namespace A246045.P4277284681777815159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P4277284681777815159

/-! ## A246045.P15419766177053945592

`∩[A055387(n+1), A246043(n+1)]`
-/

namespace A246045.P15419766177053945592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P15419766177053945592

/-! ## A246045.P17260416987399917756

`∩[A060634(n+1), A246043(n+1)]`
-/

namespace A246045.P17260416987399917756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P17260416987399917756

/-! ## A246045.P3113863626587135758

`∩[A062972(n+1), A246043(n+1)]`
-/

namespace A246045.P3113863626587135758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P3113863626587135758

/-! ## A246045.P16696816670696923700

`∩[A065091(n+1), A246043(n+1)]`
-/

namespace A246045.P16696816670696923700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P16696816670696923700

/-! ## A246045.P4006719234965123266

`∩[A065396(n+1), A246043(n+1)]`
-/

namespace A246045.P4006719234965123266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P4006719234965123266

/-! ## A246045.P12725532513588330200

`∩[A067126(n+1), A246043(n+1)]`
-/

namespace A246045.P12725532513588330200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P12725532513588330200

/-! ## A246045.P16259126650075368008

`∩[A075763(n+1), A246043(n+1)]`
-/

namespace A246045.P16259126650075368008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P16259126650075368008

/-! ## A246045.P14413293418664343300

`∩[A083249(n+1), A246043(n+1)]`
-/

namespace A246045.P14413293418664343300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P14413293418664343300

/-! ## A246045.P10686387972010162508

`∩[A140826(n+1), A246043(n+1)]`
-/

namespace A246045.P10686387972010162508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246045.P10686387972010162508

/-!
# A246046: [Pi((n + Pi/2)/(Pi -1) - 1/2)]; complement of A062389.

The programs for A246046, there is no canonical definition to state claims against.
-/

/-! ## A246046.P2611683914438197903

`lt[round(tan(n)), tanh(n)]`
-/

namespace A246046.P2611683914438197903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246046.P2611683914438197903

/-! ## A246046.P9372950774670982911

`lt[acot(n), ratio[cos(n)]]`
-/

namespace A246046.P9372950774670982911
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246046.P9372950774670982911

/-! ## A246046.P15065468461422890937

`lt[acot(n), Δ[tan(n)]]`
-/

namespace A246046.P15065468461422890937
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246046.P15065468461422890937

/-! ## A246046.P99920896317010176

`comp[round(π*n)]+1`
-/

namespace A246046.P99920896317010176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (n : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A246046.P99920896317010176

/-! ## A246046.P12109475886003980509

`lt[tan(n)+1, atan(n)]`
-/

namespace A246046.P12109475886003980509
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ) + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246046.P12109475886003980509

/-! ## A246046.P6350957836641890987

`lt[1, atan(n)-tan(n)]`
-/

namespace A246046.P6350957836641890987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ) - Real.tan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246046.P6350957836641890987

/-! ## A246046.P5947757855305515834

`lt[(n^tan(n))², n]`
-/

namespace A246046.P5947757855305515834
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) ^ (Real.tan (n : ℝ))) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246046.P5947757855305515834

/-! ## A246046.P3059646294700775771

`lt[∑[n]^tan(n), n]`
-/

namespace A246046.P3059646294700775771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) ^ (Real.tan (n : ℝ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246046.P3059646294700775771

/-! ## A246046.P8275576651314102775

`lt[2*n*tan(n), n]`
-/

namespace A246046.P8275576651314102775
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℝ) * Real.tan (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246046.P8275576651314102775

/-! ## A246046.P14076722200257487273

`lt[ratio[n+1], Δ[tan(n)]]`
-/

namespace A246046.P14076722200257487273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f4 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f3 j) n

end

end A246046.P14076722200257487273

/-!
# A246047: Irregular triangle read by rows, of partial serial probabilities T(n,k)_{2,3} (see "comments" for definitions and explanation).

The programs for A246047, there is no canonical definition to state claims against.
-/

/-! ## A246047.P12361043699092604567

`abs(A290885(Δ[A003261(n+1)]))`
-/

namespace A246047.P12361043699092604567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290885 (f1 (n + 1) - f1 n).toNat|

end

end A246047.P12361043699092604567

/-! ## A246047.P11647117602979879674

`A059905(gcd(A000165(n), A130129(n)))`
-/

namespace A246047.P11647117602979879674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (Int.gcd (A000165 n) (A130129 n))

end

end A246047.P11647117602979879674

/-! ## A246047.P904533228618527264

`A016116(A032555(n+1))*A238350(n)`
-/

namespace A246047.P904533228618527264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A032555 (n + 1)).toNat * A238350 n

end

end A246047.P904533228618527264

/-! ## A246047.P12108799297064441989

`and(A056391(n+1), A059252(A041150(n)))`
-/

namespace A246047.P12108799297064441989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056391 (n + 1)) (A059252 (A041150 n).toNat)

end

end A246047.P12108799297064441989

/-! ## A246047.P14060998122025765775

`and(A048671(A072486(n+1)), A056391(n+1))`
-/

namespace A246047.P14060998122025765775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048671 (A072486 (n + 1)).toNat) (A056391 (n + 1))

end

end A246047.P14060998122025765775

/-!
# A246050: Number of endofunctions on [2n] where the smallest cycle length equals n.

The programs for A246050, there is no canonical definition to state claims against.
-/

/-! ## A246050.P9800547965032316103

`A243098(∑[4*n])`
-/

namespace A246050.P9800547965032316103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243098 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246050.P9800547965032316103

/-! ## A246050.P9387393346641426068

`A246049(∑[4*n])`
-/

namespace A246050.P9387393346641426068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246050.P9387393346641426068

/-! ## A246050.P4465396532970818240

`record[A246049(∑[A071045(n)])]`
-/

namespace A246050.P4465396532970818240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246050.P4465396532970818240

/-! ## A246050.P9114821654875519182

`gcd(A000038(n), A246049(A046092(n)))`
-/

namespace A246050.P9114821654875519182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A246049 (A046092 n).toNat)

end

end A246050.P9114821654875519182

/-! ## A246050.P1020054714745222433

`lcm(A103444(n), A246049(A046092(n)))`
-/

namespace A246050.P1020054714745222433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103444 n) (A246049 (A046092 n).toNat)

end

end A246050.P1020054714745222433

/-!
# A246051: Triangle read by rows: numerator of h(n-k)*h(k)/h(n) where h(x) = zeta(2*x)*(4^x-2), 0<=k<=n.

The programs for A246051, there is no canonical definition to state claims against.
-/

/-! ## A246051.P18331990303631221231

`A130044(A022168(n)*A299602(n+1))`
-/

namespace A246051.P18331990303631221231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130044 (A022168 n * A299602 (n + 1)).toNat

end

end A246051.P18331990303631221231

/-! ## A246051.P244547601556947804

`A000124(A157221(n))-A008458(A299904(n))`
-/

namespace A246051.P244547601556947804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A157221 n).toNat - A008458 (A299904 n).toNat

end

end A246051.P244547601556947804

/-! ## A246051.P16808447501755016316

`A137754(∏{p}[n+1, lcm(#, n+1)])^(∑{d}[n+1, (n-#)%2]+1)`
-/

namespace A246051.P16808447501755016316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137754 (∏ p ∈ Nat.primeFactors (f1 n), Nat.lcm p (n + 1)) : ℚ) ^ (∑ d ∈ Nat.divisors (f2 n), Int.tmod ((n : ℤ) - (d : ℤ)) 2 + 1 : ℤ)

end

end A246051.P16808447501755016316

/-! ## A246051.P9774576230879931230

`A330773(A112556(n+1))`
-/

namespace A246051.P9774576230879931230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330773 (A112556 (n + 1)).toNat

end

end A246051.P9774576230879931230

/-! ## A246051.P10549843556863204613

`A318405(A182779(n+1))`
-/

namespace A246051.P10549843556863204613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318405 (A182779 (n + 1)).toNat

end

end A246051.P10549843556863204613

/-!
# A246052: Triangle read by rows: denominator of h(n-k)*h(k)/h(n) where h(x) = zeta(2*x)*(4^x-2), 0<=k<=n.

The programs for A246052, there is no canonical definition to state claims against.
-/

/-! ## A246052.P16680304048597585861

`∏{p}[A246053(A007318(n)), #]`
-/

namespace A246052.P16680304048597585861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246053 (A007318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A246052.P16680304048597585861

/-! ## A246052.P16691573287563007658

`∏{p}[A246053(A144151(n)), #]`
-/

namespace A246052.P16691573287563007658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246053 (A144151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A246052.P16691573287563007658

/-! ## A246052.P2178672368246039272

`∏{p}[A246053(A156354(n)), #]`
-/

namespace A246052.P2178672368246039272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246053 (A156354 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A246052.P2178672368246039272

/-! ## A246052.P5571197105420937384

`∏{p}[A246053(A034253(n+1)), #]`
-/

namespace A246052.P5571197105420937384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246053 (A034253 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A246052.P5571197105420937384

/-! ## A246052.P8766489735801642788

`A157638(A157221(n))+A132044(n)`
-/

namespace A246052.P8766489735801642788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157638 (A157221 n).toNat + A132044 n

end

end A246052.P8766489735801642788

/-!
# A246053: The denominator of h(n-k)*h(k)/h(n) where h(x) = zeta(2*x)*(4^x-2) and k = floor(n/2).

The programs for A246053, there is no canonical definition to state claims against.
-/

/-! ## A246053.P12307927112772283940

`A246052(∑[or(1, n)]-1)`
-/

namespace A246053.P12307927112772283940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246052 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A246053.P12307927112772283940

/-! ## A246053.P18130328448668373893

`A246052(floor(n²/2)+n)`
-/

namespace A246053.P18130328448668373893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246052 (⌊(n ^ 2 : ℚ) / 2⌋ + (n : ℤ)).toNat

end

end A246053.P18130328448668373893

/-!
# A246056: G.f.: Sum_{n>=0} x^n / (1-2*x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * 2^k * x^k] * [Sum_{k=0..n} C(n,k)^2 * 3^k * x^k].

The programs for A246056, there is no canonical definition to state claims against.
-/

/-! ## A246056.P10681599565020263728

`floor(A001951(7^n+n+6)/5)`
-/

namespace A246056.P10681599565020263728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001951 (7 ^ n + (n + 6)) : ℚ) / 5⌋

end

end A246056.P10681599565020263728

/-!
# A246057: a(n) = (5*10^n - 2)/3.

The programs for A246057, the canonical program `A246057.P12178568592539358401` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246057 has offset 0).

The definition of A246057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*10^n-2)/3` (program `A246057.P16563114375445679463`, by `A246057.P16563114375445679463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246057.P16563114375445679463

`(5*10^n-2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246057.P16563114375445679463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 10 ^ n : ℤ) - 2 : ℚ) / 3

end

end A246057.P16563114375445679463

namespace A246057

/-- `(5*10^n-2)/3` -/
def P16563114375445679463.Spec : Prop :=
  ∀ n, P16563114375445679463.a n = (A246057 n : ℚ)

theorem P16563114375445679463.correct : P16563114375445679463.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A246057, Nat.add_sub_cancel, A246057.P16563114375445679463.a, A246057.P12178568592539358401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A246057, Nat.add_sub_cancel, A246057.P16563114375445679463.a, A246057.P12178568592539358401.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A246057

/-! ## A246057.P12178568592539358401

`11*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A246057

/-- `11*a(n-1)-10*a(n-2)` -/
def P12178568592539358401.Spec : Prop :=
  ∀ n, P12178568592539358401.a n = A246057 n

theorem P12178568592539358401.correct : P12178568592539358401.Spec := by
  intro n
  simp only [A246057]

end A246057

/-! ## A246057.P2452528177243968643

`10*a(n-1)+6` with `a(0)=1`
-/

namespace A246057.P2452528177243968643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 6

end

end A246057.P2452528177243968643

namespace A246057

/-- `10*a(n-1)+6` -/
def P2452528177243968643.Spec : Prop :=
  ∀ n, (P2452528177243968643.a n : ℤ) = A246057 n

end A246057

/-! ## A246057.P2657660249036290844

`∑[10*a(n-1)]` with `a(0)=1, a(1)=15`
-/

namespace A246057.P2657660249036290844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246057.P2657660249036290844

namespace A246057

/-- `∑[10*a(n-1)]` -/
def P2657660249036290844.Spec : Prop :=
  ∀ n, (P2657660249036290844.a n : ℤ) = A246057 n

end A246057

/-! ## A246057.P16882743168224826006

`∑[floor(Δ[or(1, 10^n)]/6)]`
-/

namespace A246057.P16882743168224826006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246057.P16882743168224826006

namespace A246057

/-- `∑[floor(Δ[or(1, 10^n)]/6)]` -/
def P16882743168224826006.Spec : Prop :=
  ∀ n, P16882743168224826006.a n = A246057 n

end A246057

/-! ## A246057.P2884364598699129905

`6-floor(-10*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A246057.P2884364598699129905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 - (-(10 * a (n - 1)))

end

end A246057.P2884364598699129905

namespace A246057

/-- `6-floor(-10*a(n-1))` -/
def P2884364598699129905.Spec : Prop :=
  ∀ n, P2884364598699129905.a n = A246057 n

end A246057

/-! ## A246057.P1611292575521310164

`6-ceil(-10*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A246057.P1611292575521310164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 - (-(10 * a (n - 1)))

end

end A246057.P1611292575521310164

namespace A246057

/-- `6-ceil(-10*a(n-1))` -/
def P1611292575521310164.Spec : Prop :=
  ∀ n, P1611292575521310164.a n = A246057 n

end A246057

/-! ## A246057.P7400329173387593165

`A126109(n)-1`
-/

namespace A246057.P7400329173387593165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126109 n - 1

end

end A246057.P7400329173387593165

namespace A246057

/-- `A126109(n)-1` -/
def P7400329173387593165.Spec : Prop :=
  ∀ n, P7400329173387593165.a n = A246057 n

end A246057

/-! ## A246057.P16963873998484215487

`A173712(Δ[n²])`
-/

namespace A246057.P16963873998484215487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246057.P16963873998484215487

namespace A246057

/-- `A173712(Δ[n²])` -/
def P16963873998484215487.Spec : Prop :=
  ∀ n, P16963873998484215487.a n = A246057 n

end A246057

/-! ## A246057.P5570959393913048732

`3*A002279(n)+1`
-/

namespace A246057.P5570959393913048732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002279 n + 1

end

end A246057.P5570959393913048732

namespace A246057

/-- `3*A002279(n)+1` -/
def P5570959393913048732.Spec : Prop :=
  ∀ n, P5570959393913048732.a n = A246057 n

end A246057

/-! ## A246057.P15175470037627035270

`A086576(n)/3+1`
-/

namespace A246057.P15175470037627035270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086576 n : ℚ) / 3 + 1

end

end A246057.P15175470037627035270

namespace A246057

/-- `A086576(n)/3+1` -/
def P15175470037627035270.Spec : Prop :=
  ∀ n, P15175470037627035270.a n = (A246057 n : ℚ)

end A246057

/-! ## A246057.P13983997594351842445

`5*A002277(n)+1`
-/

namespace A246057.P13983997594351842445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002277 n + 1

end

end A246057.P13983997594351842445

namespace A246057

/-- `5*A002277(n)+1` -/
def P13983997594351842445.Spec : Prop :=
  ∀ n, P13983997594351842445.a n = A246057 n

end A246057

/-! ## A246057.P12702685796800987946

`3*A093142(n)-2`
-/

namespace A246057.P12702685796800987946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A093142 n - 2

end

end A246057.P12702685796800987946

namespace A246057

/-- `3*A093142(n)-2` -/
def P12702685796800987946.Spec : Prop :=
  ∀ n, P12702685796800987946.a n = A246057 n

end A246057

/-! ## A246057.P15310284092440925572

`A199685(n)/3-1`
-/

namespace A246057.P15310284092440925572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199685 n : ℚ) / 3 - 1

end

end A246057.P15310284092440925572

namespace A246057

/-- `A199685(n)/3-1` -/
def P15310284092440925572.Spec : Prop :=
  ∀ n, P15310284092440925572.a n = (A246057 n : ℚ)

end A246057

/-! ## A246057.P2090365313319888104

`3*A178769(n)-5`
-/

namespace A246057.P2090365313319888104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A178769 n - 5

end

end A246057.P2090365313319888104

namespace A246057

/-- `3*A178769(n)-5` -/
def P2090365313319888104.Spec : Prop :=
  ∀ n, P2090365313319888104.a n = A246057 n

end A246057

/-! ## A246057.P11932084850299316647

`5*A093137(n)-4`
-/

namespace A246057.P11932084850299316647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A093137 n - 4

end

end A246057.P11932084850299316647

namespace A246057

/-- `5*A093137(n)-4` -/
def P11932084850299316647.Spec : Prop :=
  ∀ n, P11932084850299316647.a n = A246057 n

end A246057

/-! ## A246057.P4995759859939257953

`10^n+A002280(n)`
-/

namespace A246057.P4995759859939257953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + A002280 n

end

end A246057.P4995759859939257953

namespace A246057

/-- `10^n+A002280(n)` -/
def P4995759859939257953.Spec : Prop :=
  ∀ n, P4995759859939257953.a n = A246057 n

end A246057

/-! ## A246057.P15169910404387108196

`A002279(n)+A000042(n+1)`
-/

namespace A246057.P15169910404387108196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n + A000042 (n + 1)

end

end A246057.P15169910404387108196

namespace A246057

/-- `A002279(n)+A000042(n+1)` -/
def P15169910404387108196.Spec : Prop :=
  ∀ n, P15169910404387108196.a n = A246057 n

end A246057

/-! ## A246057.P514840943808466059

`A002279(n)+A002275(n+1)`
-/

namespace A246057.P514840943808466059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n + A002275 (n + 1)

end

end A246057.P514840943808466059

namespace A246057

/-- `A002279(n)+A002275(n+1)` -/
def P514840943808466059.Spec : Prop :=
  ∀ n, P514840943808466059.a n = A246057 n

end A246057

/-!
# A246058: a(n) = (16*10^n - 7)/9.

The programs for A246058, the canonical program `A246058.P13217944311226156159` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246058 has offset 0).

The definition of A246058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(16*10^n-7)/9` (program `A246058.P13296102433562048326`, by `A246058.P13296102433562048326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246058.P13217944311226156159

`11*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A246058

/-- `11*a(n-1)-10*a(n-2)` -/
def P13217944311226156159.Spec : Prop :=
  ∀ n, P13217944311226156159.a n = A246058 n

theorem P13217944311226156159.correct : P13217944311226156159.Spec := by
  intro n
  simp only [A246058]

end A246058

/-! ## A246058.P13296102433562048326

`(16*10^n-7)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246058.P13296102433562048326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 * 10 ^ n : ℤ) - 7 : ℚ) / 9

end

end A246058.P13296102433562048326

namespace A246058

/-- `(16*10^n-7)/9` -/
def P13296102433562048326.Spec : Prop :=
  ∀ n, P13296102433562048326.a n = (A246058 n : ℚ)

theorem P13296102433562048326.correct : P13296102433562048326.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A246058, Nat.add_sub_cancel, A246058.P13296102433562048326.a, A246058.P13217944311226156159.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A246058, Nat.add_sub_cancel, A246058.P13296102433562048326.a, A246058.P13217944311226156159.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A246058

/-! ## A246058.P17174265005215617203

`10*a(n-1)+7` with `a(0)=1`
-/

namespace A246058.P17174265005215617203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 7

end

end A246058.P17174265005215617203

namespace A246058

/-- `10*a(n-1)+7` -/
def P17174265005215617203.Spec : Prop :=
  ∀ n, (P17174265005215617203.a n : ℤ) = A246058 n

end A246058

/-! ## A246058.P11276866639567230401

`lcm(10, a(n-1))+7` with `a(0)=1`
-/

namespace A246058.P11276866639567230401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 10 (a (n - 1)) + 7

end

end A246058.P11276866639567230401

namespace A246058

/-- `lcm(10, a(n-1))+7` -/
def P11276866639567230401.Spec : Prop :=
  ∀ n, (P11276866639567230401.a n : ℤ) = A246058 n

end A246058

/-! ## A246058.P5949620084987181293

`xor(27, 10*a(n-1))` with `a(0)=1`
-/

namespace A246058.P5949620084987181293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 27 (10 * a (n - 1))

end

end A246058.P5949620084987181293

namespace A246058

/-- `xor(27, 10*a(n-1))` -/
def P5949620084987181293.Spec : Prop :=
  ∀ n, (P5949620084987181293.a n : ℤ) = A246058 n

end A246058

/-! ## A246058.P6283528724914874597

`∑[10*a(n-1)]` with `a(0)=1, a(1)=16`
-/

namespace A246058.P6283528724914874597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246058.P6283528724914874597

namespace A246058

/-- `∑[10*a(n-1)]` -/
def P6283528724914874597.Spec : Prop :=
  ∀ n, (P6283528724914874597.a n : ℤ) = A246058 n

end A246058

/-! ## A246058.P8605295405818315885

`7-floor(-10*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A246058.P8605295405818315885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 - (-(10 * a (n - 1)))

end

end A246058.P8605295405818315885

namespace A246058

/-- `7-floor(-10*a(n-1))` -/
def P8605295405818315885.Spec : Prop :=
  ∀ n, P8605295405818315885.a n = A246058 n

end A246058

/-! ## A246058.P14568239984675332131

`7-ceil(-10*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A246058.P14568239984675332131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 - (-(10 * a (n - 1)))

end

end A246058.P14568239984675332131

namespace A246058

/-- `7-ceil(-10*a(n-1))` -/
def P14568239984675332131.Spec : Prop :=
  ∀ n, P14568239984675332131.a n = A246058 n

end A246058

/-! ## A246058.P15026652962440110317

`2*A002282(n)+1`
-/

namespace A246058.P15026652962440110317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002282 n + 1

end

end A246058.P15026652962440110317

namespace A246058

/-- `2*A002282(n)+1` -/
def P15026652962440110317.Spec : Prop :=
  ∀ n, P15026652962440110317.a n = A246058 n

end A246058

/-! ## A246058.P5353799598282278937

`2*A059482(n)-1`
-/

namespace A246058.P5353799598282278937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059482 n - 1

end

end A246058.P5353799598282278937

namespace A246058

/-- `2*A059482(n)-1` -/
def P5353799598282278937.Spec : Prop :=
  ∀ n, P5353799598282278937.a n = A246058 n

end A246058

/-! ## A246058.P16750700735562809159

`4*A002278(n)+1`
-/

namespace A246058.P16750700735562809159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002278 n + 1

end

end A246058.P16750700735562809159

namespace A246058

/-- `4*A002278(n)+1` -/
def P16750700735562809159.Spec : Prop :=
  ∀ n, P16750700735562809159.a n = A246058 n

end A246058

/-! ## A246058.P686623228235374694

`4*A093140(n)-3`
-/

namespace A246058.P686623228235374694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A093140 n - 3

end

end A246058.P686623228235374694

namespace A246058

/-- `4*A093140(n)-3` -/
def P686623228235374694.Spec : Prop :=
  ∀ n, P686623228235374694.a n = A246058 n

end A246058

/-! ## A246058.P11479164663178341003

`8*A002276(n)+1`
-/

namespace A246058.P11479164663178341003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002276 n + 1

end

end A246058.P11479164663178341003

namespace A246058

/-- `8*A002276(n)+1` -/
def P11479164663178341003.Spec : Prop :=
  ∀ n, P11479164663178341003.a n = A246058 n

end A246058

/-! ## A246058.P5467057723657937983

`10^n+A002281(n)`
-/

namespace A246058.P5467057723657937983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + A002281 n

end

end A246058.P5467057723657937983

namespace A246058

/-- `10^n+A002281(n)` -/
def P5467057723657937983.Spec : Prop :=
  ∀ n, P5467057723657937983.a n = A246058 n

end A246058

/-! ## A246058.P9439547535644661977

`ceil(A173810(n+1)/5)`
-/

namespace A246058.P9439547535644661977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173810 (n + 1) : ℚ) / 5⌉

end

end A246058.P9439547535644661977

namespace A246058

/-- `ceil(A173810(n+1)/5)` -/
def P9439547535644661977.Spec : Prop :=
  ∀ n, P9439547535644661977.a n = A246058 n

end A246058

/-! ## A246058.P16822374071324720524

`ceil(A173811(n+1)/5)`
-/

namespace A246058.P16822374071324720524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173811 (n + 1) : ℚ) / 5⌉

end

end A246058.P16822374071324720524

namespace A246058

/-- `ceil(A173811(n+1)/5)` -/
def P16822374071324720524.Spec : Prop :=
  ∀ n, P16822374071324720524.a n = A246058 n

end A246058

/-! ## A246058.P3376834594921652970

`∑[2*A346178(n)]-1`
-/

namespace A246058.P3376834594921652970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A346178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A246058.P3376834594921652970

namespace A246058

/-- `∑[2*A346178(n)]-1` -/
def P3376834594921652970.Spec : Prop :=
  ∀ n, P3376834594921652970.a n = A246058 n

end A246058

/-! ## A246058.P13243965613238885881

`2*A328333(2*n)-1`
-/

namespace A246058.P13243965613238885881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328333 (2 * n) - 1

end

end A246058.P13243965613238885881

namespace A246058

/-- `2*A328333(2*n)-1` -/
def P13243965613238885881.Spec : Prop :=
  ∀ n, P13243965613238885881.a n = A246058 n

end A246058

/-! ## A246058.P2127508226519256457

`4*4*A002275(n)+1`
-/

namespace A246058.P2127508226519256457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A002275 n) + 1

end

end A246058.P2127508226519256457

namespace A246058

/-- `4*4*A002275(n)+1` -/
def P2127508226519256457.Spec : Prop :=
  ∀ n, P2127508226519256457.a n = A246058 n

end A246058

/-!
# A246059: a(n) = (17*10^n - 8)/9.

The programs for A246059, the canonical program `A246059.P1142671869658676137` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246059 has offset 0).

The definition of A246059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(17*10^n-8)/9` (program `A246059.P10854167376403499442`, by `A246059.P10854167376403499442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246059.P1142671869658676137

`11*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A246059

/-- `11*a(n-1)-10*a(n-2)` -/
def P1142671869658676137.Spec : Prop :=
  ∀ n, P1142671869658676137.a n = A246059 n

theorem P1142671869658676137.correct : P1142671869658676137.Spec := by
  intro n
  simp only [A246059]

end A246059

/-! ## A246059.P10854167376403499442

`(17*10^n-8)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246059.P10854167376403499442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((17 * 10 ^ n : ℤ) - 8 : ℚ) / 9

end

end A246059.P10854167376403499442

namespace A246059

/-- `(17*10^n-8)/9` -/
def P10854167376403499442.Spec : Prop :=
  ∀ n, P10854167376403499442.a n = (A246059 n : ℚ)

theorem P10854167376403499442.correct : P10854167376403499442.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A246059, Nat.add_sub_cancel, A246059.P10854167376403499442.a, A246059.P1142671869658676137.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A246059, Nat.add_sub_cancel, A246059.P10854167376403499442.a, A246059.P1142671869658676137.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A246059

/-! ## A246059.P3002063050424362933

`10*a(n-1)+8` with `a(0)=1`
-/

namespace A246059.P3002063050424362933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 8

end

end A246059.P3002063050424362933

namespace A246059

/-- `10*a(n-1)+8` -/
def P3002063050424362933.Spec : Prop :=
  ∀ n, (P3002063050424362933.a n : ℤ) = A246059 n

end A246059

/-! ## A246059.P16240934296941846324

`∑[10*a(n-1)]` with `a(0)=1, a(1)=17`
-/

namespace A246059.P16240934296941846324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246059.P16240934296941846324

namespace A246059

/-- `∑[10*a(n-1)]` -/
def P16240934296941846324.Spec : Prop :=
  ∀ n, (P16240934296941846324.a n : ℤ) = A246059 n

end A246059

/-! ## A246059.P1952803972373546327

`A117727(3*n)`
-/

namespace A246059.P1952803972373546327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117727 (3 * n)

end

end A246059.P1952803972373546327

namespace A246059

/-- `A117727(3*n)` -/
def P1952803972373546327.Spec : Prop :=
  ∀ n, P1952803972373546327.a n = A246059 n

end A246059

/-! ## A246059.P2934047525630606143

`A216261(7*n+2)`
-/

namespace A246059.P2934047525630606143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216261 (7 * n + 2)

end

end A246059.P2934047525630606143

namespace A246059

/-- `A216261(7*n+2)` -/
def P2934047525630606143.Spec : Prop :=
  ∀ n, P2934047525630606143.a n = A246059 n

end A246059

/-! ## A246059.P16271410294540526304

`10^n+A002282(n)`
-/

namespace A246059.P16271410294540526304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + A002282 n

end

end A246059.P16271410294540526304

namespace A246059

/-- `10^n+A002282(n)` -/
def P16271410294540526304.Spec : Prop :=
  ∀ n, P16271410294540526304.a n = A246059 n

end A246059

/-! ## A246059.P5625585533669835723

`A099915(n)+A002277(n)`
-/

namespace A246059.P5625585533669835723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099915 n + A002277 n

end

end A246059.P5625585533669835723

namespace A246059

/-- `A099915(n)+A002277(n)` -/
def P5625585533669835723.Spec : Prop :=
  ∀ n, P5625585533669835723.a n = A246059 n

end A246059

/-! ## A246059.P1962573018313617833

`A002281(n)+A000042(n+1)`
-/

namespace A246059.P1962573018313617833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n + A000042 (n + 1)

end

end A246059.P1962573018313617833

namespace A246059

/-- `A002281(n)+A000042(n+1)` -/
def P1962573018313617833.Spec : Prop :=
  ∀ n, P1962573018313617833.a n = A246059 n

end A246059

/-! ## A246059.P260259678170884674

`A002281(n)+A002275(n+1)`
-/

namespace A246059.P260259678170884674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n + A002275 (n + 1)

end

end A246059.P260259678170884674

namespace A246059

/-- `A002281(n)+A002275(n+1)` -/
def P260259678170884674.Spec : Prop :=
  ∀ n, P260259678170884674.a n = A246059 n

end A246059

/-! ## A246059.P14653137798550693532

`A067272(n+1)-A002275(n)`
-/

namespace A246059.P14653137798550693532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067272 (n + 1) - A002275 n

end

end A246059.P14653137798550693532

namespace A246059

/-- `A067272(n+1)-A002275(n)` -/
def P14653137798550693532.Spec : Prop :=
  ∀ n, P14653137798550693532.a n = A246059 n

end A246059

/-! ## A246059.P4144884320479558033

`A246058(n)+A098406(n)-2`
-/

namespace A246059.P4144884320479558033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246058 n + (A098406 n - 2)

end

end A246059.P4144884320479558033

namespace A246059

/-- `A246058(n)+A098406(n)-2` -/
def P4144884320479558033.Spec : Prop :=
  ∀ n, P4144884320479558033.a n = A246059 n

end A246059

/-! ## A246059.P13164772426998730882

`A246058(n)+A002276(n)/2`
-/

namespace A246059.P13164772426998730882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246058 n : ℚ) + (A002276 n : ℚ) / 2

end

end A246059.P13164772426998730882

namespace A246059

/-- `A246058(n)+A002276(n)/2` -/
def P13164772426998730882.Spec : Prop :=
  ∀ n, P13164772426998730882.a n = (A246059 n : ℚ)

end A246059

/-! ## A246059.P9525376869061165618

`A246058(n)+A002277(n)/3`
-/

namespace A246059.P9525376869061165618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246058 n : ℚ) + (A002277 n : ℚ) / 3

end

end A246059.P9525376869061165618

namespace A246059

/-- `A246058(n)+A002277(n)/3` -/
def P9525376869061165618.Spec : Prop :=
  ∀ n, P9525376869061165618.a n = (A246059 n : ℚ)

end A246059

/-! ## A246059.P6271965487256505876

`A246058(n)+A002283(n)/9`
-/

namespace A246059.P6271965487256505876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246058 n : ℚ) + (A002283 n : ℚ) / 9

end

end A246059.P6271965487256505876

namespace A246059

/-- `A246058(n)+A002283(n)/9` -/
def P6271965487256505876.Spec : Prop :=
  ∀ n, P6271965487256505876.a n = (A246059 n : ℚ)

end A246059

/-! ## A246059.P9852919656535622543

`∑[Δ[A093138(n)]-A011557(n)]`
-/

namespace A246059.P9852919656535622543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246059.P9852919656535622543

namespace A246059

/-- `∑[Δ[A093138(n)]-A011557(n)]` -/
def P9852919656535622543.Spec : Prop :=
  ∀ n, P9852919656535622543.a n = A246059 n

end A246059

/-! ## A246059.P7611395563947610234

`∑[A093136(n+1)-A093138(n)]`
-/

namespace A246059.P7611395563947610234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093136 (n + 1) - A093138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246059.P7611395563947610234

namespace A246059

/-- `∑[A093136(n+1)-A093138(n)]` -/
def P7611395563947610234.Spec : Prop :=
  ∀ n, P7611395563947610234.a n = A246059 n

end A246059

/-! ## A246059.P12738612057586967993

`A337099(2*(n+1))+A002281(n)`
-/

namespace A246059.P12738612057586967993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337099 (2 * (n + 1)) + A002281 n

end

end A246059.P12738612057586967993

namespace A246059

/-- `A337099(2*(n+1))+A002281(n)` -/
def P12738612057586967993.Spec : Prop :=
  ∀ n, P12738612057586967993.a n = A246059 n

end A246059

/-! ## A246059.P6815232379751288628

`A002275(n)+A246057(n)+A002275(n)`
-/

namespace A246059.P6815232379751288628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + (A246057 n + A002275 n)

end

end A246059.P6815232379751288628

namespace A246059

/-- `A002275(n)+A246057(n)+A002275(n)` -/
def P6815232379751288628.Spec : Prop :=
  ∀ n, P6815232379751288628.a n = A246059 n

end A246059

/-!
# A246062: G.f.: sqrt( (1 + sqrt(1+8*x)) / (1 + sqrt(1-8*x)) ).

The programs for A246062, the canonical program `A246062.P4162383363487901360` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246062 has offset 0).

The definition of A246062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246062.P4162383363487901360

`abs(A193618(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246062

/-- `abs(A193618(n))` -/
def P4162383363487901360.Spec : Prop :=
  ∀ n, P4162383363487901360.a n = A246062 n

theorem P4162383363487901360.correct : P4162383363487901360.Spec := by
  intro n
  simp only [A246062]

end A246062

/-! ## A246062.P13745313829157736216

`abs(A104565(A004273(n)))`
-/

namespace A246062.P13745313829157736216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104565 (A004273 n).toNat|

end

end A246062.P13745313829157736216

namespace A246062

/-- `abs(A104565(A004273(n)))` -/
def P13745313829157736216.Spec : Prop :=
  ∀ n, P13745313829157736216.a n = A246062 n

end A246062

/-! ## A246062.P13530233476614454077

`abs(A104565(record[A006369(n)]))`
-/

namespace A246062.P13530233476614454077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A246062.P13530233476614454077

namespace A246062

/-- `abs(A104565(record[A006369(n)]))` -/
def P13530233476614454077.Spec : Prop :=
  ∀ n, P13530233476614454077.a n = A246062 n

end A246062

/-! ## A246062.P3838032602205754631

`abs(A104565(record[A026741(n)]))`
-/

namespace A246062.P3838032602205754631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A246062.P3838032602205754631

namespace A246062

/-- `abs(A104565(record[A026741(n)]))` -/
def P3838032602205754631.Spec : Prop :=
  ∀ n, P3838032602205754631.a n = A246062 n

end A246062

/-! ## A246062.P16437431907606582074

`lcm(A048896(n), A104565(A004273(n)))`
-/

namespace A246062.P16437431907606582074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048896 n) (A104565 (A004273 n).toNat)

end

end A246062.P16437431907606582074

namespace A246062

/-- `lcm(A048896(n), A104565(A004273(n)))` -/
def P16437431907606582074.Spec : Prop :=
  ∀ n, (P16437431907606582074.a n : ℤ) = A246062 n

end A246062

/-! ## A246062.P12716177283758907588

`lcm(A020639(A008574(n)), A193618(n))`
-/

namespace A246062.P12716177283758907588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A008574 n).toNat) (A193618 n)

end

end A246062.P12716177283758907588

namespace A246062

/-- `lcm(A020639(A008574(n)), A193618(n))` -/
def P12716177283758907588.Spec : Prop :=
  ∀ n, (P12716177283758907588.a n : ℤ) = A246062 n

end A246062

/-!
# A246064: A variation of the Farey sequence read by rows; the row of order n is defined by the greatest whole numbers less than or equal to the values generated when the numerators of the Farey sequence (order n) are replaced by n itself.

The programs for A246064, there is no canonical definition to state claims against.
-/

/-! ## A246064.P2419106787260900131

`gcd(A000120(A013655(n)), A128628(n+1))`
-/

namespace A246064.P2419106787260900131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A013655 n).toNat) (A128628 (n + 1))

end

end A246064.P2419106787260900131

/-! ## A246064.P7165827955675905869

`gcd(A067931(A178803(n+1)), A137734(n))`
-/

namespace A246064.P7165827955675905869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067931 (A178803 (n + 1)).toNat) (A137734 n)

end

end A246064.P7165827955675905869

/-! ## A246064.P2639155667288298421

`A091090(A167606(n)+A139597(n))`
-/

namespace A246064.P2639155667288298421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A167606 n + A139597 n).toNat

end

end A246064.P2639155667288298421

/-! ## A246064.P9719185210778547529

`A161789(∑[A193592(n)]^A219347(n))`
-/

namespace A246064.P9719185210778547529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161789 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A219347 n : ℤ))).toNat

end

end A246064.P9719185210778547529

/-! ## A246064.P14157236888266403364

`A000688(A198585(n+1)+A000292(n))`
-/

namespace A246064.P14157236888266403364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A198585 (n + 1) + A000292 n).toNat

end

end A246064.P14157236888266403364

/-!
# A246065: a(n) = Sum_{k=0..n}C(n,k)^2*C(2k,k)/(2k-1), where C(n,k) denotes the binomial coefficient n!/(k!*(n-k)!).

The programs for A246065, there is no canonical definition to state claims against.
-/

/-! ## A246065.P2140119296053722663

`2^n+n*a(n-1)+3^C(a(n-1), 68)+n` with `a(0)=-1, a(1)=1`
-/

namespace A246065.P2140119296053722663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  (2 ^ n : ℤ) + (n : ℤ) * a (n - 1) + (3 ^ Nat.choose (a (n - 1)).toNat 68 + n : ℤ)

end

end A246065.P2140119296053722663

/-!
# A246066: Least k such that Lppf(k) > Gpf(k) + n, where Lppf(k) is the largest prime power factor of k and Gpf(k) is the greatest prime factor of k.

The programs for A246066, there is no canonical definition to state claims against.
-/

/-! ## A246066.P11654588132226868896

`A246067(∑[char[A246068(n+1)]])`
-/

namespace A246066.P11654588132226868896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246068 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246067 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246066.P11654588132226868896

/-! ## A246066.P8165215980727518378

`A246067(∑[char[record[(n+2-A014963(n+2))%(n+1)]]])`
-/

namespace A246066.P8165215980727518378
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 2 : ℤ) - A014963 (n + 2)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246067 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246066.P8165215980727518378

/-!
# A246067: Record values in A246066.

The programs for A246067, there is no canonical definition to state claims against.
-/

/-! ## A246067.P3038538737364116649

`record[A246066(lcm(2, n))]`
-/

namespace A246067.P3038538737364116649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246066 (Nat.lcm 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246067.P3038538737364116649

/-! ## A246067.P5158380898682633834

`A246066(a(n-1)-2)` with `a(0)=4`
-/

namespace A246067.P5158380898682633834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A246066 (a (n - 1) - 2).toNat

end

end A246067.P5158380898682633834

/-! ## A246067.P10985718699136793821

`record[A246066(n)-val(n+1, 2)]`
-/

namespace A246067.P10985718699136793821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246066 n - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246067.P10985718699136793821

/-! ## A246067.P17111456739115450866

`record[A246066(A341166(n))]`
-/

namespace A246067.P17111456739115450866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246066 (A341166 (n + 36)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246067.P17111456739115450866

/-! ## A246067.P11416408478976059479

`A246066(A246068(n+1))`
-/

namespace A246067.P11416408478976059479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246066 (A246068 (n + 1)).toNat

end

end A246067.P11416408478976059479

/-!
# A246068: Indices of records in A246066.

The programs for A246068, there is no canonical definition to state claims against.
-/

/-! ## A246068.P16684699351105640085

`record[(A306458(n+1)-1)*A258567(n+1)]`
-/

namespace A246068.P16684699351105640085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A306458 (n + 1) - 1) * A258567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246068.P16684699351105640085

/-! ## A246068.P17238086648833220332

`record[A065642(A306458(n+1))-A084371(n+1)]`
-/

namespace A246068.P17238086648833220332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A306458 (n + 1)).toNat - A084371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246068.P17238086648833220332

/-! ## A246068.P10220067178723824358

`record[A065642(A306458(n+1))-A258567(n+1)]`
-/

namespace A246068.P10220067178723824358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A306458 (n + 1)).toNat - A258567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246068.P10220067178723824358

/-! ## A246068.P13467954281075302732

`record[A000961(n+1)-A025473(n+1)]`
-/

namespace A246068.P13467954281075302732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246068.P13467954281075302732

/-! ## A246068.P8140843204017981447

`record[sqrt(A056798(n+1))-A025473(n+1)]`
-/

namespace A246068.P8140843204017981447
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 1) : ℝ) - (A025473 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246068.P8140843204017981447

/-! ## A246068.P7341759491769570770

`record[A025473(n+1)^A025474(n+1)-A025473(n+1)]`
-/

namespace A246068.P7341759491769570770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025473 (n + 1) : ℚ) ^ (A025474 (n + 1) : ℤ) - (A025473 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246068.P7341759491769570770

/-! ## A246068.P16259067286728966246

`record[A008475(n+1)-A008472(n+1)]`
-/

namespace A246068.P16259067286728966246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246068.P16259067286728966246

/-! ## A246068.P5846711450944279707

`record[A008475(n+2)-A006530(n+2)]`
-/

namespace A246068.P5846711450944279707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 2) - A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246068.P5846711450944279707

/-! ## A246068.P9112788840088507494

`record[A008475(n+2)-A007947(n+2)]`
-/

namespace A246068.P9112788840088507494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 2) - A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246068.P9112788840088507494

/-! ## A246068.P4102717498072898158

`record[A025475(n+1)-A006530(A025475(n+1))]`
-/

namespace A246068.P4102717498072898158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1) - A006530 (A025475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246068.P4102717498072898158

/-! ## A246068.P7629983453207335870

`record[A163813(n+1)-A006530(A163813(n+1))]`
-/

namespace A246068.P7629983453207335870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1) - A006530 (A163813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246068.P7629983453207335870

/-!
# A246069: Number of maximal classes determined by permutations.

The programs for A246069, there is no canonical definition to state claims against.
-/

/-! ## A246069.P14064079347360107531

`C(A147955(n), A377282(A056000(n+2)))`
-/

namespace A246069.P14064079347360107531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A147955 n).toNat (A377282 (A056000 (n + 2)).toNat).toNat

end

end A246069.P14064079347360107531

/-! ## A246069.P8335474944817903211

`A194061(A130380(n))%(4^n)`
-/

namespace A246069.P8335474944817903211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194061 (A130380 n).toNat) (4 ^ n : ℤ)

end

end A246069.P8335474944817903211

/-! ## A246069.P9519459122055591174

`C(lt[A354226(n+1), 3], A354226(n+1))`
-/

namespace A246069.P9519459122055591174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354226 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) (A354226 (n + 1)).toNat

end

end A246069.P9519459122055591174

/-!
# A246070: Number A(n,k) of endofunctions f on [2n] satisfying f^k(i) = i for all i in [n]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A246070, there is no canonical definition to state claims against.
-/

/-! ## A246070.P17842095941228928456

`16^a(n-1)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=1, a(4)=2`
-/

namespace A246070.P17842095941228928456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 1, 2] fun n a =>
  16 ^ a (n - 1)

end

end A246070.P17842095941228928456

/-! ## A246070.P9063607143137746734

`A067480(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4, a(3)=1`
-/

namespace A246070.P9063607143137746734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 1] fun n a =>
  A067480 (a (n - 1)).toNat

end

end A246070.P9063607143137746734

/-!
# A246071: Number of endofunctions f on [2n] satisfying f^n(i) = i for all i in [n].

The programs for A246071, there is no canonical definition to state claims against.
-/

/-! ## A246071.P3017215882710404372

`A246070(∑[4*n])`
-/

namespace A246071.P3017215882710404372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246070 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246071.P3017215882710404372

/-! ## A246071.P3653547483196857560

`A246070(A046092(n))*A304042(n)`
-/

namespace A246071.P3653547483196857560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246070 (A046092 n).toNat * A304042 n

end

end A246071.P3653547483196857560

/-! ## A246071.P17551314225522534447

`A246070(A046092(n))^A178334(n)`
-/

namespace A246071.P17551314225522534447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246070 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A246071.P17551314225522534447

/-! ## A246071.P4888486484670765198

`gcd(A151933(n), A246070(A046092(n)))`
-/

namespace A246071.P4888486484670765198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A246070 (A046092 n).toNat)

end

end A246071.P4888486484670765198

/-! ## A246071.P7687104177220265881

`lcm(A028310(n), A246070(A046092(n)))`
-/

namespace A246071.P7687104177220265881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A246070 (A046092 n).toNat)

end

end A246071.P7687104177220265881

/-!
# A246072: Number A(n,k) of permutations p on [2n] satisfying p^k(i) = i for all i in [n]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A246072, there is no canonical definition to state claims against.
-/

/-! ## A246072.P2551367908098338903

`∏{e}[A175500(3*n+2), #!]!`
-/

namespace A246072.P2551367908098338903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p))

end

end A246072.P2551367908098338903

/-! ## A246072.P11351461645917805625

`val(A000290(A276722(n)), 2)!`
-/

namespace A246072.P11351461645917805625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A000290 (A276722 n).toNat).toNat 2)

end

end A246072.P11351461645917805625

/-! ## A246072.P17634167458385929800

`A333144(lcm(5, A167707(n+1)))`
-/

namespace A246072.P17634167458385929800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333144 (Int.lcm 5 (A167707 (n + 1)))

end

end A246072.P17634167458385929800

/-! ## A246072.P3173242688624589713

`(A048267(n)%A158405(n+1))!`
-/

namespace A246072.P3173242688624589713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A048267 (n + 28)) (A158405 (n + 1))).toNat

end

end A246072.P3173242688624589713

/-! ## A246072.P8437683966422431232

`and(A152278(n+5), A302402(n))!`
-/

namespace A246072.P8437683966422431232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (A152278 (n + 5)) (A302402 n)).toNat

end

end A246072.P8437683966422431232

/-!
# A246073: Number of permutations p on [2n] satisfying p^n(i) = i for all i in [n].

The programs for A246073, there is no canonical definition to state claims against.
-/

/-! ## A246073.P13666039981294721969

`A246072(∑[4*n])`
-/

namespace A246073.P13666039981294721969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246072 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246073.P13666039981294721969

/-! ## A246073.P15888698958789678521

`A246072(A046092(n))+A025443(n)`
-/

namespace A246073.P15888698958789678521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246072 (A046092 n).toNat + A025443 n

end

end A246073.P15888698958789678521

/-! ## A246073.P11831787175789740341

`A246072(A046092(n))*A304042(n)`
-/

namespace A246073.P11831787175789740341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246072 (A046092 n).toNat * A304042 n

end

end A246073.P11831787175789740341

/-! ## A246073.P168168933076013098

`A246072(A046092(n))^A178334(n)`
-/

namespace A246073.P168168933076013098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246072 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A246073.P168168933076013098

/-! ## A246073.P15416004568393146824

`gcd(A151933(n), A246072(A046092(n)))`
-/

namespace A246073.P15416004568393146824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A246072 (A046092 n).toNat)

end

end A246073.P15416004568393146824

/-!
# A246074: Paradigm Shift Sequence for a (-4,5) production scheme with replacement.

The programs for A246074, the canonical program `A246074.P4921777873160455435` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246074 has offset 1).

The definition of A246074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246074.P4921777873160455435

`∑[A011782(floor(n/6))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246074

/-- `∑[A011782(floor(n/6))]` -/
def P4921777873160455435.Spec : Prop :=
  ∀ n, P4921777873160455435.a n = A246074 (n + 1)

theorem P4921777873160455435.correct : P4921777873160455435.Spec := by
  intro n
  simp only [A246074, Nat.add_sub_cancel]

end A246074

/-! ## A246074.P15275849671200215675

`∑[A166444(∑[A079979(n)])]`
-/

namespace A246074.P15275849671200215675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246074.P15275849671200215675

namespace A246074

/-- `∑[A166444(∑[A079979(n)])]` -/
def P15275849671200215675.Spec : Prop :=
  ∀ n, P15275849671200215675.a n = A246074 (n + 1)

end A246074

/-! ## A246074.P6613065780016272315

`∑[A324104(p?[A097992(n)])]`
-/

namespace A246074.P6613065780016272315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246074.P6613065780016272315

namespace A246074

/-- `∑[A324104(p?[A097992(n)])]` -/
def P6613065780016272315.Spec : Prop :=
  ∀ n, P6613065780016272315.a n = A246074 (n + 1)

end A246074

/-! ## A246074.P4189574485406673595

`∑[A324104(p?[A103221(n)])]`
-/

namespace A246074.P4189574485406673595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246074.P4189574485406673595

namespace A246074

/-- `∑[A324104(p?[A103221(n)])]` -/
def P4189574485406673595.Spec : Prop :=
  ∀ n, P4189574485406673595.a n = A246074 (n + 1)

end A246074

/-! ## A246074.P6539420668514333101

`∑[A324104(p?[A138999(n+1)])]`
-/

namespace A246074.P6539420668514333101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246074.P6539420668514333101

namespace A246074

/-- `∑[A324104(p?[A138999(n+1)])]` -/
def P6539420668514333101.Spec : Prop :=
  ∀ n, P6539420668514333101.a n = A246074 (n + 1)

end A246074

/-! ## A246074.P4182166133907254405

`∩[A129304(n+1), A246075(n+1)]`
-/

namespace A246074.P4182166133907254405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246074.P4182166133907254405

namespace A246074

/-- `∩[A129304(n+1), A246075(n+1)]` -/
def P4182166133907254405.Spec : Prop :=
  ∀ n, (P4182166133907254405.a n : ℤ) = A246074 (n + 1)

end A246074

/-! ## A246074.P10488294351321866628

`∩[A051038(n+1), A246075(n+1)]`
-/

namespace A246074.P10488294351321866628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246074.P10488294351321866628

namespace A246074

/-- `∩[A051038(n+1), A246075(n+1)]` -/
def P10488294351321866628.Spec : Prop :=
  ∀ n, (P10488294351321866628.a n : ℤ) = A246074 (n + 1)

end A246074

/-! ## A246074.P5893691836421185099

`∑[A000010(2^floor(n/6))]`
-/

namespace A246074.P5893691836421185099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 6⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246074.P5893691836421185099

namespace A246074

/-- `∑[A000010(2^floor(n/6))]` -/
def P5893691836421185099.Spec : Prop :=
  ∀ n, P5893691836421185099.a n = A246074 (n + 1)

end A246074

/-! ## A246074.P13728215394674412266

`∩[A084034(n+1), A246075(n+1)]`
-/

namespace A246074.P13728215394674412266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246074.P13728215394674412266

namespace A246074

/-- `∩[A084034(n+1), A246075(n+1)]` -/
def P13728215394674412266.Spec : Prop :=
  ∀ n, (P13728215394674412266.a n : ℤ) = A246074 (n + 1)

end A246074

/-! ## A246074.P7336732343209499252

`∩[A033637(n+1), A246075(n+1)]`
-/

namespace A246074.P7336732343209499252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246074.P7336732343209499252

namespace A246074

/-- `∩[A033637(n+1), A246075(n+1)]` -/
def P7336732343209499252.Spec : Prop :=
  ∀ n, (P7336732343209499252.a n : ℤ) = A246074 (n + 1)

end A246074

/-!
# A246075: Paradigm shift sequence for a (-3,5) production scheme with replacement.

The programs for A246075, the canonical program `A246075.P3779961468004013155` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246075 has offset 1).

The definition of A246075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246075.P3779961468004013155

`∑[A011782(floor(n/7))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246075

/-- `∑[A011782(floor(n/7))]` -/
def P3779961468004013155.Spec : Prop :=
  ∀ n, P3779961468004013155.a n = A246075 (n + 1)

theorem P3779961468004013155.correct : P3779961468004013155.Spec := by
  intro n
  simp only [A246075, Nat.add_sub_cancel]

end A246075

/-! ## A246075.P16550470148386117374

`∑[A166444(ceil((n+1)/7))]`
-/

namespace A246075.P16550470148386117374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 ⌈(n + 1 : ℚ) / 7⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246075.P16550470148386117374

namespace A246075

/-- `∑[A166444(ceil((n+1)/7))]` -/
def P16550470148386117374.Spec : Prop :=
  ∀ n, P16550470148386117374.a n = A246075 (n + 1)

end A246075

/-! ## A246075.P7635522651340536317

`∑[A131577(A028310(floor(n/7)))]`
-/

namespace A246075.P7635522651340536317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A028310 ⌊(n : ℚ) / 7⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246075.P7635522651340536317

namespace A246075

/-- `∑[A131577(A028310(floor(n/7)))]` -/
def P7635522651340536317.Spec : Prop :=
  ∀ n, P7635522651340536317.a n = A246075 (n + 1)

end A246075

/-! ## A246075.P4701873294760417637

`∑[A324104(p?[A132270(n+1)])]`
-/

namespace A246075.P4701873294760417637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246075.P4701873294760417637

namespace A246075

/-- `∑[A324104(p?[A132270(n+1)])]` -/
def P4701873294760417637.Spec : Prop :=
  ∀ n, P4701873294760417637.a n = A246075 (n + 1)

end A246075

/-! ## A246075.P17125551045980030541

`∑[A049063(A008767(n))]`
-/

namespace A246075.P17125551045980030541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 (A008767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246075.P17125551045980030541

namespace A246075

/-- `∑[A049063(A008767(n))]` -/
def P17125551045980030541.Spec : Prop :=
  ∀ n, P17125551045980030541.a n = A246075 (n + 1)

end A246075

/-! ## A246075.P6294571440237602999

`∑[A000010(A000079(floor(n/7)))]`
-/

namespace A246075.P6294571440237602999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 ⌊(n : ℚ) / 7⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246075.P6294571440237602999

namespace A246075

/-- `∑[A000010(A000079(floor(n/7)))]` -/
def P6294571440237602999.Spec : Prop :=
  ∀ n, P6294571440237602999.a n = A246075 (n + 1)

end A246075

/-! ## A246075.P14929155518313586177

`∑[A000010(2^A132270(n+1))]`
-/

namespace A246075.P14929155518313586177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A132270 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246075.P14929155518313586177

namespace A246075

/-- `∑[A000010(2^A132270(n+1))]` -/
def P14929155518313586177.Spec : Prop :=
  ∀ n, P14929155518313586177.a n = A246075 (n + 1)

end A246075

/-! ## A246075.P14262084033192517195

`∑[A293484(2^A132270(n+1))]`
-/

namespace A246075.P14262084033192517195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293484 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A132270 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246075.P14262084033192517195

namespace A246075

/-- `∑[A293484(2^A132270(n+1))]` -/
def P14262084033192517195.Spec : Prop :=
  ∀ n, P14262084033192517195.a n = A246075 (n + 1)

end A246075

/-! ## A246075.P1277643990571800674

`lt[3*(n+1)/and(n+1, -(n+1)), 42]+1`
-/

namespace A246075.P1277643990571800674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A246075.P1277643990571800674

namespace A246075

/-- `lt[3*(n+1)/and(n+1, -(n+1)), 42]+1` -/
def P1277643990571800674.Spec : Prop :=
  ∀ n, (P1277643990571800674.a n : ℤ) = A246075 (n + 1)

end A246075

/-! ## A246075.P15515619110813502164

`lt[A000265(n+1), 15]+1`
-/

namespace A246075.P15515619110813502164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246075.P15515619110813502164

namespace A246075

/-- `lt[A000265(n+1), 15]+1` -/
def P15515619110813502164.Spec : Prop :=
  ∀ n, (P15515619110813502164.a n : ℤ) = A246075 (n + 1)

end A246075

/-!
# A246076: Paradigm shift sequence for the (-2,5) production scheme with replacement.

The programs for A246076, there is no canonical definition to state claims against.
-/

/-! ## A246076.P10558093525035711063

`∑[∑[A341025(A055907(n))]]`
-/

namespace A246076.P10558093525035711063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A055907 n).toNat + 120)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246076.P10558093525035711063

/-! ## A246076.P2668642349203468806

`∑[∑[A316865(A281563(n+1)+1)]+1]`
-/

namespace A246076.P2668642349203468806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A281563 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246076.P2668642349203468806

/-! ## A246076.P15512113201849907282

`∑[A055642(A175899(A035441(n+1)))]`
-/

namespace A246076.P15512113201849907282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A175899 (A035441 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246076.P15512113201849907282

/-! ## A246076.P1081556203496046669

`∑[A178487(∑[A225816(n)])]`
-/

namespace A246076.P1081556203496046669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225816 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246076.P1081556203496046669

/-! ## A246076.P5704410954523143240

`∑[A055640(∏[A072170(n)])]`
-/

namespace A246076.P5704410954523143240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246076.P5704410954523143240

/-!
# A246077: Paradigm shift sequence for (-1,-3) production scheme with replacement.

The programs for A246077, there is no canonical definition to state claims against.
-/

/-! ## A246077.P4593647147426860314

`record[A065362(A129129(n))]`
-/

namespace A246077.P4593647147426860314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065362 (A129129 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246077.P4593647147426860314

/-! ## A246077.P17390943553187886141

`A360010(A358335(n+4)-A194441(n+4))`
-/

namespace A246077.P17390943553187886141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (A358335 (n + 4) - A194441 (n + 4)).toNat

end

end A246077.P17390943553187886141

/-! ## A246077.P6193404995809861946

`∑[floor((A333224(A146599(n+1))+2)/2)]`
-/

namespace A246077.P6193404995809861946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333224 (A146599 (n + 1)).toNat + 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246077.P6193404995809861946

/-! ## A246077.P2289801758246943428

`∑[∑[A374092(A000203(3*n+2))]+1]`
-/

namespace A246077.P2289801758246943428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374092 (A000203 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246077.P2289801758246943428

/-!
# A246078: Paradigm shift sequence for (-1,4) production scheme with replacement.

The programs for A246078, there is no canonical definition to state claims against.
-/

/-! ## A246078.P9884739608808895657

`∑[A125891(A194837(A274384(n+1)))]`
-/

namespace A246078.P9884739608808895657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125891 (A194837 (A274384 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246078.P9884739608808895657

/-! ## A246078.P6683871693486752800

`∑[∑[A266502(A164845(n))]]`
-/

namespace A246078.P6683871693486752800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (A164845 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246078.P6683871693486752800

/-! ## A246078.P16942965673373805382

`∑[A055642(A338213(n+2))]`
-/

namespace A246078.P16942965673373805382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A338213 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246078.P16942965673373805382

/-! ## A246078.P4320241643071718833

`∑[A055642(∏[A002637(n+1)])]`
-/

namespace A246078.P4320241643071718833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002637 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246078.P4320241643071718833

/-! ## A246078.P10697237468346165161

`∑[∑[A316867(A318027(n+4))]]`
-/

namespace A246078.P10697237468346165161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A318027 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246078.P10697237468346165161

/-!
# A246079: Paradigm shift sequence for (-1,5) production scheme with replacement.

The programs for A246079, there is no canonical definition to state claims against.
-/

/-! ## A246079.P11873419011075195039

`∑[A055642(A128232(floor(n/3)))]`
-/

namespace A246079.P11873419011075195039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A128232 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246079.P11873419011075195039

/-! ## A246079.P16994392179856355731

`∑[A055642(A324166(floor(n/3)))]`
-/

namespace A246079.P16994392179856355731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A324166 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246079.P16994392179856355731

/-! ## A246079.P3616513193230627282

`∑[∑[A000035(A353692(n+3))]]`
-/

namespace A246079.P3616513193230627282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A353692 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246079.P3616513193230627282

/-! ## A246079.P83129321890900278

`∑[A055642(A002212(A029379(n)))]`
-/

namespace A246079.P83129321890900278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A002212 (A029379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246079.P83129321890900278

/-! ## A246079.P1584368712566326244

`∑[A055642(A035661(A007294(n)))]`
-/

namespace A246079.P1584368712566326244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A035661 (A007294 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246079.P1584368712566326244

/-!
# A246080: Paradigm shift sequence for (0,2) production scheme with replacement.

The programs for A246080, the canonical program `A246080.P17938926747053045948` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246080 has offset 1).

The definition of A246080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246080.P17938926747053045948

`3*a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=10`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A246080

/-- `3*a(n-6)` -/
def P17938926747053045948.Spec : Prop :=
  ∀ n, (P17938926747053045948.a n : ℤ) = A246080 (n + 1)

theorem P17938926747053045948.correct : P17938926747053045948.Spec := by
  intro n
  simp only [A246080, Nat.add_sub_cancel]

end A246080

/-! ## A246080.P15774551006557056530

`A246082(2*(n+1))/2`
-/

namespace A246080.P15774551006557056530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246082 (2 * (n + 1)) : ℚ) / 2

end

end A246080.P15774551006557056530

namespace A246080

/-- `A246082(2*(n+1))/2` -/
def P15774551006557056530.Spec : Prop :=
  ∀ n, P15774551006557056530.a n = (A246080 (n + 1) : ℚ)

end A246080

/-! ## A246080.P9337174337574993939

`A246082(2*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A246080.P9337174337574993939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A246082 (2 * n + 1) - a (n - 1)

end

end A246080.P9337174337574993939

namespace A246080

/-- `A246082(2*n+1)-a(n-1)` -/
def P9337174337574993939.Spec : Prop :=
  ∀ n, P9337174337574993939.a n = A246080 (n + 1)

end A246080

/-! ## A246080.P4552326592992321219

`record[A246082(n+1)/A141310(n)]`
-/

namespace A246080.P4552326592992321219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246082 (n + 1) : ℚ) / (A141310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246080.P4552326592992321219

namespace A246080

/-- `record[A246082(n+1)/A141310(n)]` -/
def P4552326592992321219.Spec : Prop :=
  ∀ n, P4552326592992321219.a n = (A246080 (n + 1) : ℚ)

end A246080

/-! ## A246080.P6149182057857122752

`record[A246082(n+1)/A020639(n+1)]`
-/

namespace A246080.P6149182057857122752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246082 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246080.P6149182057857122752

namespace A246080

/-- `record[A246082(n+1)/A020639(n+1)]` -/
def P6149182057857122752.Spec : Prop :=
  ∀ n, P6149182057857122752.a n = (A246080 (n + 1) : ℚ)

end A246080

/-! ## A246080.P16766197507661134822

`record[A246082(n+1)/A074828(n+1)]`
-/

namespace A246080.P16766197507661134822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246082 (n + 1) : ℚ) / (A074828 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246080.P16766197507661134822

namespace A246080

/-- `record[A246082(n+1)/A074828(n+1)]` -/
def P16766197507661134822.Spec : Prop :=
  ∀ n, P16766197507661134822.a n = (A246080 (n + 1) : ℚ)

end A246080

/-! ## A246080.P10610476827898670847

`∑[A246082(2*(n+1))-A246082(2*n+1)]`
-/

namespace A246080.P10610476827898670847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246082 (2 * (n + 1)) - A246082 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246080.P10610476827898670847

namespace A246080

/-- `∑[A246082(2*(n+1))-A246082(2*n+1)]` -/
def P10610476827898670847.Spec : Prop :=
  ∀ n, P10610476827898670847.a n = A246080 (n + 1)

end A246080

/-!
# A246081: Paradigm shift sequence for (0,3) production scheme with replacement.

The programs for A246081, the canonical program `A246081.P9953062268493866683` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246081 has offset 1).

The definition of A246081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246081.P9953062268493866683

`∑[A182522(A131737(floor(n/3)))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246081

/-- `∑[A182522(A131737(floor(n/3)))]` -/
def P9953062268493866683.Spec : Prop :=
  ∀ n, P9953062268493866683.a n = A246081 (n + 1)

theorem P9953062268493866683.correct : P9953062268493866683.Spec := by
  intro n
  simp only [A246081, Nat.add_sub_cancel]

end A246081

/-! ## A246081.P15010635302755684874

`∑[A032742(A000792(floor(n/3)))]`
-/

namespace A246081.P15010635302755684874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000792 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246081.P15010635302755684874

namespace A246081

/-- `∑[A032742(A000792(floor(n/3)))]` -/
def P15010635302755684874.Spec : Prop :=
  ∀ n, P15010635302755684874.a n = A246081 (n + 1)

end A246081

/-! ## A246081.P14009187736545937450

`∑[A109037(A000040(A062051(n)))]`
-/

namespace A246081.P14009187736545937450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109037 (A000040 (A062051 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246081.P14009187736545937450

namespace A246081

/-- `∑[A109037(A000040(A062051(n)))]` -/
def P14009187736545937450.Spec : Prop :=
  ∀ n, P14009187736545937450.a n = A246081 (n + 1)

end A246081

/-! ## A246081.P16159811950996922746

`∑[A161358(A005246(floor(n/3)))]`
-/

namespace A246081.P16159811950996922746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A005246 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246081.P16159811950996922746

namespace A246081

/-- `∑[A161358(A005246(floor(n/3)))]` -/
def P16159811950996922746.Spec : Prop :=
  ∀ n, P16159811950996922746.a n = A246081 (n + 1)

end A246081

/-! ## A246081.P17036273332880520460

`∑[A115570(A139552(n))]`
-/

namespace A246081.P17036273332880520460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (A139552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246081.P17036273332880520460

namespace A246081

/-- `∑[A115570(A139552(n))]` -/
def P17036273332880520460.Spec : Prop :=
  ∀ n, P17036273332880520460.a n = A246081 (n + 1)

end A246081

/-!
# A246082: Paradigm shift sequence for (0,4) production scheme with replacement.

The programs for A246082, the canonical program `A246082.P3848407960839280997` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246082 has offset 1).

The definition of A246082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246082.P3848407960839280997

`∑[A182522(A131737(floor(n/4)))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246082

/-- `∑[A182522(A131737(floor(n/4)))]` -/
def P3848407960839280997.Spec : Prop :=
  ∀ n, P3848407960839280997.a n = A246082 (n + 1)

theorem P3848407960839280997.correct : P3848407960839280997.Spec := by
  intro n
  simp only [A246082, Nat.add_sub_cancel]

end A246082

/-! ## A246082.P10446346644265914863

`∑[A032742(A000792(floor(n/4)))]`
-/

namespace A246082.P10446346644265914863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000792 ⌊(n : ℚ) / 4⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246082.P10446346644265914863

namespace A246082

/-- `∑[A032742(A000792(floor(n/4)))]` -/
def P10446346644265914863.Spec : Prop :=
  ∀ n, P10446346644265914863.a n = A246082 (n + 1)

end A246082

/-! ## A246082.P16449853594642606833

`∑[A000120(A211768(A054893(n)))]`
-/

namespace A246082.P16449853594642606833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A211768 (A054893 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246082.P16449853594642606833

namespace A246082

/-- `∑[A000120(A211768(A054893(n)))]` -/
def P16449853594642606833.Spec : Prop :=
  ∀ n, P16449853594642606833.a n = A246082 (n + 1)

end A246082

/-! ## A246082.P9410309589923659456

`∑[A227350(A131666(A008619(n)))]`
-/

namespace A246082.P9410309589923659456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (A131666 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246082.P9410309589923659456

namespace A246082

/-- `∑[A227350(A131666(A008619(n)))]` -/
def P9410309589923659456.Spec : Prop :=
  ∀ n, P9410309589923659456.a n = A246082 (n + 1)

end A246082

/-! ## A246082.P17160156293615216018

`∑[A227350(A132780(A092533(n)))]`
-/

namespace A246082.P17160156293615216018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (A132780 (A092533 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246082.P17160156293615216018

namespace A246082

/-- `∑[A227350(A132780(A092533(n)))]` -/
def P17160156293615216018.Spec : Prop :=
  ∀ n, P17160156293615216018.a n = A246082 (n + 1)

end A246082

/-!
# A246083: Paradigm shift sequence for (0,5) production scheme with replacement.

The programs for A246083, the canonical program `A246083.P14460450737891075093` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246083 has offset 1).

The definition of A246083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246083.P14460450737891075093

`∑[A182522(A131737(floor(n/5)))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246083

/-- `∑[A182522(A131737(floor(n/5)))]` -/
def P14460450737891075093.Spec : Prop :=
  ∀ n, P14460450737891075093.a n = A246083 (n + 1)

theorem P14460450737891075093.correct : P14460450737891075093.Spec := by
  intro n
  simp only [A246083, Nat.add_sub_cancel]

end A246083

/-! ## A246083.P17468506094427393916

`∑[A032742(A000792(floor(n/5)))]`
-/

namespace A246083.P17468506094427393916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000792 ⌊(n : ℚ) / 5⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246083.P17468506094427393916

namespace A246083

/-- `∑[A032742(A000792(floor(n/5)))]` -/
def P17468506094427393916.Spec : Prop :=
  ∀ n, P17468506094427393916.a n = A246083 (n + 1)

end A246083

/-! ## A246083.P2545496726190223378

`∑[A000120(A001349(floor(n/5)))]`
-/

namespace A246083.P2545496726190223378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001349 ⌊(n : ℚ) / 5⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246083.P2545496726190223378

namespace A246083

/-- `∑[A000120(A001349(floor(n/5)))]` -/
def P2545496726190223378.Spec : Prop :=
  ∀ n, P2545496726190223378.a n = A246083 (n + 1)

end A246083

/-! ## A246083.P16551864005845920853

`∑[A112348(A108105(n))]`
-/

namespace A246083.P16551864005845920853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112348 (A108105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246083.P16551864005845920853

namespace A246083

/-- `∑[A112348(A108105(n))]` -/
def P16551864005845920853.Spec : Prop :=
  ∀ n, P16551864005845920853.a n = A246083 (n + 1)

end A246083

/-! ## A246083.P13582746340239269122

`∑[A043537(A027868(n)!)]`
-/

namespace A246083.P13582746340239269122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (Nat.factorial (A027868 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246083.P13582746340239269122

namespace A246083

/-- `∑[A043537(A027868(n)!)]` -/
def P13582746340239269122.Spec : Prop :=
  ∀ n, P13582746340239269122.a n = A246083 (n + 1)

end A246083

/-!
# A246084: Paradigm shift sequence for (1,2) production scheme with replacement.

The programs for A246084, there is no canonical definition to state claims against.
-/

/-! ## A246084.P12908890306302500705

`A246090(2*(n+1))/2`
-/

namespace A246084.P12908890306302500705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246090 (2 * (n + 1)) : ℚ) / 2

end

end A246084.P12908890306302500705

/-! ## A246084.P11972291628474599661

`ceil(A246090(Δ[A014206(n)])/2)`
-/

namespace A246084.P11972291628474599661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A246090 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌉

end

end A246084.P11972291628474599661

/-! ## A246084.P8502642946758370389

`record[A246090(n+1)/A141056(n)]`
-/

namespace A246084.P8502642946758370389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246090 (n + 1) : ℚ) / (A141056 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246084.P8502642946758370389

/-! ## A246084.P11858830415373300980

`record[A246090(n+1)/A141310(n)]`
-/

namespace A246084.P11858830415373300980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246090 (n + 1) : ℚ) / (A141310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246084.P11858830415373300980

/-! ## A246084.P10257946387891340960

`record[A246090(n+1)/A020639(n+1)]`
-/

namespace A246084.P10257946387891340960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246090 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246084.P10257946387891340960

/-! ## A246084.P8668696554475455183

`A014682(A246090(2*(n+1)))`
-/

namespace A246084.P8668696554475455183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A246090 (2 * (n + 1))).toNat

end

end A246084.P8668696554475455183

/-!
# A246085: Paradigm shift sequence for (1,3) production scheme with replacement.

The programs for A246085, there is no canonical definition to state claims against.
-/

/-! ## A246085.P2946298033925787581

`∑[∑[A358841(A029968(n+1))]]`
-/

namespace A246085.P2946298033925787581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358841 (A029968 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246085.P2946298033925787581

/-! ## A246085.P6795343121615390188

`∑[A055642(∏[A174726(n+2)])]`
-/

namespace A246085.P6795343121615390188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174726 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246085.P6795343121615390188

/-! ## A246085.P13147066557751406798

`lt[A191314(3*n), A190414(n+1)]`
-/

namespace A246085.P13147066557751406798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246085.P13147066557751406798

/-! ## A246085.P6004200297399532081

`∑[A055642(A331884(A005206(n)))]`
-/

namespace A246085.P6004200297399532081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A331884 (A005206 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246085.P6004200297399532081

/-! ## A246085.P8268283110618113790

`∑[A055642(A185329(A050046(n+1)))]`
-/

namespace A246085.P8268283110618113790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A185329 (A050046 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246085.P8268283110618113790

/-!
# A246086: Paradigm shift sequence for (1,4) production scheme with replacement.

The programs for A246086, there is no canonical definition to state claims against.
-/

/-! ## A246086.P9254300083862784307

`∑[n+2-∑[A168181(A147955(n))]]`
-/

namespace A246086.P9254300083862784307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (A147955 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246086.P9254300083862784307

/-! ## A246086.P15449941926111171040

`∑[∑[A010051(A231901((n+1)²)-n+1)]]`
-/

namespace A246086.P15449941926111171040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A231901 ((n + 1) ^ 2) - (n : ℤ) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246086.P15449941926111171040

/-! ## A246086.P18089515879428014615

`∑[∑[A058342(A215204(n+2))]+1]`
-/

namespace A246086.P18089515879428014615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058342 (A215204 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246086.P18089515879428014615

/-! ## A246086.P3421817382556535311

`∑[∑[A039735(A049334(n+1)²+1)]-n]`
-/

namespace A246086.P3421817382556535311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039735 (A049334 (n + 1) ^ 2 + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246086.P3421817382556535311

/-!
# A246087: Paradigm shift sequence for (1,5) production scheme with replacement.

The programs for A246087, there is no canonical definition to state claims against.
-/

/-! ## A246087.P13853688755805009129

`∑[A043537(A025833(n)!)]`
-/

namespace A246087.P13853688755805009129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (Nat.factorial (A025833 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246087.P13853688755805009129

/-! ## A246087.P69898817422098111

`∑[A262190(A025833(n)!)]`
-/

namespace A246087.P69898817422098111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (Nat.factorial (A025833 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246087.P69898817422098111

/-! ## A246087.P7210931607371589932

`filter[A246091(n+1), A242718(#)]`
-/

namespace A246087.P7210931607371589932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A246087.P7210931607371589932

/-! ## A246087.P4518691559068498837

`∑[∑[A266326(A260501(n+1))]]`
-/

namespace A246087.P4518691559068498837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266326 (A260501 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246087.P4518691559068498837

/-! ## A246087.P1632238468239709478

`∑[∑[A342025(A186482(n+1))]]`
-/

namespace A246087.P1632238468239709478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342025 (A186482 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246087.P1632238468239709478

/-!
# A246088: Paradigm shift sequence for (2,2) production scheme with replacement.

The programs for A246088, there is no canonical definition to state claims against.
-/

/-! ## A246088.P10044647479507512972

`A246098(2*(n+1))/2`
-/

namespace A246088.P10044647479507512972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246098 (2 * (n + 1)) : ℚ) / 2

end

end A246088.P10044647479507512972

/-! ## A246088.P16785494215507147070

`ceil(A246098(A103517(n))/2)`
-/

namespace A246088.P16785494215507147070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A246098 (A103517 n).toNat : ℚ) / 2⌉

end

end A246088.P16785494215507147070

/-! ## A246088.P13132003442519695629

`ceil(A246098(Δ[A002378(n)])/2)`
-/

namespace A246088.P13132003442519695629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A246098 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌉

end

end A246088.P13132003442519695629

/-! ## A246088.P15510147986575668550

`floor(A246098(A005408(n)+1)/2)`
-/

namespace A246088.P15510147986575668550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246098 (A005408 n + 1).toNat : ℚ) / 2⌋

end

end A246088.P15510147986575668550

/-! ## A246088.P10748654487217174481

`record[A246098(n+1)/A141310(n)]`
-/

namespace A246088.P10748654487217174481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246098 (n + 1) : ℚ) / (A141310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246088.P10748654487217174481

/-! ## A246088.P16632670684491152484

`(A246098(A103517(n))+A000007(n))/2`
-/

namespace A246088.P16632670684491152484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246098 (A103517 n).toNat + A000007 n : ℚ) / 2

end

end A246088.P16632670684491152484

/-! ## A246088.P14301081414670288579

`(A246098(A103517(n))/2)^A001222(A006005(n+1))`
-/

namespace A246088.P14301081414670288579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A246098 (A103517 n).toNat : ℚ) / 2) ^ (A001222 (A006005 (n + 1)).toNat : ℤ)

end

end A246088.P14301081414670288579

/-! ## A246088.P12384135090009401078

`A000038(a(n-1))+A246098(A103517(n))/2` with `a(0)=1`
-/

namespace A246088.P12384135090009401078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A000038 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) + (A246098 (A103517 n).toNat : ℚ) / 2

end

end A246088.P12384135090009401078

/-! ## A246088.P5713948101896601874

`A004525(A246098(2*(n+1)))`
-/

namespace A246088.P5713948101896601874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A246098 (2 * (n + 1))).toNat

end

end A246088.P5713948101896601874

/-! ## A246088.P11633658658385563748

`A004524(A246098(2*(n+1))+1)`
-/

namespace A246088.P11633658658385563748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A246098 (2 * (n + 1)) + 1).toNat

end

end A246088.P11633658658385563748

/-!
# A246089: Paradigm shift sequence for (2,3) production scheme with replacement.

The programs for A246089, there is no canonical definition to state claims against.
-/

/-! ## A246089.P14020633180827307503

`∑[∑[A100910(A162234(n+1))]]`
-/

namespace A246089.P14020633180827307503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A162234 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246089.P14020633180827307503

/-! ## A246089.P4645818871756107642

`∑[∑[A055641(A154921(n+1))]+1]`
-/

namespace A246089.P4645818871756107642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A154921 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246089.P4645818871756107642

/-! ## A246089.P14933728052414674663

`∑[∑[A023531(A342716(2*n+1))]+1]`
-/

namespace A246089.P14933728052414674663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A342716 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246089.P14933728052414674663

/-! ## A246089.P6670725483988691303

`∑[∑[A055641(A073336(n))]]`
-/

namespace A246089.P6670725483988691303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A073336 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246089.P6670725483988691303

/-! ## A246089.P15854089190046502705

`∑[A335458(∑[A230915(n+1)])]`
-/

namespace A246089.P15854089190046502705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246089.P15854089190046502705

/-!
# A246090: Paradigm shift sequence for (2,4) production scheme with replacement.

The programs for A246090, there is no canonical definition to state claims against.
-/

/-! ## A246090.P16039420428358411674

`∑[A055642(A029731(A008619(n)))]`
-/

namespace A246090.P16039420428358411674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A029731 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246090.P16039420428358411674

/-! ## A246090.P12917989741254512696

`∑[A055642(6^A131981(n+1))]`
-/

namespace A246090.P12917989741254512696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A131981 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246090.P12917989741254512696

/-! ## A246090.P8438163517248963421

`∑[A055642(A011782(A029135(n)))]`
-/

namespace A246090.P8438163517248963421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A011782 (A029135 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246090.P8438163517248963421

/-! ## A246090.P2559366826311778955

`∑[A055642(A042289(A025793(n)))]`
-/

namespace A246090.P2559366826311778955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A042289 (A025793 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246090.P2559366826311778955

/-! ## A246090.P8303307095796924792

`∑[A043568(A025793(n)!)]`
-/

namespace A246090.P8303307095796924792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (Nat.factorial (A025793 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246090.P8303307095796924792

/-!
# A246091: Paradigm shift sequence for (2,5) production scheme with replacement.

The programs for A246091, there is no canonical definition to state claims against.
-/

/-! ## A246091.P4101288985965333008

`∑[∑[A025469(A189666(n+2)²)]]`
-/

namespace A246091.P4101288985965333008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A189666 (n + 2) ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246091.P4101288985965333008

/-! ## A246091.P7305301315181622737

`∑[∑[A006996(A060662(n+5))]]`
-/

namespace A246091.P7305301315181622737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (A060662 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246091.P7305301315181622737

/-! ## A246091.P444545944830274288

`∑[∑[A005136(A010893(n))]]`
-/

namespace A246091.P444545944830274288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A010893 (n + 13)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246091.P444545944830274288

/-! ## A246091.P12630155364443958815

`∑[A058318(∑[A010893(n)])]`
-/

namespace A246091.P12630155364443958815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 (n + 13)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246091.P12630155364443958815

/-! ## A246091.P14409119151790386747

`∑[A092542(∑[A010893(n)])]`
-/

namespace A246091.P14409119151790386747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 (n + 13)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092542 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246091.P14409119151790386747

/-!
# A246092: Paradigm shift sequence for (3,2) production scheme with replacement.

The programs for A246092, there is no canonical definition to state claims against.
-/

/-! ## A246092.P15855511929389676827

`∑[∑[A099104(A179874(2*n+3)+1)]]`
-/

namespace A246092.P15855511929389676827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099104 (A179874 (2 * n + 3) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246092.P15855511929389676827

/-! ## A246092.P782672357392267964

`lt[A118933(n), A308334(A056105(n))]`
-/

namespace A246092.P782672357392267964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308334 (A056105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246092.P782672357392267964

/-! ## A246092.P1464315009249975261

`lt[A118933(n), A026430(A064987(n+1))]`
-/

namespace A246092.P1464315009249975261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A064987 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246092.P1464315009249975261

/-! ## A246092.P17401139060283167050

`lt[A059023(n+4), A139251(A108787(n+1))]`
-/

namespace A246092.P17401139060283167050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059023 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A108787 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246092.P17401139060283167050

/-! ## A246092.P6322166004009103088

`lt[A298221(A284684(2*n+5)), A004807(n+1)]`
-/

namespace A246092.P6322166004009103088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A284684 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246092.P6322166004009103088

/-!
# A246093: Paradigm shift sequence for (3,3) production scheme with replacement.

The programs for A246093, there is no canonical definition to state claims against.
-/

/-! ## A246093.P8356944523564138301

`∑[A094528(floor(n/6)!)]`
-/

namespace A246093.P8356944523564138301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094528 (Nat.factorial ⌊(n : ℚ) / 6⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246093.P8356944523564138301

/-! ## A246093.P8413356901359574582

`∑[A101787(floor(n/6)!)]`
-/

namespace A246093.P8413356901359574582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101787 (Nat.factorial ⌊(n : ℚ) / 6⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246093.P8413356901359574582

/-! ## A246093.P4629703352979772841

`∑[A106486(floor(n/6)!)]`
-/

namespace A246093.P4629703352979772841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (Nat.factorial ⌊(n : ℚ) / 6⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246093.P4629703352979772841

/-! ## A246093.P16964442281963845713

`∑[A102746(A152467(n)!)]`
-/

namespace A246093.P16964442281963845713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102746 (Nat.factorial (A152467 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246093.P16964442281963845713

/-! ## A246093.P15694964586283223474

`∑[A139352(A099656(floor(n/6)))]`
-/

namespace A246093.P15694964586283223474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A099656 ⌊(n : ℚ) / 6⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246093.P15694964586283223474

/-!
# A246094: Paradigm shift sequence for (3,4) production scheme with replacement.

The programs for A246094, there is no canonical definition to state claims against.
-/

/-! ## A246094.P12427829618899359950

`∑[∑[A361024(A160775(n+4))]]`
-/

namespace A246094.P12427829618899359950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361024 (A160775 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246094.P12427829618899359950

/-! ## A246094.P5305391739582695520

`lt[n+1-a(n-1)%a(a(n-1)%n), 24]` with `a(0)=50, a(1)=3`
-/

namespace A246094.P5305391739582695520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [50, 3] fun n f1 =>
  (n + 1 : ℤ) - Int.tmod (f1 (n - 1)) (f1 (Int.tmod (f1 (n - 1)) (n : ℤ)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246094.P5305391739582695520

/-! ## A246094.P2663684283263075570

`lt[sqrt(A053264(n)), dr(3*n²)]`
-/

namespace A246094.P2663684283263075570
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053264 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246094.P2663684283263075570

/-! ## A246094.P12576062955851988606

`lt[∑[A003056(n+1)], A301682(n)]`
-/

namespace A246094.P12576062955851988606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A246094.P12576062955851988606

/-! ## A246094.P18007659580235827427

`lt[A359683(lcm(3, n)/3), A095952(3*n+1)]`
-/

namespace A246094.P18007659580235827427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359683 (SequenceMachineLib.roundAway ((Nat.lcm 3 n : ℚ) / 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095952 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246094.P18007659580235827427

/-!
# A246095: Paradigm shift sequence for (3,5) production scheme with replacement.

The programs for A246095, there is no canonical definition to state claims against.
-/

/-! ## A246095.P4124820406053690505

`∩[A356944(n+1)-2, A246103(A356944(n+1))]`
-/

namespace A246095.P4124820406053690505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246103 (A356944 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246095.P4124820406053690505

/-! ## A246095.P15513206990695294562

`∑[∑[A249832(A241086(n)²)]]`
-/

namespace A246095.P15513206990695294562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A241086 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246095.P15513206990695294562

/-! ## A246095.P10451351846179815281

`∑[∑[A098108(A065610(n))]]`
-/

namespace A246095.P10451351846179815281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A065610 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246095.P10451351846179815281

/-! ## A246095.P3846055654937224354

`∑[∑[A091225(A023272(n+1))]]`
-/

namespace A246095.P3846055654937224354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A023272 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246095.P3846055654937224354

/-! ## A246095.P5798583052624966856

`∑[∑[A258021(A346125(n+1))]]`
-/

namespace A246095.P5798583052624966856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 (A346125 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246095.P5798583052624966856

/-!
# A246096: Paradigm shift sequence for (4,2) production scheme with replacement.

The programs for A246096, there is no canonical definition to state claims against.
-/

/-! ## A246096.P10348220671629764304

`lt[A026810(A318772(n)), A278489(n)]`
-/

namespace A246096.P10348220671629764304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A318772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246096.P10348220671629764304

/-! ## A246096.P357854110077687078

`lt[A318743(A318772(n)), A187289(n+1)]`
-/

namespace A246096.P357854110077687078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318743 (A318772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246096.P357854110077687078

/-! ## A246096.P5890366702392109537

`lt[A000127(A318772(n)), A100449(3*n)]`
-/

namespace A246096.P5890366702392109537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (A318772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246096.P5890366702392109537

/-! ## A246096.P17640456725627352740

`lt[A226903(A318772(n)), A003215(3*n)]`
-/

namespace A246096.P17640456725627352740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226903 (A318772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246096.P17640456725627352740

/-! ## A246096.P69010988648583699

`lt[A226488(A318772(n)), A006285(2*n+1)]`
-/

namespace A246096.P69010988648583699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 (A318772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246096.P69010988648583699

/-!
# A246097: Paradigm shift sequence for (4,3) production scheme with replacement.

The programs for A246097, there is no canonical definition to state claims against.
-/

/-! ## A246097.P84011969082425804

`∑[A156077(∑[A125005(3*n+5)]+1)]`
-/

namespace A246097.P84011969082425804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246097.P84011969082425804

/-! ## A246097.P13424843819635240689

`∑[A043562(A187069(A008497(n)))]`
-/

namespace A246097.P13424843819635240689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A187069 (A008497 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246097.P13424843819635240689

/-! ## A246097.P16481863023060151978

`∑[∑[A286939(A321069(n+1))]]`
-/

namespace A246097.P16481863023060151978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (A321069 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246097.P16481863023060151978

/-! ## A246097.P11840834558171506355

`∑[A178334(A028242(A271783(2*n+3)))]`
-/

namespace A246097.P11840834558171506355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A028242 (A271783 (2 * n + 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246097.P11840834558171506355

/-! ## A246097.P2423635742301305176

`lt[A118263(n), A062741(n)]`
-/

namespace A246097.P2423635742301305176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246097.P2423635742301305176

/-!
# A246098: Paradigm shift sequence for (4,4) production scheme with replacement.

The programs for A246098, there is no canonical definition to state claims against.
-/

/-! ## A246098.P13536335811820276337

`∑[A101787(floor(n/8)!)]`
-/

namespace A246098.P13536335811820276337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101787 (Nat.factorial ⌊(n : ℚ) / 8⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246098.P13536335811820276337

/-! ## A246098.P10975022375130891377

`∑[A106486(floor(n/8)!)]`
-/

namespace A246098.P10975022375130891377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (Nat.factorial ⌊(n : ℚ) / 8⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246098.P10975022375130891377

/-! ## A246098.P1642397045040175388

`∑[A140735(floor(n/8)!)]`
-/

namespace A246098.P1642397045040175388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140735 (Nat.factorial ⌊(n : ℚ) / 8⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246098.P1642397045040175388

/-! ## A246098.P9453890831710730531

`∑[A339399(floor(n/8)!)]`
-/

namespace A246098.P9453890831710730531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (Nat.factorial ⌊(n : ℚ) / 8⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246098.P9453890831710730531

/-! ## A246098.P10051218821046126396

`∑[A339491(floor(n/8)!)]`
-/

namespace A246098.P10051218821046126396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339491 (Nat.factorial ⌊(n : ℚ) / 8⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246098.P10051218821046126396

/-!
# A246099: Paradigm shift sequence for (4,5) production scheme with replacement.

The programs for A246099, there is no canonical definition to state claims against.
-/

/-! ## A246099.P9403780824757452578

`∑[∑[A082784(A039906(n+1))]]`
-/

namespace A246099.P9403780824757452578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (A039906 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246099.P9403780824757452578

/-! ## A246099.P1453890202606760621

`∑[A318874(∏[A146292(n+1)])]`
-/

namespace A246099.P1453890202606760621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246099.P1453890202606760621

/-! ## A246099.P17432364776386648526

`∑[A001227(∏[A146292(n+1)])]`
-/

namespace A246099.P17432364776386648526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246099.P17432364776386648526

/-! ## A246099.P17604263160055577484

`∑[A050320(∏[A146292(n+1)])]`
-/

namespace A246099.P17604263160055577484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246099.P17604263160055577484

/-! ## A246099.P6865601596627856168

`∩[A246103(n+1), A356944(n+1)]`
-/

namespace A246099.P6865601596627856168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246099.P6865601596627856168

