import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A221100: E.g.f. satisfies: A(x) = 1 + x*Sum_{n>=0} log(A(n*x))^n / n!.

The programs for A221100, there is no canonical definition to state claims against.
-/

/-! ## A221100.P3002250118368757547

`A072484(∏[n!])`
-/

namespace A221100.P3002250118368757547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072484 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A221100.P3002250118368757547

/-!
# A221101: E.g.f. satisfies: A(x) = Sum_{n>=0} log(1 + x*A(n*x))^n/n!.

The programs for A221101, there is no canonical definition to state claims against.
-/

/-! ## A221101.P5897668406295239539

`A065033(A351768(n)+A003418(n))`
-/

namespace A221101.P5897668406295239539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A351768 n + A003418 n).toNat

end

end A221101.P5897668406295239539

/-! ## A221101.P15604859086274734500

`A216351(n)-A263014(A216351(n))`
-/

namespace A221101.P15604859086274734500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216351 n - A263014 (A216351 n).toNat

end

end A221101.P15604859086274734500

/-!
# A221102: E.g.f. satisfies: A(x) = 1 + x*Sum_{n>=0} log( A(x)^n )^n / n!.

The programs for A221102, there is no canonical definition to state claims against.
-/

/-! ## A221102.P16445451620814370197

`A334454(n!)+1`
-/

namespace A221102.P16445451620814370197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334454 (Nat.factorial n) + 1

end

end A221102.P16445451620814370197

/-!
# A221103: Number of nX2 arrays of occupancy after each element moves to some king-move neighbor, without 2-loops.

The programs for A221103, there is no canonical definition to state claims against.
-/

/-! ## A221103.P10002263329786150152

`A221106(∑[n+1]+2)`
-/

namespace A221103.P10002263329786150152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221106 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221103.P10002263329786150152

/-! ## A221103.P4566620786685724967

`record[A221106(A252460(n+1))]`
-/

namespace A221103.P4566620786685724967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221106 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221103.P4566620786685724967

/-! ## A221103.P13373303622472062612

`record[A221106(n+1)/A288972(n)]`
-/

namespace A221103.P13373303622472062612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221106 (n + 1) : ℚ) / (A288972 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221103.P13373303622472062612

/-! ## A221103.P18232362556916000865

`record[A221106(n+1)/A294756(n)]`
-/

namespace A221103.P18232362556916000865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221106 (n + 1) : ℚ) / (A294756 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221103.P18232362556916000865

/-!
# A221104: Number of nX3 arrays of occupancy after each element moves to some king-move neighbor, without 2-loops.

The programs for A221104, there is no canonical definition to state claims against.
-/

/-! ## A221104.P10616461096471410534

`A221106(∑[n+2]+4)`
-/

namespace A221104.P10616461096471410534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221106 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221104.P10616461096471410534

/-! ## A221104.P7650375004020594312

`record[A221106(A312063(n))]`
-/

namespace A221104.P7650375004020594312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221106 (A312063 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221104.P7650375004020594312

/-! ## A221104.P8244137807410713851

`record[A221106(A312065(n))]`
-/

namespace A221104.P8244137807410713851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221106 (A312065 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221104.P8244137807410713851

/-!
# A221105: Number of nX4 arrays of occupancy after each element moves to some king-move neighbor, without 2-loops.

The programs for A221105, there is no canonical definition to state claims against.
-/

/-! ## A221105.P5800552664816010019

`A221106(∑[n+3]+7)`
-/

namespace A221105.P5800552664816010019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221106 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221105.P5800552664816010019

/-! ## A221105.P11709880431023847859

`record[A188079(n+1)*A221106(n+1)]`
-/

namespace A221105.P11709880431023847859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (n + 1) * A221106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221105.P11709880431023847859

/-!
# A221106: T(n,k)=Number of nXk arrays of occupancy after each element moves to some king-move neighbor, without 2-loops.

The programs for A221106, there is no canonical definition to state claims against.
-/

/-! ## A221106.P7552677346833030919

`xor(1, A340427(A032555(n+1)))`
-/

namespace A221106.P7552677346833030919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A340427 (A032555 (n + 1)).toNat)

end

end A221106.P7552677346833030919

/-! ## A221106.P1236166664881192015

`xor(1, A340427(A032559(n+1)))`
-/

namespace A221106.P1236166664881192015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A340427 (A032559 (n + 1)).toNat)

end

end A221106.P1236166664881192015

/-! ## A221106.P16348157549325781083

`xor(1, A340427(A077739(n+1)))`
-/

namespace A221106.P16348157549325781083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A340427 (A077739 (n + 1)).toNat)

end

end A221106.P16348157549325781083

/-! ## A221106.P2818490087561640137

`xor(1, A340427(A110370(n+1)))`
-/

namespace A221106.P2818490087561640137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A340427 (A110370 (n + 1)).toNat)

end

end A221106.P2818490087561640137

/-!
# A221107: Sum of neighbor maps: log base 2 of the number of n X n binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their horizontal and antidiagonal neighbors in a random 0..1 n X n array.

The programs for A221107, there is no canonical definition to state claims against.
-/

/-! ## A221107.P14835748523806573645

`A221108(∑[4*n]+1)`
-/

namespace A221107.P14835748523806573645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221108 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221107.P14835748523806573645

/-! ## A221107.P15009923022694014253

`A221108(A001844(n))+char[10]`
-/

namespace A221107.P15009923022694014253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221108 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221107.P15009923022694014253

/-! ## A221107.P9139024601947588178

`record[A003982(n)*A221108(n+1)]`
-/

namespace A221107.P9139024601947588178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A221108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221107.P9139024601947588178

/-! ## A221107.P6752691603844385371

`record[gcd(A114327(n), A221108(n+1))]`
-/

namespace A221107.P6752691603844385371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A221108 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221107.P6752691603844385371

/-! ## A221107.P13604782357084173899

`gcd(A112316(n), A221108(A001844(n)))`
-/

namespace A221107.P13604782357084173899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A221108 (A001844 n).toNat)

end

end A221107.P13604782357084173899

/-!
# A221109: Number of n X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops.

The programs for A221109, there is no canonical definition to state claims against.
-/

/-! ## A221109.P7051769624694574448

`A221114((n+1)²+n²)`
-/

namespace A221109.P7051769624694574448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 ((n + 1) ^ 2 + n ^ 2)

end

end A221109.P7051769624694574448

/-!
# A221110: Number of n X 4 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops.

The programs for A221110, there is no canonical definition to state claims against.
-/

/-! ## A221110.P14252951409668105406

`A221114(A141214(n+1))`
-/

namespace A221110.P14252951409668105406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A141214 (n + 1)).toNat

end

end A221110.P14252951409668105406

/-! ## A221110.P15609703520095702630

`A221114(A027379(n+2))`
-/

namespace A221110.P15609703520095702630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A027379 (n + 2)).toNat

end

end A221110.P15609703520095702630

/-! ## A221110.P4795736814149035799

`A221114(A055998(n+2))`
-/

namespace A221110.P4795736814149035799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A055998 (n + 2)).toNat

end

end A221110.P4795736814149035799

/-! ## A221110.P12385541365517271231

`A221114(A155212(n)+5)`
-/

namespace A221110.P12385541365517271231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A155212 n + 5).toNat

end

end A221110.P12385541365517271231

/-! ## A221110.P3135913725954521318

`A221114(A056000(n)+7)`
-/

namespace A221110.P3135913725954521318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A056000 n + 7).toNat

end

end A221110.P3135913725954521318

/-!
# A221111: Number of nX5 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops.

The programs for A221111, there is no canonical definition to state claims against.
-/

/-! ## A221111.P12026663490651849844

`A221114(Δ[A264443(n)])`
-/

namespace A221111.P12026663490651849844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (f1 (n + 1) - f1 n).toNat

end

end A221111.P12026663490651849844

/-! ## A221111.P10674920927500144885

`A221114(A046691(n+3))`
-/

namespace A221111.P10674920927500144885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A046691 (n + 3)).toNat

end

end A221111.P10674920927500144885

/-! ## A221111.P15506800053933724060

`A221114(A056115(n)+11)`
-/

namespace A221111.P15506800053933724060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A056115 n + 11).toNat

end

end A221111.P15506800053933724060

/-! ## A221111.P10773888777098582069

`A221114(eq[3, A152157(n)])`
-/

namespace A221111.P10773888777098582069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221111.P10773888777098582069

/-! ## A221111.P9002911074204001986

`A221114(eq[4, A193592(n)])`
-/

namespace A221111.P9002911074204001986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221111.P9002911074204001986

/-!
# A221112: Number of nX6 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops.

The programs for A221112, there is no canonical definition to state claims against.
-/

/-! ## A221112.P13224592302669773670

`A221114(A052905(n+3))`
-/

namespace A221112.P13224592302669773670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A052905 (n + 3)).toNat

end

end A221112.P13224592302669773670

/-! ## A221112.P3157778037669679862

`A221114(A168105(n)-5)`
-/

namespace A221112.P3157778037669679862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A168105 n - 5).toNat

end

end A221112.P3157778037669679862

/-! ## A221112.P1071566103587427875

`A221114(A056119(n)+16)`
-/

namespace A221112.P1071566103587427875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A056119 n + 16).toNat

end

end A221112.P1071566103587427875

/-! ## A221112.P18005961916993912820

`A221114(eq[3, A219347(n)])`
-/

namespace A221112.P18005961916993912820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221112.P18005961916993912820

/-!
# A221113: Number of nX7 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops.

The programs for A221113, there is no canonical definition to state claims against.
-/

/-! ## A221113.P14384408082276956747

`A221114(A055999(n+4))`
-/

namespace A221113.P14384408082276956747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A055999 (n + 4)).toNat

end

end A221113.P14384408082276956747

/-! ## A221113.P11052856186573709947

`A221114(eq[4, A219347(n)])`
-/

namespace A221113.P11052856186573709947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221113.P11052856186573709947

/-! ## A221113.P17356062976361561215

`A221114(eq[6, A193592(n)])`
-/

namespace A221113.P17356062976361561215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221113.P17356062976361561215

/-!
# A221114: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops.

The programs for A221114, there is no canonical definition to state claims against.
-/

/-! ## A221114.P6144960135718812991

`A094189(A330942(n)^A216226(n))`
-/

namespace A221114.P6144960135718812991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (SequenceMachineLib.roundAway ((A330942 n : ℚ) ^ (A216226 n : ℤ))).toNat

end

end A221114.P6144960135718812991

/-! ## A221114.P3122506992175279367

`A094189(A331572(n)^A216226(n))`
-/

namespace A221114.P3122506992175279367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (SequenceMachineLib.roundAway ((A331572 n : ℚ) ^ (A216226 n : ℤ))).toNat

end

end A221114.P3122506992175279367

/-! ## A221114.P15228741857006490781

`A229346(A330942(n))%A262809(n)`
-/

namespace A221114.P15228741857006490781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229346 (A330942 n).toNat) (A262809 n)

end

end A221114.P15228741857006490781

/-! ## A221114.P1274966223152165121

`A221388(n+1)+A217155(A174038(n))`
-/

namespace A221114.P1274966223152165121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (n + 1) + A217155 (A174038 n).toNat

end

end A221114.P1274966223152165121

/-! ## A221114.P18091220574698941632

`A001221(A208849(n))*A221388(n+1)`
-/

namespace A221114.P18091220574698941632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A208849 n).toNat * A221388 (n + 1)

end

end A221114.P18091220574698941632

/-!
# A221115: Number of 3 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops.

The programs for A221115, there is no canonical definition to state claims against.
-/

/-! ## A221115.P14885957360749775023

`A221114(∑[n+2]+4)`
-/

namespace A221115.P14885957360749775023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221115.P14885957360749775023

/-! ## A221115.P13742371165434128835

`lcm(2, A221114(A167614(n+1)))`
-/

namespace A221115.P13742371165434128835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221114 (A167614 (n + 1)).toNat)

end

end A221115.P13742371165434128835

/-! ## A221115.P18324686646277522608

`A158388(n)*A221114(A167614(n+1))`
-/

namespace A221115.P18324686646277522608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A221114 (A167614 (n + 1)).toNat

end

end A221115.P18324686646277522608

/-! ## A221115.P14131037306677585617

`A221114(A167614(n+1))%A001022(n)`
-/

namespace A221115.P14131037306677585617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221114 (A167614 (n + 1)).toNat) (A001022 n)

end

end A221115.P14131037306677585617

/-! ## A221115.P5787599913987420124

`A221114(A167614(n+1))+A006983(n+1)`
-/

namespace A221115.P5787599913987420124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A167614 (n + 1)).toNat + A006983 (n + 1)

end

end A221115.P5787599913987420124

/-!
# A221116: Number of 4Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops.

The programs for A221116, there is no canonical definition to state claims against.
-/

/-! ## A221116.P2602580659363143079

`A221114(A141214(n)+7)`
-/

namespace A221116.P2602580659363143079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A141214 n + 7).toNat

end

end A221116.P2602580659363143079

/-! ## A221116.P2981828124249428585

`A221114(A052905(n)+9)`
-/

namespace A221116.P2981828124249428585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A052905 n + 9).toNat

end

end A221116.P2981828124249428585

/-! ## A221116.P7300578681557318383

`A221114(A055999(n)+10)`
-/

namespace A221116.P7300578681557318383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A055999 n + 10).toNat

end

end A221116.P7300578681557318383

/-! ## A221116.P1038814684810327693

`A221114(eq[5, A066657(n)])`
-/

namespace A221116.P1038814684810327693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221116.P1038814684810327693

/-! ## A221116.P7377732811438938184

`A221114(A167614(n+2)+1)`
-/

namespace A221116.P7377732811438938184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A167614 (n + 2) + 1).toNat

end

end A221116.P7377732811438938184

/-!
# A221117: Number of 5Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops.

The programs for A221117, there is no canonical definition to state claims against.
-/

/-! ## A221117.P4059878651423711286

`A221114(A167499(n+3))`
-/

namespace A221117.P4059878651423711286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A167499 (n + 3)).toNat

end

end A221117.P4059878651423711286

/-! ## A221117.P1130420289630116535

`A221114(A056000(n)+15)`
-/

namespace A221117.P1130420289630116535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A056000 n + 15).toNat

end

end A221117.P1130420289630116535

/-! ## A221117.P13698111820661475155

`A221114(eq[7, A066657(n)])`
-/

namespace A221117.P13698111820661475155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221117.P13698111820661475155

/-! ## A221117.P5099925495355314415

`A221114(A052905(n+1)+10)`
-/

namespace A221117.P5099925495355314415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A052905 (n + 1) + 10).toNat

end

end A221117.P5099925495355314415

/-! ## A221117.P14208644332127770040

`A221114(A051936(n+4)+14)`
-/

namespace A221117.P14208644332127770040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A051936 (n + 4) + 14).toNat

end

end A221117.P14208644332127770040

/-!
# A221118: Number of 6Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops.

The programs for A221118, there is no canonical definition to state claims against.
-/

/-! ## A221118.P2322541552798642218

`A221114(A166136(n+4))`
-/

namespace A221118.P2322541552798642218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A166136 (n + 4)).toNat

end

end A221118.P2322541552798642218

/-! ## A221118.P10788222640065875942

`A221114(A056115(n)+21)`
-/

namespace A221118.P10788222640065875942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A056115 n + 21).toNat

end

end A221118.P10788222640065875942

/-! ## A221118.P16757947944548171704

`A221114(A168105(n)-n)`
-/

namespace A221118.P16757947944548171704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A168105 n - (n : ℤ)).toNat

end

end A221118.P16757947944548171704

/-! ## A221118.P15046638553115813963

`A221114(A167499(n+4)+1)`
-/

namespace A221118.P15046638553115813963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A167499 (n + 4) + 1).toNat

end

end A221118.P15046638553115813963

/-!
# A221119: Number of 7Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops.

The programs for A221119, there is no canonical definition to state claims against.
-/

/-! ## A221119.P12603874769061493666

`A221114(A168105(n)+7)`
-/

namespace A221119.P12603874769061493666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (A168105 n + 7).toNat

end

end A221119.P12603874769061493666

/-! ## A221119.P18325517725626753137

`A221114(eq[11, A066657(n)])`
-/

namespace A221119.P18325517725626753137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221119.P18325517725626753137

/-!
# A221120: Number of n X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor.

The programs for A221120, there is no canonical definition to state claims against.
-/

/-! ## A221120.P18186177095390334522

`A221125(∑[4*n]+1)`
-/

namespace A221120.P18186177095390334522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221120.P18186177095390334522

/-!
# A221121: Number of n X 3 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor.

The programs for A221121, there is no canonical definition to state claims against.
-/

/-! ## A221121.P16600842893220757421

`26*a(n-1)-41*a(n-2)` with `a(0)=8, a(1)=200`
-/

namespace A221121.P16600842893220757421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 200] fun n a =>
  26 * a (n - 1) - 41 * a (n - 2)

end

end A221121.P16600842893220757421

/-! ## A221121.P11471460644377850053

`A221125(∑[n+3]+1)`
-/

namespace A221121.P11471460644377850053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221121.P11471460644377850053

/-!
# A221122: Number of n X 4 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor.

The programs for A221122, there is no canonical definition to state claims against.
-/

/-! ## A221122.P3004273365546300031

`A221125(∑[n+4]+3)`
-/

namespace A221122.P3004273365546300031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221122.P3004273365546300031

/-!
# A221123: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor.

The programs for A221123, there is no canonical definition to state claims against.
-/

/-! ## A221123.P3450860716901240926

`A221125(∑[n+5]+6)`
-/

namespace A221123.P3450860716901240926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221123.P3450860716901240926

/-!
# A221124: Number of n X 6 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor.

The programs for A221124, there is no canonical definition to state claims against.
-/

/-! ## A221124.P7846603326368737175

`A221125(A052905(n+3))`
-/

namespace A221124.P7846603326368737175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (A052905 (n + 3)).toNat

end

end A221124.P7846603326368737175

