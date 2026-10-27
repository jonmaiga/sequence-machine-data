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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A333302: Numbers produced by iteratively sorting the digits of the last number from largest to smallest in base 10 and then doubling, starting with the number 1.

The programs for A333302, there is no canonical definition to state claims against.
-/

/-! ## A333302.P7249996668614600934

`A036453(n+1)*A263451(A028310(n))`
-/

namespace A333302.P7249996668614600934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A263451 (A028310 n).toNat

end

end A333302.P7249996668614600934

/-! ## A333302.P16282656544259226213

`gcd(2, A000079(n))*A263451(A028310(n))`
-/

namespace A333302.P16282656544259226213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000079 n) : ℤ) * A263451 (A028310 n).toNat

end

end A333302.P16282656544259226213

/-!
# A333306: a(n) = sqrt(Pi/4)*2^A048881(2*n)*L(2*n) where L(s) = lim_{t->s} (t/2)!/((1-t)/2)!.

The programs for A333306, there is no canonical definition to state claims against.
-/

/-! ## A333306.P6085905238391545759

`A117972(n)/(1-2*n)`
-/

namespace A333306.P6085905238391545759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117972 n : ℚ) / (1 - (2 * n : ℤ) : ℚ)

end

end A333306.P6085905238391545759

/-! ## A333306.P14420425446039514822

`A049606(n)²*A002596(n)`
-/

namespace A333306.P14420425446039514822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 n ^ 2 * A002596 n

end

end A333306.P14420425446039514822

/-! ## A333306.P8588622725854265028

`-(A117972(n)/A060747(n))`
-/

namespace A333306.P8588622725854265028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A117972 n : ℚ) / (A060747 n : ℚ))

end

end A333306.P8588622725854265028

/-! ## A333306.P11800178989185635132

`gcd(n!, A330797(n))*A330797(n)`
-/

namespace A333306.P11800178989185635132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (Nat.factorial n : ℤ) (A330797 n) : ℤ) * A330797 n

end

end A333306.P11800178989185635132

/-! ## A333306.P13492768301557617288

`A046126(A004273(n))/A001803(n)`
-/

namespace A333306.P13492768301557617288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046126 (A004273 n).toNat : ℚ) / (A001803 n : ℚ)

end

end A333306.P13492768301557617288

/-!
# A333307: Lexicographically earliest sequence over {0,1,2} that has the shortest palindromic or square subsequence (see Comments for precise definition).

The programs for A333307, there is no canonical definition to state claims against.
-/

/-! ## A333307.P16371747605531669474

`∑[A341517(A154601(n+1)-A047412(n+1))+1]%3`
-/

namespace A333307.P16371747605531669474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341517 (A154601 (n + 1) - A047412 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A333307.P16371747605531669474

/-! ## A333307.P13062008234848186692

`and(A130658(n), A298671(A009195(3*n+4)))`
-/

namespace A333307.P13062008234848186692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130658 n) (A298671 (A009195 (3 * n + 4)).toNat)

end

end A333307.P13062008234848186692

/-! ## A333307.P5262722670083366608

`A190487(∑[A190551((n+1)²)])`
-/

namespace A333307.P5262722670083366608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190551 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333307.P5262722670083366608

/-! ## A333307.P4275988192086274226

`∑[A204435(A202252(2*n+5))]%3`
-/

namespace A333307.P4275988192086274226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204435 (A202252 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A333307.P4275988192086274226

/-! ## A333307.P4600085360955841180

`A010872(∑[A101082(n+2)²])`
-/

namespace A333307.P4600085360955841180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101082 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333307.P4600085360955841180

/-!
# A333308: Numbers that are the sum of two distinct terms of A003622 (1st column of the Wythoff array, A035513).

The programs for A333308, there is no canonical definition to state claims against.
-/

/-! ## A333308.P11401731012784492633

`lt[1, A080844(n)]`
-/

namespace A333308.P11401731012784492633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333308.P11401731012784492633

/-! ## A333308.P2996563804443468000

`comp[A260317(n+1)-2]`
-/

namespace A333308.P2996563804443468000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333308.P2996563804443468000

/-! ## A333308.P14545766528465754969

`comp[∑[A260311(n+1)]-1]`
-/

namespace A333308.P14545766528465754969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333308.P14545766528465754969

/-! ## A333308.P13132381669307455643

`comp[A333309(n+1)-1]+1`
-/

namespace A333308.P13132381669307455643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333309 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A333308.P13132381669307455643

/-! ## A333308.P3180251010901095515

`comp[A260311(n)+a(n-1)]` with `a(0)=-1`
-/

namespace A333308.P3180251010901095515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  A260311 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333308.P3180251010901095515

/-! ## A333308.P14181506151618608

`comp[A289207(A260317(n+1))]`
-/

namespace A333308.P14181506151618608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A260317 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333308.P14181506151618608

/-! ## A333308.P5406912251057053345

`eq[1, A035214(A080844(n)²)]`
-/

namespace A333308.P5406912251057053345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A080844 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333308.P5406912251057053345

/-! ## A333308.P5086952583825334875

`eq[2, A043529(A080844(n)²)]`
-/

namespace A333308.P5086952583825334875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A080844 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333308.P5086952583825334875

/-! ## A333308.P11819887981603178314

`eq[3, A288762(2*A080844(n))]`
-/

namespace A333308.P11819887981603178314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288762 (2 * A080844 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333308.P11819887981603178314

/-! ## A333308.P12393130573228775635

`comp[record[A260317(A126759(n))-2]]`
-/

namespace A333308.P12393130573228775635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (A126759 n).toNat - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333308.P12393130573228775635

/-!
# A333309: Numbers that are not the sum of two distinct terms of A003622.

The programs for A333309, there is no canonical definition to state claims against.
-/

/-! ## A333309.P7371911486419642678

`∑[A260311(n+2)]`
-/

namespace A333309.P7371911486419642678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333309.P7371911486419642678

/-! ## A333309.P9254063517204194520

`lt[A080844(n+1), 2]+1`
-/

namespace A333309.P9254063517204194520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080844 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333309.P9254063517204194520

/-! ## A333309.P14306358919868656647

`record[A260311(n)+a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A333309.P14306358919868656647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A260311 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333309.P14306358919868656647

/-! ## A333309.P14976171071992258946

`A260311(2*n-(n-2))+a(n-1)` with `a(0)=1`
-/

namespace A333309.P14976171071992258946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260311 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat + a (n - 1)

end

end A333309.P14976171071992258946

/-! ## A333309.P4671350560743143031

`lt[A289207(A080844(n)+n), n]`
-/

namespace A333309.P4671350560743143031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A080844 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333309.P4671350560743143031

/-! ## A333309.P472448514708446462

`A106614(∑[A260311(2*n-(n-2))])`
-/

namespace A333309.P472448514708446462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333309.P472448514708446462

/-! ## A333309.P15777155983314559925

`A260311(n+2)+A260317(n+2)-2`
-/

namespace A333309.P15777155983314559925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 (n + 2) + (A260317 (n + 2) - 2)

end

end A333309.P15777155983314559925

/-! ## A333309.P16730945547480929996

`A260311(n+2)+a(n-1)-A000038(n)` with `a(0)=1`
-/

namespace A333309.P16730945547480929996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260311 (n + 2) + (a (n - 1) - A000038 n)

end

end A333309.P16730945547480929996

/-! ## A333309.P404373720142261413

`A260317(n+3)-2`
-/

namespace A333309.P404373720142261413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (n + 3) - 2

end

end A333309.P404373720142261413

/-!
# A333310: Triangle read by rows: T(n,k) is the number of permutations sigma of [n] such that sigma(1) = k and sigma(j)/j > sigma(j+1)/(j+1) for 1 <= j <= n-1.

The programs for A333310, there is no canonical definition to state claims against.
-/

/-! ## A333310.P10703552402650491440

`A072233(n)*A340102(A237984(n+1))`
-/

namespace A333310.P10703552402650491440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A340102 (A237984 (n + 1)).toNat

end

end A333310.P10703552402650491440

/-! ## A333310.P5586157420549207590

`A124010(A093669(n+1))*A244925(n+1)`
-/

namespace A333310.P5586157420549207590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A093669 (n + 1)).toNat * A244925 (n + 1)

end

end A333310.P5586157420549207590

/-! ## A333310.P14709098773218681606

`A325223(A080242(n+1))+A190592(A072233(n)^9)`
-/

namespace A333310.P14709098773218681606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325223 (A080242 (n + 1)).toNat + A190592 (A072233 n ^ 9).toNat

end

end A333310.P14709098773218681606

/-! ## A333310.P5703973001855298089

`A072233(n)*A323475(A362490(n+4))`
-/

namespace A333310.P5703973001855298089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A323475 (A362490 (n + 4)).toNat

end

end A333310.P5703973001855298089

/-! ## A333310.P13952328962376181673

`A228085(A271852(n+1))`
-/

namespace A333310.P13952328962376181673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 (A271852 (n + 1)).toNat

end

end A333310.P13952328962376181673

/-!
# A333311: a(n) is the total number of leaves of a binary tree of depth n on a square grid where each parent-node branches out in the two directions closest to the direction of the edge from which it sprang, either along the grid for even generations or across for odd generations ('L-toothpick'), yet only if the child-nodes' coordinates are not occupied already.

The programs for A333311, there is no canonical definition to state claims against.
-/

/-! ## A333311.P7709926940139539949

`A283431(A000009(2*(n+1)))+A010879(n)²+1`
-/

namespace A333311.P7709926940139539949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A000009 (2 * (n + 1))).toNat + (A010879 n ^ 2 + 1)

end

end A333311.P7709926940139539949

/-! ## A333311.P7393319432692989242

`∑[A000120(A345954(n))+1+n]+1`
-/

namespace A333311.P7393319432692989242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A345954 n).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A333311.P7393319432692989242

/-! ## A333311.P3432873206839171985

`A344414(∑[floor(ϕ*n)+1])-A302928(n+2)`
-/

namespace A333311.P3432873206839171985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344414 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A302928 (n + 2)

end

end A333311.P3432873206839171985

/-! ## A333311.P17700797232921869657

`A219347(2*(n+1))+A102450(A010000(n))`
-/

namespace A333311.P17700797232921869657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (2 * (n + 1)) + A102450 (A010000 n).toNat

end

end A333311.P17700797232921869657

/-!
# A333312: Positive integers m >= 2 such that there are at least two values of v such that the sequence {v, ..., v + m - 1} of m nonnegative integers can be partitioned into two subsets of consecutive integers with the same sum.

The programs for A333312, the canonical program `A333312.P3354544449326470189` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333312 has offset 1).

The definition of A333312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333312.P3354544449326470189

`∪[2*A153238(n+1)+3, A156683(A009005(n+1))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A333312

/-- `∪[2*A153238(n+1)+3, A156683(A009005(n+1))]` -/
def P3354544449326470189.Spec : Prop :=
  ∀ n, (P3354544449326470189.a n : ℤ) = A333312 (n + 1)

theorem P3354544449326470189.correct : P3354544449326470189.Spec := by
  intro n
  simp only [A333312, Nat.add_sub_cancel]

end A333312

/-! ## A333312.P6470126038326743673

`lt[A038548(n+2), A064989(n^A220400(n))]`
-/

namespace A333312.P6470126038326743673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A220400 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333312.P6470126038326743673

namespace A333312

/-- `lt[A038548(n+2), A064989(n^A220400(n))]` -/
def P6470126038326743673.Spec : Prop :=
  ∀ n, (P6470126038326743673.a n : ℤ) = A333312 (n + 1)

end A333312

/-! ## A333312.P3926119949674622934

`lt[A038548(n+2), A332819(n^A220400(n))]`
-/

namespace A333312.P3926119949674622934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332819 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A220400 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333312.P3926119949674622934

namespace A333312

/-- `lt[A038548(n+2), A332819(n^A220400(n))]` -/
def P3926119949674622934.Spec : Prop :=
  ∀ n, (P3926119949674622934.a n : ℤ) = A333312 (n + 1)

end A333312

/-! ## A333312.P9112124317686910256

`lt[A008574(A331595(n+1)), A112987(n)]`
-/

namespace A333312.P9112124317686910256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A331595 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333312.P9112124317686910256

namespace A333312

/-- `lt[A008574(A331595(n+1)), A112987(n)]` -/
def P9112124317686910256.Spec : Prop :=
  ∀ n, (P9112124317686910256.a n : ℤ) = A333312 (n + 1)

end A333312

/-! ## A333312.P3497097985612498265

`A119486(lt[A114962(n), A119483(n+1)])`
-/

namespace A333312.P3497097985612498265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119486 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333312.P3497097985612498265

namespace A333312

/-- `A119486(lt[A114962(n), A119483(n+1)])` -/
def P3497097985612498265.Spec : Prop :=
  ∀ n, P3497097985612498265.a n = A333312 (n + 1)

end A333312

/-!
# A333313: Number of 2-sided strip polyominoes with n cells and no holes.

The programs for A333313, there is no canonical definition to state claims against.
-/

/-! ## A333313.P16274104932191851555

`A083382(A228986(n+1)+A018016(n))`
-/

namespace A333313.P16274104932191851555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A228986 (n + 1) + A018016 n).toNat

end

end A333313.P16274104932191851555

/-! ## A333313.P16315029521938233100

`A238098(A279785(n)+2)`
-/

namespace A333313.P16315029521938233100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238098 (A279785 n + 2).toNat

end

end A333313.P16315029521938233100

/-! ## A333313.P11435892554365546085

`A002013(n)-A126314(A184974(n))`
-/

namespace A333313.P11435892554365546085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002013 n - A126314 (A184974 n).toNat

end

end A333313.P11435892554365546085

/-! ## A333313.P8713636047249021378

`A000267(C(A152536(n), 2))-A004525(A184974(n))`
-/

namespace A333313.P8713636047249021378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Nat.choose (A152536 n).toNat 2) - A004525 (A184974 n).toNat

end

end A333313.P8713636047249021378

/-! ## A333313.P11672260368507797627

`A239088(A002013(n))`
-/

namespace A333313.P11672260368507797627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (A002013 n).toNat

end

end A333313.P11672260368507797627

/-!
# A333314: Composite non-Carmichael numbers k such that rad(phi(k)) divides k-1, where rad(k) is the squarefree kernel of k (A007947) and phi is the Euler totient function (A000010).

The programs for A333314, there is no canonical definition to state claims against.
-/

/-! ## A333314.P117443612612788472

`A238574(∑[A323022(A206957(n+1))])`
-/

namespace A333314.P117443612612788472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A206957 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333314.P117443612612788472

/-! ## A333314.P15103096794428437789

`A238574(record[A109038(n)])`
-/

namespace A333314.P15103096794428437789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333314.P15103096794428437789

/-! ## A333314.P10347525167312472014

`A238574(A051038(n+1)%A120914(3*n+1))`
-/

namespace A333314.P10347525167312472014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (Int.tmod (A051038 (n + 1)) (A120914 (3 * n + 1))).toNat

end

end A333314.P10347525167312472014

/-!
# A333315: a(n) = Sum_{k=1..n} phi(prime(k)-1), where phi is the Euler totient function (A000005).

The programs for A333315, the canonical program `A333315.P973349873457227221` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333315 has offset 1).

The definition of A333315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333315.P973349873457227221

