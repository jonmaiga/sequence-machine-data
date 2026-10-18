import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
# A338301: O.g.f. satisfies: A(x) = 1/(1 - x - x*( d/dx x^2*A(x)' )).

The programs for A338301, there is no canonical definition to state claims against.
-/

/-! ## A338301.P17528879315507522353

`A305110(n)/A065033(2*n)`
-/

namespace A338301.P17528879315507522353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305110 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A338301.P17528879315507522353

/-! ## A338301.P17590966121920254545

`A305110(n)/(A004277(n)-n)`
-/

namespace A338301.P17590966121920254545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305110 n : ℚ) / (A004277 n - (n : ℤ) : ℚ)

end

end A338301.P17590966121920254545

/-! ## A338301.P352179374241798653

`ceil(A305110(n)/A233583(n+1))`
-/

namespace A338301.P352179374241798653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A305110 n : ℚ) / (A233583 (n + 1) : ℚ)⌉

end

end A338301.P352179374241798653

/-! ## A338301.P14122056828696835628

`A305110(n)/A007318(A000124(n))`
-/

namespace A338301.P14122056828696835628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305110 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A338301.P14122056828696835628

/-! ## A338301.P13106932205133601125

`A305110(n)/A008619(A004273(n))`
-/

namespace A338301.P13106932205133601125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305110 n : ℚ) / (A008619 (A004273 n).toNat : ℚ)

end

end A338301.P13106932205133601125

/-!
# A338302: a(n) is the first k such that n = Omega(k) = Omega(k-1) + Omega(k+1), or 0 if there is no such k, where Omega is A001222.

The programs for A338302, there is no canonical definition to state claims against.
-/

/-! ## A338302.P15211743213668049031

`A000085(n)*A181819(A290923(n))`
-/

namespace A338302.P15211743213668049031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * A181819 (A290923 n).toNat

end

end A338302.P15211743213668049031

/-! ## A338302.P7082738694765830769

`A085311(A349021(n)+A006450(n+1))`
-/

namespace A338302.P7082738694765830769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085311 (A349021 n + A006450 (n + 1)).toNat

end

end A338302.P7082738694765830769

/-!
# A338306: O.g.f. A(x) satisfies: A(x) = 1/(1 - x * (d/dx x + x^2*A(x)) ).

The programs for A338306, there is no canonical definition to state claims against.
-/

/-! ## A338306.P12608513698127464490

`A008615(2*A150324(n))`
-/

namespace A338306.P12608513698127464490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A150324 n).toNat

end

end A338306.P12608513698127464490

/-! ## A338306.P11096358596258542179

`A087011(A153295(n))+A001168(n)`
-/

namespace A338306.P11096358596258542179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (A153295 n).toNat + A001168 n

end

end A338306.P11096358596258542179

/-! ## A338306.P6809393309899844033

`A210442(n)+A103221(A001692(n))`
-/

namespace A338306.P6809393309899844033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n + A103221 (A001692 n).toNat

end

end A338306.P6809393309899844033

/-!
# A338308: a(n) is the smallest positive integer m such that 2^n appears as the denominator of a convergent to sqrt(m).

The programs for A338308, there is no canonical definition to state claims against.
-/

/-! ## A338308.P6123333020866505728

`A338307(2^n)`
-/

namespace A338308.P6123333020866505728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338307 (2 ^ n)

end

end A338308.P6123333020866505728

/-! ## A338308.P11080285372644237153

`and(-1, A338307(A000079(n)))`
-/

namespace A338308.P11080285372644237153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A338307 (A000079 n).toNat)

end

end A338308.P11080285372644237153

/-! ## A338308.P4582829023629771074

`A338307(A000079(n))+A025460(n)`
-/

namespace A338308.P4582829023629771074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338307 (A000079 n).toNat + A025460 n

end

end A338308.P4582829023629771074

/-!
# A338310: Even composites m such that A086902(m)==7 (mod m).

The programs for A338310, there is no canonical definition to state claims against.
-/

/-! ## A338310.P476949808810671912

`A342378(A293469(n))-1`
-/

namespace A338310.P476949808810671912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342378 (A293469 n).toNat - 1

end

end A338310.P476949808810671912

/-!
# A338311: Even composites m such that A003499(m)==6 (mod m).

The programs for A338311, there is no canonical definition to state claims against.
-/

/-! ## A338311.P5497563211763541708

`A098166(A137881(n+1)+2)`
-/

namespace A338311.P5497563211763541708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098166 (A137881 (n + 1) + 2).toNat

end

end A338311.P5497563211763541708

/-!
# A338312: Even composites m such that A056854(m)==7 (mod m).

The programs for A338312, there is no canonical definition to state claims against.
-/

/-! ## A338312.P3569694757013906845

`A167489(A237249(n+1))+A000079(n)`
-/

namespace A338312.P3569694757013906845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A237249 (n + 1)).toNat + A000079 n

end

end A338312.P3569694757013906845

/-! ## A338312.P3178638585322739592

`A356430(or(A065075(2*(n+1)), A356434(n)))`
-/

namespace A338312.P3178638585322739592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356430 (Int.lor (A065075 (2 * (n + 1))) (A356434 n)).toNat

end

end A338312.P3178638585322739592

/-!
# A338313: Even composite positive integers m such that A052918(m-1)^2 == 1 (mod m).

The programs for A338313, there is no canonical definition to state claims against.
-/

/-! ## A338313.P17632613939395667085

`∑[A145154(∏[A320651(n)])]`
-/

namespace A338313.P17632613939395667085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320651 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338313.P17632613939395667085

/-! ## A338313.P2187787078696149039

`∑[4*A002260(A001035(n))]`
-/

namespace A338313.P2187787078696149039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002260 (A001035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338313.P2187787078696149039

/-!
# A338314: Even composite integers m such that A004254(m)^2 == 1 (mod m).

The programs for A338314, there is no canonical definition to state claims against.
-/

/-! ## A338314.P11882937695861679709

`∑[lcm(4, A020639(A079803(n+2)))]`
-/

namespace A338314.P11882937695861679709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A020639 (A079803 (n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338314.P11882937695861679709

/-!
# A338316: Odd numbers whose distinct prime indices are pairwise coprime, where a singleton is always considered coprime.

The programs for A338316, there is no canonical definition to state claims against.
-/

/-! ## A338316.P4776093489716651975

`eq[n%2, A290105(or(1, n))]`
-/

namespace A338316.P4776093489716651975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338316.P4776093489716651975

/-! ## A338316.P18185570260368022093

`lt[A290105(n+1), gcd(2, n)]+1`
-/

namespace A338316.P18185570260368022093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A338316.P18185570260368022093

/-! ## A338316.P16393739503532899367

`record[(2*n+1)/A290105(2*n+1)]`
-/

namespace A338316.P16393739503532899367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A290105 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338316.P16393739503532899367

/-! ## A338316.P9784213319130630624

`eq[a(A290105(n))+n-1, n^and(1, n)]` with `a(0)=2, a(1)=1`
-/

namespace A338316.P9784213319130630624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (A290105 n).toNat + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A338316.P9784213319130630624

/-! ## A338316.P17298060246089747402

`eq[n%2, A290105(A004277(n))]`
-/

namespace A338316.P17298060246089747402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338316.P17298060246089747402

/-! ## A338316.P4174202719834887916

`eq[and(1, n), A290105(A022144(n))]`
-/

namespace A338316.P4174202719834887916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338316.P4174202719834887916

/-! ## A338316.P5147190093588578047

`eq[A000035(n), A290105(or(1, n))]`
-/

namespace A338316.P5147190093588578047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338316.P5147190093588578047

/-! ## A338316.P2280892085380031220

`∪[A337987(n+1), A061345(n)]`
-/

namespace A338316.P2280892085380031220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338316.P2280892085380031220

/-! ## A338316.P2340292902580215208

`A005408(eq[1, A290105(2*n+1)])`
-/

namespace A338316.P2340292902580215208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338316.P2340292902580215208

/-!
# A338318: Composite numbers whose prime indices are pairwise intersecting (non-coprime).

The programs for A338318, there is no canonical definition to state claims against.
-/

/-! ## A338318.P17394106996282395564

`A322336(n+1)+A243835(n)`
-/

namespace A338318.P17394106996282395564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322336 (n + 1) + A243835 n

end

end A338318.P17394106996282395564

/-! ## A338318.P9682596214226369229

`A322336(n+1)+A025444(n+1)`
-/

namespace A338318.P9682596214226369229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322336 (n + 1) + A025444 (n + 1)

end

end A338318.P9682596214226369229

/-! ## A338318.P16545699595253544551

`∪[A158316(n+1), A322336(n+1)]`
-/

namespace A338318.P16545699595253544551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338318.P16545699595253544551

/-! ## A338318.P6138454222967631620

`A322336(n+1)%A306926(n+1)²`
-/

namespace A338318.P6138454222967631620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322336 (n + 1)) (A306926 (n + 1) ^ 2)

end

end A338318.P6138454222967631620

/-! ## A338318.P1708925886984255596

`A322336(n+1)-char[A350886(n+1)]`
-/

namespace A338318.P1708925886984255596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350886 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322336 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A338318.P1708925886984255596

/-! ## A338318.P14748943800729485603

`∪[A322336(n+1), A322388(n+1)²]`
-/

namespace A338318.P14748943800729485603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322388 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338318.P14748943800729485603

/-! ## A338318.P2449876791826528863

`∪[A322336(n+1), A327109(n+2)²]`
-/

namespace A338318.P2449876791826528863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327109 (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338318.P2449876791826528863

/-! ## A338318.P11961052091391483886

`∪[A322336(n+1), A322394(n+5)²]`
-/

namespace A338318.P11961052091391483886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322394 (n + 5) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338318.P11961052091391483886

/-! ## A338318.P10545601392226674005

`gcd(val(A289509(n+1), 90), A322336(n+1))`
-/

namespace A338318.P10545601392226674005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (A289509 (n + 1)).toNat 90 : ℤ) (A322336 (n + 1))

end

end A338318.P10545601392226674005

/-! ## A338318.P16926392038211093947

`A322336(n+1)+A008857(A002262(n))`
-/

namespace A338318.P16926392038211093947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322336 (n + 1) + A008857 (A002262 n).toNat

end

end A338318.P16926392038211093947

/-!
# A338321: Trace of complement matrix for polynomial triangle centers of degree n (on the Nagel line).

The programs for A338321, the canonical program `A338321.P8409969585791231974` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338321 has offset 1).

The definition of A338321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338321.P8409969585791231974

`2*A001399(n+1)-A001399(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338321

/-- `2*A001399(n+1)-A001399(n)` -/
def P8409969585791231974.Spec : Prop :=
  ∀ n, P8409969585791231974.a n = A338321 (n + 1)

theorem P8409969585791231974.correct : P8409969585791231974.Spec := by
  intro n
  simp only [A338321, Nat.add_sub_cancel]

end A338321

/-! ## A338321.P18088504988754627717

`A052938(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A338321.P18088504988754627717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  A052938 n + a (n - 3)

end

end A338321.P18088504988754627717

namespace A338321

/-- `A052938(n)+a(n-3)` -/
def P18088504988754627717.Spec : Prop :=
  ∀ n, P18088504988754627717.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P7978212063891505426

`a(n-3)+A168233(n+1)-n` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A338321.P7978212063891505426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 3) + (A168233 (n + 1) - (n : ℤ))

end

end A338321.P7978212063891505426

namespace A338321

/-- `a(n-3)+A168233(n+1)-n` -/
def P7978212063891505426.Spec : Prop :=
  ∀ n, P7978212063891505426.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P1058355731722480200

`Δ[A001399(n)+A000601(n)]`
-/

namespace A338321.P1058355731722480200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + A000601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338321.P1058355731722480200

namespace A338321

/-- `Δ[A001399(n)+A000601(n)]` -/
def P1058355731722480200.Spec : Prop :=
  ∀ n, P1058355731722480200.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P9744263567191003979

`A001399(n+1)+Δ[A001399(n)]`
-/

namespace A338321.P9744263567191003979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1) + (f1 (n + 1) - f1 n)

end

end A338321.P9744263567191003979

namespace A338321

/-- `A001399(n+1)+Δ[A001399(n)]` -/
def P9744263567191003979.Spec : Prop :=
  ∀ n, P9744263567191003979.a n = A338321 (n + 1)

theorem P9744263567191003979.correct : P9744263567191003979.Spec := by
  intro n
  simp only [A338321, Nat.add_sub_cancel, A338321.P9744263567191003979.f1, A338321.P9744263567191003979.a, A338321.P8409969585791231974.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A338321

/-! ## A338321.P5120676072610117133

`A103221(n+1)+A001399(n+1)`
-/

namespace A338321.P5120676072610117133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1) + A001399 (n + 1)

end

end A338321.P5120676072610117133

namespace A338321

/-- `A103221(n+1)+A001399(n+1)` -/
def P5120676072610117133.Spec : Prop :=
  ∀ n, P5120676072610117133.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P13430205136917150386

`A001399(n+1)+A008619(n+1)-A008620(n)`
-/

namespace A338321.P13430205136917150386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1) + (A008619 (n + 1) - A008620 n)

end

end A338321.P13430205136917150386

namespace A338321

/-- `A001399(n+1)+A008619(n+1)-A008620(n)` -/
def P13430205136917150386.Spec : Prop :=
  ∀ n, P13430205136917150386.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P12520375606296030482