/-!
# A221126: Number of 2 X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor.

The programs for A221126, there is no canonical definition to state claims against.
-/

/-! ## A221126.P2767495511465640107

`A221125(∑[n+1]+2)`
-/

namespace A221126.P2767495511465640107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221126.P2767495511465640107

/-! ## A221126.P13858936855554459011

`record[A221125(A130270(n+1)+2)]`
-/

namespace A221126.P13858936855554459011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221126.P13858936855554459011

/-! ## A221126.P3353815794413135245

`record[gcd(A221125(n+1), A266318(n+1))]`
-/

namespace A221126.P3353815794413135245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221125 (n + 1)) (A266318 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221126.P3353815794413135245

/-!
# A221127: Number of 3 X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor.

The programs for A221127, there is no canonical definition to state claims against.
-/

/-! ## A221127.P13598959050994177301

`A221125(∑[n+2]+4)`
-/

namespace A221127.P13598959050994177301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221127.P13598959050994177301

/-! ## A221127.P13316406697774757210

`record[gcd(A221125(n+4), A276890(n))]`
-/

namespace A221127.P13316406697774757210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221125 (n + 4)) (A276890 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221127.P13316406697774757210

/-! ## A221127.P7580522185429985966

`A221125(A167614(n+1))+A025437(n)`
-/

namespace A221127.P7580522185429985966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (A167614 (n + 1)).toNat + A025437 n

end

end A221127.P7580522185429985966

/-! ## A221127.P8768260578144358098

`A221125(A167614(n+1))+A031346(n)`
-/

namespace A221127.P8768260578144358098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (A167614 (n + 1)).toNat + A031346 n

end

end A221127.P8768260578144358098

/-! ## A221127.P3484527289653742777

`A221125(A167614(n+1))+A056965(n)`
-/

namespace A221127.P3484527289653742777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (A167614 (n + 1)).toNat + A056965 n

end

end A221127.P3484527289653742777

/-!
# A221128: Number of 4 X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor.

The programs for A221128, there is no canonical definition to state claims against.
-/

/-! ## A221128.P13137884504788031644

`A221125(∑[n+3]+7)`
-/

namespace A221128.P13137884504788031644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221125 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221128.P13137884504788031644

/-!
# A221129: Numbers of form k*2^n + n where 1 <= k < 2^n and n > 0.

The programs for A221129, there is no canonical definition to state claims against.
-/

/-! ## A221129.P6351118873331739642

`lt[A001358(A103530(n+1)), A350945(n+1)]`
-/

namespace A221129.P6351118873331739642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A103530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350945 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A221129.P6351118873331739642

/-! ## A221129.P9068321677404388014

`eq[char[A025878(n)], A025888(n+2)]`
-/

namespace A221129.P9068321677404388014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025878 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A221129.P9068321677404388014

/-! ## A221129.P17436814142781815295

`eq[char[A025890(n)], A025888(n+2)]`
-/

namespace A221129.P17436814142781815295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A221129.P17436814142781815295

/-! ## A221129.P10703380194371953536

`eq[char[A025924(n)], A025888(n+2)]`
-/

namespace A221129.P10703380194371953536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A221129.P10703380194371953536

/-!
# A221130: a(n) = 2^(2*n - 1) + n.

The programs for A221130, the canonical program `A221130.P14538175684439787930` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221130 has offset 1).

The definition of A221130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*(n+1)-1)+n+1` (program `A221130.P14029531058776183729`, by `A221130.P14029531058776183729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221130.P14029531058776183729

