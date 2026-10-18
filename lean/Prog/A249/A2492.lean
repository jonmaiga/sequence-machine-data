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
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A249200: Number of length 3+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249200, there is no canonical definition to state claims against.
-/

/-! ## A249200.P13508804564727509593

`A249197(∑[n+2]+4)`
-/

namespace A249200.P13508804564727509593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249200.P13508804564727509593

/-! ## A249200.P2929870866337976396

`lcm(2, A249197(A167614(n+1)))`
-/

namespace A249200.P2929870866337976396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249197 (A167614 (n + 1)).toNat)

end

end A249200.P2929870866337976396

/-! ## A249200.P7103762951740216090

`A249197(A052905(n)+5-n)+char[17]`
-/

namespace A249200.P7103762951740216090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A052905 n + (5 - (n : ℤ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A249200.P7103762951740216090

/-! ## A249200.P1293406062898178422

`A249197(A167614(n+1))+A011738(n)`
-/

namespace A249200.P1293406062898178422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A167614 (n + 1)).toNat + A011738 n

end

end A249200.P1293406062898178422

/-! ## A249200.P15111773477535480613

`A249197(A167614(n+1))+A025443(n)`
-/

namespace A249200.P15111773477535480613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A167614 (n + 1)).toNat + A025443 n

end

end A249200.P15111773477535480613

/-!
# A249201: Number of length 4+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249201, there is no canonical definition to state claims against.
-/

/-! ## A249201.P10980585939747751217

`A249197(∑[n+3]+7)`
-/

namespace A249201.P10980585939747751217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249201.P10980585939747751217

/-! ## A249201.P16060889679945757471

`lcm(2, A249197(A055999(n)+10))`
-/

namespace A249201.P16060889679945757471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249197 (A055999 n + 10).toNat)

end

end A249201.P16060889679945757471

/-! ## A249201.P1011154101605331640

`A007318(C(2, n))*A249197(A055999(n)+10)`
-/

namespace A249201.P1011154101605331640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A249197 (A055999 n + 10).toNat

end

end A249201.P1011154101605331640

/-! ## A249201.P16492348620306273542

`A007318(floor(n/8))*A249197(A055999(n)+10)`
-/

namespace A249201.P16492348620306273542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 8⌋.toNat * A249197 (A055999 n + 10).toNat

end

end A249201.P16492348620306273542

/-! ## A249201.P12443516353304515702

`A014963(xor(42, n)+n)!*A249197(A141214(n)+7)`
-/

namespace A249201.P12443516353304515702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A014963 (Nat.xor 42 n + n)).toNat : ℤ) * A249197 (A141214 n + 7).toNat

end

end A249201.P12443516353304515702

/-!
# A249202: Number of length 5+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249202, there is no canonical definition to state claims against.
-/

/-! ## A249202.P8657450008199991029

`A249197(∑[a(n-1)+1])` with `a(0)=15, a(1)=5`
-/

namespace A249202.P8657450008199991029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249202.P8657450008199991029

/-! ## A249202.P15136322300672688721

`A249197(A167499(n+3))`
-/

namespace A249202.P15136322300672688721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A167499 (n + 3)).toNat

end

end A249202.P15136322300672688721

/-! ## A249202.P10113283235639923931

`A249197(A155212(n)+13)`
-/

namespace A249202.P10113283235639923931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A155212 n + 13).toNat

end

end A249202.P10113283235639923931

/-! ## A249202.P16931798964923079705

`A249197(A056000(n)+15)`
-/

namespace A249202.P16931798964923079705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A056000 n + 15).toNat

end

end A249202.P16931798964923079705

/-! ## A249202.P1016864183831677286

`A249197(eq[7, A066657(n)])`
-/

namespace A249202.P1016864183831677286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249202.P1016864183831677286

/-!
# A249203: Number of length 6+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249203, there is no canonical definition to state claims against.
-/

/-! ## A249203.P2236735395178482045

`A249197(A056115(n)+21)`
-/

namespace A249203.P2236735395178482045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A056115 n + 21).toNat

end

end A249203.P2236735395178482045

/-! ## A249203.P4784946427232052339

`A249197(A167499(n+4)+1)`
-/

namespace A249203.P4784946427232052339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A167499 (n + 4) + 1).toNat

end

end A249203.P4784946427232052339

/-! ## A249203.P912253188826829321

`A249197(A167614(n+4)+3)`
-/

namespace A249203.P912253188826829321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A167614 (n + 4) + 3).toNat

end

end A249203.P912253188826829321

/-! ## A249203.P434029023240424625

`A249197(A000124(n+5)+5)`
-/

namespace A249203.P434029023240424625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A000124 (n + 5) + 5).toNat

end

end A249203.P434029023240424625

/-! ## A249203.P16597721913748041849

`A249197(A000096(n+4)+7)`
-/

namespace A249203.P16597721913748041849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A000096 (n + 4) + 7).toNat

end

end A249203.P16597721913748041849

/-!
# A249204: Number of length 7+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249204, there is no canonical definition to state claims against.
-/

/-! ## A249204.P2436694131803593277

`A249197(A302537(n)+27)`
-/

namespace A249204.P2436694131803593277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A302537 n + 27).toNat

end

end A249204.P2436694131803593277

/-! ## A249204.P198380052865588988

`A249197(A056119(n)+28)`
-/

namespace A249204.P198380052865588988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A056119 n + 28).toNat

end

end A249204.P198380052865588988

/-! ## A249204.P6644553909034338768

`A249197(eq[11, A066657(n)])`
-/

namespace A249204.P6644553909034338768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249204.P6644553909034338768

/-! ## A249204.P17892333366091565286

`A249197(A167499(n+5)+2)`
-/

namespace A249204.P17892333366091565286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A167499 (n + 5) + 2).toNat

end

end A249204.P17892333366091565286

/-! ## A249204.P14524847225531844982

`A249197(A000096(n+5)+8)`
-/

namespace A249204.P14524847225531844982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A000096 (n + 5) + 8).toNat

end

end A249204.P14524847225531844982

/-!
# A249207: Number of length n+6 0..3 arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249207, there is no canonical definition to state claims against.
-/

/-! ## A249207.P7946171300282872496

`A249212(∑[n+3]+1)`
-/

namespace A249207.P7946171300282872496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249207.P7946171300282872496

/-! ## A249207.P17316832291866797968

`lcm(2, A249212(A034856(n+2)))`
-/

namespace A249207.P17316832291866797968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249212 (A034856 (n + 2)).toNat)

end

end A249207.P17316832291866797968

/-! ## A249207.P2646701839290331597

`A249212(A034856(n+2))+A185284(n)`
-/

namespace A249207.P2646701839290331597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A034856 (n + 2)).toNat + A185284 n

end

end A249207.P2646701839290331597

/-! ## A249207.P12508549252414348385

`A249212(A034856(n+2))/A271954(n)`
-/

namespace A249207.P12508549252414348385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249212 (A034856 (n + 2)).toNat : ℚ) / (A271954 n : ℚ)

end

end A249207.P12508549252414348385

/-! ## A249207.P904095389841760158

`A249212(A034856(n+2))+A230398(n+1)`
-/

namespace A249207.P904095389841760158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A034856 (n + 2)).toNat + A230398 (n + 1)

end

end A249207.P904095389841760158

/-!
# A249208: Number of length n+6 0..4 arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249208, there is no canonical definition to state claims against.
-/

/-! ## A249208.P17822859949510921040

`A249212(∑[n+4]+3)`
-/

namespace A249208.P17822859949510921040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A249208.P17822859949510921040

/-! ## A249208.P10455016922696067796

`and(-1, A249212(A027379(n+2)))`
-/

namespace A249208.P10455016922696067796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A249212 (A027379 (n + 2)).toNat)

end

end A249208.P10455016922696067796

/-! ## A249208.P6003022816423677618

`lcm(2, A249212(A046691(n+2)+1))`
-/

namespace A249208.P6003022816423677618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249212 (A046691 (n + 2) + 1).toNat)

end

end A249208.P6003022816423677618

/-! ## A249208.P18006545582124711875

`A007318(C(2, n))*A249212(A046691(n+2)+1)`
-/

namespace A249208.P18006545582124711875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A249212 (A046691 (n + 2) + 1).toNat

end

end A249208.P18006545582124711875

/-! ## A249208.P4831947400142869157

`A249212(A046691(n+2)+1)+char[A000108(n+14)]`
-/

namespace A249208.P4831947400142869157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 14)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A046691 (n + 2) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A249208.P4831947400142869157

/-!
# A249209: Number of length n+6 0..5 arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249209, there is no canonical definition to state claims against.
-/

/-! ## A249209.P14673387139985227707

`A249212(∑[n+5]+6)`
-/

namespace A249209.P14673387139985227707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A249209.P14673387139985227707

/-!
# A249210: Number of length n+6 0..6 arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249210, there is no canonical definition to state claims against.
-/

/-! ## A249210.P2831253128183095240

`A249212(A052905(n+3))`
-/

namespace A249210.P2831253128183095240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A052905 (n + 3)).toNat

end

end A249210.P2831253128183095240

/-! ## A249210.P17725820370281485004

`A249212(A056119(n)+16)`
-/

namespace A249210.P17725820370281485004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A056119 n + 16).toNat

end

end A249210.P17725820370281485004

/-! ## A249210.P1314769544631680486

`A249212(eq[3, A219347(n)])`
-/

namespace A249210.P1314769544631680486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249210.P1314769544631680486

/-! ## A249210.P17622314046189222177

`A249212(eq[5, A193592(n)])`
-/

namespace A249210.P17622314046189222177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249210.P17622314046189222177

/-! ## A249210.P14178075362308279140

`A249212(eq[8, A258709(n)])`
-/

namespace A249210.P14178075362308279140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249210.P14178075362308279140

/-!
# A249211: Number of length n+6 0..7 arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249211, there is no canonical definition to state claims against.
-/

/-! ## A249211.P9967114377703849980

`A249212(A055999(n+4))`
-/

namespace A249211.P9967114377703849980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A055999 (n + 4)).toNat

end

end A249211.P9967114377703849980

/-! ## A249211.P12523649137320053153

`A249212(eq[4, A219347(n)])`
-/

namespace A249211.P12523649137320053153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249211.P12523649137320053153

/-! ## A249211.P2751017932769603488

`A249212(eq[5, A332954(n)])`
-/

namespace A249211.P2751017932769603488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249211.P2751017932769603488

/-! ## A249211.P14533145380906432250

`A249212(eq[6, A193592(n)])`
-/

namespace A249211.P14533145380906432250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249211.P14533145380906432250

/-! ## A249211.P11583440424168412164

`A249212(A052905(n+4)-1)`
-/

namespace A249211.P11583440424168412164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A052905 (n + 4) - 1).toNat

end

end A249211.P11583440424168412164

/-!
# A249212: T(n,k)=Number of length n+6 0..k arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249212, there is no canonical definition to state claims against.
-/

/-! ## A249212.P13802758325551893043

`A249319(∑[C(n, ceil(n/2)+2)!])`
-/

namespace A249212.P13802758325551893043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose n (⌈(n : ℚ) / 2⌉ + 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249212.P13802758325551893043

/-! ## A249212.P541860801120646913

`A249319(A001096(n)+1)`
-/

namespace A249212.P541860801120646913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A001096 n + 1).toNat

end

end A249212.P541860801120646913

/-!
# A249213: Number of length 1+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249213, there is no canonical definition to state claims against.
-/

/-! ## A249213.P5218226408685519058

`(n+2)^7-A249256(n+1)`
-/

namespace A249213.P5218226408685519058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A249256 (n + 1)

end

end A249213.P5218226408685519058

/-! ## A249213.P18115141323471316881

`A249172(n+1)+A249198(n+1)-A249256(n+1)`
-/

namespace A249213.P18115141323471316881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249172 (n + 1) + (A249198 (n + 1) - A249256 (n + 1))

end

end A249213.P18115141323471316881

/-! ## A249213.P7204032935738810805

`A249198(n+1)+A249171(∑[n]+1)-A249256(n+1)`
-/

namespace A249213.P7204032935738810805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249198 (n + 1) + (A249171 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A249256 (n + 1))

end

end A249213.P7204032935738810805

/-! ## A249213.P8133219730322843159

`A249212(∑[n]+1)`
-/

namespace A249213.P8133219730322843159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249213.P8133219730322843159

/-! ## A249213.P1908485999597135649

`record[A249212(∑[gcd(1-n, floor(n/2))])]`
-/

namespace A249213.P1908485999597135649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249213.P1908485999597135649

/-!
# A249214: Number of length 2+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249214, there is no canonical definition to state claims against.
-/

/-! ## A249214.P10545236397134228599

`A249212(∑[n+1]+2)`
-/

namespace A249214.P10545236397134228599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249214.P10545236397134228599

/-! ## A249214.P3564273477104287542

`record[gcd(A002262(n+1), A249212(n+3))]`
-/

namespace A249214.P3564273477104287542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1)) (A249212 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249214.P3564273477104287542

/-! ## A249214.P13588717304845778579

`char[A081371(3*n+4)]*A249212(A133263(n+1))`
-/

namespace A249214.P13588717304845778579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081371 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A249212 (A133263 (n + 1)).toNat

end

end A249214.P13588717304845778579

/-!
# A249215: Number of length 3+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249215, there is no canonical definition to state claims against.
-/

/-! ## A249215.P9820955928391089479

`A249212(∑[n+2]+4)`
-/

namespace A249215.P9820955928391089479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249215.P9820955928391089479

/-! ## A249215.P7049104851179430284

`lcm(2, A249212(A167614(n+1)))`
-/

namespace A249215.P7049104851179430284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249212 (A167614 (n + 1)).toNat)

end

end A249215.P7049104851179430284

/-! ## A249215.P17205896388071919788

`A249212(A167614(n+1))+A185037(n)`
-/

namespace A249215.P17205896388071919788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A167614 (n + 1)).toNat + A185037 n

end

end A249215.P17205896388071919788

/-! ## A249215.P12683491073735188979

`A249212(A167614(n+1))+A243831(n)`
-/