`A236337(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A338321.P12520375606296030482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236337 (n + 1) - a (n - 1)

end

end A338321.P12520375606296030482

namespace A338321

/-- `A236337(n+1)-a(n-1)` -/
def P12520375606296030482.Spec : Prop :=
  ∀ n, P12520375606296030482.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P17536270480821697313

`A086161(n)+Δ[A001973(n)]`
-/

namespace A338321.P17536270480821697313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n + (f1 (n + 1) - f1 n)

end

end A338321.P17536270480821697313

namespace A338321

/-- `A086161(n)+Δ[A001973(n)]` -/
def P17536270480821697313.Spec : Prop :=
  ∀ n, P17536270480821697313.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P16262920061385383615

`A008731(n+1)+A103221(n+1)+A008731(n)`
-/

namespace A338321.P16262920061385383615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 (n + 1) + (A103221 (n + 1) + A008731 n)

end

end A338321.P16262920061385383615

namespace A338321

/-- `A008731(n+1)+A103221(n+1)+A008731(n)` -/
def P16262920061385383615.Spec : Prop :=
  ∀ n, P16262920061385383615.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P2649110705803710797

`A001399(n+1)+A004523(n+1)-A004526(n)`
-/

namespace A338321.P2649110705803710797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1) + (A004523 (n + 1) - A004526 n)

end

end A338321.P2649110705803710797

namespace A338321

/-- `A001399(n+1)+A004523(n+1)-A004526(n)` -/
def P2649110705803710797.Spec : Prop :=
  ∀ n, P2649110705803710797.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P7933366498877107719

`A128012(n+1)-(A001399(n+1)+A001399(n))`
-/

namespace A338321.P7933366498877107719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128012 (n + 1) - (A001399 (n + 1) + A001399 n)

end

end A338321.P7933366498877107719

namespace A338321

/-- `A128012(n+1)-(A001399(n+1)+A001399(n))` -/
def P7933366498877107719.Spec : Prop :=
  ∀ n, P7933366498877107719.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P6108495884978250848

`A001399(n+1)+A001840(n)-A337483(n+1)`
-/

namespace A338321.P6108495884978250848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1) + (A001840 n - A337483 (n + 1))

end

end A338321.P6108495884978250848

namespace A338321

/-- `A001399(n+1)+A001840(n)-A337483(n+1)` -/
def P6108495884978250848.Spec : Prop :=
  ∀ n, P6108495884978250848.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P12151482307900576507

`A008615(n+3)+Δ[A000601(n)]`
-/

namespace A338321.P12151482307900576507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 3) + (f1 (n + 1) - f1 n)

end

end A338321.P12151482307900576507

namespace A338321

/-- `A008615(n+3)+Δ[A000601(n)]` -/
def P12151482307900576507.Spec : Prop :=
  ∀ n, P12151482307900576507.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P1697547864237028826

`A008615(n+3)+A001399(n+1)`
-/

namespace A338321.P1697547864237028826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 3) + A001399 (n + 1)

end

end A338321.P1697547864237028826

namespace A338321

/-- `A008615(n+3)+A001399(n+1)` -/
def P1697547864237028826.Spec : Prop :=
  ∀ n, P1697547864237028826.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P6893433197637755701

`A128012(n+1)-A001840(n+2)`
-/

namespace A338321.P6893433197637755701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128012 (n + 1) - A001840 (n + 2)

end

end A338321.P6893433197637755701

namespace A338321

/-- `A128012(n+1)-A001840(n+2)` -/
def P6893433197637755701.Spec : Prop :=
  ∀ n, P6893433197637755701.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P12040648031941655181

`A137719(n+2)+A069905(n+2)`
-/

namespace A338321.P12040648031941655181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137719 (n + 2) + A069905 (n + 2)

end

end A338321.P12040648031941655181

namespace A338321

/-- `A137719(n+2)+A069905(n+2)` -/
def P12040648031941655181.Spec : Prop :=
  ∀ n, P12040648031941655181.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P10909722629729682779

`A001399(n+2)-A115360(n+2)`
-/

namespace A338321.P10909722629729682779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 2) - A115360 (n + 2)

end

end A338321.P10909722629729682779

namespace A338321

/-- `A001399(n+2)-A115360(n+2)` -/
def P10909722629729682779.Spec : Prop :=
  ∀ n, P10909722629729682779.a n = A338321 (n + 1)

end A338321

/-! ## A338321.P3036994716955521646

`A266755(2*n)+2*A103221(n+1)`
-/

namespace A338321.P3036994716955521646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (2 * n) + 2 * A103221 (n + 1)

end

end A338321.P3036994716955521646

namespace A338321

/-- `A266755(2*n)+2*A103221(n+1)` -/
def P3036994716955521646.Spec : Prop :=
  ∀ n, P3036994716955521646.a n = A338321 (n + 1)

end A338321

/-!
# A338322: a(n) is the number of regular hexagons with all six vertices (x,y,z) in the set {1,2,...,n}^3.

The programs for A338322, there is no canonical definition to state claims against.
-/

/-! ## A338322.P8855752355942233874

`A000010(A093123(n))%A204089(n)`
-/

namespace A338322.P8855752355942233874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A093123 n).toNat) (A204089 n)

end

end A338322.P8855752355942233874

/-! ## A338322.P18408485383699928016

`A182287(A234955(n+1))%A007051(n)`
-/

namespace A338322.P18408485383699928016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182287 (A234955 (n + 1)).toNat) (A007051 n)

end

end A338322.P18408485383699928016

/-! ## A338322.P12994970614550569572

`A052928(and(A037698(n+1), A158900(n)))`
-/

namespace A338322.P12994970614550569572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (Int.land (A037698 (n + 1)) (A158900 n)).toNat

end

end A338322.P12994970614550569572

/-!
# A338323: a(n) is the number of regular k-gons in three dimensions with all k vertices (x,y,z) in the set {1,2,...,n}^3.

The programs for A338323, there is no canonical definition to state claims against.
-/

/-! ## A338323.P4373017987975646263

`floor(sqrt(A163282((n-1)*n^5)))`
-/

namespace A338323.P4373017987975646263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163282 (((n : ℤ) - 1) * (n ^ 5 : ℤ)).toNat)

end

end A338323.P4373017987975646263

/-!
# A338325: Biquadratefree powerful numbers: numbers whose exponents in their prime factorization are either 2 or 3.

The programs for A338325, there is no canonical definition to state claims against.
-/

/-! ## A338325.P3382405863755057499

`record[A084371(n+1)*A369430(n+1)]`
-/

namespace A338325.P3382405863755057499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1) * A369430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338325.P3382405863755057499

/-! ## A338325.P2410414973294065691

`record[A064549(A369430(n+1))]`
-/

namespace A338325.P2410414973294065691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A369430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338325.P2410414973294065691

/-! ## A338325.P2236231704624656762

`record[A007947(A224866(n+1)-1)*A369430(n+1)]`
-/

namespace A338325.P2236231704624656762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A224866 (n + 1) - 1).toNat * A369430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338325.P2236231704624656762

/-! ## A338325.P6697058947238765234

`record[lcm(n+1, A001221(A300828(n+1)²+1))]`
-/

namespace A338325.P6697058947238765234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001221 (A300828 (n + 1) ^ 2 + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338325.P6697058947238765234

/-! ## A338325.P5566014006507582224

`eq[1, A354349(n+1)²]+1`
-/

namespace A338325.P5566014006507582224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354349 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338325.P5566014006507582224

/-! ## A338325.P2532725583369989535

`record[A007948(A306458(n+1))*A084371(n+1)]`
-/

namespace A338325.P2532725583369989535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A306458 (n + 1)).toNat * A084371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338325.P2532725583369989535

/-! ## A338325.P16805985888498341855

`record[A001694(n+1)/A062378(A306458(n+1))]`
-/

namespace A338325.P16805985888498341855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A062378 (A306458 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338325.P16805985888498341855

/-! ## A338325.P13740907955411387860

`record[A382906(n+1)]`
-/

namespace A338325.P13740907955411387860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338325.P13740907955411387860

/-! ## A338325.P3997358657041528527

`∩[A001694(n+1), A046100(n+1)]`
-/

namespace A338325.P3997358657041528527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338325.P3997358657041528527

/-! ## A338325.P14435885407466080922

`∩[A046100(n+1), A056166(n+1)]`
-/

namespace A338325.P14435885407466080922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338325.P14435885407466080922

/-! ## A338325.P17760246169071614878

`∩[A046100(n+1), A350014(n+1)]`
-/

namespace A338325.P17760246169071614878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338325.P17760246169071614878

/-! ## A338325.P2327166128795285481

`∩[A046100(n+1), A384418(n+1)]`
-/

namespace A338325.P2327166128795285481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338325.P2327166128795285481

/-! ## A338325.P5280536008223522607

`eq[1, A188585(n+1)]+1`
-/

namespace A338325.P5280536008223522607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338325.P5280536008223522607

/-! ## A338325.P6861859190189314184

`eq[1, A365550(n+1)]+1`
-/

namespace A338325.P6861859190189314184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338325.P6861859190189314184

/-! ## A338325.P14106370939703966074

`record[A053165(A001694(n+1))]`
-/

namespace A338325.P14106370939703966074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A001694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338325.P14106370939703966074

/-! ## A338325.P6222940631317252649

`record[A064549(A000189(n+1))]`
-/

namespace A338325.P6222940631317252649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A000189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338325.P6222940631317252649

/-! ## A338325.P3880723537051593790

`filter[A001694(n+1), A307430(#)]`
-/

namespace A338325.P3880723537051593790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A338325.P3880723537051593790

/-! ## A338325.P30510455721839691

`filter[A056166(n+1), A307430(#)]`
-/

namespace A338325.P30510455721839691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A338325.P30510455721839691

/-! ## A338325.P7465941235592066270

`filter[A317102(n+1), A307430(#)]`
-/

namespace A338325.P7465941235592066270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A338325.P7465941235592066270

/-! ## A338325.P16238937686359935857

`filter[A350014(n+1), A307430(#)]`
-/

namespace A338325.P16238937686359935857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A338325.P16238937686359935857

/-!
# A338326: The number of biquadratefree powerful numbers (A338325) between the consecutive squares n^2 and (n+1)^2.

The programs for A338326, there is no canonical definition to state claims against.
-/

/-! ## A338326.P14576771842133937498

`A141214(A067747(n+1))%A211097(n+2)`
-/

namespace A338326.P14576771842133937498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141214 (A067747 (n + 1)).toNat) (A211097 (n + 2))

end

end A338326.P14576771842133937498

/-! ## A338326.P31793139124489675

`A001222(gcd(A004526(n+3), A115651(2*n+3)))`
-/

namespace A338326.P31793139124489675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A004526 (n + 3)) (A115651 (2 * n + 3)))

end

end A338326.P31793139124489675

/-! ## A338326.P17824454383059253794

`val(A053989(A171503(A314598(n))), 3)`
-/

namespace A338326.P17824454383059253794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053989 (A171503 (A314598 n).toNat).toNat).toNat 3

end

end A338326.P17824454383059253794

/-! ## A338326.P10323186415544857383

`A007949(A353284(3*n+1)+A282013(n))`
-/

namespace A338326.P10323186415544857383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A353284 (3 * n + 1) + A282013 n).toNat

end

end A338326.P10323186415544857383

/-!
# A338327: a(n) is the least number k such that there are exactly n biquadratefree powerful numbers (A338325) between k^2 and (k+1)^2.

The programs for A338327, there is no canonical definition to state claims against.
-/

/-! ## A338327.P5399022641222706615

`A047971((n+1)*∏{p}[n+1, #²]*∑[abs(1-4*n)])`
-/

namespace A338327.P5399022641222706615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047971 ((((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2) : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A338327.P5399022641222706615

/-!
# A338328: G.f. A(x) satisfies: [x^n] (1 + n*x - A(x))^(2*n-1) = 0, for n > 0.

The programs for A338328, there is no canonical definition to state claims against.
-/

/-! ## A338328.P17072226899965610613

`A304500(C(A318912(n), 2))`
-/

namespace A338328.P17072226899965610613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304500 (Nat.choose (A318912 n).toNat 2)

end

end A338328.P17072226899965610613

/-!
# A338329: First differences of A326118.

The programs for A338329, the canonical program `A338329.P433976229691105828` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338329 has offset 0).

The definition of A338329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338329.P433976229691105828

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=1, a(4)=3, a(5)=5, a(6)=7, a(7)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A338329

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P433976229691105828.Spec : Prop :=
  ∀ n, P433976229691105828.a n = A338329 n

theorem P433976229691105828.correct : P433976229691105828.Spec := by
  intro n
  simp only [A338329]

end A338329

/-! ## A338329.P15748226204471700722

`a(n-4)+2` with `a(0)=1, a(1)=1, a(2)=3, a(3)=1, a(4)=3, a(5)=5, a(6)=7`
-/

namespace A338329.P15748226204471700722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 1, 3, 5, 7] fun n a =>
  a (n - 4) + 2

end

end A338329.P15748226204471700722

namespace A338329

/-- `a(n-4)+2` -/
def P15748226204471700722.Spec : Prop :=
  ∀ n, (P15748226204471700722.a n : ℤ) = A338329 n

end A338329

/-! ## A338329.P165411442921005978

`Δ[A326118(n)]`
-/

namespace A338329.P165411442921005978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338329.P165411442921005978

namespace A338329

/-- `Δ[A326118(n)]` -/
def P165411442921005978.Spec : Prop :=
  ∀ n, P165411442921005978.a n = A338329 n

end A338329

/-! ## A338329.P15036185339563442982

`A326118(n+1)-A326118(n)`
-/

namespace A338329.P15036185339563442982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326118 (n + 1) - A326118 n

end

end A338329.P15036185339563442982

namespace A338329

/-- `A326118(n+1)-A326118(n)` -/
def P15036185339563442982.Spec : Prop :=
  ∀ n, P15036185339563442982.a n = A338329 n

end A338329

/-! ## A338329.P12423551441553557302

`or(1, A046698(n)*A110657(n))`
-/

namespace A338329.P12423551441553557302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046698 n * A110657 n)

end

end A338329.P12423551441553557302

namespace A338329

/-- `or(1, A046698(n)*A110657(n))` -/
def P12423551441553557302.Spec : Prop :=
  ∀ n, P12423551441553557302.a n = A338329 n

end A338329

/-! ## A338329.P7546808507189543862

`A109613(A046698(n)*A110657(n))`
-/

namespace A338329.P7546808507189543862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A046698 n * A110657 n).toNat

end

end A338329.P7546808507189543862

namespace A338329

