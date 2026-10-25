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
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A197300: The Riemann primes of the theta type and index 4.

The programs for A197300, there is no canonical definition to state claims against.
-/

/-! ## A197300.P17525537228063726017

`eq[A003415(n), A032548(A250120(n))]`
-/

namespace A197300.P17525537228063726017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A250120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197300.P17525537228063726017

/-! ## A197300.P2338475975288152101

`eq[A018783(n), A032548(A250120(n))]`
-/

namespace A197300.P2338475975288152101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A250120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197300.P2338475975288152101

/-! ## A197300.P13660619000264077590

`∩[A040179(n+1), A335524(n+1)]`
-/

namespace A197300.P13660619000264077590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197300.P13660619000264077590

/-! ## A197300.P14659633114178689103

`∩[A040986(n+1), A335524(n+1)]`
-/

namespace A197300.P14659633114178689103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197300.P14659633114178689103

/-!
# A197301: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,4,0,2,1 for x=0,1,2,3,4.

The programs for A197301, there is no canonical definition to state claims against.
-/

/-! ## A197301.P2081555220759086040

`A197307(∑[4*n]+1)`
-/

namespace A197301.P2081555220759086040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197301.P2081555220759086040

/-! ## A197301.P18402746733229811053

`A197307(A001844(n))+char[10]`
-/

namespace A197301.P18402746733229811053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197301.P18402746733229811053

/-! ## A197301.P9661364103340810897

`record[A003982(n)*A197307(n+1)]`
-/

namespace A197301.P9661364103340810897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197301.P9661364103340810897

/-! ## A197301.P4676478302775285671

`record[gcd(A037012(n), A197307(n+1))]`
-/

namespace A197301.P4676478302775285671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A197307 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197301.P4676478302775285671

/-!
# A197302: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,2,1 for x=0,1,2,3,4.

The programs for A197302, there is no canonical definition to state claims against.
-/

/-! ## A197302.P4980422978804791749

`A197307(∑[n+2]+4)`
-/

namespace A197302.P4980422978804791749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197302.P4980422978804791749

/-! ## A197302.P8549161553917864020

`A197307(A167614(n+1))+A185255(n)`
-/

namespace A197302.P8549161553917864020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A167614 (n + 1)).toNat + A185255 n

end

end A197302.P8549161553917864020

/-! ## A197302.P249534045192291260

`gcd(A000038(n), A197307(A167614(n+1)))`
-/

namespace A197302.P249534045192291260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A197307 (A167614 (n + 1)).toNat)

end

end A197302.P249534045192291260

/-! ## A197302.P847139173364980262

`A197307(A167614(n+1))%A253364(n+1)`
-/

namespace A197302.P847139173364980262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197307 (A167614 (n + 1)).toNat) (A253364 (n + 1))

end

end A197302.P847139173364980262

/-! ## A197302.P8389091463618519914

`or(A070105(n+1), A197307(A167614(n+1)))`
-/

namespace A197302.P8389091463618519914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070105 (n + 1)) (A197307 (A167614 (n + 1)).toNat)

end

end A197302.P8389091463618519914

/-!
# A197303: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,2,1 for x=0,1,2,3,4.

The programs for A197303, there is no canonical definition to state claims against.
-/

/-! ## A197303.P2190156325677921354

`A197307(A374004(n+1))`
-/

namespace A197303.P2190156325677921354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A374004 (n + 1)).toNat

end

end A197303.P2190156325677921354

/-! ## A197303.P12953584478392461808

`A197307(A141214(n)+7)`
-/

namespace A197303.P12953584478392461808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A141214 n + 7).toNat

end

end A197303.P12953584478392461808

/-! ## A197303.P14922283391914851579

`A197307(A052905(n)+9)`
-/

namespace A197303.P14922283391914851579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A052905 n + 9).toNat

end

end A197303.P14922283391914851579

/-! ## A197303.P16345630512824526812

`A197307(A055999(n)+10)`
-/

namespace A197303.P16345630512824526812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A055999 n + 10).toNat

end

end A197303.P16345630512824526812

/-! ## A197303.P13190682631236845776

`A197307(A167614(n+2)+1)`
-/

namespace A197303.P13190682631236845776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A167614 (n + 2) + 1).toNat

end

end A197303.P13190682631236845776

/-!
# A197304: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,2,1 for x=0,1,2,3,4.

The programs for A197304, there is no canonical definition to state claims against.
-/

/-! ## A197304.P11832001785906969005

`A197307(A374005(n+1))`
-/

namespace A197304.P11832001785906969005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A374005 (n + 1)).toNat

end

end A197304.P11832001785906969005

/-! ## A197304.P13867253704415272388

`A197307(A167499(n+3))`
-/

namespace A197304.P13867253704415272388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A167499 (n + 3)).toNat

end

end A197304.P13867253704415272388

/-! ## A197304.P5168598783030530416

`A197307(A155212(n)+13)`
-/

namespace A197304.P5168598783030530416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A155212 n + 13).toNat

end

end A197304.P5168598783030530416

/-! ## A197304.P15544600019329999718

`A197307(A056000(n)+15)`
-/

namespace A197304.P15544600019329999718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A056000 n + 15).toNat

end

end A197304.P15544600019329999718

/-! ## A197304.P8102189675299675379

`A197307(eq[7, A066657(n)])`
-/

namespace A197304.P8102189675299675379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197304.P8102189675299675379

/-!
# A197305: Number of n X 6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,2,1 for x=0,1,2,3,4.

The programs for A197305, there is no canonical definition to state claims against.
-/

/-! ## A197305.P2472613985913588993

`A197307(A374007(n+1))`
-/

namespace A197305.P2472613985913588993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A374007 (n + 1)).toNat

end

end A197305.P2472613985913588993

/-! ## A197305.P3965208354670812176

`A197307(A056115(n)+21)`
-/

namespace A197305.P3965208354670812176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A056115 n + 21).toNat

end

end A197305.P3965208354670812176

/-! ## A197305.P9684140350365261931

`A197307(A246172(n+1)+20)`
-/

namespace A197305.P9684140350365261931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A246172 (n + 1) + 20).toNat

end

end A197305.P9684140350365261931

/-! ## A197305.P9315914752273529354

`A197307(eq[7, A131818(n+1)])`
-/

namespace A197305.P9315914752273529354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197305.P9315914752273529354

/-! ## A197305.P3840397493721006113

`A197307(eq[5, A193592(n)])`
-/

namespace A197305.P3840397493721006113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197305.P3840397493721006113

/-!
# A197306: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,2,1 for x=0,1,2,3,4.

The programs for A197306, there is no canonical definition to state claims against.
-/

/-! ## A197306.P14193432220120459612

`A197307(A374008(n+1))`
-/

namespace A197306.P14193432220120459612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A374008 (n + 1)).toNat

end

end A197306.P14193432220120459612

/-! ## A197306.P1867915136700025693

`A197307(A056119(n)+28)`
-/

namespace A197306.P1867915136700025693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A056119 n + 28).toNat

end

end A197306.P1867915136700025693

/-! ## A197306.P10111605158820646419

`A197307(eq[11, A066657(n)])`
-/

namespace A197306.P10111605158820646419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197306.P10111605158820646419

/-! ## A197306.P1025725526319123516

`A197307(A167499(n+5)+2)`
-/

namespace A197306.P1025725526319123516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (A167499 (n + 5) + 2).toNat

end

end A197306.P1025725526319123516

/-! ## A197306.P12000752213666402719

`A197307(eq[8, A131818(n+1)])`
-/

namespace A197306.P12000752213666402719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197306.P12000752213666402719

/-!
# A197307: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,4,0,2,1 for x=0,1,2,3,4.

The programs for A197307, there is no canonical definition to state claims against.
-/

/-! ## A197307.P9387067662519519615

`A107436(A008619(A197457(n+1)²))`
-/

namespace A197307.P9387067662519519615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (A008619 (A197457 (n + 1) ^ 2).toNat).toNat

end

end A197307.P9387067662519519615

/-! ## A197307.P7151476675117991689

`A196322(n+1)+A010894(A003401(n+1))`
-/

namespace A197307.P7151476675117991689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (n + 1) + A010894 ((A003401 (n + 1)).toNat + 21)

end

end A197307.P7151476675117991689

/-! ## A197307.P1436703298388785450

`A196343(n+1)+A010894(A003401(n+1))`
-/

namespace A197307.P1436703298388785450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (n + 1) + A010894 ((A003401 (n + 1)).toNat + 21)

end

end A197307.P1436703298388785450

/-! ## A197307.P17339958620179250164

`A072088(A197457(n+1))`
-/

namespace A197307.P17339958620179250164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A197457 (n + 1)).toNat

end

end A197307.P17339958620179250164

/-! ## A197307.P10125580976381661304

`A197457(A000005(2^n))`
-/

namespace A197307.P10125580976381661304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A000005 (2 ^ n)).toNat

end

end A197307.P10125580976381661304

/-!
# A197308: Divisors of 11111111.

The programs for A197308, there is no canonical definition to state claims against.
-/

/-! ## A197308.P13180918648259340180

`record[gcd(A027890(n+1), A286863(3*n+4))]`
-/

namespace A197308.P13180918648259340180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027890 (n + 1)) (A286863 (3 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197308.P13180918648259340180

/-! ## A197308.P6027165728902427373

`filter[A027890(n+1), A187074(#)]`
-/

namespace A197308.P6027165728902427373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A197308.P6027165728902427373

/-! ## A197308.P6383969966214200603

`filter[A027890(n+1), A359374(#)]`
-/

namespace A197308.P6383969966214200603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A197308.P6383969966214200603

/-! ## A197308.P3316237980620776699

`filter[A027890(n+1), A359377(#)]`
-/

namespace A197308.P3316237980620776699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A197308.P3316237980620776699

/-! ## A197308.P3838021835267574602

`filter[A027890(n+1), A372573(#)]`
-/

namespace A197308.P3838021835267574602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A197308.P3838021835267574602

/-!
# A197309: Divisors of the 9th repunit 111111111.

The programs for A197309, there is no canonical definition to state claims against.
-/

/-! ## A197309.P5786258621534326767

`A027889(record[A323436(n)])`
-/

namespace A197309.P5786258621534326767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027889 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A197309.P5786258621534326767

/-! ## A197309.P8796115512855258254

`A027889(A100959(n+1)*A370062(n+1))`
-/

namespace A197309.P8796115512855258254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027889 (A100959 (n + 1) * A370062 (n + 1)).toNat

end

end A197309.P8796115512855258254

/-! ## A197309.P16147332028173096429

`A027889(A228853(n+1)^(A185144(n)+1))`
-/

namespace A197309.P16147332028173096429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027889 (SequenceMachineLib.roundAway ((A228853 (n + 1) : ℚ) ^ (A185144 n + 1 : ℤ))).toNat

end

end A197309.P16147332028173096429

/-! ## A197309.P7334228780806585906

`A027889(A100959(n+1)^A370062(n+1))`
-/

namespace A197309.P7334228780806585906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027889 (SequenceMachineLib.roundAway ((A100959 (n + 1) : ℚ) ^ (A370062 (n + 1) : ℤ))).toNat

end

end A197309.P7334228780806585906

/-!
# A197310: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,1,1,0,0 for x=0,1,2,3,4.

The programs for A197310, there is no canonical definition to state claims against.
-/

/-! ## A197310.P10778371281605569467

`A197317(∑[4*n]+1)`
-/

namespace A197310.P10778371281605569467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197310.P10778371281605569467

/-! ## A197310.P13572708939466766125

`A197317(A001844(n))+char[27]`
-/

namespace A197310.P13572708939466766125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197310.P13572708939466766125

/-! ## A197310.P9879777044642483495

`A007318(∑[n])*A197317(A001844(n))`
-/

namespace A197310.P9879777044642483495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A197317 (A001844 n).toNat

end

end A197310.P9879777044642483495

/-! ## A197310.P17557570799059322889

`A197317(A001844(n))*A256100(n+1)`
-/

namespace A197310.P17557570799059322889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A001844 n).toNat * A256100 (n + 1)

end

end A197310.P17557570799059322889

/-! ## A197310.P2813631013835099303

`A197317(A001844(n))*A318809(n+1)`
-/

namespace A197310.P2813631013835099303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A001844 n).toNat * A318809 (n + 1)