namespace A249215.P12683491073735188979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A167614 (n + 1)).toNat + A243831 n

end

end A249215.P12683491073735188979

/-! ## A249215.P17216175873925929365

`A249212(A167614(n+1))+A167263(n+1)`
-/

namespace A249215.P17216175873925929365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A167614 (n + 1)).toNat + A167263 (n + 1)

end

end A249215.P17216175873925929365

/-!
# A249216: Number of length 4+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249216, there is no canonical definition to state claims against.
-/

/-! ## A249216.P16140260310619206443

`A249212(∑[n+3]+7)`
-/

namespace A249216.P16140260310619206443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249216.P16140260310619206443

/-! ## A249216.P5337234795828240791

`lcm(2, A249212(Δ[A005586(n)]+5))`
-/

namespace A249216.P5337234795828240791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249212 (f1 (n + 1) - f1 n + 5).toNat)

end

end A249216.P5337234795828240791

/-! ## A249216.P10048733032852675503

`A249212(A052905(n)+9)+char[21]`
-/

namespace A249216.P10048733032852675503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A249216.P10048733032852675503

/-! ## A249216.P10668247388728516339

`A007318(C(2, n²))*A249212(A052905(n)+9)`
-/

namespace A249216.P10668247388728516339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n ^ 2)) * A249212 (A052905 n + 9).toNat

end

end A249216.P10668247388728516339

/-! ## A249216.P11820758125030776511

`A007318(C(2, n))*A249212(A167614(n+2)+1)`
-/

namespace A249216.P11820758125030776511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A249212 (A167614 (n + 2) + 1).toNat

end

end A249216.P11820758125030776511

/-!
# A249217: Number of length 5+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249217, there is no canonical definition to state claims against.
-/

/-! ## A249217.P5006624300348417728

`A249212(A167499(n+3))`
-/

namespace A249217.P5006624300348417728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A167499 (n + 3)).toNat

end

end A249217.P5006624300348417728

/-! ## A249217.P6257495083552009010

`A249212(A155212(n)+13)`
-/

namespace A249217.P6257495083552009010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A155212 n + 13).toNat

end

end A249217.P6257495083552009010

/-! ## A249217.P5253010501171545437

`A249212(A056000(n)+15)`
-/

namespace A249217.P5253010501171545437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A056000 n + 15).toNat

end

end A249217.P5253010501171545437

/-! ## A249217.P9224818013558047939

`A249212(eq[7, A066657(n)])`
-/

namespace A249217.P9224818013558047939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249217.P9224818013558047939

/-! ## A249217.P707085961387507395

`A249212(A167614(n+3)+2)`
-/

namespace A249217.P707085961387507395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A167614 (n + 3) + 2).toNat

end

end A249217.P707085961387507395

/-!
# A249218: Number of length 6+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249218, there is no canonical definition to state claims against.
-/

/-! ## A249218.P8963312737656297775

`A249212(A056115(n)+21)`
-/

namespace A249218.P8963312737656297775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A056115 n + 21).toNat

end

end A249218.P8963312737656297775

/-! ## A249218.P13707024439535524096

`A249212(Δ[A264443(n)]+10)`
-/

namespace A249218.P13707024439535524096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (f1 (n + 1) - f1 n + 10).toNat

end

end A249218.P13707024439535524096

/-! ## A249218.P1545857362891545825

`A249212(A167499(n+4)+1)`
-/

namespace A249218.P1545857362891545825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A167499 (n + 4) + 1).toNat

end

end A249218.P1545857362891545825

/-! ## A249218.P15239426252284803702

`A249212(A167614(n+4)+3)`
-/

namespace A249218.P15239426252284803702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A167614 (n + 4) + 3).toNat

end

end A249218.P15239426252284803702

/-! ## A249218.P10214063568347204432

`A249212(A000124(n+5)+5)`
-/

namespace A249218.P10214063568347204432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A000124 (n + 5) + 5).toNat

end

end A249218.P10214063568347204432

/-!
# A249219: Number of length 7+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249219, there is no canonical definition to state claims against.
-/

/-! ## A249219.P7332766123815142086

`A249212(eq[11, A066657(n)])`
-/

namespace A249219.P7332766123815142086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249219.P7332766123815142086

/-! ## A249219.P2836612733422621679

`A249212(A166136(n+5)+1)`
-/

namespace A249219.P2836612733422621679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A166136 (n + 5) + 1).toNat

end

end A249219.P2836612733422621679

/-! ## A249219.P11573337929450778083

`A249212(A167499(n+5)+2)`
-/

namespace A249219.P11573337929450778083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A167499 (n + 5) + 2).toNat

end

end A249219.P11573337929450778083

/-! ## A249219.P11083825098202082938

`A249212(A167614(n+5)+4)`
-/

namespace A249219.P11083825098202082938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A167614 (n + 5) + 4).toNat

end

end A249219.P11083825098202082938

/-! ## A249219.P1651062613502499289

`A249212(A133263(n+6)+5)`
-/

namespace A249219.P1651062613502499289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A133263 (n + 6) + 5).toNat

end

end A249219.P1651062613502499289

/-!
# A249221: Expansion of x*(1+5*x-2*x^3)/(1-6*x^2+2*x^4).

The programs for A249221, the canonical program `A249221.P5566242368108733584` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249221 has offset 1).

The definition of A249221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249221.P5566242368108733584

`6*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=28`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A249221

/-- `6*a(n-2)-2*a(n-4)` -/
def P5566242368108733584.Spec : Prop :=
  ∀ n, P5566242368108733584.a n = A249221 (n + 1)

theorem P5566242368108733584.correct : P5566242368108733584.Spec := by
  intro n
  simp only [A249221, Nat.add_sub_cancel]

end A249221

/-! ## A249221.P4807412465709822700

`∪[A154244(n+1), Δ[A154244(n+1)]]`
-/

namespace A249221.P4807412465709822700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154244 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249221.P4807412465709822700

namespace A249221

/-- `∪[A154244(n+1), Δ[A154244(n+1)]]` -/
def P4807412465709822700.Spec : Prop :=
  ∀ n, (P4807412465709822700.a n : ℤ) = A249221 (n + 1)

end A249221

/-! ## A249221.P11784262471621574797

`∪[A154244(n+1), A243669(n+1)]`
-/

namespace A249221.P11784262471621574797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249221.P11784262471621574797

namespace A249221

/-- `∪[A154244(n+1), A243669(n+1)]` -/
def P11784262471621574797.Spec : Prop :=
  ∀ n, (P11784262471621574797.a n : ℤ) = A249221 (n + 1)

end A249221

/-! ## A249221.P8047839057722383229

`∪[∑[A243669(n+1)], A243669(n+2)]`
-/

namespace A249221.P8047839057722383229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243669 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A249221.P8047839057722383229

namespace A249221

/-- `∪[∑[A243669(n+1)], A243669(n+2)]` -/
def P8047839057722383229.Spec : Prop :=
  ∀ n, (P8047839057722383229.a n : ℤ) = A249221 (n + 1)

end A249221

/-!
# A249222: Expansion of x*(1+5*x-5*x^3)/(1-6*x^2+5*x^4).

The programs for A249222, the canonical program `A249222.P14356600746983245691` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249222 has offset 1).

The definition of A249222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249222.P14356600746983245691

`6*a(n-2)-5*a(n-4)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=25`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A249222

/-- `6*a(n-2)-5*a(n-4)` -/
def P14356600746983245691.Spec : Prop :=
  ∀ n, P14356600746983245691.a n = A249222 (n + 1)

theorem P14356600746983245691.correct : P14356600746983245691.Spec := by
  intro n
  simp only [A249222, Nat.add_sub_cancel]

end A249222

/-! ## A249222.P8260065113738854735

`∪[5^(n+1), ∑[5^n]]`
-/

namespace A249222.P8260065113738854735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A249222.P8260065113738854735

namespace A249222

/-- `∪[5^(n+1), ∑[5^n]]` -/
def P8260065113738854735.Spec : Prop :=
  ∀ n, (P8260065113738854735.a n : ℤ) = A249222 (n + 1)

end A249222

/-! ## A249222.P5326456912794191248

`(n+1)%2+5*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A249222.P5326456912794191248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (n + 1) % 2 + 5 * a (n - 2)

end

end A249222.P5326456912794191248

namespace A249222

/-- `(n+1)%2+5*a(n-2)` -/
def P5326456912794191248.Spec : Prop :=
  ∀ n, (P5326456912794191248.a n : ℤ) = A249222 (n + 1)

end A249222

/-! ## A249222.P5385342733929874109

`A059841(n)+5*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A249222.P5385342733929874109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A059841 n + 5 * a (n - 2)

end

end A249222.P5385342733929874109

namespace A249222

/-- `A059841(n)+5*a(n-2)` -/
def P5385342733929874109.Spec : Prop :=
  ∀ n, P5385342733929874109.a n = A249222 (n + 1)

end A249222

/-! ## A249222.P8949616607797589176

`A000035(n+1)+5*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A249222.P8949616607797589176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A000035 (n + 1) + 5 * a (n - 2)

end

end A249222.P8949616607797589176

namespace A249222

/-- `A000035(n+1)+5*a(n-2)` -/
def P8949616607797589176.Spec : Prop :=
  ∀ n, P8949616607797589176.a n = A249222 (n + 1)

end A249222

/-! ## A249222.P11661911698242022891

`floor(A056451(n+1)/ratio[A056450(n)])`
-/

namespace A249222.P11661911698242022891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056451 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A249222.P11661911698242022891

namespace A249222

/-- `floor(A056451(n+1)/ratio[A056450(n)])` -/
def P11661911698242022891.Spec : Prop :=
  ∀ n, P11661911698242022891.a n = A249222 (n + 1)

end A249222

/-! ## A249222.P473918502128867185

`floor(a(n-2)+5^n/a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A249222.P473918502128867185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌊(a (n - 2) : ℚ) + (5 ^ n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A249222.P473918502128867185

namespace A249222

/-- `floor(a(n-2)+5^n/a(n-1))` -/
def P473918502128867185.Spec : Prop :=
  ∀ n, P473918502128867185.a n = A249222 (n + 1)

end A249222

/-! ## A249222.P17949955875594018787

`floor((∑[5^n]-1)/a(n-1))` with `a(0)=1`
-/

namespace A249222.P17949955875594018787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A249222.P17949955875594018787

namespace A249222

/-- `floor((∑[5^n]-1)/a(n-1))` -/
def P17949955875594018787.Spec : Prop :=
  ∀ n, P17949955875594018787.a n = A249222 (n + 1)

end A249222

/-!
# A249223: Triangle read by rows: row n gives partial alternating sums of row n of A237048.

The programs for A249223, there is no canonical definition to state claims against.
-/

/-! ## A249223.P5544618123796301155

`A244250(∑[A237591(n+1)])`
-/

namespace A249223.P5544618123796301155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244250 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249223.P5544618123796301155

/-! ## A249223.P3901549395487192037

`A244250(∑[A259176(n+1)])`
-/

namespace A249223.P3901549395487192037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244250 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249223.P3901549395487192037

/-! ## A249223.P15545338372670600188

`A244250(∑[A237593(Δ[n²])])`
-/

namespace A249223.P15545338372670600188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244250 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249223.P15545338372670600188

/-! ## A249223.P13178040523350241178

`A244250(∑[A235791(n+1)-sqrt(A236112(n+1))])`
-/

namespace A249223.P13178040523350241178
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235791 (n + 1) : ℝ) - Real.sqrt (A236112 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244250 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A249223.P13178040523350241178

/-! ## A249223.P5993206516583366937

`A249351(A053616(n)+A000040(n+1))`
-/

namespace A249223.P5993206516583366937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A053616 n + A000040 (n + 1)).toNat

end

end A249223.P5993206516583366937

/-!
# A249224: Lpf (n(n+11)/2): least prime dividing n(n+11)/2.

The programs for A249224, there is no canonical definition to state claims against.
-/

/-! ## A249224.P4382082815949140729

`A020639((n+1)*(n+12)/2)`
-/

namespace A249224.P4382082815949140729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 12 : ℚ) / 2))).toNat

end

end A249224.P4382082815949140729

/-! ## A249224.P3000285057208926905

`2-4/2+A020639(A056115(n+1))`
-/

namespace A249224.P3000285057208926905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + (A020639 (A056115 (n + 1)).toNat : ℚ)

end

end A249224.P3000285057208926905

/-! ## A249224.P9538339269714743460

`A020639(A056115(n+1))+A000035(2*n)`
-/

namespace A249224.P9538339269714743460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056115 (n + 1)).toNat + A000035 (2 * n)

end

end A249224.P9538339269714743460

/-! ## A249224.P12638260982006810467

`A020639(A056000(n+1)+n+1)%A028563(n+1)`
-/

namespace A249224.P12638260982006810467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A056000 (n + 1) + (n + 1 : ℤ)).toNat) (A028563 (n + 1))

end

end A249224.P12638260982006810467

/-! ## A249224.P3912044713951595346

`A057237(∑[n+7]-(n+1))+1`
-/

namespace A249224.P3912044713951595346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (∑ j ∈ Finset.range (n + 1), f1 j - (n + 1)) + 1

end

end A249224.P3912044713951595346

/-! ## A249224.P9944211765904383090

`A006530(A074828(∑[n+6]))`
-/

namespace A249224.P9944211765904383090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A249224.P9944211765904383090

/-! ## A249224.P13373196665265333566

`A006530(A174857(∑[n+6]))`
-/

namespace A249224.P13373196665265333566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A174857 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A249224.P13373196665265333566

/-! ## A249224.P9501513254397652238

`A102457(∑[n+6]+1)`
-/

namespace A249224.P9501513254397652238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249224.P9501513254397652238

/-! ## A249224.P559977319547799024

`A000040(A055396(∑[n+6]))`
-/

namespace A249224.P559977319547799024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A055396 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A249224.P559977319547799024

/-!
# A249225: Numerators of constants A(a) related to the asymptotic LCM of arithmetic progressions a*n+b (a and b coprime).

The programs for A249225, there is no canonical definition to state claims against.
-/

/-! ## A249225.P17849479356908496814

`A006530(A074182(n+1))*A093600(n+1)`
-/