/-- `A109613(A046698(n)*A110657(n))` -/
def P7546808507189543862.Spec : Prop :=
  ∀ n, P7546808507189543862.a n = A338329 n

end A338329

/-! ## A338329.P2773512393929258206

`A052938((7*n+3)%A003485(n))`
-/

namespace A338329.P2773512393929258206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (Int.tmod (7 * n + 3 : ℤ) (A003485 n)).toNat

end

end A338329.P2773512393929258206

namespace A338329

/-- `A052938((7*n+3)%A003485(n))` -/
def P2773512393929258206.Spec : Prop :=
  ∀ n, P2773512393929258206.a n = A338329 n

end A338329

/-! ## A338329.P449639672427552304

`A008619(A110657(n)*A158411(n))`
-/

namespace A338329.P449639672427552304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A110657 n * A158411 n).toNat

end

end A338329.P449639672427552304

namespace A338329

/-- `A008619(A110657(n)*A158411(n))` -/
def P449639672427552304.Spec : Prop :=
  ∀ n, P449639672427552304.a n = A338329 n

end A338329

/-! ## A338329.P5330752640066054689

`A029579(A110657(n)*A158411(n))`
-/

namespace A338329.P5330752640066054689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A110657 n * A158411 n).toNat

end

end A338329.P5330752640066054689

namespace A338329

/-- `A029579(A110657(n)*A158411(n))` -/
def P5330752640066054689.Spec : Prop :=
  ∀ n, P5330752640066054689.a n = A338329 n

end A338329

/-!
# A338330: Numbers that are neither a power of a prime (A000961) nor is their set of distinct prime indices pairwise coprime.

The programs for A338330, there is no canonical definition to state claims against.
-/

/-! ## A338330.P4230931966814936651

`lt[1, A290105(n+1)]+1`
-/

namespace A338330.P4230931966814936651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A338330.P4230931966814936651

/-! ## A338330.P17016462534550381880

`lt[1, A290105(A028310(n))]`
-/

namespace A338330.P17016462534550381880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338330.P17016462534550381880

/-! ## A338330.P1820538509216994426