end

end A197310.P2813631013835099303

/-!
# A197311: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,1,1,0,0 for x=0,1,2,3,4.

The programs for A197311, there is no canonical definition to state claims against.
-/

/-! ## A197311.P6908051708271772524

`A197317(∑[n+1]+2)`
-/

namespace A197311.P6908051708271772524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197311.P6908051708271772524

/-! ## A197311.P4123202802980031666

`or(char[2], A197317(A133263(n+1)))`
-/

namespace A197311.P4123202802980031666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A197317 (A133263 (n + 1)).toNat)

end

end A197311.P4123202802980031666

/-! ## A197311.P1375984407317163177

`∑{d}[A197317(A133263(n+1)), A000010(#)]`
-/

namespace A197311.P1375984407317163177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A133263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A197311.P1375984407317163177

/-! ## A197311.P13726681538162805357

`A197317(A133263(n+1))%A000032(n)²`
-/

namespace A197311.P13726681538162805357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197317 (A133263 (n + 1)).toNat) (A000032 n ^ 2)

end

end A197311.P13726681538162805357

/-! ## A197311.P7759285198641318896

`A007318(C(2, n))*A197317(A133263(n+1))`
-/

namespace A197311.P7759285198641318896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A197317 (A133263 (n + 1)).toNat

end

end A197311.P7759285198641318896

/-!
# A197312: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,1,1,0,0 for x=0,1,2,3,4.

The programs for A197312, there is no canonical definition to state claims against.
-/

/-! ## A197312.P17770612381203648253

`A197317(∑[n+2]+4)`
-/

namespace A197312.P17770612381203648253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197312.P17770612381203648253

/-! ## A197312.P2510710594204350904

`A197317(A167614(n+1))+char[17]`
-/

namespace A197312.P2510710594204350904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197312.P2510710594204350904

/-! ## A197312.P12751224449496440544

`gcd(A000038(n), A197317(A167614(n+1)))`
-/

namespace A197312.P12751224449496440544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A197317 (A167614 (n + 1)).toNat)

end

end A197312.P12751224449496440544

/-! ## A197312.P7295217419553941401

`xor(A185284(n), A197317(A167614(n+1)))`
-/

namespace A197312.P7295217419553941401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 n) (A197317 (A167614 (n + 1)).toNat)

end

end A197312.P7295217419553941401

/-!
# A197313: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,1,1,0,0 for x=0,1,2,3,4.

The programs for A197313, there is no canonical definition to state claims against.
-/

/-! ## A197313.P10603682159843177682

`A197317(∑[n+3]+7)`
-/

namespace A197313.P10603682159843177682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A197313.P10603682159843177682

/-! ## A197313.P7553161577415752907

`A197317(A055999(n)+10)+char[24]`
-/

namespace A197313.P7553161577415752907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197313.P7553161577415752907

/-! ## A197313.P12184145716577196194

`lcm(A001221(n+2), A197317(A055999(n)+10))`
-/

namespace A197313.P12184145716577196194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A197317 (A055999 n + 10).toNat)

end

end A197313.P12184145716577196194

/-! ## A197313.P3745494617360641351

`A007318(C(2, n))*A197317(A055999(n)+10)`
-/

namespace A197313.P3745494617360641351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A197317 (A055999 n + 10).toNat

end

end A197313.P3745494617360641351

/-! ## A197313.P18301175755452401189

`A007318(∏{e}[n, #])*A197317(A055999(n)+10)`
-/

namespace A197313.P18301175755452401189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A197317 (A055999 n + 10).toNat

end

end A197313.P18301175755452401189

/-!
# A197314: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,1,1,0,0 for x=0,1,2,3,4.

The programs for A197314, there is no canonical definition to state claims against.
-/

/-! ## A197314.P6729300261381944852

`A197317(A374005(n+1))`
-/

namespace A197314.P6729300261381944852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A374005 (n + 1)).toNat

end

end A197314.P6729300261381944852

/-! ## A197314.P4264762881984282590

`A197317(A167499(n+3))`
-/

namespace A197314.P4264762881984282590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A167499 (n + 3)).toNat

end

end A197314.P4264762881984282590

/-! ## A197314.P1939610217037313657

`A197317(A155212(n)+13)`
-/

namespace A197314.P1939610217037313657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A155212 n + 13).toNat

end

end A197314.P1939610217037313657

/-! ## A197314.P771365331235674235

`A197317(A056000(n)+15)`
-/

namespace A197314.P771365331235674235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A056000 n + 15).toNat

end

end A197314.P771365331235674235

/-! ## A197314.P10891361534926515912

`A197317(eq[7, A066657(n)])`
-/

namespace A197314.P10891361534926515912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197314.P10891361534926515912

/-!
# A197315: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,1,1,0,0 for x=0,1,2,3,4.

The programs for A197315, there is no canonical definition to state claims against.
-/

/-! ## A197315.P1625816632113728563

`A197317(A374007(n+1))`
-/

namespace A197315.P1625816632113728563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A374007 (n + 1)).toNat

end

end A197315.P1625816632113728563

/-! ## A197315.P16790783382039079848

`A197317(A166136(n+4))`
-/

namespace A197315.P16790783382039079848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A166136 (n + 4)).toNat

end

end A197315.P16790783382039079848

/-! ## A197315.P8525200432160892870

`A197317(A056115(n)+21)`
-/

namespace A197315.P8525200432160892870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A056115 n + 21).toNat

end

end A197315.P8525200432160892870

/-! ## A197315.P11112661215844974274

`A197317(A167499(n+4)+1)`
-/

namespace A197315.P11112661215844974274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A167499 (n + 4) + 1).toNat

end

end A197315.P11112661215844974274

/-! ## A197315.P2132679833934655156

`A197317(eq[7, A131818(n+1)])`
-/

namespace A197315.P2132679833934655156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197315.P2132679833934655156

/-!
# A197316: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,1,1,0,0 for x=0,1,2,3,4.

The programs for A197316, there is no canonical definition to state claims against.
-/

/-! ## A197316.P14405337380234250511

`A197317(A374008(n+1))`
-/

namespace A197316.P14405337380234250511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A374008 (n + 1)).toNat

end

end A197316.P14405337380234250511

/-! ## A197316.P13376305401089137981

`A197317(eq[11, A066657(n)])`
-/

namespace A197316.P13376305401089137981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197316.P13376305401089137981

/-! ## A197316.P9173491349744814353

`A197317(A133263(n+6)+5)`
-/

namespace A197316.P9173491349744814353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A133263 (n + 6) + 5).toNat

end

end A197316.P9173491349744814353

/-! ## A197316.P2922926530626757097

`A197317(eq[8, A131818(n+1)])`
-/

namespace A197316.P2922926530626757097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197316.P2922926530626757097

/-! ## A197316.P10215038873756097072

`A197317(A000124(n+7)-(n+1))`
-/

namespace A197316.P10215038873756097072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A197316.P10215038873756097072

/-!
# A197317: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,1,1,0,0 for x=0,1,2,3,4.

The programs for A197317, there is no canonical definition to state claims against.
-/

/-! ## A197317.P14652314320442975353

`A278287(A067804(n)+6)`
-/

namespace A197317.P14652314320442975353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278287 (A067804 n + 6).toNat

end

end A197317.P14652314320442975353

/-! ## A197317.P9146414749660829128

`A138036(A024062(n)%A059366(n))`
-/

namespace A197317.P9146414749660829128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 (Int.tmod (A024062 n) (A059366 n)).toNat

end

end A197317.P9146414749660829128

/-!
# A197318: Divisors of the repunit 111111111111 = A002275(12).

The programs for A197318, there is no canonical definition to state claims against.
-/

/-! ## A197318.P7183849012494472574

`record[∏{p}[A027897(n+1), #]]`
-/

namespace A197318.P7183849012494472574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197318.P7183849012494472574

/-! ## A197318.P12902548718177839704

`record[A007913(A027897(n+1))]`
-/

namespace A197318.P12902548718177839704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A027897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197318.P12902548718177839704

/-! ## A197318.P7751697714290277163

`filter[A027897(n+1), A008966(#)]`
-/

namespace A197318.P7751697714290277163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A197318.P7751697714290277163

/-! ## A197318.P17535638721308092277

`filter[A027897(n+1), A359590(#)]`
-/

namespace A197318.P17535638721308092277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A197318.P17535638721308092277

/-! ## A197318.P18150689442577044050

`filter[A027897(n+1), A359592(#)]`
-/

namespace A197318.P18150689442577044050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A197318.P18150689442577044050

/-! ## A197318.P14851761449865800826

`filter[A027897(n+1), A359834(#)]`
-/

namespace A197318.P14851761449865800826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A197318.P14851761449865800826

/-! ## A197318.P7204575164640547490

`∩[A005117(n+1), A027897(n+1)]`
-/

namespace A197318.P7204575164640547490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197318.P7204575164640547490

/-! ## A197318.P898571048359460630

`filter[A027897(n+1), A323154(#)]`
-/

namespace A197318.P898571048359460630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A197318.P898571048359460630

/-! ## A197318.P1967691934340536807

`filter[A027897(n+1), A323239(#)]`
-/

namespace A197318.P1967691934340536807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A197318.P1967691934340536807

/-! ## A197318.P8245566905191975277

`filter[A027897(n+1), A353519(#)]`
-/

namespace A197318.P8245566905191975277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A197318.P8245566905191975277

/-!
# A197320: a(n) = cosh(n*arccosh(2^n)).

The programs for A197320, the canonical program `A197320.P8705601639028113975` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197320 has offset 0).

The definition of A197320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197320.P8705601639028113975