`∑[A008330(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333315

/-- `∑[A008330(n+1)]` -/
def P973349873457227221.Spec : Prop :=
  ∀ n, P973349873457227221.a n = A333315 (n + 1)

theorem P973349873457227221.correct : P973349873457227221.Spec := by
  intro n
  simp only [A333315, Nat.add_sub_cancel]

end A333315

/-! ## A333315.P2684358489918158224

`∑[A000010(A006093(n+1))]`
-/

namespace A333315.P2684358489918158224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P2684358489918158224

namespace A333315

/-- `∑[A000010(A006093(n+1))]` -/
def P2684358489918158224.Spec : Prop :=
  ∀ n, P2684358489918158224.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P8573472819344245814

`∑[A000010(A156037(n+1))]`
-/

namespace A333315.P8573472819344245814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A156037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P8573472819344245814

namespace A333315

/-- `∑[A000010(A156037(n+1))]` -/
def P8573472819344245814.Spec : Prop :=
  ∀ n, P8573472819344245814.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P13962195363008874524

`∑[A000010(sqrt(A005722(n+1)))]`
-/

namespace A333315.P13962195363008874524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P13962195363008874524

namespace A333315

/-- `∑[A000010(sqrt(A005722(n+1)))]` -/
def P13962195363008874524.Spec : Prop :=
  ∀ n, P13962195363008874524.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P14507279010691644636

`∑[A000010(record[A000010(n+1)])]`
-/

namespace A333315.P14507279010691644636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P14507279010691644636

namespace A333315

/-- `∑[A000010(record[A000010(n+1)])]` -/
def P14507279010691644636.Spec : Prop :=
  ∀ n, P14507279010691644636.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P9566849889492537330

`∑[A000010(A040976(n+1)+1)]`
-/

namespace A333315.P9566849889492537330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A040976 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P9566849889492537330

namespace A333315

/-- `∑[A000010(A040976(n+1)+1)]` -/
def P9566849889492537330.Spec : Prop :=
  ∀ n, P9566849889492537330.a n = A333315 (n + 1)

theorem P9566849889492537330.correct : P9566849889492537330.Spec := by
  intro n
  simp only [A333315, Nat.add_sub_cancel, A333315.P9566849889492537330.f1, A333315.P9566849889492537330.a, A333315.P973349873457227221.f1, A333315.P973349873457227221.a, A000010, A000010.P4673923239450215316.a, A008330, A008330.P4237937900296338691.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003557, A003557.P6364735403900941810.a, A006093, A006093.P2906174024863549003.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333315

/-! ## A333315.P14454482574341736040

`∑[A000010(A000040(n+1)-1)]`
-/

namespace A333315.P14454482574341736040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P14454482574341736040

namespace A333315

/-- `∑[A000010(A000040(n+1)-1)]` -/
def P14454482574341736040.Spec : Prop :=
  ∀ n, P14454482574341736040.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P5484060112705768703

`∑[A000010(A182986(n+2)-1)]`
-/

namespace A333315.P5484060112705768703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A182986 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P5484060112705768703

namespace A333315

/-- `∑[A000010(A182986(n+2)-1)]` -/
def P5484060112705768703.Spec : Prop :=
  ∀ n, P5484060112705768703.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P6937112519870522554

`∑[A000010(A000010(A008578(n+2)))]`
-/

namespace A333315.P6937112519870522554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A008578 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P6937112519870522554

namespace A333315

/-- `∑[A000010(A000010(A008578(n+2)))]` -/
def P6937112519870522554.Spec : Prop :=
  ∀ n, P6937112519870522554.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P6742316703924242360

`∑[A000010(eq[1, A001222(n+1)])]`
-/

namespace A333315.P6742316703924242360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P6742316703924242360

namespace A333315

/-- `∑[A000010(eq[1, A001222(n+1)])]` -/
def P6742316703924242360.Spec : Prop :=
  ∀ n, P6742316703924242360.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P11480078941286906755

`∑[A000010(eq[1, A010051(n+1)])]`
-/

namespace A333315.P11480078941286906755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P11480078941286906755

namespace A333315

/-- `∑[A000010(eq[1, A010051(n+1)])]` -/
def P11480078941286906755.Spec : Prop :=
  ∀ n, P11480078941286906755.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P259749542226380698

`∑[A000010(eq[2, A000005(n+1)])]`
-/

namespace A333315.P259749542226380698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P259749542226380698

namespace A333315

/-- `∑[A000010(eq[2, A000005(n+1)])]` -/
def P259749542226380698.Spec : Prop :=
  ∀ n, P259749542226380698.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P6462234869002961381

`∑[A000010(eq[n, A000010(n+1)])]`
-/

namespace A333315.P6462234869002961381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P6462234869002961381

namespace A333315

/-- `∑[A000010(eq[n, A000010(n+1)])]` -/
def P6462234869002961381.Spec : Prop :=
  ∀ n, P6462234869002961381.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P5584060345174044611

`∑[A000010(A000010(2*A000040(n+1)))]`
-/

namespace A333315.P5584060345174044611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (2 * A000040 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P5584060345174044611

namespace A333315

/-- `∑[A000010(A000010(2*A000040(n+1)))]` -/
def P5584060345174044611.Spec : Prop :=
  ∀ n, P5584060345174044611.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P17333595677425449570

`∑[A000010(A067747(2*n+1)-1)]`
-/

namespace A333315.P17333595677425449570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A067747 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P17333595677425449570

namespace A333315

/-- `∑[A000010(A067747(2*n+1)-1)]` -/
def P17333595677425449570.Spec : Prop :=
  ∀ n, P17333595677425449570.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P3739895478908043397

`∑[A000010(A129767(2*n+1)-1)]`
-/

namespace A333315.P3739895478908043397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A129767 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P3739895478908043397

namespace A333315

/-- `∑[A000010(A129767(2*n+1)-1)]` -/
def P3739895478908043397.Spec : Prop :=
  ∀ n, P3739895478908043397.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P8362403620241948387

`∑[A000010(A134735(2*n+1)-1)]`
-/

namespace A333315.P8362403620241948387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134735 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P8362403620241948387

namespace A333315

/-- `∑[A000010(A134735(2*n+1)-1)]` -/
def P8362403620241948387.Spec : Prop :=
  ∀ n, P8362403620241948387.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P8410003009930902760

`∑[A000010(A000010(A082500(2*(n+1))))]`
-/

namespace A333315.P8410003009930902760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A082500 (2 * (n + 1))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P8410003009930902760

namespace A333315

/-- `∑[A000010(A000010(A082500(2*(n+1))))]` -/
def P8410003009930902760.Spec : Prop :=
  ∀ n, P8410003009930902760.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P16334652445341025737

`∑[A010554(A000040(n+1))]`
-/

namespace A333315.P16334652445341025737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P16334652445341025737

namespace A333315

/-- `∑[A010554(A000040(n+1))]` -/
def P16334652445341025737.Spec : Prop :=
  ∀ n, P16334652445341025737.a n = A333315 (n + 1)

end A333315

/-! ## A333315.P9424005441868388405

`∑[A010554(A006005(n+1))]`
-/

namespace A333315.P9424005441868388405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P9424005441868388405

namespace A333315

/-- `∑[A010554(A006005(n+1))]` -/
def P9424005441868388405.Spec : Prop :=
  ∀ n, P9424005441868388405.a n = A333315 (n + 1)

end A333315

/-!
# A333317: Partial sums of A248577.

The programs for A333317, the canonical program `A333317.P6998834553194940785` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333317 has offset 1).

The definition of A333317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333317.P6998834553194940785

`∑[∑{e}[∏{p}[n+1, #], #]*∏{e}[n+1, #+1]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333317

/-- `∑[∑{e}[∏{p}[n+1, #], #]*∏{e}[n+1, #+1]]` -/
def P6998834553194940785.Spec : Prop :=
  ∀ n, (P6998834553194940785.a n : ℤ) = A333317 (n + 1)

theorem P6998834553194940785.correct : P6998834553194940785.Spec := by
  intro n
  simp only [A333317, Nat.add_sub_cancel]

end A333317

/-! ## A333317.P4091250326656218635

`∑[A248577(n+1)]`
-/

namespace A333317.P4091250326656218635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333317.P4091250326656218635

namespace A333317

/-- `∑[A248577(n+1)]` -/
def P4091250326656218635.Spec : Prop :=
  ∀ n, P4091250326656218635.a n = A333317 (n + 1)

end A333317

/-! ## A333317.P12312202896706516775

`∑[A001221(n+1)*Δ[A006218(n)]]`
-/

namespace A333317.P12312202896706516775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333317.P12312202896706516775

namespace A333317

/-- `∑[A001221(n+1)*Δ[A006218(n)]]` -/
def P12312202896706516775.Spec : Prop :=
  ∀ n, P12312202896706516775.a n = A333317 (n + 1)

end A333317

/-! ## A333317.P11065017107326128851

`∑[Δ[A054519(n)]*A001221(n+1)]`
-/

namespace A333317.P11065017107326128851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333317.P11065017107326128851

namespace A333317

/-- `∑[Δ[A054519(n)]*A001221(n+1)]` -/
def P11065017107326128851.Spec : Prop :=
  ∀ n, P11065017107326128851.a n = A333317 (n + 1)

end A333317

/-! ## A333317.P7975649118200692939

`∑[A000005(n+1)*A001221(n+1)]`
-/

namespace A333317.P7975649118200692939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333317.P7975649118200692939

namespace A333317

/-- `∑[A000005(n+1)*A001221(n+1)]` -/
def P7975649118200692939.Spec : Prop :=
  ∀ n, P7975649118200692939.a n = A333317 (n + 1)

end A333317

/-! ## A333317.P12167658573567978869

`∑[A000005(n+1)*∑{p}[n+1, A001222(#)]]`
-/

namespace A333317.P12167658573567978869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (∑ p ∈ Nat.primeFactors (f2 n), A001222 p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333317.P12167658573567978869

namespace A333317

/-- `∑[A000005(n+1)*∑{p}[n+1, A001222(#)]]` -/
def P12167658573567978869.Spec : Prop :=
  ∀ n, P12167658573567978869.a n = A333317 (n + 1)

end A333317

/-! ## A333317.P12284972876906400232

`∑[A000005(n+1)*A001222(∏{p}[n+1, #])]`
-/

namespace A333317.P12284972876906400232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333317.P12284972876906400232

namespace A333317

/-- `∑[A000005(n+1)*A001222(∏{p}[n+1, #])]` -/
def P12284972876906400232.Spec : Prop :=
  ∀ n, P12284972876906400232.a n = A333317 (n + 1)

end A333317

/-! ## A333317.P11017607089584084184

`∑[A038040(n+1)/(n+1)*∑{p}[n+1, A001222(#)]]`
-/

namespace A333317.P11017607089584084184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) * ((∑ p ∈ Nat.primeFactors (f2 n), A001222 p : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333317.P11017607089584084184

namespace A333317

/-- `∑[A038040(n+1)/(n+1)*∑{p}[n+1, A001222(#)]]` -/
def P11017607089584084184.Spec : Prop :=
  ∀ n, P11017607089584084184.a n = (A333317 (n + 1) : ℚ)

end A333317

/-! ## A333317.P8075497242795821992

`∑[A038040(n+1)/(n+1)*A001222(∏{p}[n+1, #])]`
-/

namespace A333317.P8075497242795821992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) * (A001222 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333317.P8075497242795821992

namespace A333317

/-- `∑[A038040(n+1)/(n+1)*A001222(∏{p}[n+1, #])]` -/
def P8075497242795821992.Spec : Prop :=
  ∀ n, P8075497242795821992.a n = (A333317 (n + 1) : ℚ)

end A333317

/-! ## A333317.P1107761251935416428

`∑[(A033273(n+1)+A001221(n+1))*A001221(n+1)]`
-/

namespace A333317.P1107761251935416428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033273 (n + 1) + A001221 (n + 1)) * A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333317.P1107761251935416428

namespace A333317

/-- `∑[(A033273(n+1)+A001221(n+1))*A001221(n+1)]` -/
def P1107761251935416428.Spec : Prop :=
  ∀ n, P1107761251935416428.a n = A333317 (n + 1)

end A333317

/-! ## A333317.P11715583954075324539

`∑[∑{d}[n+1, A001221(#*(n+1))]]`
-/

namespace A333317.P11715583954075324539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A001221 (d * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333317.P11715583954075324539

namespace A333317

/-- `∑[∑{d}[n+1, A001221(#*(n+1))]]` -/
def P11715583954075324539.Spec : Prop :=
  ∀ n, P11715583954075324539.a n = A333317 (n + 1)

end A333317

/-! ## A333317.P12674983911400759121

`∑[A001221(n+1)*A114896(∑[n])]`
-/

namespace A333317.P12674983911400759121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A114896 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333317.P12674983911400759121

namespace A333317

/-- `∑[A001221(n+1)*A114896(∑[n])]` -/
def P12674983911400759121.Spec : Prop :=
  ∀ n, P12674983911400759121.a n = A333317 (n + 1)

end A333317

/-!
# A333319: a(n) is the number of subsets of {1..n} that contain exactly 3 odd and 1 even numbers.

The programs for A333319, the canonical program `A333319.P7113117256401628378` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333319 has offset 0).

The definition of A333319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333319.P7113117256401628378

`C(A065033(n), 3)*A004526(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A333319

/-- `C(A065033(n), 3)*A004526(n)` -/
def P7113117256401628378.Spec : Prop :=
  ∀ n, P7113117256401628378.a n = A333319 n

theorem P7113117256401628378.correct : P7113117256401628378.Spec := by
  intro n
  simp only [A333319]

end A333319

/-! ## A333319.P4387782825023221634

`C(A110654(n), 3)*A004526(n)`
-/

namespace A333319.P4387782825023221634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A110654 n).toNat 3 : ℤ) * A004526 n

end

end A333319.P4387782825023221634

namespace A333319

/-- `C(A110654(n), 3)*A004526(n)` -/
def P4387782825023221634.Spec : Prop :=
  ∀ n, P4387782825023221634.a n = A333319 n

end A333319

/-! ## A333319.P2708564833288198408

`∑[A161680(A057979(n))]*A004526(n)`
-/

namespace A333319.P2708564833288198408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A004526 n

end

end A333319.P2708564833288198408

namespace A333319

/-- `∑[A161680(A057979(n))]*A004526(n)` -/
def P2708564833288198408.Spec : Prop :=
  ∀ n, P2708564833288198408.a n = A333319 n

end A333319

/-! ## A333319.P261888078989409478

`∑[A161680(A057979(n))]*A123108(n)`
-/

namespace A333319.P261888078989409478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A123108 n

end

end A333319.P261888078989409478

namespace A333319

/-- `∑[A161680(A057979(n))]*A123108(n)` -/
def P261888078989409478.Spec : Prop :=
  ∀ n, P261888078989409478.a n = A333319 n

end A333319

/-! ## A333319.P2207880273088017511

`C(A004526(n+1), 3)*A004526(n)`
-/

namespace A333319.P2207880273088017511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A004526 (n + 1)).toNat 3 : ℤ) * A004526 n

end

end A333319.P2207880273088017511

namespace A333319

/-- `C(A004526(n+1), 3)*A004526(n)` -/
def P2207880273088017511.Spec : Prop :=
  ∀ n, P2207880273088017511.a n = A333319 n

end A333319

/-! ## A333319.P16883389126331016919

`C(A123108(n+1), 3)*A123108(n)`
-/

namespace A333319.P16883389126331016919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A123108 (n + 1)).toNat 3 : ℤ) * A123108 n

end

end A333319.P16883389126331016919

namespace A333319

/-- `C(A123108(n+1), 3)*A123108(n)` -/
def P16883389126331016919.Spec : Prop :=
  ∀ n, P16883389126331016919.a n = A333319 n

end A333319

/-! ## A333319.P16698684777453979930

`A330299(n+1)-A330299(n+1)/A110654(n+1)`
-/

namespace A333319.P16698684777453979930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330299 (n + 1) : ℚ) - (A330299 (n + 1) : ℚ) / (A110654 (n + 1) : ℚ)

end

end A333319.P16698684777453979930

namespace A333319

/-- `A330299(n+1)-A330299(n+1)/A110654(n+1)` -/
def P16698684777453979930.Spec : Prop :=
  ∀ n, P16698684777453979930.a n = (A333319 n : ℚ)

end A333319

/-! ## A333319.P4114156477355217758

`C(∑[and(1, n)], 3)*A002265(2*n)`
-/

namespace A333319.P4114156477355217758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 3 : ℤ) * A002265 (2 * n)

end

end A333319.P4114156477355217758

namespace A333319

/-- `C(∑[and(1, n)], 3)*A002265(2*n)` -/
def P4114156477355217758.Spec : Prop :=
  ∀ n, P4114156477355217758.a n = A333319 n

end A333319

/-!
# A333320: a(n) is the number of subsets of {1..n} that contain exactly 4 odd and 1 even numbers.

The programs for A333320, the canonical program `A333320.P11260465635556821333` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333320 has offset 0).

The definition of A333320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333320.P11260465635556821333

`C(ceil(n/2), 4)*floor(n/2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333320

/-- `C(ceil(n/2), 4)*floor(n/2)` -/
def P11260465635556821333.Spec : Prop :=
  ∀ n, P11260465635556821333.a n = A333320 n

theorem P11260465635556821333.correct : P11260465635556821333.Spec := by
  intro n
  simp only [A333320]

end A333320

/-! ## A333320.P6787680048393939661

`A000332(∑[n%2])*A004526(n)`
-/

namespace A333320.P6787680048393939661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j) * A004526 n

end

end A333320.P6787680048393939661

namespace A333320

/-- `A000332(∑[n%2])*A004526(n)` -/
def P6787680048393939661.Spec : Prop :=
  ∀ n, P6787680048393939661.a n = A333320 n

end A333320

/-! ## A333320.P17001318242272515997

`A000332(∑[and(1, n)])*A004526(n)`
-/

namespace A333320.P17001318242272515997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j) * A004526 n

end

end A333320.P17001318242272515997

namespace A333320

/-- `A000332(∑[and(1, n)])*A004526(n)` -/
def P17001318242272515997.Spec : Prop :=
  ∀ n, P17001318242272515997.a n = A333320 n

end A333320

/-! ## A333320.P11013289528732926961

`A000332(A065033(n))*A004526(n)`
-/

namespace A333320.P11013289528732926961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A065033 n).toNat * A004526 n

end

end A333320.P11013289528732926961

namespace A333320

/-- `A000332(A065033(n))*A004526(n)` -/
def P11013289528732926961.Spec : Prop :=
  ∀ n, P11013289528732926961.a n = A333320 n

end A333320

/-! ## A333320.P9622532947038967655

`A000332(A110654(n))*A004526(n)`
-/

namespace A333320.P9622532947038967655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A110654 n).toNat * A004526 n

end

end A333320.P9622532947038967655

namespace A333320

/-- `A000332(A110654(n))*A004526(n)` -/
def P9622532947038967655.Spec : Prop :=
  ∀ n, P9622532947038967655.a n = A333320 n

end A333320

/-! ## A333320.P1362911794449419623

`A000332(A110654(n))*A123108(n)`
-/

namespace A333320.P1362911794449419623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A110654 n).toNat * A123108 n