`eq[1, A112206(a(A290105(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A338330.P1820538509216994426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A112206 (f2 (A290105 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338330.P1820538509216994426

/-! ## A338330.P11340048985263408628

`eq[1, A236677(a(A290105(n)))]` with `a(0)=2, a(1)=3`
-/

namespace A338330.P11340048985263408628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A236677 (f2 (A290105 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338330.P11340048985263408628

/-! ## A338330.P15641390229690790826

`eq[7, A000203(a(A290105(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A338330.P15641390229690790826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000203 (f2 (A290105 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338330.P15641390229690790826

/-! ## A338330.P9594797929580506826

`eq[7, A181762(a(A290105(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A338330.P9594797929580506826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A181762 (f2 (A290105 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338330.P9594797929580506826

/-! ## A338330.P11176688749746434416

`lt[1, A001221(A327656(n+1))]+1`
-/

namespace A338330.P11176688749746434416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327656 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A338330.P11176688749746434416

/-!
# A338331: Numbers whose set of distinct prime indices (A304038) is pairwise coprime, where a singleton is always considered coprime.

The programs for A338331, there is no canonical definition to state claims against.
-/

/-! ## A338331.P13435224617494184971

`eq[1, A290105(n+1)]+1`
-/

namespace A338331.P13435224617494184971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338331.P13435224617494184971

/-! ## A338331.P4498046624209068080

`lt[A322357(n+1), 3]+1`
-/

namespace A338331.P4498046624209068080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322357 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A338331.P4498046624209068080

/-! ## A338331.P6187159344566681427

`record[n-a(A290105(n))]` with `a(0)=1, a(1)=0`
-/

namespace A338331.P6187159344566681427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - f1 (A290105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338331.P6187159344566681427

/-! ## A338331.P6796962501140061095

`comp[A338330(n+1)-1]+1`
-/

namespace A338331.P6796962501140061095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338330 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A338331.P6796962501140061095

/-! ## A338331.P72375325527285422

`eq[2, A322357(2*(n+1))]+1`
-/

namespace A338331.P72375325527285422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322357 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338331.P72375325527285422

/-! ## A338331.P13950700269884017857

`eq[2, A322357(n+2)]/2+1`
-/

namespace A338331.P13950700269884017857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322357 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2 + 1

end

end A338331.P13950700269884017857

/-! ## A338331.P12842672894058215090

`record[n+2-A290105(2*(n+1))]`
-/

namespace A338331.P12842672894058215090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A290105 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338331.P12842672894058215090

/-! ## A338331.P3160555225956109571

`A000463(eq[2, A322357(n+1)])`
-/

namespace A338331.P3160555225956109571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338331.P3160555225956109571

/-! ## A338331.P14905530944225575943

`∪[A304711(n+1), A061345(n)]`
-/

namespace A338331.P14905530944225575943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338331.P14905530944225575943

/-! ## A338331.P1480815950234767301

`∪[A336735(n+1), A061345(n)]`
-/

namespace A338331.P1480815950234767301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338331.P1480815950234767301

/-!
# A338334: Number of integer-sided disphenoids (isosceles tetrahedra) with side lengths <= n which can be used to build a kaleidocycle by connecting 6 congruent pieces into a cycle.

The programs for A338334, there is no canonical definition to state claims against.
-/

/-! ## A338334.P4815433767135319194

`∑[A055017(A073729(n+1))/A061347(2^n)+n]`
-/

namespace A338334.P4815433767135319194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055017 (A073729 (n + 1)).toNat : ℚ) / (A061347 (2 ^ n) : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338334.P4815433767135319194

/-! ## A338334.P5380646907097099180

`∑[n]-A309766((2-n)²)`
-/

namespace A338334.P5380646907097099180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A309766 ((2 - (n : ℤ)) ^ 2).toNat

end

end A338334.P5380646907097099180

/-! ## A338334.P10811318338707734461

`A178798(∑[n]+1)+∑[n]`
-/

namespace A338334.P10811318338707734461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A338334.P10811318338707734461

/-! ## A338334.P6710091048908497608

`∑[n]-A081212(A006356(n))`
-/

namespace A338334.P6710091048908497608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A081212 (A006356 n).toNat

end

end A338334.P6710091048908497608

/-! ## A338334.P5758619124649527608

`∑[n]-A171588(A204352(n))`
-/

namespace A338334.P5758619124649527608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A171588 (A204352 n).toNat

end

end A338334.P5758619124649527608

/-!
# A338335: Number of integer-sided disphenoids (isosceles tetrahedra) with scalene triangle faces and side lengths <=n which can be used to build a kaleidocycle by connecting 6 congruent pieces into a cycle.

The programs for A338335, there is no canonical definition to state claims against.
-/

/-! ## A338335.P5508767437030748341

`∑[∑[A005088(A121281(n))]]`
-/

namespace A338335.P5508767437030748341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (A121281 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338335.P5508767437030748341

/-! ## A338335.P10858319300240413013

`∑[∑[A362240(A122111(2*n+1))]]`
-/

namespace A338335.P10858319300240413013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362240 (A122111 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338335.P10858319300240413013

/-! ## A338335.P1958748331123540579

`A057354(∑[floor(n/10)^n]²)`
-/

namespace A338335.P1958748331123540579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A338335.P1958748331123540579

/-! ## A338335.P10935954453389754770

`∑[∑[A058342(A251079(n))]]`
-/

namespace A338335.P10935954453389754770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058342 (A251079 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338335.P10935954453389754770

/-! ## A338335.P7593254975804635986

`∑[A090223(∑[A245795(n)])]`
-/

namespace A338335.P7593254975804635986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245795 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338335.P7593254975804635986

/-!
# A338336: Number of integer-sided disphenoids (isosceles tetrahedra) with triangle face perimeter n which can be used to build a kaleidocycle by connecting 6 congruent pieces into a cycle.

The programs for A338336, there is no canonical definition to state claims against.
-/

/-! ## A338336.P1176450829211598181

`A285007(n+1)+A002264(A028242(n))%A164903(2*n+3)`
-/

namespace A338336.P1176450829211598181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + Int.tmod (A002264 (A028242 n).toNat) (A164903 (2 * n + 3))

end

end A338336.P1176450829211598181

/-! ## A338336.P15506302276476567244

`Δ[round((2-n)²/12)%A261117(n)]`
-/

namespace A338336.P15506302276476567244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 12)) (A261117 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338336.P15506302276476567244

/-! ## A338336.P8546994870207488596

`Δ[A211540(n)]%A249936(n)`
-/

namespace A338336.P8546994870207488596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A249936 n)

end

end A338336.P8546994870207488596

/-! ## A338336.P16127911500305259104

`A353328(A143095(n+1))-1`
-/

namespace A338336.P16127911500305259104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (A143095 (n + 1)).toNat - 1

end

end A338336.P16127911500305259104

/-! ## A338336.P3492633338859042479

`A110592(A360410(n+2))-1`
-/

namespace A338336.P3492633338859042479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A360410 (n + 2)).toNat - 1

end

end A338336.P3492633338859042479

/-!
# A338337: 

The programs for A338337, there is no canonical definition to state claims against.
-/

/-! ## A338337.P11091941273566411833

`(11*n)!/((2*n)!*(3*n)!*(6*n)!)`
-/

namespace A338337.P11091941273566411833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (11 * n) : ℚ) / (Nat.factorial (2 * n) * Nat.factorial (3 * n) * Nat.factorial (6 * n) : ℚ)

end

end A338337.P11091941273566411833

/-!
# A338339: Primes p in A338338 that occur at the start of a run of three terms in A338338 that are divisible by p.

The programs for A338339, there is no canonical definition to state claims against.
-/

/-! ## A338339.P15907738607329681706

`A338338(A338340(n+1))`
-/

namespace A338339.P15907738607329681706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (A338340 (n + 1)).toNat

end

end A338339.P15907738607329681706

/-! ## A338339.P17385174827264758120

`A338338(∑[A338346(n+1)]+1)`
-/

namespace A338339.P17385174827264758120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A338339.P17385174827264758120

/-! ## A338339.P7472140264778364467

`p?[A338338(A338450(n+1)+1)]`
-/

namespace A338339.P7472140264778364467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (A338450 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338339.P7472140264778364467

/-! ## A338339.P17995713543988401227

`A338338(∩[A338345(n+1), A338450(n+1)+1])`
-/

namespace A338339.P17995713543988401227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338450 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A338339.P17995713543988401227

/-! ## A338339.P11386897604259209122

`A338451(∑[A338346(n+1)])`
-/

namespace A338339.P11386897604259209122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338451 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338339.P11386897604259209122

/-! ## A338339.P15992113425409800101

`record[A338440(A338345(n+1))]`
-/

namespace A338339.P15992113425409800101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338440 (A338345 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338339.P15992113425409800101

/-! ## A338339.P15007976710139087895

`p?[A338451(A338450(n+1))]`
-/

namespace A338339.P15007976710139087895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338451 (A338450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338339.P15007976710139087895

/-! ## A338339.P4653588380293504616

`A338451(A338340(n+1)-1)`
-/

namespace A338339.P4653588380293504616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338451 (A338340 (n + 1) - 1).toNat

end

end A338339.P4653588380293504616

/-! ## A338339.P11410410649339492413

`A338440(A338340(2*n+1-n))`
-/

namespace A338339.P11410410649339492413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338440 (A338340 (2 * n + 1 - n)).toNat

end

end A338339.P11410410649339492413

/-! ## A338339.P3377832627318643336

`A006530(2*A338440(A338340(n+1)))`
-/

namespace A338339.P3377832627318643336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A338440 (A338340 (n + 1)).toNat).toNat

end

end A338339.P3377832627318643336

/-! ## A338339.P2004224725752628768

`A338440(A338340(n+1)/∏{e}[A014963(n+1), #])`
-/

namespace A338339.P2004224725752628768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338440 (SequenceMachineLib.roundAway ((A338340 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ))).toNat

end

end A338339.P2004224725752628768

/-! ## A338339.P2125827974289998340

`A338440(A338340(n+1))/A001221(A338451(n+1))`
-/

namespace A338339.P2125827974289998340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338440 (A338340 (n + 1)).toNat : ℚ) / (A001221 (A338451 (n + 1)).toNat : ℚ)

end

end A338339.P2125827974289998340

/-! ## A338339.P521906825531479194

`A338440(A338340(n+1))/A338440(A338450(n+1))`
-/

namespace A338339.P521906825531479194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338440 (A338340 (n + 1)).toNat : ℚ) / (A338440 (A338450 (n + 1)).toNat : ℚ)

end

end A338339.P521906825531479194

/-!
# A338340: Numbers k such that A338338(k) is a prime p that starts a run of three terms in A338338 that are divisible by p.

The programs for A338340, there is no canonical definition to state claims against.
-/

/-! ## A338340.P9279427806134675626

`∑[A338346(n+1)]+1`
-/

namespace A338340.P9279427806134675626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A338340.P9279427806134675626

/-! ## A338340.P11957748802327377707

`∑[A254667(A338346(n+1))]`
-/

namespace A338340.P11957748802327377707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A338346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338340.P11957748802327377707

/-! ## A338340.P2555292640050136645

`a(n-1)+A054977(n)*A338346(n+1)` with `a(0)=2`
-/

namespace A338340.P2555292640050136645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A054977 n * A338346 (n + 1)

end

end A338340.P2555292640050136645

/-! ## A338340.P2893341325108600063

`a(n-1)+A338346(n+1)+A007814(A005408(n))` with `a(0)=2`
-/

namespace A338340.P2893341325108600063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A338346 (n + 1) + A007814 (A005408 n).toNat)

end

end A338340.P2893341325108600063

/-! ## A338340.P5587581403908092133

`∩[A338345(n+1), A338450(n+1)+1]`
-/

namespace A338340.P5587581403908092133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338450 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338340.P5587581403908092133

/-! ## A338340.P4964931210309270027

`A338347(A338339(n+1))`
-/

namespace A338340.P4964931210309270027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338347 (A338339 (n + 1)).toNat

end

end A338340.P4964931210309270027

/-! ## A338340.P14822709764396201371

`A020725(∑[A338346(n+1)])`
-/

namespace A338340.P14822709764396201371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338340.P14822709764396201371

/-! ## A338340.P233522155602130382

`A338347(p?[A338451(A338450(n+1))])`
-/

namespace A338340.P233522155602130382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338451 (A338450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338347 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338340.P233522155602130382

/-!
# A338341: Primes p in A338338 that occur in the middle of a run of three terms in A338338 that are divisible by p.

The programs for A338341, there is no canonical definition to state claims against.
-/

/-! ## A338341.P12994159643802830474

`A338338(A338342(n+1))`
-/

namespace A338341.P12994159643802830474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (A338342 (n + 1)).toNat

end

end A338341.P12994159643802830474

/-! ## A338341.P13670809331304672269

`A338440(A338342(n+1)-1)`
-/

namespace A338341.P13670809331304672269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338440 (A338342 (n + 1) - 1).toNat

end

end A338341.P13670809331304672269

/-! ## A338341.P5820500176702762915

`p?[A338440(A338345(n+1)-1)]`
-/

namespace A338341.P5820500176702762915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338440 (A338345 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338341.P5820500176702762915

/-! ## A338341.P2740371984370002481

`record[A338440(A338345(n+2)-1)]`
-/

namespace A338341.P2740371984370002481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338440 (A338345 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338341.P2740371984370002481

/-! ## A338341.P2302119656965538673

`A338449(A338342(2*n+1-n))`
-/

namespace A338341.P2302119656965538673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338449 (A338342 (2 * n + 1 - n)).toNat

end

end A338341.P2302119656965538673

/-! ## A338341.P4121663410505779912

`A338449(A338342(n+1)%A338342(n+1)²)`
-/

namespace A338341.P4121663410505779912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338449 (Int.tmod (A338342 (n + 1)) (A338342 (n + 1) ^ 2)).toNat

end

end A338341.P4121663410505779912

/-!
# A338342: Numbers k such that A338338(k) is a prime p in the middle of a run of three terms in A338338 that are divisible by p.

The programs for A338342, there is no canonical definition to state claims against.
-/

/-! ## A338342.P15874648547320741444

`A338347(A338341(n+1))`
-/

namespace A338342.P15874648547320741444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338347 (A338341 (n + 1)).toNat

end

end A338342.P15874648547320741444

/-! ## A338342.P6969778777423604380

`∏{d}[p?[A338440(A338345(n+1)-1)], A338347(#)]`
-/

namespace A338342.P6969778777423604380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338440 (A338345 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A338347 d

end

end A338342.P6969778777423604380

/-! ## A338342.P17485179078095666169

`A338347(record[A338341(C(comp[∑[n]]-n, 2)-n)])`
-/

namespace A338342.P17485179078095666169
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338341 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338342.P17485179078095666169

/-!
# A338343: Primes p in A338338 that occur at the end of a run of three terms in A338338 that are divisible by p.

The programs for A338343, there is no canonical definition to state claims against.
-/

/-! ## A338343.P14304168614057377367

`A338338(A338344(n+1))`
-/

namespace A338343.P14304168614057377367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (A338344 (n + 1)).toNat

end

end A338343.P14304168614057377367

/-! ## A338343.P1397697925047956120

`p?[A338338(A338450(n+1))]`
-/

namespace A338343.P1397697925047956120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (A338450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338343.P1397697925047956120

/-! ## A338343.P16645479692071089830

`p?[A338338(∑[A338346(n+1)])]`
-/

namespace A338343.P16645479692071089830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338346 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338343.P16645479692071089830

/-! ## A338343.P3312602875963403208

`p?[A338338(A338340(n+1)-1)]`
-/

namespace A338343.P3312602875963403208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (A338340 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338343.P3312602875963403208

/-! ## A338343.P14610710896548232867

`p?[A338338(A338345(n+1)-1)]`
-/

namespace A338343.P14610710896548232867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (A338345 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338343.P14610710896548232867

/-! ## A338343.P6463151021845429131

`A338338(∩[A338345(n+1), A338450(n+1)])`
-/

namespace A338343.P6463151021845429131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338450 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A338343.P6463151021845429131

/-! ## A338343.P16783676043336864024

`A338338(∩[A338345(n+1)-1, A338345(n+1)])`
-/

namespace A338343.P16783676043336864024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338345 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338345 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A338343.P16783676043336864024

/-!
# A338344: Numbers k such that A338338(k) is a prime p that ends a run of three terms in A338338 that are divisible by p.

The programs for A338344, there is no canonical definition to state claims against.
-/

/-! ## A338344.P9564651615281233403

`∩[A338345(n+1), A338450(n+1)]`
-/

namespace A338344.P9564651615281233403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338344.P9564651615281233403

/-! ## A338344.P7239674806926191307

`∩[A338340(n+1)-1, A338345(n+1)]`
-/

namespace A338344.P7239674806926191307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338340 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338344.P7239674806926191307

/-! ## A338344.P12479067986157792048

`∩[A338345(n+2)-1, A338345(n+2)]`
-/

namespace A338344.P12479067986157792048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338345 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338345 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338344.P12479067986157792048

/-! ## A338344.P16191320314595652499

`A338347(A338343(n+1))`
-/

namespace A338344.P16191320314595652499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338347 (A338343 (n + 1)).toNat

end

end A338344.P16191320314595652499

/-! ## A338344.P8404800435257438803

`A338347(record[A338343(C(comp[∑[n]]-n, 2)-n)])`
-/

namespace A338344.P8404800435257438803
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338343 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338344.P8404800435257438803

/-! ## A338344.P7072811706611545035

`A338347(p?[A338338(A338450(n+1))])`
-/

namespace A338344.P7072811706611545035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (A338450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338347 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338344.P7072811706611545035

/-!
# A338345: Numbers k such that A338338(k) is a prime.

The programs for A338345, there is no canonical definition to state claims against.
-/

/-! ## A338345.P7346725339413992248

`A338347(p?[A338338(n+1)])`
-/

namespace A338345.P7346725339413992248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338347 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338345.P7346725339413992248

/-! ## A338345.P14822886786805150140

`A316523(A006450(n+1))*A338347(A000040(n+1))`
-/

namespace A338345.P14822886786805150140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316523 (A006450 (n + 1)).toNat * A338347 (A000040 (n + 1)).toNat

end

end A338345.P14822886786805150140

/-! ## A338345.P17958234129408330830

`A338347(A000040(n+1))/A026714(C(n, 2)+1)`
-/

namespace A338345.P17958234129408330830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338347 (A000040 (n + 1)).toNat : ℚ) / (A026714 (Nat.choose n 2 + 1) : ℚ)

end

end A338345.P17958234129408330830

/-! ## A338345.P6012462193826399585

`A338347(A000040(n+1)%A224954(n+1))`
-/

namespace A338345.P6012462193826399585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338347 (Int.tmod (A000040 (n + 1)) (A224954 (n + 1))).toNat

end

end A338345.P6012462193826399585

/-! ## A338345.P14799040216333626759

`A220122(A220122(2*n+1))*A338347(A000040(n+1))`
-/

namespace A338345.P14799040216333626759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A220122 (2 * n + 1)).toNat * A338347 (A000040 (n + 1)).toNat

end

end A338345.P14799040216333626759

/-!
# A338346: 1, followed by first differences of A338340.

The programs for A338346, there is no canonical definition to state claims against.
-/

/-! ## A338346.P11165564454980593751

`A000007(n)+Δ[A338340(A028310(n))]`
-/

namespace A338346.P11165564454980593751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338340 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A338346.P11165564454980593751

/-! ## A338346.P4971605143098997198

`Δ[A338340(A028310(n))+A165471(n)²]`
-/

namespace A338346.P4971605143098997198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338340 (A028310 n).toNat + A165471 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338346.P4971605143098997198

/-! ## A338346.P7987875619566085692

`A338340(n+1)+A000007(n)-A338340(A028310(n))`
-/

namespace A338346.P7987875619566085692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338340 (n + 1) + (A000007 n - A338340 (A028310 n).toNat)

end

end A338346.P7987875619566085692

/-! ## A338346.P15106806244749297111

`A338340(n+1)-A338340(A028310(n))/A054977(n)`
-/

namespace A338346.P15106806244749297111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338340 (n + 1) : ℚ) - (A338340 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A338346.P15106806244749297111

/-! ## A338346.P1026280489288950766

`Δ[A338340(A028310(n))+A057427(n)]`
-/

namespace A338346.P1026280489288950766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338340 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338346.P1026280489288950766

/-! ## A338346.P15700271534177538116

`Δ[A338340(A028310(n))-A054977(n)]`
-/

namespace A338346.P15700271534177538116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338340 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338346.P15700271534177538116

/-! ## A338346.P14995158713381466219

`Δ[A338340(A028310(n))]^A165471(n²)`
-/

namespace A338346.P14995158713381466219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338340 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A165471 (n ^ 2) : ℤ)

end

end A338346.P14995158713381466219

/-! ## A338346.P15194702301748928524

`Δ[A338340(A028310(n))]+A085449(n+1)%2`
-/

namespace A338346.P15194702301748928524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338340 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A085449 (n + 1)) 2

end

end A338346.P15194702301748928524

/-!
# A338348: Records in A338338.

The programs for A338348, there is no canonical definition to state claims against.
-/

/-! ## A338348.P11175631241791218192

`record[A338338(n+1)]`
-/

namespace A338348.P11175631241791218192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338348.P11175631241791218192

/-! ## A338348.P1221367734946128707

`A338338(A338349(n+1))`
-/

namespace A338348.P1221367734946128707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (A338349 (n + 1)).toNat

end

end A338348.P1221367734946128707

/-!
# A338349: Indices of records in A338338.

The programs for A338349, there is no canonical definition to state claims against.
-/

/-! ## A338349.P12732462814659716727

`A338347(A338348(n+1))`
-/

namespace A338349.P12732462814659716727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338347 (A338348 (n + 1)).toNat

end

end A338349.P12732462814659716727

/-! ## A338349.P7605153399400994736

`A338347(record[A338338(n+1)])`
-/

namespace A338349.P7605153399400994736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338349.P7605153399400994736

/-!
# A338352: Indices of primes in A280985.

The programs for A338352, there is no canonical definition to state claims against.
-/

/-! ## A338352.P6041207839695423553

`A338360(n+3)-1`
-/

namespace A338352.P6041207839695423553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338360 (n + 3) - 1

end

end A338352.P6041207839695423553

/-! ## A338352.P10537432337524169886

`A338365(n+1)+A000040(n+1)`
-/

namespace A338352.P10537432337524169886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338365 (n + 1) + A000040 (n + 1)

end

end A338352.P10537432337524169886

/-! ## A338352.P5439734908136047309

`A338365(n+1)+A283312(A338361(n+1))`
-/

namespace A338352.P5439734908136047309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338365 (n + 1) + A283312 (A338361 (n + 1)).toNat

end

end A338352.P5439734908136047309

/-! ## A338352.P3054565999654416564

`A338361(n+1)+A338365(n+1)-A107347(n+1)`
-/

namespace A338352.P3054565999654416564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338361 (n + 1) + (A338365 (n + 1) - A107347 (n + 1))

end

end A338352.P3054565999654416564

/-! ## A338352.P14837041389881363298

`A338365(n+1)+p?[A280864(n+1)]`
-/

namespace A338352.P14837041389881363298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338365 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338352.P14837041389881363298

/-! ## A338352.P16925931892927350251

`A338365(n+1)+A280864(A280742(n+1))`
-/

namespace A338352.P16925931892927350251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338365 (n + 1) + A280864 (A280742 (n + 1)).toNat

end

end A338352.P16925931892927350251

/-! ## A338352.P15025788190410027361

`A281117(A000040(n+1))`
-/

namespace A338352.P15025788190410027361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (A000040 (n + 1)).toNat

end

end A338352.P15025788190410027361

/-! ## A338352.P17390883827856658005

`A281117(A008578(n+2))`
-/

namespace A338352.P17390883827856658005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (A008578 (n + 2)).toNat

end

end A338352.P17390883827856658005

/-! ## A338352.P5595058292247375841

`A281117(A182986(n+2))`
-/

namespace A338352.P5595058292247375841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (A182986 (n + 2)).toNat

end

end A338352.P5595058292247375841

/-! ## A338352.P16669427036336932582

`A281117(record[A006530(n+2)])`
-/

namespace A338352.P16669427036336932582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338352.P16669427036336932582

/-! ## A338352.P9108336808816890999

`A281117(record[A014963(n+2)])`
-/

namespace A338352.P9108336808816890999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338352.P9108336808816890999

/-! ## A338352.P6752947255314936425

`A281117(record[A020639(n+2)])`
-/

namespace A338352.P6752947255314936425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338352.P6752947255314936425

/-! ## A338352.P17301990072338008089

`A281117(A001747(n+2)/2)`
-/

namespace A338352.P17301990072338008089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A338352.P17301990072338008089

/-! ## A338352.P17242859373312605380

`A281117(A283312(A338361(n+1)))`
-/

namespace A338352.P17242859373312605380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (A283312 (A338361 (n + 1)).toNat).toNat

end

end A338352.P17242859373312605380

/-! ## A338352.P13276805991068334694

`A281117(A006530(A001747(n+2)))`
-/

namespace A338352.P13276805991068334694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (A006530 (A001747 (n + 2)).toNat).toNat

end

end A338352.P13276805991068334694

/-! ## A338352.P15728360943614084251

`A281117(A338361(n+1)-A107347(n+1))`
-/

namespace A338352.P15728360943614084251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (A338361 (n + 1) - A107347 (n + 1)).toNat

end

end A338352.P15728360943614084251

/-! ## A338352.P6304942120229882626

`A281117(record[p?[A281121(n+1)]])`
-/

namespace A338352.P6304942120229882626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281121 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338352.P6304942120229882626

/-! ## A338352.P13596620757570312875

`A338365(n+1)+record[A338357(n+2)]`
-/

namespace A338352.P13596620757570312875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338365 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338352.P13596620757570312875

/-!
# A338353: A (0,1)-matrix in the first quadrant read by downward antidiagonals: an example of a non-uniformly recurrent 2-D word having uniformly recurrent rows and columns.

The programs for A338353, there is no canonical definition to state claims against.
-/

/-! ## A338353.P15836123959134543777

`xor(7, A166918(n))²%3`
-/

namespace A338353.P15836123959134543777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 7 (A166918 n) ^ 2) 3

end

end A338353.P15836123959134543777

/-! ## A338353.P10541056869701046052

`and(round(sqrt(2*n))*char[∑[n]]+1, A256130(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A338353.P10541056869701046052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1) (A256130 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2))

end

end A338353.P10541056869701046052

/-! ## A338353.P9268142835517074779

`and(round(sqrt(2*n))*char[∑[n]]+1, A319797(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A338353.P9268142835517074779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1) (A319797 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2))

end

end A338353.P9268142835517074779

/-! ## A338353.P17715965071258189764

`A157749(A166918(n))`
-/

namespace A338353.P17715965071258189764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157749 (A166918 n).toNat

end

end A338353.P17715965071258189764

/-! ## A338353.P17166853233050184437

`A003849(A194056(n+1))`
-/

namespace A338353.P17166853233050184437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A194056 (n + 1)).toNat

end

end A338353.P17166853233050184437

/-!
# A338354: A (0,1)-matrix in the first quadrant read by downward antidiagonals: an example of a uniformly recurrent 2-D word in which row 0 is non-recurrent.

The programs for A338354, there is no canonical definition to state claims against.
-/

/-! ## A338354.P14020737449487668842

`ceil(A365923(n)/16)`
-/

namespace A338354.P14020737449487668842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A365923 n : ℚ) / 16⌉

end

end A338354.P14020737449487668842

/-! ## A338354.P11251188177660218002

`(A341315(n)%2)^n`
-/

namespace A338354.P11251188177660218002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341315 n) 2 ^ n

end

end A338354.P11251188177660218002

/-! ## A338354.P935406685390402947

`A290452(n*a(n-1))` with `a(0)=1`
-/

namespace A338354.P935406685390402947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290452 ((n : ℤ) * a (n - 1)).toNat

end

end A338354.P935406685390402947

/-! ## A338354.P6413770178390534952

`A290452(n^a(n-1))` with `a(0)=1`
-/

namespace A338354.P6413770178390534952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290452 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A338354.P6413770178390534952

/-! ## A338354.P12638725578996534485

`A290452(lcm(n, a(n-1)))` with `a(0)=1`
-/

namespace A338354.P12638725578996534485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290452 (Int.lcm (n : ℤ) (a (n - 1)))

end

end A338354.P12638725578996534485

/-! ## A338354.P12427875494759167861

`A290452(C(n, a(n-1)))` with `a(0)=1`
-/

namespace A338354.P12427875494759167861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290452 (Nat.choose n (a (n - 1)).toNat)

end

end A338354.P12427875494759167861

/-! ## A338354.P13287058899786576798

`A341315(floor(acot(n)+n))%2`
-/

namespace A338354.P13287058899786576798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341315 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat) 2

end

end A338354.P13287058899786576798

/-! ## A338354.P17366670875612895564

`A341315(xor(n, floor(acot(n))))%2`
-/

namespace A338354.P17366670875612895564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341315 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat) 2

end

end A338354.P17366670875612895564

/-! ## A338354.P12416127017276961044

`A008949(n*a(n-1))%2` with `a(0)=1`
-/

namespace A338354.P12416127017276961044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A008949 ((n : ℤ) * a (n - 1)).toNat) 2

end

end A338354.P12416127017276961044

/-! ## A338354.P10384534356675845065

`A029618(n*a(n-1))%2` with `a(0)=1`
-/

namespace A338354.P10384534356675845065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A029618 ((n : ℤ) * a (n - 1)).toNat) 2

end

end A338354.P10384534356675845065

/-!
# A338356: Indices of records in A283312.

The programs for A338356, there is no canonical definition to state claims against.
-/

/-! ## A338356.P3924287488865101313

`record[n%A283312(n+1)+1]`
-/

namespace A338356.P3924287488865101313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A283312 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338356.P3924287488865101313

/-! ## A338356.P16170496354284047905

`lt[n, A283312(n+1)]+1`
-/

namespace A338356.P16170496354284047905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A338356.P16170496354284047905

/-! ## A338356.P18023364661145579503

`A338362(record[A127202(n+1)])`
-/

namespace A338356.P18023364661145579503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338356.P18023364661145579503

/-! ## A338356.P15810018667979543467

`A338362(record[A283312(n+1)])`
-/

namespace A338356.P15810018667979543467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338356.P15810018667979543467

/-! ## A338356.P1368513408197092239

`record[A338362(n+1)%A283313(n+1)]`
-/

namespace A338356.P1368513408197092239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338362 (n + 1)) (A283313 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338356.P1368513408197092239

/-! ## A338356.P8190360693205877083

`A338362(eq[1, floor((n+1)/A338362(n+1))]+1)`
-/

namespace A338356.P8190360693205877083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A338362 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A338356.P8190360693205877083

/-!
# A338357: First differences of A283312.

The programs for A338357, there is no canonical definition to state claims against.
-/

/-! ## A338357.P17894263142974581844

`Δ[A283312(n+1)]`
-/

namespace A338357.P17894263142974581844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338357.P17894263142974581844

/-! ## A338357.P10617994532248945782

`A283312(n+2)-A283312(n+1)`
-/

namespace A338357.P10617994532248945782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 2) - A283312 (n + 1)