`2^(2*(n+1)-1)+n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A221130.P14029531058776183729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) + (n + 1 : ℚ)

end

end A221130.P14029531058776183729

namespace A221130

/-- `2^(2*(n+1)-1)+n+1` -/
def P14029531058776183729.Spec : Prop :=
  ∀ n, P14029531058776183729.a n = (A221130 (n + 1) : ℚ)

theorem P14029531058776183729.correct : P14029531058776183729.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A221130, Nat.add_sub_cancel, A221130.P14029531058776183729.a, A221130.P14538175684439787930.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A221130, Nat.add_sub_cancel, A221130.P14029531058776183729.a, A221130.P14538175684439787930.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A221130

/-! ## A221130.P16321023354939069274

`or(n+1, 2^Δ[n²])`
-/

namespace A221130.P16321023354939069274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)))

end

end A221130.P16321023354939069274

namespace A221130

/-- `or(n+1, 2^Δ[n²])` -/
def P16321023354939069274.Spec : Prop :=
  ∀ n, P16321023354939069274.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P6071199554429854793

`xor(n+1, 2^Δ[n²])`
-/

namespace A221130.P6071199554429854793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)))

end

end A221130.P6071199554429854793

namespace A221130

/-- `xor(n+1, 2^Δ[n²])` -/
def P6071199554429854793.Spec : Prop :=
  ∀ n, P6071199554429854793.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P2315436401694907164

`∑[ogf((3-8x+2x^2)/(1-5x+4x^2))]`
-/

namespace A221130.P2315436401694907164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 2] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221130.P2315436401694907164

namespace A221130

/-- `∑[ogf((3-8x+2x^2)/(1-5x+4x^2))]` -/
def P2315436401694907164.Spec : Prop :=
  ∀ n, P2315436401694907164.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P7273151398988380268

`ogf((3-8x+2x^2)/(1-6x+9x^2-4x^3))`
-/

namespace A221130.P7273151398988380268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 2] [1, -6, 9, -4] n

end

end A221130.P7273151398988380268

namespace A221130

/-- `ogf((3-8x+2x^2)/(1-6x+9x^2-4x^3))` -/
def P7273151398988380268.Spec : Prop :=
  ∀ n, P7273151398988380268.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P1650891997972824860

`∑[4*a(n-1)-3]` with `a(0)=3, a(1)=7`
-/

namespace A221130.P1650891997972824860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  4 * f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221130.P1650891997972824860

namespace A221130

/-- `∑[4*a(n-1)-3]` -/
def P1650891997972824860.Spec : Prop :=
  ∀ n, P1650891997972824860.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P15990378700133333011

`floor(4*a(n-1)+1-3*n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A221130.P15990378700133333011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * a (n - 1) + (1 - (3 * n : ℤ))

end

end A221130.P15990378700133333011

namespace A221130

/-- `floor(4*a(n-1)+1-3*n)` -/
def P15990378700133333011.Spec : Prop :=
  ∀ n, P15990378700133333011.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P14538175684439787930

`floor(n-(4*(n-a(n-1))-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221130

/-- `floor(n-(4*(n-a(n-1))-1))` -/
def P14538175684439787930.Spec : Prop :=
  ∀ n, P14538175684439787930.a n = A221130 (n + 1)

theorem P14538175684439787930.correct : P14538175684439787930.Spec := by
  intro n
  simp only [A221130, Nat.add_sub_cancel]

end A221130

/-! ## A221130.P3067380860231458196

`4*((n+1)/4+a(n-1)-n)` with `a(0)=3`
-/

namespace A221130.P3067380860231458196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  4 * ((n + 1 : ℚ) / 4 + (a (n - 1) - (n : ℚ)))

end

end A221130.P3067380860231458196

namespace A221130

/-- `4*((n+1)/4+a(n-1)-n)` -/
def P3067380860231458196.Spec : Prop :=
  ∀ n, P3067380860231458196.a n = (A221130 (n + 1) : ℚ)

end A221130

/-! ## A221130.P15827768983865301783

`A134522(Δ[n²])`
-/

namespace A221130.P15827768983865301783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134522 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A221130.P15827768983865301783

namespace A221130

/-- `A134522(Δ[n²])` -/
def P15827768983865301783.Spec : Prop :=
  ∀ n, P15827768983865301783.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P16486576353218701711

`∑[record[A283507(n)+2]]`
-/

namespace A221130.P16486576353218701711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221130.P16486576353218701711

namespace A221130

/-- `∑[record[A283507(n)+2]]` -/
def P16486576353218701711.Spec : Prop :=
  ∀ n, P16486576353218701711.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P6076272779017180220

`∑[A084509(n+2)+1]`
-/

namespace A221130.P6076272779017180220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084509 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221130.P6076272779017180220

namespace A221130

/-- `∑[A084509(n+2)+1]` -/
def P6076272779017180220.Spec : Prop :=
  ∀ n, P6076272779017180220.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P14551806557946603744

`∑[2*A002001(n)+1]`
-/

namespace A221130.P14551806557946603744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002001 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221130.P14551806557946603744

namespace A221130

/-- `∑[2*A002001(n)+1]` -/
def P14551806557946603744.Spec : Prop :=
  ∀ n, P14551806557946603744.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P12465743243274715304

`∑[A042950(2*n)+1]`
-/

namespace A221130.P12465743243274715304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221130.P12465743243274715304

namespace A221130

/-- `∑[A042950(2*n)+1]` -/
def P12465743243274715304.Spec : Prop :=
  ∀ n, P12465743243274715304.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P4549433178397194208

`∑[A058764(2*n)+1]`
-/

namespace A221130.P4549433178397194208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221130.P4549433178397194208

namespace A221130

/-- `∑[A058764(2*n)+1]` -/
def P4549433178397194208.Spec : Prop :=
  ∀ n, P4549433178397194208.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P18270022857593239094

`∑[A083329(2*n)+2]`
-/

namespace A221130.P18270022857593239094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221130.P18270022857593239094

namespace A221130

/-- `∑[A083329(2*n)+2]` -/
def P18270022857593239094.Spec : Prop :=
  ∀ n, P18270022857593239094.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P7847009974486682475

`∑[A283507(2*n)+2]`
-/

namespace A221130.P7847009974486682475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221130.P7847009974486682475

namespace A221130

/-- `∑[A283507(2*n)+2]` -/
def P7847009974486682475.Spec : Prop :=
  ∀ n, P7847009974486682475.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P5006273460743369581

`∑[A284481(2*n)+2]`
-/

namespace A221130.P5006273460743369581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284481 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221130.P5006273460743369581

namespace A221130

/-- `∑[A284481(2*n)+2]` -/
def P5006273460743369581.Spec : Prop :=
  ∀ n, P5006273460743369581.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P8696674636069081835

`∑[A290074(2*n)+2]`
-/

namespace A221130.P8696674636069081835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290074 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221130.P8696674636069081835

namespace A221130

/-- `∑[A290074(2*n)+2]` -/
def P8696674636069081835.Spec : Prop :=
  ∀ n, P8696674636069081835.a n = A221130 (n + 1)

end A221130

/-! ## A221130.P11821371184127452708

`A006127(2*(n+1))/2`
-/

namespace A221130.P11821371184127452708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006127 (2 * (n + 1)) : ℚ) / 2

end

end A221130.P11821371184127452708

namespace A221130

/-- `A006127(2*(n+1))/2` -/
def P11821371184127452708.Spec : Prop :=
  ∀ n, P11821371184127452708.a n = (A221130 (n + 1) : ℚ)

theorem P11821371184127452708.correct : P11821371184127452708.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A221130, Nat.add_sub_cancel, A221130.P11821371184127452708.a, A221130.P14538175684439787930.a, A006127, A006127.P13800088188431216723.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A221130, Nat.add_sub_cancel, A221130.P11821371184127452708.a, A221130.P14538175684439787930.a, A006127, A006127.P13800088188431216723.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A221130

/-!
# A221131: Table, T, read by antidiagonals where T(-j,k) = ((1+sqrt(j))^k + (1-sqrt(j))^k)/2.

The programs for A221131, there is no canonical definition to state claims against.
-/

/-! ## A221131.P17645777413938461314

`1-A080791(A180843(n+1))`
-/

namespace A221131.P17645777413938461314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080791 (A180843 (n + 1)).toNat

end

end A221131.P17645777413938461314

/-! ## A221131.P7602537769409953060

`A089723(A303912(3*n+1))*A362277(n)`
-/

namespace A221131.P7602537769409953060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A303912 (3 * n + 1)).toNat * A362277 n

end

end A221131.P7602537769409953060

/-! ## A221131.P10286218994230510946

`A333254(A355898(n+1))*A362277(n)`
-/

namespace A221131.P10286218994230510946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (A355898 (n + 1)).toNat * A362277 n

end

end A221131.P10286218994230510946

/-! ## A221131.P2605211721836191600

`A333768(A333786(n+4))*A362277(n)`
-/

namespace A221131.P2605211721836191600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A333786 (n + 4)).toNat * A362277 n

end

end A221131.P2605211721836191600

/-! ## A221131.P18410914900812024549

`A362277(n)-A079208(A038872(n+1))`
-/

namespace A221131.P18410914900812024549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 n - A079208 (A038872 (n + 1)).toNat

end

end A221131.P18410914900812024549

/-!
# A221132: a(n) = lcm(a(n-1), n^2 + n + 1) for n > 1 with a(1) = 1.

The programs for A221132, the canonical program `A221132.P1712224865971377433` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221132 has offset 1).

The definition of A221132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(a(n-1), (n+1)²+n+1+1)` (program `A221132.P1712224865971377433`, by `A221132.P1712224865971377433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221132.P1712224865971377433

`lcm(a(n-1), (n+1)²+n+1+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221132

/-- `lcm(a(n-1), (n+1)²+n+1+1)` -/
def P1712224865971377433.Spec : Prop :=
  ∀ n, (P1712224865971377433.a n : ℤ) = A221132 (n + 1)

theorem P1712224865971377433.correct : P1712224865971377433.Spec := by
  intro n
  simp only [A221132, Nat.add_sub_cancel]

end A221132

/-! ## A221132.P7621875675509502606

`lcm(n*(n+3)+3, a(n-1))` with `a(0)=1`
-/

namespace A221132.P7621875675509502606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n * (n + 3) + 3) (a (n - 1))

end

end A221132.P7621875675509502606

namespace A221132

/-- `lcm(n*(n+3)+3, a(n-1))` -/
def P7621875675509502606.Spec : Prop :=
  ∀ n, (P7621875675509502606.a n : ℤ) = A221132 (n + 1)

end A221132

/-! ## A221132.P2825054553896637912

`lcm((n+1)²+n+2, -a(n-1))` with `a(0)=1`
-/

namespace A221132.P2825054553896637912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm ((n + 1) ^ 2 + (n + 2) : ℤ) (-(a (n - 1) : ℤ))

end

end A221132.P2825054553896637912

namespace A221132

/-- `lcm((n+1)²+n+2, -a(n-1))` -/
def P2825054553896637912.Spec : Prop :=
  ∀ n, (P2825054553896637912.a n : ℤ) = A221132 (n + 1)

end A221132

/-! ## A221132.P18443110395968471825

`lcm(n+1-(n+2)², floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A221132.P18443110395968471825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm ((n + 1 : ℤ) - ((n + 2) ^ 2 : ℤ)) (a (n - 1) : ℤ)

end

end A221132.P18443110395968471825

namespace A221132

/-- `lcm(n+1-(n+2)², floor(a(n-1)))` -/
def P18443110395968471825.Spec : Prop :=
  ∀ n, (P18443110395968471825.a n : ℤ) = A221132 (n + 1)

end A221132

/-! ## A221132.P929138597381225157

`lcm(-a(n-1), A002061(n+2))` with `a(0)=1`
-/

namespace A221132.P929138597381225157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A002061 (n + 2))

end

end A221132.P929138597381225157

namespace A221132

/-- `lcm(-a(n-1), A002061(n+2))` -/
def P929138597381225157.Spec : Prop :=
  ∀ n, (P929138597381225157.a n : ℤ) = A221132 (n + 1)

end A221132

/-!
# A221133: Number of n X n arrays of occupancy after each element moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221133, there is no canonical definition to state claims against.
-/

/-! ## A221133.P3921641043004815068

`A221139(∑[4*n]+1)`
-/

namespace A221133.P3921641043004815068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221133.P3921641043004815068

/-!
# A221134: Number of nX3 arrays of occupancy after each element moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221134, there is no canonical definition to state claims against.
-/

/-! ## A221134.P18167364206531737374

`A221139(∑[n+2]+4)`
-/

namespace A221134.P18167364206531737374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221134.P18167364206531737374

/-! ## A221134.P10565185952373923401

`record[gcd(A221139(n+4), A261275(n+1))]`
-/

namespace A221134.P10565185952373923401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221139 (n + 4)) (A261275 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221134.P10565185952373923401

/-! ## A221134.P5962202767168605319

`A221139(A167614(n+1))+A084904(n)`
-/

namespace A221134.P5962202767168605319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A167614 (n + 1)).toNat + A084904 n

end

end A221134.P5962202767168605319

/-! ## A221134.P9907278780878916893

`A221139(A167614(n+1))%A332118(n)`
-/

namespace A221134.P9907278780878916893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221139 (A167614 (n + 1)).toNat) (A332118 n)

end

end A221134.P9907278780878916893

/-! ## A221134.P12487350303783519194

`gcd(A000038(n), A221139(A167614(n+1)))`
-/

namespace A221134.P12487350303783519194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A221139 (A167614 (n + 1)).toNat)

end

end A221134.P12487350303783519194

/-!
# A221135: Number of nX4 arrays of occupancy after each element moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221135, there is no canonical definition to state claims against.
-/

/-! ## A221135.P16595735115717501490

`A221139(A374004(n+1))`
-/

namespace A221135.P16595735115717501490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A374004 (n + 1)).toNat

end

end A221135.P16595735115717501490

/-! ## A221135.P17944890732285770386

`A221139(A141214(n)+7)`
-/

namespace A221135.P17944890732285770386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A141214 n + 7).toNat

end

end A221135.P17944890732285770386

/-! ## A221135.P1674534014287631621

`A221139(A052905(n)+9)`
-/

namespace A221135.P1674534014287631621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A052905 n + 9).toNat

end

end A221135.P1674534014287631621

/-! ## A221135.P2378744491197869877

`A221139(A055999(n)+10)`
-/

namespace A221135.P2378744491197869877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A055999 n + 10).toNat

end

end A221135.P2378744491197869877

/-! ## A221135.P2568226957352851635

`A221139(eq[5, A066657(n)])`
-/

namespace A221135.P2568226957352851635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221135.P2568226957352851635

/-!
# A221136: Number of nX5 arrays of occupancy after each element moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221136, there is no canonical definition to state claims against.
-/

/-! ## A221136.P11581204862294866957

`A221139(A374005(n+1))`
-/

namespace A221136.P11581204862294866957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A374005 (n + 1)).toNat

end

end A221136.P11581204862294866957

/-! ## A221136.P18086181584344778873

`A221139(A155212(n)+13)`
-/

namespace A221136.P18086181584344778873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A155212 n + 13).toNat

end

end A221136.P18086181584344778873

/-! ## A221136.P12253558952505219837

`A221139(A056000(n)+15)`
-/

namespace A221136.P12253558952505219837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A056000 n + 15).toNat

end

end A221136.P12253558952505219837

/-! ## A221136.P8617815605930896805

`A221139(eq[7, A066657(n)])`
-/

namespace A221136.P8617815605930896805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221136.P8617815605930896805

/-! ## A221136.P3251065352890930014

`A221139(eq[6, A131818(n+1)])`
-/

namespace A221136.P3251065352890930014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221136.P3251065352890930014

/-!
# A221137: Number of nX6 arrays of occupancy after each element moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221137, there is no canonical definition to state claims against.
-/

/-! ## A221137.P14490554331665807321

`A221139(A374007(n+1))`
-/

namespace A221137.P14490554331665807321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A374007 (n + 1)).toNat

end

end A221137.P14490554331665807321

/-! ## A221137.P8696446957320663160

`A221139(eq[8, A185782(n+1)])`
-/

namespace A221137.P8696446957320663160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221137.P8696446957320663160

/-!
# A221138: Number of n X 7 arrays of occupancy after each element moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221138, there is no canonical definition to state claims against.
-/

/-! ## A221138.P13767464084492398768

`A221139(A374008(n+1))`
-/

namespace A221138.P13767464084492398768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A374008 (n + 1)).toNat

end

end A221138.P13767464084492398768

/-!
# A221139: T(n,k) = number of n X k arrays of occupancy after each element moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221139, there is no canonical definition to state claims against.
-/

/-! ## A221139.P3127052300829828275

`A154255(A180985(n+1)^A087028(n+1))`
-/

namespace A221139.P3127052300829828275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154255 (SequenceMachineLib.roundAway ((A180985 (n + 1) : ℚ) ^ (A087028 (n + 1) : ℤ))).toNat

end

end A221139.P3127052300829828275

/-! ## A221139.P13092123245820446915

`A188112(A220553(n+1)^A087028(n+1))`
-/

namespace A221139.P13092123245820446915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (SequenceMachineLib.roundAway ((A220553 (n + 1) : ℚ) ^ (A087028 (n + 1) : ℤ))).toNat

end

end A221139.P13092123245820446915

/-! ## A221139.P3894404716041947155

`A154255(A180985(n+1))%A133253(n+3)`
-/

namespace A221139.P3894404716041947155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154255 (A180985 (n + 1)).toNat) (A133253 (n + 3))

end

end A221139.P3894404716041947155

/-! ## A221139.P7713074656081860653

`A188112(A220553(n+1))%A133253(n+3)`
-/

namespace A221139.P7713074656081860653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188112 (A220553 (n + 1)).toNat) (A133253 (n + 3))

end

end A221139.P7713074656081860653

/-! ## A221139.P639079914011285190

`A154255(A087028(n+1)²*A180985(n+1))`
-/

namespace A221139.P639079914011285190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154255 (A087028 (n + 1) ^ 2 * A180985 (n + 1)).toNat

end

end A221139.P639079914011285190

/-!
# A221140: Second-order spt function.

The programs for A221140, there is no canonical definition to state claims against.
-/

/-! ## A221140.P8825367546351811851

`A211977(∑[char[1]+n]+1)%((n+1)*Δ[n^3])`
-/

namespace A221140.P8825367546351811851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211977 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) ((n + 1 : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ)))

end

end A221140.P8825367546351811851

/-! ## A221140.P2007195382614998034

`A211977(A133263(n))-A000007(n)`
-/

namespace A221140.P2007195382614998034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211977 (A133263 n).toNat - A000007 n

end

end A221140.P2007195382614998034

/-! ## A221140.P2241999080850168933

`A211977(A133263(n))-A067898(n)`
-/

namespace A221140.P2241999080850168933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211977 (A133263 n).toNat - A067898 n

end

end A221140.P2241999080850168933

/-! ## A221140.P11195098511184226720

`A211977(A133263(n))-A097479(n)`
-/

namespace A221140.P11195098511184226720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211977 (A133263 n).toNat - A097479 n

end

end A221140.P11195098511184226720

/-!
# A221141: Third-order spt function.

The programs for A221141, there is no canonical definition to state claims against.
-/

/-! ## A221141.P15126574964143639772

`A373905(n+1)-A027615(A276097(n+1))`
-/

namespace A221141.P15126574964143639772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373905 (n + 1) - A027615 (A276097 (n + 1)).toNat

end

end A221141.P15126574964143639772

/-!
# A221142: Fourth-order spt function.

The programs for A221142, there is no canonical definition to state claims against.
-/

/-! ## A221142.P15909165706920586020

`A022307(n)*A211977(A145018(n+1))`
-/

namespace A221142.P15909165706920586020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n * A211977 (A145018 (n + 1)).toNat

end

end A221142.P15909165706920586020

/-! ## A221142.P9510323565119433288

`A211977(A145018(n+1))%A149809(n)`
-/

namespace A221142.P9510323565119433288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211977 (A145018 (n + 1)).toNat) (A149809 n)

end

end A221142.P9510323565119433288

/-! ## A221142.P17573540852393785505

`A235044(A063887(n))`
-/

namespace A221142.P17573540852393785505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 (A063887 n).toNat

end

end A221142.P17573540852393785505

/-!
# A221143: Fifth-order spt function.

The programs for A221143, there is no canonical definition to state claims against.
-/

/-! ## A221143.P13747862166266425589

`A065718(A149809(n))`
-/

namespace A221143.P13747862166266425589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (A149809 n).toNat

end

end A221143.P13747862166266425589

/-! ## A221143.P11399308168724822718

`A049824(A128113(n+1)+A003483(n))`
-/

namespace A221143.P11399308168724822718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049824 (A128113 (n + 1) + A003483 n).toNat

end

end A221143.P11399308168724822718

/-! ## A221143.P6235845378280910764

`A153504(A246278(n+6))%A088600(n+1)`
-/

namespace A221143.P6235845378280910764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153504 (A246278 (n + 6)).toNat) (A088600 (n + 1))

end

end A221143.P6235845378280910764

/-!
# A221144: Sixth-order spt function.

The programs for A221144, there is no canonical definition to state claims against.
-/

/-! ## A221144.P8200424099818480867

`∑[∑[A221143(A051052(n))]]`
-/

namespace A221144.P8200424099818480867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221143 (A051052 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221144.P8200424099818480867

/-! ## A221144.P6284674664972639996

`A292149(A035053(n+1))`
-/

namespace A221144.P6284674664972639996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292149 (A035053 (n + 1)).toNat

end

end A221144.P6284674664972639996

/-! ## A221144.P6854142167788304438

`A028901(C(A063019(n), A027748(3*n+2)))`
-/

namespace A221144.P6854142167788304438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (Nat.choose (A063019 n).toNat (A027748 (3 * n + 2)).toNat)

end

end A221144.P6854142167788304438

/-!
# A221145: a(n) is the number of permutations of n elements with exactly one fixed point and no transpositions.

The programs for A221145, the canonical program `A221145.P16927418842806366489` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221145 has offset 1).

The definition of A221145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221145.P16927418842806366489

`(n+1)*A038205(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A221145

/-- `(n+1)*A038205(n)` -/
def P16927418842806366489.Spec : Prop :=
  ∀ n, P16927418842806366489.a n = A221145 (n + 1)

theorem P16927418842806366489.correct : P16927418842806366489.Spec := by
  intro n
  simp only [A221145, Nat.add_sub_cancel]

end A221145

/-! ## A221145.P18224456781401190539

`A344901(∑[n+1]+1)`
-/

namespace A221145.P18224456781401190539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344901 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221145.P18224456781401190539

namespace A221145

/-- `A344901(∑[n+1]+1)` -/
def P18224456781401190539.Spec : Prop :=
  ∀ n, P18224456781401190539.a n = A221145 (n + 1)

end A221145

/-! ## A221145.P13282904582696230432

`A038205(n)*A052938(2*n)`
-/

namespace A221145.P13282904582696230432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038205 n * A052938 (2 * n)

end

end A221145.P13282904582696230432

namespace A221145

/-- `A038205(n)*A052938(2*n)` -/
def P13282904582696230432.Spec : Prop :=
  ∀ n, P13282904582696230432.a n = A221145 (n + 1)

end A221145

/-! ## A221145.P3464220987004978473

`A038205(n)*A131732(2*n)`
-/

namespace A221145.P3464220987004978473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038205 n * A131732 (2 * n)

end

end A221145.P3464220987004978473

namespace A221145

/-- `A038205(n)*A131732(2*n)` -/
def P3464220987004978473.Spec : Prop :=
  ∀ n, P3464220987004978473.a n = A221145 (n + 1)

end A221145

/-! ## A221145.P17792858176306428465

`A038205(n+1)-A001464(n+1)`
-/

namespace A221145.P17792858176306428465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038205 (n + 1) - A001464 (n + 1)

end

end A221145.P17792858176306428465

namespace A221145

/-- `A038205(n+1)-A001464(n+1)` -/
def P17792858176306428465.Spec : Prop :=
  ∀ n, P17792858176306428465.a n = A221145 (n + 1)

end A221145

/-! ## A221145.P11375476228445717155

`A137482(n+1)-A038205(n+1)`
-/

namespace A221145.P11375476228445717155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137482 (n + 1) - A038205 (n + 1)

end

end A221145.P11375476228445717155

namespace A221145

/-- `A137482(n+1)-A038205(n+1)` -/
def P11375476228445717155.Spec : Prop :=
  ∀ n, P11375476228445717155.a n = A221145 (n + 1)

end A221145

/-!
# A221146: Table read by antidiagonals: (m+n) - (m XOR n).

The programs for A221146, the canonical program `A221146.P4369918167823876310` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221146 has offset 0).

The definition of A221146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221146.P4369918167823876310

`2*A004198(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A221146

/-- `2*A004198(n)` -/
def P4369918167823876310.Spec : Prop :=
  ∀ n, P4369918167823876310.a n = A221146 n

theorem P4369918167823876310.correct : P4369918167823876310.Spec := by
  intro n
  simp only [A221146]

end A221146

/-! ## A221146.P10244431348850290990

`∑[char[∑[n+1]]]-A003987(n)`
-/

namespace A221146.P10244431348850290990
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A003987 n

end

end A221146.P10244431348850290990

namespace A221146

/-- `∑[char[∑[n+1]]]-A003987(n)` -/
def P10244431348850290990.Spec : Prop :=
  ∀ n, P10244431348850290990.a n = A221146 n

end A221146

/-! ## A221146.P11988092412627666940

`∑[char[∑[n]]]-A280172(n+1)`
-/

namespace A221146.P11988092412627666940
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A280172 (n + 1)

end

end A221146.P11988092412627666940

namespace A221146

/-- `∑[char[∑[n]]]-A280172(n+1)` -/
def P11988092412627666940.Spec : Prop :=
  ∀ n, P11988092412627666940.a n = A221146 n

end A221146

/-! ## A221146.P8009389695868939890

`2*(∑[char[∑[n+1]]]-A003986(n))`
-/

namespace A221146.P8009389695868939890
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A003986 n)

end

end A221146.P8009389695868939890

namespace A221146

/-- `2*(∑[char[∑[n+1]]]-A003986(n))` -/
def P8009389695868939890.Spec : Prop :=
  ∀ n, P8009389695868939890.a n = A221146 n

end A221146

/-! ## A221146.P15711937909581286085

`A286108(n)-C(comp[∑[n-1]]-n, 2)`
-/

namespace A221146.P15711937909581286085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 n - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A221146.P15711937909581286085

namespace A221146

/-- `A286108(n)-C(comp[∑[n-1]]-n, 2)` -/
def P15711937909581286085.Spec : Prop :=
  ∀ n, P15711937909581286085.a n = A221146 n

end A221146

/-! ## A221146.P17418415705827174712

`2*(C(comp[∑[n]]-n, 2)-(n+1)-A099026(n))`
-/

namespace A221146.P17418415705827174712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) - A099026 n)

end

end A221146.P17418415705827174712

namespace A221146

/-- `2*(C(comp[∑[n]]-n, 2)-(n+1)-A099026(n))` -/
def P17418415705827174712.Spec : Prop :=
  ∀ n, P17418415705827174712.a n = A221146 n

end A221146

/-! ## A221146.P1942493935186670572

`A005843(A004198(n))`
-/

namespace A221146.P1942493935186670572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004198 n).toNat

end

end A221146.P1942493935186670572

namespace A221146

/-- `A005843(A004198(n))` -/
def P1942493935186670572.Spec : Prop :=
  ∀ n, P1942493935186670572.a n = A221146 n

end A221146

/-! ## A221146.P12205206778068839967

`2*A002262(A286098(n))`
-/

namespace A221146.P12205206778068839967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002262 (A286098 n).toNat

end

end A221146.P12205206778068839967

namespace A221146

/-- `2*A002262(A286098(n))` -/
def P12205206778068839967.Spec : Prop :=
  ∀ n, P12205206778068839967.a n = A221146 n

end A221146

/-! ## A221146.P13513079295384198772

`2*A292373(A054238(n))`
-/

namespace A221146.P13513079295384198772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292373 (A054238 n).toNat

end

end A221146.P13513079295384198772

namespace A221146

/-- `2*A292373(A054238(n))` -/
def P13513079295384198772.Spec : Prop :=
  ∀ n, P13513079295384198772.a n = A221146 n

end A221146

/-! ## A221146.P13750938012027044815

`2*A292373(A346453(n))`
-/

namespace A221146.P13750938012027044815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292373 (A346453 n).toNat

end

end A221146.P13750938012027044815

namespace A221146

/-- `2*A292373(A346453(n))` -/
def P13750938012027044815.Spec : Prop :=
  ∀ n, P13750938012027044815.a n = A221146 n

end A221146

/-! ## A221146.P4815171785908129266

`A286108(n)-A057944(n)`
-/

namespace A221146.P4815171785908129266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 n - A057944 n

end

end A221146.P4815171785908129266

namespace A221146

/-- `A286108(n)-A057944(n)` -/
def P4815171785908129266.Spec : Prop :=
  ∀ n, P4815171785908129266.a n = A221146 n

theorem P4815171785908129266.correct : P4815171785908129266.Spec := by
  intro n
  simp only [A221146, Nat.add_sub_cancel, A221146.P4815171785908129266.a, A221146.P4369918167823876310.a, A004198, A004198.P12357337643379645634.a, A057944, A057944.P16851463738746886639.a, A286108, A286108.P8792181165033674960.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A003986, A003986.P12926496113833734776.a, A003987, A003987.P6522273903622706452.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A221146

/-! ## A221146.P5992433749131287539

`2*(A003986(n)-A003987(n))`
-/

namespace A221146.P5992433749131287539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003986 n - A003987 n)

end

end A221146.P5992433749131287539

namespace A221146

/-- `2*(A003986(n)-A003987(n))` -/
def P5992433749131287539.Spec : Prop :=
  ∀ n, P5992433749131287539.a n = A221146 n

end A221146

/-! ## A221146.P1714288996208566818

`2*(A025581(n)-A099026(n))`
-/

namespace A221146.P1714288996208566818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A025581 n - A099026 n)

end

end A221146.P1714288996208566818

namespace A221146

/-- `2*(A025581(n)-A099026(n))` -/
def P1714288996208566818.Spec : Prop :=
  ∀ n, P1714288996208566818.a n = A221146 n

end A221146

/-! ## A221146.P1331978977717282246

`2*(A286098(n)-A057944(n))`
-/

namespace A221146.P1331978977717282246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A286098 n - A057944 n)

end

end A221146.P1331978977717282246

namespace A221146

/-- `2*(A286098(n)-A057944(n))` -/
def P1331978977717282246.Spec : Prop :=
  ∀ n, P1331978977717282246.a n = A221146 n

theorem P1331978977717282246.correct : P1331978977717282246.Spec := by
  intro n
  simp only [A221146, Nat.add_sub_cancel, A221146.P1331978977717282246.a, A221146.P4369918167823876310.a, A004198, A004198.P12357337643379645634.a, A057944, A057944.P16851463738746886639.a, A286098, A286098.P12308120415836337446.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A003986, A003986.P12926496113833734776.a, A003987, A003987.P6522273903622706452.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A221146

/-! ## A221146.P16535133077398822046

`2*(A286099(n)-A286109(n))`
-/

namespace A221146.P16535133077398822046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A286099 n - A286109 n)

end

end A221146.P16535133077398822046

namespace A221146

/-- `2*(A286099(n)-A286109(n))` -/
def P16535133077398822046.Spec : Prop :=
  ∀ n, P16535133077398822046.a n = A221146 n

end A221146

/-! ## A221146.P2903662856076712515

`2*(A286108(n)-A286098(n))`
-/

namespace A221146.P2903662856076712515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A286108 n - A286098 n)

end

end A221146.P2903662856076712515

namespace A221146

/-- `2*(A286108(n)-A286098(n))` -/
def P2903662856076712515.Spec : Prop :=
  ∀ n, P2903662856076712515.a n = A221146 n

theorem P2903662856076712515.correct : P2903662856076712515.Spec := by
  intro n
  simp only [A221146, Nat.add_sub_cancel, A221146.P2903662856076712515.a, A221146.P4369918167823876310.a, A004198, A004198.P12357337643379645634.a, A286098, A286098.P12308120415836337446.a, A286108, A286108.P8792181165033674960.a, A003986, A003986.P12926496113833734776.a, A003987, A003987.P6522273903622706452.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P17823619022233514403.a, A003056, A003056.P5318256527314048597.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A221146

/-! ## A221146.P10776672031769741709

`A002262(A286108(n))`
-/

namespace A221146.P10776672031769741709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A286108 n).toNat

end

end A221146.P10776672031769741709

namespace A221146

/-- `A002262(A286108(n))` -/
def P10776672031769741709.Spec : Prop :=
  ∀ n, P10776672031769741709.a n = A221146 n

end A221146

/-! ## A221146.P18363870677910532984

`A025581(A286109(n))`
-/

namespace A221146.P18363870677910532984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A286109 n).toNat

end

end A221146.P18363870677910532984

namespace A221146

/-- `A025581(A286109(n))` -/
def P18363870677910532984.Spec : Prop :=
  ∀ n, P18363870677910532984.a n = A221146 n

end A221146

/-! ## A221146.P5400686794080313304

`2*A025581(A099026(n)+n)`
-/

namespace A221146.P5400686794080313304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025581 (A099026 n + (n : ℤ)).toNat

end

end A221146.P5400686794080313304

namespace A221146

/-- `2*A025581(A099026(n)+n)` -/
def P5400686794080313304.Spec : Prop :=
  ∀ n, P5400686794080313304.a n = A221146 n

end A221146

/-! ## A221146.P14408745274375745346

`2*A002262(n-A268040(n))`
-/

namespace A221146.P14408745274375745346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002262 ((n : ℤ) - A268040 n).toNat

end

end A221146.P14408745274375745346

namespace A221146

/-- `2*A002262(n-A268040(n))` -/
def P14408745274375745346.Spec : Prop :=
  ∀ n, P14408745274375745346.a n = A221146 n

end A221146

/-!
# A221150: The generalized Fibonacci word f^[3].

The programs for A221150, the canonical program `A221150.P18026988847806067818` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221150 has offset 0).

The definition of A221150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221150.P18026988847806067818

`floor((n+2)/(ϕ+2))-floor((n+1)/(ϕ+2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221150

/-- `floor((n+2)/(ϕ+2))-floor((n+1)/(ϕ+2))` -/
def P18026988847806067818.Spec : Prop :=
  ∀ n, P18026988847806067818.a n = A221150 n

theorem P18026988847806067818.correct : P18026988847806067818.Spec := by
  intro n
  simp only [A221150]

end A221150

/-! ## A221150.P17405308278230459846

`xor(1, abs(Δ[ceil((n+1)/(3-ϕ))]))`
-/

namespace A221150.P17405308278230459846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (3 - Real.goldenRatio)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |f1 (n + 1) - f1 n|

end

end A221150.P17405308278230459846

namespace A221150

/-- `xor(1, abs(Δ[ceil((n+1)/(3-ϕ))]))` -/
def P17405308278230459846.Spec : Prop :=
  ∀ n, P17405308278230459846.a n = A221150 n

end A221150

/-! ## A221150.P7223313187849775299

`A130310(n)%2`
-/

namespace A221150.P7223313187849775299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130310 n) 2

end

end A221150.P7223313187849775299

namespace A221150

/-- `A130310(n)%2` -/
def P7223313187849775299.Spec : Prop :=
  ∀ n, P7223313187849775299.a n = A221150 n

end A221150

/-! ## A221150.P15405420982302778807

`4%A309198(n)`
-/

namespace A221150.P15405420982302778807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A309198 n)

end

end A221150.P15405420982302778807

namespace A221150

/-- `4%A309198(n)` -/
def P15405420982302778807.Spec : Prop :=
  ∀ n, P15405420982302778807.a n = A221150 n

end A221150

/-! ## A221150.P17600448001964135218

`char[A054770(n+1)]`
-/

namespace A221150.P17600448001964135218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221150.P17600448001964135218

namespace A221150

/-- `char[A054770(n+1)]` -/
def P17600448001964135218.Spec : Prop :=
  ∀ n, (P17600448001964135218.a n : ℤ) = A221150 n

end A221150

/-! ## A221150.P1606827259298358618

`A284387(n+1)%2`
-/

namespace A221150.P1606827259298358618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284387 (n + 1)) 2

end

end A221150.P1606827259298358618

namespace A221150

/-- `A284387(n+1)%2` -/
def P1606827259298358618.Spec : Prop :=
  ∀ n, P1606827259298358618.a n = A221150 n

end A221150

/-! ## A221150.P1837012571628062928

`char[A287775(2*n+1)]`
-/

namespace A221150.P1837012571628062928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221150.P1837012571628062928

namespace A221150

/-- `char[A287775(2*n+1)]` -/
def P1837012571628062928.Spec : Prop :=
  ∀ n, (P1837012571628062928.a n : ℤ) = A221150 n

end A221150

/-! ## A221150.P486658341312287365

`A123740(A187945(n+1))`
-/

namespace A221150.P486658341312287365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A187945 (n + 1)).toNat