namespace A249225.P17849479356908496814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074182 (n + 1)).toNat * A093600 (n + 1)

end

end A249225.P17849479356908496814

/-! ## A249225.P9530162950865013312

`A006530(A074182(n+1))*A116416(A054432(n+1))`
-/

namespace A249225.P9530162950865013312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074182 (n + 1)).toNat * A116416 (A054432 (n + 1)).toNat

end

end A249225.P9530162950865013312

/-! ## A249225.P10848644362329442109

`A026741((n+1)^A092964(n))`
-/

namespace A249225.P10848644362329442109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A092964 n : ℤ))).toNat

end

end A249225.P10848644362329442109

/-!
# A249226: Denominators of constants A(a) related to the asymptotic LCM of arithmetic progressions a*n+b (a and b coprime).

The programs for A249226, there is no canonical definition to state claims against.
-/

/-! ## A249226.P987175496363011416

`A028310(A069220(n+1))*A049559(n+1)`
-/

namespace A249226.P987175496363011416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A069220 (n + 1)).toNat * A049559 (n + 1)

end

end A249226.P987175496363011416

/-! ## A249226.P17638465009080138821

`A049559(A249225(n+1))*A069220(n+1)`
-/

namespace A249226.P17638465009080138821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A249225 (n + 1)).toNat * A069220 (n + 1)

end

end A249226.P17638465009080138821

/-! ## A249226.P4245227178275563859

`A055881(A124441(n+1)*A124442(n+1))*A069220(n+1)`
-/

namespace A249226.P4245227178275563859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A124441 (n + 1) * A124442 (n + 1)).toNat * A069220 (n + 1)

end

end A249226.P4245227178275563859

/-! ## A249226.P7468494436497020848

`A055881(A000142(n+1)/A066570(n+1))*A069220(n+1)`
-/

namespace A249226.P7468494436497020848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (SequenceMachineLib.roundAway ((A000142 (n + 1) : ℚ) / (A066570 (n + 1) : ℚ))).toNat * A069220 (n + 1)

end

end A249226.P7468494436497020848

/-! ## A249226.P810186972298293829

`A055881(A055067(n+1)/A070251(n+1))*A069220(n+1)`
-/

namespace A249226.P810186972298293829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (SequenceMachineLib.roundAway ((A055067 (n + 1) : ℚ) / (A070251 (n + 1) : ℚ))).toNat * A069220 (n + 1)

end

end A249226.P810186972298293829

/-!
# A249227: Number of length n+5 0..2 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249227, the canonical program `A249227.P164281632648431121` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249227 has offset 1).

The definition of A249227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249227.P164281632648431121