`((2^n+sqrt(4^n-1))^n+1/(2^n+sqrt(4^n-1))^n)/2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197320

/-- `((2^n+sqrt(4^n-1))^n+1/(2^n+sqrt(4^n-1))^n)/2` -/
def P8705601639028113975.Spec : Prop :=
  ∀ n, P8705601639028113975.a n = (A197320 n : ℝ)

end A197320

/-! ## A197320.P7183578306732282579

`A101124(eq[A002262(n), A130321(n)])`
-/

namespace A197320.P7183578306732282579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A197320.P7183578306732282579

namespace A197320

/-- `A101124(eq[A002262(n), A130321(n)])` -/
def P7183578306732282579.Spec : Prop :=
  ∀ n, P7183578306732282579.a n = A197320 n

end A197320

/-! ## A197320.P17551704126056692541

`A322836(eq[A025581(n), A059268(n)])`
-/

namespace A197320.P17551704126056692541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A197320.P17551704126056692541

namespace A197320

/-- `A322836(eq[A025581(n), A059268(n)])` -/
def P17551704126056692541.Spec : Prop :=
  ∀ n, P17551704126056692541.a n = A197320 n

end A197320

/-!
# A197321: a(n) = binomial(n+10, 10)*8^n.

The programs for A197321, the canonical program `A197321.P8509775716450886867` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197321 has offset 0).

The definition of A197321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+10, 10)*8^n` (program `A197321.P8509775716450886867`, by `A197321.P8509775716450886867.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197321.P15511781707171831614

`8^n*C(n+10, 10)`
-/

namespace A197321.P15511781707171831614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * Nat.choose (n + 10) 10

end

end A197321.P15511781707171831614

namespace A197321

/-- `8^n*C(n+10, 10)` -/
def P15511781707171831614.Spec : Prop :=
  ∀ n, (P15511781707171831614.a n : ℤ) = A197321 n

theorem P15511781707171831614.correct : P15511781707171831614.Spec := by
  intro n
  simp only [A197321, Nat.add_sub_cancel, A197321.P15511781707171831614.a, A197321.P8509775716450886867.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A197321

/-! ## A197321.P8509775716450886867

`C(n+10, 10)*8^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197321

/-- `C(n+10, 10)*8^n` -/
def P8509775716450886867.Spec : Prop :=
  ∀ n, (P8509775716450886867.a n : ℤ) = A197321 n

theorem P8509775716450886867.correct : P8509775716450886867.Spec := by
  intro n
  simp only [A197321]

end A197321

/-! ## A197321.P15538812322421648141

`4*(20/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A197321.P15538812322421648141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((20 / (n : ℚ) + 2) * a (n - 1))

end

end A197321.P15538812322421648141

namespace A197321

/-- `4*(20/n+2)*a(n-1)` -/
def P15538812322421648141.Spec : Prop :=
  ∀ n, P15538812322421648141.a n = (A197321 n : ℚ)

end A197321

/-! ## A197321.P17784123812990986546

`4^n*A172242(n)`
-/

namespace A197321.P17784123812990986546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A172242 (n + 10)

end

end A197321.P17784123812990986546

namespace A197321

/-- `4^n*A172242(n)` -/
def P17784123812990986546.Spec : Prop :=
  ∀ n, P17784123812990986546.a n = A197321 n

end A197321

/-! ## A197321.P5226063851683568084

`8^n*A001287(n)`
-/

namespace A197321.P5226063851683568084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A001287 (n + 10)

end

end A197321.P5226063851683568084

namespace A197321

/-- `8^n*A001287(n)` -/
def P5226063851683568084.Spec : Prop :=
  ∀ n, P5226063851683568084.a n = A197321 n

theorem P5226063851683568084.correct : P5226063851683568084.Spec := by
  intro n
  simp only [A197321, Nat.add_sub_cancel, A197321.P5226063851683568084.a, A197321.P8509775716450886867.a, A001287, A001287.P7309496825709961420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A197321

/-! ## A197321.P8569538284565381928

`8^n*∑[A000582(n+9)]`
-/

namespace A197321.P8569538284565381928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197321.P8569538284565381928

namespace A197321

/-- `8^n*∑[A000582(n+9)]` -/
def P8569538284565381928.Spec : Prop :=
  ∀ n, P8569538284565381928.a n = A197321 n

end A197321

/-! ## A197321.P14851877606353774071

`8^n*∑[∑[A000581(n+8)]]`
-/

namespace A197321.P14851877606353774071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197321.P14851877606353774071

namespace A197321

/-- `8^n*∑[∑[A000581(n+8)]]` -/
def P14851877606353774071.Spec : Prop :=
  ∀ n, P14851877606353774071.a n = A197321 n

end A197321

/-! ## A197321.P6018515029575987926

`A001287(n)*A011782(A005408(n)+n)`
-/

namespace A197321.P6018515029575987926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A011782 (A005408 n + (n : ℤ)).toNat

end

end A197321.P6018515029575987926

namespace A197321

/-- `A001287(n)*A011782(A005408(n)+n)` -/
def P6018515029575987926.Spec : Prop :=
  ∀ n, P6018515029575987926.a n = A197321 n

end A197321

/-! ## A197321.P10374863804850886906

`A000079(n)*A001287(n)*A000079(n)²`
-/

namespace A197321.P10374863804850886906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001287 (n + 10) * A000079 n ^ 2

end

end A197321.P10374863804850886906

namespace A197321

/-- `A000079(n)*A001287(n)*A000079(n)²` -/
def P10374863804850886906.Spec : Prop :=
  ∀ n, P10374863804850886906.a n = A197321 n

end A197321

/-!
# A197322: a(n) = floor((2*n+1/n)^n).

The programs for A197322, the canonical program `A197322.P2579054620899695806` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197322 has offset 1).

The definition of A197322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2*(n+1)+1/(n+1))^(n+1))` (program `A197322.P2579054620899695806`, by `A197322.P2579054620899695806.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197322.P2579054620899695806

`floor((2*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197322

/-- `floor((2*(n+1)+1/(n+1))^(n+1))` -/
def P2579054620899695806.Spec : Prop :=
  ∀ n, P2579054620899695806.a n = A197322 (n + 1)

theorem P2579054620899695806.correct : P2579054620899695806.Spec := by
  intro n
  simp only [A197322, Nat.add_sub_cancel]

end A197322

/-! ## A197322.P984240655759593030

`A197716(n+1)-n²%(n+1)`
-/

namespace A197322.P984240655759593030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197716 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197322.P984240655759593030

namespace A197322

/-- `A197716(n+1)-n²%(n+1)` -/
def P984240655759593030.Spec : Prop :=
  ∀ n, P984240655759593030.a n = A197322 (n + 1)

end A197322

/-! ## A197322.P1223029375610503242

`A057428(n)+ceil(((n+2)/(n+1)+2*n+1)^(n+1))`
-/

namespace A197322.P1223029375610503242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ⌈((n + 2 : ℚ) / (n + 1 : ℚ) + (2 * n + 1 : ℚ)) ^ (n + 1)⌉

end

end A197322.P1223029375610503242

namespace A197322

/-- `A057428(n)+ceil(((n+2)/(n+1)+2*n+1)^(n+1))` -/
def P1223029375610503242.Spec : Prop :=
  ∀ n, P1223029375610503242.a n = A197322 (n + 1)

end A197322

/-! ## A197322.P4427108320787877478

`ceil(((n+2)/(n+1)+2*n+1)^(n+1))-A057427(n)`
-/

namespace A197322.P4427108320787877478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 2 : ℚ) / (n + 1 : ℚ) + (2 * n + 1 : ℚ)) ^ (n + 1)⌉ - A057427 n

end

end A197322.P4427108320787877478

namespace A197322

/-- `ceil(((n+2)/(n+1)+2*n+1)^(n+1))-A057427(n)` -/
def P4427108320787877478.Spec : Prop :=
  ∀ n, P4427108320787877478.a n = A197322 (n + 1)

end A197322

/-! ## A197322.P2118184635898339125

`ceil(((n+2)/(n+1)+2*n+1)^(n+1))-A178334(n)`
-/

namespace A197322.P2118184635898339125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 2 : ℚ) / (n + 1 : ℚ) + (2 * n + 1 : ℚ)) ^ (n + 1)⌉ - A178334 n

end

end A197322.P2118184635898339125

namespace A197322

/-- `ceil(((n+2)/(n+1)+2*n+1)^(n+1))-A178334(n)` -/
def P2118184635898339125.Spec : Prop :=
  ∀ n, P2118184635898339125.a n = A197322 (n + 1)

end A197322

/-!
# A197323: Floor((3*n+1/n)^n).

The programs for A197323, the canonical program `A197323.P16320407037325785209` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197323 has offset 1).

The definition of A197323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3*(n+1)+1/(n+1))^(n+1))` (program `A197323.P16320407037325785209`, by `A197323.P16320407037325785209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197323.P16320407037325785209