end

end A221150.P486658341312287365

namespace A221150

/-- `A123740(A187945(n+1))` -/
def P486658341312287365.Spec : Prop :=
  ∀ n, P486658341312287365.a n = A221150 n

end A221150

/-! ## A221150.P2773901038282136365

`A383422(n-A383422(n))`
-/

namespace A221150.P2773901038282136365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 ((n : ℤ) - A383422 n).toNat

end

end A221150.P2773901038282136365

namespace A221150

/-- `A383422(n-A383422(n))` -/
def P2773901038282136365.Spec : Prop :=
  ∀ n, P2773901038282136365.a n = A221150 n

end A221150

/-! ## A221150.P2873624720400887190

`and(A054977(n), A130310(n))`
-/

namespace A221150.P2873624720400887190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A130310 n)

end

end A221150.P2873624720400887190

namespace A221150

/-- `and(A054977(n), A130310(n))` -/
def P2873624720400887190.Spec : Prop :=
  ∀ n, P2873624720400887190.a n = A221150 n

end A221150

/-! ## A221150.P13502082179851727883

`and(A057427(n), A130310(n))`
-/

namespace A221150.P13502082179851727883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A130310 n)

end

end A221150.P13502082179851727883

namespace A221150

/-- `and(A057427(n), A130310(n))` -/
def P13502082179851727883.Spec : Prop :=
  ∀ n, P13502082179851727883.a n = A221150 n

end A221150

/-! ## A221150.P7820182314860533228

`and(A060576(n), A130310(n))`
-/

namespace A221150.P7820182314860533228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A130310 n)

end

end A221150.P7820182314860533228

namespace A221150

/-- `and(A060576(n), A130310(n))` -/
def P7820182314860533228.Spec : Prop :=
  ∀ n, P7820182314860533228.a n = A221150 n

end A221150

/-! ## A221150.P14092580457548049766

`and(A130310(n), A157928(n))`
-/

namespace A221150.P14092580457548049766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130310 n) (A157928 n)

end

end A221150.P14092580457548049766

namespace A221150

/-- `and(A130310(n), A157928(n))` -/
def P14092580457548049766.Spec : Prop :=
  ∀ n, P14092580457548049766.a n = A221150 n

end A221150

/-! ## A221150.P15090390293893138104

`and(A130310(n), A158388(n))`
-/

namespace A221150.P15090390293893138104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130310 n) (A158388 n)

end

end A221150.P15090390293893138104

namespace A221150

/-- `and(A130310(n), A158388(n))` -/
def P15090390293893138104.Spec : Prop :=
  ∀ n, P15090390293893138104.a n = A221150 n

end A221150

/-! ## A221150.P7115228276174879952

`and(A008379(n), A284387(n+1))`
-/

namespace A221150.P7115228276174879952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008379 n) (A284387 (n + 1))

end

end A221150.P7115228276174879952

namespace A221150

/-- `and(A008379(n), A284387(n+1))` -/
def P7115228276174879952.Spec : Prop :=
  ∀ n, P7115228276174879952.a n = A221150 n

end A221150

/-! ## A221150.P9611628105561967509

`and(A016760(n), A284387(n+1))`
-/

namespace A221150.P9611628105561967509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A284387 (n + 1))

end

end A221150.P9611628105561967509

namespace A221150

/-- `and(A016760(n), A284387(n+1))` -/
def P9611628105561967509.Spec : Prop :=
  ∀ n, P9611628105561967509.a n = A221150 n

end A221150

/-! ## A221150.P2932616712199951048

`and(A016819(n), A284387(n+1))`
-/

namespace A221150.P2932616712199951048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016819 n) (A284387 (n + 1))

end

end A221150.P2932616712199951048

namespace A221150

/-- `and(A016819(n), A284387(n+1))` -/
def P2932616712199951048.Spec : Prop :=
  ∀ n, P2932616712199951048.a n = A221150 n

end A221150

/-! ## A221150.P4271641386111998953

`and(A016820(n), A284387(n+1))`
-/

namespace A221150.P4271641386111998953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A284387 (n + 1))

end

end A221150.P4271641386111998953

namespace A221150

/-- `and(A016820(n), A284387(n+1))` -/
def P4271641386111998953.Spec : Prop :=
  ∀ n, P4271641386111998953.a n = A221150 n

end A221150

/-! ## A221150.P16090934694974883934

`and(A017286(n), A284387(n+1))`
-/

namespace A221150.P16090934694974883934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A284387 (n + 1))

end

end A221150.P16090934694974883934

namespace A221150

/-- `and(A017286(n), A284387(n+1))` -/
def P16090934694974883934.Spec : Prop :=
  ∀ n, P16090934694974883934.a n = A221150 n

end A221150

/-! ## A221150.P11450142364679894143

`and(A017310(n), A284387(n+1))`
-/

namespace A221150.P11450142364679894143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017310 n) (A284387 (n + 1))

end

end A221150.P11450142364679894143

namespace A221150

/-- `and(A017310(n), A284387(n+1))` -/
def P11450142364679894143.Spec : Prop :=
  ∀ n, P11450142364679894143.a n = A221150 n

end A221150

/-!
# A221151: The generalized Fibonacci word f^[4].

The programs for A221151, the canonical program `A221151.P11228220240661356777` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221151 has offset 0).

The definition of A221151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221151.P11228220240661356777

`floor((n+2)/(ϕ+3))-floor((n+1)/(ϕ+3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221151

/-- `floor((n+2)/(ϕ+3))-floor((n+1)/(ϕ+3))` -/
def P11228220240661356777.Spec : Prop :=
  ∀ n, P11228220240661356777.a n = A221151 n

theorem P11228220240661356777.correct : P11228220240661356777.Spec := by
  intro n
  simp only [A221151]

end A221151

/-! ## A221151.P5576802520552017110

`dr(Δ[floor((n+1)/(ϕ+3))])`
-/

namespace A221151.P5576802520552017110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.goldenRatio + 3)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A221151.P5576802520552017110

namespace A221151

/-- `dr(Δ[floor((n+1)/(ϕ+3))])` -/
def P5576802520552017110.Spec : Prop :=
  ∀ n, (P5576802520552017110.a n : ℤ) = A221151 n

end A221151

/-! ## A221151.P2861140819206851835

`xor(1, char[comp[floor(n*(ϕ+3))]-1])`
-/

namespace A221151.P2861140819206851835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio + 3)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A221151.P2861140819206851835

namespace A221151

/-- `xor(1, char[comp[floor(n*(ϕ+3))]-1])` -/
def P2861140819206851835.Spec : Prop :=
  ∀ n, (P2861140819206851835.a n : ℤ) = A221151 n

end A221151

/-! ## A221151.P16344150005421805714

`char[A276855(n)-1]`
-/

namespace A221151.P16344150005421805714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221151.P16344150005421805714

namespace A221151

/-- `char[A276855(n)-1]` -/
def P16344150005421805714.Spec : Prop :=
  ∀ n, (P16344150005421805714.a n : ℤ) = A221151 n

end A221151

/-! ## A221151.P12108598955050295017

`abs(1-A287769(n+1))`
-/

namespace A221151.P12108598955050295017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A287769 (n + 1)|

end

end A221151.P12108598955050295017

namespace A221151

/-- `abs(1-A287769(n+1))` -/
def P12108598955050295017.Spec : Prop :=
  ∀ n, P12108598955050295017.a n = A221151 n

end A221151

/-! ## A221151.P17732721539539407058

`char[A287726(n+1)+1]`
-/

namespace A221151.P17732721539539407058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221151.P17732721539539407058

namespace A221151

/-- `char[A287726(n+1)+1]` -/
def P17732721539539407058.Spec : Prop :=
  ∀ n, (P17732721539539407058.a n : ℤ) = A221151 n

end A221151

/-! ## A221151.P9334018356562021979

`char[A286750(2*n+1)]`
-/

namespace A221151.P9334018356562021979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221151.P9334018356562021979

namespace A221151

/-- `char[A286750(2*n+1)]` -/
def P9334018356562021979.Spec : Prop :=
  ∀ n, (P9334018356562021979.a n : ℤ) = A221151 n

end A221151

/-! ## A221151.P5499495963917585352

`char[A003231(n+1)+n]`
-/

namespace A221151.P5499495963917585352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221151.P5499495963917585352

namespace A221151

/-- `char[A003231(n+1)+n]` -/
def P5499495963917585352.Spec : Prop :=
  ∀ n, (P5499495963917585352.a n : ℤ) = A221151 n

end A221151

/-! ## A221151.P14664002755980763730

`(1-A286749(n+1))*A287674(n+1)`
-/

namespace A221151.P14664002755980763730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A286749 (n + 1)) * A287674 (n + 1)

end

end A221151.P14664002755980763730

namespace A221151

/-- `(1-A286749(n+1))*A287674(n+1)` -/
def P14664002755980763730.Spec : Prop :=
  ∀ n, P14664002755980763730.a n = A221151 n

end A221151

/-! ## A221151.P2691839032805491738

`(1-A287722(n+1))*A287674(n+1)`
-/

namespace A221151.P2691839032805491738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A287722 (n + 1)) * A287674 (n + 1)

end

end A221151.P2691839032805491738

namespace A221151

/-- `(1-A287722(n+1))*A287674(n+1)` -/
def P2691839032805491738.Spec : Prop :=
  ∀ n, P2691839032805491738.a n = A221151 n

end A221151

/-! ## A221151.P15684212967272523702

`and(A187342(n+1)+1, A287674(n+1))`
-/

namespace A221151.P15684212967272523702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187342 (n + 1) + 1) (A287674 (n + 1))

end

end A221151.P15684212967272523702

namespace A221151

/-- `and(A187342(n+1)+1, A287674(n+1))` -/
def P15684212967272523702.Spec : Prop :=
  ∀ n, P15684212967272523702.a n = A221151 n

end A221151

/-! ## A221151.P17385433888478093886

`A058682(Δ[A287769(n+1)+n])`
-/

namespace A221151.P17385433888478093886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 (f1 (n + 1) - f1 n).toNat

end

end A221151.P17385433888478093886

namespace A221151

/-- `A058682(Δ[A287769(n+1)+n])` -/
def P17385433888478093886.Spec : Prop :=
  ∀ n, P17385433888478093886.a n = A221151 n

end A221151

/-! ## A221151.P10140084926124220786

`A287663(A286749(n+1)+n+2)`
-/

namespace A221151.P10140084926124220786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287663 (A286749 (n + 1) + (n + 2 : ℤ)).toNat

end

end A221151.P10140084926124220786

namespace A221151

/-- `A287663(A286749(n+1)+n+2)` -/
def P10140084926124220786.Spec : Prop :=
  ∀ n, P10140084926124220786.a n = A221151 n

end A221151

/-! ## A221151.P4712634139001124222

`A287663(A287663(n+1)+n+2)`
-/

namespace A221151.P4712634139001124222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287663 (A287663 (n + 1) + (n + 2 : ℤ)).toNat

end

end A221151.P4712634139001124222

namespace A221151

/-- `A287663(A287663(n+1)+n+2)` -/
def P4712634139001124222.Spec : Prop :=
  ∀ n, P4712634139001124222.a n = A221151 n

end A221151

/-! ## A221151.P10735986419555624009

`A188014(A188036(n+2)-1)`
-/

namespace A221151.P10735986419555624009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A188036 (n + 2) - 1).toNat

end

end A221151.P10735986419555624009

namespace A221151

/-- `A188014(A188036(n+2)-1)` -/
def P10735986419555624009.Spec : Prop :=
  ∀ n, P10735986419555624009.a n = A221151 n

end A221151

/-! ## A221151.P9200776429038879761

`A285680(A287769(n+1)+A285682(n+1))`
-/

namespace A221151.P9200776429038879761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285680 (A287769 (n + 1) + A285682 (n + 1)).toNat

end

end A221151.P9200776429038879761

namespace A221151

/-- `A285680(A287769(n+1)+A285682(n+1))` -/
def P9200776429038879761.Spec : Prop :=
  ∀ n, P9200776429038879761.a n = A221151 n

end A221151

/-! ## A221151.P2274864554862518771

`A285677(A285682(n+1)-A287769(n+1))`
-/

namespace A221151.P2274864554862518771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285677 (A285682 (n + 1) - A287769 (n + 1)).toNat

end

end A221151.P2274864554862518771

namespace A221151

/-- `A285677(A285682(n+1)-A287769(n+1))` -/
def P2274864554862518771.Spec : Prop :=
  ∀ n, P2274864554862518771.a n = A221151 n

end A221151

/-! ## A221151.P12362752708615204290

`A005614(A287769(n+1)+A101642(n+1))`
-/

namespace A221151.P12362752708615204290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A287769 (n + 1) + A101642 (n + 1)).toNat

end

end A221151.P12362752708615204290

namespace A221151

/-- `A005614(A287769(n+1)+A101642(n+1))` -/
def P12362752708615204290.Spec : Prop :=
  ∀ n, P12362752708615204290.a n = A221151 n

end A221151

/-!
# A221152: The generalized Fibonacci word f^[5].

The programs for A221152, the canonical program `A221152.P5523681974258958101` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221152 has offset 0).

The definition of A221152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221152.P5523681974258958101

`floor((n+2)/(ϕ+4))-floor((n+1)/(ϕ+4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221152

/-- `floor((n+2)/(ϕ+4))-floor((n+1)/(ϕ+4))` -/
def P5523681974258958101.Spec : Prop :=
  ∀ n, P5523681974258958101.a n = A221152 n

theorem P5523681974258958101.correct : P5523681974258958101.Spec := by
  intro n
  simp only [A221152]

end A221152

/-! ## A221152.P16451716638452598114

`char[record[xor(3, n)]+floor(ϕ*(n+1))]`
-/

namespace A221152.P16451716638452598114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) + ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221152.P16451716638452598114

namespace A221152

/-- `char[record[xor(3, n)]+floor(ϕ*(n+1))]` -/
def P16451716638452598114.Spec : Prop :=
  ∀ n, (P16451716638452598114.a n : ℤ) = A221152 n

end A221152

/-! ## A221152.P11195917418090047011

`char[A276855(n+1)+n]`
-/

namespace A221152.P11195917418090047011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221152.P11195917418090047011

namespace A221152

/-- `char[A276855(n+1)+n]` -/
def P11195917418090047011.Spec : Prop :=
  ∀ n, (P11195917418090047011.a n : ℤ) = A221152 n

end A221152

/-! ## A221152.P1858601694502745740

`char[A000201(n+1)+record[xor(3, n)]]`
-/

namespace A221152.P1858601694502745740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221152.P1858601694502745740

namespace A221152

/-- `char[A000201(n+1)+record[xor(3, n)]]` -/
def P1858601694502745740.Spec : Prop :=
  ∀ n, (P1858601694502745740.a n : ℤ) = A221152 n

end A221152

/-! ## A221152.P408494487620298050

`char[A051755(2*n+3)+floor(ϕ*(n+1))-1]`
-/

namespace A221152.P408494487620298050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (2 * n + 3) + (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221152.P408494487620298050

namespace A221152

/-- `char[A051755(2*n+3)+floor(ϕ*(n+1))-1]` -/
def P408494487620298050.Spec : Prop :=
  ∀ n, (P408494487620298050.a n : ℤ) = A221152 n

end A221152

/-! ## A221152.P6243886329235319531

`char[A004767(n)+A000201(n+1)]`
-/

namespace A221152.P6243886329235319531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + A000201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221152.P6243886329235319531

namespace A221152

/-- `char[A004767(n)+A000201(n+1)]` -/
def P6243886329235319531.Spec : Prop :=
  ∀ n, (P6243886329235319531.a n : ℤ) = A221152 n

end A221152

/-! ## A221152.P15107021556065095610

`char[A008486(n+1)+A003622(n+1)]`
-/

namespace A221152.P15107021556065095610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) + A003622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A221152.P15107021556065095610

namespace A221152

/-- `char[A008486(n+1)+A003622(n+1)]` -/
def P15107021556065095610.Spec : Prop :=
  ∀ n, (P15107021556065095610.a n : ℤ) = A221152 n

end A221152

/-!
# A221157: Number of compositions of the grid graph G_{4,n}.

The programs for A221157, there is no canonical definition to state claims against.
-/

/-! ## A221157.P11005197572485998443

`A110476(∑[n+3]+7)`
-/

namespace A221157.P11005197572485998443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110476 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221157.P11005197572485998443

/-!
# A221159: a(n) = Sum_{i=0..n} Stirling2(n,i)*2^(3i).

The programs for A221159, there is no canonical definition to state claims against.
-/

/-! ## A221159.P16848261705903928372

`A189233(eq[8, A002262(n)])`
-/

namespace A221159.P16848261705903928372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221159.P16848261705903928372

/-! ## A221159.P16272395547518781664

`A292860(eq[8, A025581(n)])`
-/

namespace A221159.P16272395547518781664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221159.P16272395547518781664

/-! ## A221159.P10448502862985155099

`A189233(eq[8, A144328(n+1)])`
-/

namespace A221159.P10448502862985155099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221159.P10448502862985155099

/-! ## A221159.P13190830422119566475

`A189233(eq[9, A002260(n+1)])`
-/

namespace A221159.P13190830422119566475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221159.P13190830422119566475

/-! ## A221159.P16063658653266464426

`A292860(eq[9, A004736(n+1)])`
-/

namespace A221159.P16063658653266464426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221159.P16063658653266464426

/-!
# A221160: G.f.: Sum_{n>=0} (4*n+1)^n * x^n / (1 + (4*n+1)*x)^n.

The programs for A221160, there is no canonical definition to state claims against.
-/

/-! ## A221160.P15743980546815219408

`n!*A045623(2*n)`
-/

namespace A221160.P15743980546815219408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A045623 (2 * n)

end

end A221160.P15743980546815219408

/-! ## A221160.P16581892113376221711

`A000142(n)*A045623(2*n)`
-/

namespace A221160.P16581892113376221711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A045623 (2 * n)

end

end A221160.P16581892113376221711

/-! ## A221160.P11692779908995123064

`abs(A045623(2*n)*A165233(n))`
-/

namespace A221160.P11692779908995123064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045623 (2 * n) * A165233 n|

end

end A221160.P11692779908995123064

/-! ## A221160.P3555760930787255208

`∏[A007318(∑[n]+1)]*A045623(2*n)`
-/

namespace A221160.P3555760930787255208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A045623 (2 * n)

end

end A221160.P3555760930787255208

/-! ## A221160.P5108463655546613525

`A034177(A028310(n))*A267872(n+1)`
-/

namespace A221160.P5108463655546613525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034177 (A028310 n).toNat * A267872 (n + 1)

end

end A221160.P5108463655546613525

/-!
# A221161: G.f.: Sum_{n>=0} (4*n+3)^n * x^n / (1 + (4*n+3)*x)^n.

The programs for A221161, there is no canonical definition to state claims against.
-/

/-! ## A221161.P15856026833028173074

`n!*A045891(2*n+1)`
-/

namespace A221161.P15856026833028173074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A045891 (2 * n + 1)

end

end A221161.P15856026833028173074

/-! ## A221161.P2437188480489398153

`A000142(n)*A045891(2*n+1)`
-/

namespace A221161.P2437188480489398153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A045891 (2 * n + 1)

end

end A221161.P2437188480489398153

/-! ## A221161.P16535196452881220498

`∏[A028310(n)]*A045891(2*n+1)`
-/

namespace A221161.P16535196452881220498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A045891 (2 * n + 1)

end

end A221161.P16535196452881220498

/-! ## A221161.P7034349182913132

`∏[A123108(2*n)]*A045891(2*n+1)`
-/

namespace A221161.P7034349182913132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A045891 (2 * n + 1)

end

end A221161.P7034349182913132

/-! ## A221161.P16882534169204550126

`A008279(A000096(n))*A045891(2*n+1)`
-/

namespace A221161.P16882534169204550126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A000096 n).toNat * A045891 (2 * n + 1)