end

end A338357.P10617994532248945782

/-!
# A338358: First differences of A280985.

The programs for A338358, there is no canonical definition to state claims against.
-/

/-! ## A338358.P2816183909273359909

`Δ[and(∑[2^n], A127202(n+1))]`
-/

namespace A338358.P2816183909273359909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A127202 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338358.P2816183909273359909

/-! ## A338358.P16817145788833216942

`Δ[A127202(A003056(∑[n+2]-1))]`
-/

namespace A338358.P16817145788833216942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127202 (A003056 (∑ j ∈ Finset.range (n + 1), f2 j - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338358.P16817145788833216942

/-!
# A338359: First differences of A280864.

The programs for A338359, there is no canonical definition to state claims against.
-/

/-! ## A338359.P1401749191101078865

`Δ[A280864(n+1)]`
-/

namespace A338359.P1401749191101078865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338359.P1401749191101078865

/-! ## A338359.P8339612313366638153

`A280864(n+2)-A280864(n+1)`
-/

namespace A338359.P8339612313366638153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 2) - A280864 (n + 1)

end

end A338359.P8339612313366638153

/-! ## A338359.P5726056677125371307

`Δ[A372063(n+1)+A280866(n+1)]`
-/

namespace A338359.P5726056677125371307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372063 (n + 1) + A280866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338359.P5726056677125371307

/-! ## A338359.P17374794665473356211

`Δ[A280866(n+1)%A087904(n)]`
-/

namespace A338359.P17374794665473356211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280866 (n + 1)) (A087904 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338359.P17374794665473356211

/-! ## A338359.P4680127844715060671

`Δ[A280866(n+1)]%A031582(n+1)`
-/

namespace A338359.P4680127844715060671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A031582 (n + 1))

end

end A338359.P4680127844715060671

/-!
# A338360: Indices of records in A280985.

The programs for A338360, there is no canonical definition to state claims against.
-/

/-! ## A338360.P18034181610825521616

`A281117(record[A127202(n+1)])`
-/

namespace A338360.P18034181610825521616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338360.P18034181610825521616

/-! ## A338360.P14711809929758302363

`A281117(record[A283312(n+1)])`
-/

namespace A338360.P14711809929758302363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338360.P14711809929758302363

/-! ## A338360.P11280496531280652150

`record[A281117(n+1)%A281354(n+1)]`
-/

namespace A338360.P11280496531280652150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281117 (n + 1)) (A281354 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338360.P11280496531280652150

/-!
# A338361: Indices of primes in A283312.

The programs for A338361, the canonical program `A338361.P5965664958947979086` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338361 has offset 1).

The definition of A338361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7099 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338361.P5965664958947979086

`A369610(n+1)+Δ[n²]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338361

/-- `A369610(n+1)+Δ[n²]` -/
def P5965664958947979086.Spec : Prop :=
  ∀ n, P5965664958947979086.a n = A338361 (n + 1)

theorem P5965664958947979086.correct : P5965664958947979086.Spec := by
  intro n
  simp only [A338361, Nat.add_sub_cancel]

end A338361

/-! ## A338361.P11117120294197005080

`comp[A056171(n+1)+n]+1`
-/

namespace A338361.P11117120294197005080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A338361.P11117120294197005080

namespace A338361

/-- `comp[A056171(n+1)+n]+1` -/
def P11117120294197005080.Spec : Prop :=
  ∀ n, (P11117120294197005080.a n : ℤ) = A338361 (n + 1)

end A338361

/-! ## A338361.P5383800853382176925

`A107347(n+1)+A000040(n+1)`
-/

namespace A338361.P5383800853382176925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (n + 1) + A000040 (n + 1)

end

end A338361.P5383800853382176925

namespace A338361

/-- `A107347(n+1)+A000040(n+1)` -/
def P5383800853382176925.Spec : Prop :=
  ∀ n, P5383800853382176925.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P12803123884032260361

`A107347(n+1)+A008578(n+2)`
-/

namespace A338361.P12803123884032260361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (n + 1) + A008578 (n + 2)

end

end A338361.P12803123884032260361

namespace A338361

/-- `A107347(n+1)+A008578(n+2)` -/
def P12803123884032260361.Spec : Prop :=
  ∀ n, P12803123884032260361.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P10551249111087372146

`record[A056171(n+2)+A000010(n+2)]`
-/

namespace A338361.P10551249111087372146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 2) + A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338361.P10551249111087372146

namespace A338361

/-- `record[A056171(n+2)+A000010(n+2)]` -/
def P10551249111087372146.Spec : Prop :=
  ∀ n, P10551249111087372146.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P14235058474899922757

`A008864(n+1)+A107347(n+1)-1`
-/

namespace A338361.P14235058474899922757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A107347 (n + 1) - 1)

end

end A338361.P14235058474899922757

namespace A338361

/-- `A008864(n+1)+A107347(n+1)-1` -/
def P14235058474899922757.Spec : Prop :=
  ∀ n, P14235058474899922757.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P11072207301430943475

`A056171(A006093(n+1)+1)+A006093(n+1)`
-/

namespace A338361.P11072207301430943475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A006093 (n + 1) + 1).toNat + A006093 (n + 1)

end

end A338361.P11072207301430943475

namespace A338361

/-- `A056171(A006093(n+1)+1)+A006093(n+1)` -/
def P11072207301430943475.Spec : Prop :=
  ∀ n, P11072207301430943475.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P4977747124994554917

`A056171(A000040(n+1)-1)+A000040(n+1)`
-/

namespace A338361.P4977747124994554917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A000040 (n + 1) - 1).toNat + A000040 (n + 1)

end

end A338361.P4977747124994554917

namespace A338361

/-- `A056171(A000040(n+1)-1)+A000040(n+1)` -/
def P4977747124994554917.Spec : Prop :=
  ∀ n, P4977747124994554917.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P767544203832755961

`A000040(n+1)-A000720(A130290(n+1))+n`
-/

namespace A338361.P767544203832755961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000720 (A130290 (n + 1)).toNat + (n : ℤ)

end

end A338361.P767544203832755961

namespace A338361

/-- `A000040(n+1)-A000720(A130290(n+1))+n` -/
def P767544203832755961.Spec : Prop :=
  ∀ n, P767544203832755961.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P3764565375627725763

`A338356(n+3)-1`
-/

namespace A338361.P3764565375627725763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338356 (n + 3) - 1

end

end A338361.P3764565375627725763

namespace A338361

/-- `A338356(n+3)-1` -/
def P3764565375627725763.Spec : Prop :=
  ∀ n, P3764565375627725763.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P15841877072472175556

`A107347(n+1)+p?[A085118(n+1)]`
-/

namespace A338361.P15841877072472175556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338361.P15841877072472175556

namespace A338361

/-- `A107347(n+1)+p?[A085118(n+1)]` -/
def P15841877072472175556.Spec : Prop :=
  ∀ n, P15841877072472175556.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P16317147201414076932

`A280864(A280742(n+1))+A107347(n+1)`
-/

namespace A338361.P16317147201414076932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A280742 (n + 1)).toNat + A107347 (n + 1)

end

end A338361.P16317147201414076932

namespace A338361

/-- `A280864(A280742(n+1))+A107347(n+1)` -/
def P16317147201414076932.Spec : Prop :=
  ∀ n, P16317147201414076932.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P3777392334949818868

`lt[n+1, A283312(n+1)]`
-/

namespace A338361.P3777392334949818868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338361.P3777392334949818868

namespace A338361

/-- `lt[n+1, A283312(n+1)]` -/
def P3777392334949818868.Spec : Prop :=
  ∀ n, (P3777392334949818868.a n : ℤ) = A338361 (n + 1)

end A338361

/-! ## A338361.P4811759434644655727

`A338362(A000040(n+1))`
-/

namespace A338361.P4811759434644655727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338362 (A000040 (n + 1)).toNat

end

end A338361.P4811759434644655727

namespace A338361

/-- `A338362(A000040(n+1))` -/
def P4811759434644655727.Spec : Prop :=
  ∀ n, P4811759434644655727.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P9799988005843891204

`A338362(A008578(n+2))`
-/

namespace A338361.P9799988005843891204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338362 (A008578 (n + 2)).toNat

end

end A338361.P9799988005843891204

namespace A338361

/-- `A338362(A008578(n+2))` -/
def P9799988005843891204.Spec : Prop :=
  ∀ n, P9799988005843891204.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P2795240532111557170

`A338362(A182986(n+2))`
-/

namespace A338361.P2795240532111557170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338362 (A182986 (n + 2)).toNat

end

end A338361.P2795240532111557170

namespace A338361

/-- `A338362(A182986(n+2))` -/
def P2795240532111557170.Spec : Prop :=
  ∀ n, P2795240532111557170.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P2299826493728305012

`A338362(record[A006530(n+2)])`
-/

namespace A338361.P2299826493728305012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338361.P2299826493728305012

namespace A338361

/-- `A338362(record[A006530(n+2)])` -/
def P2299826493728305012.Spec : Prop :=
  ∀ n, P2299826493728305012.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P13648650719829584544

`A338362(record[A014963(n+2)])`
-/

namespace A338361.P13648650719829584544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338361.P13648650719829584544

namespace A338361

/-- `A338362(record[A014963(n+2)])` -/
def P13648650719829584544.Spec : Prop :=
  ∀ n, P13648650719829584544.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P4820070711380899335

`A338362(record[A020639(n+2)])`
-/

namespace A338361.P4820070711380899335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338361.P4820070711380899335

namespace A338361

/-- `A338362(record[A020639(n+2)])` -/
def P4820070711380899335.Spec : Prop :=
  ∀ n, P4820070711380899335.a n = A338361 (n + 1)

end A338361

/-! ## A338361.P2800177776922122026

`A338362(A100484(n+1)/2)`
-/

namespace A338361.P2800177776922122026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338362 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A338361.P2800177776922122026

namespace A338361

/-- `A338362(A100484(n+1)/2)` -/
def P2800177776922122026.Spec : Prop :=
  ∀ n, P2800177776922122026.a n = A338361 (n + 1)

end A338361

/-!
# A338363: a(n) = n + pi(n) - pi(floor(n/2)), where pi = A000720.

The programs for A338363, the canonical program `A338363.P13456070937522587002` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338363 has offset 1).

The definition of A338363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056171, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338363.P13456070937522587002

`n+1+A056171(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338363

/-- `n+1+A056171(n+1)` -/
def P13456070937522587002.Spec : Prop :=
  ∀ n, P13456070937522587002.a n = A338363 (n + 1)

theorem P13456070937522587002.correct : P13456070937522587002.Spec := by
  intro n
  simp only [A338363, Nat.add_sub_cancel]

end A338363

/-! ## A338363.P7609306749860598917

`∑[C(2, ∑{e}[n+1, #+1])]-∑[∑{p}[n+1, val((n+1)²-#, 2*n+1)]]+n`
-/

namespace A338363.P7609306749860598917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), SequenceMachineLib.valuation (((n + 1) ^ 2 : ℤ) - (p : ℤ)).toNat (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) + (n : ℤ)

