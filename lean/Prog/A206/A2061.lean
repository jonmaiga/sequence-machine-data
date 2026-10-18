import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
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
# A206100: G.f.: A(x) = Sum_{n>=0} x^n / Product_{k=1..n} (1-x^k)^k.

The programs for A206100, there is no canonical definition to state claims against.
-/

/-! ## A206100.P10763575280841323797

`A178940(A002998(n))`
-/

namespace A206100.P10763575280841323797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178940 (A002998 n).toNat

end

end A206100.P10763575280841323797

/-! ## A206100.P14333704878061698563

`A178940(A023106(n))`
-/

namespace A206100.P14333704878061698563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178940 (A023106 n).toNat

end

end A206100.P14333704878061698563

/-! ## A206100.P13237929011409779108

`A178940(A024659(n))`
-/

namespace A206100.P13237929011409779108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178940 (A024659 n).toNat

end

end A206100.P13237929011409779108

/-! ## A206100.P2025282094976155361

`A178940(A024660(n))`
-/

namespace A206100.P2025282094976155361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178940 (A024660 n).toNat

end

end A206100.P2025282094976155361

/-! ## A206100.P13472491263597536601

`A178940(A024661(n))`
-/

namespace A206100.P13472491263597536601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178940 (A024661 n).toNat

end

end A206100.P13472491263597536601

/-!
# A206101: Number of (n+1) X (n+1) 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206101, there is no canonical definition to state claims against.
-/

/-! ## A206101.P32804315661476198

`A206109((n+1)²+n²)`
-/

namespace A206101.P32804315661476198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 ((n + 1) ^ 2 + n ^ 2)

end

end A206101.P32804315661476198

/-! ## A206101.P6508711785969071158

`record[gcd(A206109(n+1), A214292(n))]`
-/

namespace A206101.P6508711785969071158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206109 (n + 1)) (A214292 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206101.P6508711785969071158

/-!
# A206102: Number of (n+1) X 2 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206102, there is no canonical definition to state claims against.
-/

/-! ## A206102.P15169115080367430347

`A206109(∑[n]+1)`
-/

namespace A206102.P15169115080367430347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206102.P15169115080367430347

/-! ## A206102.P13647145000008425857

`lcm(2, A206109(A000124(n)))`
-/

namespace A206102.P13647145000008425857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206109 (A000124 n).toNat)

end

end A206102.P13647145000008425857

/-! ## A206102.P15197721644733164131

`record[A206109(n+1)/A342972(n)]`
-/

namespace A206102.P15197721644733164131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206109 (n + 1) : ℚ) / (A342972 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206102.P15197721644733164131

/-! ## A206102.P15856547509360115517

`record[root(A206109(n+1), A054143(n))]`
-/

namespace A206102.P15856547509360115517
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206109 (n + 1) : ℝ) ^ (1 / (A054143 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206102.P15856547509360115517

/-! ## A206102.P3439853005832186374

`record[root(A206109(n+1), A059268(n))]`
-/

namespace A206102.P3439853005832186374
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206109 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206102.P3439853005832186374

/-!
# A206103: Number of (n+1) X 3 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206103, there is no canonical definition to state claims against.
-/

/-! ## A206103.P10590258019153828619

`A206109(∑[n+1]+2)`
-/

namespace A206103.P10590258019153828619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206103.P10590258019153828619

/-! ## A206103.P6279776722253515811

`record[A206109(A114091(n+1)+1)]`
-/

namespace A206103.P6279776722253515811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206103.P6279776722253515811

/-! ## A206103.P8042875375270418123

`record[root(A206109(n+2), A054143(n))]`
-/

namespace A206103.P8042875375270418123
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206109 (n + 2) : ℝ) ^ (1 / (A054143 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206103.P8042875375270418123

/-! ## A206103.P17458257582929033991

`record[root(A206109(n+2), A059268(n))]`
-/

namespace A206103.P17458257582929033991
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206109 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206103.P17458257582929033991

/-! ## A206103.P17070800426850868388

`record[A206109(A198453(n+1))]`
-/

namespace A206103.P17070800426850868388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206103.P17070800426850868388

/-!
# A206104: Number of (n+1) X 4 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206104, there is no canonical definition to state claims against.
-/

/-! ## A206104.P212511927484070978

`A206109(∑[n+2]+4)`
-/

namespace A206104.P212511927484070978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206104.P212511927484070978

/-! ## A206104.P11557529166685662142

`lcm(2, A206109(A167614(n+1)))`
-/

namespace A206104.P11557529166685662142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206109 (A167614 (n + 1)).toNat)

end

end A206104.P11557529166685662142

/-! ## A206104.P9392551012372863813

`A206109(A167614(n+1))*A254730(n)`
-/

namespace A206104.P9392551012372863813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (A167614 (n + 1)).toNat * A254730 n

end

end A206104.P9392551012372863813

/-! ## A206104.P7409290610885112887

`A230915(n+1)+A206109(A167614(n+1))`
-/

namespace A206104.P7409290610885112887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (n + 1) + A206109 (A167614 (n + 1)).toNat

end

end A206104.P7409290610885112887

/-! ## A206104.P17674795360242898286

`A206109(A167614(n+1))%A206105(n+1)`
-/

namespace A206104.P17674795360242898286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206109 (A167614 (n + 1)).toNat) (A206105 (n + 1))

end

end A206104.P17674795360242898286

/-!
# A206105: Number of (n+1) X 5 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206105, there is no canonical definition to state claims against.
-/

/-! ## A206105.P11256382995960676009

`A206109(A141214(n)+7)`
-/

namespace A206105.P11256382995960676009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (A141214 n + 7).toNat

end

end A206105.P11256382995960676009

/-! ## A206105.P16236578298451363303

`A206109(A052905(n)+9)`
-/

namespace A206105.P16236578298451363303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (A052905 n + 9).toNat

end

end A206105.P16236578298451363303

/-! ## A206105.P9960022207094980648

`A206109(A167614(n+2)+1)`
-/

namespace A206105.P9960022207094980648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (A167614 (n + 2) + 1).toNat

end

end A206105.P9960022207094980648

/-! ## A206105.P7383560088524297924

`A206109(Δ[A023545(n+1)-n²])`
-/

namespace A206105.P7383560088524297924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (f1 (n + 1) - f1 n).toNat

end

end A206105.P7383560088524297924

/-! ## A206105.P4514881372602376319

`A206109(A055998(n+2))`
-/

namespace A206105.P4514881372602376319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (A055998 (n + 2)).toNat

end

end A206105.P4514881372602376319

/-!
# A206106: Number of (n+1) X 6 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206106, there is no canonical definition to state claims against.
-/

/-! ## A206106.P9799409473873882699

`A206109(A374005(n+1))`
-/

namespace A206106.P9799409473873882699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (A374005 (n + 1)).toNat

end

end A206106.P9799409473873882699

/-! ## A206106.P8495638332740995395

`A206109(Δ[A023545(n+1)])`
-/

namespace A206106.P8495638332740995395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (f1 (n + 1) - f1 n).toNat

end

end A206106.P8495638332740995395

/-! ## A206106.P13296890112800551045

`A206109(eq[5, A200443(n+1)])`
-/

namespace A206106.P13296890112800551045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206106.P13296890112800551045

/-!
# A206110: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206110, there is no canonical definition to state claims against.
-/

/-! ## A206110.P15802845951926737890

`A206118(∑[4*n]+1)`
-/

namespace A206110.P15802845951926737890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206110.P15802845951926737890

/-! ## A206110.P4555578151349093474

`lcm(2, A206118(A001844(n)))`
-/

namespace A206110.P4555578151349093474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206118 (A001844 n).toNat)

end

end A206110.P4555578151349093474

/-! ## A206110.P5879523936188905919

`record[gcd(A003987(n), A206118(n+1))]`
-/

namespace A206110.P5879523936188905919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A206118 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206110.P5879523936188905919

/-! ## A206110.P16587963018931334448

`record[or(-A274650(n), A206118(n+1))]`
-/

namespace A206110.P16587963018931334448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A274650 n) (A206118 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206110.P16587963018931334448

/-! ## A206110.P3668804201736356414

`A326547(n)+A206118(A001844(n))`
-/

namespace A206110.P3668804201736356414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 n + A206118 (A001844 n).toNat

end

end A206110.P3668804201736356414

/-!
# A206111: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206111, there is no canonical definition to state claims against.
-/

/-! ## A206111.P8203211540914155542

`A206118(∑[n]+1)`
-/

namespace A206111.P8203211540914155542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206111.P8203211540914155542

/-! ## A206111.P18226820528760258042

`lcm(2, A206118(A000124(n)))`
-/

namespace A206111.P18226820528760258042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206118 (A000124 n).toNat)

end

end A206111.P18226820528760258042

/-! ## A206111.P1010376110767345619

`record[A206118(n+1)/A155495(n)]`
-/

namespace A206111.P1010376110767345619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206118 (n + 1) : ℚ) / (A155495 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206111.P1010376110767345619

/-! ## A206111.P2195764149649946073

`record[A206118(n+1)/A287215(n)]`
-/

namespace A206111.P2195764149649946073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206118 (n + 1) : ℚ) / (A287215 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206111.P2195764149649946073

/-! ## A206111.P16273121421384832529

`record[gcd(A206118(n+1), A303301(n))]`
-/

namespace A206111.P16273121421384832529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206118 (n + 1)) (A303301 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206111.P16273121421384832529

/-!
# A206112: Number of (n+1) X 3 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206112, there is no canonical definition to state claims against.
-/

/-! ## A206112.P10306997186733746327

`A206118(∑[n+1]+2)`
-/

namespace A206112.P10306997186733746327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206112.P10306997186733746327

/-! ## A206112.P15534277472593773328

`lcm(2, A206118(A253145(n)+2))`
-/

namespace A206112.P15534277472593773328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206118 (A253145 n + 2).toNat)