end

end A333320.P1362911794449419623

namespace A333320

/-- `A000332(A110654(n))*A123108(n)` -/
def P1362911794449419623.Spec : Prop :=
  ∀ n, P1362911794449419623.a n = A333320 n

end A333320

/-! ## A333320.P12380473469768043144

`A000332(Δ[A002620(n)])*A004526(n)`
-/

namespace A333320.P12380473469768043144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (f1 (n + 1) - f1 n).toNat * A004526 n

end

end A333320.P12380473469768043144

namespace A333320

/-- `A000332(Δ[A002620(n)])*A004526(n)` -/
def P12380473469768043144.Spec : Prop :=
  ∀ n, P12380473469768043144.a n = A333320 n

end A333320

/-! ## A333320.P3085121105092835399

`(A008619(n)-1)*A000332(A110654(n))`
-/

namespace A333320.P3085121105092835399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n - 1) * A000332 (A110654 n).toNat

end

end A333320.P3085121105092835399

namespace A333320

/-- `(A008619(n)-1)*A000332(A110654(n))` -/
def P3085121105092835399.Spec : Prop :=
  ∀ n, P3085121105092835399.a n = A333320 n

theorem P3085121105092835399.correct : P3085121105092835399.Spec := by
  intro n
  simp only [A333320, Nat.add_sub_cancel, A333320.P3085121105092835399.a, A333320.P11260465635556821333.a, A000332, A000332.P5946310388023661265.a, A008619, A008619.P16053834178911111118.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A333320

/-! ## A333320.P14335306289734321373

`A000332(n-A004526(n))*A004526(n)`
-/

namespace A333320.P14335306289734321373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 ((n : ℤ) - A004526 n).toNat * A004526 n

end

end A333320.P14335306289734321373

namespace A333320

/-- `A000332(n-A004526(n))*A004526(n)` -/
def P14335306289734321373.Spec : Prop :=
  ∀ n, P14335306289734321373.a n = A333320 n

end A333320

/-! ## A333320.P15537424913638345705

`A000332(A004526(n+1))*A004526(n)`
-/

namespace A333320.P15537424913638345705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A004526 (n + 1)).toNat * A004526 n

end

end A333320.P15537424913638345705

namespace A333320

/-- `A000332(A004526(n+1))*A004526(n)` -/
def P15537424913638345705.Spec : Prop :=
  ∀ n, P15537424913638345705.a n = A333320 n

end A333320

/-! ## A333320.P7399945254312204311

`A000332(A123108(n+1))*A123108(n)`
-/

namespace A333320.P7399945254312204311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A123108 (n + 1)).toNat * A123108 n

end

end A333320.P7399945254312204311

namespace A333320

/-- `A000332(A123108(n+1))*A123108(n)` -/
def P7399945254312204311.Spec : Prop :=
  ∀ n, P7399945254312204311.a n = A333320 n

end A333320

/-! ## A333320.P2340839136682573382

`A000332(A059169(2*n+1))*A059169(2*(n+1))`
-/

namespace A333320.P2340839136682573382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A059169 (2 * n + 1)).toNat * A059169 (2 * (n + 1))

end

end A333320.P2340839136682573382

namespace A333320

/-- `A000332(A059169(2*n+1))*A059169(2*(n+1))` -/
def P2340839136682573382.Spec : Prop :=
  ∀ n, P2340839136682573382.a n = A333320 n

end A333320

/-!
# A333321: a(n) is the number of subsets of {1..n} that contain exactly 1 odd and 4 even numbers.

The programs for A333321, the canonical program `A333321.P11917926452411153153` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333321 has offset 0).

The definition of A333321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333321.P11917926452411153153