end

end A338363.P7609306749860598917

namespace A338363

/-- `∑[C(2, ∑{e}[n+1, #+1])]-∑[∑{p}[n+1, val((n+1)²-#, 2*n+1)]]+n` -/
def P7609306749860598917.Spec : Prop :=
  ∀ n, P7609306749860598917.a n = A338363 (n + 1)

end A338363

/-! ## A338363.P1131664973554478378

`∑[(A105661(n+1)+1)%3]`
-/

namespace A338363.P1131664973554478378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105661 (n + 1) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338363.P1131664973554478378

namespace A338363

/-- `∑[(A105661(n+1)+1)%3]` -/
def P1131664973554478378.Spec : Prop :=
  ∀ n, P1131664973554478378.a n = A338363 (n + 1)

end A338363

/-! ## A338363.P13766460034237847756

`A282029(n+1)+A000720(n+1)`
-/

namespace A338363.P13766460034237847756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282029 (n + 1) + A000720 (n + 1)

end

end A338363.P13766460034237847756

namespace A338363

/-- `A282029(n+1)+A000720(n+1)` -/
def P13766460034237847756.Spec : Prop :=
  ∀ n, P13766460034237847756.a n = A338363 (n + 1)

end A338363

/-! ## A338363.P1386594173014935816

`A294602(n+1)+A014683(n+1)`
-/

namespace A338363.P1386594173014935816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (n + 1) + A014683 (n + 1)

end

end A338363.P1386594173014935816

namespace A338363

/-- `A294602(n+1)+A014683(n+1)` -/
def P1386594173014935816.Spec : Prop :=
  ∀ n, P1386594173014935816.a n = A338363 (n + 1)

end A338363

/-! ## A338363.P1065468849195356028

`A036234(n+1)-A056172(n+1)+n`
-/

namespace A338363.P1065468849195356028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A056172 (n + 1) + (n : ℤ)

end

end A338363.P1065468849195356028

namespace A338363

/-- `A036234(n+1)-A056172(n+1)+n` -/
def P1065468849195356028.Spec : Prop :=
  ∀ n, P1065468849195356028.a n = A338363 (n + 1)

end A338363

/-! ## A338363.P4185794742734151459

`A076225(n+1)+n`
-/

namespace A338363.P4185794742734151459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076225 (n + 1) + (n : ℤ)

end

end A338363.P4185794742734151459

namespace A338363

/-- `A076225(n+1)+n` -/
def P4185794742734151459.Spec : Prop :=
  ∀ n, P4185794742734151459.a n = A338363 (n + 1)

end A338363

/-! ## A338363.P2808837861003810135

`A000005(A056672(n+1))+n`
-/

namespace A338363.P2808837861003810135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056672 (n + 1)).toNat + (n : ℤ)

end

end A338363.P2808837861003810135

namespace A338363

/-- `A000005(A056672(n+1))+n` -/
def P2808837861003810135.Spec : Prop :=
  ∀ n, P2808837861003810135.a n = A338363 (n + 1)

end A338363

/-! ## A338363.P6806114784515262626

`A001222(2*A056672(n+1))+n`
-/

namespace A338363.P6806114784515262626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A056672 (n + 1)).toNat + (n : ℤ)

end

end A338363.P6806114784515262626

namespace A338363

/-- `A001222(2*A056672(n+1))+n` -/
def P6806114784515262626.Spec : Prop :=
  ∀ n, P6806114784515262626.a n = A338363 (n + 1)

end A338363

/-! ## A338363.P13861021195758017273

`A001222(lcm(3, A056672(n+1)))+n`
-/

namespace A338363.P13861021195758017273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (A056672 (n + 1))) + (n : ℤ)

end

end A338363.P13861021195758017273

namespace A338363

/-- `A001222(lcm(3, A056672(n+1)))+n` -/
def P13861021195758017273.Spec : Prop :=
  ∀ n, P13861021195758017273.a n = A338363 (n + 1)

end A338363

/-! ## A338363.P2770934723261439502

`∑[A008683(Δ[A339509(n)])]+n`
-/

namespace A338363.P2770934723261439502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A338363.P2770934723261439502

namespace A338363

/-- `∑[A008683(Δ[A339509(n)])]+n` -/
def P2770934723261439502.Spec : Prop :=
  ∀ n, P2770934723261439502.a n = A338363 (n + 1)

end A338363

/-!
# A338364: a(n) = Product_{k=1..n} phi(prime(k)-1).

The programs for A338364, there is no canonical definition to state claims against.
-/

/-! ## A338364.P6782320911286759177

`a(n-1)*A008330(n)` with `a(0)=1`
-/

namespace A338364.P6782320911286759177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008330 n

end

end A338364.P6782320911286759177

/-! ## A338364.P5079357523164864811

`a(n-1)*A000010(A000040(n)-1)` with `a(0)=1`
-/

namespace A338364.P5079357523164864811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000010 (A000040 n - 1).toNat

end

end A338364.P5079357523164864811

/-! ## A338364.P12407927796493914819

`a(n-1)*A000010(eq[n+1, A006530(n+1)])` with `a(0)=1`
-/

namespace A338364.P12407927796493914819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338364.P12407927796493914819

/-! ## A338364.P7111888195224209768

`a(n-1)*A000010(eq[n+1, A014963(n+1)])` with `a(0)=1`
-/

namespace A338364.P7111888195224209768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338364.P7111888195224209768

/-! ## A338364.P11835876349169184647

`∏[A000010(A000010(record[A014963(n+1)]))]`
-/

namespace A338364.P11835876349169184647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A338364.P11835876349169184647

/-!
# A338365: a(n) = (index of prime(n) in A280985) - prime(n).

The programs for A338365, there is no canonical definition to state claims against.
-/

/-! ## A338365.P9263750270833696112

`A338352(n+1)-A000040(n+1)`
-/

namespace A338365.P9263750270833696112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338352 (n + 1) - A000040 (n + 1)

end

end A338365.P9263750270833696112

/-! ## A338365.P12356193640517593290

`A338352(n+1)-A008578(n+2)`
-/

namespace A338365.P12356193640517593290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338352 (n + 1) - A008578 (n + 2)

end

end A338365.P12356193640517593290

/-! ## A338365.P3452377518522259628

`A338352(n+1)-p?[A127202(n+1)]`
-/

namespace A338365.P3452377518522259628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338352 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338365.P3452377518522259628

/-! ## A338365.P2471467308594758042

`A338352(n+1)-p?[A283312(n+1)]`
-/

namespace A338365.P2471467308594758042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338352 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338365.P2471467308594758042

/-! ## A338365.P2890172100557552238

`A281117(A182986(n+2))-A182986(n+2)`
-/

namespace A338365.P2890172100557552238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281117 (A182986 (n + 2)).toNat - A182986 (n + 2)

end

end A338365.P2890172100557552238

/-! ## A338365.P2123090415894137595

`A338352(n+1)-record[A338357(n+2)]`
-/

namespace A338365.P2123090415894137595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338352 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338365.P2123090415894137595

/-! ## A338365.P3638566054367275532

`A338352(n+1)-A338357(A338361(n+1))`
-/

namespace A338365.P3638566054367275532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338352 (n + 1) - A338357 (A338361 (n + 1)).toNat

end

end A338365.P3638566054367275532

/-!
# A338367: Square spiral of nonnegative integers built by greedy algorithm such that for any (i, j) <> (0, 0) there is at most one position, say (n, k), such that the values at (n, k) and at (n+i, k+j) are the same.

The programs for A338367, there is no canonical definition to state claims against.
-/

/-! ## A338367.P756405274042798976

`A025926(A007068(n+1))%A065362(n+1)`
-/

namespace A338367.P756405274042798976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025926 (A007068 (n + 1)).toNat) (A065362 (n + 1))

end

end A338367.P756405274042798976

/-! ## A338367.P12584490362501559218

`A053398(floor(sqrt(A177483(n))))`
-/

namespace A338367.P12584490362501559218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053398 (Int.sqrt (A177483 n)).toNat

end

end A338367.P12584490362501559218

/-! ## A338367.P16693075355201318569

`A001222(or((n+1)/∏{p}[n+1, #], A074086(n)))`
-/

namespace A338367.P16693075355201318569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A074086 n)).toNat

end

end A338367.P16693075355201318569

/-! ## A338367.P12779118573990650818

`A022843(A014950(n+3))%A008619(n)`
-/

namespace A338367.P12779118573990650818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022843 (A014950 (n + 3)).toNat) (A008619 n)

end

end A338367.P12779118573990650818

/-! ## A338367.P15134566802600436139

`A001222(or(A000188(n+1), A074086(n)))`
-/

namespace A338367.P15134566802600436139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A000188 (n + 1)) (A074086 n)).toNat

end

end A338367.P15134566802600436139

/-!
# A338369: Triangle read by rows: T(n,k) = (Sum_{i=0..n-k}(1+k*i)^3)/(Sum_{i=0..n-k} (1+k*i)) for 0 <= k <= n.

The programs for A338369, there is no canonical definition to state claims against.
-/

/-! ## A338369.P13466508874233373310

`A244911(n)+A000217(A004247(n))`
-/

namespace A338369.P13466508874233373310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 n + A000217 (A004247 n).toNat

end

end A338369.P13466508874233373310

/-! ## A338369.P5491041704799270095

`A285192(n)+A101321(A056943(n))`
-/

namespace A338369.P5491041704799270095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285192 n + A101321 (A056943 n).toNat

end

end A338369.P5491041704799270095

/-! ## A338369.P3865714999731144765

`A244911(n)+A161680(A077028(n))`
-/

namespace A338369.P3865714999731144765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 n + A161680 (A077028 n).toNat

end

end A338369.P3865714999731144765

/-! ## A338369.P5270773382287827052

`A244911(n)+A057944(A285192(n))`
-/

namespace A338369.P5270773382287827052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 n + A057944 (A285192 n).toNat

end

end A338369.P5270773382287827052

/-! ## A338369.P9495361027780754000

`A244911(n)+A001971(A130154(n+1))`
-/

namespace A338369.P9495361027780754000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 n + A001971 (A130154 (n + 1)).toNat

end

end A338369.P9495361027780754000

/-! ## A338369.P16733415355852498787

`A244911(n)+A285192(n)-A004247(n)`
-/

namespace A338369.P16733415355852498787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 n + (A285192 n - A004247 n)

end

end A338369.P16733415355852498787

/-! ## A338369.P7980845133290870641

`A077028(n)+A002262(n)*A062707(n)`
-/

namespace A338369.P7980845133290870641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A002262 n * A062707 n

end

end A338369.P7980845133290870641

/-! ## A338369.P16556800996625805423

`A077028(n)+A025668(n+1)*A062707(n)`
-/

namespace A338369.P16556800996625805423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A025668 (n + 1) * A062707 n

end

end A338369.P16556800996625805423

/-! ## A338369.P255804595439891488

`A062707(A056943(n))+A000217(A077028(n))`
-/

namespace A338369.P255804595439891488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (A056943 n).toNat + A000217 (A077028 n).toNat

end

end A338369.P255804595439891488

/-! ## A338369.P3655026804064565444

`A082046(n)-A361521(n)`
-/

namespace A338369.P3655026804064565444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082046 n - A361521 n

end

end A338369.P3655026804064565444

/-!
# A338370: Numbers k such that 4^k - 2^k + 1 is a strong pseudoprime to base 2 (A001262).

The programs for A338370, there is no canonical definition to state claims against.
-/