end

end A206112.P15534277472593773328

/-! ## A206112.P7097900890281619192

`A206118(A253145(n)+2)+A000035(2*n)`
-/

namespace A206112.P7097900890281619192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A253145 n + 2).toNat + A000035 (2 * n)

end

end A206112.P7097900890281619192

/-! ## A206112.P3862942611302206449

`and(-A000188(n+1), A206118(A253145(n)+2))`
-/

namespace A206112.P3862942611302206449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000188 (n + 1)) (A206118 (A253145 n + 2).toNat)

end

end A206112.P3862942611302206449

/-! ## A206112.P6462140015531694849

`A206118(A253145(n)+2)+A008683(4*(n+2))`
-/

namespace A206112.P6462140015531694849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A253145 n + 2).toNat + A008683 (4 * (n + 2))

end

end A206112.P6462140015531694849

/-!
# A206113: Number of (n+1) X 4 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206113, there is no canonical definition to state claims against.
-/

/-! ## A206113.P1504253127087922558

`A206118(∑[n+2]+4)`
-/

namespace A206113.P1504253127087922558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206113.P1504253127087922558

/-! ## A206113.P13754328399208418037

`lcm(2, A206118(A167614(n+1)))`
-/

namespace A206113.P13754328399208418037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206118 (A167614 (n + 1)).toNat)

end

end A206113.P13754328399208418037

/-! ## A206113.P3260386321443323187

`A206118(A167614(n+1))+A025466(n)`
-/

namespace A206113.P3260386321443323187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A167614 (n + 1)).toNat + A025466 n

end

end A206113.P3260386321443323187

/-! ## A206113.P9839923717426791339

`A206118(A167614(n+1))+A185284(n)`
-/

namespace A206113.P9839923717426791339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A167614 (n + 1)).toNat + A185284 n

end

end A206113.P9839923717426791339

/-! ## A206113.P1548251541457684378

`A206118(A167614(n+1))+A034565(n+1)`
-/

namespace A206113.P1548251541457684378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A167614 (n + 1)).toNat + A034565 (n + 1)

end

end A206113.P1548251541457684378

/-!
# A206114: Number of (n+1) X 5 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206114, there is no canonical definition to state claims against.
-/

/-! ## A206114.P6072145630775067566

`A206118(A374004(n+1))`
-/

namespace A206114.P6072145630775067566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A374004 (n + 1)).toNat

end

end A206114.P6072145630775067566

/-! ## A206114.P15699805696584222683

`A206118(A052905(n)+9)`
-/

namespace A206114.P15699805696584222683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A052905 n + 9).toNat

end

end A206114.P15699805696584222683

/-! ## A206114.P14956352720910077620

`A206118(A167614(n+2)+1)`
-/

namespace A206114.P14956352720910077620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A167614 (n + 2) + 1).toNat

end

end A206114.P14956352720910077620

/-! ## A206114.P9034402842045155922

`A206118(A166136(n+2)-2)`
-/

namespace A206114.P9034402842045155922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A166136 (n + 2) - 2).toNat

end

end A206114.P9034402842045155922

/-! ## A206114.P4200267362204684641

`A206118(A167487(n+2)-3)`
-/

namespace A206114.P4200267362204684641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A167487 (n + 2) - 3).toNat

end

end A206114.P4200267362204684641

/-!
# A206115: Number of (n+1) X 6 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206115, there is no canonical definition to state claims against.
-/

/-! ## A206115.P15790590745188239934

`A206118(A374005(n+1))`
-/

namespace A206115.P15790590745188239934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A374005 (n + 1)).toNat

end

end A206115.P15790590745188239934

/-! ## A206115.P17853830434084548189

`A206118(A167499(n+3))`
-/

namespace A206115.P17853830434084548189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A167499 (n + 3)).toNat

end

end A206115.P17853830434084548189

/-! ## A206115.P13397715505654876252

`A206118(Δ[A264443(n)])`
-/

namespace A206115.P13397715505654876252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (f1 (n + 1) - f1 n).toNat

end

end A206115.P13397715505654876252

/-! ## A206115.P8120310343125842158

`A206118(A046691(n+3))`
-/

namespace A206115.P8120310343125842158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A046691 (n + 3)).toNat

end

end A206115.P8120310343125842158

/-! ## A206115.P2845791355042943778

`A206118(eq[4, A193592(n)])`
-/

namespace A206115.P2845791355042943778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206115.P2845791355042943778

/-!
# A206116: Number of (n+1) X 7 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206116, there is no canonical definition to state claims against.
-/

/-! ## A206116.P13871978604052792260

`A206118(A374007(n+1))`
-/

namespace A206116.P13871978604052792260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A374007 (n + 1)).toNat

end

end A206116.P13871978604052792260

/-! ## A206116.P11975630065155877707

`A206118(A166136(n+4))`
-/

namespace A206116.P11975630065155877707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A166136 (n + 4)).toNat

end

end A206116.P11975630065155877707

/-! ## A206116.P2555870094913621794

`A206118(eq[7, A131818(n+1)])`
-/

namespace A206116.P2555870094913621794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206116.P2555870094913621794

/-! ## A206116.P1817007107990856276

`A206118(A052905(n+3))`
-/

namespace A206116.P1817007107990856276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A052905 (n + 3)).toNat

end

end A206116.P1817007107990856276

/-! ## A206116.P8165779861224497005

`A206118(eq[5, A193592(n)])`
-/

namespace A206116.P8165779861224497005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206116.P8165779861224497005

/-!
# A206117: Number of (n+1) X 8 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206117, there is no canonical definition to state claims against.
-/

/-! ## A206117.P10844827031608181634

`A206118(A374008(n+1))`
-/

namespace A206117.P10844827031608181634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A374008 (n + 1)).toNat

end

end A206117.P10844827031608181634

/-! ## A206117.P14840982827631136350

`A206118(A167487(n+5))`
-/

namespace A206117.P14840982827631136350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A167487 (n + 5)).toNat

end

end A206117.P14840982827631136350

/-! ## A206117.P13748463188593318145

`A206118(eq[8, A131818(n+1)])`
-/

namespace A206117.P13748463188593318145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206117.P13748463188593318145

/-! ## A206117.P8560722514927195693

`A206118(A184218(n+8)-(n-1))`
-/

namespace A206117.P8560722514927195693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A184218 (n + 8) - ((n : ℤ) - 1)).toNat

end

end A206117.P8560722514927195693

/-! ## A206117.P16670978231363020898

`A206118(eq[6, A193592(n)])`
-/

namespace A206117.P16670978231363020898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206117.P16670978231363020898

/-!
# A206119: G.f.: A(x) = Sum_{n>=0} x^n / Product_{k=1..n} (1-x^k)^(n-k+1).

The programs for A206119, there is no canonical definition to state claims against.
-/

/-! ## A206119.P3066637028718768376

`Δ[A324936(n+1)]+and(1, A324948(n+1))`
-/

namespace A206119.P3066637028718768376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.land 1 (A324948 (n + 1))

end

end A206119.P3066637028718768376

/-! ## A206119.P7115040587741856076

`Δ[A324936(n+1)]^A082460(A126292(n))`
-/

namespace A206119.P7115040587741856076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324936 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A082460 (A126292 n).toNat : ℤ)

end

end A206119.P7115040587741856076

/-! ## A206119.P2718634032925782490

`A085748(n)-A198316(A198313(n))`
-/

namespace A206119.P2718634032925782490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085748 n - A198316 (A198313 n).toNat

end

end A206119.P2718634032925782490

/-! ## A206119.P4102594402327430080

`A001462(A357221(n))`
-/

namespace A206119.P4102594402327430080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A357221 n).toNat

end

end A206119.P4102594402327430080

/-!
# A206120: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206120, there is no canonical definition to state claims against.
-/

/-! ## A206120.P8232524871829474323

`A206128(∑[4*n]+1)`
-/

namespace A206120.P8232524871829474323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206120.P8232524871829474323

/-! ## A206120.P12249301465709227367

`lcm(2, A206128(A001844(n)))`
-/

namespace A206120.P12249301465709227367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206128 (A001844 n).toNat)

end

end A206120.P12249301465709227367

/-! ## A206120.P17184437974608152114

`record[A003982(n)*A206128(n+1)]`
-/

namespace A206120.P17184437974608152114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206120.P17184437974608152114

/-! ## A206120.P2291481706230077409

`record[gcd(A114327(n), A206128(n+1))]`
-/

namespace A206120.P2291481706230077409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A206128 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206120.P2291481706230077409

/-! ## A206120.P4750054206520120012

`A206002(n+1)+A205990(n+1)`
-/

namespace A206120.P4750054206520120012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206002 (n + 1) + A205990 (n + 1)

end

end A206120.P4750054206520120012

/-!
# A206121: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206121, there is no canonical definition to state claims against.
-/

/-! ## A206121.P2348071454579118727

`A206003(n+1)+A205991(n+1)`
-/

namespace A206121.P2348071454579118727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206003 (n + 1) + A205991 (n + 1)

end

end A206121.P2348071454579118727

/-! ## A206121.P11282160731147242309

`A206010(A000124(n))+A205991(n+1)`
-/

namespace A206121.P11282160731147242309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A000124 n).toNat + A205991 (n + 1)

end

end A206121.P11282160731147242309

/-! ## A206121.P2982686187196230694

`A206010(∑[n+1])+A205991(n+1)`
-/

namespace A206121.P2982686187196230694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j) + A205991 (n + 1)

end

end A206121.P2982686187196230694