`floor((3*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197323

/-- `floor((3*(n+1)+1/(n+1))^(n+1))` -/
def P16320407037325785209.Spec : Prop :=
  ∀ n, P16320407037325785209.a n = A197323 (n + 1)

theorem P16320407037325785209.correct : P16320407037325785209.Spec := by
  intro n
  simp only [A197323, Nat.add_sub_cancel]

end A197323

/-! ## A197323.P14615961801579540800

`A197717(n+1)-ceil(abs(sin(n)))`
-/

namespace A197323.P14615961801579540800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197717 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A197323.P14615961801579540800

namespace A197323

/-- `A197717(n+1)-ceil(abs(sin(n)))` -/
def P14615961801579540800.Spec : Prop :=
  ∀ n, P14615961801579540800.a n = A197323 (n + 1)

end A197323

/-! ## A197323.P15135883760517561204

`A197717(n+1)+A057428(n)`
-/

namespace A197323.P15135883760517561204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197717 (n + 1) + A057428 n

end

end A197323.P15135883760517561204

namespace A197323

/-- `A197717(n+1)+A057428(n)` -/
def P15135883760517561204.Spec : Prop :=
  ∀ n, P15135883760517561204.a n = A197323 (n + 1)

end A197323

/-! ## A197323.P7388320228474673468

`A197717(n+1)-A057427(n)`
-/

namespace A197323.P7388320228474673468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197717 (n + 1) - A057427 n

end

end A197323.P7388320228474673468

namespace A197323

/-- `A197717(n+1)-A057427(n)` -/
def P7388320228474673468.Spec : Prop :=
  ∀ n, P7388320228474673468.a n = A197323 (n + 1)

end A197323

/-! ## A197323.P8177236752488538029

`A197717(n+1)-A178334(n)`
-/

namespace A197323.P8177236752488538029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197717 (n + 1) - A178334 n

end

end A197323.P8177236752488538029

namespace A197323

/-- `A197717(n+1)-A178334(n)` -/
def P8177236752488538029.Spec : Prop :=
  ∀ n, P8177236752488538029.a n = A197323 (n + 1)

end A197323

/-!
# A197324: a(n) = floor((4*n+1/n)^n).

The programs for A197324, the canonical program `A197324.P15861100447783686301` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197324 has offset 1).

The definition of A197324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((4*(n+1)+1/(n+1))^(n+1))` (program `A197324.P15861100447783686301`, by `A197324.P15861100447783686301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197324.P15861100447783686301

`floor((4*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197324

/-- `floor((4*(n+1)+1/(n+1))^(n+1))` -/
def P15861100447783686301.Spec : Prop :=
  ∀ n, P15861100447783686301.a n = A197324 (n + 1)

theorem P15861100447783686301.correct : P15861100447783686301.Spec := by
  intro n
  simp only [A197324, Nat.add_sub_cancel]

end A197324

/-! ## A197324.P14474190320389256691

`A197764(n+1)-n²%(n+1)`
-/

namespace A197324.P14474190320389256691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197764 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197324.P14474190320389256691

namespace A197324

/-- `A197764(n+1)-n²%(n+1)` -/
def P14474190320389256691.Spec : Prop :=
  ∀ n, P14474190320389256691.a n = A197324 (n + 1)

end A197324

/-! ## A197324.P1204232231692197256

`A197764(n+1)+A057428(n)`
-/

namespace A197324.P1204232231692197256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197764 (n + 1) + A057428 n

end

end A197324.P1204232231692197256

namespace A197324

/-- `A197764(n+1)+A057428(n)` -/
def P1204232231692197256.Spec : Prop :=
  ∀ n, P1204232231692197256.a n = A197324 (n + 1)

end A197324

/-! ## A197324.P5782663388116557303

`A197764(n+1)-A057427(n)`
-/

namespace A197324.P5782663388116557303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197764 (n + 1) - A057427 n

end

end A197324.P5782663388116557303

namespace A197324

/-- `A197764(n+1)-A057427(n)` -/
def P5782663388116557303.Spec : Prop :=
  ∀ n, P5782663388116557303.a n = A197324 (n + 1)

end A197324

/-! ## A197324.P16472464579661398931

`A197764(n+1)-A178334(n)`
-/

namespace A197324.P16472464579661398931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197764 (n + 1) - A178334 n

end

end A197324.P16472464579661398931

namespace A197324

/-- `A197764(n+1)-A178334(n)` -/
def P16472464579661398931.Spec : Prop :=
  ∀ n, P16472464579661398931.a n = A197324 (n + 1)

end A197324

/-!
# A197325: Floor((5n+1/n)^n).

The programs for A197325, the canonical program `A197325.P1042972070440078685` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197325 has offset 1).

The definition of A197325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((5*(n+1)+1/(n+1))^(n+1))` (program `A197325.P1042972070440078685`, by `A197325.P1042972070440078685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197325.P1042972070440078685

`floor((5*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197325

/-- `floor((5*(n+1)+1/(n+1))^(n+1))` -/
def P1042972070440078685.Spec : Prop :=
  ∀ n, P1042972070440078685.a n = A197325 (n + 1)

theorem P1042972070440078685.correct : P1042972070440078685.Spec := by
  intro n
  simp only [A197325, Nat.add_sub_cancel]

end A197325

/-! ## A197325.P5418062426691260454

`A197765(n+1)-n²%(n+1)`
-/

namespace A197325.P5418062426691260454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197765 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197325.P5418062426691260454

namespace A197325

/-- `A197765(n+1)-n²%(n+1)` -/
def P5418062426691260454.Spec : Prop :=
  ∀ n, P5418062426691260454.a n = A197325 (n + 1)

end A197325

/-! ## A197325.P5269258161751819483

`A197765(n+1)+A057428(n)`
-/

namespace A197325.P5269258161751819483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197765 (n + 1) + A057428 n

end

end A197325.P5269258161751819483

namespace A197325

/-- `A197765(n+1)+A057428(n)` -/
def P5269258161751819483.Spec : Prop :=
  ∀ n, P5269258161751819483.a n = A197325 (n + 1)

end A197325

/-! ## A197325.P10245174294661754568

`A197765(n+1)-A057427(n)`
-/

namespace A197325.P10245174294661754568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197765 (n + 1) - A057427 n

end

end A197325.P10245174294661754568

namespace A197325

/-- `A197765(n+1)-A057427(n)` -/
def P10245174294661754568.Spec : Prop :=
  ∀ n, P10245174294661754568.a n = A197325 (n + 1)

end A197325

/-! ## A197325.P621844373374121299

`A197765(n+1)-A178334(n)`
-/

namespace A197325.P621844373374121299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197765 (n + 1) - A178334 n

end

end A197325.P621844373374121299

namespace A197325

/-- `A197765(n+1)-A178334(n)` -/
def P621844373374121299.Spec : Prop :=
  ∀ n, P621844373374121299.a n = A197325 (n + 1)

end A197325

/-!
# A197336: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,2,1,2 for x=0,1,2,3,4.

The programs for A197336, there is no canonical definition to state claims against.
-/

/-! ## A197336.P4671354159640628968

`A197342(∑[4*n]+1)`
-/

namespace A197336.P4671354159640628968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197336.P4671354159640628968

/-! ## A197336.P1612377545580963020

`record[A197342(A152271(n²))]`
-/

namespace A197336.P1612377545580963020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197336.P1612377545580963020

/-! ## A197336.P13963732820420177768

`record[A197342(∑[A266981(n)])]`
-/

namespace A197336.P13963732820420177768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197336.P13963732820420177768

/-! ## A197336.P3833029255115342632

`record[A197342(A272267(n+1))]`
-/

namespace A197336.P3833029255115342632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197336.P3833029255115342632

/-! ## A197336.P10787572312208252196

`record[A197342(A330613(n+1))]`
-/

namespace A197336.P10787572312208252196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197336.P10787572312208252196

/-!
# A197337: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,2,1,2 for x=0,1,2,3,4.

The programs for A197337, there is no canonical definition to state claims against.
-/

/-! ## A197337.P13735572956816450106

`A197342(∑[n+2]+4)`
-/

namespace A197337.P13735572956816450106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197337.P13735572956816450106

/-! ## A197337.P2163548717393069702

`record[A197342(A278512(2*n+1))]`
-/

namespace A197337.P2163548717393069702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A278512 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197337.P2163548717393069702

/-! ## A197337.P15246917251865785422

`A197342(A167614(n+1))+char[18]`
-/

namespace A197337.P15246917251865785422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197337.P15246917251865785422

/-! ## A197337.P1078604532804241316

`or(char[1], A197342(A055998(n)+6))`
-/

namespace A197337.P1078604532804241316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A197342 (A055998 n + 6).toNat)

end

end A197337.P1078604532804241316

/-! ## A197337.P16956089533149782449

`record[gcd(A197342(n+1), A303913(n))]`
-/

namespace A197337.P16956089533149782449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197342 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197337.P16956089533149782449

/-!
# A197338: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,2,1,2 for x=0,1,2,3,4.

The programs for A197338, there is no canonical definition to state claims against.
-/

/-! ## A197338.P16755928590587892658

`A197342(∑[n+3]+7)`
-/

namespace A197338.P16755928590587892658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A197338.P16755928590587892658

/-! ## A197338.P6341838666113721826

`A197342(A055999(n)+10)+char[17]`
-/

namespace A197338.P6341838666113721826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197338.P6341838666113721826

/-! ## A197338.P16862803134631728866

`record[gcd(A197342(n+2), A303913(n))]`
-/

namespace A197338.P16862803134631728866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197342 (n + 2)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197338.P16862803134631728866

/-! ## A197338.P16075942876889980604

`A197342(A055999(n)+10)%A197238(n+2)`
-/

namespace A197338.P16075942876889980604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197342 (A055999 n + 10).toNat) (A197238 (n + 2))

end

end A197338.P16075942876889980604

/-! ## A197338.P203577177872165971

`A007318(C(2, n))*A197342(A055999(n)+10)`
-/

namespace A197338.P203577177872165971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A197342 (A055999 n + 10).toNat

end

end A197338.P203577177872165971

/-!
# A197339: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,2,1,2 for x=0,1,2,3,4.

The programs for A197339, there is no canonical definition to state claims against.
-/

/-! ## A197339.P3189414127613392990

`A197342(A167499(n+3))`
-/

namespace A197339.P3189414127613392990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A167499 (n + 3)).toNat

end

end A197339.P3189414127613392990

/-! ## A197339.P6906189502996981837

`A197342(A155212(n)+13)`
-/

namespace A197339.P6906189502996981837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A155212 n + 13).toNat

end

end A197339.P6906189502996981837

/-! ## A197339.P6851928140273246797

`A197342(A056000(n)+15)`
-/

namespace A197339.P6851928140273246797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A056000 n + 15).toNat

end

end A197339.P6851928140273246797

/-! ## A197339.P8092092623917447130

`A197342(eq[7, A066657(n)])`
-/

namespace A197339.P8092092623917447130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197339.P8092092623917447130

/-!
# A197340: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,2,1,2 for x=0,1,2,3,4.

The programs for A197340, there is no canonical definition to state claims against.
-/

/-! ## A197340.P11504295288237239782

`A197342(A166136(n+4))`
-/

namespace A197340.P11504295288237239782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A166136 (n + 4)).toNat

end

end A197340.P11504295288237239782

/-! ## A197340.P15312912476564403615

`A197342(A056115(n)+21)`
-/

namespace A197340.P15312912476564403615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A056115 n + 21).toNat

end

end A197340.P15312912476564403615

/-! ## A197340.P4315713569644561052

`A197342(Δ[A264443(n)]+10)`
-/

namespace A197340.P4315713569644561052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (f1 (n + 1) - f1 n + 10).toNat

end

end A197340.P4315713569644561052

/-! ## A197340.P12752146794236541189

`A197342(A167499(n+4)+1)`
-/

namespace A197340.P12752146794236541189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A167499 (n + 4) + 1).toNat

end

end A197340.P12752146794236541189

/-! ## A197340.P8651654544716036282

`A197342(A000124(n+5)+5)`
-/

namespace A197340.P8651654544716036282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A000124 (n + 5) + 5).toNat

end

end A197340.P8651654544716036282

/-!
# A197341: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,2,1,2 for x=0,1,2,3,4.

The programs for A197341, there is no canonical definition to state claims against.
-/

/-! ## A197341.P3777397808918623581

`A197342(A056119(n)+28)`
-/

namespace A197341.P3777397808918623581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A056119 n + 28).toNat

end

end A197341.P3777397808918623581

/-! ## A197341.P8050230306075502964

`A197342(eq[11, A066657(n)])`
-/

namespace A197341.P8050230306075502964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197341.P8050230306075502964

/-! ## A197341.P6210602250306761790

`A197342(A167499(n+5)+2)`
-/

namespace A197341.P6210602250306761790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A167499 (n + 5) + 2).toNat

end

end A197341.P6210602250306761790

/-! ## A197341.P16386918011986703506

`A197342(A167614(n+5)+4)`
-/

namespace A197341.P16386918011986703506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A167614 (n + 5) + 4).toNat

end

end A197341.P16386918011986703506

/-! ## A197341.P10919912245913013954

`A197342(A000124(n+6)+6)`
-/

namespace A197341.P10919912245913013954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A000124 (n + 6) + 6).toNat

end

end A197341.P10919912245913013954

/-!
# A197342: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,2,1,2 for x=0,1,2,3,4.

The programs for A197342, there is no canonical definition to state claims against.
-/

/-! ## A197342.P15219019004915281853

`A157248(A283795(n))`
-/

namespace A197342.P15219019004915281853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157248 (A283795 n).toNat

end

end A197342.P15219019004915281853

/-! ## A197342.P7779641321569040239

`A318995(A156950(n))+1`
-/

namespace A197342.P7779641321569040239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A156950 n).toNat + 1

end

end A197342.P7779641321569040239

/-! ## A197342.P11263301007207824463

`A233390(2*A157640(n))`
-/

namespace A197342.P11263301007207824463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233390 (2 * A157640 n).toNat

end

end A197342.P11263301007207824463

/-! ## A197342.P12902929511427887488

`A144328(A156765(n))%23`
-/

namespace A197342.P12902929511427887488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144328 (A156765 n).toNat) 23

end

end A197342.P12902929511427887488

/-! ## A197342.P4508549587269816170

`A348459(∑{d}[A174691(n), #])`
-/

namespace A197342.P4508549587269816170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348459 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A197342.P4508549587269816170

/-!
# A197343: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,1,1,0 for x=0,1,2,3,4.

The programs for A197343, there is no canonical definition to state claims against.
-/

/-! ## A197343.P12257767755347882691

`A197350(∑[4*n]+1)`
-/

namespace A197343.P12257767755347882691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197343.P12257767755347882691

/-! ## A197343.P17941498050146165319

`and(-1, A197350(A001844(n)))`
-/

namespace A197343.P17941498050146165319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A197350 (A001844 n).toNat)

end

end A197343.P17941498050146165319

/-! ## A197343.P1009791224670172577

`A197350(A001844(n)+(2*n)%2)+(2*n)%2`
-/

namespace A197343.P1009791224670172577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A001844 n + ((2 * n % 2 : ℕ) : ℤ)).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A197343.P1009791224670172577

/-! ## A197343.P14782420798191910134

`A197350(A001844(n))+A105517(n)`
-/

namespace A197343.P14782420798191910134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A001844 n).toNat + A105517 n

end

end A197343.P14782420798191910134

/-! ## A197343.P6572122527003374013

`A326525(n)+A197350(A001844(n))`
-/

namespace A197343.P6572122527003374013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326525 n + A197350 (A001844 n).toNat

end

end A197343.P6572122527003374013

/-!
# A197344: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,1,1,0 for x=0,1,2,3,4.

The programs for A197344, the canonical program `A197344.P10427980050175659487` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197344 has offset 1).