/-! ## A338370.P13999047370286565452

`A068563(A337843(n+3))`
-/

namespace A338370.P13999047370286565452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068563 (A337843 (n + 3)).toNat

end

end A338370.P13999047370286565452

/-! ## A338370.P11262616605009205961

`∩[A124240(n+4), A095274(n)+1]`
-/

namespace A338370.P11262616605009205961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338370.P11262616605009205961

/-! ## A338370.P4900640407680208716

`lt[(2*A336898(n))², A004178(n)]`
-/

namespace A338370.P4900640407680208716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A336898 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338370.P4900640407680208716

/-! ## A338370.P8661177653162203514

`lt[(2*A336898(n))², A222212(n)]`
-/

namespace A338370.P8661177653162203514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A336898 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338370.P8661177653162203514

/-! ## A338370.P17538025162165966569

`lt[A336898(n), atan(A336859(2*n+1))]`
-/

namespace A338370.P17538025162165966569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A336859 (2 * n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A338370.P17538025162165966569

/-!
# A338372: T(n, m) = Sum_{k=1..(m+3)/2} C(m-k+2, k-1)*C(n+1, k-1)*C(n-m+k-1, k-1)*C(2*n-2*k+4, 2*m-4*k+5)/(C(2*k-2, k-1)*C(2*m-2*k+4, 2*k-2))/2, triangle read by rows.

The programs for A338372, there is no canonical definition to state claims against.
-/

/-! ## A338372.P1480129415400705316

`A059268(n)*A208752(n+1)`
-/

namespace A338372.P1480129415400705316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A208752 (n + 1)

end

end A338372.P1480129415400705316

/-! ## A338372.P13229249792615674743

`2^A002262(n)*A208752(n+1)`
-/

namespace A338372.P13229249792615674743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A208752 (n + 1) : ℚ)

end

end A338372.P13229249792615674743

/-! ## A338372.P13204585297662821489

`A000079(A002262(n))*A208752(n+1)`
-/

namespace A338372.P13204585297662821489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A208752 (n + 1)

end

end A338372.P13204585297662821489

/-! ## A338372.P8529854318719425290

`A011782(A002260(n+1))*A208752(n+1)`
-/

namespace A338372.P8529854318719425290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A208752 (n + 1)

end

end A338372.P8529854318719425290

/-! ## A338372.P18217132736868398440

`A000079(A002260(n+1)-1)*A208752(n+1)`
-/

namespace A338372.P18217132736868398440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1) - 1).toNat * A208752 (n + 1)

end

end A338372.P18217132736868398440

/-! ## A338372.P17497700917393962790

`A130321(A061579(n))*A208752(n+1)`
-/

namespace A338372.P17497700917393962790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A208752 (n + 1)

end

end A338372.P17497700917393962790

/-! ## A338372.P4416211984215325498

`A114687(n+1)/A001263(n+1)*A208752(n+1)`
-/

namespace A338372.P4416211984215325498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114687 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A208752 (n + 1) : ℚ)

end

end A338372.P4416211984215325498

/-! ## A338372.P9996123066084530285

`A059268(n)*A247645(A195437(n))`
-/

namespace A338372.P9996123066084530285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A247645 (A195437 n).toNat

end

end A338372.P9996123066084530285

/-!
# A338373: Numbers k such that bigomega(2*k + 1) >= 4.

The programs for A338373, the canonical program `A338373.P9838038020124048025` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338373 has offset 1).

The definition of A338373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338373.P2036575000256194958

`lt[3, A001222(2*n+1)]`
-/

namespace A338373.P2036575000256194958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P2036575000256194958

namespace A338373

/-- `lt[3, A001222(2*n+1)]` -/
def P2036575000256194958.Spec : Prop :=
  ∀ n, (P2036575000256194958.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P10005970274718238151

`lt[9, A001222(n+1+n)²]`
-/

namespace A338373.P10005970274718238151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P10005970274718238151

namespace A338373

/-- `lt[9, A001222(n+1+n)²]` -/
def P10005970274718238151.Spec : Prop :=
  ∀ n, (P10005970274718238151.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P1555650120908596893

`lt[3, A001222(n+3+n)]+1`
-/

namespace A338373.P1555650120908596893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A338373.P1555650120908596893

namespace A338373

/-- `lt[3, A001222(n+3+n)]+1` -/
def P1555650120908596893.Spec : Prop :=
  ∀ n, (P1555650120908596893.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P9838038020124048025

`eq[0, A340369(2*n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338373

/-- `eq[0, A340369(2*n+1)]` -/
def P9838038020124048025.Spec : Prop :=
  ∀ n, (P9838038020124048025.a n : ℤ) = A338373 (n + 1)

theorem P9838038020124048025.correct : P9838038020124048025.Spec := by
  intro n
  simp only [A338373, Nat.add_sub_cancel]

end A338373

/-! ## A338373.P6114322133385633869

`lt[1, A008481(2*n+1)-2]`
-/

namespace A338373.P6114322133385633869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (2 * n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P6114322133385633869

namespace A338373

/-- `lt[1, A008481(2*n+1)-2]` -/
def P6114322133385633869.Spec : Prop :=
  ∀ n, (P6114322133385633869.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P10417879847586218002

`lt[1, A087436(2*n+1)-2]`
-/

namespace A338373.P10417879847586218002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (2 * n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P10417879847586218002

namespace A338373

/-- `lt[1, A087436(2*n+1)-2]` -/
def P10417879847586218002.Spec : Prop :=
  ∀ n, (P10417879847586218002.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P2281523714791395916

`lt[2, A285716(n+1)]`
-/

namespace A338373.P2281523714791395916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P2281523714791395916

namespace A338373

/-- `lt[2, A285716(n+1)]` -/
def P2281523714791395916.Spec : Prop :=
  ∀ n, (P2281523714791395916.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P15429214124394372834

`lt[1, A091304(n+1)-2]`
-/

namespace A338373.P15429214124394372834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P15429214124394372834

namespace A338373

/-- `lt[1, A091304(n+1)-2]` -/
def P15429214124394372834.Spec : Prop :=
  ∀ n, (P15429214124394372834.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P9058358179724589739

`lt[2, A001222(A016945(n))-2]`
-/

namespace A338373.P9058358179724589739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016945 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P9058358179724589739

namespace A338373

/-- `lt[2, A001222(A016945(n))-2]` -/
def P9058358179724589739.Spec : Prop :=
  ∀ n, (P9058358179724589739.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P16117900639020535046

`lt[A000005(2*n+1)², A330773(2*n)]`
-/

namespace A338373.P16117900639020535046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330773 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338373.P16117900639020535046

namespace A338373

/-- `lt[A000005(2*n+1)², A330773(2*n)]` -/
def P16117900639020535046.Spec : Prop :=
  ∀ n, (P16117900639020535046.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P2185663298006477830

`eq[0, A008683(A001222(2*n+1)!)]`
-/

namespace A338373.P2185663298006477830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.factorial (A001222 (2 * n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338373.P2185663298006477830

namespace A338373

/-- `eq[0, A008683(A001222(2*n+1)!)]` -/
def P2185663298006477830.Spec : Prop :=
  ∀ n, (P2185663298006477830.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P1173554850646906228

`lt[9, A318312(A005843(n)+1)]`
-/

namespace A338373.P1173554850646906228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318312 (A005843 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P1173554850646906228

namespace A338373

/-- `lt[9, A318312(A005843(n)+1)]` -/
def P1173554850646906228.Spec : Prop :=
  ∀ n, (P1173554850646906228.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P13893666715635941823

`lt[1, A329888(A329888(2*n+1))]`
-/

namespace A338373.P13893666715635941823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A329888 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P13893666715635941823

namespace A338373

/-- `lt[1, A329888(A329888(2*n+1))]` -/
def P13893666715635941823.Spec : Prop :=
  ∀ n, (P13893666715635941823.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P2804201971470492997

`lt[8, A061142(2*n+1)]`
-/

namespace A338373.P2804201971470492997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P2804201971470492997

namespace A338373

/-- `lt[8, A061142(2*n+1)]` -/
def P2804201971470492997.Spec : Prop :=
  ∀ n, (P2804201971470492997.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P5829599180155291855

`lt[1, A306345(2*n+1)]`
-/

namespace A338373.P5829599180155291855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306345 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P5829599180155291855

namespace A338373

/-- `lt[1, A306345(2*n+1)]` -/
def P5829599180155291855.Spec : Prop :=
  ∀ n, (P5829599180155291855.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P7008122693636450018

`lt[1, A360616(2*n+1)]`
-/

namespace A338373.P7008122693636450018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360616 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P7008122693636450018

namespace A338373

/-- `lt[1, A360616(2*n+1)]` -/
def P7008122693636450018.Spec : Prop :=
  ∀ n, (P7008122693636450018.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P8360381493823411900

`lt[2, A285726(2*n+1)]`
-/

namespace A338373.P8360381493823411900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P8360381493823411900

namespace A338373

/-- `lt[2, A285726(2*n+1)]` -/
def P8360381493823411900.Spec : Prop :=
  ∀ n, (P8360381493823411900.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P12118369020166654247

`lt[1, A101638(2*n+1)+1]`
-/

namespace A338373.P12118369020166654247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101638 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P12118369020166654247

namespace A338373

/-- `lt[1, A101638(2*n+1)+1]` -/
def P12118369020166654247.Spec : Prop :=
  ∀ n, (P12118369020166654247.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P15315722826969060424

`lt[1, A167688(2*n+1)+1]`
-/

namespace A338373.P15315722826969060424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P15315722826969060424

namespace A338373

/-- `lt[1, A167688(2*n+1)+1]` -/
def P15315722826969060424.Spec : Prop :=
  ∀ n, (P15315722826969060424.a n : ℤ) = A338373 (n + 1)

end A338373

/-! ## A338373.P15914604957380696390

`lt[1, A321379(2*n+1)+1]`
-/

namespace A338373.P15914604957380696390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338373.P15914604957380696390

namespace A338373

/-- `lt[1, A321379(2*n+1)+1]` -/
def P15914604957380696390.Spec : Prop :=
  ∀ n, (P15914604957380696390.a n : ℤ) = A338373 (n + 1)

end A338373

/-!
# A338375: Number of digits in (2n)! / (2^n * n!).

The programs for A338375, the canonical program `A338375.P18091747463959896222` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338375 has offset 1).

The definition of A338375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338375.P18091747463959896222

`A125059(Δ[n²])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338375

/-- `A125059(Δ[n²])` -/
def P18091747463959896222.Spec : Prop :=
  ∀ n, P18091747463959896222.a n = A338375 (n + 1)

theorem P18091747463959896222.correct : P18091747463959896222.Spec := by
  intro n
  simp only [A338375, Nat.add_sub_cancel]

end A338375

/-! ## A338375.P17812753506713712865

`∑{digits}[∏[2*n+1], ((-1)^#)²]`
-/

namespace A338375.P17812753506713712865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ((-1) ^ x) ^ 2).sum

end

end A338375.P17812753506713712865

namespace A338375

/-- `∑{digits}[∏[2*n+1], ((-1)^#)²]` -/
def P17812753506713712865.Spec : Prop :=
  ∀ n, P17812753506713712865.a n = A338375 (n + 1)

end A338375

/-! ## A338375.P4920728562409785700

`A336112(A117450(n))`
-/

namespace A338375.P4920728562409785700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (A117450 n).toNat

end

end A338375.P4920728562409785700

namespace A338375

/-- `A336112(A117450(n))` -/
def P4920728562409785700.Spec : Prop :=
  ∀ n, P4920728562409785700.a n = A338375 (n + 1)

end A338375

/-! ## A338375.P17773023371791980104

`A006369(3*(n+1))-A098388(A000009(3*n+4))`
-/

namespace A338375.P17773023371791980104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (3 * (n + 1)) - A098388 (A000009 (3 * n + 4)).toNat

end

end A338375.P17773023371791980104

namespace A338375

/-- `A006369(3*(n+1))-A098388(A000009(3*n+4))` -/
def P17773023371791980104.Spec : Prop :=
  ∀ n, P17773023371791980104.a n = A338375 (n + 1)

end A338375

/-!
# A338376: (Smallest prime >= 6^n) - (largest prime <= 6^n).

The programs for A338376, there is no canonical definition to state claims against.
-/

/-! ## A338376.P8237988248990332831

`A013607(n+1)+A013600(n+1)`
-/

namespace A338376.P8237988248990332831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013607 (n + 1) + A013600 (n + 1)

end

end A338376.P8237988248990332831

/-! ## A338376.P11489170497343089750

`A063766(n+1)-A104091(n+1)`
-/

namespace A338376.P11489170497343089750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063766 (n + 1) - A104091 (n + 1)

end

end A338376.P11489170497343089750

/-! ## A338376.P11996343224743666571

`6^(n+1)-A104091(n+1)+A013600(n+1)`
-/

namespace A338376.P11996343224743666571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 1) : ℤ) - A104091 (n + 1) + A013600 (n + 1)

end

end A338376.P11996343224743666571

/-! ## A338376.P10628406850600777852

`A063766(A000027(n+1))%A104091(n+1)`
-/

namespace A338376.P10628406850600777852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063766 (A000027 (n + 1)).toNat) (A104091 (n + 1))

end

end A338376.P10628406850600777852

/-!
# A338377: G.f. satisfies: A(x) = (1 + x * d/dx(x*A(x)) )^n.

The programs for A338377, there is no canonical definition to state claims against.
-/

/-! ## A338377.P15733495109322911352

`or(A152271(n), A217843(A059849(n)))`
-/

namespace A338377.P15733495109322911352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152271 n) (A217843 (A059849 n).toNat)

end

end A338377.P15733495109322911352

/-!
# A338379: Floor of (digital root of n) divided by (number of digits in n).

The programs for A338379, the canonical program `A338379.P3004742096893614011` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338379 has offset 0).

The definition of A338379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338379.P3004742096893614011