/-! ## A206121.P7131185880054751199

`A206128(∑[n]+1)`
-/

namespace A206121.P7131185880054751199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206121.P7131185880054751199

/-! ## A206121.P4088957665211411785

`record[root(A206128(n+1), A074909(n))]`
-/

namespace A206121.P4088957665211411785
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206128 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206121.P4088957665211411785

/-!
# A206122: Number of (n+1)X3 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206122, there is no canonical definition to state claims against.
-/

/-! ## A206122.P15431349893003235835

`A206004(n+1)+A205992(n+1)`
-/

namespace A206122.P15431349893003235835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206004 (n + 1) + A205992 (n + 1)

end

end A206122.P15431349893003235835

/-! ## A206122.P6863194488103030131

`A206010(∑[n+1]+2)+A205992(n+1)`
-/

namespace A206122.P6863194488103030131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A205992 (n + 1)

end

end A206122.P6863194488103030131

/-! ## A206122.P4100274379981453252

`A206004(n+1)+A205998(∑[n+1]+2)`
-/

namespace A206122.P4100274379981453252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206004 (n + 1) + A205998 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206122.P4100274379981453252

/-! ## A206122.P7411087880687355605

`A206004(n+1)+A014963(15*(n+1))*A205998(A000096(n)+3)`
-/

namespace A206122.P7411087880687355605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206004 (n + 1) + A014963 (15 * (n + 1)) * A205998 (A000096 n + 3).toNat

end

end A206122.P7411087880687355605

/-! ## A206122.P14572724058796187986

`A206128(∑[n+1]+2)`
-/

namespace A206122.P14572724058796187986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206122.P14572724058796187986

/-!
# A206123: Number of (n+1)X4 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206123, there is no canonical definition to state claims against.
-/

/-! ## A206123.P9941519569888901378

`A206005(n+1)+A205993(n+1)`
-/

namespace A206123.P9941519569888901378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206005 (n + 1) + A205993 (n + 1)

end

end A206123.P9941519569888901378

/-! ## A206123.P13823180376789678210

`A206010(∑[n+2]+4)+A205993(n+1)`
-/

namespace A206123.P13823180376789678210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + A205993 (n + 1)

end

end A206123.P13823180376789678210

/-! ## A206123.P7205387362980279603

`A206005(n+1)+A205998(A167614(n+1))`
-/

namespace A206123.P7205387362980279603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206005 (n + 1) + A205998 (A167614 (n + 1)).toNat

end

end A206123.P7205387362980279603

/-! ## A206123.P7566240503081594004

`A205993(n+1)+lcm(2, A206010(A167614(n+1)))`
-/

namespace A206123.P7566240503081594004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205993 (n + 1) + (Int.lcm 2 (A206010 (A167614 (n + 1)).toNat) : ℤ)

end

end A206123.P7566240503081594004

/-! ## A206123.P8429325634206586867

`A205993(n+1)+A206010(A167614(n+1))%A205994(n+1)`
-/

namespace A206123.P8429325634206586867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205993 (n + 1) + Int.tmod (A206010 (A167614 (n + 1)).toNat) (A205994 (n + 1))

end

end A206123.P8429325634206586867

/-!
# A206124: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206124, there is no canonical definition to state claims against.
-/

/-! ## A206124.P9743537858232838730

`A206006(n+1)+A205994(n+1)`
-/

namespace A206124.P9743537858232838730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206006 (n + 1) + A205994 (n + 1)

end

end A206124.P9743537858232838730

/-! ## A206124.P3130636427625094858

`A206128(A374004(n+1))`
-/

namespace A206124.P3130636427625094858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A374004 (n + 1)).toNat

end

end A206124.P3130636427625094858

/-! ## A206124.P2311879494487254677

`A206128(A141214(n)+7)`
-/

namespace A206124.P2311879494487254677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A141214 n + 7).toNat

end

end A206124.P2311879494487254677

/-! ## A206124.P11323836835681368670

`A206128(A052905(n)+9)`
-/

namespace A206124.P11323836835681368670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A052905 n + 9).toNat

end

end A206124.P11323836835681368670

/-! ## A206124.P11552356612646730459

`A206128(A055999(n)+10)`
-/

namespace A206124.P11552356612646730459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A055999 n + 10).toNat

end

end A206124.P11552356612646730459

/-!
# A206125: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206125, there is no canonical definition to state claims against.
-/

/-! ## A206125.P11243358116544324314

`A206007(n+1)+A205995(n+1)`
-/

namespace A206125.P11243358116544324314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206007 (n + 1) + A205995 (n + 1)

end

end A206125.P11243358116544324314

/-! ## A206125.P8142504418327089660

`A206128(A374005(n+1))`
-/

namespace A206125.P8142504418327089660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A374005 (n + 1)).toNat

end

end A206125.P8142504418327089660

/-! ## A206125.P2110174771310168896

`A206128(A000096(n+3)+6)`
-/

namespace A206125.P2110174771310168896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A000096 (n + 3) + 6).toNat

end

end A206125.P2110174771310168896

/-! ## A206125.P8100196349182084953

`A206128(eq[6, A131818(n+1)])`
-/

namespace A206125.P8100196349182084953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206125.P8100196349182084953

/-! ## A206125.P16768689580327957953

`A206128(A166136(n+1)+Δ[A082111(n)])`
-/

namespace A206125.P16768689580327957953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A166136 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A206125.P16768689580327957953

/-!
# A206126: Number of (n+1)X7 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206126, there is no canonical definition to state claims against.
-/

/-! ## A206126.P4623237150179018420

`A206008(n+1)+A205996(n+1)`
-/

namespace A206126.P4623237150179018420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206008 (n + 1) + A205996 (n + 1)

end

end A206126.P4623237150179018420

/-! ## A206126.P14644774643159396880

`A206128(A374007(n+1))`
-/

namespace A206126.P14644774643159396880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A374007 (n + 1)).toNat

end

end A206126.P14644774643159396880

/-! ## A206126.P15026135443797025360

`A206128(eq[7, A131818(n+1)])`
-/

namespace A206126.P15026135443797025360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206126.P15026135443797025360

/-! ## A206126.P25317170186840148

`A206128(A052905(n+3))`
-/

namespace A206126.P25317170186840148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A052905 (n + 3)).toNat

end

end A206126.P25317170186840148

/-! ## A206126.P5820744039855945025

`A206128(eq[5, A193592(n)])`
-/

namespace A206126.P5820744039855945025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206126.P5820744039855945025

/-!
# A206127: Number of (n+1)X8 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206127, there is no canonical definition to state claims against.
-/

/-! ## A206127.P8273394627434763372

`A206009(n+1)+A205997(n+1)`
-/

namespace A206127.P8273394627434763372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206009 (n + 1) + A205997 (n + 1)

end

end A206127.P8273394627434763372

/-! ## A206127.P12788213876373044701

`A206128(A374008(n+1))`
-/

namespace A206127.P12788213876373044701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A374008 (n + 1)).toNat

end

end A206127.P12788213876373044701

/-! ## A206127.P14724419604700405244

`A206128(A167487(n+5))`
-/

namespace A206127.P14724419604700405244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A167487 (n + 5)).toNat

end

end A206127.P14724419604700405244

/-! ## A206127.P18168398066126852246

`A206128(A000124(n+6)+6)`
-/

namespace A206127.P18168398066126852246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A000124 (n + 6) + 6).toNat

end

end A206127.P18168398066126852246

/-! ## A206127.P11949248224043202990

`A206128(A000217(n+6)+7)`
-/

namespace A206127.P11949248224043202990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A000217 (n + 6) + 7).toNat

end

end A206127.P11949248224043202990

/-!
# A206128: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206128, there is no canonical definition to state claims against.
-/

/-! ## A206128.P2246373731616453239

`A206010(n+1)+A205998(n+1)`
-/

namespace A206128.P2246373731616453239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (n + 1) + A205998 (n + 1)

end

end A206128.P2246373731616453239

/-!
# A206129: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206129, there is no canonical definition to state claims against.
-/

/-! ## A206129.P4542743746809889576

`A206137((n+1)²+n²)`
-/

namespace A206129.P4542743746809889576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 ((n + 1) ^ 2 + n ^ 2)

end

end A206129.P4542743746809889576

/-!
# A206130: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206130, there is no canonical definition to state claims against.
-/

/-! ## A206130.P6101773917680446068

`A206137(∑[n]+1)`
-/

namespace A206130.P6101773917680446068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206130.P6101773917680446068

/-! ## A206130.P16085768946873039923

`lcm(2, A206137(A000124(n)))`
-/

namespace A206130.P16085768946873039923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206137 (A000124 n).toNat)

end

end A206130.P16085768946873039923

/-! ## A206130.P14975164001722667628

`record[A206137(n+1)/A022170(n)]`
-/

namespace A206130.P14975164001722667628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206137 (n + 1) : ℚ) / (A022170 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206130.P14975164001722667628

/-! ## A206130.P17976531529587300020

`A206137(A000124(n))%A243233(n)`
-/

namespace A206130.P17976531529587300020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206137 (A000124 n).toNat) (A243233 (n + 12))

end

end A206130.P17976531529587300020

/-! ## A206130.P15477471368060624569

`record[gcd(A025581(n), A206137(n+1))]`
-/

namespace A206130.P15477471368060624569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A206137 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206130.P15477471368060624569

/-!
# A206131: Number of (n+1) X 3 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206131, there is no canonical definition to state claims against.
-/

/-! ## A206131.P422400571178338936

`A206137(∑[n+1]+2)`
-/

namespace A206131.P422400571178338936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206131.P422400571178338936

/-! ## A206131.P10984065224194923300