The definition of A197344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197344.P10427980050175659487

`a(n-1)+a(n-2)+4*a(n-3)+7*a(n-4)-4*a(n-5)` with `a(0)=1, a(1)=1, a(2)=9, a(3)=17, a(4)=33`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197344

/-- `a(n-1)+a(n-2)+4*a(n-3)+7*a(n-4)-4*a(n-5)` -/
def P10427980050175659487.Spec : Prop :=
  ∀ n, P10427980050175659487.a n = A197344 (n + 1)

theorem P10427980050175659487.correct : P10427980050175659487.Spec := by
  intro n
  simp only [A197344, Nat.add_sub_cancel]

end A197344

/-! ## A197344.P1255584066140082664

`A197350(∑[n+1]+2)`
-/

namespace A197344.P1255584066140082664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197344.P1255584066140082664

namespace A197344

/-- `A197350(∑[n+1]+2)` -/
def P1255584066140082664.Spec : Prop :=
  ∀ n, P1255584066140082664.a n = A197344 (n + 1)

end A197344

/-! ## A197344.P8269648991363271771

`A197401(∑[n+1]+2)`
-/

namespace A197344.P8269648991363271771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197344.P8269648991363271771

namespace A197344

/-- `A197401(∑[n+1]+2)` -/
def P8269648991363271771.Spec : Prop :=
  ∀ n, P8269648991363271771.a n = A197344 (n + 1)

end A197344

/-! ## A197344.P14446258653841747557

`or(1, A197350(A000096(n)+3))`
-/

namespace A197344.P14446258653841747557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A197350 (A000096 n + 3).toNat)

end

end A197344.P14446258653841747557

namespace A197344

/-- `or(1, A197350(A000096(n)+3))` -/
def P14446258653841747557.Spec : Prop :=
  ∀ n, P14446258653841747557.a n = A197344 (n + 1)

end A197344

/-! ## A197344.P13082243188364444025

`A197350(A000096(n)+3)%A138403(n+1)`
-/

namespace A197344.P13082243188364444025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197350 (A000096 n + 3).toNat) (A138403 (n + 1))

end

end A197344.P13082243188364444025

namespace A197344

/-- `A197350(A000096(n)+3)%A138403(n+1)` -/
def P13082243188364444025.Spec : Prop :=
  ∀ n, P13082243188364444025.a n = A197344 (n + 1)

end A197344

/-!
# A197345: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,1,1,0 for x=0,1,2,3,4.

The programs for A197345, there is no canonical definition to state claims against.
-/

/-! ## A197345.P14289467534839177243

`A197350(∑[n+2]+4)`
-/

namespace A197345.P14289467534839177243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197345.P14289467534839177243

/-! ## A197345.P168128878703900356

`A197350(A167614(n+1))^A178489(n)`
-/

namespace A197345.P168128878703900356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197350 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A197345.P168128878703900356

/-! ## A197345.P1791679471720076804

`gcd(A000038(n), A197350(A167614(n+1)))`
-/

namespace A197345.P1791679471720076804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A197350 (A167614 (n + 1)).toNat)

end

end A197345.P1791679471720076804

/-! ## A197345.P5253275101456126961

`lcm(A033999(n), A197350(A167614(n+1)))`
-/

namespace A197345.P5253275101456126961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197350 (A167614 (n + 1)).toNat)

end

end A197345.P5253275101456126961

/-! ## A197345.P1520586314119168220

`or(A000007(n), A197350(A167614(n+1)))`
-/

namespace A197345.P1520586314119168220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A197350 (A167614 (n + 1)).toNat)

end

end A197345.P1520586314119168220

/-!
# A197346: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,1,1,0 for x=0,1,2,3,4.

The programs for A197346, there is no canonical definition to state claims against.
-/

/-! ## A197346.P13208755450077406751

`A197350(A374004(n+1))`
-/

namespace A197346.P13208755450077406751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A374004 (n + 1)).toNat

end

end A197346.P13208755450077406751

/-! ## A197346.P2334120566683569466

`A197350(A141214(n)+7)`
-/

namespace A197346.P2334120566683569466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A141214 n + 7).toNat

end

end A197346.P2334120566683569466

/-! ## A197346.P5924119098127995551

`A197350(A052905(n)+9)`
-/

namespace A197346.P5924119098127995551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A052905 n + 9).toNat

end

end A197346.P5924119098127995551

/-! ## A197346.P1239316476116172574

`A197350(Δ[A008778(n)]+6)`
-/

namespace A197346.P1239316476116172574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (f1 (n + 1) - f1 n + 6).toNat

end

end A197346.P1239316476116172574

/-! ## A197346.P12446159249131102724

`A197350(A167614(n+2)+1)`
-/

namespace A197346.P12446159249131102724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A167614 (n + 2) + 1).toNat

end

end A197346.P12446159249131102724

/-!
# A197347: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,1,1,0 for x=0,1,2,3,4.

The programs for A197347, there is no canonical definition to state claims against.
-/

/-! ## A197347.P11275740540468299795

`A197350(A374005(n+1))`
-/

namespace A197347.P11275740540468299795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A374005 (n + 1)).toNat

end

end A197347.P11275740540468299795

/-! ## A197347.P16427188773289918421

`A197350(A167499(n+3))`
-/

namespace A197347.P16427188773289918421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A167499 (n + 3)).toNat

end

end A197347.P16427188773289918421

/-! ## A197347.P17413565487037465043

`A197350(A155212(n)+13)`
-/

namespace A197347.P17413565487037465043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A155212 n + 13).toNat

end

end A197347.P17413565487037465043

/-! ## A197347.P5120099312785782546

`A197350(A056000(n)+15)`
-/

namespace A197347.P5120099312785782546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A056000 n + 15).toNat

end

end A197347.P5120099312785782546

/-! ## A197347.P10570180980894902134

`A197350(A051936(n+4)+14)`
-/

namespace A197347.P10570180980894902134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A051936 (n + 4) + 14).toNat

end

end A197347.P10570180980894902134

/-!
# A197348: Number of n X 6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,1,1,0 for x=0,1,2,3,4.

The programs for A197348, there is no canonical definition to state claims against.
-/

/-! ## A197348.P4490942803946617931

`A197350(A374007(n+1))`
-/

namespace A197348.P4490942803946617931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A374007 (n + 1)).toNat

end

end A197348.P4490942803946617931

/-! ## A197348.P10795560474051466312

`A197350(A166136(n+4))`
-/

namespace A197348.P10795560474051466312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A166136 (n + 4)).toNat

end

end A197348.P10795560474051466312

/-! ## A197348.P1832018486568368130

`A197350(eq[7, A131818(n+1)])`
-/

namespace A197348.P1832018486568368130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197348.P1832018486568368130

/-! ## A197348.P9674988267460345856

`A197350(A052905(n+3))`
-/

namespace A197348.P9674988267460345856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A052905 (n + 3)).toNat

end

end A197348.P9674988267460345856

/-! ## A197348.P10303560292532562529

`A197350(eq[3, A219347(n)])`
-/

namespace A197348.P10303560292532562529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197348.P10303560292532562529

/-!
# A197349: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,1,1,0 for x=0,1,2,3,4.

The programs for A197349, there is no canonical definition to state claims against.
-/

/-! ## A197349.P7641838517359422169

`A197350(A374008(n+1))`
-/

namespace A197349.P7641838517359422169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A374008 (n + 1)).toNat

end

end A197349.P7641838517359422169

/-! ## A197349.P3070500615710722349

`A197350(A056119(n)+28)`
-/

namespace A197349.P3070500615710722349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A056119 n + 28).toNat

end

end A197349.P3070500615710722349

/-! ## A197349.P905458555146897386

`A197350(eq[8, A131818(n+1)])`
-/

namespace A197349.P905458555146897386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197349.P905458555146897386

/-! ## A197349.P14305803081217676812

`A197350(A055999(n+4))`
-/

namespace A197349.P14305803081217676812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (A055999 (n + 4)).toNat

end

end A197349.P14305803081217676812

/-! ## A197349.P11701684999048919257

`A197350(eq[4, A219347(n)])`
-/

namespace A197349.P11701684999048919257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197349.P11701684999048919257

/-!
# A197350: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,1,1,0 for x=0,1,2,3,4.

The programs for A197350, there is no canonical definition to state claims against.
-/

/-! ## A197350.P5093674656723966241

`A197401(n+1)+A124763(A331406(n))`
-/

namespace A197350.P5093674656723966241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (n + 1) + A124763 (A331406 n).toNat

end

end A197350.P5093674656723966241

/-! ## A197350.P6196447576633807915

`and(3^A289651(n+1), A157179(n))`
-/

namespace A197350.P6196447576633807915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A289651 (n + 1) : ℤ))) (A157179 n)

end

end A197350.P6196447576633807915

/-!
# A197351: a(0)=0, a(1)=1, a(2n)=17*a(n), a(2n+1)=a(2n)+1.

The programs for A197351, there is no canonical definition to state claims against.
-/

/-! ## A197351.P17806999430489139018

`A341907(eq[17, A002262(n)])`
-/

namespace A197351.P17806999430489139018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197351.P17806999430489139018

/-! ## A197351.P18269427698227887867

`A102489(A033047(n))`
-/

namespace A197351.P18269427698227887867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A033047 n).toNat

end

end A197351.P18269427698227887867

/-! ## A197351.P14611487319846498019

`A102489(A097257(n)/10)`
-/

namespace A197351.P14611487319846498019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (SequenceMachineLib.roundAway ((A097257 n : ℚ) / 10)).toNat

end

end A197351.P14611487319846498019

/-! ## A197351.P9814999389938767363

`A102489(A007095(A007088(n)))`
-/

namespace A197351.P9814999389938767363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A007095 (A007088 n).toNat).toNat

end

end A197351.P9814999389938767363

/-!
# A197352: a(0)=0, a(1)=1, a(2n)=18*a(n), a(2n+1)=a(2n)+1.

The programs for A197352, there is no canonical definition to state claims against.
-/

/-! ## A197352.P12275953433442819504

`or(n, A008591(2*a(floor(n/2))))` with `a(0)=0`
-/

namespace A197352.P12275953433442819504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) (A008591 (2 * a ⌊(n : ℚ) / 2⌋.toNat).toNat)

end

end A197352.P12275953433442819504

/-! ## A197352.P18359301346778753961

`A028904(A063012(n))`
-/

namespace A197352.P18359301346778753961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A063012 n).toNat

end

end A197352.P18359301346778753961

/-! ## A197352.P10347084727897425387

`A028904(A302205(n))`
-/

namespace A197352.P10347084727897425387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A302205 n).toNat

end

end A197352.P10347084727897425387

/-! ## A197352.P9581994965574637477