`18*27*2^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A249227

/-- `18*27*2^n` -/
def P164281632648431121.Spec : Prop :=
  ∀ n, (P164281632648431121.a n : ℤ) = A249227 (n + 1)

theorem P164281632648431121.correct : P164281632648431121.Spec := by
  intro n
  simp only [A249227, Nat.add_sub_cancel]

end A249227

/-! ## A249227.P14981930527465845380

`A000079(n+1)+A108213(n+1)*A108732(n)`
-/

namespace A249227.P14981930527465845380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + A108213 (n + 1) * A108732 n

end

end A249227.P14981930527465845380

namespace A249227

/-- `A000079(n+1)+A108213(n+1)*A108732(n)` -/
def P14981930527465845380.Spec : Prop :=
  ∀ n, P14981930527465845380.a n = A249227 (n + 1)

end A249227

/-! ## A249227.P17172120620881009860

`Δ[9*A182467(n)]`
-/

namespace A249227.P17172120620881009860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A182467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249227.P17172120620881009860

namespace A249227

/-- `Δ[9*A182467(n)]` -/
def P17172120620881009860.Spec : Prop :=
  ∀ n, P17172120620881009860.a n = A249227 (n + 1)

end A249227

/-! ## A249227.P761539653620837170

`Δ[18*A304387(n)]`
-/

namespace A249227.P761539653620837170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A304387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249227.P761539653620837170

namespace A249227

/-- `Δ[18*A304387(n)]` -/
def P761539653620837170.Spec : Prop :=
  ∀ n, P761539653620837170.a n = A249227 (n + 1)

end A249227

/-! ## A249227.P7262486934906994463

`Δ[54*A083705(n)]`
-/

namespace A249227.P7262486934906994463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  54 * A083705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249227.P7262486934906994463

namespace A249227

/-- `Δ[54*A083705(n)]` -/
def P7262486934906994463.Spec : Prop :=
  ∀ n, P7262486934906994463.a n = A249227 (n + 1)

end A249227

/-! ## A249227.P5637622381083916678

`Δ[81*A048488(n)]`
-/

namespace A249227.P5637622381083916678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A048488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249227.P5637622381083916678

namespace A249227

/-- `Δ[81*A048488(n)]` -/
def P5637622381083916678.Spec : Prop :=
  ∀ n, P5637622381083916678.a n = A249227 (n + 1)

end A249227

/-! ## A249227.P15809810553436527938

`Δ[3*A335843(n+2)]`
-/

namespace A249227.P15809810553436527938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A335843 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249227.P15809810553436527938

namespace A249227

/-- `Δ[3*A335843(n+2)]` -/
def P15809810553436527938.Spec : Prop :=
  ∀ n, P15809810553436527938.a n = A249227 (n + 1)

end A249227

/-! ## A249227.P11670847500293928702

`Δ[9*9*A007283(n+1)]`
-/

namespace A249227.P11670847500293928702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (9 * A007283 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249227.P11670847500293928702

namespace A249227

/-- `Δ[9*9*A007283(n+1)]` -/
def P11670847500293928702.Spec : Prop :=
  ∀ n, P11670847500293928702.a n = A249227 (n + 1)

end A249227

/-! ## A249227.P6304329839324063339

`Δ[A304615(n)-A171389(n)]`
-/

namespace A249227.P6304329839324063339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304615 n - A171389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249227.P6304329839324063339

namespace A249227

/-- `Δ[A304615(n)-A171389(n)]` -/
def P6304329839324063339.Spec : Prop :=
  ∀ n, P6304329839324063339.a n = A249227 (n + 1)

end A249227

/-! ## A249227.P6066333104077833969

`Δ[A304615(n)-A305064(n)/2]`
-/

namespace A249227.P6066333104077833969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304615 n : ℚ) - (A305064 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249227.P6066333104077833969

namespace A249227

/-- `Δ[A304615(n)-A305064(n)/2]` -/
def P6066333104077833969.Spec : Prop :=
  ∀ n, P6066333104077833969.a n = (A249227 (n + 1) : ℚ)

end A249227

/-! ## A249227.P10520507828447859924

`A335843(n+4)-A335843(n+2)`
-/

namespace A249227.P10520507828447859924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335843 (n + 4) - A335843 (n + 2)

end

end A249227.P10520507828447859924

namespace A249227

/-- `A335843(n+4)-A335843(n+2)` -/
def P10520507828447859924.Spec : Prop :=
  ∀ n, P10520507828447859924.a n = A249227 (n + 1)

end A249227

/-! ## A249227.P8687873343570840223

`Δ[A305066(n)+3*A305064(n+1)]`
-/

namespace A249227.P8687873343570840223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305066 n + 3 * A305064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249227.P8687873343570840223

namespace A249227

/-- `Δ[A305066(n)+3*A305064(n+1)]` -/
def P8687873343570840223.Spec : Prop :=
  ∀ n, P8687873343570840223.a n = A249227 (n + 1)

end A249227

/-! ## A249227.P4618206122421869682

`A175806(n+1)²/A007283(n+1)`
-/

namespace A249227.P4618206122421869682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175806 (n + 1) ^ 2 : ℚ) / (A007283 (n + 1) : ℚ)

end

end A249227.P4618206122421869682

namespace A249227

/-- `A175806(n+1)²/A007283(n+1)` -/
def P4618206122421869682.Spec : Prop :=
  ∀ n, P4618206122421869682.a n = (A249227 (n + 1) : ℚ)

end A249227

/-! ## A249227.P17429290202861903767

`A175806(n+1)*A175806(n)/A007283(n)`
-/

namespace A249227.P17429290202861903767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175806 (n + 1) * A175806 n : ℚ) / (A007283 n : ℚ)

end

end A249227.P17429290202861903767

namespace A249227

/-- `A175806(n+1)*A175806(n)/A007283(n)` -/
def P17429290202861903767.Spec : Prop :=
  ∀ n, P17429290202861903767.a n = (A249227 (n + 1) : ℚ)

end A249227

/-! ## A249227.P4016395524216462712

`A175806(n+1)*A175806(n)/A003945(n+1)`
-/

namespace A249227.P4016395524216462712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175806 (n + 1) * A175806 n : ℚ) / (A003945 (n + 1) : ℚ)

end

end A249227.P4016395524216462712

namespace A249227

/-- `A175806(n+1)*A175806(n)/A003945(n+1)` -/
def P4016395524216462712.Spec : Prop :=
  ∀ n, P4016395524216462712.a n = (A249227 (n + 1) : ℚ)

end A249227

/-! ## A249227.P10169389950340475821

`A175806(n+1)*A175806(n)/A042950(n+1)`
-/

namespace A249227.P10169389950340475821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175806 (n + 1) * A175806 n : ℚ) / (A042950 (n + 1) : ℚ)

end

end A249227.P10169389950340475821

namespace A249227

/-- `A175806(n+1)*A175806(n)/A042950(n+1)` -/
def P10169389950340475821.Spec : Prop :=
  ∀ n, P10169389950340475821.a n = (A249227 (n + 1) : ℚ)

end A249227

/-! ## A249227.P2657366718295379368

`A175806(n+1)*A175806(n+1)/A091629(n+1)`
-/

namespace A249227.P2657366718295379368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175806 (n + 1) * A175806 (n + 1) : ℚ) / (A091629 (n + 1) : ℚ)

end

end A249227.P2657366718295379368

namespace A249227

/-- `A175806(n+1)*A175806(n+1)/A091629(n+1)` -/
def P2657366718295379368.Spec : Prop :=
  ∀ n, P2657366718295379368.a n = (A249227 (n + 1) : ℚ)

end A249227

/-!
# A249228: Number of length n+5 0..3 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249228, there is no canonical definition to state claims against.
-/

/-! ## A249228.P16703774368605771648

`A249233(∑[n+3]+1)`
-/

namespace A249228.P16703774368605771648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249228.P16703774368605771648

/-! ## A249228.P909807969796309903

`record[A249233(lt[A249252(n+2), n-1])]`
-/

namespace A249228.P909807969796309903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249252 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (SequenceMachineLib.nth (fun j => f2 j < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249228.P909807969796309903

/-!
# A249229: Number of length n+5 0..4 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249229, there is no canonical definition to state claims against.
-/

/-! ## A249229.P11962552848445805216

`A249233(A141214(n+1))`
-/

namespace A249229.P11962552848445805216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A141214 (n + 1)).toNat

end

end A249229.P11962552848445805216

/-! ## A249229.P2446028832429402736

`A249233(A027379(n+2))`
-/

namespace A249229.P2446028832429402736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A027379 (n + 2)).toNat

end

end A249229.P2446028832429402736

/-! ## A249229.P16005587599988585126

`A249233(A055998(n+2))`
-/

namespace A249229.P16005587599988585126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A055998 (n + 2)).toNat

end

end A249229.P16005587599988585126

/-! ## A249229.P11502449556240187245

`A249233(A155212(n)+5)`
-/

namespace A249229.P11502449556240187245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A155212 n + 5).toNat

end

end A249229.P11502449556240187245

/-! ## A249229.P13611863682970023120

`A249233(A052905(n+1)+2)`
-/

namespace A249229.P13611863682970023120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A052905 (n + 1) + 2).toNat

end

end A249229.P13611863682970023120

/-!
# A249230: Number of length n+5 0..5 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249230, there is no canonical definition to state claims against.
-/

/-! ## A249230.P15355839108195569895

`A249233(A046691(n+3))`
-/

namespace A249230.P15355839108195569895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A046691 (n + 3)).toNat

end

end A249230.P15355839108195569895

/-! ## A249230.P14469136212985091944

`A249233(Δ[A023545(n+1)])`
-/

namespace A249230.P14469136212985091944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (f1 (n + 1) - f1 n).toNat

end

end A249230.P14469136212985091944

/-! ## A249230.P3859359205603550641

`A249233(A055999(n+2)+2)`
-/

namespace A249230.P3859359205603550641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A055999 (n + 2) + 2).toNat

end

end A249230.P3859359205603550641

/-! ## A249230.P14407932440364053999

`A249233(A000217(n+5)-4)`
-/

namespace A249230.P14407932440364053999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A000217 (n + 5) - 4).toNat

end

end A249230.P14407932440364053999

/-! ## A249230.P13341844818339871934

`A249233(A000124(n+5)-5)`
-/

namespace A249230.P13341844818339871934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A000124 (n + 5) - 5).toNat

end

end A249230.P13341844818339871934

/-!
# A249231: Number of length n+5 0..6 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249231, there is no canonical definition to state claims against.
-/

/-! ## A249231.P12862257161504052173

`A249233(A052905(n+3))`
-/

namespace A249231.P12862257161504052173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A052905 (n + 3)).toNat

end

end A249231.P12862257161504052173

/-! ## A249231.P6830753683096702782

`A249233(eq[3, A219347(n)])`
-/

namespace A249231.P6830753683096702782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249231.P6830753683096702782

/-! ## A249231.P6151737690295667677

`A249233(A000096(n+5)-4)`
-/

namespace A249231.P6151737690295667677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A000096 (n + 5) - 4).toNat

end

end A249231.P6151737690295667677

/-! ## A249231.P2262498084961441478

`A249233(A000217(n+6)-5)`
-/

namespace A249231.P2262498084961441478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A000217 (n + 6) - 5).toNat

end

end A249231.P2262498084961441478

/-! ## A249231.P15738201016255425266

`A249233(A000124(n+6)-6)`
-/

namespace A249231.P15738201016255425266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A000124 (n + 6) - 6).toNat

end

end A249231.P15738201016255425266

/-!
# A249232: Number of length n+5 0..7 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249232, there is no canonical definition to state claims against.
-/

/-! ## A249232.P2674506279667104848

`A249233(A055999(n+4))`
-/

namespace A249232.P2674506279667104848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A055999 (n + 4)).toNat

end

end A249232.P2674506279667104848

/-! ## A249232.P15451180356326850015

`A249233(eq[4, A219347(n)])`
-/

namespace A249232.P15451180356326850015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249232.P15451180356326850015

/-! ## A249232.P8696420308395680089

`A249233(eq[6, A193592(n)])`
-/

namespace A249232.P8696420308395680089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249232.P8696420308395680089

/-! ## A249232.P14676442460660813739

`A249233(eq[10, A185782(n+1)])`
-/

namespace A249232.P14676442460660813739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249232.P14676442460660813739

/-! ## A249232.P18002266670141829239

`A249233(eq[7, A200370(n+1)])`
-/

namespace A249232.P18002266670141829239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249232.P18002266670141829239

/-!
# A249234: Number of length 1+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249234, there is no canonical definition to state claims against.
-/

/-! ## A249234.P1731773855537927019

`(n+2)^6-A249086(n+1)`
-/

namespace A249234.P1731773855537927019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 6 : ℤ) - A249086 (n + 1)

end

end A249234.P1731773855537927019

/-! ## A249234.P17085831993529478390

`abs(A249086(n+1)-A001014(n+2))`
-/

namespace A249234.P17085831993529478390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A249086 (n + 1) - A001014 (n + 2)|

end

end A249234.P17085831993529478390

/-! ## A249234.P11755714088170413639

`A249233(∑[n]+1)`
-/

namespace A249234.P11755714088170413639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249234.P11755714088170413639

/-! ## A249234.P4154302337888713313

`lcm(2, A249233(A000124(n)))`
-/

namespace A249234.P4154302337888713313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249233 (A000124 n).toNat)

end

end A249234.P4154302337888713313

/-! ## A249234.P18445318686523694846

`record[gcd(A002262(n), A249233(n+1))]`
-/

namespace A249234.P18445318686523694846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A249233 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249234.P18445318686523694846

/-!
# A249235: Number of length 2+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249235, there is no canonical definition to state claims against.
-/

/-! ## A249235.P6336121837624223095

`A249233(∑[n+1]+2)`
-/

namespace A249235.P6336121837624223095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249235.P6336121837624223095

/-! ## A249235.P15646717351304588559

`lcm(2, A249233(A133263(n+1)))`
-/

namespace A249235.P15646717351304588559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249233 (A133263 (n + 1)).toNat)

end

end A249235.P15646717351304588559

/-! ## A249235.P5507482576124020373

`record[A249233(A133263(abs(1-n)))]`
-/

namespace A249235.P5507482576124020373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249235.P5507482576124020373

/-! ## A249235.P216652178219929298

`or(A000038(n), A249233(A133263(n+1)))`
-/

namespace A249235.P216652178219929298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A249233 (A133263 (n + 1)).toNat)

end

end A249235.P216652178219929298

/-! ## A249235.P9270514929012013546

`A249233(A133263(n+1))+A000038(n+1)`
-/

namespace A249235.P9270514929012013546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A133263 (n + 1)).toNat + A000038 (n + 1)

end

end A249235.P9270514929012013546

/-!
# A249236: Number of length 3+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249236, there is no canonical definition to state claims against.
-/

/-! ## A249236.P12889663965271399483

`A249233(∑[n+2]+4)`
-/

namespace A249236.P12889663965271399483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249236.P12889663965271399483

/-! ## A249236.P12766148007974596634

`lcm(2, A249233(A167614(n+1)))`
-/

namespace A249236.P12766148007974596634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249233 (A167614 (n + 1)).toNat)

end

end A249236.P12766148007974596634

/-! ## A249236.P7126328355128529345

`lcm(4, A249233(A000124(n+2)+2))`
-/

namespace A249236.P7126328355128529345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A249233 (A000124 (n + 2) + 2).toNat)

end

end A249236.P7126328355128529345

/-! ## A249236.P18354691008315228989

`A007318(C(n, 2))*A249233(A167614(n+1))`
-/

namespace A249236.P18354691008315228989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A249233 (A167614 (n + 1)).toNat

end

end A249236.P18354691008315228989

/-! ## A249236.P12118603039013679350

`A008683(A014963(n+1))²*A249233(A167499(n)+n)`
-/

namespace A249236.P12118603039013679350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (n + 1)).toNat ^ 2 * A249233 (A167499 n + (n : ℤ)).toNat

end

end A249236.P12118603039013679350

/-!
# A249237: Number of length 4+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249237, there is no canonical definition to state claims against.
-/

/-! ## A249237.P12923890236798566121

`A249233(A141214(n)+7)`
-/

namespace A249237.P12923890236798566121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A141214 n + 7).toNat

end

end A249237.P12923890236798566121

/-! ## A249237.P4854111407309531437

`A249233(A052905(n)+9)`
-/

namespace A249237.P4854111407309531437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A052905 n + 9).toNat

end

end A249237.P4854111407309531437

/-! ## A249237.P4211739859514182669

`A249233(A055999(n)+10)`
-/

namespace A249237.P4211739859514182669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A055999 n + 10).toNat

end

end A249237.P4211739859514182669

/-! ## A249237.P1693105049226098759

`A249233(A167614(n+2)+1)`
-/

namespace A249237.P1693105049226098759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A167614 (n + 2) + 1).toNat

end

end A249237.P1693105049226098759

/-! ## A249237.P5047326304130509560

`A249233(A167499(n+2)-1)`
-/

namespace A249237.P5047326304130509560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A167499 (n + 2) - 1).toNat

end

end A249237.P5047326304130509560

/-!
# A249238: Number of length 5+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249238, there is no canonical definition to state claims against.
-/

/-! ## A249238.P7230161330833145790

`A249233(A155212(n)+13)`
-/

namespace A249238.P7230161330833145790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A155212 n + 13).toNat

end

end A249238.P7230161330833145790

/-! ## A249238.P17397496760761880830

`A249233(A000217(n+4)+5)`
-/

namespace A249238.P17397496760761880830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A000217 (n + 4) + 5).toNat

end

end A249238.P17397496760761880830

/-! ## A249238.P11729848002224872588

`A249233(eq[4, A002262(n)]+1)`
-/

namespace A249238.P11729848002224872588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A249238.P11729848002224872588

/-! ## A249238.P8627204710601464826

`A249233(A000124(n+5)-(n+1))`
-/

namespace A249238.P8627204710601464826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A249238.P8627204710601464826

/-! ## A249238.P11113103813199212609

`A249233(A052905(n+3)-(2*n+1))`
-/

namespace A249238.P11113103813199212609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A249238.P11113103813199212609

/-!
# A249239: Number of length 6+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249239, there is no canonical definition to state claims against.
-/

/-! ## A249239.P4240614577810648603

`A249233(A167499(n+4)+1)`
-/

namespace A249239.P4240614577810648603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A167499 (n + 4) + 1).toNat

end

end A249239.P4240614577810648603

/-! ## A249239.P8595423561281427262

`A249233(A000217(n+5)+6)`
-/

namespace A249239.P8595423561281427262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A000217 (n + 5) + 6).toNat

end

end A249239.P8595423561281427262

/-! ## A249239.P2888234784650166905

`A249233(A052905(n)+A020744(n+6))`
-/

namespace A249239.P2888234784650166905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A052905 n + A020744 (n + 6)).toNat

end

end A249239.P2888234784650166905

/-! ## A249239.P8623729106109319875

`A249233(A016789(n+5)+A000124(n+2))`
-/

namespace A249239.P8623729106109319875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A016789 (n + 5) + A000124 (n + 2)).toNat

end

end A249239.P8623729106109319875

/-! ## A249239.P17276927470797696140

`A249233(A005843(n+7)+A000124(n+3))`
-/

namespace A249239.P17276927470797696140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A005843 (n + 7) + A000124 (n + 3)).toNat

end

end A249239.P17276927470797696140

/-!
# A249240: Number of length 7+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249240, there is no canonical definition to state claims against.
-/

/-! ## A249240.P126886171748002150

`A249233(A167487(n+5))`
-/

namespace A249240.P126886171748002150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A167487 (n + 5)).toNat

end

end A249240.P126886171748002150

/-! ## A249240.P5795405751838261004

`A249233(A167499(n+5)+2)`
-/

namespace A249240.P5795405751838261004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A167499 (n + 5) + 2).toNat

end

end A249240.P5795405751838261004

/-! ## A249240.P17571466531040715328

`A249233(A000124(n+6)+6)`
-/

namespace A249240.P17571466531040715328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A000124 (n + 6) + 6).toNat

end

end A249240.P17571466531040715328

/-! ## A249240.P6559679429894369720

`A249233(A000217(n+6)+7)`
-/

namespace A249240.P6559679429894369720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A000217 (n + 6) + 7).toNat

end

end A249240.P6559679429894369720

/-! ## A249240.P14765779072043190286

`A249233(A052905(n+3)+12)`
-/

namespace A249240.P14765779072043190286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A052905 (n + 3) + 12).toNat

end

end A249240.P14765779072043190286

/-!
# A249242: Squarefree primitive abundant numbers (using the second definition: having no abundant proper divisors, cf. A091191).

The programs for A249242, the canonical program `A249242.P1072947971439864743` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249242 has offset 1).

The definition of A249242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249242.P14512275058957722040

`∩[A087248(n+1), A091191(n+1)]`
-/

namespace A249242.P14512275058957722040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249242.P14512275058957722040

namespace A249242

/-- `∩[A087248(n+1), A091191(n+1)]` -/
def P14512275058957722040.Spec : Prop :=
  ∀ n, (P14512275058957722040.a n : ℤ) = A249242 (n + 1)

end A249242

/-! ## A249242.P10819571182469074274

`∩[A034683(n+1), A091191(n+1)]`
-/

namespace A249242.P10819571182469074274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249242.P10819571182469074274

namespace A249242

/-- `∩[A034683(n+1), A091191(n+1)]` -/
def P10819571182469074274.Spec : Prop :=
  ∀ n, (P10819571182469074274.a n : ℤ) = A249242 (n + 1)

end A249242

/-! ## A249242.P4234238615404935

`filter[A091191(n+1), A008966(#)]`
-/

namespace A249242.P4234238615404935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A249242.P4234238615404935

namespace A249242

/-- `filter[A091191(n+1), A008966(#)]` -/
def P4234238615404935.Spec : Prop :=
  ∀ n, P4234238615404935.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P13177950877072742240

`filter[A302574(n+1), A008966(#)]`
-/

namespace A249242.P13177950877072742240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A249242.P13177950877072742240

namespace A249242

/-- `filter[A302574(n+1), A008966(#)]` -/
def P13177950877072742240.Spec : Prop :=
  ∀ n, P13177950877072742240.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P1072947971439864743

`filter[A357696(n+1), A008966(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A249242

/-- `filter[A357696(n+1), A008966(#)]` -/
def P1072947971439864743.Spec : Prop :=
  ∀ n, P1072947971439864743.a n = A249242 (n + 1)

theorem P1072947971439864743.correct : P1072947971439864743.Spec := by
  intro n
  simp only [A249242, Nat.add_sub_cancel]

end A249242

/-! ## A249242.P1880961326809976872

`filter[A372299(n+1), A008966(#)]`
-/

namespace A249242.P1880961326809976872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A249242.P1880961326809976872

namespace A249242

/-- `filter[A372299(n+1), A008966(#)]` -/
def P1880961326809976872.Spec : Prop :=
  ∀ n, P1880961326809976872.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P11669218396324142657

`filter[A387712(n+1), A008966(#)]`
-/

namespace A249242.P11669218396324142657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A249242.P11669218396324142657

namespace A249242

/-- `filter[A387712(n+1), A008966(#)]` -/
def P11669218396324142657.Spec : Prop :=
  ∀ n, P11669218396324142657.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P7869862728937999401

`filter[A091191(n+1), A354819(#)]`
-/

namespace A249242.P7869862728937999401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A249242.P7869862728937999401

namespace A249242

/-- `filter[A091191(n+1), A354819(#)]` -/
def P7869862728937999401.Spec : Prop :=
  ∀ n, P7869862728937999401.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P17085815947112943185

`filter[A302574(n+1), A354353(#)]`
-/

namespace A249242.P17085815947112943185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A249242.P17085815947112943185

namespace A249242

/-- `filter[A302574(n+1), A354353(#)]` -/
def P17085815947112943185.Spec : Prop :=
  ∀ n, P17085815947112943185.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P1000391897162176427

`filter[A302574(n+1), A354819(#)]`
-/

namespace A249242.P1000391897162176427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A249242.P1000391897162176427

namespace A249242

/-- `filter[A302574(n+1), A354819(#)]` -/
def P1000391897162176427.Spec : Prop :=
  ∀ n, P1000391897162176427.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P7135842939921892265

`filter[A357696(n+1), A354819(#)]`
-/

namespace A249242.P7135842939921892265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A249242.P7135842939921892265

namespace A249242

/-- `filter[A357696(n+1), A354819(#)]` -/
def P7135842939921892265.Spec : Prop :=
  ∀ n, P7135842939921892265.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P14573697427297884887

`filter[A357696(n+1), A359473(#)]`
-/

namespace A249242.P14573697427297884887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A249242.P14573697427297884887

namespace A249242

/-- `filter[A357696(n+1), A359473(#)]` -/
def P14573697427297884887.Spec : Prop :=
  ∀ n, P14573697427297884887.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P15379980837776237256

`filter[A372299(n+1), A354353(#)]`
-/

namespace A249242.P15379980837776237256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A249242.P15379980837776237256

namespace A249242

/-- `filter[A372299(n+1), A354353(#)]` -/
def P15379980837776237256.Spec : Prop :=
  ∀ n, P15379980837776237256.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P16622564359517785434

`filter[A372299(n+1), A354819(#)]`
-/

namespace A249242.P16622564359517785434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A249242.P16622564359517785434

namespace A249242

/-- `filter[A372299(n+1), A354819(#)]` -/
def P16622564359517785434.Spec : Prop :=
  ∀ n, P16622564359517785434.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P17162550057862985803

`filter[A387712(n+1), A354819(#)]`
-/

namespace A249242.P17162550057862985803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A249242.P17162550057862985803

namespace A249242

/-- `filter[A387712(n+1), A354819(#)]` -/
def P17162550057862985803.Spec : Prop :=
  ∀ n, P17162550057862985803.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P2610869712830147819

`filter[A387712(n+3), A359834(#)]`
-/

namespace A249242.P2610869712830147819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387712 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A249242.P2610869712830147819

namespace A249242

/-- `filter[A387712(n+3), A359834(#)]` -/
def P2610869712830147819.Spec : Prop :=
  ∀ n, P2610869712830147819.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P14785825283655173140

`filter[A034683(n+1), A294930(#)]`
-/

namespace A249242.P14785825283655173140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A249242.P14785825283655173140

namespace A249242

/-- `filter[A034683(n+1), A294930(#)]` -/
def P14785825283655173140.Spec : Prop :=
  ∀ n, P14785825283655173140.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P9783956233856449453

`filter[A087248(n+1), A294930(#)]`
-/

namespace A249242.P9783956233856449453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A249242.P9783956233856449453

namespace A249242

/-- `filter[A087248(n+1), A294930(#)]` -/
def P9783956233856449453.Spec : Prop :=
  ∀ n, P9783956233856449453.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P14033451525001404466

`filter[A290466(n+1), A294930(#)]`
-/

namespace A249242.P14033451525001404466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A249242.P14033451525001404466

namespace A249242

/-- `filter[A290466(n+1), A294930(#)]` -/
def P14033451525001404466.Spec : Prop :=
  ∀ n, P14033451525001404466.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P14869252194586317994

`filter[A302574(n+1), A294930(#)]`
-/

namespace A249242.P14869252194586317994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A249242.P14869252194586317994

namespace A249242

/-- `filter[A302574(n+1), A294930(#)]` -/
def P14869252194586317994.Spec : Prop :=
  ∀ n, P14869252194586317994.a n = A249242 (n + 1)

end A249242

/-!
# A249243: Floor(1/((1 + 1/n)^(n + 1)) - e).

The programs for A249243, there is no canonical definition to state claims against.
-/

/-! ## A249243.P3135431130625339479

`∑[char[A249245(n+1)]]`
-/

namespace A249243.P3135431130625339479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249245 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249243.P3135431130625339479

/-! ## A249243.P272560330111672603

`A247784(n+1)-A249245(A247784(n+1))+n`
-/

namespace A249243.P272560330111672603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (n + 1) - A249245 (A247784 (n + 1)).toNat + (n : ℤ)

end

end A249243.P272560330111672603

/-! ## A249243.P7729727502496667330

`A054404(2*(n+2))-A032742(A067377(3*n+2))`
-/

namespace A249243.P7729727502496667330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * (n + 2)) - A032742 (A067377 (3 * n + 2)).toNat

end

end A249243.P7729727502496667330

/-! ## A249243.P7789759106807270834

`A003056(C(A054404(2*(n+2)), 2))`
-/

namespace A249243.P7789759106807270834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A054404 (2 * (n + 2))).toNat 2)

end

end A249243.P7789759106807270834

/-! ## A249243.P8684588106292527161

`A004481(C(A054404(2*(n+2)), 2))`
-/

namespace A249243.P8684588106292527161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (Nat.choose (A054404 (2 * (n + 2))).toNat 2)

end

end A249243.P8684588106292527161

/-! ## A249243.P17712231517292203079

`A057428(A055456(n+1))+A054404(2*n+4)`
-/

namespace A249243.P17712231517292203079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A055456 (n + 1)).toNat + A054404 (2 * n + 4)