`A206137(A000096(n)+3)%A206147(n+1)`
-/

namespace A206131.P10984065224194923300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206137 (A000096 n + 3).toNat) (A206147 (n + 1))

end

end A206131.P10984065224194923300

/-! ## A206131.P18441939076690020658

`gcd(11, A007318(n))*A206137(A000096(n)+3)`
-/

namespace A206131.P18441939076690020658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * A206137 (A000096 n + 3).toNat

end

end A206131.P18441939076690020658

/-! ## A206131.P14177483344565305362

`A000034(A002378(n))*A206137(A000096(n)+3)`
-/

namespace A206131.P14177483344565305362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002378 n).toNat * A206137 (A000096 n + 3).toNat

end

end A206131.P14177483344565305362

/-! ## A206131.P12729088058580444678

`record[A206137(Δ[A003453(n+5)])]`
-/

namespace A206131.P12729088058580444678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206131.P12729088058580444678

/-!
# A206132: Number of (n+1) X 4 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206132, there is no canonical definition to state claims against.
-/

/-! ## A206132.P1617210118729816698

`A234781(n+1)+8`
-/

namespace A206132.P1617210118729816698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234781 (n + 1) + 8

end

end A206132.P1617210118729816698

/-! ## A206132.P2190692096720354274

`4*A138979(n+2)+8`
-/

namespace A206132.P2190692096720354274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138979 (n + 2) + 8

end

end A206132.P2190692096720354274

/-! ## A206132.P9191128931658593559

`A234786(A167614(n+1))+8`
-/

namespace A206132.P9191128931658593559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 (A167614 (n + 1)).toNat + 8

end

end A206132.P9191128931658593559

/-! ## A206132.P15112690470757887213

`A206137(∑[n+2]+4)`
-/

namespace A206132.P15112690470757887213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206132.P15112690470757887213

/-! ## A206132.P14570944508487647699

`A206137(A167614(n+1))%A206133(n+1)`
-/

namespace A206132.P14570944508487647699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206137 (A167614 (n + 1)).toNat) (A206133 (n + 1))

end

end A206132.P14570944508487647699

/-!
# A206133: Number of (n+1) X 5 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206133, there is no canonical definition to state claims against.
-/

/-! ## A206133.P17383343053590650763

`A234782(n+1)+8`
-/

namespace A206133.P17383343053590650763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234782 (n + 1) + 8

end

end A206133.P17383343053590650763

/-! ## A206133.P9149317890026087354

`A206137(A374004(n+1))`
-/

namespace A206133.P9149317890026087354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (A374004 (n + 1)).toNat

end

end A206133.P9149317890026087354

/-! ## A206133.P12683381474557590340

`A206137(A052905(n)+9)`
-/

namespace A206133.P12683381474557590340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (A052905 n + 9).toNat

end

end A206133.P12683381474557590340

/-! ## A206133.P4599523596009285631

`A206137(A055999(n)+10)`
-/

namespace A206133.P4599523596009285631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (A055999 n + 10).toNat

end

end A206133.P4599523596009285631

/-! ## A206133.P814304108518070501

`A206137(A167614(n+2)+1)`
-/

namespace A206133.P814304108518070501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (A167614 (n + 2) + 1).toNat

end

end A206133.P814304108518070501

/-!
# A206134: Number of (n+1) X 6 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206134, there is no canonical definition to state claims against.
-/

/-! ## A206134.P4467156480577773209

`A234783(n+1)+8`
-/

namespace A206134.P4467156480577773209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234783 (n + 1) + 8

end

end A206134.P4467156480577773209

/-! ## A206134.P15004257777658549783

`4*(A222167(n+2)+2)`
-/

namespace A206134.P15004257777658549783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A222167 (n + 2) + 2)

end

end A206134.P15004257777658549783

/-! ## A206134.P4067976275888667464

`A209514(n+1)+A222167(n+2)+8`
-/

namespace A206134.P4067976275888667464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209514 (n + 1) + (A222167 (n + 2) + 8)

end

end A206134.P4067976275888667464

/-! ## A206134.P10612149773882617499

`A206137(A374005(n+1))`
-/

namespace A206134.P10612149773882617499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (A374005 (n + 1)).toNat

end

end A206134.P10612149773882617499

/-! ## A206134.P2315110331626053214

`A206137(A000096(n+3)+6)`
-/

namespace A206134.P2315110331626053214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (A000096 (n + 3) + 6).toNat

end

end A206134.P2315110331626053214

/-!
# A206135: Number of (n+1) X 7 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206135, there is no canonical definition to state claims against.
-/

/-! ## A206135.P2719962587039304117

`A234784(n+1)+8`
-/

namespace A206135.P2719962587039304117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234784 (n + 1) + 8

end

end A206135.P2719962587039304117

/-! ## A206135.P15526359615974494769

`A206137(A374007(n+1))`
-/

namespace A206135.P15526359615974494769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (A374007 (n + 1)).toNat

end

end A206135.P15526359615974494769

/-!
# A206138: G.f.: A(x) = Sum_{n>=0} x^(n*(n+1)/2) / Product_{k=1..n} (1-x^k)^k.

The programs for A206138, there is no canonical definition to state claims against.
-/

/-! ## A206138.P15455216579631957385

`A237258(n)+A225654(A360686(n+1))`
-/

namespace A206138.P15455216579631957385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237258 n + A225654 (A360686 (n + 1)).toNat

end

end A206138.P15455216579631957385

/-! ## A206138.P9751674416542077189

`A237258(n)+A204445(A335328(3*(n+1)))`
-/

namespace A206138.P9751674416542077189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237258 n + A204445 (A335328 (3 * (n + 1))).toNat

end

end A206138.P9751674416542077189

/-! ## A206138.P1286008340675378313

`filter[A373219(n), A221641(#)]`
-/

namespace A206138.P1286008340675378313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A221641 (f1 j).toNat = 1) n)

end

end A206138.P1286008340675378313

/-! ## A206138.P9332287316933825518

`filter[A128762(2*n), A221641(#)]`
-/

namespace A206138.P9332287316933825518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128762 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A221641 (f1 j).toNat = 1) n)

end

end A206138.P9332287316933825518

/-! ## A206138.P5735048399529619588

`A126796(n)+A080225(A003520(3*n+1))`
-/

namespace A206138.P5735048399529619588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126796 n + A080225 (A003520 (3 * n + 1)).toNat

end

end A206138.P5735048399529619588

/-!
# A206139: G.f.: A(x) = Sum_{n>=0} x^(n*(n+1)/2) / Product_{k=1..n} (1-x^k)^(n-k+1).

The programs for A206139, there is no canonical definition to state claims against.
-/

/-! ## A206139.P2776967324954918811

`A257639(A052960(n))`
-/

namespace A206139.P2776967324954918811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A052960 n).toNat

end

end A206139.P2776967324954918811

/-! ## A206139.P8437770285026266944

`A276581(A202846(n))+1`
-/

namespace A206139.P8437770285026266944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A202846 n).toNat + 1

end

end A206139.P8437770285026266944

/-! ## A206139.P13160296157285324312

`A182210(A318797(n+1))`
-/

namespace A206139.P13160296157285324312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (A318797 (n + 1)).toNat

end

end A206139.P13160296157285324312

/-! ## A206139.P10032423167724625567

`A182210(A318850(n+1))`
-/

namespace A206139.P10032423167724625567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (A318850 (n + 1)).toNat

end

end A206139.P10032423167724625567

/-! ## A206139.P11862600117195861187

`A257639(A143419(3*n+2))`
-/

namespace A206139.P11862600117195861187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A143419 (3 * n + 2)).toNat

end

end A206139.P11862600117195861187

/-!
# A206141: G.f.: Sum_{n>=0} x^n/Product_{k=1..n} (1 - A002203(k)*x^k + (-1)^k*x^(2*k)), where A002203 is the companion Pell numbers.

The programs for A206141, there is no canonical definition to state claims against.
-/

/-! ## A206141.P4670920279833765514

`A203413(n)+A089865(A007111(n))`
-/

namespace A206141.P4670920279833765514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203413 n + A089865 (A007111 n).toNat

end

end A206141.P4670920279833765514

/-! ## A206141.P1151420596722435382

`A305052(A176643(n))+A305049(n)`
-/

namespace A206141.P1151420596722435382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305052 (A176643 n).toNat + A305049 n

end

end A206141.P1151420596722435382

/-! ## A206141.P14521346734122155430

`A305049(n)-A010051(A278396(n))`
-/

namespace A206141.P14521346734122155430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305049 n - A010051 (A278396 n).toNat

end

end A206141.P14521346734122155430

/-!
# A206142: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206142, there is no canonical definition to state claims against.
-/

/-! ## A206142.P5612643153360679281

`A206150(∑[4*n]+1)`
-/

namespace A206142.P5612643153360679281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206150 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206142.P5612643153360679281

/-! ## A206142.P8790450470032597604

`lcm(3, A206150(A001844(n)))`
-/

namespace A206142.P8790450470032597604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206150 (A001844 n).toNat)

end

end A206142.P8790450470032597604

/-! ## A206142.P1051250502216480385

`record[gcd(A003987(n), A206150(n+1))]`
-/

namespace A206142.P1051250502216480385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A206150 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206142.P1051250502216480385

/-! ## A206142.P16429630964092999611

`or(A000007(n), A206150(A001844(n)))`
-/

namespace A206142.P16429630964092999611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A206150 (A001844 n).toNat)

end

end A206142.P16429630964092999611

/-! ## A206142.P4695041372441820018

`A206150(A001844(n))+A101637(n+1)`
-/

namespace A206142.P4695041372441820018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206150 (A001844 n).toNat + A101637 (n + 1)

end

end A206142.P4695041372441820018