`ceil(n/2)*C(floor(n/2), 4)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333321

/-- `ceil(n/2)*C(floor(n/2), 4)` -/
def P11917926452411153153.Spec : Prop :=
  ∀ n, P11917926452411153153.a n = A333321 n

theorem P11917926452411153153.correct : P11917926452411153153.Spec := by
  intro n
  simp only [A333321]

end A333321

/-! ## A333321.P15592733864057619485

`ceil(n/2)*A000332(abs(ceil(n/2-n)))`
-/

namespace A333321.P15592733864057619485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A000332 |⌈(n : ℚ) / 2 - (n : ℚ)⌉|.toNat

end

end A333321.P15592733864057619485

namespace A333321

/-- `ceil(n/2)*A000332(abs(ceil(n/2-n)))` -/
def P15592733864057619485.Spec : Prop :=
  ∀ n, P15592733864057619485.a n = A333321 n

end A333321

/-! ## A333321.P10497990367800642028

`A000332(A004526(n))*A065033(n)`
-/

namespace A333321.P10497990367800642028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A004526 n).toNat * A065033 n

end

end A333321.P10497990367800642028

namespace A333321

/-- `A000332(A004526(n))*A065033(n)` -/
def P10497990367800642028.Spec : Prop :=
  ∀ n, P10497990367800642028.a n = A333321 n

end A333321

/-! ## A333321.P10196751340364481051

`A000332(A004526(n))*A110654(n)`
-/

namespace A333321.P10196751340364481051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A004526 n).toNat * A110654 n

end

end A333321.P10196751340364481051

namespace A333321

/-- `A000332(A004526(n))*A110654(n)` -/
def P10196751340364481051.Spec : Prop :=
  ∀ n, P10196751340364481051.a n = A333321 n

theorem P10196751340364481051.correct : P10196751340364481051.Spec := by
  intro n
  simp only [A333321, Nat.add_sub_cancel, A333321.P10196751340364481051.a, A333321.P11917926452411153153.a, A000332, A000332.P5946310388023661265.a, A004526, A004526.P10084182425416171735.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A333321

/-! ## A333321.P15664609327099935611

`A000332(A123108(n))*A110654(n)`
-/

namespace A333321.P15664609327099935611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A123108 n).toNat * A110654 n

end

end A333321.P15664609327099935611

namespace A333321

/-- `A000332(A123108(n))*A110654(n)` -/
def P15664609327099935611.Spec : Prop :=
  ∀ n, P15664609327099935611.a n = A333321 n

end A333321

/-! ## A333321.P15090277007917786789

`A000332(A008619(n)-1)*A110654(n)`
-/

namespace A333321.P15090277007917786789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A008619 n - 1).toNat * A110654 n

end

end A333321.P15090277007917786789

namespace A333321

/-- `A000332(A008619(n)-1)*A110654(n)` -/
def P15090277007917786789.Spec : Prop :=
  ∀ n, P15090277007917786789.a n = A333321 n

theorem P15090277007917786789.correct : P15090277007917786789.Spec := by
  intro n
  simp only [A333321, Nat.add_sub_cancel, A333321.P15090277007917786789.a, A333321.P11917926452411153153.a, A000332, A000332.P5946310388023661265.a, A008619, A008619.P16053834178911111118.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A333321

/-! ## A333321.P3042504012870135637

`A000332(n-A110654(n))*A110654(n)`
-/

namespace A333321.P3042504012870135637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 ((n : ℤ) - A110654 n).toNat * A110654 n

end

end A333321.P3042504012870135637

namespace A333321

/-- `A000332(n-A110654(n))*A110654(n)` -/
def P3042504012870135637.Spec : Prop :=
  ∀ n, P3042504012870135637.a n = A333321 n

end A333321

/-! ## A333321.P10628666621672167864

`A333320(n+1)-A330299(n)`
-/

namespace A333321.P10628666621672167864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 (n + 1) - A330299 n

end

end A333321.P10628666621672167864

namespace A333321

/-- `A333320(n+1)-A330299(n)` -/
def P10628666621672167864.Spec : Prop :=
  ∀ n, P10628666621672167864.a n = A333321 n

end A333321

/-! ## A333321.P5074671907309727741

`A000332(A004526(n))*A004526(n+1)`
-/

namespace A333321.P5074671907309727741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A004526 n).toNat * A004526 (n + 1)

end

end A333321.P5074671907309727741

namespace A333321

/-- `A000332(A004526(n))*A004526(n+1)` -/
def P5074671907309727741.Spec : Prop :=
  ∀ n, P5074671907309727741.a n = A333321 n

end A333321

/-! ## A333321.P7709150229548843024

`A000332(A123108(n))*A123108(n+1)`
-/

namespace A333321.P7709150229548843024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A123108 n).toNat * A123108 (n + 1)

end

end A333321.P7709150229548843024

namespace A333321

/-- `A000332(A123108(n))*A123108(n+1)` -/
def P7709150229548843024.Spec : Prop :=
  ∀ n, P7709150229548843024.a n = A333321 n

end A333321

/-! ## A333321.P8258139159943716895

`A000332(A065033(n+1)-1)*A065033(n)`
-/

namespace A333321.P8258139159943716895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A065033 (n + 1) - 1).toNat * A065033 n

end

end A333321.P8258139159943716895

namespace A333321

/-- `A000332(A065033(n+1)-1)*A065033(n)` -/
def P8258139159943716895.Spec : Prop :=
  ∀ n, P8258139159943716895.a n = A333321 n

end A333321

/-! ## A333321.P2450481165823402554

`A333320(n+1)+A330298(n)-A333319(n+1)`
-/

namespace A333321.P2450481165823402554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 (n + 1) + (A330298 n - A333319 (n + 1))

end

end A333321.P2450481165823402554

namespace A333321

/-- `A333320(n+1)+A330298(n)-A333319(n+1)` -/
def P2450481165823402554.Spec : Prop :=
  ∀ n, P2450481165823402554.a n = A333321 n

end A333321

/-! ## A333321.P8993737804883004349

`A000332(A059169(2*(n+1)))*A059169(2*n+1)`
-/

namespace A333321.P8993737804883004349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A059169 (2 * (n + 1))).toNat * A059169 (2 * n + 1)

end

end A333321.P8993737804883004349

namespace A333321

/-- `A000332(A059169(2*(n+1)))*A059169(2*n+1)` -/
def P8993737804883004349.Spec : Prop :=
  ∀ n, P8993737804883004349.a n = A333321 n

end A333321

/-!
# A333325: Lexicographically earliest sequence over {0,1,2} that has the shortest square subsequence.

The programs for A333325, there is no canonical definition to state claims against.
-/

/-! ## A333325.P8716747920903943131

`A104702(n+1)%A049237(A010353(n+1))`
-/

namespace A333325.P8716747920903943131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104702 (n + 1)) (A049237 (A010353 (n + 1)).toNat)

end

end A333325.P8716747920903943131

/-! ## A333325.P602550222191186024

`A080843(lt[A057468(n+1), A231764(n+1)])`
-/

namespace A333325.P602550222191186024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333325.P602550222191186024

/-! ## A333325.P7541795869604779929

`A080843(lt[A096570(n+1), A233026(n+1)])`
-/

namespace A333325.P7541795869604779929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333325.P7541795869604779929

/-! ## A333325.P16974962787273050907

`A080843(lt[A035618(n+1), A110952(n+3)])`
-/

namespace A333325.P16974962787273050907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110952 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333325.P16974962787273050907

/-! ## A333325.P8046886999252275604

`A131743(lt[A158793(2*n+1), A162798(3*n+4)])`
-/

namespace A333325.P8046886999252275604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158793 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162798 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333325.P8046886999252275604

/-!
# A333326: Odd numbers k such that k is the product of 2 numbers greater than one, in two or more ways.

The programs for A333326, the canonical program `A333326.P2975719134818226365` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333326 has offset 1).

The definition of A333326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333326.P2975719134818226365

`lt[3, A325937(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A333326

/-- `lt[3, A325937(n+1)]+1` -/
def P2975719134818226365.Spec : Prop :=
  ∀ n, (P2975719134818226365.a n : ℤ) = A333326 (n + 1)

theorem P2975719134818226365.correct : P2975719134818226365.Spec := by
  intro n
  simp only [A333326, Nat.add_sub_cancel]

end A333326

/-! ## A333326.P15699853586990446812

`lt[8, A000005((2*n)^(n%2))]`
-/

namespace A333326.P15699853586990446812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n) ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333326.P15699853586990446812

namespace A333326

/-- `lt[8, A000005((2*n)^(n%2))]` -/
def P15699853586990446812.Spec : Prop :=
  ∀ n, (P15699853586990446812.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P3508059465667510860

`2*lt[4, A000005(2*n+1)]+1`
-/

namespace A333326.P3508059465667510860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333326.P3508059465667510860

namespace A333326

/-- `2*lt[4, A000005(2*n+1)]+1` -/
def P3508059465667510860.Spec : Prop :=
  ∀ n, (P3508059465667510860.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P8477440358611029964

`A005408(lt[2, A193773(n)])`
-/

namespace A333326.P8477440358611029964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A333326.P8477440358611029964

namespace A333326

/-- `A005408(lt[2, A193773(n)])` -/
def P8477440358611029964.Spec : Prop :=
  ∀ n, P8477440358611029964.a n = A333326 (n + 1)

end A333326

/-! ## A333326.P5278429707533448422

`A005408(lt[8, A278223(n+1)])`
-/

namespace A333326.P5278429707533448422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A333326.P5278429707533448422

namespace A333326

/-- `A005408(lt[8, A278223(n+1)])` -/
def P5278429707533448422.Spec : Prop :=
  ∀ n, P5278429707533448422.a n = A333326 (n + 1)

end A333326

/-! ## A333326.P13012223333782739758

`lt[4, A000005(A093178(n))]`
-/

namespace A333326.P13012223333782739758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333326.P13012223333782739758

namespace A333326

/-- `lt[4, A000005(A093178(n))]` -/
def P13012223333782739758.Spec : Prop :=
  ∀ n, (P13012223333782739758.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P16164378780162966142

`A005408(lt[4, A099774(n+1)])`
-/

namespace A333326.P16164378780162966142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A333326.P16164378780162966142

namespace A333326

/-- `A005408(lt[4, A099774(n+1)])` -/
def P16164378780162966142.Spec : Prop :=
  ∀ n, P16164378780162966142.a n = A333326 (n + 1)

end A333326

/-! ## A333326.P18364938090256323289

`A267872(lt[8, A278223(n+1)])`
-/

namespace A333326.P18364938090256323289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A333326.P18364938090256323289

namespace A333326

/-- `A267872(lt[8, A278223(n+1)])` -/
def P18364938090256323289.Spec : Prop :=
  ∀ n, P18364938090256323289.a n = A333326 (n + 1)

end A333326

/-! ## A333326.P13064361899300849723

`∩[2*n+1, A058080(n+1)]`
-/

namespace A333326.P13064361899300849723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P13064361899300849723

namespace A333326

/-- `∩[2*n+1, A058080(n+1)]` -/
def P13064361899300849723.Spec : Prop :=
  ∀ n, (P13064361899300849723.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P6825890604450999211

`∩[A058080(n+1), A004273(n)]`
-/

namespace A333326.P6825890604450999211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P6825890604450999211

namespace A333326

/-- `∩[A058080(n+1), A004273(n)]` -/
def P6825890604450999211.Spec : Prop :=
  ∀ n, (P6825890604450999211.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P9058140175751524198

`∩[A058080(n+1), A004274(n)]`
-/

namespace A333326.P9058140175751524198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P9058140175751524198

namespace A333326

/-- `∩[A058080(n+1), A004274(n)]` -/
def P9058140175751524198.Spec : Prop :=
  ∀ n, (P9058140175751524198.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P6915368445064590880

`∩[A058080(n+1), A004276(n)]`
-/

namespace A333326.P6915368445064590880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P6915368445064590880

namespace A333326

/-- `∩[A058080(n+1), A004276(n)]` -/
def P6915368445064590880.Spec : Prop :=
  ∀ n, (P6915368445064590880.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P14329544018723574772

`∩[A058080(n+1), A004281(n)]`
-/

namespace A333326.P14329544018723574772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P14329544018723574772

namespace A333326

/-- `∩[A058080(n+1), A004281(n)]` -/
def P14329544018723574772.Spec : Prop :=
  ∀ n, (P14329544018723574772.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P11642926388642753540

`∩[A058080(n+1), A020742(n)]`
-/

namespace A333326.P11642926388642753540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P11642926388642753540

namespace A333326

/-- `∩[A058080(n+1), A020742(n)]` -/
def P11642926388642753540.Spec : Prop :=
  ∀ n, (P11642926388642753540.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P7855941137546611392

`∩[A058080(n+1), A060747(n)]`
-/

namespace A333326.P7855941137546611392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P7855941137546611392

namespace A333326

/-- `∩[A058080(n+1), A060747(n)]` -/
def P7855941137546611392.Spec : Prop :=
  ∀ n, (P7855941137546611392.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P9828136583468769893

`∩[A058080(n+1), A062545(n)]`
-/

namespace A333326.P9828136583468769893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P9828136583468769893

namespace A333326

/-- `∩[A058080(n+1), A062545(n)]` -/
def P9828136583468769893.Spec : Prop :=
  ∀ n, (P9828136583468769893.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P12536024843930257539

`∩[A058080(n+1), A130773(n)]`
-/

namespace A333326.P12536024843930257539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P12536024843930257539

namespace A333326

/-- `∩[A058080(n+1), A130773(n)]` -/
def P12536024843930257539.Spec : Prop :=
  ∀ n, (P12536024843930257539.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P12475688977396651647

`∩[A058080(n+1), A163985(n)]`
-/

namespace A333326.P12475688977396651647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P12475688977396651647

namespace A333326

/-- `∩[A058080(n+1), A163985(n)]` -/
def P12475688977396651647.Spec : Prop :=
  ∀ n, (P12475688977396651647.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P14644233451065896155

`∩[A058080(n+1), A223134(n)]`
-/

namespace A333326.P14644233451065896155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P14644233451065896155

namespace A333326

/-- `∩[A058080(n+1), A223134(n)]` -/
def P14644233451065896155.Spec : Prop :=
  ∀ n, (P14644233451065896155.a n : ℤ) = A333326 (n + 1)

end A333326

/-! ## A333326.P8662684184053077748

`∩[A058080(n+1), A005818(n+1)]`
-/

namespace A333326.P8662684184053077748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333326.P8662684184053077748

namespace A333326

/-- `∩[A058080(n+1), A005818(n+1)]` -/
def P8662684184053077748.Spec : Prop :=
  ∀ n, (P8662684184053077748.a n : ℤ) = A333326 (n + 1)

end A333326

/-!
# A333327: Primes p such that, if p = Sum_{0<=i<=k} d_i*10^i is the decimal expansion, p mod (d_i*10^i) is prime for 0<=i<=k.

The programs for A333327, there is no canonical definition to state claims against.
-/

/-! ## A333327.P11746186961467433925

`p?[A239310(3*n+2)-A239331(n)]`
-/

namespace A333327.P11746186961467433925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239310 (3 * n + 2) - A239331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333327.P11746186961467433925

/-! ## A333327.P7776593936134426471

`A156312(A201647(n+1)+A038548(n+1))`
-/

namespace A333327.P7776593936134426471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156312 (A201647 (n + 1) + A038548 (n + 1)).toNat

end

end A333327.P7776593936134426471

/-!
# A333329: Number of winnable configurations in Lights Out game (played on a digraph) summed over every labeled digraph on n nodes.

The programs for A333329, there is no canonical definition to state claims against.
-/

/-! ## A333329.P935379988086225211

`A194583(∑[n]+n)`
-/

namespace A333329.P935379988086225211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194583 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A333329.P935379988086225211

/-! ## A333329.P9697179798460925503

`record[A194583(A338434(n+1))]`
-/

namespace A333329.P9697179798460925503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194583 (A338434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333329.P9697179798460925503

/-! ## A333329.P9410007160699687512

`record[A103452(n)*A194583(n)]`
-/

namespace A333329.P9410007160699687512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A194583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333329.P9410007160699687512

/-! ## A333329.P17533859696497236185

`record[A194583(n)/A194595(n)]`
-/

namespace A333329.P17533859696497236185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194583 n : ℚ) / (A194595 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333329.P17533859696497236185

/-! ## A333329.P2627201580448903062

`record[A194583(gcd(n, A014473(n)))]`
-/

namespace A333329.P2627201580448903062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194583 (Int.gcd (n : ℤ) (A014473 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333329.P2627201580448903062

/-!
# A333330: Array read by antidiagonals: T(n,k) is the number of k-regular loopless multigraphs on n unlabeled nodes, n >= 0, k >= 0.

The programs for A333330, there is no canonical definition to state claims against.
-/

/-! ## A333330.P15690310665653210918

`A090001(A351322(n)²)`
-/

namespace A333330.P15690310665653210918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A351322 n ^ 2).toNat

end

end A333330.P15690310665653210918

/-! ## A333330.P7052338023021216615

`A090001(A351322(n)^2)`
-/

namespace A333330.P7052338023021216615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A351322 n ^ 2).toNat

end

end A333330.P7052338023021216615

/-! ## A333330.P15195187736178512289

`A000120(32*A351322(n))`
-/

namespace A333330.P15195187736178512289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (32 * A351322 n).toNat

end

end A333330.P15195187736178512289

/-! ## A333330.P8269718159433915934

`A139351(33*A351322(n))`
-/

namespace A333330.P8269718159433915934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (33 * A351322 n).toNat

end

end A333330.P8269718159433915934

/-! ## A333330.P11230566657158474746

`A329313(A351322(n))`
-/

namespace A333330.P11230566657158474746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A351322 n).toNat

end

end A333330.P11230566657158474746

/-!
# A333331: Number of integer points in the convex hull in R^n of parking functions of length n.

The programs for A333331, there is no canonical definition to state claims against.
-/

/-! ## A333331.P49901800294245948

`A014068(n+1)-A368596(n+1)`
-/

namespace A333331.P49901800294245948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014068 (n + 1) - A368596 (n + 1)

end

end A333331.P49901800294245948

/-! ## A333331.P16722540200041087055

`A368597(n+1)-A368730(n+1)`
-/

namespace A333331.P16722540200041087055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368597 (n + 1) - A368730 (n + 1)

end

end A333331.P16722540200041087055

/-!
# A333332: Positive numbers k at which min{abs(2^k - 10^y)/10^y: y in Z} reaches a new minimum.

The programs for A333332, there is no canonical definition to state claims against.
-/

/-! ## A333332.P12710016297924500464

`∪[A334822(n+1), A073733(n)]`
-/

namespace A333332.P12710016297924500464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073733 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333332.P12710016297924500464

/-! ## A333332.P14393342202780906165

`∪[A073733(n), A254667(A073733(n))]`
-/

namespace A333332.P14393342202780906165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073733 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A073733 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333332.P14393342202780906165

/-!
# A333337: Indices of rows of n consecutive smallest primes in A333238, or -1 if n consecutive smallest primes do not appear in A333238.

The programs for A333337, there is no canonical definition to state claims against.
-/

/-! ## A333337.P17097645742456022226

`eq[1, A128707(A333129(n))]`
-/

namespace A333337.P17097645742456022226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128707 (A333129 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333337.P17097645742456022226

/-! ## A333337.P16004301692470402324

`record[A000027(n+1)-A128707(A333129(n))]`
-/

namespace A333337.P16004301692470402324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A128707 (A333129 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333337.P16004301692470402324

/-!
# A333342: Least k such that f(k) < 0, where f(1) = n and f(k) = f(k-1)*e^(1/k) - 1 for k > 1.

The programs for A333342, there is no canonical definition to state claims against.
-/

/-! ## A333342.P333160999707576487

`A121856(A292668(n))`
-/

namespace A333342.P333160999707576487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (A292668 n).toNat

end

end A333342.P333160999707576487

/-! ## A333342.P3550839730180510252

`A249728(A316726(n))`
-/

namespace A333342.P3550839730180510252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A316726 n).toNat

end

end A333342.P3550839730180510252

/-! ## A333342.P1672319580687861848

`A202305(Δ[A001353(n)])`
-/

namespace A333342.P1672319580687861848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (f1 (n + 1) - f1 n).toNat

end

end A333342.P1672319580687861848

/-! ## A333342.P1782305961725328414

`A202305(A001835(n+1))`
-/

namespace A333342.P1782305961725328414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A001835 (n + 1)).toNat

end

end A333342.P1782305961725328414

/-!
# A333343: Least k such that f(k) < 0, where f(1) = n and f(k) = f(k-1)*2^(1/k) - 1 for k > 1.

The programs for A333343, there is no canonical definition to state claims against.
-/

/-! ## A333343.P13728945986501839167

`A334948(A244776(n+1)+A142117(2*n+5)+1)+∑[n]`
-/

namespace A333343.P13728945986501839167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334948 (A244776 (n + 1) + A142117 (2 * n + 5) + 1).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A333343.P13728945986501839167

/-! ## A333343.P15203238976960341642

`A003003(A002622(n+1))`
-/

namespace A333343.P15203238976960341642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A002622 (n + 1)).toNat

end

end A333343.P15203238976960341642

/-! ## A333343.P3781255291099103559

`A374740(A323352(n))+n*(n+1)/2`
-/

namespace A333343.P3781255291099103559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374740 (A323352 n).toNat : ℚ) + (n : ℚ) * ((n + 1 : ℚ) / 2)

end

end A333343.P3781255291099103559

/-! ## A333343.P10791383859736347937

`A097195(A018242(n))+A000217(n)`
-/

namespace A333343.P10791383859736347937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 (A018242 n).toNat + A000217 n

end

end A333343.P10791383859736347937

/-! ## A333343.P9653346436399368369

`A156262(n²+n+3)`
-/

namespace A333343.P9653346436399368369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (n ^ 2 + n + 3)

end

end A333343.P9653346436399368369

/-!
# A333344: a(n) = 11*a(n-1) - 9*a(n-2) starting a(0)=1, a(1)=10.

The programs for A333344, the canonical program `A333344.P17956545538172708363` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333344 has offset 0).

The definition of A333344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)-9*a(n-2)` (program `A333344.P17956545538172708363`, by `A333344.P17956545538172708363.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A333344.P17956545538172708363

`11*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333344

/-- `11*a(n-1)-9*a(n-2)` -/
def P17956545538172708363.Spec : Prop :=
  ∀ n, P17956545538172708363.a n = A333344 n

theorem P17956545538172708363.correct : P17956545538172708363.Spec := by
  intro n
  simp only [A333344]

end A333344

/-! ## A333344.P14689704120283212961

`A190872(n)+A147841(n)`
-/

namespace A333344.P14689704120283212961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190872 n + A147841 n

end

end A333344.P14689704120283212961

namespace A333344

/-- `A190872(n)+A147841(n)` -/
def P14689704120283212961.Spec : Prop :=
  ∀ n, P14689704120283212961.a n = A333344 n

end A333344

/-! ## A333344.P3283703403522643373

`A190872(n+1)-A190872(n)`
-/

namespace A333344.P3283703403522643373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190872 (n + 1) - A190872 n

end

end A333344.P3283703403522643373

namespace A333344

/-- `A190872(n+1)-A190872(n)` -/
def P3283703403522643373.Spec : Prop :=
  ∀ n, P3283703403522643373.a n = A333344 n

end A333344

/-! ## A333344.P1032840063252518153

`ogf((1-x)/(1-11x+9x^2))`
-/

namespace A333344.P1032840063252518153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -11, 9] n

end

end A333344.P1032840063252518153

namespace A333344

/-- `ogf((1-x)/(1-11x+9x^2))` -/
def P1032840063252518153.Spec : Prop :=
  ∀ n, P1032840063252518153.a n = A333344 n

end A333344

/-! ## A333344.P8029857702935975994

`Δ[A190872(n)]`
-/

namespace A333344.P8029857702935975994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333344.P8029857702935975994

namespace A333344

/-- `Δ[A190872(n)]` -/
def P8029857702935975994.Spec : Prop :=
  ∀ n, P8029857702935975994.a n = A333344 n

end A333344

/-! ## A333344.P12340063496311315220

`A190872(n)+∑[A333347(7*n)]`
-/

namespace A333344.P12340063496311315220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333347 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333344.P12340063496311315220

namespace A333344

/-- `A190872(n)+∑[A333347(7*n)]` -/
def P12340063496311315220.Spec : Prop :=
  ∀ n, P12340063496311315220.a n = A333344 n

end A333344

/-! ## A333344.P11931182194276683677

`A147841(n+1)/9`
-/

namespace A333344.P11931182194276683677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147841 (n + 1) : ℚ) / 9

end

end A333344.P11931182194276683677

namespace A333344

/-- `A147841(n+1)/9` -/
def P11931182194276683677.Spec : Prop :=
  ∀ n, P11931182194276683677.a n = (A333344 n : ℚ)

end A333344

/-!
# A333347: Largest number of maximum matchings in a tree of n vertices.

The programs for A333347, there is no canonical definition to state claims against.
-/

/-! ## A333347.P17518265703092930818

`A123108(A271486(n)%A056799(n+1))`
-/

namespace A333347.P17518265703092930818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.tmod (A271486 n) (A056799 (n + 1))).toNat

end

end A333347.P17518265703092930818

/-! ## A333347.P1921554782680513428

`A123108(A271486(n)%A271455(n))`
-/

namespace A333347.P1921554782680513428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.tmod (A271486 n) (A271455 n)).toNat

end

end A333347.P1921554782680513428

/-! ## A333347.P4759891115207483167

`floor(sqrt(A250227(n+1)/A250224(n+1)))`
-/

namespace A333347.P4759891115207483167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A250227 (n + 1) : ℚ) / (A250224 (n + 1) : ℚ) : ℝ)⌋

end

end A333347.P4759891115207483167

/-! ## A333347.P4926805311153331577

`A271488(A289207(n))%A250227(n+1)`
-/

namespace A333347.P4926805311153331577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271488 (A289207 n).toNat) (A250227 (n + 1))

end

end A333347.P4926805311153331577

/-! ## A333347.P5848669328195130954

`A122921(A072964(n+1))`
-/

namespace A333347.P5848669328195130954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A072964 (n + 1)).toNat

end

end A333347.P5848669328195130954

/-!
# A333348: Matching number of the tree of n vertices with the largest number of maximum matchings.

The programs for A333348, there is no canonical definition to state claims against.
-/

/-! ## A333348.P10729751370976972573

`round(A084684(n)/A137910(n+1))`
-/

namespace A333348.P10729751370976972573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A084684 n : ℚ) / (A137910 (n + 1) : ℚ))

end

end A333348.P10729751370976972573

/-! ## A333348.P11940518030614477734

`A054899(A114149(2*n+5)-A005229(n+1))`
-/

namespace A333348.P11940518030614477734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A114149 (2 * n + 5) - A005229 (n + 1)).toNat

end

end A333348.P11940518030614477734

/-! ## A333348.P1637832513989997894

`A000195(A032153(n)+A000195(2*(n+2)))`
-/

namespace A333348.P1637832513989997894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A032153 n + A000195 (2 * (n + 2))).toNat

end

end A333348.P1637832513989997894

/-! ## A333348.P15558747846847942782

`A329199(A133498(n+1))`
-/

namespace A333348.P15558747846847942782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329199 (A133498 (n + 1)).toNat

end

end A333348.P15558747846847942782

/-!
# A333351: Array read by antidiagonals: T(n,k) is the number of k-regular loopless multigraphs on n labeled nodes, n >= 0, k >= 0.

The programs for A333351, there is no canonical definition to state claims against.
-/

/-! ## A333351.P8007105986977983385

`A157044(A209571(n+1))`
-/

namespace A333351.P8007105986977983385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157044 (A209571 (n + 1)).toNat

end

end A333351.P8007105986977983385

/-! ## A333351.P14567945376116699138

`val(A114179(A027935(n)), 2)`
-/

namespace A333351.P14567945376116699138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A114179 (A027935 n).toNat).toNat 2

end

end A333351.P14567945376116699138

/-! ## A333351.P7076615173600033096

`A264620(A209571(n+1)-1)`
-/

namespace A333351.P7076615173600033096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (A209571 (n + 1) - 1).toNat

end

end A333351.P7076615173600033096

/-! ## A333351.P8155249942954831318

`A333330(n)+A321936(A257493(n))`
-/

namespace A333351.P8155249942954831318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 n + A321936 (A257493 n).toNat

end

end A333351.P8155249942954831318

/-! ## A333351.P2271055167731626482

`A357621(and(A243757(3*n), A362899(n)))`
-/

namespace A333351.P2271055167731626482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (Int.land (A243757 (3 * n)) (A362899 n)).toNat

end

end A333351.P2271055167731626482

/-!
# A333352: a(n) is the product of indices of the smallest and greatest prime factors of n.

The programs for A333352, there is no canonical definition to state claims against.
-/

/-! ## A333352.P18185173741468900145

`A000007(n)+A055396(n+1)*A061395(n+1)`
-/

namespace A333352.P18185173741468900145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A055396 (n + 1) * A061395 (n + 1)

end

end A333352.P18185173741468900145

/-! ## A333352.P1735324804982503591

`∏{p}[A020639(n+1), A000720(#)*A061395(n+1)]`
-/

namespace A333352.P1735324804982503591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p * A061395 (n + 1)

end

end A333352.P1735324804982503591

/-! ## A333352.P8484330948905792011

`∏{p}[A006530(n+1), A055396(n+1)*A055396(#)]`
-/

namespace A333352.P8484330948905792011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A055396 (n + 1) * A055396 p

end

end A333352.P8484330948905792011

/-! ## A333352.P11768868863949897438

`∏{p}[A020639(n+1), A061395(n+1)*A061395(#)]`
-/

namespace A333352.P11768868863949897438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 (n + 1) * A061395 p

end

end A333352.P11768868863949897438

/-! ## A333352.P10176290166438276981

`A003963(A006530(n+1))*A003963(A020639(n+1))`
-/

namespace A333352.P10176290166438276981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A006530 (n + 1)).toNat * A003963 (A020639 (n + 1)).toNat

end

end A333352.P10176290166438276981

/-! ## A333352.P17559581044834830471

`A028310(A055396(n+1))*A028310(A061395(n+1))`
-/

namespace A333352.P17559581044834830471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A055396 (n + 1)).toNat * A028310 (A061395 (n + 1)).toNat

end

end A333352.P17559581044834830471

/-! ## A333352.P3121203411090649576

`A028310(A055396(n+1)*A061395(n+1))`
-/

namespace A333352.P3121203411090649576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A055396 (n + 1) * A061395 (n + 1)).toNat

end

end A333352.P3121203411090649576

/-! ## A333352.P18404796667935586479

`A003963(A066048(n+1))`
-/

namespace A333352.P18404796667935586479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A066048 (n + 1)).toNat

end

end A333352.P18404796667935586479

/-! ## A333352.P16167613039835676192

`A003963(A006530(n+1)*A020639(n+1))`
-/

namespace A333352.P16167613039835676192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A006530 (n + 1) * A020639 (n + 1)).toNat

end

end A333352.P16167613039835676192

/-!
# A333353: Primes p whose order of primeness A078442(p) is prime.

The programs for A333353, there is no canonical definition to state claims against.
-/

/-! ## A333353.P5633277166187455793

`A000040(A333364(n+1))`
-/

namespace A333353.P5633277166187455793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A333364 (n + 1)).toNat

end

end A333353.P5633277166187455793

/-! ## A333353.P12477427141474794976

`A008578(A333364(n+1)+1)`
-/

namespace A333353.P12477427141474794976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A333364 (n + 1) + 1).toNat

end

end A333353.P12477427141474794976

/-! ## A333353.P9459538696715216133

`A065091(A333364(n+1)-1)`
-/

namespace A333353.P9459538696715216133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A333364 (n + 1) - 1).toNat

end

end A333353.P9459538696715216133

/-! ## A333353.P3784124219350959189

`A158611(A333364(n+1)+2)`
-/

namespace A333353.P3784124219350959189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A333364 (n + 1) + 2).toNat

end

end A333353.P3784124219350959189

/-! ## A333353.P9065926906723911268

`∑{d}[A333364(n+1), A006093(#)]`
-/

namespace A333353.P9065926906723911268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006093 d

end

end A333353.P9065926906723911268

/-! ## A333353.P7154452854878813702

`A328878(A333364(2*n+1-n))`
-/

namespace A333353.P7154452854878813702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328878 (A333364 (2 * n + 1 - n)).toNat

end

end A333353.P7154452854878813702

/-! ## A333353.P4898895537639016638

`A006005(A333364(n+1)%((n+2)²+n))`
-/

namespace A333353.P4898895537639016638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A333364 (n + 1)) ((n + 2) ^ 2 + n : ℤ)).toNat

end

end A333353.P4898895537639016638

/-! ## A333353.P403987428609635052

`A082500(2*A333364(n+1))`
-/

namespace A333353.P403987428609635052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A333364 (n + 1)).toNat