end

end A221161.P16882534169204550126

/-!
# A221162: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor.

The programs for A221162, there is no canonical definition to state claims against.
-/

/-! ## A221162.P3151625252669278344

`13*a(n-1)-26*a(n-2)+a(n-3)` with `a(0)=3, a(1)=33, a(2)=352`
-/

namespace A221162.P3151625252669278344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 33, 352] fun n a =>
  13 * a (n - 1) - 26 * a (n - 2) + a (n - 3)

end

end A221162.P3151625252669278344

/-! ## A221162.P197743599247974444

`A060557(Δ[n²])`
-/

namespace A221162.P197743599247974444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A221162.P197743599247974444

/-! ## A221162.P1257646377552335088

`A028495(4*n+3)`
-/

namespace A221162.P1257646377552335088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (4 * n + 3)

end

end A221162.P1257646377552335088

/-! ## A221162.P3537863268727263298

`A077865(4*n+1)+1`
-/

namespace A221162.P3537863268727263298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077865 (4 * n + 1) + 1

end

end A221162.P3537863268727263298

/-! ## A221162.P13874669345118388341

`A187067(A004771(n))`
-/

namespace A221162.P13874669345118388341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (A004771 n).toNat

end

end A221162.P13874669345118388341

/-! ## A221162.P16748750123242412315

`A187067(A133655(n+1))`
-/

namespace A221162.P16748750123242412315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (A133655 (n + 1)).toNat

end

end A221162.P16748750123242412315

/-! ## A221162.P7449590977376167397

`A187067(A004767(2*n+1))`
-/

namespace A221162.P7449590977376167397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (A004767 (2 * n + 1)).toNat

end

end A221162.P7449590977376167397

/-! ## A221162.P14352371485555348607

`A094789(2*n+1)+A052975(2*n+1)`
-/

namespace A221162.P14352371485555348607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094789 (2 * n + 1) + A052975 (2 * n + 1)

end

end A221162.P14352371485555348607

/-! ## A221162.P17064272123902626393

`A094789(2*(n+1))-A094789(2*n+1)`
-/

namespace A221162.P17064272123902626393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094789 (2 * (n + 1)) - A094789 (2 * n + 1)

end

end A221162.P17064272123902626393

/-!
# A221163: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor.

The programs for A221163, there is no canonical definition to state claims against.
-/

/-! ## A221163.P3356653037404831959

`A221165(∑[n+2]+4)`
-/

namespace A221163.P3356653037404831959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221165 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221163.P3356653037404831959

/-! ## A221163.P5534599260243338588

`record[A023531(n)*A221165(n+4)]`
-/

namespace A221163.P5534599260243338588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A221165 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221163.P5534599260243338588

/-! ## A221163.P5622123498945969866

`record[A124744(n)*A221165(n+4)]`
-/

namespace A221163.P5622123498945969866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124744 n * A221165 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221163.P5622123498945969866

/-! ## A221163.P3531281395131617044

`record[A221165(n+4)/A051187(n+1)]`
-/

namespace A221163.P3531281395131617044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221165 (n + 4) : ℚ) / (A051187 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221163.P3531281395131617044

/-! ## A221163.P1872881220787313637

`record[gcd(A221165(n+4), A221200(n+1))]`
-/

namespace A221163.P1872881220787313637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221165 (n + 4)) (A221200 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221163.P1872881220787313637

/-!
# A221164: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor.

The programs for A221164, there is no canonical definition to state claims against.
-/

/-! ## A221164.P2698207730725114352

`A221165(A374004(n+1))`
-/

namespace A221164.P2698207730725114352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221165 (A374004 (n + 1)).toNat

end

end A221164.P2698207730725114352

/-! ## A221164.P13924568425314614248

`A221165(A141214(n)+7)`
-/

namespace A221164.P13924568425314614248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221165 (A141214 n + 7).toNat

end

end A221164.P13924568425314614248

/-! ## A221164.P14670288061257823893

`A221165(A052905(n)+9)`
-/

namespace A221164.P14670288061257823893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221165 (A052905 n + 9).toNat

end

end A221164.P14670288061257823893

/-! ## A221164.P6793054508972189320

`A221165(A055999(n)+10)`
-/

namespace A221164.P6793054508972189320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221165 (A055999 n + 10).toNat

end

end A221164.P6793054508972189320

/-!
# A221166: The infinite generalized Fibonacci word p^[2].

The programs for A221166, there is no canonical definition to state claims against.
-/

/-! ## A221166.P5794563692146689801

`∑[A060145(n)+n]%4`
-/

namespace A221166.P5794563692146689801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A221166.P5794563692146689801

/-! ## A221166.P17848393631515736832

`(∑[A284621(n+1)]-1)%4`
-/

namespace A221166.P17848393631515736832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) 4

end

end A221166.P17848393631515736832

/-! ## A221166.P4740127173512662415

`and(3, 1-∑[A288713(n+1)])`
-/

namespace A221166.P4740127173512662415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221166.P4740127173512662415

/-! ## A221166.P12471041594936022528

`(∑[2*A022418(n)]+n)%4`
-/

namespace A221166.P12471041594936022528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) 4

end

end A221166.P12471041594936022528

/-! ## A221166.P4664043791392606837

`∑[A004273(A004957(n))]%4`
-/

namespace A221166.P4664043791392606837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A221166.P4664043791392606837

/-! ## A221166.P9409568935365981780

`∑[A006257(A276855(n))]%4`
-/

namespace A221166.P9409568935365981780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A276855 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A221166.P9409568935365981780

/-! ## A221166.P5272656892942241914

`∑[A160552(A195121(n))]%4`
-/

namespace A221166.P5272656892942241914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A195121 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A221166.P5272656892942241914

/-! ## A221166.P10111032262726133242

`A010873(∑[A284621(n+1)]-1)`
-/

namespace A221166.P10111032262726133242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A221166.P10111032262726133242

/-! ## A221166.P17728284324374394047

`∑[A267881(A007066(n+1))]%4`
-/

namespace A221166.P17728284324374394047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267881 (A007066 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A221166.P17728284324374394047

/-! ## A221166.P10532185817030910627

`∑[A267873(A026356(n+1))]%4`
-/

namespace A221166.P10532185817030910627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (A026356 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A221166.P10532185817030910627

/-!
# A221167: The infinite generalized Fibonacci word p^[3].

The programs for A221167, there is no canonical definition to state claims against.
-/

/-! ## A221167.P193324378117248960

`A221169(A047227(n+2))`
-/

namespace A221167.P193324378117248960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221169 (A047227 (n + 2)).toNat

end

end A221167.P193324378117248960

/-! ## A221167.P2430417048593264619

`A221169(A047269(n+1)+2)`
-/

namespace A221167.P2430417048593264619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221169 (A047269 (n + 1) + 2).toNat

end

end A221167.P2430417048593264619

/-! ## A221167.P11400754480484883865

`A221169(A047247(n+2)-1)`
-/

namespace A221167.P11400754480484883865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221169 (A047247 (n + 2) - 1).toNat

end

end A221167.P11400754480484883865

/-! ## A221167.P614675115101147611

`A221169(eq[A221150(n+2), A221150(n+5)])`
-/

namespace A221167.P614675115101147611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221169 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A221167.P614675115101147611

/-! ## A221167.P11254792804259814517

`A221169(∑[2*A221150(n)]+n)`
-/

namespace A221167.P11254792804259814517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221169 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A221167.P11254792804259814517

/-! ## A221167.P16719518483083914844

`A221169(A047247(n+1)%A329961(n+1))`
-/

namespace A221167.P16719518483083914844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221169 (Int.tmod (A047247 (n + 1)) (A329961 (n + 1))).toNat

end

end A221167.P16719518483083914844

/-!
# A221168: The infinite generalized Fibonacci word p^[4].

The programs for A221168, there is no canonical definition to state claims against.
-/

/-! ## A221168.P14458440705714142648

`A221170(comp[a(n-2)+7])` with `a(0)=0, a(1)=1`
-/

namespace A221168.P14458440705714142648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221170 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A221168.P14458440705714142648

/-! ## A221168.P16311762452038408860

`A221170(A047305(n+1))`
-/

namespace A221168.P16311762452038408860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221170 (A047305 (n + 1)).toNat

end

end A221168.P16311762452038408860

/-! ## A221168.P13766493715770541247

`A221170(A047308(n+1))`
-/

namespace A221168.P13766493715770541247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221170 (A047308 (n + 1)).toNat

end

end A221168.P13766493715770541247

/-! ## A221168.P6623091096335862453

`A221170(A047369(n+2))`
-/

namespace A221168.P6623091096335862453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221170 (A047369 (n + 2)).toNat

end

end A221168.P6623091096335862453

/-! ## A221168.P14154227575338354278

`A221170(A047314(n+2)-1)`
-/

namespace A221168.P14154227575338354278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221170 (A047314 (n + 2) - 1).toNat

end

end A221168.P14154227575338354278

/-!
# A221169: The infinite generalized Fibonacci word p^[5].

The programs for A221169, there is no canonical definition to state claims against.
-/

/-! ## A221169.P17137451266316513819

`A221171(A047563(n+1))`
-/

namespace A221169.P17137451266316513819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (A047563 (n + 1)).toNat

end

end A221169.P17137451266316513819

/-! ## A221169.P17638429989152721777

`A221171(A047569(n+1))`
-/

namespace A221169.P17638429989152721777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (A047569 (n + 1)).toNat

end

end A221169.P17638429989152721777

/-! ## A221169.P3373520613725699618

`A221171(A047581(n+2)-1)`
-/

namespace A221169.P3373520613725699618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (A047581 (n + 2) - 1).toNat

end

end A221169.P3373520613725699618

/-! ## A221169.P14042602875350537746

`A221171(eq[A000035(n), A286049(n+1)])`
-/

namespace A221169.P14042602875350537746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A221169.P14042602875350537746

/-! ## A221169.P6370053114046314857

`A221171(record[A317613(n)])`
-/

namespace A221169.P6370053114046314857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A221169.P6370053114046314857

/-! ## A221169.P15695290423902899242

`A221171(A047593(n+1))`
-/

namespace A221169.P15695290423902899242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (A047593 (n + 1)).toNat

end

end A221169.P15695290423902899242

/-! ## A221169.P13352012254415307673

`A221171(A047422(n+1)+1)`
-/

namespace A221169.P13352012254415307673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (A047422 (n + 1) + 1).toNat

end

end A221169.P13352012254415307673

/-! ## A221169.P6347426464603360040

`A221171(A047422(n+2))`
-/

namespace A221169.P6347426464603360040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (A047422 (n + 2)).toNat

end

end A221169.P6347426464603360040

/-!
# A221170: The infinite generalized Fibonacci word p^[6].

The programs for A221170, there is no canonical definition to state claims against.
-/

/-! ## A221170.P10799852102751112079

`A220659(or(6, A024642(n)))`
-/

namespace A221170.P10799852102751112079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220659 (Int.lor 6 (A024642 n)).toNat

end

end A221170.P10799852102751112079

/-! ## A221170.P15080673581238886190

`A221171(A008554(n+1)+32)`
-/

namespace A221170.P15080673581238886190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (A008554 (n + 1) + 32).toNat

end

end A221170.P15080673581238886190

/-! ## A221170.P2001921160941767562

`and(n%2+2, A237600(A119461(n+1)))`
-/

namespace A221170.P2001921160941767562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n % 2 + 2 : ℕ) : ℤ) (A237600 (A119461 (n + 1)).toNat)