`A102489(A033048(A228911(n)+n))`
-/

namespace A197352.P9581994965574637477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A033048 (A228911 n + (n : ℤ)).toNat).toNat

end

end A197352.P9581994965574637477

/-!
# A197353: a(0)=0, a(1)=1, a(2n)=19*a(n), a(2n+1)=a(2n)+1.

The programs for A197353, there is no canonical definition to state claims against.
-/

/-! ## A197353.P11640168921704777508

`A341907(eq[20, A002260(n+1)])`
-/

namespace A197353.P11640168921704777508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197353.P11640168921704777508

/-! ## A197353.P5769362826923308942

`A341907(eq[39, A158405(n+1)])`
-/

namespace A197353.P5769362826923308942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197353.P5769362826923308942

/-! ## A197353.P10029023447914445186

`A037475(A228911(n)+A033051(n))`
-/

namespace A197353.P10029023447914445186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A228911 n + A033051 n).toNat

end

end A197353.P10029023447914445186

/-! ## A197353.P9149461646690683215

`A037475(A033051(n*A341033(n)))`
-/

namespace A197353.P9149461646690683215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A033051 ((n : ℤ) * A341033 n).toNat).toNat

end

end A197353.P9149461646690683215

/-!
# A197354: a(n) = Sum_{k>=0} A030308(n,k)*(2k+1).

The programs for A197354, the canonical program `A197354.P7277282282197432070` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197354 has offset 0).

The definition of A197354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197354.P7277282282197432070

`2*n-∑[A088705(n)²]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A197354

/-- `2*n-∑[A088705(n)²]` -/
def P7277282282197432070.Spec : Prop :=
  ∀ n, P7277282282197432070.a n = A197354 n

theorem P7277282282197432070.correct : P7277282282197432070.Spec := by
  intro n
  simp only [A197354]

end A197354

/-! ## A197354.P13504518513935593721

`A073642(n)+A029931(n)`
-/

namespace A197354.P13504518513935593721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n + A029931 n

end

end A197354.P13504518513935593721

namespace A197354

/-- `A073642(n)+A029931(n)` -/
def P13504518513935593721.Spec : Prop :=
  ∀ n, P13504518513935593721.a n = A197354 n

end A197354

/-! ## A197354.P15183541968403812688

`A073642(n)+log2(A029930(n))`
-/

namespace A197354.P15183541968403812688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073642 n : ℝ) + Real.logb 2 (A029930 n : ℝ)

end

end A197354.P15183541968403812688

namespace A197354

/-- `A073642(n)+log2(A029930(n))` -/
def P15183541968403812688.Spec : Prop :=
  ∀ n, P15183541968403812688.a n = (A197354 n : ℝ)

end A197354

/-! ## A197354.P12143197685430665587

`A000120(n)+2*A073642(n)`
-/

namespace A197354.P12143197685430665587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2 * A073642 n

end

end A197354.P12143197685430665587

namespace A197354

/-- `A000120(n)+2*A073642(n)` -/
def P12143197685430665587.Spec : Prop :=
  ∀ n, P12143197685430665587.a n = A197354 n

end A197354

/-! ## A197354.P16724216684937629318

`2*A029931(n)-A000120(n)`
-/

namespace A197354.P16724216684937629318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029931 n - A000120 n

end

end A197354.P16724216684937629318

namespace A197354

/-- `2*A029931(n)-A000120(n)` -/
def P16724216684937629318.Spec : Prop :=
  ∀ n, P16724216684937629318.a n = A197354 n

end A197354

/-! ## A197354.P14780581292327720587

`A000120(n)²+2*A055941(n)`
-/

namespace A197354.P14780581292327720587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n ^ 2 + 2 * A055941 n

end

end A197354.P14780581292327720587

namespace A197354

/-- `A000120(n)²+2*A055941(n)` -/
def P14780581292327720587.Spec : Prop :=
  ∀ n, P14780581292327720587.a n = A197354 n

end A197354

/-! ## A197354.P2894787142839678865

`A029931(floor(n/2))+A029931(n)`
-/

namespace A197354.P2894787142839678865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 ⌊(n : ℚ) / 2⌋.toNat + A029931 n

end

end A197354.P2894787142839678865

namespace A197354

/-- `A029931(floor(n/2))+A029931(n)` -/
def P2894787142839678865.Spec : Prop :=
  ∀ n, P2894787142839678865.a n = A197354 n

end A197354

/-! ## A197354.P10464624200015027617

`A005843(A055941(n))+A000120(n)²`
-/

namespace A197354.P10464624200015027617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A055941 n).toNat + A000120 n ^ 2

end

end A197354.P10464624200015027617

namespace A197354

/-- `A005843(A055941(n))+A000120(n)²` -/
def P10464624200015027617.Spec : Prop :=
  ∀ n, P10464624200015027617.a n = A197354 n

end A197354

/-! ## A197354.P9340018566662530786

`2*A029931(n)-A073642(A001316(n))`
-/

namespace A197354.P9340018566662530786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029931 n - A073642 (A001316 n).toNat

end

end A197354.P9340018566662530786

namespace A197354

/-- `2*A029931(n)-A073642(A001316(n))` -/
def P9340018566662530786.Spec : Prop :=
  ∀ n, P9340018566662530786.a n = A197354 n

end A197354

/-! ## A197354.P9429794944994021263

`A073642(n)+A283981(n)+A280700(n)`
-/

namespace A197354.P9429794944994021263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n + (A283981 n + A280700 n)

end

end A197354.P9429794944994021263

namespace A197354

/-- `A073642(n)+A283981(n)+A280700(n)` -/
def P9429794944994021263.Spec : Prop :=
  ∀ n, P9429794944994021263.a n = A197354 n

end A197354

/-! ## A197354.P8318670436246086755

`A000120(n)*A070939(n)-A359495(n)`
-/

namespace A197354.P8318670436246086755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A070939 n - A359495 n

end

end A197354.P8318670436246086755

namespace A197354

/-- `A000120(n)*A070939(n)-A359495(n)` -/
def P8318670436246086755.Spec : Prop :=
  ∀ n, P8318670436246086755.a n = A197354 n

end A197354

/-! ## A197354.P11838587218396875675

`A073642(n)+A073642(A001316(n))+A073642(n)`
-/

namespace A197354.P11838587218396875675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n + (A073642 (A001316 n).toNat + A073642 n)

end

end A197354.P11838587218396875675

namespace A197354

/-- `A073642(n)+A073642(A001316(n))+A073642(n)` -/
def P11838587218396875675.Spec : Prop :=
  ∀ n, P11838587218396875675.a n = A197354 n

end A197354

/-! ## A197354.P15856625221490083901

`log2(A029930(n)²)-A001222(A278222(n))`
-/

namespace A197354.P15856625221490083901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 n ^ 2 : ℝ) - (A001222 (A278222 n).toNat : ℝ)

end

end A197354.P15856625221490083901

namespace A197354

/-- `log2(A029930(n)²)-A001222(A278222(n))` -/
def P15856625221490083901.Spec : Prop :=
  ∀ n, P15856625221490083901.a n = (A197354 n : ℝ)

end A197354

/-! ## A197354.P3351278113771120507

`A073642(n)+A283981(n)+A000120(A005187(n))`
-/

namespace A197354.P3351278113771120507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n + (A283981 n + A000120 (A005187 n).toNat)

end

end A197354.P3351278113771120507

namespace A197354

/-- `A073642(n)+A283981(n)+A000120(A005187(n))` -/
def P3351278113771120507.Spec : Prop :=
  ∀ n, P3351278113771120507.a n = A197354 n

end A197354

/-! ## A197354.P8756604978225404786

`A073642(2*n)+A073642(n)`
-/

namespace A197354.P8756604978225404786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n) + A073642 n

end

end A197354.P8756604978225404786

namespace A197354

/-- `A073642(2*n)+A073642(n)` -/
def P8756604978225404786.Spec : Prop :=
  ∀ n, P8756604978225404786.a n = A197354 n

end A197354

/-! ## A197354.P5490000493802245378

`2*A073642(2*n)-A000120(n)`
-/

namespace A197354.P5490000493802245378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073642 (2 * n) - A000120 n

end

end A197354.P5490000493802245378

namespace A197354

/-- `2*A073642(2*n)-A000120(n)` -/
def P5490000493802245378.Spec : Prop :=
  ∀ n, P5490000493802245378.a n = A197354 n

end A197354

/-! ## A197354.P5712688368248342715

`log2(A029930(2*n)²)-A324467(n)`
-/

namespace A197354.P5712688368248342715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 (2 * n) ^ 2 : ℝ) - (A324467 n : ℝ)

end

end A197354.P5712688368248342715

namespace A197354

/-- `log2(A029930(2*n)²)-A324467(n)` -/
def P5712688368248342715.Spec : Prop :=
  ∀ n, P5712688368248342715.a n = (A197354 n : ℝ)

end A197354

/-! ## A197354.P8205842536737383913

`∑{digits}[A068325(n), #]`
-/

namespace A197354.P8205842536737383913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068325 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A197354.P8205842536737383913

namespace A197354

/-- `∑{digits}[A068325(n), #]` -/
def P8205842536737383913.Spec : Prop :=
  ∀ n, (P8205842536737383913.a n : ℤ) = A197354 n

end A197354

/-! ## A197354.P14784495066112745533

`A326730(A048678(n))`
-/

namespace A197354.P14784495066112745533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A048678 n).toNat

end

end A197354.P14784495066112745533

namespace A197354

/-- `A326730(A048678(n))` -/
def P14784495066112745533.Spec : Prop :=
  ∀ n, P14784495066112745533.a n = A197354 n

end A197354

/-!
# A197355: Special values of Hermite polynomials.

The programs for A197355, the canonical program `A197355.P12367230859054080969` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197355 has offset 0).

The definition of A197355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197355.P12367230859054080969