end

end A249243.P17712231517292203079

/-! ## A249243.P11419739509091766243

`A054404(2*(n+2))-A057427(A095114(2*(n+1)))`
-/

namespace A249243.P11419739509091766243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * (n + 2)) - A057427 (A095114 (2 * (n + 1))).toNat

end

end A249243.P11419739509091766243

/-! ## A249243.P994224617634994229

`A054404(2*(n+2))-A225640(A056191(5*n+4))`
-/

namespace A249243.P994224617634994229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * (n + 2)) - A225640 (A056191 (5 * n + 4)).toNat

end

end A249243.P994224617634994229

/-! ## A249243.P1449705909061856930

`A054404(2*(n+2))-A008683(A323503(n))²`
-/

namespace A249243.P1449705909061856930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * (n + 2)) - A008683 (A323503 n).toNat ^ 2

end

end A249243.P1449705909061856930

/-! ## A249243.P8951702561548147254

`A054404(2*(n+2))-A097325(A182047(n)-2*n)`
-/

namespace A249243.P8951702561548147254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * (n + 2)) - A097325 (A182047 n - (2 * n : ℤ)).toNat

end

end A249243.P8951702561548147254

/-! ## A249243.P18361337810291484798

`A054404(2*(n+2))-A069157(A139841(n+1))`
-/

namespace A249243.P18361337810291484798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * (n + 2)) - A069157 (A139841 (n + 1)).toNat

end

end A249243.P18361337810291484798

/-! ## A249243.P5202516175254406472

`A054404(2*(n+2))-A035263(A008749(4*n+3))`
-/

namespace A249243.P5202516175254406472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * (n + 2)) - A035263 (A008749 (4 * n + 3)).toNat

end

end A249243.P5202516175254406472

/-!
# A249244: Numbers k such that A249243(k+1) = A249243(k).

The programs for A249244, there is no canonical definition to state claims against.
-/

/-! ## A249244.P2580788743327908342

`A249243(A247785(n+1)+2)+n+1`
-/

namespace A249244.P2580788743327908342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249243 (A247785 (n + 1) + 2).toNat + (n + 1 : ℤ)

end

end A249244.P2580788743327908342

/-! ## A249244.P10170575954028093295

`A247786(A249243(A247785(n+1)+2))`
-/

namespace A249244.P10170575954028093295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247786 (A249243 (A247785 (n + 1) + 2).toNat).toNat

end

end A249244.P10170575954028093295

/-! ## A249244.P5221167251681846607

`A038124(A322131(n+1))`
-/

namespace A249244.P5221167251681846607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038124 (A322131 (n + 1)).toNat

end

end A249244.P5221167251681846607

/-! ## A249244.P16234451041323015737

`A038124(A323288(n+1))`
-/

namespace A249244.P16234451041323015737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038124 (A323288 (n + 1)).toNat

end

end A249244.P16234451041323015737

/-!
# A249245: Numbers k such that A249243(k+1) = A249243(k) + 1.

The programs for A249245, there is no canonical definition to state claims against.
-/

/-! ## A249245.P11700025960609606641

`A247778(n+1)-A249243(A247778(n+1))+n`
-/

namespace A249245.P11700025960609606641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1) - A249243 (A247778 (n + 1)).toNat + (n : ℤ)

end

end A249245.P11700025960609606641

/-! ## A249245.P8135902418307378629

`A247786(n+1)-A249243(A247786(n+1))+n`
-/

namespace A249245.P8135902418307378629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247786 (n + 1) - A249243 (A247786 (n + 1)).toNat + (n : ℤ)

end

end A249245.P8135902418307378629

/-! ## A249245.P1815844563318432958

`A000196(∑[A016777(n)+A005229(n+1)])`
-/

namespace A249245.P1815844563318432958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A005229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249245.P1815844563318432958

/-!
# A249246: Start with a single equilateral triangle for n=0; for the odd n-th generation add a triangle at each expandable side of the triangles of the (n-1)-th generation (this is the "vertex to side" version); for the even n-th generation use the "vertex to vertex" version; a(n) is the number of triangles in the n-th generation.

The programs for A249246, there is no canonical definition to state claims against.
-/

/-! ## A249246.P11445378223942105472

`A096894(A248969(n))`
-/

namespace A249246.P11445378223942105472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096894 (A248969 n).toNat

end

end A249246.P11445378223942105472

/-!
# A249247: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249247, there is no canonical definition to state claims against.
-/

/-! ## A249247.P11920714463494053875

`A155856(record[A347528(n+1)-A343935(n+1)])`
-/

namespace A249247.P11920714463494053875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347528 (n + 1) - A343935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155856 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249247.P11920714463494053875

/-! ## A249247.P2103109960998364965

`A155856(comp[A190744(3*n+5)-A001597(2*n+3)])`
-/

namespace A249247.P2103109960998364965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190744 (3 * n + 5) - A001597 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155856 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A249247.P2103109960998364965

/-!
# A249249: Total number of occurrences of the consecutive step pattern given by the binary expansion of n (where 1=up and 0=down) in all permutations of [n].

The programs for A249249, there is no canonical definition to state claims against.
-/

/-! ## A249249.P17193790778622958982

`A097098(Δ[A147655(n)])`
-/

namespace A249249.P17193790778622958982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097098 (f1 (n + 1) - f1 n).toNat

end

end A249249.P17193790778622958982

/-! ## A249249.P5336466346869291336

`∑[A126016(n+1)%A306356(n)]`
-/

namespace A249249.P5336466346869291336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126016 (n + 1)) (A306356 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249249.P5336466346869291336

/-! ## A249249.P10372086425401866418

`A065719(A000670(n)*A365312(n))`
-/

namespace A249249.P10372086425401866418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A000670 n * A365312 n).toNat

end

end A249249.P10372086425401866418

/-!
# A249250: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249250, there is no canonical definition to state claims against.
-/

/-! ## A249250.P10036823079148551915

`A122016(A099375(n)+1+n)`
-/

namespace A249250.P10036823079148551915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122016 (A099375 n + 1 + (n : ℤ)).toNat

end

end A249250.P10036823079148551915

/-! ## A249250.P1853446183269199794

`A122016(A014132(A038722(n+1)))`
-/

namespace A249250.P1853446183269199794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122016 (A014132 (A038722 (n + 1)).toNat).toNat

end

end A249250.P1853446183269199794

/-! ## A249250.P6717151062758871103

`A122016(A114327(n)+A014132(n+1))`
-/

namespace A249250.P6717151062758871103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122016 (A114327 n + A014132 (n + 1)).toNat

end

end A249250.P6717151062758871103

/-! ## A249250.P15295933783434894031

`A122016(A038722(n+1)+A002024(n+1))`
-/

namespace A249250.P15295933783434894031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122016 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A249250.P15295933783434894031

/-! ## A249250.P6852162399496842403

`A122016(A002024(n+1)+A002024(n+1)²-n)`
-/

namespace A249250.P6852162399496842403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122016 (A002024 (n + 1) + (A002024 (n + 1) ^ 2 - (n : ℤ))).toNat

end

end A249250.P6852162399496842403

/-!
# A249251: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249251, there is no canonical definition to state claims against.
-/

/-! ## A249251.P6910578690307594374

`A116412(A061579(n))`
-/

namespace A249251.P6910578690307594374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116412 (A061579 n).toNat

end

end A249251.P6910578690307594374

/-! ## A249251.P3093227013954403534

`A116412(A114327(n)+n)`
-/

namespace A249251.P3093227013954403534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116412 (A114327 n + (n : ℤ)).toNat

end

end A249251.P3093227013954403534

/-! ## A249251.P15025447343979636808

`A116412(∑[A198954(n)-1])`
-/

namespace A249251.P15025447343979636808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116412 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249251.P15025447343979636808

/-! ## A249251.P11410214208774315058

`A116412(A038722(n+1)-1)`
-/

namespace A249251.P11410214208774315058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116412 (A038722 (n + 1) - 1).toNat

end

end A249251.P11410214208774315058

/-! ## A249251.P1596654415280711658

`A116412(A002024(n+1)²-(n+1))`
-/

namespace A249251.P1596654415280711658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116412 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A249251.P1596654415280711658

/-! ## A249251.P5665871440520975839

`A116412(∑[2*n]%A014132(n+1))`
-/

namespace A249251.P5665871440520975839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116412 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A014132 (n + 1))).toNat

end

end A249251.P5665871440520975839

/-!
# A249252: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249252, there is no canonical definition to state claims against.
-/

/-! ## A249252.P10988775486435734646

`A035607(n)*A059268(n)`
-/

namespace A249252.P10988775486435734646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n * A059268 n

end

end A249252.P10988775486435734646

/-! ## A249252.P16489259935644044850

`A000079(A002262(n))*A035607(n)`
-/

namespace A249252.P16489259935644044850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A035607 n

end

end A249252.P16489259935644044850

/-! ## A249252.P8163211665308409738

`A013620(A112367(n))*A035607(n)`
-/

namespace A249252.P8163211665308409738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A112367 n).toNat * A035607 n

end

end A249252.P8163211665308409738

/-! ## A249252.P17953596932640779259

`A035607(n)*A130321(A061579(n))`
-/

namespace A249252.P17953596932640779259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n * A130321 (A061579 n).toNat

end

end A249252.P17953596932640779259

/-! ## A249252.P17848757379568157329

`A059268(n)*A113413(A061579(n))`
-/

namespace A249252.P17848757379568157329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A113413 (A061579 n).toNat

end

end A249252.P17848757379568157329

/-! ## A249252.P15793791678222448471

`A011782(A002260(n+1))*A035607(n)`
-/

namespace A249252.P15793791678222448471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A035607 n

end

end A249252.P15793791678222448471

/-!
# A249254: Number of length n+6 0..7 arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249254, there is no canonical definition to state claims against.
-/

/-! ## A249254.P9190938831731324027

`A249255(eq[6, A193592(n)])`
-/

namespace A249254.P9190938831731324027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249254.P9190938831731324027

/-! ## A249254.P7930912918499086954

`A249255(A155212(n+3)+2)`
-/

namespace A249254.P7930912918499086954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A155212 (n + 3) + 2).toNat

end

end A249254.P7930912918499086954

/-! ## A249254.P8638230552660826462

`A249255(A027379(n+5)-3)`
-/

namespace A249254.P8638230552660826462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A027379 (n + 5) - 3).toNat

end

end A249254.P8638230552660826462

/-! ## A249254.P3161709507786830645

`A249255(A000096(n+6)-5)`
-/