end

end A221170.P2001921160941767562

/-! ## A221170.P7952495258629650667

`A010873(∑[A004273(A024640(n)²)])`
-/

namespace A221170.P7952495258629650667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A024640 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221170.P7952495258629650667

/-! ## A221170.P5474076752289649528

`A276881(A008486(n+4))%4`
-/

namespace A221170.P5474076752289649528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276881 (A008486 (n + 4)).toNat) 4

end

end A221170.P5474076752289649528

/-!
# A221171: The infinite generalized Fibonacci word p^[7].

The programs for A221171, there is no canonical definition to state claims against.
-/

/-! ## A221171.P16015493835023243573

`A186116(or(6, n+1))-1`
-/

namespace A221171.P16015493835023243573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186116 (Nat.lor 6 (n + 1)) - 1

end

end A221171.P16015493835023243573

/-! ## A221171.P12327643755171400447

`A002262(A186116(or(6, n+1))+5)`
-/

namespace A221171.P12327643755171400447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A186116 (Nat.lor 6 (n + 1)) + 5).toNat

end

end A221171.P12327643755171400447

/-! ## A221171.P2256768984935013953

`A000040(∑[n+2])%A186116(or(6, n+1))`
-/

namespace A221171.P2256768984935013953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (∑ j ∈ Finset.range (n + 1), f1 j)) (A186116 (Nat.lor 6 (n + 1)))

end

end A221171.P2256768984935013953

/-! ## A221171.P17309243481724459489

`A000032(2^∑{e}[2*n, #])%A186116(or(6, n+1))`
-/

namespace A221171.P17309243481724459489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))) (A186116 (Nat.lor 6 (n + 1)))

end

end A221171.P17309243481724459489

/-!
# A221172: a(0)=-2, a(1)=3; thereafter a(n) = 2*a(n-1) + a(n-2).

The programs for A221172, the canonical program `A221172.P17748078903909291642` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221172 has offset 0).

The definition of A221172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A221172.P17748078903909291642`, by `A221172.P17748078903909291642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221172.P17748078903909291642

`2*a(n-1)+a(n-2)` with `a(0)=-2, a(1)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221172

/-- `2*a(n-1)+a(n-2)` -/
def P17748078903909291642.Spec : Prop :=
  ∀ n, P17748078903909291642.a n = A221172 n

theorem P17748078903909291642.correct : P17748078903909291642.Spec := by
  intro n
  simp only [A221172]

end A221172

/-! ## A221172.P17307723091923126179

`7*A000129(n)-2*A000129(n+1)`
-/

namespace A221172.P17307723091923126179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000129 n - 2 * A000129 (n + 1)

end

end A221172.P17307723091923126179

namespace A221172

/-- `7*A000129(n)-2*A000129(n+1)` -/
def P17307723091923126179.Spec : Prop :=
  ∀ n, P17307723091923126179.a n = A221172 n

end A221172

/-! ## A221172.P11349810921179420187

`ogf((2-7x)/(-1+2x+x^2))`
-/

namespace A221172.P11349810921179420187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 7] [1, -2, -1] n

end

end A221172.P11349810921179420187

namespace A221172

/-- `ogf((2-7x)/(-1+2x+x^2))` -/
def P11349810921179420187.Spec : Prop :=
  ∀ n, P11349810921179420187.a n = A221172 n

end A221172

/-! ## A221172.P1159465743397134645

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=-2, a(1)=3`
-/

namespace A221172.P1159465743397134645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, 3] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A221172.P1159465743397134645

namespace A221172

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P1159465743397134645.Spec : Prop :=
  ∀ n, P1159465743397134645.a n = A221172 n

theorem P1159465743397134645.correct : P1159465743397134645.Spec := by
  intro n
  simp only [A221172, Nat.add_sub_cancel, A221172.P1159465743397134645.a, A221172.P17748078903909291642.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A221172

/-! ## A221172.P518491534878175993

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=-2, a(1)=3`
-/

namespace A221172.P518491534878175993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, 3] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A221172.P518491534878175993

namespace A221172

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P518491534878175993.Spec : Prop :=
  ∀ n, P518491534878175993.a n = A221172 n

theorem P518491534878175993.correct : P518491534878175993.Spec := by
  intro n
  simp only [A221172, Nat.add_sub_cancel, A221172.P518491534878175993.a, A221172.P17748078903909291642.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A221172

/-! ## A221172.P6316336996221621236

`2*A078343(n)-A000129(n)`
-/

namespace A221172.P6316336996221621236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078343 n - A000129 n

end

end A221172.P6316336996221621236

namespace A221172

/-- `2*A078343(n)-A000129(n)` -/
def P6316336996221621236.Spec : Prop :=
  ∀ n, P6316336996221621236.a n = A221172 n

end A221172

/-! ## A221172.P1799976005538236771

`A000129(n)+A221173(n)-A078343(n)`
-/

namespace A221172.P1799976005538236771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A221173 n - A078343 n)

end

end A221172.P1799976005538236771

namespace A221172

/-- `A000129(n)+A221173(n)-A078343(n)` -/
def P1799976005538236771.Spec : Prop :=
  ∀ n, P1799976005538236771.a n = A221172 n

end A221172

/-! ## A221172.P14061589853295806987

`A078343(n)+A221174(n)-A221173(n)`
-/

namespace A221172.P14061589853295806987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + (A221174 n - A221173 n)

end

end A221172.P14061589853295806987

namespace A221172

/-- `A078343(n)+A221174(n)-A221173(n)` -/
def P14061589853295806987.Spec : Prop :=
  ∀ n, P14061589853295806987.a n = A221172 n

end A221172

/-! ## A221172.P7919757774076661500

`A000129(n+1)+A135532(n)-A002203(n)`
-/

namespace A221172.P7919757774076661500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A135532 n - A002203 n)

end

end A221172.P7919757774076661500

namespace A221172

/-- `A000129(n+1)+A135532(n)-A002203(n)` -/
def P7919757774076661500.Spec : Prop :=
  ∀ n, P7919757774076661500.a n = A221172 n

end A221172

/-! ## A221172.P17361645774359511425

`A002965(2*n)+A266505(2*n)-A002965(2*n+1)`
-/

namespace A221172.P17361645774359511425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) + (A266505 (2 * n) - A002965 (2 * n + 1))

end

end A221172.P17361645774359511425

namespace A221172

/-- `A002965(2*n)+A266505(2*n)-A002965(2*n+1)` -/
def P17361645774359511425.Spec : Prop :=
  ∀ n, P17361645774359511425.a n = A221172 n

end A221172

/-! ## A221172.P7559990006628172759

`A048695(n)-A135532(n+1)`
-/

namespace A221172.P7559990006628172759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048695 n - A135532 (n + 1)

end

end A221172.P7559990006628172759

namespace A221172

/-- `A048695(n)-A135532(n+1)` -/
def P7559990006628172759.Spec : Prop :=
  ∀ n, P7559990006628172759.a n = A221172 n

end A221172

/-! ## A221172.P2246894459751527871

`(A221174(n)+A000129(n))/2`
-/

namespace A221172.P2246894459751527871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221174 n + A000129 n : ℚ) / 2

end

end A221172.P2246894459751527871

namespace A221172

/-- `(A221174(n)+A000129(n))/2` -/
def P2246894459751527871.Spec : Prop :=
  ∀ n, P2246894459751527871.a n = (A221172 n : ℚ)

end A221172

/-! ## A221172.P2521168997893505337

`(A221173(n)+A078343(n))/2`
-/

namespace A221172.P2521168997893505337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221173 n + A078343 n : ℚ) / 2

end

end A221172.P2521168997893505337

namespace A221172

/-- `(A221173(n)+A078343(n))/2` -/
def P2521168997893505337.Spec : Prop :=
  ∀ n, P2521168997893505337.a n = (A221172 n : ℚ)

end A221172

/-! ## A221172.P6992987855575833489

`2*A221173(n)-A221174(n)`
-/

namespace A221172.P6992987855575833489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221173 n - A221174 n

end

end A221172.P6992987855575833489

namespace A221172

/-- `2*A221173(n)-A221174(n)` -/
def P6992987855575833489.Spec : Prop :=
  ∀ n, P6992987855575833489.a n = A221172 n

end A221172

/-! ## A221172.P9965163844865553590

`A048693(n)-3*A001333(n)`
-/

namespace A221172.P9965163844865553590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n - 3 * A001333 n

end

end A221172.P9965163844865553590

namespace A221172

/-- `A048693(n)-3*A001333(n)` -/
def P9965163844865553590.Spec : Prop :=
  ∀ n, P9965163844865553590.a n = A221172 n

end A221172

/-! ## A221172.P631153288941783490

`A048693(n)-(A002203(n)+A001333(n))`
-/

namespace A221172.P631153288941783490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n - (A002203 n + A001333 n)

end

end A221172.P631153288941783490

namespace A221172

/-- `A048693(n)-(A002203(n)+A001333(n))` -/
def P631153288941783490.Spec : Prop :=
  ∀ n, P631153288941783490.a n = A221172 n

end A221172

/-! ## A221172.P2064673609673800372

`A000129(n)+A221175(n)-A221173(n)`
-/

namespace A221172.P2064673609673800372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A221175 n - A221173 n)

end

end A221172.P2064673609673800372

namespace A221172

/-- `A000129(n)+A221175(n)-A221173(n)` -/
def P2064673609673800372.Spec : Prop :=
  ∀ n, P2064673609673800372.a n = A221172 n

end A221172

/-! ## A221172.P16588981872888861563

`A078343(n)+A221175(n)-A221174(n)`
-/

namespace A221172.P16588981872888861563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + (A221175 n - A221174 n)

end

end A221172.P16588981872888861563

namespace A221172

/-- `A078343(n)+A221175(n)-A221174(n)` -/
def P16588981872888861563.Spec : Prop :=
  ∀ n, P16588981872888861563.a n = A221172 n

end A221172

/-! ## A221172.P9256512916179627299

`A221173(n)+A221174(n)-A221175(n)`
-/

namespace A221172.P9256512916179627299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 n + (A221174 n - A221175 n)

end

end A221172.P9256512916179627299

namespace A221172

/-- `A221173(n)+A221174(n)-A221175(n)` -/
def P9256512916179627299.Spec : Prop :=
  ∀ n, P9256512916179627299.a n = A221172 n

end A221172

/-! ## A221172.P3080512485052117503

`A000129(n)+Δ[A002203(n)]-A002203(n)`
-/

namespace A221172.P3080512485052117503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (f1 (n + 1) - f1 n - A002203 n)

end

end A221172.P3080512485052117503

namespace A221172

/-- `A000129(n)+Δ[A002203(n)]-A002203(n)` -/
def P3080512485052117503.Spec : Prop :=
  ∀ n, P3080512485052117503.a n = A221172 n

end A221172

/-!
# A221173: a(0)=-3, a(1)=4; thereafter a(n) = 2*a(n-1) + a(n-2).

The programs for A221173, the canonical program `A221173.P527901785213544140` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221173 has offset 0).

The definition of A221173 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A221173.P527901785213544140`, by `A221173.P527901785213544140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221173.P527901785213544140

`2*a(n-1)+a(n-2)` with `a(0)=-3, a(1)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221173

/-- `2*a(n-1)+a(n-2)` -/
def P527901785213544140.Spec : Prop :=
  ∀ n, P527901785213544140.a n = A221173 n

theorem P527901785213544140.correct : P527901785213544140.Spec := by
  intro n
  simp only [A221173]

end A221173

/-! ## A221173.P5138844458532844587

`10*A000129(n)-3*A000129(n+1)`
-/

namespace A221173.P5138844458532844587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000129 n - 3 * A000129 (n + 1)

end

end A221173.P5138844458532844587

namespace A221173

/-- `10*A000129(n)-3*A000129(n+1)` -/
def P5138844458532844587.Spec : Prop :=
  ∀ n, P5138844458532844587.a n = A221173 n

end A221173

/-! ## A221173.P8207819283198910851

`ogf((3-10x)/(-1+2x+x^2))`
-/

namespace A221173.P8207819283198910851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-3, 10] [1, -2, -1] n

end

end A221173.P8207819283198910851

namespace A221173

/-- `ogf((3-10x)/(-1+2x+x^2))` -/
def P8207819283198910851.Spec : Prop :=
  ∀ n, P8207819283198910851.a n = A221173 n

end A221173

/-! ## A221173.P7595488129933792353

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=-3, a(1)=4`
-/

namespace A221173.P7595488129933792353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-3, 4] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A221173.P7595488129933792353

namespace A221173

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P7595488129933792353.Spec : Prop :=
  ∀ n, P7595488129933792353.a n = A221173 n

theorem P7595488129933792353.correct : P7595488129933792353.Spec := by
  intro n
  simp only [A221173, Nat.add_sub_cancel, A221173.P7595488129933792353.a, A221173.P527901785213544140.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A221173

/-! ## A221173.P580105260925115091

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=-3, a(1)=4`
-/

namespace A221173.P580105260925115091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-3, 4] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A221173.P580105260925115091

namespace A221173

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P580105260925115091.Spec : Prop :=
  ∀ n, P580105260925115091.a n = A221173 n

theorem P580105260925115091.correct : P580105260925115091.Spec := by
  intro n
  simp only [A221173, Nat.add_sub_cancel, A221173.P580105260925115091.a, A221173.P527901785213544140.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A221173

/-! ## A221173.P4206116772054087395

`A000129(n)+A221174(n)-A078343(n)`
-/

namespace A221173.P4206116772054087395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A221174 n - A078343 n)

end

end A221173.P4206116772054087395

namespace A221173

/-- `A000129(n)+A221174(n)-A078343(n)` -/
def P4206116772054087395.Spec : Prop :=
  ∀ n, P4206116772054087395.a n = A221173 n

end A221173

/-! ## A221173.P11262801976792564765

`A078343(n)+A221172(n)-A000129(n)`
-/

namespace A221173.P11262801976792564765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + (A221172 n - A000129 n)

end

end A221173.P11262801976792564765

namespace A221173

/-- `A078343(n)+A221172(n)-A000129(n)` -/
def P11262801976792564765.Spec : Prop :=
  ∀ n, P11262801976792564765.a n = A221173 n

end A221173

/-! ## A221173.P12247327461802724858

`A078343(n)+A221174(n)-A221172(n)`
-/

namespace A221173.P12247327461802724858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + (A221174 n - A221172 n)

end

end A221173.P12247327461802724858

namespace A221173

/-- `A078343(n)+A221174(n)-A221172(n)` -/
def P12247327461802724858.Spec : Prop :=
  ∀ n, P12247327461802724858.a n = A221173 n

end A221173

/-! ## A221173.P3364389243776995762

`A135532(n)+A135532(n)-A000129(n+1)`
-/

namespace A221173.P3364389243776995762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 n + (A135532 n - A000129 (n + 1))

end

end A221173.P3364389243776995762

namespace A221173

/-- `A135532(n)+A135532(n)-A000129(n+1)` -/
def P3364389243776995762.Spec : Prop :=
  ∀ n, P3364389243776995762.a n = A221173 n

end A221173

/-! ## A221173.P12356843105077643593

`2*A221172(n)-A078343(n)`
-/

namespace A221173.P12356843105077643593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221172 n - A078343 n

end

end A221173.P12356843105077643593

namespace A221173

/-- `2*A221172(n)-A078343(n)` -/
def P12356843105077643593.Spec : Prop :=
  ∀ n, P12356843105077643593.a n = A221173 n

end A221173

/-! ## A221173.P7134332758498990326

`(A221175(n)+A078343(n))/2`
-/

namespace A221173.P7134332758498990326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221175 n + A078343 n : ℚ) / 2

end

end A221173.P7134332758498990326

namespace A221173

/-- `(A221175(n)+A078343(n))/2` -/
def P7134332758498990326.Spec : Prop :=
  ∀ n, P7134332758498990326.a n = (A221173 n : ℚ)

end A221173

/-! ## A221173.P16229261403824181034

`2*A221174(n)-A221175(n)`
-/

namespace A221173.P16229261403824181034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221174 n - A221175 n

end

end A221173.P16229261403824181034

namespace A221173

/-- `2*A221174(n)-A221175(n)` -/
def P16229261403824181034.Spec : Prop :=
  ∀ n, P16229261403824181034.a n = A221173 n

end A221173

/-! ## A221173.P15834546490287566295

`(A221174(n)+A221172(n))/2`
-/

namespace A221173.P15834546490287566295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221174 n + A221172 n : ℚ) / 2

end

end A221173.P15834546490287566295

namespace A221173

/-- `(A221174(n)+A221172(n))/2` -/
def P15834546490287566295.Spec : Prop :=
  ∀ n, P15834546490287566295.a n = (A221173 n : ℚ)

end A221173

/-! ## A221173.P8586657054175922923

`A000129(n)+A221175(n)-A221172(n)`
-/

namespace A221173.P8586657054175922923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A221175 n - A221172 n)

end

end A221173.P8586657054175922923

namespace A221173

/-- `A000129(n)+A221175(n)-A221172(n)` -/
def P8586657054175922923.Spec : Prop :=
  ∀ n, P8586657054175922923.a n = A221173 n

end A221173

/-! ## A221173.P906065760295207918

`A221172(n)+A221175(n)-A221174(n)`
-/

namespace A221173.P906065760295207918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n + (A221175 n - A221174 n)

end

end A221173.P906065760295207918

namespace A221173

/-- `A221172(n)+A221175(n)-A221174(n)` -/
def P906065760295207918.Spec : Prop :=
  ∀ n, P906065760295207918.a n = A221173 n

end A221173

/-! ## A221173.P15863643785339270230

`A048655(n)+A048655(n)-A221174(n+1)`
-/

namespace A221173.P15863643785339270230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + (A048655 n - A221174 (n + 1))

end

end A221173.P15863643785339270230