end

end A333353.P403987428609635052

/-!
# A333354: Minimum cost of path that starts at 1 and visits integers from 1 to n, inclusive, each at least once, where the cost to travel from a to b is LCM(a, b).

The programs for A333354, there is no canonical definition to state claims against.
-/

/-! ## A333354.P11837821044960319345

`∑[A106457(A006233(n))+n]`
-/

namespace A333354.P11837821044960319345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106457 (A006233 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333354.P11837821044960319345

/-! ## A333354.P5471590889609238196

`A083375(A092867(n+1))-A000034(n)`
-/

namespace A333354.P5471590889609238196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A092867 (n + 1)).toNat - A000034 n

end

end A333354.P5471590889609238196

/-! ## A333354.P9922268680942814843

`A073188(A324043(n+1)%A241004(n+1))`
-/

namespace A333354.P9922268680942814843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (Int.tmod (A324043 (n + 1)) (A241004 (n + 1))).toNat

end

end A333354.P9922268680942814843

/-! ## A333354.P11252120898296848690

`A135661(A000040(n+1)*A354706(2*n+1))`
-/

namespace A333354.P11252120898296848690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A000040 (n + 1) * A354706 (2 * n + 1)).toNat

end

end A333354.P11252120898296848690

/-! ## A333354.P14558552878801272582

`A332416(A001840(2*n+1))-A325765(3*n)`
-/

namespace A333354.P14558552878801272582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332416 (A001840 (2 * n + 1)).toNat - A325765 (3 * n)

end

end A333354.P14558552878801272582

/-!
# A333355: Number of bits in binary expansion of n minus the number of digits of n when written in base 3.

The programs for A333355, the canonical program `A333355.P11784609538395250902` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333355 has offset 1).

The definition of A333355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333355.P11784609538395250902