namespace A249254.P3161709507786830645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A000096 (n + 6) - 5).toNat

end

end A249254.P3161709507786830645

/-! ## A249254.P13183687048247684483

`A249255(A000124(n+7)-7)`
-/

namespace A249254.P13183687048247684483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A000124 (n + 7) - 7).toNat

end

end A249254.P13183687048247684483

/-!
# A249255: T(n,k)=Number of length n+6 0..k arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249255, there is no canonical definition to state claims against.
-/

/-! ## A249255.P6140021425414690308

`A249256(A004736(n+1)^A322356(n+1))`
-/

namespace A249255.P6140021425414690308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249256 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A322356 (n + 1) : ℤ))).toNat

end

end A249255.P6140021425414690308

/-! ## A249255.P11051087895317877917

`A249256(A004736(n+1)%A051419(n+1))`
-/

namespace A249255.P11051087895317877917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249256 (Int.tmod (A004736 (n + 1)) (A051419 (n + 1))).toNat

end

end A249255.P11051087895317877917

/-! ## A249255.P17911666589702391018

`A249256(A004736(n+1))%A156117(n+1)`
-/

namespace A249255.P17911666589702391018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249256 (A004736 (n + 1)).toNat) (A156117 (n + 1))

end

end A249255.P17911666589702391018

/-! ## A249255.P15477172681423423078

`A010873(A087691(n+1))*A249256(A004736(n+1))`
-/

namespace A249255.P15477172681423423078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A087691 (n + 1)).toNat * A249256 (A004736 (n + 1)).toNat

end

end A249255.P15477172681423423078

/-! ## A249255.P15890321545377221852

`A249256(A167289(n+1)%A249214(n+1))`
-/

namespace A249255.P15890321545377221852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249256 (Int.tmod (A167289 (n + 1)) (A249214 (n + 1))).toNat

end

end A249255.P15890321545377221852

/-!
# A249256: Number of length 1+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249256, there is no canonical definition to state claims against.
-/

/-! ## A249256.P10085324715379400041

`(n+2)^7-A249213(n+1)`
-/

namespace A249256.P10085324715379400041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A249213 (n + 1)

end

end A249256.P10085324715379400041

/-! ## A249256.P4641254078955292906

`A249172(n+1)+A249198(n+1)-A249213(n+1)`
-/

namespace A249256.P4641254078955292906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249172 (n + 1) + (A249198 (n + 1) - A249213 (n + 1))

end

end A249256.P4641254078955292906

/-! ## A249256.P1224957717890928238

`A249255(∑[n]+1)`
-/

namespace A249256.P1224957717890928238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249256.P1224957717890928238

/-! ## A249256.P10222490756643997541

`record[A249255(A106247(n))]`
-/

namespace A249256.P10222490756643997541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249256.P10222490756643997541

/-! ## A249256.P12297616865778652656

`record[A249255(A114091(n+1))]`
-/

namespace A249256.P12297616865778652656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249256.P12297616865778652656

/-!
# A249257: Number of length 2+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249257, there is no canonical definition to state claims against.
-/

/-! ## A249257.P6058133828033905527

`A249214(n+1)%(A249213(n+1)-A249256(n+1))`
-/

namespace A249257.P6058133828033905527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249214 (n + 1)) (A249213 (n + 1) - A249256 (n + 1))

end

end A249257.P6058133828033905527

/-! ## A249257.P8502241332878171576

`A249255(∑[n+1]+2)`
-/

namespace A249257.P8502241332878171576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249257.P8502241332878171576

/-! ## A249257.P2008087844417203669

`record[A249255(A022856(n+1))]`
-/

namespace A249257.P2008087844417203669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249257.P2008087844417203669

/-! ## A249257.P2898187081960125575

`record[A249255(A016028(n+2)-1)]`
-/

namespace A249257.P2898187081960125575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A016028 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249257.P2898187081960125575

/-! ## A249257.P2499406896045408567

`record[A249255(A249725(2*(n+1)))]`
-/

namespace A249257.P2499406896045408567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A249725 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249257.P2499406896045408567

/-!
# A249258: Number of length 3+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249258, there is no canonical definition to state claims against.
-/

/-! ## A249258.P13957839773044321216

`A249255(∑[n+2]+4)`
-/

namespace A249258.P13957839773044321216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249258.P13957839773044321216

/-! ## A249258.P12608667817933548116

`record[A249255(A016028(n+1))]`
-/

namespace A249258.P12608667817933548116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A016028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249258.P12608667817933548116

/-! ## A249258.P8381497851115895038

`record[A249255(A249725(n+1)+2)]`
-/

namespace A249258.P8381497851115895038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A249725 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249258.P8381497851115895038

/-! ## A249258.P1115689457169615748

`A249255(A167614(n+1))+char[23]`
-/

namespace A249258.P1115689457169615748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A249258.P1115689457169615748

/-! ## A249258.P13092699217431585547

`record[A249255(A022856(n+2)+n)]`
-/

namespace A249258.P13092699217431585547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A022856 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249258.P13092699217431585547

/-!
# A249259: Number of length 4+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249259, there is no canonical definition to state claims against.
-/

/-! ## A249259.P4750755075341731645

`A249255(∑[n+3]+7)`
-/

namespace A249259.P4750755075341731645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249259.P4750755075341731645

/-! ## A249259.P2524059396796155016

`record[A249255(A077169(n)-n)]`
-/

namespace A249259.P2524059396796155016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A077169 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249259.P2524059396796155016

/-! ## A249259.P14548756316000906581

`A249255(A052905(n)+9)+char[25]`
-/

namespace A249259.P14548756316000906581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A249259.P14548756316000906581

/-! ## A249259.P12295614186055353627

`A007318(C(n, 2))*A249255(A052905(n)+9)`
-/

namespace A249259.P12295614186055353627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A249255 (A052905 n + 9).toNat

end

end A249259.P12295614186055353627

/-!
# A249260: Number of length 5+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249260, there is no canonical definition to state claims against.
-/

/-! ## A249260.P7429513248794355294

`record[A249255(A077169(n))]`
-/

namespace A249260.P7429513248794355294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249260.P7429513248794355294

/-! ## A249260.P13317306418711730481

`A249255(A167499(n+3))`
-/

namespace A249260.P13317306418711730481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A167499 (n + 3)).toNat

end

end A249260.P13317306418711730481

/-! ## A249260.P5946736553753649229

`A249255(A155212(n)+13)`
-/

namespace A249260.P5946736553753649229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A155212 n + 13).toNat

end

end A249260.P5946736553753649229

/-! ## A249260.P1610731276765545760

`A249255(A056000(n)+15)`
-/

namespace A249260.P1610731276765545760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A056000 n + 15).toNat

end

end A249260.P1610731276765545760

/-! ## A249260.P11294626699750222696

`A249255(A167614(n+3)+2)`
-/

namespace A249260.P11294626699750222696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A167614 (n + 3) + 2).toNat

end

end A249260.P11294626699750222696

/-!
# A249261: Number of length 6+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249261, there is no canonical definition to state claims against.
-/

/-! ## A249261.P16036976053879766435

`A249255(A056115(n)+21)`
-/

namespace A249261.P16036976053879766435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A056115 n + 21).toNat

end

end A249261.P16036976053879766435

/-! ## A249261.P368496266949826415

`A249255(eq[6, A256910(n)])`
-/

namespace A249261.P368496266949826415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249261.P368496266949826415

/-! ## A249261.P7889608859473618442

`A249255(∑[A020710(n)]+16)`
-/

namespace A249261.P7889608859473618442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A249261.P7889608859473618442

/-! ## A249261.P17279835227677387327

`A249255(A167499(n+4)+1)`
-/

namespace A249261.P17279835227677387327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A167499 (n + 4) + 1).toNat

end

end A249261.P17279835227677387327

/-! ## A249261.P3349708988330093436

`A249255(A167487(n+4)-1)`
-/

namespace A249261.P3349708988330093436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A167487 (n + 4) - 1).toNat

end

end A249261.P3349708988330093436

/-!
# A249262: Number of length 7+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249262, there is no canonical definition to state claims against.
-/

/-! ## A249262.P10100716713766503722

`A249255(A167487(n+5))`
-/

namespace A249262.P10100716713766503722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A167487 (n + 5)).toNat

end

end A249262.P10100716713766503722

/-! ## A249262.P15627172053862898030

`A249255(A167499(n+5)+2)`
-/

namespace A249262.P15627172053862898030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A167499 (n + 5) + 2).toNat

end

end A249262.P15627172053862898030

/-! ## A249262.P8414662647398104742

`A249255(A077169(n+7)+2)`
-/

namespace A249262.P8414662647398104742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A077169 (n + 7) + 2).toNat

end

end A249262.P8414662647398104742

/-! ## A249262.P2720605851368110855

`A249255(A000124(n+6)+6)`
-/

namespace A249262.P2720605851368110855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A000124 (n + 6) + 6).toNat

end

end A249262.P2720605851368110855

/-! ## A249262.P6851930458753571580

`A249255(A000096(n+5)+8)`
-/

namespace A249262.P6851930458753571580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A000096 (n + 5) + 8).toNat

end

end A249262.P6851930458753571580

/-!
# A249263: 

The programs for A249263, there is no canonical definition to state claims against.
-/

/-! ## A249263.P3360288797649590393

`∩[A006038(n+1), A298973(n+1)]`
-/

namespace A249263.P3360288797649590393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P3360288797649590393

/-! ## A249263.P12185251806652177877

`∩[A006038(n+1), A360526(n+1)]`
-/

namespace A249263.P12185251806652177877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P12185251806652177877

/-! ## A249263.P15631190897874397678

`∩[A298973(n+1), A360526(n+1)]`
-/

namespace A249263.P15631190897874397678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P15631190897874397678

/-! ## A249263.P4277781039811373835

`∩[A006038(n+1), A339938(n+1)]`
-/

namespace A249263.P4277781039811373835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P4277781039811373835

/-! ## A249263.P10498278278580373859

`∩[A298973(n+1), A339938(n+1)]`
-/

namespace A249263.P10498278278580373859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P10498278278580373859

/-! ## A249263.P10336223791576907215

`∩[A006038(n+1), A302573(n+1)]`
-/

namespace A249263.P10336223791576907215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P10336223791576907215

/-! ## A249263.P17147948265805636435

`∩[A112643(n+1), A302573(n+1)]`
-/

namespace A249263.P17147948265805636435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P17147948265805636435

/-! ## A249263.P15123329232897024055

`∩[A006038(n+1), A348605(n+1)]`
-/

namespace A249263.P15123329232897024055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P15123329232897024055

/-! ## A249263.P1903495763422855148

`∩[A298973(n+1), A348605(n+1)]`
-/

namespace A249263.P1903495763422855148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P1903495763422855148

/-! ## A249263.P1546655831012782549

`∩[A127666(n+1), A298973(n+1)]`
-/

namespace A249263.P1546655831012782549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P1546655831012782549

/-! ## A249263.P1265100275688535464

`∩[A298973(n+1), A381547(n+1)]`
-/

namespace A249263.P1265100275688535464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P1265100275688535464

/-! ## A249263.P14606437510158335992

`∩[A112643(n+1), A372298(n+1)]`
-/

namespace A249263.P14606437510158335992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P14606437510158335992

/-! ## A249263.P947629912310530249

`∩[A293186(n+1), A298973(n+1)]`
-/

namespace A249263.P947629912310530249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P947629912310530249

/-! ## A249263.P3244395407351324172

`∩[A006039(n+1), A112643(n+1)]`
-/

namespace A249263.P3244395407351324172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P3244395407351324172

/-! ## A249263.P17445487055367690448

`∩[A006039(n+1), A129485(n+1)]`
-/

namespace A249263.P17445487055367690448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P17445487055367690448

/-! ## A249263.P17217083439615370780

`∩[A071395(n+1), A112643(n+1)]`
-/

namespace A249263.P17217083439615370780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P17217083439615370780

/-! ## A249263.P1009402222035178708

`∩[A071395(n+1), A129485(n+1)]`
-/

namespace A249263.P1009402222035178708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P1009402222035178708

/-! ## A249263.P11965721749822705821

`∩[A006039(n+1), A339938(n+1)]`
-/

namespace A249263.P11965721749822705821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P11965721749822705821

/-! ## A249263.P4298100847398339946

`∩[A006039(n+1), A348605(n+1)]`
-/

namespace A249263.P4298100847398339946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P4298100847398339946

/-! ## A249263.P11026969007370134456

`∩[A006039(n+1), A360526(n+1)]`
-/

namespace A249263.P11026969007370134456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P11026969007370134456

/-!
# A249264: Sequence of distinct least nonnegative numbers such that the average of the first n terms is a triangular number.

The programs for A249264, there is no canonical definition to state claims against.
-/

/-! ## A249264.P7805719225405951737

`Δ[A056926(((or(1, n)²-1)*n/8)²)]`
-/