namespace A221173

/-- `A048655(n)+A048655(n)-A221174(n+1)` -/
def P15863643785339270230.Spec : Prop :=
  ∀ n, P15863643785339270230.a n = A221173 n

end A221173

/-! ## A221173.P17016300313573921322

`A048693(n)+A135532(n)-A135532(n+1)`
-/

namespace A221173.P17016300313573921322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n + (A135532 n - A135532 (n + 1))

end

end A221173.P17016300313573921322

namespace A221173

/-- `A048693(n)+A135532(n)-A135532(n+1)` -/
def P17016300313573921322.Spec : Prop :=
  ∀ n, P17016300313573921322.a n = A221173 n

end A221173

/-! ## A221173.P3294432564373498885

`A078343(n+1)+A221174(n)-A048654(n)`
-/

namespace A221173.P3294432564373498885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (n + 1) + (A221174 n - A048654 n)

end

end A221173.P3294432564373498885

namespace A221173

/-- `A078343(n+1)+A221174(n)-A048654(n)` -/
def P3294432564373498885.Spec : Prop :=
  ∀ n, P3294432564373498885.a n = A221173 n

end A221173

/-! ## A221173.P7115920096150147616

`A048654(n)+A221172(n)-A078343(n+1)`
-/

namespace A221173.P7115920096150147616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (A221172 n - A078343 (n + 1))

end

end A221173.P7115920096150147616

namespace A221173

/-- `A048654(n)+A221172(n)-A078343(n+1)` -/
def P7115920096150147616.Spec : Prop :=
  ∀ n, P7115920096150147616.a n = A221173 n

end A221173

/-! ## A221173.P2753438928189239408

`A048696(n)+A048696(n)-A105082(n)`
-/

namespace A221173.P2753438928189239408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n + (A048696 n - A105082 n)

end

end A221173.P2753438928189239408

namespace A221173

/-- `A048696(n)+A048696(n)-A105082(n)` -/
def P2753438928189239408.Spec : Prop :=
  ∀ n, P2753438928189239408.a n = A221173 n

end A221173

/-!
# A221174: a(0)=-4, a(1)=5; thereafter a(n) = 2*a(n-1) + a(n-2).

The programs for A221174, the canonical program `A221174.P4972038113141812308` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221174 has offset 0).

The definition of A221174 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A221174.P4972038113141812308`, by `A221174.P4972038113141812308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221174.P4972038113141812308

`2*a(n-1)+a(n-2)` with `a(0)=-4, a(1)=5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221174

/-- `2*a(n-1)+a(n-2)` -/
def P4972038113141812308.Spec : Prop :=
  ∀ n, P4972038113141812308.a n = A221174 n

theorem P4972038113141812308.correct : P4972038113141812308.Spec := by
  intro n
  simp only [A221174]

end A221174

/-! ## A221174.P14095737040939248899

`13*A000129(n)-4*A000129(n+1)`
-/

namespace A221174.P14095737040939248899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000129 n - 4 * A000129 (n + 1)

end

end A221174.P14095737040939248899

namespace A221174

/-- `13*A000129(n)-4*A000129(n+1)` -/
def P14095737040939248899.Spec : Prop :=
  ∀ n, P14095737040939248899.a n = A221174 n

end A221174

/-! ## A221174.P9366403103070505024

`ogf((4-13x)/(-1+2x+x^2))`
-/

namespace A221174.P9366403103070505024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-4, 13] [1, -2, -1] n

end

end A221174.P9366403103070505024

namespace A221174

/-- `ogf((4-13x)/(-1+2x+x^2))` -/
def P9366403103070505024.Spec : Prop :=
  ∀ n, P9366403103070505024.a n = A221174 n

end A221174

/-! ## A221174.P13754881876717979696

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=-4, a(1)=5`
-/

namespace A221174.P13754881876717979696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-4, 5] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A221174.P13754881876717979696

namespace A221174

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P13754881876717979696.Spec : Prop :=
  ∀ n, P13754881876717979696.a n = A221174 n

theorem P13754881876717979696.correct : P13754881876717979696.Spec := by
  intro n
  simp only [A221174, Nat.add_sub_cancel, A221174.P13754881876717979696.a, A221174.P4972038113141812308.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A221174

/-! ## A221174.P14532456012273013567

`A078343(n)+A221173(n)-A000129(n)`
-/

namespace A221174.P14532456012273013567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + (A221173 n - A000129 n)

end

end A221174.P14532456012273013567

namespace A221174

/-- `A078343(n)+A221173(n)-A000129(n)` -/
def P14532456012273013567.Spec : Prop :=
  ∀ n, P14532456012273013567.a n = A221174 n

end A221174

/-! ## A221174.P4964804261529851356

`A221172(n)+A221172(n)-A000129(n)`
-/

namespace A221174.P4964804261529851356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n + (A221172 n - A000129 n)

end

end A221174.P4964804261529851356

namespace A221174

/-- `A221172(n)+A221172(n)-A000129(n)` -/
def P4964804261529851356.Spec : Prop :=
  ∀ n, P4964804261529851356.a n = A221174 n

end A221174

/-! ## A221174.P10648825582874700507

`A221172(n)+A221173(n)-A078343(n)`
-/

namespace A221174.P10648825582874700507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n + (A221173 n - A078343 n)

end

end A221174.P10648825582874700507

namespace A221174

/-- `A221172(n)+A221173(n)-A078343(n)` -/
def P10648825582874700507.Spec : Prop :=
  ∀ n, P10648825582874700507.a n = A221174 n

end A221174

/-! ## A221174.P15576825246081947355

`A266505(2*n)+A266505(2*n)-A266504(2*n)`
-/

namespace A221174.P15576825246081947355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (2 * n) + (A266505 (2 * n) - A266504 (2 * n))

end

end A221174.P15576825246081947355

namespace A221174

/-- `A266505(2*n)+A266505(2*n)-A266504(2*n)` -/
def P15576825246081947355.Spec : Prop :=
  ∀ n, P15576825246081947355.a n = A221174 n

end A221174

/-! ## A221174.P1213594982095523337

`A048694(n)-A276849(n)`
-/

namespace A221174.P1213594982095523337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 n - A276849 n

end

end A221174.P1213594982095523337

namespace A221174

/-- `A048694(n)-A276849(n)` -/
def P1213594982095523337.Spec : Prop :=
  ∀ n, P1213594982095523337.a n = A221174 n

end A221174

/-! ## A221174.P802733984983145390

`2*A221172(n)-A000129(n)`
-/

namespace A221174.P802733984983145390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221172 n - A000129 n

end

end A221174.P802733984983145390

namespace A221174

/-- `2*A221172(n)-A000129(n)` -/
def P802733984983145390.Spec : Prop :=
  ∀ n, P802733984983145390.a n = A221174 n

end A221174

/-! ## A221174.P9512126736083089538

`2*A221173(n)-A221172(n)`
-/

namespace A221174.P9512126736083089538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221173 n - A221172 n

end

end A221174.P9512126736083089538

namespace A221174

/-- `2*A221173(n)-A221172(n)` -/
def P9512126736083089538.Spec : Prop :=
  ∀ n, P9512126736083089538.a n = A221174 n

end A221174

/-! ## A221174.P6495213470906471023

`(A221175(n)+A221173(n))/2`
-/

namespace A221174.P6495213470906471023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221175 n + A221173 n : ℚ) / 2

end

end A221174.P6495213470906471023

namespace A221174

/-- `(A221175(n)+A221173(n))/2` -/
def P6495213470906471023.Spec : Prop :=
  ∀ n, P6495213470906471023.a n = (A221174 n : ℚ)

end A221174

/-! ## A221174.P15640697339980959574

`3*A078343(n)-A001333(n)`
-/

namespace A221174.P15640697339980959574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A078343 n - A001333 n

end

end A221174.P15640697339980959574

namespace A221174

/-- `3*A078343(n)-A001333(n)` -/
def P15640697339980959574.Spec : Prop :=
  ∀ n, P15640697339980959574.a n = A221174 n

end A221174

/-! ## A221174.P7195941639565783378

`2*A266505(2*n)-A266504(2*n)`
-/

namespace A221174.P7195941639565783378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266505 (2 * n) - A266504 (2 * n)

end

end A221174.P7195941639565783378

namespace A221174

/-- `2*A266505(2*n)-A266504(2*n)` -/
def P7195941639565783378.Spec : Prop :=
  ∀ n, P7195941639565783378.a n = A221174 n

end A221174

/-! ## A221174.P8398279181177412644

`A000129(n)+A221175(n)-A078343(n)`
-/

namespace A221174.P8398279181177412644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A221175 n - A078343 n)

end

end A221174.P8398279181177412644

namespace A221174

/-- `A000129(n)+A221175(n)-A078343(n)` -/
def P8398279181177412644.Spec : Prop :=
  ∀ n, P8398279181177412644.a n = A221174 n

end A221174

/-! ## A221174.P16245650872092997166

`A078343(n)+A221175(n)-A221172(n)`
-/

namespace A221174.P16245650872092997166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + (A221175 n - A221172 n)

end

end A221174.P16245650872092997166

namespace A221174

/-- `A078343(n)+A221175(n)-A221172(n)` -/
def P16245650872092997166.Spec : Prop :=
  ∀ n, P16245650872092997166.a n = A221174 n

end A221174

/-! ## A221174.P10928782057197485211

`A221172(n)+A221175(n)-A221173(n)`
-/

namespace A221174.P10928782057197485211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n + (A221175 n - A221173 n)

end

end A221174.P10928782057197485211

namespace A221174

/-- `A221172(n)+A221175(n)-A221173(n)` -/
def P10928782057197485211.Spec : Prop :=
  ∀ n, P10928782057197485211.a n = A221174 n

end A221174

/-! ## A221174.P12645751171945646407

`A078343(n+1)+A221175(n)-A048654(n)`
-/

namespace A221174.P12645751171945646407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (n + 1) + (A221175 n - A048654 n)

end

end A221174.P12645751171945646407

namespace A221174

/-- `A078343(n+1)+A221175(n)-A048654(n)` -/
def P12645751171945646407.Spec : Prop :=
  ∀ n, P12645751171945646407.a n = A221174 n

end A221174

/-! ## A221174.P13909615787636421189

`A048654(n)+A221173(n)-A078343(n+1)`
-/

namespace A221174.P13909615787636421189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (A221173 n - A078343 (n + 1))

end

end A221174.P13909615787636421189

namespace A221174

/-- `A048654(n)+A221173(n)-A078343(n+1)` -/
def P13909615787636421189.Spec : Prop :=
  ∀ n, P13909615787636421189.a n = A221174 n

end A221174

/-! ## A221174.P12743555438172353764

`A048696(n)+A048696(n)-A048693(n+1)`
-/

namespace A221174.P12743555438172353764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n + (A048696 n - A048693 (n + 1))

end

end A221174.P12743555438172353764

namespace A221174

/-- `A048696(n)+A048696(n)-A048693(n+1)` -/
def P12743555438172353764.Spec : Prop :=
  ∀ n, P12743555438172353764.a n = A221174 n

end A221174

/-!
# A221175: a(0)=-5, a(1)=6; thereafter a(n) = 2*a(n-1) + a(n-2).

The programs for A221175, the canonical program `A221175.P10304542904889826448` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221175 has offset 0).

The definition of A221175 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A221175.P10304542904889826448`, by `A221175.P10304542904889826448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221175.P10304542904889826448

`2*a(n-1)+a(n-2)` with `a(0)=-5, a(1)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221175

/-- `2*a(n-1)+a(n-2)` -/
def P10304542904889826448.Spec : Prop :=
  ∀ n, P10304542904889826448.a n = A221175 n

theorem P10304542904889826448.correct : P10304542904889826448.Spec := by
  intro n
  simp only [A221175]

end A221175

/-! ## A221175.P4897079667778287165

`16*A000129(n)-5*A000129(n+1)`
-/

namespace A221175.P4897079667778287165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000129 n - 5 * A000129 (n + 1)

end

end A221175.P4897079667778287165

namespace A221175

/-- `16*A000129(n)-5*A000129(n+1)` -/
def P4897079667778287165.Spec : Prop :=
  ∀ n, P4897079667778287165.a n = A221175 n

end A221175

/-! ## A221175.P3476001314547106487

`ogf((5-16x)/(-1+2x+x^2))`
-/

namespace A221175.P3476001314547106487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-5, 16] [1, -2, -1] n

end

end A221175.P3476001314547106487

namespace A221175

/-- `ogf((5-16x)/(-1+2x+x^2))` -/
def P3476001314547106487.Spec : Prop :=
  ∀ n, P3476001314547106487.a n = A221175 n

end A221175

/-! ## A221175.P887208644918008711

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=-5, a(1)=6`
-/

namespace A221175.P887208644918008711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-5, 6] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A221175.P887208644918008711

namespace A221175

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P887208644918008711.Spec : Prop :=
  ∀ n, P887208644918008711.a n = A221175 n

theorem P887208644918008711.correct : P887208644918008711.Spec := by
  intro n
  simp only [A221175, Nat.add_sub_cancel, A221175.P887208644918008711.a, A221175.P10304542904889826448.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A221175

/-! ## A221175.P3305218142925862814

`2*A221173(n)-A078343(n)`
-/

namespace A221175.P3305218142925862814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221173 n - A078343 n

end

end A221175.P3305218142925862814

namespace A221175

/-- `2*A221173(n)-A078343(n)` -/
def P3305218142925862814.Spec : Prop :=
  ∀ n, P3305218142925862814.a n = A221175 n

end A221175

/-! ## A221175.P10454513767959422791

`2*A221174(n)-A221173(n)`
-/

namespace A221175.P10454513767959422791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221174 n - A221173 n

end

end A221175.P10454513767959422791

namespace A221175

/-- `2*A221174(n)-A221173(n)` -/
def P10454513767959422791.Spec : Prop :=
  ∀ n, P10454513767959422791.a n = A221175 n

end A221175

/-! ## A221175.P5629324512319096779

`4*A078343(n)-A000129(n+1)`
-/

namespace A221175.P5629324512319096779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A078343 n - A000129 (n + 1)

end

end A221175.P5629324512319096779

namespace A221175

/-- `4*A078343(n)-A000129(n+1)` -/
def P5629324512319096779.Spec : Prop :=
  ∀ n, P5629324512319096779.a n = A221175 n

end A221175

/-! ## A221175.P6609172963229681703

`A078343(n)+A221174(n)-A000129(n)`
-/

namespace A221175.P6609172963229681703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + (A221174 n - A000129 n)

end

end A221175.P6609172963229681703

namespace A221175

/-- `A078343(n)+A221174(n)-A000129(n)` -/
def P6609172963229681703.Spec : Prop :=
  ∀ n, P6609172963229681703.a n = A221175 n

end A221175

/-! ## A221175.P1611967935621589806

`A221172(n)+A221173(n)-A000129(n)`
-/

namespace A221175.P1611967935621589806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n + (A221173 n - A000129 n)

end

end A221175.P1611967935621589806

namespace A221175

/-- `A221172(n)+A221173(n)-A000129(n)` -/
def P1611967935621589806.Spec : Prop :=
  ∀ n, P1611967935621589806.a n = A221175 n

end A221175

/-! ## A221175.P6501406341107648450

`A221172(n)+A221174(n)-A078343(n)`
-/

namespace A221175.P6501406341107648450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n + (A221174 n - A078343 n)

end

end A221175.P6501406341107648450

namespace A221175

/-- `A221172(n)+A221174(n)-A078343(n)` -/
def P6501406341107648450.Spec : Prop :=
  ∀ n, P6501406341107648450.a n = A221175 n

end A221175

/-! ## A221175.P4260093425286230925

`A221173(n)+A221174(n)-A221172(n)`
-/

namespace A221175.P4260093425286230925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 n + (A221174 n - A221172 n)

end

end A221175.P4260093425286230925

namespace A221175

/-- `A221173(n)+A221174(n)-A221172(n)` -/
def P4260093425286230925.Spec : Prop :=
  ∀ n, P4260093425286230925.a n = A221175 n

end A221175

/-! ## A221175.P4835330814106960628

`A048655(n)+A078343(n)-Δ[A221172(n)]`
-/

namespace A221175.P4835330814106960628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + (A078343 n - (f1 (n + 1) - f1 n))

end

end A221175.P4835330814106960628

namespace A221175

/-- `A048655(n)+A078343(n)-Δ[A221172(n)]` -/
def P4835330814106960628.Spec : Prop :=
  ∀ n, P4835330814106960628.a n = A221175 n

end A221175

/-! ## A221175.P2487644985015914216

`A048654(n)+A221174(n)-A078343(n+1)`
-/

namespace A221175.P2487644985015914216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (A221174 n - A078343 (n + 1))

end

end A221175.P2487644985015914216

namespace A221175

/-- `A048654(n)+A221174(n)-A078343(n+1)` -/
def P2487644985015914216.Spec : Prop :=
  ∀ n, P2487644985015914216.a n = A221175 n

end A221175

/-! ## A221175.P4482691067593796668

`12*A000129(n)-A221174(n+1)`
-/

namespace A221175.P4482691067593796668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000129 n - A221174 (n + 1)

end

end A221175.P4482691067593796668

namespace A221175

/-- `12*A000129(n)-A221174(n+1)` -/
def P4482691067593796668.Spec : Prop :=
  ∀ n, P4482691067593796668.a n = A221175 n

end A221175

/-! ## A221175.P11014380214508262022

`A000129(n)+Δ[A048655(n)-A221174(n)]`
-/

namespace A221175.P11014380214508262022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n - A221174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (f1 (n + 1) - f1 n)

end

end A221175.P11014380214508262022

namespace A221175

/-- `A000129(n)+Δ[A048655(n)-A221174(n)]` -/
def P11014380214508262022.Spec : Prop :=
  ∀ n, P11014380214508262022.a n = A221175 n

end A221175

/-!
# A221176: a(n) = Sum_{i=0..n} Stirling2(n,i)*2^(4i).

The programs for A221176, there is no canonical definition to state claims against.
-/

/-! ## A221176.P16219582305433771746

`A189233(eq[16, A002262(n)])`
-/

namespace A221176.P16219582305433771746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221176.P16219582305433771746

/-! ## A221176.P9833614086033956383

`A292860(eq[16, A025581(n)])`
-/

namespace A221176.P9833614086033956383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221176.P9833614086033956383

/-! ## A221176.P472488904855908765

`A189233(eq[17, A002260(n+1)])`
-/

namespace A221176.P472488904855908765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221176.P472488904855908765

/-! ## A221176.P3732215154087575788

`A292860(eq[17, A004736(n+1)])`
-/

namespace A221176.P3732215154087575788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221176.P3732215154087575788

/-! ## A221176.P15499505852119742753

`A189233(eq[16, A133233(n)])`
-/

namespace A221176.P15499505852119742753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221176.P15499505852119742753

/-!
# A221178: Union of (prime powers minus 1) and values of Euler totient function.

The programs for A221178, there is no canonical definition to state claims against.
-/

/-! ## A221178.P9880049372561373810

`∪[A002202(n+1), A181062(n+1)]`
-/

namespace A221178.P9880049372561373810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221178.P9880049372561373810

/-! ## A221178.P16159513964882224806

`∪[A002202(n+1), A249435(n+1)]`
-/

namespace A221178.P16159513964882224806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221178.P16159513964882224806

/-! ## A221178.P1203769102876556203

`∪[A000961(n+1)-1, A002202(n+1)]`
-/

namespace A221178.P1203769102876556203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221178.P1203769102876556203

/-! ## A221178.P3728836685786590380

`∪[A002202(n+1), A246655(n+1)-A057820(n+1)-1]`
-/

namespace A221178.P3728836685786590380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - A057820 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221178.P3728836685786590380

/-! ## A221178.P7062309709312703089

`lt[A158052(n+1), A014197(A028310(n))]`
-/

namespace A221178.P7062309709312703089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A221178.P7062309709312703089

/-! ## A221178.P1122774132352556670

`A336488(a(floor(acot(n)²))+n)` with `a(0)=0`
-/

namespace A221178.P1122774132352556670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A336488 (a ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋.toNat + (n : ℤ)).toNat

end

end A221178.P1122774132352556670

/-! ## A221178.P16945324483357923276

`A336488(round(sqrt(n²+1)))%∑{d}[n+1, #²]`
-/

namespace A221178.P16945324483357923276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336488 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ)