/-!
# A206143: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206143, the canonical program `A206143.P2804007554589879766` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206143 has offset 1).

The definition of A206143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206143.P2804007554589879766

`3*a(n-1)` with `a(0)=81, a(1)=60, a(2)=162`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A206143

/-- `3*a(n-1)` -/
def P2804007554589879766.Spec : Prop :=
  ∀ n, (P2804007554589879766.a n : ℤ) = A206143 (n + 1)

theorem P2804007554589879766.correct : P2804007554589879766.Spec := by
  intro n
  simp only [A206143, Nat.add_sub_cancel]

end A206143

/-! ## A206143.P1873115380627201323

`A206150(∑[n]+1)`
-/

namespace A206143.P1873115380627201323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206150 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206143.P1873115380627201323

namespace A206143

/-- `A206150(∑[n]+1)` -/
def P1873115380627201323.Spec : Prop :=
  ∀ n, P1873115380627201323.a n = A206143 (n + 1)

end A206143

/-! ## A206143.P6050261323556683808

`lcm(3, A206150(A000124(n)))`
-/

namespace A206143.P6050261323556683808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206150 (A000124 n).toNat)

end

end A206143.P6050261323556683808

namespace A206143

/-- `lcm(3, A206150(A000124(n)))` -/
def P6050261323556683808.Spec : Prop :=
  ∀ n, (P6050261323556683808.a n : ℤ) = A206143 (n + 1)

end A206143

/-! ## A206143.P16973060194221011307

`or(A000007(n), A206150(A000124(n)))`
-/

namespace A206143.P16973060194221011307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A206150 (A000124 n).toNat)

end

end A206143.P16973060194221011307

namespace A206143

/-- `or(A000007(n), A206150(A000124(n)))` -/
def P16973060194221011307.Spec : Prop :=
  ∀ n, P16973060194221011307.a n = A206143 (n + 1)

end A206143

/-! ## A206143.P12746459463614278281

`A007318(∑[n])*A206150(A000124(n))`
-/

namespace A206143.P12746459463614278281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A206150 (A000124 n).toNat

end

end A206143.P12746459463614278281

namespace A206143

/-- `A007318(∑[n])*A206150(A000124(n))` -/
def P12746459463614278281.Spec : Prop :=
  ∀ n, P12746459463614278281.a n = A206143 (n + 1)

end A206143

/-!
# A206144: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206144, the canonical program `A206144.P9351163376155616945` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206144 has offset 1).

The definition of A206144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206144.P9351163376155616945