namespace A249264.P7805719225405951737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway ((((Nat.lor 1 n ^ 2 : ℤ) - 1 : ℚ) * ((n : ℚ) / 8)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249264.P7805719225405951737

/-! ## A249264.P7999502608499091259

`Δ[A262689(((or(1, n)²-1)*n/8)²)]`
-/

namespace A249264.P7999502608499091259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.roundAway ((((Nat.lor 1 n ^ 2 : ℤ) - 1 : ℚ) * ((n : ℚ) / 8)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249264.P7999502608499091259

/-! ## A249264.P4882773555011735138

`Δ[A056926((n*∑[n-lcm(2, n)/2])²)]`
-/

namespace A249264.P4882773555011735138
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.lcm 2 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway (((n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249264.P4882773555011735138

/-! ## A249264.P16248225673748532997

`Δ[A056926((n/2*∑[n%or(1, n)])²)]`
-/

namespace A249264.P16248225673748532997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway (((n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249264.P16248225673748532997

/-! ## A249264.P16019958855677295027

`Δ[((or(1, n)²-1)*n/8)%A003111(n)]`
-/

namespace A249264.P16019958855677295027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((Nat.lor 1 n ^ 2 : ℤ) - 1 : ℚ) * ((n : ℚ) / 8))) (A003111 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249264.P16019958855677295027

/-!
# A249275: a(n) is the smallest b > 1 such that p = prime(n) satisfies b^(p-1) == 1 (mod p^3).

The programs for A249275, there is no canonical definition to state claims against.
-/

/-! ## A249275.P11530873916233534722

`A257833(∑[n+1]+3)`
-/

namespace A249275.P11530873916233534722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A249275.P11530873916233534722

/-! ## A249275.P1536892635090753204

`A105222(A030078(n+1))`
-/

namespace A249275.P1536892635090753204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A030078 (n + 1)).toNat

end

end A249275.P1536892635090753204

/-! ## A249275.P14340083979111202393

`A105222(A051751(n+1))`
-/

namespace A249275.P14340083979111202393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A051751 (n + 1)).toNat

end

end A249275.P14340083979111202393

/-! ## A249275.P9689010256621902132

`A105222(Δ[A007504(n)]^3)`
-/

namespace A249275.P9689010256621902132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 ((f1 (n + 1) - f1 n) ^ 3).toNat

end

end A249275.P9689010256621902132

/-!
# A249277: Denominators of fractions appearing in a generalization of Carleman's inequality.

The programs for A249277, there is no canonical definition to state claims against.
-/

/-! ## A249277.P6028907817804299093

`A000027(A272109(n)/2^n)`
-/

namespace A249277.P6028907817804299093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A272109 n : ℚ) / (2 ^ n : ℚ))).toNat

end

end A249277.P6028907817804299093

/-! ## A249277.P13719376423437524159

`A028310(A272109(n)/2^n)`
-/

namespace A249277.P13719376423437524159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A272109 n : ℚ) / (2 ^ n : ℚ))).toNat

end

end A249277.P13719376423437524159

/-!
# A249284: Number of length n+3 0..2 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249284, there is no canonical definition to state claims against.
-/

/-! ## A249284.P12621947588155086473

`A249290(∑[n+2])`
-/

namespace A249284.P12621947588155086473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249284.P12621947588155086473

/-! ## A249284.P15267356731133168408

`record[A249290(A101881(n)+1)]`
-/

namespace A249284.P15267356731133168408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249284.P15267356731133168408

/-! ## A249284.P10701823599628221550

`record[A249290(A117142(n+2))]`
-/

namespace A249284.P10701823599628221550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249284.P10701823599628221550

/-! ## A249284.P1653576716474014684

`record[A249290(A000096(A134478(n)))]`
-/

namespace A249284.P1653576716474014684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249284.P1653576716474014684

/-! ## A249284.P8429700368481628337

`record[A249290(A000096(A344180(n)))]`
-/

namespace A249284.P8429700368481628337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249284.P8429700368481628337

/-! ## A249284.P11240583814532579714

`record[A249290(A061579(A257506(n+1)))]`
-/

namespace A249284.P11240583814532579714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A061579 (A257506 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249284.P11240583814532579714

/-!
# A249285: Number of length n+3 0..3 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249285, there is no canonical definition to state claims against.
-/

/-! ## A249285.P4872686388552716205

`A249290(∑[n+3]+1)`
-/

namespace A249285.P4872686388552716205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249285.P4872686388552716205

/-! ## A249285.P7010484410468974201

`record[A249290(A101881(n+2))]`
-/

namespace A249285.P7010484410468974201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A101881 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249285.P7010484410468974201

/-! ## A249285.P3957892393830589488

`lcm(2, A249290(A034856(n+2)))`
-/

namespace A249285.P3957892393830589488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249290 (A034856 (n + 2)).toNat)

end

end A249285.P3957892393830589488

/-! ## A249285.P1134402996776409959

`A033999(n)²*A249290(A034856(n+2))`
-/

namespace A249285.P1134402996776409959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A249290 (A034856 (n + 2)).toNat

end

end A249285.P1134402996776409959

/-! ## A249285.P299179893857567980

`A249290(A034856(n+2))+A000035(2*n)`
-/

namespace A249285.P299179893857567980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A034856 (n + 2)).toNat + A000035 (2 * n)

end

end A249285.P299179893857567980

/-! ## A249285.P1892566196635963805

`A007318(C(2, n+2))*A249290(A034856(n+2))`
-/

namespace A249285.P1892566196635963805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A249290 (A034856 (n + 2)).toNat

end

end A249285.P1892566196635963805

/-! ## A249285.P6835805463979549294

`A007318(A000217(n))*A249290(A034856(n+2))`
-/

namespace A249285.P6835805463979549294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A249290 (A034856 (n + 2)).toNat

end

end A249285.P6835805463979549294

/-! ## A249285.P6300991540414861864

`A007318(A094497(n))*A249290(A034856(n+2))`
-/

namespace A249285.P6300991540414861864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A094497 n).toNat * A249290 (A034856 (n + 2)).toNat

end

end A249285.P6300991540414861864

/-! ## A249285.P9439472436468920206

`A007318(A014963(2*(n+1)))*A249290(A034856(n+2))`
-/

namespace A249285.P9439472436468920206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (2 * (n + 1))).toNat * A249290 (A034856 (n + 2)).toNat

end

end A249285.P9439472436468920206

/-!
# A249286: Number of length n+3 0..4 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249286, there is no canonical definition to state claims against.
-/

/-! ## A249286.P10742915702390468506

`A249290(A027379(n+2))`
-/

namespace A249286.P10742915702390468506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A027379 (n + 2)).toNat

end

end A249286.P10742915702390468506

/-! ## A249286.P18015039124720151466

`A249290(A155212(n)+5)`
-/

namespace A249286.P18015039124720151466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A155212 n + 5).toNat

end

end A249286.P18015039124720151466

/-! ## A249286.P17229958892076547849

`A249290(A052905(n+1)+2)`
-/

namespace A249286.P17229958892076547849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A052905 (n + 1) + 2).toNat

end

end A249286.P17229958892076547849

/-! ## A249286.P18245104114567572773

`A249290(A000217(n+4)-3)`
-/

namespace A249286.P18245104114567572773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000217 (n + 4) - 3).toNat

end

end A249286.P18245104114567572773

/-! ## A249286.P6694851917975130405

`A249290(A051936(n+4)+6)`
-/

namespace A249286.P6694851917975130405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A051936 (n + 4) + 6).toNat

end

end A249286.P6694851917975130405

/-! ## A249286.P10717739011440509809

`A249290(A167614(n+1)+A005408(n))`
-/

namespace A249286.P10717739011440509809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167614 (n + 1) + A005408 n).toNat

end

end A249286.P10717739011440509809

/-!
# A249287: Number of length n+3 0..5 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249287, there is no canonical definition to state claims against.
-/

/-! ## A249287.P3810321993375822755

`A249290(A046691(n+3))`
-/

namespace A249287.P3810321993375822755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A046691 (n + 3)).toNat

end

end A249287.P3810321993375822755

/-! ## A249287.P14641488640340550150

`A249290(Δ[A023545(n+1)])`
-/

namespace A249287.P14641488640340550150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (f1 (n + 1) - f1 n).toNat

end

end A249287.P14641488640340550150

/-! ## A249287.P6000633244664712255

`A249290(A052905(n+2)+1)`
-/

namespace A249287.P6000633244664712255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A052905 (n + 2) + 1).toNat

end

end A249287.P6000633244664712255

/-! ## A249287.P2593365298651264791

`A249290(A027379(n+3)-1)`
-/

namespace A249287.P2593365298651264791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A027379 (n + 3) - 1).toNat

end

end A249287.P2593365298651264791

/-! ## A249287.P13488716839089195872

`A249290(A000124(n+5)-5)`
-/

namespace A249287.P13488716839089195872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000124 (n + 5) - 5).toNat

end

end A249287.P13488716839089195872

/-! ## A249287.P9215274454746096930

`A249290(A103517(n+3)+A027379(n+1))`
-/

namespace A249287.P9215274454746096930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A103517 (n + 3) + A027379 (n + 1)).toNat

end

end A249287.P9215274454746096930

/-!
# A249288: Number of length n+3 0..6 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249288, there is no canonical definition to state claims against.
-/

/-! ## A249288.P2486342203306866190

`A249290(A052905(n+3))`
-/

namespace A249288.P2486342203306866190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A052905 (n + 3)).toNat

end

end A249288.P2486342203306866190

/-! ## A249288.P16213218238560698764

`A249290(A055999(n+3)+1)`
-/

namespace A249288.P16213218238560698764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A055999 (n + 3) + 1).toNat

end

end A249288.P16213218238560698764

/-! ## A249288.P3376104805799409510

`A249290(A155212(n+2)+3)`
-/

namespace A249288.P3376104805799409510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A155212 (n + 2) + 3).toNat

end

end A249288.P3376104805799409510

/-! ## A249288.P7143671496807692811

`A249290(A000124(n+6)-6)`
-/

namespace A249288.P7143671496807692811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000124 (n + 6) - 6).toNat

end

end A249288.P7143671496807692811

/-! ## A249288.P15999168009157857931

`A249290(A166136(n+5)-11)`
-/

namespace A249288.P15999168009157857931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A166136 (n + 5) - 11).toNat

end

end A249288.P15999168009157857931

/-! ## A249288.P10425284260767392088

`A249290(Δ[Δ[A006504(n+1)]])`
-/

namespace A249288.P10425284260767392088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (f1 (n + 1) - f1 n).toNat

end

end A249288.P10425284260767392088

/-! ## A249288.P16528385362734904901

`A249290(Δ[A023545(n+2)]-1)`
-/

namespace A249288.P16528385362734904901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (f1 (n + 1) - f1 n - 1).toNat

end

end A249288.P16528385362734904901

/-! ## A249288.P10270855258561180881

`A249290(A034856(n+4)+n+3)`
-/

namespace A249288.P10270855258561180881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A034856 (n + 4) + (n + 3 : ℤ)).toNat

end

end A249288.P10270855258561180881

/-! ## A249288.P10174306609055304887

`A249290(A167614(n+4)+n-2)`
-/

namespace A249288.P10174306609055304887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167614 (n + 4) + ((n : ℤ) - 2)).toNat

end

end A249288.P10174306609055304887

/-! ## A249288.P2139301842768775451

`A249290(A008486(2*n+5)+A000124(n))`
-/

namespace A249288.P2139301842768775451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A008486 (2 * n + 5) + A000124 n).toNat

end

end A249288.P2139301842768775451

/-!
# A249289: Number of length n+3 0..7 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249289, there is no canonical definition to state claims against.
-/

/-! ## A249289.P5673570752925201721

`A249290(A055999(n+4))`
-/

namespace A249289.P5673570752925201721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A055999 (n + 4)).toNat

end

end A249289.P5673570752925201721

/-! ## A249289.P6161273791482984809

`A249290(A046691(n+5)-2)`
-/

namespace A249289.P6161273791482984809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A046691 (n + 5) - 2).toNat

end

end A249289.P6161273791482984809

/-! ## A249289.P12177450222435587459

`A249290(A000096(n+6)-5)`
-/

namespace A249289.P12177450222435587459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000096 (n + 6) - 5).toNat

end

end A249289.P12177450222435587459

/-! ## A249289.P15953494051209442909

`A249290(A000124(n+7)-7)`
-/

namespace A249289.P15953494051209442909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000124 (n + 7) - 7).toNat

end

end A249289.P15953494051209442909

/-! ## A249289.P8442871518305088623

`A249290(A103517(n+4)+A027379(n+3))`
-/

namespace A249289.P8442871518305088623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A103517 (n + 4) + A027379 (n + 3)).toNat

end

end A249289.P8442871518305088623

/-!
# A249291: Number of length 1+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249291, the canonical program `A249291.P11440317869399723647` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249291 has offset 1).

The definition of A249291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249291.P11440317869399723647