`A000523(n+1)-A062153(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A333355

/-- `A000523(n+1)-A062153(n+1)` -/
def P11784609538395250902.Spec : Prop :=
  ∀ n, P11784609538395250902.a n = A333355 (n + 1)

theorem P11784609538395250902.correct : P11784609538395250902.Spec := by
  intro n
  simp only [A333355, Nat.add_sub_cancel]

end A333355

/-! ## A333355.P14253628972964983180

`∑[char[2^n-1]-char[3^n-1]]`
-/

namespace A333355.P14253628972964983180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333355.P14253628972964983180

namespace A333355

/-- `∑[char[2^n-1]-char[3^n-1]]` -/
def P14253628972964983180.Spec : Prop :=
  ∀ n, P14253628972964983180.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P15718378533482263076

`val(A342766(n+1), 2)`
-/

namespace A333355.P15718378533482263076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A342766 (n + 1)).toNat 2

end

end A333355.P15718378533482263076

namespace A333355

/-- `val(A342766(n+1), 2)` -/
def P15718378533482263076.Spec : Prop :=
  ∀ n, (P15718378533482263076.a n : ℤ) = A333355 (n + 1)

end A333355

/-! ## A333355.P1891802144363527020

`Δ[A083652(n)]-∑[A225569(n)]`
-/

namespace A333355.P1891802144363527020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A333355.P1891802144363527020

namespace A333355

/-- `Δ[A083652(n)]-∑[A225569(n)]` -/
def P1891802144363527020.Spec : Prop :=
  ∀ n, P1891802144363527020.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P7136352372488023508

`A000523(n+1)+1-A081604(n+1)`
-/

namespace A333355.P7136352372488023508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + 1 - A081604 (n + 1)

end

end A333355.P7136352372488023508

namespace A333355

/-- `A000523(n+1)+1-A081604(n+1)` -/
def P7136352372488023508.Spec : Prop :=
  ∀ n, P7136352372488023508.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P4228294734290879511

`A000523(n+1)-∑[char[2*A052993(n)]]`
-/

namespace A333355.P4228294734290879511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052993 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A333355.P4228294734290879511

namespace A333355

/-- `A000523(n+1)-∑[char[2*A052993(n)]]` -/
def P4228294734290879511.Spec : Prop :=
  ∀ n, P4228294734290879511.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P11564130638720954989

`A069924(n+1)-A069924(A004523(n)+1)`
-/

namespace A333355.P11564130638720954989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069924 (n + 1) - A069924 (A004523 n + 1).toNat

end

end A333355.P11564130638720954989

namespace A333355

/-- `A069924(n+1)-A069924(A004523(n)+1)` -/
def P11564130638720954989.Spec : Prop :=
  ∀ n, P11564130638720954989.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P7262770541947417697

`A083652(n+1)-(A083652(n)+A081604(n+1))`
-/

namespace A333355.P7262770541947417697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 (n + 1) - (A083652 n + A081604 (n + 1))

end

end A333355.P7262770541947417697

namespace A333355

/-- `A083652(n+1)-(A083652(n)+A081604(n+1))` -/
def P7262770541947417697.Spec : Prop :=
  ∀ n, P7262770541947417697.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P6828850082911953296

`A000523(n+1)+A329199(n+1)-A329194(n+1)`
-/

namespace A333355.P6828850082911953296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A329199 (n + 1) - A329194 (n + 1))

end

end A333355.P6828850082911953296

namespace A333355

/-- `A000523(n+1)+A329199(n+1)-A329194(n+1)` -/
def P6828850082911953296.Spec : Prop :=
  ∀ n, P6828850082911953296.a n = A333355 (n + 1)

theorem P6828850082911953296.correct : P6828850082911953296.Spec := by
  intro n
  simp only [A333355, Nat.add_sub_cancel, A333355.P6828850082911953296.a, A333355.P11784609538395250902.a, A000523, A000523.P3314682526375882520.a, A062153, A062153.P7840962928244100057.a, A329194, A329194.P3650680996998334854.a, A329199, A329199.P13472642438074930869.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333355

/-! ## A333355.P18413343090170117536

`A070939(n+1)-A081604(n+1)`
-/

namespace A333355.P18413343090170117536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A081604 (n + 1)

end

end A333355.P18413343090170117536

namespace A333355

/-- `A070939(n+1)-A081604(n+1)` -/
def P18413343090170117536.Spec : Prop :=
  ∀ n, P18413343090170117536.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P15959541879387547560

`A029837(n+2)-A081604(n+1)`
-/

namespace A333355.P15959541879387547560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 2) - A081604 (n + 1)

end

end A333355.P15959541879387547560

namespace A333355

/-- `A029837(n+2)-A081604(n+1)` -/
def P15959541879387547560.Spec : Prop :=
  ∀ n, P15959541879387547560.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P9447425309808031053

`A029837(n+2)-A080342(n+2)`
-/

namespace A333355.P9447425309808031053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 2) - A080342 (n + 2)

end

end A333355.P9447425309808031053

namespace A333355

/-- `A029837(n+2)-A080342(n+2)` -/
def P9447425309808031053.Spec : Prop :=
  ∀ n, P9447425309808031053.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P8737082839074297885

`A070939(n+1)-A070939(A060585(n+1))`
-/

namespace A333355.P8737082839074297885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A070939 (A060585 (n + 1)).toNat

end

end A333355.P8737082839074297885

namespace A333355

/-- `A070939(n+1)-A070939(A060585(n+1))` -/
def P8737082839074297885.Spec : Prop :=
  ∀ n, P8737082839074297885.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P3420232074748521454

`A081604(A005836(n+2))-A081604(n+1)`
-/

namespace A333355.P3420232074748521454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A005836 (n + 2)).toNat - A081604 (n + 1)

end

end A333355.P3420232074748521454

namespace A333355

/-- `A081604(A005836(n+2))-A081604(n+1)` -/
def P3420232074748521454.Spec : Prop :=
  ∀ n, P3420232074748521454.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P4697699561366309432

`A081604(∑[A002487(2*n+1)])-A081604(n+1)`
-/

namespace A333355.P4697699561366309432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A081604 (n + 1)

end

end A333355.P4697699561366309432

namespace A333355

/-- `A081604(∑[A002487(2*n+1)])-A081604(n+1)` -/
def P4697699561366309432.Spec : Prop :=
  ∀ n, P4697699561366309432.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P10335526703234589261

`A081604(A032924(2*n+1))-A081604(n+1)`
-/

namespace A333355.P10335526703234589261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A032924 (2 * n + 1)).toNat - A081604 (n + 1)

end

end A333355.P10335526703234589261

namespace A333355

/-- `A081604(A032924(2*n+1))-A081604(n+1)` -/
def P10335526703234589261.Spec : Prop :=
  ∀ n, P10335526703234589261.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P8609650187843399746

`A062977(A385553(n+1))`
-/

namespace A333355.P8609650187843399746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A385553 (n + 1)).toNat

end

end A333355.P8609650187843399746

namespace A333355

/-- `A062977(A385553(n+1))` -/
def P8609650187843399746.Spec : Prop :=
  ∀ n, P8609650187843399746.a n = A333355 (n + 1)

end A333355

/-! ## A333355.P12137686633578281698

`A000120(A088697(n+1))-A081604(n+1)`
-/

namespace A333355.P12137686633578281698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A088697 (n + 1)).toNat - A081604 (n + 1)

end

end A333355.P12137686633578281698

namespace A333355

/-- `A000120(A088697(n+1))-A081604(n+1)` -/
def P12137686633578281698.Spec : Prop :=
  ∀ n, P12137686633578281698.a n = A333355 (n + 1)

end A333355

/-!
# A333357: Integers that cannot be expressed as the ratio of 2 Fibonacci numbers.

The programs for A333357, the canonical program `A333357.P13297053389099279185` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333357 has offset 1).

The definition of A333357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333357.P3948959095463522523

`comp[A214987(n+1)-1]+1`
-/

namespace A333357.P3948959095463522523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214987 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A333357.P3948959095463522523

namespace A333357

/-- `comp[A214987(n+1)-1]+1` -/
def P3948959095463522523.Spec : Prop :=
  ∀ n, (P3948959095463522523.a n : ℤ) = A333357 (n + 1)

end A333357

/-! ## A333357.P13297053389099279185

`comp[A028412(n)*A057427(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A333357

/-- `comp[A028412(n)*A057427(n)]` -/
def P13297053389099279185.Spec : Prop :=
  ∀ n, (P13297053389099279185.a n : ℤ) = A333357 (n + 1)

theorem P13297053389099279185.correct : P13297053389099279185.Spec := by
  intro n
  simp only [A333357, Nat.add_sub_cancel]

end A333357

/-! ## A333357.P9853046901343615042

`comp[A028412(n)%A000032(n)]`
-/

namespace A333357.P9853046901343615042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028412 n) (A000032 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333357.P9853046901343615042

namespace A333357

/-- `comp[A028412(n)%A000032(n)]` -/
def P9853046901343615042.Spec : Prop :=
  ∀ n, (P9853046901343615042.a n : ℤ) = A333357 (n + 1)

end A333357

/-! ## A333357.P1923246349786139666

`comp[A214987(n+1)%A028412(n)]`
-/

namespace A333357.P1923246349786139666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214987 (n + 1)) (A028412 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333357.P1923246349786139666

namespace A333357

/-- `comp[A214987(n+1)%A028412(n)]` -/
def P1923246349786139666.Spec : Prop :=
  ∀ n, (P1923246349786139666.a n : ℤ) = A333357 (n + 1)

end A333357

/-! ## A333357.P16523482452708421916

`eq[char[A028412(n)], A000007(n)]`
-/

namespace A333357.P16523482452708421916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A333357.P16523482452708421916

namespace A333357

/-- `eq[char[A028412(n)], A000007(n)]` -/
def P16523482452708421916.Spec : Prop :=
  ∀ n, (P16523482452708421916.a n : ℤ) = A333357 (n + 1)

end A333357

/-! ## A333357.P5132856373307264359

`eq[char[A028412(n)], A000038(n)]`
-/

namespace A333357.P5132856373307264359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A333357.P5132856373307264359

namespace A333357

/-- `eq[char[A028412(n)], A000038(n)]` -/
def P5132856373307264359.Spec : Prop :=
  ∀ n, (P5132856373307264359.a n : ℤ) = A333357 (n + 1)

end A333357

/-! ## A333357.P11668802503094292679

`eq[char[A031121(n+1)], A000007(n)]`
-/

namespace A333357.P11668802503094292679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031121 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A333357.P11668802503094292679

namespace A333357

/-- `eq[char[A031121(n+1)], A000007(n)]` -/
def P11668802503094292679.Spec : Prop :=
  ∀ n, (P11668802503094292679.a n : ℤ) = A333357 (n + 1)

end A333357

/-! ## A333357.P6614880541167908250

`eq[char[A214978(n+1)], A000007(n)]`
-/

namespace A333357.P6614880541167908250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214978 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A333357.P6614880541167908250

namespace A333357

/-- `eq[char[A214978(n+1)], A000007(n)]` -/
def P6614880541167908250.Spec : Prop :=
  ∀ n, (P6614880541167908250.a n : ℤ) = A333357 (n + 1)

end A333357

/-! ## A333357.P17453268416166742777

`lt[A016777(n*char[A028412(n)]), n]`
-/

namespace A333357.P17453268416166742777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A333357.P17453268416166742777

namespace A333357

/-- `lt[A016777(n*char[A028412(n)]), n]` -/
def P17453268416166742777.Spec : Prop :=
  ∀ n, (P17453268416166742777.a n : ℤ) = A333357 (n + 1)

end A333357

/-! ## A333357.P13991775797064806898

`lt[char[A028412(n)], n/A016777(n)]`
-/

namespace A333357.P13991775797064806898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A016777 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A333357.P13991775797064806898

namespace A333357

/-- `lt[char[A028412(n)], n/A016777(n)]` -/
def P13991775797064806898.Spec : Prop :=
  ∀ n, (P13991775797064806898.a n : ℤ) = A333357 (n + 1)

end A333357

/-! ## A333357.P4775004181515543349

`lt[char[A028412(n)], n/A020714(n)]`
-/

namespace A333357.P4775004181515543349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A020714 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A333357.P4775004181515543349

namespace A333357

/-- `lt[char[A028412(n)], n/A020714(n)]` -/
def P4775004181515543349.Spec : Prop :=
  ∀ n, (P4775004181515543349.a n : ℤ) = A333357 (n + 1)

end A333357

/-!
# A333361: Array read by antidiagonals: T(n,k) is the number of directed loopless multigraphs with n arcs and k vertices.

The programs for A333361, there is no canonical definition to state claims against.
-/

/-! ## A333361.P1151114708784304099

`A008624(A008624(A194794(n+1))%A046970(n+1))`
-/

namespace A333361.P1151114708784304099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.tmod (A008624 (A194794 (n + 1)).toNat) (A046970 (n + 1))).toNat

end

end A333361.P1151114708784304099

/-! ## A333361.P8001860626254999317

`A287698(A293808(n))%A211798(n+1)`
-/

namespace A333361.P8001860626254999317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287698 (A293808 n).toNat) (A211798 (n + 1))

end

end A333361.P8001860626254999317

/-! ## A333361.P2138384677505718626

`A027633(A333213(n)%A334508(2*n+3))`
-/

namespace A333361.P2138384677505718626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 (Int.tmod (A333213 n) (A334508 (2 * n + 3))).toNat

end

end A333361.P2138384677505718626

/-! ## A333361.P18176226879971694936

`A151824(A293808(n)+A001222(A146985(n)))`
-/

namespace A333361.P18176226879971694936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151824 (A293808 n + A001222 (A146985 n).toNat).toNat

end

end A333361.P18176226879971694936

/-! ## A333361.P1459736429788393070

`gcd(A000523(A121412(n)), A238343(n))`
-/

namespace A333361.P1459736429788393070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000523 (A121412 n).toNat) (A238343 n)

end

end A333361.P1459736429788393070

/-!
# A333362: Number of free polysticks with n segments on the edges of the n-cube.

The programs for A333362, there is no canonical definition to state claims against.
-/

/-! ## A333362.P4889713152242378656

`A331956(2*n+1)+n!`
-/

namespace A333362.P4889713152242378656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331956 (2 * n + 1) + (Nat.factorial n : ℤ)

end

end A333362.P4889713152242378656

/-! ## A333362.P3774794721285417965

`A031218(or(floor(n/2)!², n!))`
-/

namespace A333362.P3774794721285417965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (Nat.lor (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2) (Nat.factorial n))

end

end A333362.P3774794721285417965

/-! ## A333362.P2771626365623416492

`xor(n!, A006923((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A333362.P2771626365623416492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial n : ℤ) (A006923 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat)

end

end A333362.P2771626365623416492

/-!
# A333363: Horizontal visibility sequence at the onset of chaos in the 3-period cascade.

The programs for A333363, the canonical program `A333363.P17407315961805387594` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333363 has offset 1).

The definition of A333363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333363.P17407315961805387594

`A059126(record[xor(3, n)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A333363

/-- `A059126(record[xor(3, n)])` -/
def P17407315961805387594.Spec : Prop :=
  ∀ n, P17407315961805387594.a n = A333363 (n + 1)

theorem P17407315961805387594.correct : P17407315961805387594.Spec := by
  intro n
  simp only [A333363, Nat.add_sub_cancel]

end A333363

/-! ## A333363.P2255469141044230372

`A059126(4*n+3)`
-/

namespace A333363.P2255469141044230372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (4 * n + 3)

end

end A333363.P2255469141044230372

namespace A333363

/-- `A059126(4*n+3)` -/
def P2255469141044230372.Spec : Prop :=
  ∀ n, P2255469141044230372.a n = A333363 (n + 1)

end A333363

/-! ## A333363.P15388498204568578891

`or(A000007(n), A059126(A004767(n)))`
-/

namespace A333363.P15388498204568578891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A059126 (A004767 n).toNat)

end

end A333363.P15388498204568578891

namespace A333363

/-- `or(A000007(n), A059126(A004767(n)))` -/
def P15388498204568578891.Spec : Prop :=
  ∀ n, P15388498204568578891.a n = A333363 (n + 1)

end A333363

/-! ## A333363.P6821157893105488605

`ceil(A059136(4*(n+1)-1)/6)`
-/

namespace A333363.P6821157893105488605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059136 (4 * (n + 1) - 1) : ℚ) / 6⌉

end

end A333363.P6821157893105488605

namespace A333363

/-- `ceil(A059136(4*(n+1)-1)/6)` -/
def P6821157893105488605.Spec : Prop :=
  ∀ n, P6821157893105488605.a n = A333363 (n + 1)

end A333363

/-! ## A333363.P11003843110704920388

`log2(A059146(3*(n+1)+n))+1`
-/

namespace A333363.P11003843110704920388
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059146 (3 * (n + 1) + n) : ℝ) + 1

end

end A333363.P11003843110704920388

namespace A333363

/-- `log2(A059146(3*(n+1)+n))+1` -/
def P11003843110704920388.Spec : Prop :=
  ∀ n, P11003843110704920388.a n = (A333363 (n + 1) : ℝ)

end A333363

/-! ## A333363.P14649137266144025692

`A001511(A266287(comp[4*n]))+1`
-/

namespace A333363.P14649137266144025692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A266287 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat + 1

end

end A333363.P14649137266144025692

namespace A333363

/-- `A001511(A266287(comp[4*n]))+1` -/
def P14649137266144025692.Spec : Prop :=
  ∀ n, P14649137266144025692.a n = A333363 (n + 1)

end A333363

/-!
# A333364: Indices of primes p whose order of primeness A078442(p) is prime.

The programs for A333364, there is no canonical definition to state claims against.
-/

/-! ## A333364.P10263223512890606631

`A000720(A333353(n+1))`
-/

namespace A333364.P10263223512890606631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A333353 (n + 1)).toNat

end

end A333364.P10263223512890606631

/-! ## A333364.P10213909654186013268

`A061395(or(1, A333353(n+1)))`
-/

namespace A333364.P10213909654186013268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A333353 (n + 1))).toNat

end

end A333364.P10213909654186013268

/-! ## A333364.P15413421790351211808

`∑{d}[A333353(n+1), A061395(#)]`
-/

namespace A333364.P15413421790351211808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A333364.P15413421790351211808

/-! ## A333364.P9927821561215535032

`A061395(2*A333353(n+1))`
-/

namespace A333364.P9927821561215535032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A333353 (n + 1)).toNat

end

end A333364.P9927821561215535032

/-! ## A333364.P17691647760407791897

`A058933(A333353(n+1))%A154612(n)`
-/

namespace A333364.P17691647760407791897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058933 (A333353 (n + 1)).toNat) (A154612 n)

end

end A333364.P17691647760407791897

/-! ## A333364.P9146192412347779268

`A058933(A333353(n+1)%A142028(n+1))`
-/

namespace A333364.P9146192412347779268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (Int.tmod (A333353 (n + 1)) (A142028 (n + 1))).toNat

end

end A333364.P9146192412347779268

/-! ## A333364.P8163487525192698850

`A058933(2*A333353(n+1)-A333353(n+1))`
-/

namespace A333364.P8163487525192698850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A333353 (n + 1) - A333353 (n + 1)).toNat

end

end A333364.P8163487525192698850

/-! ## A333364.P17184083766029669687

`A230980(A333353(n+1)+1)`
-/

namespace A333364.P17184083766029669687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A333353 (n + 1) + 1).toNat

end

end A333364.P17184083766029669687

/-! ## A333364.P11421555876630708657

`A036234(A333353(n+1)-1)`
-/

namespace A333364.P11421555876630708657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A333353 (n + 1) - 1).toNat

end

end A333364.P11421555876630708657

/-! ## A333364.P6476682451852664004

`A263323(or(1, A333353(n+1)))`
-/

namespace A333364.P6476682451852664004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (Int.lor 1 (A333353 (n + 1))).toNat

end

end A333364.P6476682451852664004

/-! ## A333364.P11504109435177381478

`A036234(xor(1, A333353(n+1)))`
-/

namespace A333364.P11504109435177381478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Int.xor 1 (A333353 (n + 1))).toNat

end

end A333364.P11504109435177381478

/-! ## A333364.P15453073705896187894

`∑{d}[A333353(n+1), A263323(#)]`
-/

namespace A333364.P15453073705896187894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A263323 d

end

end A333364.P15453073705896187894

/-! ## A333364.P2645207447409840633

`A056239(A333353(n+1)%A041520(n))`
-/

namespace A333364.P2645207447409840633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A333353 (n + 1)) (A041520 n)).toNat

end

end A333364.P2645207447409840633

/-! ## A333364.P8658428707416944877

`A056239(A333353(n+1))%A135659(n)`
-/

namespace A333364.P8658428707416944877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A333353 (n + 1)).toNat) (A135659 n)

end

end A333364.P8658428707416944877

/-!
# A333365: T(n,k) is the number of times that prime(k) is the least part in a partition of n into prime parts; triangle T(n,k), n >= 0, 1 <= k <= max(1,A000720(A331634(n))), read by rows.

The programs for A333365, there is no canonical definition to state claims against.
-/

/-! ## A333365.P1753750074062883018

`A275949(A209237(n))+A275947(n)`
-/

namespace A333365.P1753750074062883018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 (A209237 n).toNat + A275947 n

end

end A333365.P1753750074062883018

/-! ## A333365.P10146028475273041461

`A275949(A209237(n))+A056170(A275734(n))`
-/

namespace A333365.P10146028475273041461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 (A209237 n).toNat + A056170 (A275734 n).toNat

end

end A333365.P10146028475273041461