`6*(A020698(n+1)+A000007(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206144

/-- `6*(A020698(n+1)+A000007(n))` -/
def P9351163376155616945.Spec : Prop :=
  ∀ n, P9351163376155616945.a n = A206144 (n + 1)

theorem P9351163376155616945.correct : P9351163376155616945.Spec := by
  intro n
  simp only [A206144, Nat.add_sub_cancel]

end A206144

/-! ## A206144.P17431411440107149020

`6*(A020698(n+1)+1-A057427(n))`
-/

namespace A206144.P17431411440107149020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A020698 (n + 1) + 1 - A057427 n)

end

end A206144.P17431411440107149020

namespace A206144

/-- `6*(A020698(n+1)+1-A057427(n))` -/
def P17431411440107149020.Spec : Prop :=
  ∀ n, P17431411440107149020.a n = A206144 (n + 1)

end A206144

/-! ## A206144.P162777827839516084

`6*(A020698(n+1)+1-A001221(record[A014963(n+1)]))`
-/

namespace A206144.P162777827839516084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A020698 (n + 1) + 1 - A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A206144.P162777827839516084

namespace A206144

/-- `6*(A020698(n+1)+1-A001221(record[A014963(n+1)]))` -/
def P162777827839516084.Spec : Prop :=
  ∀ n, P162777827839516084.a n = A206144 (n + 1)

end A206144

/-! ## A206144.P9130021123618438347

`Δ[∑[3*A020698(n)]*A036453(n+1)]`
-/

namespace A206144.P9130021123618438347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206144.P9130021123618438347

namespace A206144

/-- `Δ[∑[3*A020698(n)]*A036453(n+1)]` -/
def P9130021123618438347.Spec : Prop :=
  ∀ n, P9130021123618438347.a n = A206144 (n + 1)

end A206144

/-! ## A206144.P14312951669517477633

`A206150(∑[n+1]+2)`
-/

namespace A206144.P14312951669517477633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206150 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206144.P14312951669517477633

namespace A206144

/-- `A206150(∑[n+1]+2)` -/
def P14312951669517477633.Spec : Prop :=
  ∀ n, P14312951669517477633.a n = A206144 (n + 1)

end A206144

/-!
# A206145: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206145, there is no canonical definition to state claims against.
-/

/-! ## A206145.P148062887908742160

`2*A209506(n+1)`
-/

namespace A206145.P148062887908742160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209506 (n + 1)

end

end A206145.P148062887908742160

/-! ## A206145.P15711629955676474029

`6*A078100(n+2)`
-/

namespace A206145.P15711629955676474029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A078100 (n + 2)

end

end A206145.P15711629955676474029

/-! ## A206145.P10440912059546037488

`3*(A205313(n+1)-2)`
-/

namespace A206145.P10440912059546037488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A205313 (n + 1) - 2)

end

end A206145.P10440912059546037488

/-! ## A206145.P2762265245913222348

`3/2*A203373(n+1)`
-/

namespace A206145.P2762265245913222348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A203373 (n + 1) : ℚ)

end

end A206145.P2762265245913222348

/-! ## A206145.P7060231294633431827

`3*(A205250(n+1)/2-2)`
-/

namespace A206145.P7060231294633431827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205250 (n + 1) : ℚ) / 2 - 2)

end

end A206145.P7060231294633431827

/-!
# A206146: Number of (n+1) X 5 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206146, there is no canonical definition to state claims against.
-/

/-! ## A206146.P1730885263438181469

`2*A209507(n+1)`
-/

namespace A206146.P1730885263438181469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209507 (n + 1)

end

end A206146.P1730885263438181469

/-! ## A206146.P9634855682004980057

`6*A207994(n+2)`
-/

namespace A206146.P9634855682004980057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A207994 (n + 2)

end

end A206146.P9634855682004980057

/-! ## A206146.P8096721041303840002

`3*(A205314(n+1)-2)`
-/

namespace A206146.P8096721041303840002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A205314 (n + 1) - 2)

end

end A206146.P8096721041303840002

/-! ## A206146.P4241228878154461055

`3/2*A203374(n+1)`
-/

namespace A206146.P4241228878154461055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A203374 (n + 1) : ℚ)

end

end A206146.P4241228878154461055

/-! ## A206146.P10937741563967767813

`3*(A205251(n+1)/2-2)`
-/

namespace A206146.P10937741563967767813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205251 (n + 1) : ℚ) / 2 - 2)

end

end A206146.P10937741563967767813

/-!
# A206147: Number of (n+1) X 6 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206147, there is no canonical definition to state claims against.
-/

/-! ## A206147.P5565515086755247468

`2*A209508(n+1)`
-/

namespace A206147.P5565515086755247468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209508 (n + 1)

end

end A206147.P5565515086755247468

/-! ## A206147.P11671957702894422664

`6*A207995(n+2)`
-/

namespace A206147.P11671957702894422664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A207995 (n + 2)

end

end A206147.P11671957702894422664

/-! ## A206147.P7897457101572418051

`3*(A205315(n+1)-2)`
-/

namespace A206147.P7897457101572418051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A205315 (n + 1) - 2)

end

end A206147.P7897457101572418051

/-! ## A206147.P3708893561739472534

`3/2*A203375(n+1)`
-/

namespace A206147.P3708893561739472534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A203375 (n + 1) : ℚ)

end

end A206147.P3708893561739472534

/-! ## A206147.P9462717765040479078

`3*(A205252(n+1)/2-2)`
-/

namespace A206147.P9462717765040479078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205252 (n + 1) : ℚ) / 2 - 2)

end

end A206147.P9462717765040479078

/-!
# A206148: Number of (n+1) X 7 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206148, there is no canonical definition to state claims against.
-/

/-! ## A206148.P6071999552511019868

`2*A209509(n+1)`
-/

namespace A206148.P6071999552511019868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209509 (n + 1)

end

end A206148.P6071999552511019868

/-! ## A206148.P4347530569177725636

`6*A207996(n+2)`
-/

namespace A206148.P4347530569177725636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A207996 (n + 2)

end

end A206148.P4347530569177725636

/-! ## A206148.P4221614789174903406

`3*(A205316(n+1)-2)`
-/

namespace A206148.P4221614789174903406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A205316 (n + 1) - 2)

end

end A206148.P4221614789174903406

/-! ## A206148.P9646547697883499919

`3/2*A203376(n+1)`
-/

namespace A206148.P9646547697883499919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A203376 (n + 1) : ℚ)

end

end A206148.P9646547697883499919

/-! ## A206148.P6969856060913557414

`3*(A205253(n+1)/2-2)`
-/

namespace A206148.P6969856060913557414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205253 (n + 1) : ℚ) / 2 - 2)

end

end A206148.P6969856060913557414

/-!
# A206149: Number of (n+1) X 8 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206149, there is no canonical definition to state claims against.
-/

/-! ## A206149.P10826934578161164297

`2*A209510(n+1)`
-/

namespace A206149.P10826934578161164297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209510 (n + 1)

end

end A206149.P10826934578161164297

/-! ## A206149.P18216377727483076445

`3*(A205317(n+1)-2)`
-/

namespace A206149.P18216377727483076445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A205317 (n + 1) - 2)

end

end A206149.P18216377727483076445

/-! ## A206149.P10543438989152197170

`3/2*A203377(n+1)`
-/

namespace A206149.P10543438989152197170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A203377 (n + 1) : ℚ)

end

end A206149.P10543438989152197170

/-! ## A206149.P592385676070092311

`3*(A205254(n+1)/2-2)`
-/

namespace A206149.P592385676070092311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205254 (n + 1) : ℚ) / 2 - 2)

end

end A206149.P592385676070092311

/-! ## A206149.P821710842662476457

`A209510(n+1)+A209510(A052938(A005843(n)))`
-/

namespace A206149.P821710842662476457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209510 (n + 1) + A209510 (A052938 (A005843 n).toNat).toNat

end

end A206149.P821710842662476457

/-!
# A206153: G.f.: exp( Sum_{n>=1} A206154(n)*x^n/n ), where A206154(n) = Sum_{k=0..n} binomial(n,k)^(k+2).

The programs for A206153, there is no canonical definition to state claims against.
-/

/-! ## A206153.P12937426683630839467

`A211861((n^3+n)/2)+n`
-/

namespace A206153.P12937426683630839467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211861 (SequenceMachineLib.roundAway ((n ^ 3 + n : ℚ) / 2)).toNat + (n : ℤ)

end

end A206153.P12937426683630839467

/-!
# A206154: a(n) = Sum_{k=0..n} binomial(n,k)^(k+2).

The programs for A206154, there is no canonical definition to state claims against.
-/

/-! ## A206154.P14647791186275273487

`A220218(A306025(n)+n)`
-/

namespace A206154.P14647791186275273487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220218 (A306025 n + (n : ℤ)).toNat

end

end A206154.P14647791186275273487

/-!
# A206155: G.f.: exp( Sum_{n>=1} A206156(n)*x^n/n ), where A206156(n) = Sum_{k=0..n} binomial(n,k)^(2*k).

The programs for A206155, there is no canonical definition to state claims against.
-/

/-! ## A206155.P13823100535345315650

`A371794(A090977(n))`
-/

namespace A206155.P13823100535345315650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371794 (A090977 n).toNat

end

end A206155.P13823100535345315650

/-!
# A206156: a(n) = Sum_{k=0..n} binomial(n,k)^(2*k).

The programs for A206156, there is no canonical definition to state claims against.
-/

/-! ## A206156.P11654140771160665549

`lcm(n+1, A022838(A133018(n)))`
-/

namespace A206156.P11654140771160665549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A022838 (A133018 n).toNat)

end

end A206156.P11654140771160665549

/-!
# A206157: G.f.: exp( Sum_{n>=1} A206158(n)*x^n/n ), where A206158(n) = Sum_{k=0..n} binomial(n,k)^(2*k+1).

The programs for A206157, there is no canonical definition to state claims against.
-/

/-! ## A206157.P14803505809712289763

`A003415(A317172(n))+A000002(n+1)`
-/

namespace A206157.P14803505809712289763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A317172 n).toNat + A000002 (n + 1)

end

end A206157.P14803505809712289763

/-!
# A206159: Numbers needing at most two digits to write all positive divisors in decimal representation.

The programs for A206159, there is no canonical definition to state claims against.
-/

/-! ## A206159.P18138154683048710255

`lt[A095048(n+1), 3]+1`
-/

namespace A206159.P18138154683048710255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A206159.P18138154683048710255

/-! ## A206159.P10897552717693091394

`lt[n/3*A095048(A028310(n)), n]`
-/

namespace A206159.P10897552717693091394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A095048 (A028310 n).toNat : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A206159.P10897552717693091394

/-! ## A206159.P16297990868684152728

`lt[log2(A256824(n+1)), 8]+1`
-/

namespace A206159.P16297990868684152728
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A256824 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A206159.P16297990868684152728

/-! ## A206159.P18405566398315136606

`lt[A256824(n+1), A007634(n+1)]+1`
-/

namespace A206159.P18405566398315136606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007634 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A206159.P18405566398315136606

/-! ## A206159.P13291916636549601927

`lt[A256824(n+1), A135145(n+1)]+1`
-/

namespace A206159.P13291916636549601927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135145 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A206159.P13291916636549601927

/-!
# A206162: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206162, there is no canonical definition to state claims against.
-/

/-! ## A206162.P14665578827481809329

`A206169(∑[4*n]+1)`
-/

namespace A206162.P14665578827481809329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206162.P14665578827481809329

/-!
# A206163: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206163, there is no canonical definition to state claims against.
-/

/-! ## A206163.P7260407359667377537

`A206169(∑[n+2])`
-/

namespace A206163.P7260407359667377537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206163.P7260407359667377537

/-! ## A206163.P4742995725186003630

`record[A206169(A198455(n+1))]`
-/

namespace A206163.P4742995725186003630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206163.P4742995725186003630

/-! ## A206163.P11469271826717835528

`record[A206169(A000096(∏{e}[n+1, #]))]`
-/

namespace A206163.P11469271826717835528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A000096 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206163.P11469271826717835528

/-! ## A206163.P4085027412425264531

`A326463(n)+A206169(A000096(n+1))`
-/

namespace A206163.P4085027412425264531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326463 n + A206169 (A000096 (n + 1)).toNat

end

end A206163.P4085027412425264531

/-! ## A206163.P14175977967184386314

`A055642(n)*A206169(A000096(n+1))`
-/

namespace A206163.P14175977967184386314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A206169 (A000096 (n + 1)).toNat

end

end A206163.P14175977967184386314

/-!
# A206164: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206164, there is no canonical definition to state claims against.
-/

/-! ## A206164.P19786874631732455

`A206169(∑[n+3]+1)`
-/

namespace A206164.P19786874631732455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206164.P19786874631732455

/-! ## A206164.P16928668800956520350

`record[A206169(A198464(n+1))]`
-/

namespace A206164.P16928668800956520350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206164.P16928668800956520350

/-!
# A206165: Number of (n+1)X5 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206165, there is no canonical definition to state claims against.
-/

/-! ## A206165.P3525648340067234645

`A206169(∑[n+4]+3)`
-/

namespace A206165.P3525648340067234645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A206165.P3525648340067234645

/-! ## A206165.P12615176780801884242

`A058398(n+1)*A206169(A027379(n+2))`
-/

namespace A206165.P12615176780801884242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (n + 1) * A206169 (A027379 (n + 2)).toNat

end

end A206165.P12615176780801884242

/-!
# A206166: Number of (n+1)X6 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206166, there is no canonical definition to state claims against.
-/

/-! ## A206166.P2228240618342342278

`A206169(eq[6, A185782(n+1)])`
-/

namespace A206166.P2228240618342342278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206166.P2228240618342342278

/-!
# A206167: Number of (n+1)X7 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206167, there is no canonical definition to state claims against.
-/

/-! ## A206167.P4373191678429468451

`A206169(eq[8, A185782(n+1)])`
-/

namespace A206167.P4373191678429468451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206167.P4373191678429468451

/-!
# A206170: Number of 2 X (n+1) 0..3 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206170, there is no canonical definition to state claims against.
-/

/-! ## A206170.P14205169437562579324

`A206383(∑[n]+1)`
-/

namespace A206170.P14205169437562579324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206170.P14205169437562579324

/-! ## A206170.P11416720992638715560

`record[A010054(n)*A206383(n+1)]`
-/

namespace A206170.P11416720992638715560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206170.P11416720992638715560

/-! ## A206170.P14157276354817887791

`record[root(A206383(n+1), A213999(n))]`
-/

namespace A206170.P14157276354817887791
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206383 (n + 1) : ℝ) ^ (1 / (A213999 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206170.P14157276354817887791

/-! ## A206170.P15633427272631783672

`record[gcd(A168068(n), A206383(n+1))]`
-/

namespace A206170.P15633427272631783672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168068 n) (A206383 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206170.P15633427272631783672

/-! ## A206170.P9948930670167422345

`record[root(A206383(n+1), A144438(n+1))]`
-/

namespace A206170.P9948930670167422345
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206383 (n + 1) : ℝ) ^ (1 / (A144438 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206170.P9948930670167422345

/-!
# A206171: Number of 3 X (n+1) 0..3 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206171, there is no canonical definition to state claims against.
-/

/-! ## A206171.P6368779965487256822

`A206169(∑[n+1]+2)`
-/

namespace A206171.P6368779965487256822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206171.P6368779965487256822

/-! ## A206171.P3564454016211958802

`record[A206169(A008795(n)+2)]`
-/

namespace A206171.P3564454016211958802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206171.P3564454016211958802

/-! ## A206171.P15959235308164359316

`record[A010054(n+1)*A206169(n+3)]`
-/

namespace A206171.P15959235308164359316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A206169 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206171.P15959235308164359316

/-! ## A206171.P1596518875580657748

`record[A206169(A133263(∏{e}[n+1, #]))]`
-/

namespace A206171.P1596518875580657748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A133263 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206171.P1596518875580657748

/-!
# A206172: Number of 4X(n+1) 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206172, there is no canonical definition to state claims against.
-/

/-! ## A206172.P6003532587868389522

`A206169(∑[n+2]+4)`
-/

namespace A206172.P6003532587868389522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206172.P6003532587868389522

/-! ## A206172.P17159136833020199096

`lcm(2, A206169(A167614(n+1)))`
-/

namespace A206172.P17159136833020199096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206169 (A167614 (n + 1)).toNat)

end

end A206172.P17159136833020199096

/-! ## A206172.P17453851309997167048

`A179051(n)*A206169(A167614(n+1))`
-/

namespace A206172.P17453851309997167048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 n * A206169 (A167614 (n + 1)).toNat

end

end A206172.P17453851309997167048

/-! ## A206172.P13469689458554001823

`A206169(A167614(n+1))*A337819(n+1)`
-/

namespace A206172.P13469689458554001823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A167614 (n + 1)).toNat * A337819 (n + 1)

end

end A206172.P13469689458554001823

/-! ## A206172.P1283350259712032194

`A206169(A167614(n+1))%A206148(n+1)`
-/

namespace A206172.P1283350259712032194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206169 (A167614 (n + 1)).toNat) (A206148 (n + 1))

end

end A206172.P1283350259712032194

/-!
# A206173: Number of 5X(n+1) 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206173, there is no canonical definition to state claims against.
-/

/-! ## A206173.P14278979670476711073

`A206169(A141214(n)+7)`
-/

namespace A206173.P14278979670476711073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A141214 n + 7).toNat

end

end A206173.P14278979670476711073

/-! ## A206173.P17154985041888108789

`A206169(A052905(n)+9)`
-/

namespace A206173.P17154985041888108789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A052905 n + 9).toNat

end

end A206173.P17154985041888108789

/-! ## A206173.P4224702093527070602

`A206169(A055999(n)+10)`
-/

namespace A206173.P4224702093527070602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A055999 n + 10).toNat