end

end A221178.P16945324483357923276

/-! ## A221178.P4159036828650367236

`∪[A000225(n), A336488(n+1)]`
-/

namespace A221178.P4159036828650367236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221178.P4159036828650367236

/-! ## A221178.P18282180692544741557

`∪[A000542(n), A336488(n+1)]`
-/

namespace A221178.P18282180692544741557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221178.P18282180692544741557

/-! ## A221178.P2831981691915329790

`∪[A000584(n), A336488(n+1)]`
-/

namespace A221178.P2831981691915329790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221178.P2831981691915329790

/-!
# A221179: A convolution triangle of numbers obtained from A146559.

The programs for A221179, the canonical program `A221179.P248305099629205287` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221179 has offset 0).

The definition of A221179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221179.P248305099629205287

`2*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221179

/-- `2*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)-T(n-2,k-1)` -/
def P248305099629205287.Spec : Prop :=
  ∀ n, P248305099629205287.a n = A221179 n

theorem P248305099629205287.correct : P248305099629205287.Spec := by
  intro n
  simp only [A221179]

end A221179

/-! ## A221179.P12764286364465805291

`A004248(n)-A025668(A347811(n))`
-/

namespace A221179.P12764286364465805291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n - A025668 (A347811 n).toNat

end

end A221179.P12764286364465805291

namespace A221179

/-- `A004248(n)-A025668(A347811(n))` -/
def P12764286364465805291.Spec : Prop :=
  ∀ n, P12764286364465805291.a n = A221179 n

end A221179

/-! ## A221179.P12716490476683695398

`A130167(n)-A237120(A347811(n))`
-/

namespace A221179.P12716490476683695398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130167 n - A237120 (A347811 n).toNat

end

end A221179.P12716490476683695398

namespace A221179

/-- `A130167(n)-A237120(A347811(n))` -/
def P12716490476683695398.Spec : Prop :=
  ∀ n, P12716490476683695398.a n = A221179 n

end A221179

/-! ## A221179.P3217400526118222506

`A134581(A113092(n))%4`
-/

namespace A221179.P3217400526118222506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134581 (A113092 n).toNat) 4

end

end A221179.P3217400526118222506

namespace A221179

/-- `A134581(A113092(n))%4` -/
def P3217400526118222506.Spec : Prop :=
  ∀ n, P3217400526118222506.a n = A221179 n

end A221179

/-! ## A221179.P10825016688754085837

`A309858(n)-A115574(A256895(n))`
-/

namespace A221179.P10825016688754085837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 n - A115574 (A256895 n).toNat

end

end A221179.P10825016688754085837

namespace A221179

/-- `A309858(n)-A115574(A256895(n))` -/
def P10825016688754085837.Spec : Prop :=
  ∀ n, P10825016688754085837.a n = A221179 n

end A221179

/-!
# A221181: Records in A096335 (values).

The programs for A221181, there is no canonical definition to state claims against.
-/

/-! ## A221181.P2118090288340288660

`record[A096335(n+1)]`
-/

namespace A221181.P2118090288340288660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221181.P2118090288340288660

/-! ## A221181.P1102320792094631301

`A096335(A221182(n+1))`
-/

namespace A221181.P1102320792094631301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096335 (A221182 (n + 1)).toNat

end

end A221181.P1102320792094631301

/-! ## A221181.P6979715007585100422

`record[A057427(n)*A096335(A123108(2*n))]`
-/

namespace A221181.P6979715007585100422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A096335 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221181.P6979715007585100422

/-!
# A221183: a(0)=0, a(1)=1; thereafter a(n) = gpf(2*a(n-1)+a(n-2)), where gpf = "greatest prime factor" (A006530).

The programs for A221183, the canonical program `A221183.P10202177714929776963` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221183 has offset 0).

The definition of A221183 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A221183.P10202177714929776963

`A006530(2*a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A221183

/-- `A006530(2*a(n-1)+a(n-2))` -/
def P10202177714929776963.Spec : Prop :=
  ∀ n, P10202177714929776963.a n = A221183 n

theorem P10202177714929776963.correct : P10202177714929776963.Spec := by
  intro n
  simp only [A221183]

end A221183

/-!
# A221184: Number of colored quivers in the 4-mutation class of a quiver of Dynkin type A_n.

The programs for A221184, there is no canonical definition to state claims against.
-/

/-! ## A221184.P7890143818251044891

`A295224(A141214(n+1))`
-/

namespace A221184.P7890143818251044891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A141214 (n + 1)).toNat

end

end A221184.P7890143818251044891

/-! ## A221184.P12874239133826080224

`A295224(A027379(n+2))`
-/

namespace A221184.P12874239133826080224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A027379 (n + 2)).toNat

end

end A221184.P12874239133826080224

/-! ## A221184.P7286342757267431042

`A295224(Δ[A006416(n+2)])`
-/

namespace A221184.P7286342757267431042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (f1 (n + 1) - f1 n).toNat

end

end A221184.P7286342757267431042

/-! ## A221184.P4000577379305050471

`A295224(A052905(n+1)+2)`
-/

namespace A221184.P4000577379305050471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A052905 (n + 1) + 2).toNat

end

end A221184.P4000577379305050471

/-!
# A221186: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX3 array.

The programs for A221186, there is no canonical definition to state claims against.
-/

/-! ## A221186.P12452451922950266281

`A221188(∑[n+2]+4)`
-/

namespace A221186.P12452451922950266281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221188 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221186.P12452451922950266281

/-! ## A221186.P10520916687263495762

`and(-1, A221188(A167614(n+1)))`
-/

namespace A221186.P10520916687263495762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221188 (A167614 (n + 1)).toNat)

end

end A221186.P10520916687263495762

/-! ## A221186.P2142647023835766356

`A221188(A167614(n+1))+A025439(n)`
-/

namespace A221186.P2142647023835766356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221188 (A167614 (n + 1)).toNat + A025439 n

end

end A221186.P2142647023835766356

/-! ## A221186.P5887137213622533974

`A221188(A167614(n+1))+A025442(n)`
-/

namespace A221186.P5887137213622533974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221188 (A167614 (n + 1)).toNat + A025442 n

end

end A221186.P5887137213622533974

/-!
# A221187: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A221187, there is no canonical definition to state claims against.
-/

/-! ## A221187.P315875347284703438

`A221188(∑[n+3]+7)`
-/

namespace A221187.P315875347284703438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221188 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221187.P315875347284703438

/-! ## A221187.P9811842231330421139

`record[A221188(A333227(2*n+3)+5)]`
-/

namespace A221187.P9811842231330421139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221188 (A333227 (2 * n + 3) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221187.P9811842231330421139

/-!
# A221189: Number of n X 2 arrays of occupancy after each element moves to some king-move neighbor.

The programs for A221189, there is no canonical definition to state claims against.
-/

/-! ## A221189.P15451561872141455516

`A221192(∑[n+1]+2)`
-/

namespace A221189.P15451561872141455516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221192 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221189.P15451561872141455516

/-! ## A221189.P15805122330458664009

`A221723(∑[n+1]+2)`
-/

namespace A221189.P15805122330458664009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221723 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221189.P15805122330458664009

/-! ## A221189.P6248022596272881529

`record[ratio[A221723(A080036(n))]]`
-/

namespace A221189.P6248022596272881529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221723 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221189.P6248022596272881529

/-! ## A221189.P4394605983639439724

`record[gcd(A098825(n), A221192(n+1))]`
-/

namespace A221189.P4394605983639439724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A221192 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221189.P4394605983639439724

/-! ## A221189.P3018009554308853543

`record[gcd(A084938(n), A221723(n+2))]`
-/

namespace A221189.P3018009554308853543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 n) (A221723 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221189.P3018009554308853543

/-!
# A221190: Number of nX3 arrays of occupancy after each element moves to some king-move neighbor.

The programs for A221190, there is no canonical definition to state claims against.
-/

/-! ## A221190.P17910267938165310060

`A221192(∑[n+2]+4)`
-/

namespace A221190.P17910267938165310060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221192 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221190.P17910267938165310060

/-! ## A221190.P4821023020546330399

`lcm((-1)^∑{e}[n+1, #], A221192(A167614(n+1)))`
-/

namespace A221190.P4821023020546330399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A221192 (A167614 (n + 1)).toNat)

end

end A221190.P4821023020546330399

/-! ## A221190.P758252526876225281

`A221192(A167614(n+1))+A059995(n)`
-/

namespace A221190.P758252526876225281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221192 (A167614 (n + 1)).toNat + A059995 n

end

end A221190.P758252526876225281

/-! ## A221190.P14817356275161316698

`A221192(A167614(n+1))+A184946(n)`
-/

namespace A221190.P14817356275161316698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221192 (A167614 (n + 1)).toNat + A184946 n

end

end A221190.P14817356275161316698

/-!
# A221191: Number of nX4 arrays of occupancy after each element moves to some king-move neighbor.

The programs for A221191, there is no canonical definition to state claims against.
-/

/-! ## A221191.P11798085008290448282

`A221192(∑[n+3]+7)`
-/

namespace A221191.P11798085008290448282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221192 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221191.P11798085008290448282

/-! ## A221191.P1067149483935213778

`A221192(A145018(n+4))+A035699(n+1)`
-/

namespace A221191.P1067149483935213778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221192 (A145018 (n + 4)).toNat + A035699 (n + 1)

end

end A221191.P1067149483935213778

/-! ## A221191.P7866108740189942798

`A003652(n+2)*A221192(A145018(n+4))`
-/

namespace A221191.P7866108740189942798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (n + 2) * A221192 (A145018 (n + 4)).toNat

end

end A221191.P7866108740189942798

/-!
# A221193: Simple continued fraction expansion of product {k >= 0} (1 - 2*(N - sqrt(N^2-1))^(4*k+3))/(1 - 2*(N - sqrt(N^2-1))^(4*k+1)) at N = 3.

The programs for A221193, there is no canonical definition to state claims against.
-/

/-! ## A221193.P457708971793770686

`A077221(gcd(A077921(n), A097076(n)))`
-/

namespace A221193.P457708971793770686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (Int.gcd (A077921 n) (A097076 n))

end

end A221193.P457708971793770686

/-! ## A221193.P9051257666407251128

`A077221(gcd(A046090(n), A171842(n)))`
-/

namespace A221193.P9051257666407251128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (Int.gcd (A046090 n) (A171842 n))

end

end A221193.P9051257666407251128

/-! ## A221193.P6850364723635142764

`A077221(gcd(A001108(n+1), A261116(n+2)))`
-/

namespace A221193.P6850364723635142764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (Int.gcd (A001108 (n + 1)) (A261116 (n + 2)))

end

end A221193.P6850364723635142764

/-! ## A221193.P5566811175733523421

`and(A133960(A082555(n+1)), A221195(n))`
-/

namespace A221193.P5566811175733523421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133960 (A082555 (n + 1)).toNat) (A221195 n)

end

end A221193.P5566811175733523421

/-!
# A221194: Simple continued fraction expansion of product {k >= 0} (1 - 2*(N - sqrt(N^2-1))^(4*k+3))/(1 - 2*(N - sqrt(N^2-1))^(4*k+1)) at N = 4.

The programs for A221194, the canonical program `A221194.P317843733100634606` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221194 has offset 0).

The definition of A221194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221194.P317843733100634606

`A174502(n)%A001091(A004525(n+2))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A221194

/-- `A174502(n)%A001091(A004525(n+2))` -/
def P317843733100634606.Spec : Prop :=
  ∀ n, P317843733100634606.a n = A221194 n

theorem P317843733100634606.correct : P317843733100634606.Spec := by
  intro n
  simp only [A221194]

end A221194

/-! ## A221194.P5777175679981996603

`A251725(A123894(n)+n)`
-/

namespace A221194.P5777175679981996603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (A123894 n + (n : ℤ)).toNat

end

end A221194.P5777175679981996603

namespace A221194

/-- `A251725(A123894(n)+n)` -/
def P5777175679981996603.Spec : Prop :=
  ∀ n, P5777175679981996603.a n = A221194 n

end A221194

/-!
# A221196: Number of n X 3 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221196, the canonical program `A221196.P10990225276704600877` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221196 has offset 1).

The definition of A221196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221196.P16270608123169770598

`ogf((2-2x-2x^2)/(1-6x+6x^2+2x^3))`
-/

namespace A221196.P16270608123169770598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -2] [1, -6, 6, 2] n

end

end A221196.P16270608123169770598

namespace A221196

/-- `ogf((2-2x-2x^2)/(1-6x+6x^2+2x^3))` -/
def P16270608123169770598.Spec : Prop :=
  ∀ n, P16270608123169770598.a n = A221196 (n + 1)

end A221196

/-! ## A221196.P10990225276704600877

`6*a(n-1)-6*a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=10, a(2)=46`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221196

/-- `6*a(n-1)-6*a(n-2)-2*a(n-3)` -/
def P10990225276704600877.Spec : Prop :=
  ∀ n, P10990225276704600877.a n = A221196 (n + 1)

theorem P10990225276704600877.correct : P10990225276704600877.Spec := by
  intro n
  simp only [A221196, Nat.add_sub_cancel]

end A221196

/-! ## A221196.P9417238062735036886

`Δ[Δ[A221397(n+1)/9]]`
-/

namespace A221196.P9417238062735036886
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221397 (n + 1) : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221196.P9417238062735036886

namespace A221196

/-- `Δ[Δ[A221397(n+1)/9]]` -/
def P9417238062735036886.Spec : Prop :=
  ∀ n, P9417238062735036886.a n = (A221196 (n + 1) : ℚ)

end A221196

/-! ## A221196.P2233517633398567615

`A221200(∑[n+3]+1)`
-/

namespace A221196.P2233517633398567615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221196.P2233517633398567615

namespace A221196

/-- `A221200(∑[n+3]+1)` -/
def P2233517633398567615.Spec : Prop :=
  ∀ n, P2233517633398567615.a n = A221196 (n + 1)

end A221196

/-!
# A221197: Number of n X 4 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221197, there is no canonical definition to state claims against.
-/

/-! ## A221197.P8486299799175467859

`A221200(2*n+∑[n+2]+5)`
-/

namespace A221197.P8486299799175467859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 5))

end

end A221197.P8486299799175467859

/-! ## A221197.P16618305267255825795

`record[A221200(A198463(n+2))]`
-/

namespace A221197.P16618305267255825795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A198463 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221197.P16618305267255825795

/-! ## A221197.P7829990949825514410

`A221200(A141214(n+1))+A026816(n)`
-/

namespace A221197.P7829990949825514410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A141214 (n + 1)).toNat + A026816 n

end

end A221197.P7829990949825514410

/-! ## A221197.P6695612711811873467

`A221200(A141214(n+1))+A185284(n)`
-/

namespace A221197.P6695612711811873467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A141214 (n + 1)).toNat + A185284 n

end

end A221197.P6695612711811873467

/-!
# A221198: Number of n X 5 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221198, there is no canonical definition to state claims against.
-/

/-! ## A221198.P3785362598909241527

`A221200(∑[n+5]+6)`
-/

namespace A221198.P3785362598909241527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221198.P3785362598909241527

/-!
# A221199: Number of nX6 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221199, there is no canonical definition to state claims against.
-/

/-! ## A221199.P16741487523307659418

`A221200(A052905(n+3))`
-/

namespace A221199.P16741487523307659418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A052905 (n + 3)).toNat

end

end A221199.P16741487523307659418

/-! ## A221199.P1631245070298232397

`A221200(A302537(n)+15)`
-/

namespace A221199.P1631245070298232397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A302537 n + 15).toNat

end

end A221199.P1631245070298232397