/-! ## A333365.P14433526331488518619

`and(A002217(A241723(n)), A249739(n+1))`
-/

namespace A333365.P14433526331488518619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002217 (A241723 (n + 15)).toNat) (A249739 (n + 1))

end

end A333365.P14433526331488518619

/-! ## A333365.P224274251501046562

`A359326(A306915(n+3)*A325861(n))`
-/

namespace A333365.P224274251501046562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (A306915 (n + 3) * A325861 n).toNat

end

end A333365.P224274251501046562

/-! ## A333365.P13696212082312639005

`A063962(A352833(2*n)+A233098(n+1))`
-/

namespace A333365.P13696212082312639005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A352833 (2 * n) + A233098 (n + 1)).toNat

end

end A333365.P13696212082312639005

/-!
# A333368: Primes of the form k*m^(k*m) - 1 with m > 1.

The programs for A333368, there is no canonical definition to state claims against.
-/

/-! ## A333368.P570808326498749639

`p?[or(abs(1-n*4^n), floor(5^n/4))]`
-/

namespace A333368.P570808326498749639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |1 - (n * 4 ^ n : ℤ)| ⌊(5 ^ n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333368.P570808326498749639

/-! ## A333368.P11369055081685141771

`p?[∪[A267886(3*n+2), A060416(n)]]`
-/

namespace A333368.P11369055081685141771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267886 (3 * n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060416 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A333368.P11369055081685141771

/-!
# A333369: Positive integers in which any odd digit, if present, occurs an odd number of times, and any even digit, if present, occurs an even number of times.

The programs for A333369, there is no canonical definition to state claims against.
-/

/-! ## A333369.P5794945621864419629

`eq[A065031(n), A065031(A139337(n))]`
-/

namespace A333369.P5794945621864419629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333369.P5794945621864419629

/-! ## A333369.P2662295351872488043

`eq[A103181(n), A103181(A139337(n))]`
-/

namespace A333369.P2662295351872488043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333369.P2662295351872488043

/-! ## A333369.P6944395169245952206

`lt[A103181(A139337(n)+A103181(n)), 1]`
-/

namespace A333369.P6944395169245952206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A139337 n + A103181 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333369.P6944395169245952206

/-! ## A333369.P233174354990017854

`eq[A059841(A061205(n)), A107846(n)]`
-/

namespace A333369.P233174354990017854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A061205 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333369.P233174354990017854

/-! ## A333369.P10849489696323822234

`eq[A000035(A061205(n)), A178788(n)]`
-/

namespace A333369.P10849489696323822234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A061205 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333369.P10849489696323822234

/-!
# A333370: Convolution of primorial numbers (A002110) with themselves.

The programs for A333370, there is no canonical definition to state claims against.
-/

/-! ## A333370.P8477553906014760517

`n*A029900(a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A333370.P8477553906014760517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n : ℤ) * A029900 (a (n - 1)).toNat

end

end A333370.P8477553906014760517

/-!
# A333371: Exponential convolution of primorial numbers (A002110) with themselves.

The programs for A333371, there is no canonical definition to state claims against.
-/

/-! ## A333371.P11228923790697878558

`A310094(A105625(n))-2`
-/

namespace A333371.P11228923790697878558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310094 (A105625 n).toNat - 2

end

end A333371.P11228923790697878558

/-!
# A333372: a(n) = prime(n)# - Sum_{k=1..n-1} prime(k)# * a(n-k), where prime()# = A002110.

The programs for A333372, there is no canonical definition to state claims against.
-/

/-! ## A333372.P1082164498203580247

`abs(A354359(2^n))`
-/

namespace A333372.P1082164498203580247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354359 (2 ^ n)|

end

end A333372.P1082164498203580247

/-! ## A333372.P16676087919091359828

`A000038(n)-A354359(A000079(n))`
-/

namespace A333372.P16676087919091359828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A354359 (A000079 n).toNat

end

end A333372.P16676087919091359828

/-! ## A333372.P2007131544179648078

`gcd(A294929(n+1), A354359(A000079(n)))`
-/

namespace A333372.P2007131544179648078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A294929 (n + 1)) (A354359 (A000079 n).toNat)

end

end A333372.P2007131544179648078

/-! ## A333372.P6761517579615855968

`lcm(A238744(n+2), A354359(A000079(n)))`
-/

namespace A333372.P6761517579615855968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A238744 (n + 2)) (A354359 (A000079 n).toNat)

end

end A333372.P6761517579615855968

/-! ## A333372.P15688626645858314865

`lcm(A075180(2*(n+2)), A354359(A011782(n+1)))`
-/

namespace A333372.P15688626645858314865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075180 (2 * (n + 2))) (A354359 (A011782 (n + 1)).toNat)

end

end A333372.P15688626645858314865

/-!
# A333373: a(n) = n + 1 for n <= 1; thereafter a(n) = a(n-1) * prime(gpf(a(n-1))).

The programs for A333373, the canonical program `A333373.P11918977026582534457` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333373 has offset 0).

The definition of A333373 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333373.P11918977026582534457

`a(n-1)*A000040(A006530(a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A333373

/-- `a(n-1)*A000040(A006530(a(n-1)))` -/
def P11918977026582534457.Spec : Prop :=
  ∀ n, P11918977026582534457.a n = A333373 n

theorem P11918977026582534457.correct : P11918977026582534457.Spec := by
  intro n
  simp only [A333373]

end A333373

/-! ## A333373.P10750214738992564891

`∏[A007097(n)]`
-/

namespace A333373.P10750214738992564891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A333373.P10750214738992564891

namespace A333373

/-- `∏[A007097(n)]` -/
def P10750214738992564891.Spec : Prop :=
  ∀ n, P10750214738992564891.a n = A333373 n

end A333373

/-! ## A333373.P15442331691442213117

`∏[A114537(∑[n]+1)]`
-/

namespace A333373.P15442331691442213117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A333373.P15442331691442213117

namespace A333373

/-- `∏[A114537(∑[n]+1)]` -/
def P15442331691442213117.Spec : Prop :=
  ∀ n, P15442331691442213117.a n = A333373 n

end A333373

/-! ## A333373.P11575562079645937032

`∏[A095938(n+1)-1]`
-/

namespace A333373.P11575562079645937032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095938 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A333373.P11575562079645937032

namespace A333373

/-- `∏[A095938(n+1)-1]` -/
def P11575562079645937032.Spec : Prop :=
  ∀ n, P11575562079645937032.a n = A333373 n

end A333373

/-! ## A333373.P3723620903958289668

`∏[A114538(A018252(n+1))]`
-/

namespace A333373.P3723620903958289668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114538 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A333373.P3723620903958289668

namespace A333373

/-- `∏[A114538(A018252(n+1))]` -/
def P3723620903958289668.Spec : Prop :=
  ∀ n, P3723620903958289668.a n = A333373 n

end A333373

/-!
# A333378: a(n) = F(n) * (-1)^(n*(n-1)/2) where F(n) = A000045(n) Fibonacci numbers.

The programs for A333378, the canonical program `A333378.P10126214152203267435` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333378 has offset 0).

The definition of A333378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333378.P10126214152203267435

`A000045(n)*(-1)^(n*(n-1)/2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A333378

/-- `A000045(n)*(-1)^(n*(n-1)/2)` -/
def P10126214152203267435.Spec : Prop :=
  ∀ n, P10126214152203267435.a n = (A333378 n : ℝ)

end A333378

/-! ## A333378.P12247151834267181447

`ogf((x-x^2+x^3)/(1+3x^2+x^4))`
-/

namespace A333378.P12247151834267181447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 1] [1, 0, 3, 0, 1] n

end

end A333378.P12247151834267181447

namespace A333378

/-- `ogf((x-x^2+x^3)/(1+3x^2+x^4))` -/
def P12247151834267181447.Spec : Prop :=
  ∀ n, P12247151834267181447.a n = A333378 n

end A333378

/-! ## A333378.P13173516842847192549

`(xor(3, n)-n)%2*round(ϕ^n/sqrt(5))`
-/

namespace A333378.P13173516842847192549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.xor 3 n : ℤ) - (n : ℤ)) 2 * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

end

end A333378.P13173516842847192549

namespace A333378

/-- `(xor(3, n)-n)%2*round(ϕ^n/sqrt(5))` -/
def P13173516842847192549.Spec : Prop :=
  ∀ n, P13173516842847192549.a n = A333378 n

end A333378

/-! ## A333378.P5880918766558839235

`(-1)^(n+1)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A333378.P5880918766558839235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (-1) ^ (n + 1) * a (n - 1) - a (n - 2)

end

end A333378.P5880918766558839235

namespace A333378

/-- `(-1)^(n+1)*a(n-1)-a(n-2)` -/
def P5880918766558839235.Spec : Prop :=
  ∀ n, P5880918766558839235.a n = A333378 n

end A333378

/-! ## A333378.P6469513224523441479

`a(n-1)/(-1)^(n+1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A333378.P6469513224523441479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / ((-1) ^ (n + 1) : ℚ) - a (n - 2)

end

end A333378.P6469513224523441479

namespace A333378

/-- `a(n-1)/(-1)^(n+1)-a(n-2)` -/
def P6469513224523441479.Spec : Prop :=
  ∀ n, P6469513224523441479.a n = (A333378 n : ℚ)

end A333378

/-! ## A333378.P15266904957573350537

`(1-and(2, n))*A000045(n)`
-/

namespace A333378.P15266904957573350537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A000045 n

end

end A333378.P15266904957573350537

namespace A333378

/-- `(1-and(2, n))*A000045(n)` -/
def P15266904957573350537.Spec : Prop :=
  ∀ n, P15266904957573350537.a n = A333378 n

end A333378

/-! ## A333378.P17710522241728223200

`Δ[A000045(n+1)]/(1-and(2, n))`
-/

namespace A333378.P17710522241728223200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

end

end A333378.P17710522241728223200

namespace A333378

/-- `Δ[A000045(n+1)]/(1-and(2, n))` -/
def P17710522241728223200.Spec : Prop :=
  ∀ n, P17710522241728223200.a n = (A333378 n : ℚ)

end A333378

/-! ## A333378.P10779353315150040377

`A000045(char[1]+n)/(1-and(2, n))`
-/

namespace A333378.P10779353315150040377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

end

end A333378.P10779353315150040377

namespace A333378

/-- `A000045(char[1]+n)/(1-and(2, n))` -/
def P10779353315150040377.Spec : Prop :=
  ∀ n, P10779353315150040377.a n = (A333378 n : ℚ)

end A333378

/-! ## A333378.P6141277009797387458

`(or(2, n)-(n+1))*Δ[A000071(n+1)]`
-/

namespace A333378.P6141277009797387458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 n : ℤ) - (n + 1 : ℤ)) * (f1 (n + 1) - f1 n)

end

end A333378.P6141277009797387458

namespace A333378

/-- `(or(2, n)-(n+1))*Δ[A000071(n+1)]` -/
def P6141277009797387458.Spec : Prop :=
  ∀ n, P6141277009797387458.a n = A333378 n

end A333378

/-! ## A333378.P16767191728462687679

`A057077(n)*A212804(n+1)`
-/

namespace A333378.P16767191728462687679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A212804 (n + 1)

end

end A333378.P16767191728462687679

namespace A333378

/-- `A057077(n)*A212804(n+1)` -/
def P16767191728462687679.Spec : Prop :=
  ∀ n, P16767191728462687679.a n = A333378 n

end A333378

/-! ## A333378.P16403792453381563922

`(A001611(n)-1)*A057077(n)`
-/

namespace A333378.P16403792453381563922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A057077 n

end

end A333378.P16403792453381563922

namespace A333378

/-- `(A001611(n)-1)*A057077(n)` -/
def P16403792453381563922.Spec : Prop :=
  ∀ n, P16403792453381563922.a n = A333378 n

end A333378

/-! ## A333378.P3158613883973042180

`A057077(n)*A103609(2*n)`
-/

namespace A333378.P3158613883973042180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A103609 (2 * n)

end

end A333378.P3158613883973042180

namespace A333378

/-- `A057077(n)*A103609(2*n)` -/
def P3158613883973042180.Spec : Prop :=
  ∀ n, P3158613883973042180.a n = A333378 n

end A333378

/-! ## A333378.P13487840315050304682

`(A056594(n)-A056594(n+1))*A000045(n)`
-/

namespace A333378.P13487840315050304682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 n - A056594 (n + 1)) * A000045 n

end

end A333378.P13487840315050304682

namespace A333378

/-- `(A056594(n)-A056594(n+1))*A000045(n)` -/
def P13487840315050304682.Spec : Prop :=
  ∀ n, P13487840315050304682.a n = A333378 n

end A333378

/-! ## A333378.P3969848916272412994

`(A236144(n)-A000045(n+1))*A000045(n)`
-/

namespace A333378.P3969848916272412994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236144 n - A000045 (n + 1)) * A000045 n

end

end A333378.P3969848916272412994

namespace A333378

/-- `(A236144(n)-A000045(n+1))*A000045(n)` -/
def P3969848916272412994.Spec : Prop :=
  ∀ n, P3969848916272412994.a n = A333378 n

end A333378

/-!
# A333379: Numbers k such that the k-th composition in standard order is weakly increasing and covers an initial interval of positive integers.

The programs for A333379, there is no canonical definition to state claims against.
-/

/-! ## A333379.P14508841331224461234

`record[A375126(A333217(n+1))]`
-/

namespace A333379.P14508841331224461234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375126 (A333217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333379.P14508841331224461234

/-! ## A333379.P15550748649903396571

`∩[eq[0, A124761(n)], A333217(n+1)]`
-/

namespace A333379.P15550748649903396571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A333379.P15550748649903396571

/-! ## A333379.P2118797595060570156

`eq[A082345(A373948(n)), A373948(n)]`
-/

namespace A333379.P2118797595060570156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082345 (A373948 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333379.P2118797595060570156

/-! ## A333379.P11582595753984365798

`eq[A333766(n)^A333940(n), A124765(n)]`
-/

namespace A333379.P11582595753984365798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333766 n : ℚ) ^ (A333940 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A333379.P11582595753984365798

/-! ## A333379.P13491133406203259879

`eq[A160418(n+1), A182285(n+1)]`
-/

namespace A333379.P13491133406203259879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333379.P13491133406203259879

/-!
# A333380: Numbers k such that the k-th composition in standard order is weakly decreasing and covers an initial interval of positive integers.

The programs for A333380, there is no canonical definition to state claims against.
-/

/-! ## A333380.P9472375903768856471

`∩[A333217(n+1), A114994(n)]`
-/

namespace A333380.P9472375903768856471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333380.P9472375903768856471

/-! ## A333380.P8694258261441838730

`∩[eq[0, A124760(n)], A333217(n+1)]`
-/

namespace A333380.P8694258261441838730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A333380.P8694258261441838730

/-! ## A333380.P15997880877872905310

`∩[A333217(n+1), lt[A124765(n), 2]]`
-/

namespace A333380.P15997880877872905310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A333380.P15997880877872905310

/-! ## A333380.P16336160218353943169

`∩[eq[1, A124765(2*n+1)], A333217(n+1)]`
-/

namespace A333380.P16336160218353943169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A333380.P16336160218353943169

/-! ## A333380.P6352281332967885616

`eq[0, A328480(A057335(n))]`
-/

namespace A333380.P6352281332967885616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328480 (A057335 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333380.P6352281332967885616

/-!
# A333381: Number of maximal anti-runs of the n-th composition in standard order.

The programs for A333381, there is no canonical definition to state claims against.
-/

/-! ## A333381.P4111400152224588246

`ceil(A124762(n)+n/98)`
-/

namespace A333381.P4111400152224588246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124762 n : ℚ) + (n : ℚ) / 98⌉

end

end A333381.P4111400152224588246

/-! ## A333381.P4968078822161195299

`A124762(char[1]+n)-(floor(acot(n))-1)`
-/

namespace A333381.P4968078822161195299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 ((if ∃ j, f1 j = n then 1 else 0) + n) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A333381.P4968078822161195299

/-! ## A333381.P11648946663612338591

`∑[∑{e}[xor(n, -n), 2-#]]-A333382(n)`
-/

namespace A333381.P11648946663612338591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A333382 n

end

end A333381.P11648946663612338591

/-! ## A333381.P3439437991691134294

`(∑[∑{e}[xor(n, -n), 2-#]]-A124767(n)+1)%(n+1)`
-/

namespace A333381.P3439437991691134294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A124767 n + 1) (n + 1 : ℤ)

end

end A333381.P3439437991691134294

/-! ## A333381.P8923295889887314247

`A124762(n)+A057427(n)`
-/

namespace A333381.P8923295889887314247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n + A057427 n

end

end A333381.P8923295889887314247

/-! ## A333381.P4732454076027425956

`A178334(n)+A124762(n)`
-/

namespace A333381.P4732454076027425956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A124762 n

end

end A333381.P4732454076027425956

/-! ## A333381.P14567349332036103

`A124762(n)-A057428(n)`
-/

namespace A333381.P14567349332036103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n - A057428 n

end

end A333381.P14567349332036103

/-! ## A333381.P5474587303749612234

`A124768(n)-A124761(n)`
-/

namespace A333381.P5474587303749612234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 n - A124761 n

end

end A333381.P5474587303749612234

/-! ## A333381.P14546255860439746749

`A124769(n)-A124760(n)`
-/

namespace A333381.P14546255860439746749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n - A124760 n

end

end A333381.P14546255860439746749

/-! ## A333381.P16536716939479188906

`A000120(n)-A333382(n)`
-/

namespace A333381.P16536716939479188906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A333382 n

end

end A333381.P16536716939479188906

/-!
# A333382: Number of adjacent unequal parts in the n-th composition in standard-order.

The programs for A333382, there is no canonical definition to state claims against.
-/

/-! ## A333382.P9666678572134094653

`round(log(A124767(n)!))`
-/

namespace A333382.P9666678572134094653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Nat.factorial (A124767 n).toNat : ℝ))

end

end A333382.P9666678572134094653

/-! ## A333382.P17826712170061485719

`A124767(C(2, n)+n)-1`
-/

namespace A333382.P17826712170061485719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Nat.choose 2 n + n) - 1

end

end A333382.P17826712170061485719

/-! ## A333382.P14503783858921954591

`A124767(gcd(n, C(2, n)))-1`
-/

namespace A333382.P14503783858921954591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Nat.gcd n (Nat.choose 2 n)) - 1