`8*a(n-1)+2*(n-1)*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A197355

/-- `8*a(n-1)+2*(n-1)*a(n-2)` -/
def P12367230859054080969.Spec : Prop :=
  ∀ n, P12367230859054080969.a n = A197355 n

theorem P12367230859054080969.correct : P12367230859054080969.Spec := by
  intro n
  simp only [A197355]

end A197355

/-!
# A197357: Number of n-digits integers for which the sum of the odd-positioned digits equals the sum of the even-positioned digits.

The programs for A197357, there is no canonical definition to state claims against.
-/

/-! ## A197357.P856784262625780866

`A213651(∑[A017173(1-(and(1, n)-n))])`
-/

namespace A197357.P856784262625780866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (1 - ((Nat.land 1 n : ℤ) - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A197357.P856784262625780866

/-!
# A197358: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,1,1,1 for x=0,1,2,3,4.

The programs for A197358, there is no canonical definition to state claims against.
-/

/-! ## A197358.P8699121015176223278

`A197364(∑[4*n]+1)`
-/

namespace A197358.P8699121015176223278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197358.P8699121015176223278

/-! ## A197358.P8191449599599046897

`or(1, A197364(A001844(n)))`
-/

namespace A197358.P8191449599599046897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A197364 (A001844 n).toNat)

end

end A197358.P8191449599599046897

/-! ## A197358.P10603701609838980330

`A197364(A001844(n))+A059995(n)`
-/

namespace A197358.P10603701609838980330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A001844 n).toNat + A059995 n

end

end A197358.P10603701609838980330

/-! ## A197358.P13760700862926640147

`A065648(n)*A197364(A001844(n))`
-/

namespace A197358.P13760700862926640147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n * A197364 (A001844 n).toNat

end

end A197358.P13760700862926640147

/-!
# A197359: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,1,1 for x=0,1,2,3,4.

The programs for A197359, there is no canonical definition to state claims against.
-/

/-! ## A197359.P9489931320485337994

`A197364(∑[n+2]+4)`
-/

namespace A197359.P9489931320485337994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197359.P9489931320485337994

/-! ## A197359.P5776254024997417578

`or(1, A197364(A167614(n+1)))`
-/

namespace A197359.P5776254024997417578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A197364 (A167614 (n + 1)).toNat)

end

end A197359.P5776254024997417578

/-! ## A197359.P10747092064816869815

`record[A197364(n+4)/A038315(n)]`
-/

namespace A197359.P10747092064816869815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197364 (n + 4) : ℚ) / (A038315 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197359.P10747092064816869815

/-! ## A197359.P13667081235221040205

`A197364(A167614(n+1))^A178489(n)`
-/

namespace A197359.P13667081235221040205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197364 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A197359.P13667081235221040205

/-! ## A197359.P6383696663924336342

`gcd(A000038(n), A197364(A167614(n+1)))`
-/

namespace A197359.P6383696663924336342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A197364 (A167614 (n + 1)).toNat)

end

end A197359.P6383696663924336342

/-!
# A197360: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,1,1 for x=0,1,2,3,4.

The programs for A197360, there is no canonical definition to state claims against.
-/

/-! ## A197360.P16586150276601291550

`A197364(A374004(n+1))`
-/

namespace A197360.P16586150276601291550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A374004 (n + 1)).toNat

end

end A197360.P16586150276601291550

/-! ## A197360.P3318272354399206971

`A197364(A141214(n)+7)`
-/

namespace A197360.P3318272354399206971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A141214 n + 7).toNat

end

end A197360.P3318272354399206971

/-! ## A197360.P13128218832128928566

`A197364(A052905(n)+9)`
-/

namespace A197360.P13128218832128928566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A052905 n + 9).toNat

end

end A197360.P13128218832128928566

/-! ## A197360.P10677237119833308618

`A197364(A055999(n)+10)`
-/

namespace A197360.P10677237119833308618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A055999 n + 10).toNat

end

end A197360.P10677237119833308618

/-! ## A197360.P12914017652198454007

`A197364(eq[5, A066657(n)])`
-/

namespace A197360.P12914017652198454007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197360.P12914017652198454007

/-!
# A197361: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,1,1 for x=0,1,2,3,4.

The programs for A197361, there is no canonical definition to state claims against.
-/

/-! ## A197361.P15052571263117610521

`A197364(A374005(n+1))`
-/

namespace A197361.P15052571263117610521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A374005 (n + 1)).toNat

end

end A197361.P15052571263117610521

/-! ## A197361.P17814995492285208669

`A197364(A155212(n)+13)`
-/

namespace A197361.P17814995492285208669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A155212 n + 13).toNat

end

end A197361.P17814995492285208669

/-! ## A197361.P15463799789573310868

`A197364(A056000(n)+15)`
-/

namespace A197361.P15463799789573310868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A056000 n + 15).toNat

end

end A197361.P15463799789573310868

/-! ## A197361.P2868180369283789731

`A197364(eq[7, A066657(n)])`
-/

namespace A197361.P2868180369283789731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197361.P2868180369283789731

/-! ## A197361.P6955286869472938275

`A197364(A166136(n+3)-1)`
-/

namespace A197361.P6955286869472938275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A166136 (n + 3) - 1).toNat

end

end A197361.P6955286869472938275

/-!
# A197362: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,1,1 for x=0,1,2,3,4.

The programs for A197362, there is no canonical definition to state claims against.
-/

/-! ## A197362.P1852838576196965036

`A197364(A374007(n+1))`
-/

namespace A197362.P1852838576196965036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A374007 (n + 1)).toNat

end

end A197362.P1852838576196965036

/-! ## A197362.P16222670577579495599

`A197364(A166136(n+4))`
-/

namespace A197362.P16222670577579495599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A166136 (n + 4)).toNat

end

end A197362.P16222670577579495599

/-! ## A197362.P11778182635324157238

`A197364(A056115(n)+21)`
-/

namespace A197362.P11778182635324157238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A056115 n + 21).toNat

end

end A197362.P11778182635324157238

/-! ## A197362.P11741027088378804558

`A197364(A167499(n+4)+1)`
-/

namespace A197362.P11741027088378804558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A167499 (n + 4) + 1).toNat

end

end A197362.P11741027088378804558

/-! ## A197362.P7651824584252364538

`A197364(A000096(n+4)+7)`
-/

namespace A197362.P7651824584252364538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A000096 (n + 4) + 7).toNat

end

end A197362.P7651824584252364538

/-!
# A197363: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,1,1 for x=0,1,2,3,4.

The programs for A197363, there is no canonical definition to state claims against.
-/

/-! ## A197363.P5050386642167687700

`A197364(A374008(n+1))`
-/

namespace A197363.P5050386642167687700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A374008 (n + 1)).toNat

end

end A197363.P5050386642167687700

/-! ## A197363.P8164995531349078105

`A197364(A056119(n)+28)`
-/

namespace A197363.P8164995531349078105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A056119 n + 28).toNat

end

end A197363.P8164995531349078105

/-! ## A197363.P16422023786965677459

`A197364(eq[11, A066657(n)])`
-/

namespace A197363.P16422023786965677459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197363.P16422023786965677459

/-! ## A197363.P12752462834073094979

`A197364(eq[8, A131818(n+1)])`
-/

namespace A197363.P12752462834073094979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197363.P12752462834073094979

/-! ## A197363.P16562717324631876377

`A197364(A055999(n+4))`
-/

namespace A197363.P16562717324631876377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A055999 (n + 4)).toNat

end

end A197363.P16562717324631876377

/-!
# A197364: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,1,1,1 for x=0,1,2,3,4.

The programs for A197364, there is no canonical definition to state claims against.
-/

/-! ## A197364.P7153711792985936087

`A005408(A117401(n))%A193902(A157152(n))`
-/

namespace A197364.P7153711792985936087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A117401 n).toNat) (A193902 (A157152 n).toNat)

end

end A197364.P7153711792985936087

/-! ## A197364.P9382810607088214982

`A197350(lt[A328403(n), A019562(n)])`
-/

namespace A197364.P9382810607088214982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328403 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197364.P9382810607088214982

/-! ## A197364.P10430993242118089054

`and(A001008(A007318(n)), A071612(n+1))`
-/

namespace A197364.P10430993242118089054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001008 (A007318 n).toNat) (A071612 (n + 1))

end

end A197364.P10430993242118089054

/-! ## A197364.P13717232836992555161

`and(A087442(A124456(n+1)), A223256(n))`
-/

namespace A197364.P13717232836992555161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087442 (A124456 (n + 1)).toNat) (A223256 n)

end

end A197364.P13717232836992555161

/-! ## A197364.P593799912394980917

`and(A107145(A091936(n+1)), A132787(n+1))`
-/

namespace A197364.P593799912394980917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107145 (A091936 (n + 1)).toNat) (A132787 (n + 1))

end

end A197364.P593799912394980917

/-!
# A197366: Number of Abelian groups of order 2n which are isomorphic with the group of units of the ring Z/kZ for some k.

The programs for A197366, there is no canonical definition to state claims against.
-/

/-! ## A197366.P8917447756678509840

`A101872(n+1)-A179229(n+1)`
-/

namespace A197366.P8917447756678509840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (n + 1) - A179229 (n + 1)

end

end A197366.P8917447756678509840

/-! ## A197366.P12345250976486950517

`A380578(2*(n+1))`
-/

namespace A197366.P12345250976486950517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380578 (2 * (n + 1))

end

end A197366.P12345250976486950517

/-! ## A197366.P7868175366187505543

`A000688(2*(n+1))-A179229(n+1)`
-/

namespace A197366.P7868175366187505543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (2 * (n + 1)) - A179229 (n + 1)

end

end A197366.P7868175366187505543

/-! ## A197366.P17647557870260769500

`A000688(2*(n+1))-A394390(2*(n+1))`
-/

namespace A197366.P17647557870260769500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (2 * (n + 1)) - A394390 (2 * (n + 1))

end

end A197366.P17647557870260769500

/-! ## A197366.P12863749262638025205

`A167700(A325014(n+1))+A007814(n+1)`
-/

namespace A197366.P12863749262638025205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 (A325014 (n + 1)).toNat + A007814 (n + 1)

end

end A197366.P12863749262638025205

/-!
# A197367: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,4,1,0,1 for x=0,1,2,3,4.

The programs for A197367, there is no canonical definition to state claims against.
-/

/-! ## A197367.P2561394872144703323

`A197373(∑[4*n]+1)`
-/

namespace A197367.P2561394872144703323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197367.P2561394872144703323

/-! ## A197367.P3742194857851011771

`A197373(A001844(n))%A332179(n)`
-/

namespace A197367.P3742194857851011771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197373 (A001844 n).toNat) (A332179 n)

end

end A197367.P3742194857851011771

/-! ## A197367.P10236369298422034142

`A007318(∑[n])*A197373(A001844(n))`
-/

namespace A197367.P10236369298422034142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A197373 (A001844 n).toNat

end

end A197367.P10236369298422034142

/-! ## A197367.P13307289365531543012

`A197373(A001844(n))+A008683(4*(n+1))`
-/

namespace A197367.P13307289365531543012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A197367.P13307289365531543012

/-!
# A197368: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,4,1,0,1 for x=0,1,2,3,4.

The programs for A197368, there is no canonical definition to state claims against.
-/

/-! ## A197368.P8200065393396767301

`A197373(∑[n+2]+4)`
-/

namespace A197368.P8200065393396767301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197368.P8200065393396767301

/-! ## A197368.P4840542876839573528

`A197373(A167614(n+1))+A178798(n)`
-/

namespace A197368.P4840542876839573528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A167614 (n + 1)).toNat + A178798 n

end

end A197368.P4840542876839573528

/-! ## A197368.P6939538291991159585

`A197373(A167614(n+1))%A017117(n)`
-/

namespace A197368.P6939538291991159585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197373 (A167614 (n + 1)).toNat) (A017117 n)

end

end A197368.P6939538291991159585

/-! ## A197368.P3509673704965984725

`A197373(A167614(n+1))+A034538(n+1)`
-/

namespace A197368.P3509673704965984725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A167614 (n + 1)).toNat + A034538 (n + 1)

end

end A197368.P3509673704965984725

/-! ## A197368.P17057007594654931109

`A285007(n+1)+A197373(A167614(n+1))`
-/

namespace A197368.P17057007594654931109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + A197373 (A167614 (n + 1)).toNat

end

end A197368.P17057007594654931109

/-!
# A197369: Number of n X 4 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,4,1,0,1 for x=0,1,2,3,4.

The programs for A197369, there is no canonical definition to state claims against.
-/

/-! ## A197369.P1503972852080317632

`A197373(A374004(n+1))`
-/

namespace A197369.P1503972852080317632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A374004 (n + 1)).toNat

end

end A197369.P1503972852080317632

/-! ## A197369.P2669639694861516751

`A197373(A141214(n)+7)`
-/

namespace A197369.P2669639694861516751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A141214 n + 7).toNat

end

end A197369.P2669639694861516751

/-! ## A197369.P7659074476308489761

`A197373(A052905(n)+9)`
-/

namespace A197369.P7659074476308489761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A052905 n + 9).toNat

end

end A197369.P7659074476308489761

/-! ## A197369.P3574593132657611258

`A197373(A055999(n)+10)`
-/

namespace A197369.P3574593132657611258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A055999 n + 10).toNat

end

end A197369.P3574593132657611258

/-! ## A197369.P1231552853708773946

`A197373(A167614(n+2)+1)`
-/

namespace A197369.P1231552853708773946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A167614 (n + 2) + 1).toNat

end

end A197369.P1231552853708773946

/-!
# A197370: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,4,1,0,1 for x=0,1,2,3,4.

The programs for A197370, there is no canonical definition to state claims against.
-/

/-! ## A197370.P8572400812534383985

`A197373(A374005(n+1))`
-/

namespace A197370.P8572400812534383985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A374005 (n + 1)).toNat

end

end A197370.P8572400812534383985

/-! ## A197370.P14385639407238638519

`A197373(A167499(n+3))`
-/

namespace A197370.P14385639407238638519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A167499 (n + 3)).toNat

end

end A197370.P14385639407238638519

/-! ## A197370.P16793320817014344316

`A197373(A155212(n)+13)`
-/

namespace A197370.P16793320817014344316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A155212 n + 13).toNat

end

end A197370.P16793320817014344316

/-! ## A197370.P1625902355966162597

`A197373(A056000(n)+15)`
-/

namespace A197370.P1625902355966162597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A056000 n + 15).toNat

end

end A197370.P1625902355966162597

/-! ## A197370.P17899614360699139444

`A197373(A167614(n+3)+2)`
-/

namespace A197370.P17899614360699139444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A167614 (n + 3) + 2).toNat

end

end A197370.P17899614360699139444

/-!
# A197371: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,4,1,0,1 for x=0,1,2,3,4.

The programs for A197371, there is no canonical definition to state claims against.
-/

/-! ## A197371.P16151301295448912005

`A197373(A374007(n+1))`
-/

namespace A197371.P16151301295448912005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A374007 (n + 1)).toNat

end

end A197371.P16151301295448912005

/-! ## A197371.P1843752177120667328

`A197373(Δ[A264443(n)]+10)`
-/

namespace A197371.P1843752177120667328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (f1 (n + 1) - f1 n + 10).toNat

end

end A197371.P1843752177120667328

/-! ## A197371.P3983849351307227413

`A197373(eq[7, A131818(n+1)])`
-/

namespace A197371.P3983849351307227413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197371.P3983849351307227413

/-! ## A197371.P13641831807400954692

`A197373(A052905(n+3))`
-/

namespace A197371.P13641831807400954692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A052905 (n + 3)).toNat

end

end A197371.P13641831807400954692

/-! ## A197371.P5518453858563521516

`A197373(eq[3, A219347(n)])`
-/

namespace A197371.P5518453858563521516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197371.P5518453858563521516

/-!
# A197372: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,4,1,0,1 for x=0,1,2,3,4.

The programs for A197372, there is no canonical definition to state claims against.
-/

/-! ## A197372.P5067531316608144134

`A197373(A374008(n+1))`
-/

namespace A197372.P5067531316608144134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A374008 (n + 1)).toNat

end

end A197372.P5067531316608144134

/-! ## A197372.P5170506165157190856

`A197373(eq[11, A066657(n)])`
-/

namespace A197372.P5170506165157190856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197372.P5170506165157190856

/-! ## A197372.P4310344243599508210

`A197373(eq[8, A131818(n+1)])`
-/

namespace A197372.P4310344243599508210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197372.P4310344243599508210

/-! ## A197372.P15544999649546601203

`A197373(A055999(n+4))`
-/

namespace A197372.P15544999649546601203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (A055999 (n + 4)).toNat

end

end A197372.P15544999649546601203

/-! ## A197372.P14964459391665266267

`A197373(eq[4, A219347(n)])`
-/

namespace A197372.P14964459391665266267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197372.P14964459391665266267

/-!
# A197373: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,4,1,0,1 for x=0,1,2,3,4.

The programs for A197373, there is no canonical definition to state claims against.
-/

/-! ## A197373.P10053014034753831862

`A197529(A161951(n+1))`
-/

namespace A197373.P10053014034753831862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A161951 (n + 1)).toNat

end

end A197373.P10053014034753831862

/-! ## A197373.P13697455213294767574

`A197529(A364280(n+2))`
-/

namespace A197373.P13697455213294767574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A364280 (n + 2)).toNat

end

end A197373.P13697455213294767574

/-! ## A197373.P5871097685218030016

`A197529(A122286(∑[n+1]))`
-/

namespace A197373.P5871097685218030016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A122286 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A197373.P5871097685218030016

/-! ## A197373.P4434076088163502708

`A197529(A070939(∑[2^n]))`
-/

namespace A197373.P4434076088163502708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A070939 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A197373.P4434076088163502708

/-! ## A197373.P16377057906285513839

`A197529(A004885(n+1)+1)`
-/

namespace A197373.P16377057906285513839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197529 (A004885 (n + 1) + 1).toNat

end

end A197373.P16377057906285513839

/-!
# A197383: Decimal expansion of least x > 0 having sin(Pi*x/6) = sin(Pi*x/3)^2.

The programs for A197383, there is no canonical definition to state claims against.
-/

/-! ## A197383.P14428831762772579885

`A197521(n+1)`
-/

namespace A197383.P14428831762772579885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197521 (n + 1 + 1)

end

end A197383.P14428831762772579885

/-!
# A197395: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,1,1,1 for x=0,1,2,3,4.

The programs for A197395, there is no canonical definition to state claims against.
-/

/-! ## A197395.P15098130277693106629

`A197401(∑[4*n]+1)`
-/

namespace A197395.P15098130277693106629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197395.P15098130277693106629

/-! ## A197395.P11877894688428707939

`or(1, A197401((n+1)*2*n+1))`
-/

namespace A197395.P11877894688428707939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A197401 ((n + 1) * (2 * n) + 1))

end

end A197395.P11877894688428707939

/-! ## A197395.P13643191701485928788

`A197401((Δ[n²]²+1)/2)+A181340(n+1)`
-/

namespace A197395.P13643191701485928788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (SequenceMachineLib.roundAway ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 1 : ℚ) / 2)).toNat + A181340 (n + 1)

end

end A197395.P13643191701485928788

/-! ## A197395.P352795935631708670

`A127624(n+1)*A197401((Δ[n²]²+1)/2)`
-/

namespace A197395.P352795935631708670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127624 (n + 1) * A197401 (SequenceMachineLib.roundAway ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 1 : ℚ) / 2)).toNat

end

end A197395.P352795935631708670

/-! ## A197395.P3516922527668438276

`A197401(A001844(n))+A046784(n)`
-/

namespace A197395.P3516922527668438276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A001844 n).toNat + A046784 n

end

end A197395.P3516922527668438276

/-!
# A197396: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,1,1,1 for x=0,1,2,3,4.

The programs for A197396, there is no canonical definition to state claims against.
-/

/-! ## A197396.P1657654338699005370

`A197401(∑[n+2]+4)`
-/

namespace A197396.P1657654338699005370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197396.P1657654338699005370

/-! ## A197396.P15801048558336786876

`or(1, A197401(A167614(n+1)))`
-/

namespace A197396.P15801048558336786876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A197401 (A167614 (n + 1)).toNat)

end

end A197396.P15801048558336786876

/-! ## A197396.P6606440644705349427

`A197401(A167614(n+1))^A178489(n)`
-/

namespace A197396.P6606440644705349427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197401 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A197396.P6606440644705349427

/-! ## A197396.P10148053903385539294

`lcm(A033999(n), A197401(A167614(n+1)))`
-/

namespace A197396.P10148053903385539294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197401 (A167614 (n + 1)).toNat)

end

end A197396.P10148053903385539294

/-! ## A197396.P15608760011951322235

`char[A001057(n)]*A197401(A167614(n+1))`
-/

namespace A197396.P15608760011951322235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A197401 (A167614 (n + 1)).toNat

end

end A197396.P15608760011951322235

/-!
# A197397: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,1,1,1 for x=0,1,2,3,4.

The programs for A197397, there is no canonical definition to state claims against.
-/

/-! ## A197397.P17059981353110641579

`A197401(A374004(n+1))`
-/

namespace A197397.P17059981353110641579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A374004 (n + 1)).toNat

end

end A197397.P17059981353110641579

/-! ## A197397.P3896993521304595945

`A197401(A052905(n)+9)`
-/

namespace A197397.P3896993521304595945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A052905 n + 9).toNat

end

end A197397.P3896993521304595945

/-! ## A197397.P15370924461245332612

`A197401(A055999(n)+10)`
-/

namespace A197397.P15370924461245332612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A055999 n + 10).toNat

end

end A197397.P15370924461245332612

/-! ## A197397.P17603776262633295786

`A197401(A167614(n+2)+1)`
-/

namespace A197397.P17603776262633295786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A167614 (n + 2) + 1).toNat

end

end A197397.P17603776262633295786

/-! ## A197397.P10069243405191613326

`A197401(A112355(n+1)+4)`
-/

namespace A197397.P10069243405191613326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A112355 (n + 1) + 4).toNat

end

end A197397.P10069243405191613326

/-!
# A197398: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,1,1,1 for x=0,1,2,3,4.

The programs for A197398, there is no canonical definition to state claims against.
-/

/-! ## A197398.P885107574011106013

`A197401(A374005(n+1))`
-/

namespace A197398.P885107574011106013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A374005 (n + 1)).toNat

end

end A197398.P885107574011106013

/-! ## A197398.P10485120975646343143

`A197401(A167499(n+3))`
-/

namespace A197398.P10485120975646343143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A167499 (n + 3)).toNat

end

end A197398.P10485120975646343143

/-! ## A197398.P7886028694025072598

`A197401(A155212(n)+13)`
-/

namespace A197398.P7886028694025072598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A155212 n + 13).toNat

end

end A197398.P7886028694025072598

/-! ## A197398.P86591956645441868

`A197401(A056000(n)+15)`
-/

namespace A197398.P86591956645441868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A056000 n + 15).toNat

end

end A197398.P86591956645441868

/-! ## A197398.P15656360576076510726

`A197401(A038722(Δ[A023545(n+1)]))`
-/

namespace A197398.P15656360576076510726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A197398.P15656360576076510726

/-!
# A197399: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,1,1,1 for x=0,1,2,3,4.

The programs for A197399, there is no canonical definition to state claims against.
-/

/-! ## A197399.P5215163746693153454

`A197401(A374007(n+1))`
-/

namespace A197399.P5215163746693153454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A374007 (n + 1)).toNat

end

end A197399.P5215163746693153454

/-! ## A197399.P4678108264793237633

`A197401(A166136(n+4))`
-/

namespace A197399.P4678108264793237633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A166136 (n + 4)).toNat

end

end A197399.P4678108264793237633

/-! ## A197399.P15312472975794477247

`A197401(eq[6, A256910(n)])`
-/

namespace A197399.P15312472975794477247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197399.P15312472975794477247

/-! ## A197399.P8881724026962341749

`A197401(A167614(n+4)+3)`
-/

namespace A197399.P8881724026962341749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A167614 (n + 4) + 3).toNat

end

end A197399.P8881724026962341749

/-! ## A197399.P9105021947270032134

`A197401(A000096(n+4)+7)`
-/

namespace A197399.P9105021947270032134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A000096 (n + 4) + 7).toNat

end

end A197399.P9105021947270032134