end

end A206173.P4224702093527070602

/-! ## A206173.P15427086161384914580

`A206169(A167614(n+2)+1)`
-/

namespace A206173.P15427086161384914580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A167614 (n + 2) + 1).toNat

end

end A206173.P15427086161384914580

/-! ## A206173.P8643396698831670257

`A206169(eq[5, A131818(n+1)])`
-/

namespace A206173.P8643396698831670257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206173.P8643396698831670257

/-!
# A206174: Number of 6X(n+1) 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206174, there is no canonical definition to state claims against.
-/

/-! ## A206174.P17089166252756607705

`A206169(A155212(n)+13)`
-/

namespace A206174.P17089166252756607705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A155212 n + 13).toNat

end

end A206174.P17089166252756607705

/-!
# A206175: Number of 7X(n+1) 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206175, there is no canonical definition to state claims against.
-/

/-! ## A206175.P12960389850248687293

`A206169(eq[7, A123229(n+1)])`
-/

namespace A206175.P12960389850248687293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206175.P12960389850248687293

/-!
# A206177: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n,k)^3 * 2^k ).

The programs for A206177, there is no canonical definition to state claims against.
-/

/-! ## A206177.P359696593255954592

`A060066(n+1)+A000290(A051118(n))`
-/

namespace A206177.P359696593255954592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060066 (n + 1) + A000290 (A051118 n).toNat

end

end A206177.P359696593255954592

/-! ## A206177.P12253459072899402800

`A060066(n+1)+A033103(A060115(n))`
-/

namespace A206177.P12253459072899402800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060066 (n + 1) + A033103 (A060115 n).toNat

end

end A206177.P12253459072899402800

/-!
# A206178: a(n) = Sum_{k=0..n} binomial(n,k)^3 * 2^k.

The programs for A206178, there is no canonical definition to state claims against.
-/

/-! ## A206178.P14753431400010941841

`A336163(∑[n+3])`
-/

namespace A206178.P14753431400010941841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206178.P14753431400010941841

/-! ## A206178.P1577528195934396095

`A336203(A155212(n)+4)`
-/

namespace A206178.P1577528195934396095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336203 (A155212 n + 4).toNat

end

end A206178.P1577528195934396095

/-! ## A206178.P2686013968878167488

`A336203(eq[3, A122286(n)])`
-/

namespace A206178.P2686013968878167488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206178.P2686013968878167488

/-! ## A206178.P13181850827668405703

`record[A336163(eq[1, A336169(n)])]`
-/

namespace A206178.P13181850827668405703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206178.P13181850827668405703

/-!
# A206179: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n,k)^3 * 3^k ).

The programs for A206179, there is no canonical definition to state claims against.
-/

/-! ## A206179.P14968464540689441306

`A024542(A254664(n)+3)`
-/

namespace A206179.P14968464540689441306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024542 (A254664 n + 3).toNat

end

end A206179.P14968464540689441306

/-!
# A206180: a(n) = Sum_{k=0..n} binomial(n,k)^3 * 3^k.

The programs for A206180, there is no canonical definition to state claims against.
-/

/-! ## A206180.P15008287859782597438

`A336163(∑[n+3]+n+3)`
-/

namespace A206180.P15008287859782597438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A206180.P15008287859782597438

/-! ## A206180.P7767421031130122330

`A336187(∑[n+4]+2)`
-/

namespace A206180.P7767421031130122330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336187 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206180.P7767421031130122330

/-!
# A206181: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206181, there is no canonical definition to state claims against.
-/

/-! ## A206181.P10298525594391619969

`A206188((n+1)²+n²)`
-/

namespace A206181.P10298525594391619969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 ((n + 1) ^ 2 + n ^ 2)

end

end A206181.P10298525594391619969

/-!
# A206182: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206182, there is no canonical definition to state claims against.
-/

/-! ## A206182.P2265119746528507446

`A206188(∑[n+1]+2)`
-/

namespace A206182.P2265119746528507446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206182.P2265119746528507446

/-! ## A206182.P15175079003549307828

`lcm(2, A206188(A133263(n+1)))`
-/

namespace A206182.P15175079003549307828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206188 (A133263 (n + 1)).toNat)

end

end A206182.P15175079003549307828

/-! ## A206182.P18001403668667226638

`record[A010054(n)*A206188(n+2)]`
-/

namespace A206182.P18001403668667226638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206188 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206182.P18001403668667226638

/-! ## A206182.P18357094457062940652

`record[gcd(A002262(n), A206188(n+2))]`
-/

namespace A206182.P18357094457062940652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206188 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206182.P18357094457062940652

/-! ## A206182.P12715640557976891084

`A206188(A133263(n+1))%A206191(n+2)`
-/

namespace A206182.P12715640557976891084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206188 (A133263 (n + 1)).toNat) (A206191 (n + 2))

end

end A206182.P12715640557976891084

/-!
# A206183: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206183, there is no canonical definition to state claims against.
-/

/-! ## A206183.P515827276941398730

`A206188(∑[n+2]+4)`
-/

namespace A206183.P515827276941398730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206183.P515827276941398730

/-! ## A206183.P18105482401527928931

`lcm(4, A206188(A167614(n+1)))`
-/

namespace A206183.P18105482401527928931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A206188 (A167614 (n + 1)).toNat)

end

end A206183.P18105482401527928931

/-! ## A206183.P127501854665602626

`A206188(A167614(n+1))*A333901(n)`
-/

namespace A206183.P127501854665602626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A167614 (n + 1)).toNat * A333901 n

end

end A206183.P127501854665602626

/-! ## A206183.P3638811691322049321

`A206188(A167614(n+1))%A206184(n+1)`
-/

namespace A206183.P3638811691322049321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206188 (A167614 (n + 1)).toNat) (A206184 (n + 1))

end

end A206183.P3638811691322049321

/-! ## A206183.P11259895033219870091

`lcm(2, A206188(A055999(n)+4))`
-/

namespace A206183.P11259895033219870091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206188 (A055999 n + 4).toNat)

end

end A206183.P11259895033219870091

/-!
# A206184: Number of (n+1) X 5 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206184, there is no canonical definition to state claims against.
-/

/-! ## A206184.P3351057992509461077

`A206188(A374004(n+1))`
-/

namespace A206184.P3351057992509461077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A374004 (n + 1)).toNat

end

end A206184.P3351057992509461077

/-! ## A206184.P10652912767169705202

`A206188(A052905(n)+9)`
-/

namespace A206184.P10652912767169705202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A052905 n + 9).toNat

end

end A206184.P10652912767169705202

/-! ## A206184.P11681068114478592721

`A206188(A055999(n)+10)`
-/

namespace A206184.P11681068114478592721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A055999 n + 10).toNat

end

end A206184.P11681068114478592721

/-! ## A206184.P7587844178861053608

`A206188(A167614(n+2)+1)`
-/

namespace A206184.P7587844178861053608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A167614 (n + 2) + 1).toNat

end

end A206184.P7587844178861053608

/-! ## A206184.P1453018197635138414

`A206188(A141214(n+1))`
-/

namespace A206184.P1453018197635138414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A141214 (n + 1)).toNat

end

end A206184.P1453018197635138414

/-!
# A206185: Number of (n+1) X 6 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206185, there is no canonical definition to state claims against.
-/

/-! ## A206185.P1645624706793399086

`A206188(A374005(n+1))`
-/

namespace A206185.P1645624706793399086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A374005 (n + 1)).toNat

end

end A206185.P1645624706793399086

/-! ## A206185.P13278106144951036059

`A206188(A167499(n+3))`
-/

namespace A206185.P13278106144951036059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A167499 (n + 3)).toNat

end

end A206185.P13278106144951036059

/-! ## A206185.P11654232180627517293

`A206188(A155212(n)+13)`
-/

namespace A206185.P11654232180627517293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A155212 n + 13).toNat

end

end A206185.P11654232180627517293

/-! ## A206185.P14940816035573255060

`A206188(Δ[A264443(n)])`
-/

namespace A206185.P14940816035573255060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (f1 (n + 1) - f1 n).toNat

end

end A206185.P14940816035573255060

/-!
# A206186: Number of (n+1) X 7 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206186, there is no canonical definition to state claims against.
-/

/-! ## A206186.P4057375554732162415

`A206188(A374007(n+1))`
-/

namespace A206186.P4057375554732162415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A374007 (n + 1)).toNat

end

end A206186.P4057375554732162415

/-! ## A206186.P13896219255667732849

`A206188(eq[5, A002262(n)]+1)`
-/