`floor(dr(n)/∑{digits}[n, 10^#]%9)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A338379

/-- `floor(dr(n)/∑{digits}[n, 10^#]%9)` -/
def P3004742096893614011.Spec : Prop :=
  ∀ n, P3004742096893614011.a n = A338379 n

theorem P3004742096893614011.correct : P3004742096893614011.Spec := by
  intro n
  simp only [A338379]

end A338379

/-!
# A338382: Numbers m such that the equation m = k*tau(k) has more than one solution, where tau(k) is the number of divisors of k.

The programs for A338382, there is no canonical definition to state claims against.
-/

/-! ## A338382.P6619657480454886503

`A038040(A338383(2*(n+1)))`
-/

namespace A338382.P6619657480454886503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A338383 (2 * (n + 1))).toNat

end

end A338382.P6619657480454886503

/-! ## A338382.P2623628673532579350

`record[A038040(A338383(n^(n%2)))]`
-/

namespace A338382.P2623628673532579350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A338383 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338382.P2623628673532579350

/-! ## A338382.P366369033979424050

`∑{d}[A338383(2*(n+1)), A018804(#)]`
-/

namespace A338382.P366369033979424050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338383 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A018804 d

end

end A338382.P366369033979424050

/-! ## A338382.P3326779685313246832

`record[A038040(A338383((n+1)/2^val(n+1, 2)))]`
-/

namespace A338382.P3326779685313246832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A338383 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338382.P3326779685313246832

/-! ## A338382.P9171026145683174440

`A000005(A338383(2*n+2))*A338383(2*n+2)`
-/

namespace A338382.P9171026145683174440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A338383 (2 * n + 2)).toNat * A338383 (2 * n + 2)

end

end A338382.P9171026145683174440

/-!
# A338384: Integers that can be written m = k*tau(k) = q*tau(q) where (k, q) is a primitive solution of this equation and tau(k) is the number of divisors of k.

The programs for A338384, there is no canonical definition to state claims against.
-/

/-! ## A338384.P12476080616523070532

`A000005(A338385(2*(n+1)))*A338385(2*(n+1))`
-/

namespace A338384.P12476080616523070532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A338385 (2 * (n + 1))).toNat * A338385 (2 * (n + 1))

end

end A338384.P12476080616523070532

/-! ## A338384.P8641015370424710254

`A038040(A338385(Δ[n²]))`
-/

namespace A338384.P8641015370424710254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A338385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A338384.P8641015370424710254

/-! ## A338384.P9136617149769611959

`A083271(A338385(2*n+1))-1`
-/

namespace A338384.P9136617149769611959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083271 (A338385 (2 * n + 1)).toNat - 1

end

end A338384.P9136617149769611959

/-! ## A338384.P11572431267862064068

`∑{d}[A338385(2*n+1), A018804(#)]`
-/

namespace A338384.P11572431267862064068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338385 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A018804 d

end

end A338384.P11572431267862064068

/-! ## A338384.P16971958127277161699

`record[A038040(A338385((n+1)/2^val(n+1, 2)))]`
-/

namespace A338384.P16971958127277161699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A338385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338384.P16971958127277161699

/-!
# A338386: The smallest number from the n-membered group of single (non-twin) primes.

The programs for A338386, there is no canonical definition to state claims against.
-/

/-! ## A338386.P13052425541316182818

`A151800(A054690(n+3))`
-/

namespace A338386.P13052425541316182818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054690 (n + 3)).toNat

end

end A338386.P13052425541316182818

/-! ## A338386.P427688062344120796

`A003961(∏{d}[A054690(n+3), #])`
-/

namespace A338386.P427688062344120796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054690 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A338386.P427688062344120796

/-! ## A338386.P3636449165782976395

`A003961(A054690(1-A001489(n+2)))`
-/

namespace A338386.P3636449165782976395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A054690 (1 - A001489 (n + 2)).toNat).toNat

end

end A338386.P3636449165782976395

/-! ## A338386.P10039109170814334658

`A003961(A054690(A003602(2*n+5)))`
-/

namespace A338386.P10039109170814334658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A054690 (A003602 (2 * n + 5)).toNat).toNat

end

end A338386.P10039109170814334658

/-!
# A338387: Numbers k such that there are no biquadratefree powerful numbers (A338325) between k^2 and (k+1)^2.

The programs for A338387, there is no canonical definition to state claims against.
-/

/-! ## A338387.P9104195405911415834

`eq[0, A338326(n+1)]+1`
-/

namespace A338387.P9104195405911415834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338387.P9104195405911415834

/-! ## A338387.P10698743583802144056

`eq[A000007(n), A338326(A028310(n))]`
-/

namespace A338387.P10698743583802144056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338387.P10698743583802144056

/-! ## A338387.P2011048442873236010

`A074290(A141523(n+1))+A018825(n+1)`
-/

namespace A338387.P2011048442873236010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (A141523 (n + 1)).toNat + A018825 (n + 1)

end

end A338387.P2011048442873236010

/-! ## A338387.P4638816879687033043

`lt[A014217(2*(n+1)), A027448(A379721(n+1))]`
-/

namespace A338387.P4638816879687033043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027448 (A379721 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338387.P4638816879687033043

/-! ## A338387.P12028748552026335153

`lt[A191729(2*(n+1)), A252282(A175182(n+1))]`
-/

namespace A338387.P12028748552026335153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191729 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252282 (A175182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338387.P12028748552026335153

/-!
# A338388: Numbers k such that there is a single biquadratefree powerful number (A338325) between k^2 and (k+1)^2.

The programs for A338388, there is no canonical definition to state claims against.
-/

/-! ## A338388.P2516566407678244155

`eq[1, A338326(n+1)]+1`
-/

namespace A338388.P2516566407678244155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338388.P2516566407678244155

/-! ## A338388.P17561385048771822321

`eq[1, A338326(A028310(n))]`
-/

namespace A338388.P17561385048771822321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338388.P17561385048771822321

/-! ## A338388.P255576122325138615

`A020725(eq[1, A338326(n+1)])`
-/

namespace A338388.P255576122325138615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338388.P255576122325138615

/-! ## A338388.P14839580792658803332

`eq[1, A338326(A000007(n)+n)]`
-/

namespace A338388.P14839580792658803332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338388.P14839580792658803332

/-! ## A338388.P16666065990522541663

`eq[1, A338326(gcd(n, A008458(n)))]`
-/

namespace A338388.P16666065990522541663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338388.P16666065990522541663

/-! ## A338388.P6336998897994685515

`eq[1, A338326(A065033(2*n))]`
-/

namespace A338388.P6336998897994685515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338388.P6336998897994685515

/-!
# A338389: Numbers k such that there are exactly two biquadratefree powerful numbers (A338325) between k^2 and (k+1)^2.

The programs for A338389, there is no canonical definition to state claims against.
-/

/-! ## A338389.P4356525163339742913

`eq[2, A338326(n+1)]+1`
-/

namespace A338389.P4356525163339742913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338389.P4356525163339742913

/-! ## A338389.P5806225278334588166

`eq[2, A338326(A028310(n))]`
-/

namespace A338389.P5806225278334588166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338389.P5806225278334588166

/-! ## A338389.P7163952813360971821

`A011760(eq[2, A338326(n+1)])`
-/

namespace A338389.P7163952813360971821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338389.P7163952813360971821

/-! ## A338389.P1407939239403689680

`A020725(eq[2, A338326(n+1)])`
-/

namespace A338389.P1407939239403689680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338389.P1407939239403689680

/-! ## A338389.P6834190861944035721

`A065475(eq[2, A338326(n+1)])`
-/

namespace A338389.P6834190861944035721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338389.P6834190861944035721

/-! ## A338389.P1362342713079428165

`A153152(eq[2, A338326(n+1)])`
-/

namespace A338389.P1362342713079428165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338389.P1362342713079428165

/-! ## A338389.P16397796171739007410

`A326178(eq[2, A338326(n+1)])`
-/

namespace A338389.P16397796171739007410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338389.P16397796171739007410

/-! ## A338389.P7834713513012913510

`eq[2, A338326(A000007(n)+n)]`
-/

namespace A338389.P7834713513012913510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338389.P7834713513012913510

/-! ## A338389.P6542174717686211410

`eq[2, A338326(gcd(n, A008458(n)))]`
-/

namespace A338389.P6542174717686211410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338389.P6542174717686211410

/-! ## A338389.P5003461645117194800

`eq[2, A338326(A138153(n+1))]`
-/

namespace A338389.P5003461645117194800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338389.P5003461645117194800

/-! ## A338389.P1358916831691214552

`eq[2, A338326(A060000(n+1))]`
-/

namespace A338389.P1358916831691214552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338389.P1358916831691214552

/-! ## A338389.P10962496790450672313

`eq[2, A338326(A065033(2*n))]`
-/

namespace A338389.P10962496790450672313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338389.P10962496790450672313

/-!
# A338390: Numbers k such that there are exactly three biquadratefree powerful numbers (A338325) between k^2 and (k+1)^2.

The programs for A338390, there is no canonical definition to state claims against.
-/

/-! ## A338390.P12226058216171200710

`eq[3, A338326(round(acot(n)+n))]`
-/

namespace A338390.P12226058216171200710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338390.P12226058216171200710

/-! ## A338390.P11570874083776146954

`eq[3, A338326(A028310(n))]`
-/

namespace A338390.P11570874083776146954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338390.P11570874083776146954

/-! ## A338390.P5538144820714113221

`A011760(eq[3, A338326(n+1)])`
-/

namespace A338390.P5538144820714113221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338390.P5538144820714113221

/-! ## A338390.P5483320177030290367

`A065475(eq[3, A338326(n+1)])`
-/

namespace A338390.P5483320177030290367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338390.P5483320177030290367

/-! ## A338390.P2661347996431468955

`eq[3, A338326(A233583(n+1))]`
-/

namespace A338390.P2661347996431468955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338326 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338390.P2661347996431468955

/-!
# A338393: Smallest perimeter of integer-sided triangles for which there exist exactly n triangles that have an integer inradius.

The programs for A338393, there is no canonical definition to state claims against.
-/

/-! ## A338393.P8853997487201217473

`A158327(A049094(n+1)*A274586(n+1))`
-/

namespace A338393.P8853997487201217473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158327 (A049094 (n + 1) * A274586 (n + 1)).toNat

end

end A338393.P8853997487201217473

/-!
# A338395: Numbers m such that lcm(tau(m), sigma(m), pod(m)) = pod(m).

The programs for A338395, the canonical program `A338395.P13114426695192953794` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338395 has offset 1).

The definition of A338395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338395.P13114426695192953794

`∩[A120736(n+1), A145551(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A338395

/-- `∩[A120736(n+1), A145551(n+1)]` -/
def P13114426695192953794.Spec : Prop :=
  ∀ n, (P13114426695192953794.a n : ℤ) = A338395 (n + 1)

theorem P13114426695192953794.correct : P13114426695192953794.Spec := by
  intro n
  simp only [A338395, Nat.add_sub_cancel]

end A338395

/-! ## A338395.P17751001999666943012

`A145551(A034463(∑[n+2]))`
-/

namespace A338395.P17751001999666943012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (A034463 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A338395.P17751001999666943012

namespace A338395

/-- `A145551(A034463(∑[n+2]))` -/
def P17751001999666943012.Spec : Prop :=
  ∀ n, P17751001999666943012.a n = A338395 (n + 1)

end A338395

/-! ## A338395.P18095005392422307622

`∩[A145551(n+1), A249685(n+1)]`
-/

namespace A338395.P18095005392422307622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338395.P18095005392422307622

namespace A338395

/-- `∩[A145551(n+1), A249685(n+1)]` -/
def P18095005392422307622.Spec : Prop :=
  ∀ n, (P18095005392422307622.a n : ℤ) = A338395 (n + 1)

end A338395

/-! ## A338395.P11721246908022018995

`∩[A145551(n+1), A360681(n+1)]`
-/

namespace A338395.P11721246908022018995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338395.P11721246908022018995

namespace A338395

/-- `∩[A145551(n+1), A360681(n+1)]` -/
def P11721246908022018995.Spec : Prop :=
  ∀ n, (P11721246908022018995.a n : ℤ) = A338395 (n + 1)

end A338395

/-! ## A338395.P6971336440142422695

`∩[A145551(n+1), A174873(n+1)]`
-/

namespace A338395.P6971336440142422695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338395.P6971336440142422695

namespace A338395

/-- `∩[A145551(n+1), A174873(n+1)]` -/
def P6971336440142422695.Spec : Prop :=
  ∀ n, (P6971336440142422695.a n : ℤ) = A338395 (n + 1)

end A338395

/-!
# A338396: The prime numbers in A158923.

The programs for A338396, there is no canonical definition to state claims against.
-/

/-! ## A338396.P12200617567542459154

`p?[round(a(n-1)+log(a(n-1)))]` with `a(0)=2`
-/

namespace A338396.P12200617567542459154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) + Real.log (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338396.P12200617567542459154

/-! ## A338396.P7809296160038076523

`p?[A158923(n+1)]`
-/

namespace A338396.P7809296160038076523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338396.P7809296160038076523

/-! ## A338396.P13969421894869466161

`filter[A158923(n+1), A010051(#)]`
-/

namespace A338396.P13969421894869466161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A338396.P13969421894869466161

/-! ## A338396.P17721964823235074715

`filter[A158923(n+1), A080339(#)]`
-/

namespace A338396.P17721964823235074715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A338396.P17721964823235074715

/-! ## A338396.P645310512607000827

`filter[A158923(n+1), A353817(#)]`
-/

namespace A338396.P645310512607000827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A338396.P645310512607000827

/-!
# A338397: Triangle read by rows: T(n,m)= Sum_{k=0..m/2} C(n-k,m-2*k)*C(n-k,m-k)*C(n,k)/C(2*k,k).

The programs for A338397, there is no canonical definition to state claims against.
-/

/-! ## A338397.P2751659349785151344

`A007318(n)*A088519(A001498(n))`
-/

namespace A338397.P2751659349785151344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A088519 (A001498 n).toNat

end

end A338397.P2751659349785151344