`(n+2)^4-A248538(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A249291

/-- `(n+2)^4-A248538(n+1)` -/
def P11440317869399723647.Spec : Prop :=
  ∀ n, P11440317869399723647.a n = A249291 (n + 1)

theorem P11440317869399723647.correct : P11440317869399723647.Spec := by
  intro n
  simp only [A249291, Nat.add_sub_cancel]

end A249291

/-! ## A249291.P3743152347372146793

`A249290(∑[n]+1)`
-/

namespace A249291.P3743152347372146793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249291.P3743152347372146793

namespace A249291

/-- `A249290(∑[n]+1)` -/
def P3743152347372146793.Spec : Prop :=
  ∀ n, P3743152347372146793.a n = A249291 (n + 1)

end A249291

/-! ## A249291.P5753114680990921123

`lcm(2, A249290(A000124(n)))`
-/

namespace A249291.P5753114680990921123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249290 (A000124 n).toNat)

end

end A249291.P5753114680990921123

namespace A249291

/-- `lcm(2, A249290(A000124(n)))` -/
def P5753114680990921123.Spec : Prop :=
  ∀ n, (P5753114680990921123.a n : ℤ) = A249291 (n + 1)

end A249291

/-! ## A249291.P7759931738886871404

`or(A000038(n), A249290(A000124(n)))`
-/

namespace A249291.P7759931738886871404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A249290 (A000124 n).toNat)

end

end A249291.P7759931738886871404

namespace A249291

/-- `or(A000038(n), A249290(A000124(n)))` -/
def P7759931738886871404.Spec : Prop :=
  ∀ n, P7759931738886871404.a n = A249291 (n + 1)

end A249291

/-! ## A249291.P16481074994460832957

`A249290(A000124(n))%A223767(n+1)`
-/

namespace A249291.P16481074994460832957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249290 (A000124 n).toNat) (A223767 (n + 1))

end

end A249291.P16481074994460832957

namespace A249291

/-- `A249290(A000124(n))%A223767(n+1)` -/
def P16481074994460832957.Spec : Prop :=
  ∀ n, P16481074994460832957.a n = A249291 (n + 1)

end A249291

/-! ## A249291.P14641673358344362063

`A046741(A000217(n))*A249290(A000124(n))`
-/

namespace A249291.P14641673358344362063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000217 n).toNat * A249290 (A000124 n).toNat

end

end A249291.P14641673358344362063

namespace A249291

/-- `A046741(A000217(n))*A249290(A000124(n))` -/
def P14641673358344362063.Spec : Prop :=
  ∀ n, P14641673358344362063.a n = A249291 (n + 1)

end A249291

/-! ## A249291.P1420460182593036608

`record[A249290(n+1)/A299504(n)]`
-/

namespace A249291.P1420460182593036608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249290 (n + 1) : ℚ) / (A299504 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249291.P1420460182593036608

namespace A249291

/-- `record[A249290(n+1)/A299504(n)]` -/
def P1420460182593036608.Spec : Prop :=
  ∀ n, P1420460182593036608.a n = (A249291 (n + 1) : ℚ)

end A249291

/-!
# A249292: Number of length 2+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249292, there is no canonical definition to state claims against.
-/

/-! ## A249292.P2146913757705590574

`A249290(∑[n+1]+2)`
-/

namespace A249292.P2146913757705590574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249292.P2146913757705590574

/-! ## A249292.P16470710546723611721

`A087960(n)²*A249290(Δ[A000292(n)]+2)`
-/

namespace A249292.P16470710546723611721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A249290 (f1 (n + 1) - f1 n + 2).toNat

end

end A249292.P16470710546723611721

/-! ## A249292.P9207453323740395088

`A249290(Δ[A000292(n)]+2)+A000035(2*n)`
-/

namespace A249292.P9207453323740395088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (f1 (n + 1) - f1 n + 2).toNat + A000035 (2 * n)

end

end A249292.P9207453323740395088

/-! ## A249292.P3853156376675185170

`A000034(2*n)*A249290(Δ[A000292(n)]+2)`
-/

namespace A249292.P3853156376675185170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A249290 (f1 (n + 1) - f1 n + 2).toNat

end

end A249292.P3853156376675185170

/-! ## A249292.P14380645745512189702

`A249290(Δ[A000292(n)]+2)%A249297(n+1)`
-/

namespace A249292.P14380645745512189702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249290 (f1 (n + 1) - f1 n + 2).toNat) (A249297 (n + 1))

end

end A249292.P14380645745512189702

/-! ## A249292.P5405521149458443360

`A049347(3*(n+1))*A249290(Δ[A000292(n)]+2)`
-/

namespace A249292.P5405521149458443360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * (n + 1)) * A249290 (f1 (n + 1) - f1 n + 2).toNat

end

end A249292.P5405521149458443360

/-! ## A249292.P11423095035982796903

`A249290(Δ[A000292(n)]+2)+A110514(4*n+3)`
-/

namespace A249292.P11423095035982796903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (f1 (n + 1) - f1 n + 2).toNat + A110514 (4 * n + 3)

end

end A249292.P11423095035982796903

/-! ## A249292.P4054370452348381234

`A001222(A022893(n+1))*A249290(C(n+2, 2)+2)`
-/

namespace A249292.P4054370452348381234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A022893 (n + 1)).toNat * A249290 (Nat.choose (n + 2) 2 + 2)

end

end A249292.P4054370452348381234

/-!
# A249293: Number of length 3+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249293, there is no canonical definition to state claims against.
-/

/-! ## A249293.P18291304003572146728

`A249290(∑[n+2]+4)`
-/

namespace A249293.P18291304003572146728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249293.P18291304003572146728

/-! ## A249293.P7926909778426217001

`lcm(2, A249290(A167614(n+1)))`
-/

namespace A249293.P7926909778426217001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249290 (A167614 (n + 1)).toNat)

end

end A249293.P7926909778426217001

/-! ## A249293.P8431168933442329182

`A249290(A167614(n+1))%A016949(n)`
-/

namespace A249293.P8431168933442329182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249290 (A167614 (n + 1)).toNat) (A016949 n)

end

end A249293.P8431168933442329182

/-! ## A249293.P5489221342747623248

`A249290(A167614(n+1))+A000038(n+1)`
-/

namespace A249293.P5489221342747623248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A249293.P5489221342747623248

/-! ## A249293.P16940446553853444372

`∏{d}[n, A001221(#)]!*A249290(A167614(n+1))`
-/

namespace A249293.P16940446553853444372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∏ d ∈ Nat.divisors (f1 n), A001221 d).toNat : ℤ) * A249290 (A167614 (n + 1)).toNat

end

end A249293.P16940446553853444372

/-! ## A249293.P16312648182070193136

`A089052(and(2, n-1))*A249290(A167614(n+1))`
-/

namespace A249293.P16312648182070193136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (Int.land 2 ((n : ℤ) - 1)).toNat * A249290 (A167614 (n + 1)).toNat

end

end A249293.P16312648182070193136

/-! ## A249293.P9301969776581932739

`A093178(and(2, n-1))*A249290(A167614(n+1))`
-/

namespace A249293.P9301969776581932739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Int.land 2 ((n : ℤ) - 1)).toNat * A249290 (A167614 (n + 1)).toNat

end

end A249293.P9301969776581932739

/-! ## A249293.P851174377536266675

`A014963(42*(n+1))*A249290(A167614(n+1))`
-/

namespace A249293.P851174377536266675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (42 * (n + 1)) * A249290 (A167614 (n + 1)).toNat

end

end A249293.P851174377536266675

/-! ## A249293.P7447154542782003250

`A249290(A167614(n+1))+A000007(A341073(n))`
-/

namespace A249293.P7447154542782003250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167614 (n + 1)).toNat + A000007 (A341073 (n + 11)).toNat

end

end A249293.P7447154542782003250

/-! ## A249293.P13767947288144475530

`A093178(A315729(n))*A249290(A167614(n+1))`
-/

namespace A249293.P13767947288144475530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A315729 n).toNat * A249290 (A167614 (n + 1)).toNat

end

end A249293.P13767947288144475530

/-!
# A249294: Number of length 4+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249294, there is no canonical definition to state claims against.
-/

/-! ## A249294.P7538230776610004059

`A249290(A052905(n)+9)`
-/

namespace A249294.P7538230776610004059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A052905 n + 9).toNat

end

end A249294.P7538230776610004059

/-! ## A249294.P3475240513193926542

`A249290(A055999(n)+10)`
-/

namespace A249294.P3475240513193926542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A055999 n + 10).toNat

end

end A249294.P3475240513193926542

/-! ## A249294.P17405935895882393408

`A249290(A167614(n+2)+1)`
-/

namespace A249294.P17405935895882393408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167614 (n + 2) + 1).toNat

end

end A249294.P17405935895882393408

/-! ## A249294.P6058684861863461565

`A249290(A166136(n+2)-2)`
-/

namespace A249294.P6058684861863461565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A166136 (n + 2) - 2).toNat

end

end A249294.P6058684861863461565

/-! ## A249294.P15186585950621534755

`A249290(A167487(n+2)-3)`
-/

namespace A249294.P15186585950621534755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167487 (n + 2) - 3).toNat

end

end A249294.P15186585950621534755

/-! ## A249294.P2077079315790530272

`A249290(A000217(n+3)+4)`
-/

namespace A249294.P2077079315790530272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000217 (n + 3) + 4).toNat

end

end A249294.P2077079315790530272

/-! ## A249294.P1437546805512186044

`A249290(A008805(2*(n+2))+4)`
-/

namespace A249294.P1437546805512186044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A008805 (2 * (n + 2)) + 4).toNat

end

end A249294.P1437546805512186044

/-! ## A249294.P15849430508583056680

`A249290(A166136(n+1)+1+n)`
-/

namespace A249294.P15849430508583056680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A249294.P15849430508583056680

/-! ## A249294.P13419056560741561971

`A249290(Δ[A023545(n+1)-n²])`
-/

namespace A249294.P13419056560741561971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (f1 (n + 1) - f1 n).toNat

end

end A249294.P13419056560741561971

/-!
# A249295: Number of length 5+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249295, there is no canonical definition to state claims against.
-/

/-! ## A249295.P15240121889299495571

`A249290(A167499(n+3))`
-/

namespace A249295.P15240121889299495571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167499 (n + 3)).toNat

end

end A249295.P15240121889299495571

/-! ## A249295.P15295927147160732331

`A249290(A056000(n)+15)`
-/

namespace A249295.P15295927147160732331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A056000 n + 15).toNat

end

end A249295.P15295927147160732331

/-! ## A249295.P6859341586090454392

`A249290(A167614(n+3)+2)`
-/

namespace A249295.P6859341586090454392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167614 (n + 3) + 2).toNat

end

end A249295.P6859341586090454392

/-! ## A249295.P6471660135724321787

`A249290(A000124(n+4)+4)`
-/

namespace A249295.P6471660135724321787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000124 (n + 4) + 4).toNat

end

end A249295.P6471660135724321787

/-! ## A249295.P195110248250144807

`A249290(A000217(n+4)+5)`
-/

namespace A249295.P195110248250144807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000217 (n + 4) + 5).toNat

end

end A249295.P195110248250144807

/-! ## A249295.P17303220337314612599

`A249290(A115384(Δ[A026046(n+6)]))`
-/

namespace A249295.P17303220337314612599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A115384 (f1 (n + 1) - f1 n).toNat).toNat

end

end A249295.P17303220337314612599

/-!
# A249296: Number of length 6+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249296, there is no canonical definition to state claims against.
-/

/-! ## A249296.P16480983459221620629

`A249290(A167614(n+4)+3)`
-/

namespace A249296.P16480983459221620629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167614 (n + 4) + 3).toNat

end

end A249296.P16480983459221620629

/-! ## A249296.P8624506695527095038

`A249290(A000217(n+5)+6)`
-/

namespace A249296.P8624506695527095038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000217 (n + 5) + 6).toNat

end

end A249296.P8624506695527095038

/-! ## A249296.P4121401681230845287

`A249290(A000124(n+6)-(n+1))`
-/

namespace A249296.P4121401681230845287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A249296.P4121401681230845287

/-! ## A249296.P3170044103234387053

`A249290(A027379(n+5)-A103517(n+1))`
-/

namespace A249296.P3170044103234387053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A027379 (n + 5) - A103517 (n + 1)).toNat

end

end A249296.P3170044103234387053

/-! ## A249296.P7014442535156041290

`A249290(A103517(n+8)+A027379(n+1))`
-/

namespace A249296.P7014442535156041290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A103517 (n + 8) + A027379 (n + 1)).toNat

end

end A249296.P7014442535156041290

/-! ## A249296.P14393644053803956879

`A249290(A002620(n+2)+A002620(n+9))`
-/

namespace A249296.P14393644053803956879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A249296.P14393644053803956879

/-!
# A249297: Number of length 7+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249297, there is no canonical definition to state claims against.
-/

/-! ## A249297.P12133523344876488687

`A249290(A167487(n+5))`
-/

namespace A249297.P12133523344876488687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167487 (n + 5)).toNat

end

end A249297.P12133523344876488687

/-! ## A249297.P5043588206972449515

`A249290(A167499(n+5)+2)`
-/

namespace A249297.P5043588206972449515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167499 (n + 5) + 2).toNat

end

end A249297.P5043588206972449515

/-! ## A249297.P14302896027447348320

`A249290(A167614(n+5)+4)`
-/

namespace A249297.P14302896027447348320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167614 (n + 5) + 4).toNat

end

end A249297.P14302896027447348320

/-! ## A249297.P2450671876949426051

`A249290(A000124(n+6)+6)`
-/

namespace A249297.P2450671876949426051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000124 (n + 6) + 6).toNat

end

end A249297.P2450671876949426051

/-! ## A249297.P15767819670958810725

`A249290(A000217(n+6)+7)`
-/

namespace A249297.P15767819670958810725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000217 (n + 6) + 7).toNat

end

end A249297.P15767819670958810725

/-!
# A249298: Smallest positive integer k, such that s-k*n is a square where s is the smallest square >= k*n.

The programs for A249298, there is no canonical definition to state claims against.
-/

/-! ## A249298.P14176591522887146011

`A008611(A033461(n+4)*A187829(n+2))`
-/

namespace A249298.P14176591522887146011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A033461 (n + 4) * A187829 (n + 2)).toNat

end

end A249298.P14176591522887146011

/-! ## A249298.P4545884151298486440

`gcd(A029923(n), A100795(A187829(n+1)))`
-/

namespace A249298.P4545884151298486440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029923 n) (A100795 (A187829 (n + 1)).toNat)

end

end A249298.P4545884151298486440

/-! ## A249298.P2990418891565653528

`gcd(A055999(A211797(n)), A100795(n+1))`
-/

namespace A249298.P2990418891565653528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055999 (A211797 n).toNat) (A100795 (n + 1))

end

end A249298.P2990418891565653528

/-! ## A249298.P4789808529460343711

`gcd(A026741(A071252(n)), A197702(n+1))`
-/

namespace A249298.P4789808529460343711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (A071252 n).toNat) (A197702 (n + 1))

end

end A249298.P4789808529460343711

/-! ## A249298.P10366988225141990066

`A339814(lcm(A096592(n), A339810(n+1)))`
-/

namespace A249298.P10366988225141990066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339814 (Int.lcm (A096592 n) (A339810 (n + 1)))

end

end A249298.P10366988225141990066

/-!
# A249299: Numbers j such that the sum of the first j terms, Sum_{k=1..j} a(k), is not in this list.

The programs for A249299, there is no canonical definition to state claims against.
-/

/-! ## A249299.P2228987896793775456

`comp[A249331(n+1)]`
-/

namespace A249299.P2228987896793775456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249299.P2228987896793775456

/-! ## A249299.P2982704259068302639

`eq[0, char[A249331(A248227(n+1))]]`
-/

namespace A249299.P2982704259068302639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249331 (A248227 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249299.P2982704259068302639

/-! ## A249299.P3587315094254105981

`eq[char[A249331(n+1)], A000038(n)]`
-/

namespace A249299.P3587315094254105981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249331 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249299.P3587315094254105981

/-! ## A249299.P7286175366077614261

`eq[char[A249331(n+2)], A000007(n)]`
-/

namespace A249299.P7286175366077614261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249331 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249299.P7286175366077614261

/-! ## A249299.P13547562249257431155

`eq[char[A249331(n+2)], A130706(n)]`
-/

namespace A249299.P13547562249257431155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249331 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249299.P13547562249257431155