end

end A333382.P14503783858921954591

/-! ## A333382.P9771859687669933046

`A124767(round(acot(n)+n))-1`
-/

namespace A333382.P9771859687669933046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A333382.P9771859687669933046

/-! ## A333382.P12110884701956407900

`A124767(abs(1-n)+1)-1`
-/

namespace A333382.P12110884701956407900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A333382.P12110884701956407900

/-! ## A333382.P9892060166665382210

`11%A124767(A028310(n))`
-/

namespace A333382.P9892060166665382210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A124767 (A028310 n).toNat)

end

end A333382.P9892060166665382210

/-! ## A333382.P9652180794995364530

`A124761(n)+A124760(n)`
-/

namespace A333382.P9652180794995364530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + A124760 n

end

end A333382.P9652180794995364530

/-! ## A333382.P5806214743661907759

`A000120(n)-A333381(n)`
-/

namespace A333382.P5806214743661907759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A333381 n

end

end A333382.P5806214743661907759

/-! ## A333382.P6792005637246561092

`A000007(n)+A124767(n)-1`
-/

namespace A333382.P6792005637246561092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A124767 n - 1)

end

end A333382.P6792005637246561092

/-! ## A333382.P2179524227826005992

`A124760(A145341(n+1))+A124760(n)`
-/

namespace A333382.P2179524227826005992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A145341 (n + 1)).toNat + A124760 n

end

end A333382.P2179524227826005992

/-!
# A333383: First index of weakly increasing prime quartets.

The programs for A333383, there is no canonical definition to state claims against.
-/

/-! ## A333383.P2751752394010469378

`eq[Δ[A051701(n+1)], A051702(n+1)]`
-/

namespace A333383.P2751752394010469378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A333383.P2751752394010469378

/-! ## A333383.P3902112105221467218

`∩[A333230(n+1)-1, A333230(n+1)]`
-/

namespace A333383.P3902112105221467218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333230 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333383.P3902112105221467218

/-! ## A333383.P286404590984904056

`eq[A008578(n+1), A051698(A051701(n+2))]`
-/

namespace A333383.P286404590984904056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A051701 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333383.P286404590984904056

/-! ## A333383.P1510107839418351952

`lt[A051698(A051701(n+2)), A000040(n+1)]`
-/

namespace A333383.P1510107839418351952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A051701 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333383.P1510107839418351952

/-! ## A333383.P822342794088300628

`lt[A051698(A051701(n+2)), A045319(n+1)]`
-/

namespace A333383.P822342794088300628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A051701 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333383.P822342794088300628

/-! ## A333383.P3677831396645541861

`lt[A051698(A051701(n+2)), A078444(n+1)]`
-/

namespace A333383.P3677831396645541861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A051701 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333383.P3677831396645541861

/-! ## A333383.P4624958627214339276

`lt[A051698(A051701(n+2)), A006093(n+2)]`
-/

namespace A333383.P4624958627214339276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A051701 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333383.P4624958627214339276

/-! ## A333383.P11659904509316643924

`lt[A051698(A051701(n+2)), sqrt(A001248(n+1))]`
-/

namespace A333383.P11659904509316643924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A051701 (n + 2)).toNat

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A333383.P11659904509316643924

/-! ## A333383.P5025826455910630587

`lt[A051698(A051701(n+2))², A001248(n+2)]`
-/

namespace A333383.P5025826455910630587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A051701 (n + 2)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333383.P5025826455910630587

/-! ## A333383.P15481809894586772798

`lt[A051698(A051701(n+2)), A008864(n+1)-1]`
-/

namespace A333383.P15481809894586772798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A051701 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333383.P15481809894586772798

/-!
# A333385: a(n) = 3^n + 2 * 17^n for n >= 0.

The programs for A333385, the canonical program `A333385.P428762846120369231` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333385 has offset 0).

The definition of A333385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+2*17^n` (program `A333385.P428762846120369231`, by `A333385.P428762846120369231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A333385.P428762846120369231

`3^n+2*17^n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333385

/-- `3^n+2*17^n` -/
def P428762846120369231.Spec : Prop :=
  ∀ n, (P428762846120369231.a n : ℤ) = A333385 n

theorem P428762846120369231.correct : P428762846120369231.Spec := by
  intro n
  simp only [A333385]

end A333385

/-!
# A333386: Number of solutions to x^y == 0 (mod n) where 0 <= x < n and 1 <= y <= n.

The programs for A333386, there is no canonical definition to state claims against.
-/

/-! ## A333386.P10502628799532677640

`(n+1)²/∏{p}[n+1, #]-A000659((n+1)/∏{p}[n+1, #])`
-/

namespace A333386.P10502628799532677640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - (A000659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A333386.P10502628799532677640

/-! ## A333386.P13130994826812242179

`(n+1)²/∏{p}[n+1, #]-A215797((n+1)/∏{p}[n+1, #])`
-/

namespace A333386.P13130994826812242179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - (A215797 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A333386.P13130994826812242179

/-! ## A333386.P10356316815083755441

`(n+1)²/∏{p}[n+1, #]-A221472((n+1)/∏{p}[n+1, #])`
-/

namespace A333386.P10356316815083755441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - (A221472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A333386.P10356316815083755441

/-! ## A333386.P6751429280153694242

`(n+1)²/∏{p}[n+1, #]-A085342(((n+1)/∏{p}[n+1, #])!)`
-/

namespace A333386.P6751429280153694242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - (A085342 (Nat.factorial (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat) : ℚ)

end

end A333386.P6751429280153694242

/-! ## A333386.P4570762820651840575

`(n+1)²/∏{p}[n+1, #]-A001222(A092143((n+1)/∏{p}[n+1, #]))`
-/

namespace A333386.P4570762820651840575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - (A001222 (A092143 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat).toNat : ℚ)

end

end A333386.P4570762820651840575

/-!
# A333387: Number of solutions to x^y == 1 (mod n) where 0 <= x < n and 1 <= y <= n.

The programs for A333387, there is no canonical definition to state claims against.
-/

/-! ## A333387.P9851111591350575350

`A333389(A133263(n))`
-/

namespace A333387.P9851111591350575350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333389 (A133263 n).toNat

end

end A333387.P9851111591350575350

/-! ## A333387.P13485660190604505073

`A333389(A238531(n+1))`
-/

namespace A333387.P13485660190604505073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333389 (A238531 (n + 1)).toNat

end

end A333387.P13485660190604505073

/-!
# A333388: Number of solutions to x^y == -1 (mod n) where 0 <= x < n and 1 <= y <= n.

The programs for A333388, there is no canonical definition to state claims against.
-/

/-! ## A333388.P15765119345993929066

`A333389(∑[n+1])`
-/

namespace A333388.P15765119345993929066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333389 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333388.P15765119345993929066

/-!
# A333391: Longest side of primitive integer triangles with nonzero rational distances between three vertices and first isogonic center, sorted.

The programs for A333391, there is no canonical definition to state claims against.
-/

/-! ## A333391.P6285825945554604693

`A336328(∑[A165110(2*n)+3])`
-/

namespace A333391.P6285825945554604693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 (2 * n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333391.P6285825945554604693

/-!
# A333392: a(0) = 1; thereafter a(n) = 2^(prime(n)-1) + Sum_{k=1..n} 2^(prime(n)-prime(k)).

The programs for A333392, there is no canonical definition to state claims against.
-/

/-! ## A333392.P6177239967697582230

`A030101(∑[2^lt[∑{e}[n+1, #], 2]])`
-/

namespace A333392.P6177239967697582230
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333392.P6177239967697582230

/-! ## A333392.P11319572576058507315

`A030101(A080355(n+1))`
-/

namespace A333392.P11319572576058507315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A080355 (n + 1)).toNat

end

end A333392.P11319572576058507315

/-! ## A333392.P17716669543503877851

`A325401(A076793(n)+2)`
-/

namespace A333392.P17716669543503877851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A076793 n + 2).toNat

end

end A333392.P17716669543503877851

/-!
# A333393: Primes whose binary representation corresponds to the characteristic function of 1, 2, 3, 5, 7, ... (1 followed by primes).

The programs for A333393, there is no canonical definition to state claims against.
-/

/-! ## A333393.P309539541433783545

`A333392(A097083(n+1)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A333393.P309539541433783545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333392 (A097083 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)).toNat

end

end A333393.P309539541433783545

/-!
# A333394: Total length of all longest runs of 0's in solus bitstrings of length n.

The programs for A333394, there is no canonical definition to state claims against.
-/

/-! ## A333394.P1153737635590797491

`A100196(n*A267589(n))`
-/

namespace A333394.P1153737635590797491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ((n : ℤ) * A267589 n).toNat

end

end A333394.P1153737635590797491

/-! ## A333394.P15070751735669058534

`A100196(2*A113861(n+1))`
-/

namespace A333394.P15070751735669058534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * A113861 (n + 1)).toNat

end

end A333394.P15070751735669058534

/-! ## A333394.P9047323626701757575

`A100196(lcm(2, A113861(n+1)))`
-/

namespace A333394.P9047323626701757575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lcm 2 (A113861 (n + 1)))

end

end A333394.P9047323626701757575

/-! ## A333394.P10782361611399395888

`A100196(A113861(n+1)+A113861(n+1))`
-/

namespace A333394.P10782361611399395888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A113861 (n + 1) + A113861 (n + 1)).toNat

end

end A333394.P10782361611399395888

/-! ## A333394.P1213058861954065288

`∑[A000196(A005056(n)-1)]`
-/

namespace A333394.P1213058861954065288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005056 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333394.P1213058861954065288

/-!
# A333395: Total length of all longest runs of 1's in multus bitstrings of length n.

The programs for A333395, there is no canonical definition to state claims against.
-/

/-! ## A333395.P14650992697737076933

`A060019(A025192(n)+∑[∑[-n]%3]+n)`
-/

namespace A333395.P14650992697737076933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060019 (A025192 n + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))).toNat

end

end A333395.P14650992697737076933

/-! ## A333395.P2614468631863512305

`A060019(A025192(n)+round((2*n-cos(1))/3))`
-/

namespace A333395.P2614468631863512305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060019 (A025192 n + SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.cos (1 : ℝ)) / 3)).toNat

end

end A333395.P2614468631863512305

/-! ## A333395.P14446041854257499974

`A055086(A081038(n))-1`
-/

namespace A333395.P14446041854257499974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A081038 n).toNat - 1

end

end A333395.P14446041854257499974

/-!
# A333396: Total length of all longest runs of 0's in multus bitstrings of length n.

The programs for A333396, there is no canonical definition to state claims against.
-/

/-! ## A333396.P13434582538025376294

`A000006(A384677(n+1))`
-/

namespace A333396.P13434582538025376294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A384677 (n + 1)).toNat

end

end A333396.P13434582538025376294

/-! ## A333396.P3230859754784091191

`∑[A082447(A305442(n)²)]`
-/

namespace A333396.P3230859754784091191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A305442 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333396.P3230859754784091191

/-! ## A333396.P11864078429275415930

`∑[A055086(Δ[A122877(n)])]`
-/

namespace A333396.P11864078429275415930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122877 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333396.P11864078429275415930

/-! ## A333396.P17894942384619319660

`∑[A161205(A321262(2*n))]`
-/

namespace A333396.P17894942384619319660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A321262 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333396.P17894942384619319660

/-! ## A333396.P8716772200111787895

`∑[A082447(Δ[A008937(n)]²)]`
-/

namespace A333396.P8716772200111787895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333396.P8716772200111787895

/-!
# A333397: Array read by antidiagonals: T(n,k) is the number of connected k-regular multigraphs on n unlabeled nodes, loops allowed, n >= 0, k >= 0.

The programs for A333397, there is no canonical definition to state claims against.
-/

/-! ## A333397.P15492777327540614054

`and(Δ[A055570(n)], A169803(n))`
-/

namespace A333397.P15492777327540614054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A169803 n)

end

end A333397.P15492777327540614054

/-! ## A333397.P345357693740373558

`and(A051176(A016814(n)), A169803(n))`
-/

namespace A333397.P345357693740373558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051176 (A016814 n).toNat) (A169803 n)

end

end A333397.P345357693740373558

/-! ## A333397.P1322524306461380594

`and(A091088(A068921(n)), A169803(n))`
-/

namespace A333397.P1322524306461380594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091088 (A068921 n).toNat) (A169803 n)

end

end A333397.P1322524306461380594

/-! ## A333397.P6095164896731919440

`and(A169803(n), A353693(A204675(n)))`
-/

namespace A333397.P6095164896731919440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169803 n) (A353693 (A204675 n).toNat)

end

end A333397.P6095164896731919440

/-! ## A333397.P8388859800536779832

`A051031(n+1)-A186733(n+1)^A000041(n)`
-/

namespace A333397.P8388859800536779832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051031 (n + 1) : ℚ) - (A186733 (n + 1) : ℚ) ^ (A000041 n : ℤ)

end

end A333397.P8388859800536779832

/-!
# A333398: Partial sums of A333400.

The programs for A333398, there is no canonical definition to state claims against.
-/

/-! ## A333398.P14073858883127809108

`∑[A333400(n+1)]`
-/

namespace A333398.P14073858883127809108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333398.P14073858883127809108