namespace A206186.P13896219255667732849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A206186.P13896219255667732849

/-! ## A206186.P15358807807035024034

`A206188(A055999(n+3)+1)`
-/

namespace A206186.P15358807807035024034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A055999 (n + 3) + 1).toNat

end

end A206186.P15358807807035024034

/-!
# A206187: 

The programs for A206187, there is no canonical definition to state claims against.
-/

/-! ## A206187.P77354906199593114

`A206188(eq[7, A200370(n+1)])`
-/

namespace A206187.P77354906199593114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206187.P77354906199593114

/-!
# A206189: Number of (n+1)X(n+1) 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A206189, there is no canonical definition to state claims against.
-/

/-! ## A206189.P11282717443314532621

`A206197((n+1)²+n²)`
-/

namespace A206189.P11282717443314532621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 ((n + 1) ^ 2 + n ^ 2)

end

end A206189.P11282717443314532621

/-!
# A206190: Number of (n+1) X 2 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to two.

The programs for A206190, there is no canonical definition to state claims against.
-/

/-! ## A206190.P3873877165898624109

`A206197(∑[n]+1)`
-/

namespace A206190.P3873877165898624109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206190.P3873877165898624109

/-! ## A206190.P17553851943056800258

`record[A206197(n+1)/A174912(n)]`
-/

namespace A206190.P17553851943056800258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206197 (n + 1) : ℚ) / (A174912 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206190.P17553851943056800258

/-! ## A206190.P9169061115195624292

`record[A206197(n+1)/A174914(n)]`
-/

namespace A206190.P9169061115195624292
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206197 (n + 1) : ℚ) / (A174914 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206190.P9169061115195624292

/-! ## A206190.P14906711751703557257

`record[gcd(A002262(n), A206197(n+1))]`
-/

namespace A206190.P14906711751703557257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206197 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206190.P14906711751703557257

/-! ## A206190.P4971343869200901513

`record[A206197(n+1)/A220688(n+1)]`
-/

namespace A206190.P4971343869200901513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206197 (n + 1) : ℚ) / (A220688 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206190.P4971343869200901513

/-!
# A206191: Number of (n+1) X 3 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to two.

The programs for A206191, there is no canonical definition to state claims against.
-/

/-! ## A206191.P9827012448202540066

`A206197(∑[n+1]+2)`
-/

namespace A206191.P9827012448202540066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206191.P9827012448202540066

/-! ## A206191.P18090478127241522529

`record[gcd(A002262(n), A206197(n+2))]`
-/

namespace A206191.P18090478127241522529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206197 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206191.P18090478127241522529

/-! ## A206191.P14062978194041995493

`record[root(A206197(n+2), A241171(n+1))]`
-/

namespace A206191.P14062978194041995493
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206197 (n + 2) : ℝ) ^ (1 / (A241171 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206191.P14062978194041995493

/-! ## A206191.P5080234317000900225

`A206197(A133263(n+1))%A206183(n+1)`
-/

namespace A206191.P5080234317000900225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206197 (A133263 (n + 1)).toNat) (A206183 (n + 1))

end

end A206191.P5080234317000900225

/-! ## A206191.P13104599332636577916

`record[A206197(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A206191.P13104599332636577916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206191.P13104599332636577916

/-!
# A206192: Number of (n+1)X4 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A206192, there is no canonical definition to state claims against.
-/

/-! ## A206192.P17492453045262796758

`A206197(∑[n+2]+4)`
-/

namespace A206192.P17492453045262796758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206192.P17492453045262796758

/-! ## A206192.P11572435913932309736

`lcm(2, A206197(A167614(n+1)))`
-/

namespace A206192.P11572435913932309736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206197 (A167614 (n + 1)).toNat)

end

end A206192.P11572435913932309736

/-! ## A206192.P1918242129140688431

`A206197(A167614(n+1))+A025469(n)`
-/

namespace A206192.P1918242129140688431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A167614 (n + 1)).toNat + A025469 n

end

end A206192.P1918242129140688431

/-! ## A206192.P5010479902545513952

`A206197(A167614(n+1))+A185284(n)`
-/

namespace A206192.P5010479902545513952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A167614 (n + 1)).toNat + A185284 n

end

end A206192.P5010479902545513952

/-! ## A206192.P17903476675172129295

`A206197(A167614(n+1))+A192541(n)`
-/

namespace A206192.P17903476675172129295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A167614 (n + 1)).toNat + A192541 n

end

end A206192.P17903476675172129295

/-!
# A206193: Number of (n+1)X5 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A206193, there is no canonical definition to state claims against.
-/

/-! ## A206193.P2592635974434320329

`A206197(A167614(n+2)+1)`
-/

namespace A206193.P2592635974434320329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A167614 (n + 2) + 1).toNat

end

end A206193.P2592635974434320329

/-! ## A206193.P16011030622601753583

`A206197(Δ[A264443(n)-n²])`
-/

namespace A206193.P16011030622601753583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (f1 (n + 1) - f1 n).toNat

end

end A206193.P16011030622601753583

/-! ## A206193.P6489618670237298270

`A206197(A141214(n+1))`
-/

namespace A206193.P6489618670237298270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A141214 (n + 1)).toNat

end

end A206193.P6489618670237298270

/-! ## A206193.P5292006519333493225

`A206197(A055998(n+2))`
-/

namespace A206193.P5292006519333493225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A055998 (n + 2)).toNat

end

end A206193.P5292006519333493225

/-! ## A206193.P10055457763521353659

`A206197(eq[2, A220062(n)])`
-/

namespace A206193.P10055457763521353659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206193.P10055457763521353659

/-!
# A206194: Number of (n+1)X6 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A206194, there is no canonical definition to state claims against.
-/

/-! ## A206194.P2077392625392534770

`A206197(A374005(n+1))`
-/

namespace A206194.P2077392625392534770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A374005 (n + 1)).toNat

end

end A206194.P2077392625392534770

/-! ## A206194.P16280185134424389607

`A206197(Δ[A264443(n)])`
-/

namespace A206194.P16280185134424389607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (f1 (n + 1) - f1 n).toNat

end

end A206194.P16280185134424389607

/-! ## A206194.P13011775632769975176

`A206197(Δ[A023545(n+1)])`
-/

namespace A206194.P13011775632769975176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (f1 (n + 1) - f1 n).toNat

end

end A206194.P13011775632769975176

/-! ## A206194.P7562378782698961227

`A206197(A264443(n+1)-A264443(n))`
-/

namespace A206194.P7562378782698961227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A264443 (n + 1) - A264443 n).toNat

end

end A206194.P7562378782698961227

/-!
# A206195: 

The programs for A206195, there is no canonical definition to state claims against.
-/

/-! ## A206195.P10357821894944035892

`A206197(eq[5, A002262(n)]+1)`
-/

namespace A206195.P10357821894944035892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A206195.P10357821894944035892

/-! ## A206195.P5086106258526907773

`A206197(eq[3, A219347(n)])`
-/

namespace A206195.P5086106258526907773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206195.P5086106258526907773

/-!
# A206196: 

The programs for A206196, there is no canonical definition to state claims against.
-/

/-! ## A206196.P18041869081533785078

`A206197(eq[6, A193592(n)])`
-/

namespace A206196.P18041869081533785078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206196.P18041869081533785078

/-!
# A206198: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly one clockwise edge increases.

The programs for A206198, there is no canonical definition to state claims against.
-/

/-! ## A206198.P15384788155739751416

`A206206((n+1)²+n²)`
-/

namespace A206198.P15384788155739751416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 ((n + 1) ^ 2 + n ^ 2)

end

end A206198.P15384788155739751416

/-! ## A206198.P4199834251569354879

`lcm(2, A206206(A001844(n)))`
-/

namespace A206198.P4199834251569354879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206206 (A001844 n).toNat)

end

end A206198.P4199834251569354879

/-! ## A206198.P10575206471537719230

`record[gcd(A114327(n), A206206(n+1))]`
-/

namespace A206198.P10575206471537719230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A206206 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206198.P10575206471537719230

/-! ## A206198.P5671196391612126259

`record[root(A206206(n+1), A303950(n+1))]`
-/

namespace A206198.P5671196391612126259
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206206 (n + 1) : ℝ) ^ (1 / (A303950 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206198.P5671196391612126259

/-! ## A206198.P16778267319105087590

`A206206(∑[A008574(n)])+A000038(n)%2`
-/

namespace A206198.P16778267319105087590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + Int.tmod (A000038 n) 2

end

end A206198.P16778267319105087590

/-!
# A206199: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly one clockwise edge increases.

The programs for A206199, there is no canonical definition to state claims against.
-/

/-! ## A206199.P7532859729814857794

`A206206(∑[n]+1)`
-/

namespace A206199.P7532859729814857794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206199.P7532859729814857794

/-! ## A206199.P12460547622074949396

`record[A206206(n+1)]`
-/

namespace A206199.P12460547622074949396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206199.P12460547622074949396

/-! ## A206199.P8085214402851493911

`lcm(2, A206206(A000124(n)))`
-/

namespace A206199.P8085214402851493911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206206 (A000124 n).toNat)

end

end A206199.P8085214402851493911

/-! ## A206199.P10142499630981897341

`A007318(C(n, 2))*A206206(A000124(n))`
-/

namespace A206199.P10142499630981897341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A206206 (A000124 n).toNat

end

end A206199.P10142499630981897341

/-! ## A206199.P8774879425935036345

`A206206(A000124(n))+val(A014963(4*n+2), 3)`
-/

namespace A206199.P8774879425935036345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (A000124 n).toNat + (SequenceMachineLib.valuation (A014963 (4 * n + 2)).toNat 3 : ℤ)

end

end A206199.P8774879425935036345

