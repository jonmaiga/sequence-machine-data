import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

/-!
# A346800: Number of fixed polyominoes with n cells that have a diagonal axis of symmetry going from lower left to upper right.

The programs for A346800, there is no canonical definition to state claims against.
-/

/-! ## A346800.P12231525849376533807

`2*A006748(n+1)+2*A056878(n+1)+A142886(n+1)`
-/

namespace A346800.P12231525849376533807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006748 (n + 1) + 2 * A056878 (n + 1) + A142886 (n + 1)

end

end A346800.P12231525849376533807

/-! ## A346800.P940786558943555493

`A182645(n+1)-A351191(n+1)`
-/

namespace A346800.P940786558943555493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182645 (n + 1) - A351191 (n + 1)

end

end A346800.P940786558943555493

/-! ## A346800.P2536154852975133061

`2*A056783(n+1)-A151522(n+1)`
-/

namespace A346800.P2536154852975133061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056783 (n + 1) - A151522 (n + 1)

end

end A346800.P2536154852975133061

/-! ## A346800.P1022721628594144546

`A030227(n+1)+A056783(n+1)-A056780(n+1)`
-/

namespace A346800.P1022721628594144546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (n + 1) + (A056783 (n + 1) - A056780 (n + 1))

end

end A346800.P1022721628594144546

/-! ## A346800.P12697017972882053664

`A030227(n+1)+A182645(n+1)-A151525(n+1)`
-/

namespace A346800.P12697017972882053664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (n + 1) + (A182645 (n + 1) - A151525 (n + 1))

end

end A346800.P12697017972882053664

/-! ## A346800.P8483868311569278608

`A182645(n+1)+A182645(n+1)-A001168(n+1)`
-/

namespace A346800.P8483868311569278608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182645 (n + 1) + (A182645 (n + 1) - A001168 (n + 1))

end

end A346800.P8483868311569278608

/-! ## A346800.P15843564456207775290

`A001168(n+1)-A351191(n+1)-A351191(n+1)`
-/

namespace A346800.P15843564456207775290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A351191 (n + 1) - A351191 (n + 1)

end

end A346800.P15843564456207775290

/-! ## A346800.P17540347225768077180

`A182645(n+1)-(A151525(n+1)+A349329(n+1)-A182645(n+1))`
-/

namespace A346800.P17540347225768077180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182645 (n + 1) - (A151525 (n + 1) + (A349329 (n + 1) - A182645 (n + 1)))

end

end A346800.P17540347225768077180

/-!
# A346802: Number of ways to start with set {1,2,...,n} and then repeat (n+1) times: partition each set into subsets.

The programs for A346802, there is no canonical definition to state claims against.
-/

/-! ## A346802.P11952126362648866723

`A144150(A056220(n+1))`
-/

namespace A346802.P11952126362648866723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A056220 (n + 1)).toNat

end

end A346802.P11952126362648866723

/-! ## A346802.P6429815395052493270

`A111672(A106232(n+1))`
-/

namespace A346802.P6429815395052493270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111672 (A106232 (n + 1)).toNat

end

end A346802.P6429815395052493270

/-! ## A346802.P6299724710578502661

`A144150(A001105(n+1)-1)`
-/

namespace A346802.P6299724710578502661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A001105 (n + 1) - 1).toNat

end

end A346802.P6299724710578502661

/-! ## A346802.P14900121405607436145

`A144150(A014105(n+1)-(n+2))`
-/

namespace A346802.P14900121405607436145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A014105 (n + 1) - (n + 2 : ℤ)).toNat

end

end A346802.P14900121405607436145

/-! ## A346802.P17599118382524152243

`A144150(A000217(2*n+1)+n)`
-/

namespace A346802.P17599118382524152243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A346802.P17599118382524152243

/-!
# A346803: Numbers that are the sum of nine squares in ten or more ways.

The programs for A346803, the canonical program `A346803.P15176726163231717935` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346803 has offset 1).

The definition of A346803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346803.P15176726163231717935

`2*a(n-1)-a(n-2)` with `a(0)=63, a(1)=65, a(2)=68, a(3)=71, a(4)=72, a(5)=74, a(6)=75, a(7)=77, a(8)=78`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346803

/-- `2*a(n-1)-a(n-2)` -/
def P15176726163231717935.Spec : Prop :=
  ∀ n, P15176726163231717935.a n = A346803 (n + 1)

theorem P15176726163231717935.correct : P15176726163231717935.Spec := by
  intro n
  simp only [A346803, Nat.add_sub_cancel]

end A346803

/-!
# A346804: Numbers that are the sum of ten squares in five or more ways.

The programs for A346804, there is no canonical definition to state claims against.
-/

/-! ## A346804.P3645659778475512843

`A345483(n+2)+A345490(n+2)-A345492(n+4)`
-/

namespace A346804.P3645659778475512843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345483 (n + 2) + (A345490 (n + 2) - A345492 (n + 4))

end

end A346804.P3645659778475512843

/-!
# A346805: Numbers that are the sum of ten squares in six or more ways.

The programs for A346805, there is no canonical definition to state claims against.
-/

/-! ## A346805.P6040154346152685260

`A346807(n+1)-9`
-/

namespace A346805.P6040154346152685260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346807 (n + 1) - 9

end

end A346805.P6040154346152685260

/-!
# A346806: Numbers that are the sum of ten squares in seven or more ways.

The programs for A346806, there is no canonical definition to state claims against.
-/

/-! ## A346806.P662897426618038143

`A345482(n+4)`
-/

namespace A346806.P662897426618038143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345482 (n + 4)

end

end A346806.P662897426618038143

/-!
# A346807: Numbers that are the sum of ten squares in eight or more ways.

The programs for A346807, there is no canonical definition to state claims against.
-/

/-! ## A346807.P1572343728205487989

`A345505(n+1)+1`
-/

namespace A346807.P1572343728205487989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345505 (n + 1) + 1

end

end A346807.P1572343728205487989

/-!
# A346808: Numbers that are the sum of ten squares in ten or more ways.

The programs for A346808, there is no canonical definition to state claims against.
-/

/-! ## A346808.P6196560377560780607

`A346807(n+2)`
-/

namespace A346808.P6196560377560780607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346807 (n + 2)

end

end A346808.P6196560377560780607

/-!
# A346809: Primes of the form x^2 + y^8.

The programs for A346809, there is no canonical definition to state claims against.
-/

/-! ## A346809.P14853728147121804273

`A055023(∪[A002496(n+1), A256776(n+1)])`
-/

namespace A346809.P14853728147121804273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256776 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055023 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A346809.P14853728147121804273

/-! ## A346809.P9344067128681531971

`p?[n²+1-A288324(n)]`
-/

namespace A346809.P9344067128681531971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) - A288324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346809.P9344067128681531971

/-! ## A346809.P10201808445360530519

`p?[xor(A034495(n+1), A137224(n))]`
-/

namespace A346809.P10201808445360530519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034495 (n + 1)) (A137224 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346809.P10201808445360530519

/-! ## A346809.P7552451195836137237

`p?[A330878(n+1)²-A031285(n)]`
-/

namespace A346809.P7552451195836137237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (n + 1) ^ 2 - A031285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346809.P7552451195836137237

/-!
# A346811: Square array read by antidiagonals upwards in which T(n, k) is the number of essentially different relations from the first proportional segment theorem for n lines, k parallel and n-k intersecting in a common point.

The programs for A346811, there is no canonical definition to state claims against.
-/

/-! ## A346811.P14167720904940125646

`A282243(A215012(n+1))*A299602(n+1)`
-/

namespace A346811.P14167720904940125646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282243 (A215012 (n + 1)).toNat * A299602 (n + 1)

end

end A346811.P14167720904940125646

/-!
# A346812: Positive numbers whose square starts with exactly 2 identical digits.

The programs for A346812, there is no canonical definition to state claims against.
-/

/-! ## A346812.P18135657414194688913

`A123912(n+1)+A102683(A131577(n))`
-/

namespace A346812.P18135657414194688913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123912 (n + 1) + A102683 (A131577 n).toNat

end

end A346812.P18135657414194688913

/-! ## A346812.P14137104972227510389

`A123912(n+1)+∑[A308064(A036256(n))]`
-/

namespace A346812.P14137104972227510389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (A036256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123912 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346812.P14137104972227510389

/-! ## A346812.P7690212295662660832

`A124766(A185264(2*n+1))+A123912(n+1)`
-/

namespace A346812.P7690212295662660832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A185264 (2 * n + 1)).toNat + A123912 (n + 1)

end

end A346812.P7690212295662660832

/-! ## A346812.P10922263341772570561

`A123912(n+1)+A085974(A000051(n))`
-/

namespace A346812.P10922263341772570561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123912 (n + 1) + A085974 (A000051 n).toNat

end

end A346812.P10922263341772570561

/-! ## A346812.P16187451687171666563

`A123912(n+1)+A085974(A000079(n))`
-/

namespace A346812.P16187451687171666563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123912 (n + 1) + A085974 (A000079 n).toNat

end

end A346812.P16187451687171666563

/-!
# A346813: Number of partitions of the (n+3)-multiset {0,0,0,1,2,...,n} into distinct multisets.

The programs for A346813, there is no canonical definition to state claims against.
-/

/-! ## A346813.P11245798123809955767

`A346520(A167614(n+2))`
-/

namespace A346813.P11245798123809955767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167614 (n + 2)).toNat

end

end A346813.P11245798123809955767

/-! ## A346813.P12940908668834960919

`A346520(A052905(n)+8)`
-/

namespace A346813.P12940908668834960919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A052905 n + 8).toNat

end

end A346813.P12940908668834960919

/-! ## A346813.P13703699809474632272

`A346520(A055999(n)+9)`
-/

namespace A346813.P13703699809474632272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A055999 n + 9).toNat

end

end A346813.P13703699809474632272

/-! ## A346813.P16614472166478974944

`A346520(eq[3, A002262(n)])`
-/

namespace A346813.P16614472166478974944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346813.P16614472166478974944

/-! ## A346813.P7928326098294875039

`record[A346520(A000124(n)+2)]`
-/

namespace A346813.P7928326098294875039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000124 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346813.P7928326098294875039

/-! ## A346813.P14930642316859356969

`A346520(A166136(n+2)-3)`
-/

namespace A346813.P14930642316859356969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A166136 (n + 2) - 3).toNat

end

end A346813.P14930642316859356969

/-! ## A346813.P5374352798274992153

`A346520(eq[1, A144328(n+1)-2])`
-/

namespace A346813.P5374352798274992153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346813.P5374352798274992153

/-! ## A346813.P5908474315727990196

`A346520(eq[2, A002260(n+1)-2])`
-/

namespace A346813.P5908474315727990196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346813.P5908474315727990196

/-! ## A346813.P10710198088010206429

`A346520(eq[2, A134868(n+1)-2])`
-/

namespace A346813.P10710198088010206429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346813.P10710198088010206429

/-! ## A346813.P13536617060763509849

`A346520(eq[2, A002260(n+1)/2])`
-/

namespace A346813.P13536617060763509849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A346813.P13536617060763509849

/-!
# A346814: Number of partitions of the (n+4)-multiset {0,0,0,0,1,2,...,n} into distinct multisets.

The programs for A346814, there is no canonical definition to state claims against.
-/

/-! ## A346814.P14528898489856767488

`A169588(n+4)-(A035098(n+2)+A000110(n))`
-/

namespace A346814.P14528898489856767488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169588 (n + 4) - (A035098 (n + 2) + A000110 n)

end

end A346814.P14528898489856767488

/-! ## A346814.P5384163654310576032

`A346520(A155212(n)+12)`
-/

namespace A346814.P5384163654310576032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A155212 n + 12).toNat

end

end A346814.P5384163654310576032

/-! ## A346814.P1681138726278094699

`A346520(eq[4, A002262(n)])`
-/

namespace A346814.P1681138726278094699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346814.P1681138726278094699

/-! ## A346814.P16681234833249200111

`A346520(A167614(n+3)+1)`
-/

namespace A346814.P16681234833249200111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167614 (n + 3) + 1).toNat

end

end A346814.P16681234833249200111

/-! ## A346814.P747794921091385109

`A346520(A167499(n+3)-1)`
-/

namespace A346814.P747794921091385109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167499 (n + 3) - 1).toNat

end

end A346814.P747794921091385109

/-! ## A346814.P7777539114950248681

`A346520(A133263(n+4)+2)`
-/

namespace A346814.P7777539114950248681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A133263 (n + 4) + 2).toNat

end

end A346814.P7777539114950248681

/-! ## A346814.P12618228831448991376

`A346520(A000096(n+3)+5)`
-/

namespace A346814.P12618228831448991376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000096 (n + 3) + 5).toNat

end

end A346814.P12618228831448991376

/-! ## A346814.P4413076104729298481

`A346520(A034856(n+3)+6)`
-/

namespace A346814.P4413076104729298481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A034856 (n + 3) + 6).toNat

end

end A346814.P4413076104729298481

/-! ## A346814.P5876589500095953609

`A346520(A055998(n+2)+7)`
-/

namespace A346814.P5876589500095953609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A055998 (n + 2) + 7).toNat

end

end A346814.P5876589500095953609

/-! ## A346814.P9977026269411719627

`A346520(A052905(n+1)+9)`
-/

namespace A346814.P9977026269411719627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A052905 (n + 1) + 9).toNat

end

end A346814.P9977026269411719627

/-!
# A346815: Number of partitions of the (n+5)-multiset {0,...,0,1,2,...,n} with five 0's into distinct multisets.

The programs for A346815, there is no canonical definition to state claims against.
-/

/-! ## A346815.P9305582508807623727

`A346520(A167499(n+4))`
-/

namespace A346815.P9305582508807623727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167499 (n + 4)).toNat

end

end A346815.P9305582508807623727

/-! ## A346815.P17520372729855089496

`A346520(eq[5, A002262(n)])`
-/

namespace A346815.P17520372729855089496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346815.P17520372729855089496

/-! ## A346815.P12080547683739885125

`A346520(A167614(n+4)+2)`
-/

namespace A346815.P12080547683739885125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167614 (n + 4) + 2).toNat

end

end A346815.P12080547683739885125

/-! ## A346815.P14797675735597180898

`A346520(A052905(n+2)+10)`
-/

namespace A346815.P14797675735597180898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A052905 (n + 2) + 10).toNat

end

end A346815.P14797675735597180898

/-! ## A346815.P7670729240263071151

`A346520(A055999(n+2)+11)`
-/

namespace A346815.P7670729240263071151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A055999 (n + 2) + 11).toNat

end

end A346815.P7670729240263071151

/-! ## A346815.P8649504880847086232

`A346520(eq[6, A002260(n+1)])`
-/

namespace A346815.P8649504880847086232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346815.P8649504880847086232

/-!
# A346816: Number of partitions of the (n+6)-multiset {0,...,0,1,2,...,n} with six 0's into distinct multisets.

The programs for A346816, there is no canonical definition to state claims against.
-/

/-! ## A346816.P4296230374338640366

`A346520(A056119(n)+27)`
-/

namespace A346816.P4296230374338640366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A056119 n + 27).toNat

end

end A346816.P4296230374338640366

/-! ## A346816.P17142613748904933550

`A346520(eq[6, A002262(n)])`
-/

namespace A346816.P17142613748904933550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346816.P17142613748904933550

/-! ## A346816.P15127143823096819400

`A346520(A167487(n+5)-1)`
-/

namespace A346816.P15127143823096819400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167487 (n + 5) - 1).toNat

end

end A346816.P15127143823096819400

/-! ## A346816.P72285063181762224

`A346520(A167614(n+5)+3)`
-/

namespace A346816.P72285063181762224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167614 (n + 5) + 3).toNat

end

end A346816.P72285063181762224

/-! ## A346816.P7856888968735543486

`A346520(A000124(n+6)+5)`
-/

namespace A346816.P7856888968735543486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000124 (n + 6) + 5).toNat

end

end A346816.P7856888968735543486

/-! ## A346816.P16323418946488802392

`A346520(A000096(n+5)+7)`
-/

namespace A346816.P16323418946488802392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000096 (n + 5) + 7).toNat

end

end A346816.P16323418946488802392

/-! ## A346816.P814573595444095855

`A346520(A000217(n+6)+6)`
-/

namespace A346816.P814573595444095855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000217 (n + 6) + 6).toNat

end

end A346816.P814573595444095855

/-! ## A346816.P13632985834549472718

`A346520(A052905(n+3)+11)`
-/

namespace A346816.P13632985834549472718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A052905 (n + 3) + 11).toNat

end

end A346816.P13632985834549472718

/-! ## A346816.P13177263743064725898

`A346520(eq[6, A144328(n+1)])`
-/

namespace A346816.P13177263743064725898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346816.P13177263743064725898

/-! ## A346816.P11366235603095698322

`A346520(eq[7, A002260(n+1)])`
-/

namespace A346816.P11366235603095698322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346816.P11366235603095698322

/-!
# A346817: Number of partitions of the (n+7)-multiset {0,...,0,1,2,...,n} with seven 0's into distinct multisets.

The programs for A346817, there is no canonical definition to state claims against.
-/

/-! ## A346817.P4998835703425970102

`A346520(eq[7, A002262(n)])`
-/

namespace A346817.P4998835703425970102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346817.P4998835703425970102

/-! ## A346817.P14541802608897577768

`A346520(A167614(n+6)+4)`
-/

namespace A346817.P14541802608897577768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167614 (n + 6) + 4).toNat

end

end A346817.P14541802608897577768

/-! ## A346817.P987145762594655732

`A346520(A000124(n+7)+6)`
-/

namespace A346817.P987145762594655732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000124 (n + 7) + 6).toNat

end

end A346817.P987145762594655732

/-! ## A346817.P12001173139539181449

`A346520(A000096(n+6)+8)`
-/

namespace A346817.P12001173139539181449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000096 (n + 6) + 8).toNat

end

end A346817.P12001173139539181449

/-! ## A346817.P5828582019957139987

`A346520(A000217(n+7)+7)`
-/

namespace A346817.P5828582019957139987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000217 (n + 7) + 7).toNat

end

end A346817.P5828582019957139987

/-! ## A346817.P15228412898412958721

`A346520(eq[7, A144328(n+1)])`
-/

namespace A346817.P15228412898412958721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346817.P15228412898412958721

/-! ## A346817.P1873472742439192573

`A346520(eq[8, A002260(n+1)])`
-/

namespace A346817.P1873472742439192573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346817.P1873472742439192573

/-! ## A346817.P11524001726701734018

`A346520(A133263(n+4)+A016789(n+7))`
-/

namespace A346817.P11524001726701734018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A133263 (n + 4) + A016789 (n + 7)).toNat

end

end A346817.P11524001726701734018

/-!
# A346818: Number of partitions of the (n+8)-multiset {0,...,0,1,2,...,n} with eight 0's into distinct multisets.

The programs for A346818, there is no canonical definition to state claims against.
-/

/-! ## A346818.P5915796272893915761

`A346520(A167614(n+7)+5)`
-/

namespace A346818.P5915796272893915761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167614 (n + 7) + 5).toNat

end

end A346818.P5915796272893915761

/-! ## A346818.P7446093949352596726

`A346520(A000096(n+7)+9)`
-/

namespace A346818.P7446093949352596726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000096 (n + 7) + 9).toNat

end

end A346818.P7446093949352596726

/-! ## A346818.P3932233264128122467

`A346520(A000124(n+10)-10-2*(n+1))`
-/

namespace A346818.P3932233264128122467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000124 (n + 10) - 10 - (2 * (n + 1) : ℤ)).toNat

end

end A346818.P3932233264128122467

/-! ## A346818.P17492722681868172310

`A346520(A055999(n+7)-A004280(n+4))`
-/

namespace A346818.P17492722681868172310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A055999 (n + 7) - A004280 (n + 4)).toNat

end

end A346818.P17492722681868172310

/-!
# A346819: Number of partitions of the (n+9)-multiset {0,...,0,1,2,...,n} with nine 0's into distinct multisets.

The programs for A346819, there is no canonical definition to state claims against.
-/

/-! ## A346819.P117040432153722122

`A346855(n)-(A346853(n)+A346851(n))`
-/

namespace A346819.P117040432153722122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346855 n - (A346853 n + A346851 n)

end

end A346819.P117040432153722122

/-! ## A346819.P15911465154456987684

`A346520(eq[9, A002262(n)])`
-/

namespace A346819.P15911465154456987684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346819.P15911465154456987684

/-! ## A346819.P2644611724292566857

`A346520(eq[9, A144328(n+1)])`
-/

namespace A346819.P2644611724292566857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346819.P2644611724292566857

/-! ## A346819.P6648960336912224222

`A346520(eq[10, A002260(n+1)])`
-/

namespace A346819.P6648960336912224222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346819.P6648960336912224222

/-! ## A346819.P2476846659583584251

`A346520(eq[10, A134868(n+1)])`
-/

namespace A346819.P2476846659583584251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346819.P2476846659583584251

/-!
# A346820: Number of partitions of the (n+10)-multiset {0,...,0,1,2,...,n} with ten 0's into distinct multisets.

The programs for A346820, there is no canonical definition to state claims against.
-/

/-! ## A346820.P18359828718571871449

`A346520(eq[10, A002262(n)])`
-/

namespace A346820.P18359828718571871449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346820.P18359828718571871449

/-! ## A346820.P10232515652731125917

`A346520(eq[10, A144328(n+1)])`
-/

namespace A346820.P10232515652731125917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346820.P10232515652731125917

/-! ## A346820.P13367544485478869538

`A346520(eq[11, A002260(n+1)])`
-/

namespace A346820.P13367544485478869538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346820.P13367544485478869538

/-! ## A346820.P4466769227260478330

`A346520(eq[11, A134868(n+1)])`
-/

namespace A346820.P4466769227260478330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346820.P4466769227260478330

/-! ## A346820.P3883355429607869943

`A346520(eq[11, A133232(n+1)])`
-/

namespace A346820.P3883355429607869943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346820.P3883355429607869943

/-!
# A346821: Lexicographically earliest sequence of distinct terms > 0 such that the concatenation of three successive terms form a palindrome in base 10.

The programs for A346821, there is no canonical definition to state claims against.
-/

/-! ## A346821.P14741905614265591001

`∏{p}[A104326(A333623(n+1)), #]`
-/

namespace A346821.P14741905614265591001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (A333623 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A346821.P14741905614265591001

/-! ## A346821.P3057743798522546992

`A350312(∪[A122903(n+1), A004029(n)])`
-/

namespace A346821.P3057743798522546992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004029 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350312 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A346821.P3057743798522546992

/-!
# A346822: Number of partitions of the (n+2)-multiset {0,...,0,1,2} with n 0's into distinct multisets.

The programs for A346822, there is no canonical definition to state claims against.
-/

/-! ## A346822.P7286266368226905986

`∑[A036469(n)+A000009(n)]`
-/

namespace A346822.P7286266368226905986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n + A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346822.P7286266368226905986

/-! ## A346822.P6429508317494051619

`A095944(n+1)+A036469(n)`
-/

namespace A346822.P6429508317494051619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095944 (n + 1) + A036469 n

end

end A346822.P6429508317494051619

/-! ## A346822.P11543291348497805504

`A268345(n)+A096914(n+2)`
-/

namespace A346822.P11543291348497805504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268345 n + A096914 (n + 2)

end

end A346822.P11543291348497805504

/-! ## A346822.P17404827567087717178

`A268345(n+1)+A268345(n)-A036469(n+1)`
-/

namespace A346822.P17404827567087717178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268345 (n + 1) + (A268345 n - A036469 (n + 1))

end

end A346822.P17404827567087717178

/-! ## A346822.P1124963045714382437

`A095944(n+2)-A000009(n+1)`
-/

namespace A346822.P1124963045714382437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095944 (n + 2) - A000009 (n + 1)

end

end A346822.P1124963045714382437

/-! ## A346822.P15776554089608307724

`A325951(n+1)-(A325951(n)+A000009(n+1))`
-/

namespace A346822.P15776554089608307724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325951 (n + 1) - (A325951 n + A000009 (n + 1))

end

end A346822.P15776554089608307724

/-! ## A346822.P13989674597110940135

`A095944(n+2)-(A025147(n+1)+A025147(n))`
-/

namespace A346822.P13989674597110940135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095944 (n + 2) - (A025147 (n + 1) + A025147 n)

end

end A346822.P13989674597110940135

/-! ## A346822.P17329559983306613377

`A096914(n+2)+A096914(n+3)-A000009(n+1)`
-/

namespace A346822.P17329559983306613377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096914 (n + 2) + (A096914 (n + 3) - A000009 (n + 1))

end

end A346822.P17329559983306613377

/-! ## A346822.P6320710666966050823

`∑[A035457(2*n)+∑[A035457(2*n)]]`
-/

namespace A346822.P6320710666966050823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346822.P6320710666966050823

/-! ## A346822.P2342413716116749967

`∑[A172033(2*n)+∑[A172033(2*n)]]`
-/

namespace A346822.P2342413716116749967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346822.P2342413716116749967

/-!
# A346823: Number of partitions of the (n+3)-multiset {0,...,0,1,2,3} with n 0's into distinct multisets.

The programs for A346823, there is no canonical definition to state claims against.
-/

/-! ## A346823.P3459471454580181607

`A346822(n)+∑[A346822(n)+A036469(n)]`
-/

namespace A346823.P3459471454580181607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346822 n + A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346822 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346823.P3459471454580181607

/-! ## A346823.P11253814808722214607

`A346520(∑[n+3]+n+3)`
-/

namespace A346823.P11253814808722214607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A346823.P11253814808722214607

/-! ## A346823.P9788267694211166088

`or(A000007(n), A346520(A046691(n+2)))`
-/

namespace A346823.P9788267694211166088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A346520 (A046691 (n + 2)).toNat)

end

end A346823.P9788267694211166088

/-! ## A346823.P325518724780148799

`A346520(A046691(n+2))%A271577(n+1)`
-/

namespace A346823.P325518724780148799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346520 (A046691 (n + 2)).toNat) (A271577 (n + 1))

end

end A346823.P325518724780148799

/-! ## A346823.P17321392610049516496

`A346520(A046691(n+2))+A000007(3*n+2)`
-/

namespace A346823.P17321392610049516496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A046691 (n + 2)).toNat + A000007 (3 * n + 2)

end

end A346823.P17321392610049516496

/-!
# A346824: Number of partitions of the (n+4)-multiset {0,...,0,1,2,3,4} with n 0's into distinct multisets.

The programs for A346824, there is no canonical definition to state claims against.
-/

/-! ## A346824.P9021427993572546203

`A346520(6*n+10+C(n, 2))`
-/

namespace A346824.P9021427993572546203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (6 * n + 10 + Nat.choose n 2)

end

end A346824.P9021427993572546203

/-! ## A346824.P6634389947259674808

`A346520(6*n+10+∑[n]-n)`
-/

namespace A346824.P6634389947259674808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 ((6 * n + 10 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A346824.P6634389947259674808

/-! ## A346824.P17641227727812381949

`A346520(A052905(n+2))%A152928(n+2)`
-/

namespace A346824.P17641227727812381949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346520 (A052905 (n + 2)).toNat) (A152928 (n + 2))

end

end A346824.P17641227727812381949

/-! ## A346824.P10286483783305081732

`and(A099393(n+5), A346520(A052905(n+2)))`
-/

namespace A346824.P10286483783305081732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099393 (n + 5)) (A346520 (A052905 (n + 2)).toNat)

end

end A346824.P10286483783305081732

/-! ## A346824.P5164837675310532624

`A176355(2*n+3)*A346520(A052905(n+2))`
-/

namespace A346824.P5164837675310532624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176355 (2 * n + 3) * A346520 (A052905 (n + 2)).toNat

end

end A346824.P5164837675310532624

/-!
# A346825: Number of partitions of the (n+5)-multiset {0,...,0,1,2,...,5} with n 0's into distinct multisets.

The programs for A346825, there is no canonical definition to state claims against.
-/

/-! ## A346825.P3406804634724106637

`A346520(A055999(n+3))`
-/

namespace A346825.P3406804634724106637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A055999 (n + 3)).toNat

end

end A346825.P3406804634724106637

/-! ## A346825.P9254348291442162122

`A346520(eq[5, A025581(n)])`
-/

namespace A346825.P9254348291442162122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346825.P9254348291442162122

/-! ## A346825.P12383586006747271450

`A346520(eq[32, A130321(n)])`
-/

namespace A346825.P12383586006747271450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346825.P12383586006747271450

/-! ## A346825.P14288878831209000848

`A346520(A155212(n+2)+2)`
-/

namespace A346825.P14288878831209000848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A155212 (n + 2) + 2).toNat

end

end A346825.P14288878831209000848

/-! ## A346825.P9072183495909036990

`A346520(A046691(n+4)-2)`
-/

namespace A346825.P9072183495909036990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A046691 (n + 4) - 2).toNat

end

end A346825.P9072183495909036990

/-! ## A346825.P10458253075481586319

`A346520(A167614(n+1)+4*n+9)`
-/

namespace A346825.P10458253075481586319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167614 (n + 1) + (4 * n + 9 : ℤ)).toNat

end

end A346825.P10458253075481586319

/-!
# A346826: Number of partitions of the (n+6)-multiset {0,...,0,1,2,...,6} with n 0's into distinct multisets.

The programs for A346826, there is no canonical definition to state claims against.
-/

/-! ## A346826.P17774174497145923690

`A346520(eq[6, A025581(n)])`
-/

namespace A346826.P17774174497145923690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346826.P17774174497145923690

/-! ## A346826.P4283968170498808155

`A346520(eq[13, A099375(n)])`
-/

namespace A346826.P4283968170498808155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346826.P4283968170498808155

/-! ## A346826.P16658459508593755322

`A346520(eq[64, A130321(n)])`
-/

namespace A346826.P16658459508593755322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346826.P16658459508593755322

/-! ## A346826.P8377511949210402938

`A346520(A000217(n+7)-7)`
-/

namespace A346826.P8377511949210402938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000217 (n + 7) - 7).toNat

end

end A346826.P8377511949210402938

/-! ## A346826.P4168158542770500091

`A346520(A000124(n+7)-8)`
-/

namespace A346826.P4168158542770500091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000124 (n + 7) - 8).toNat

end

end A346826.P4168158542770500091

/-! ## A346826.P13651986062474908958

`A346520(A167614(n+6)-10)`
-/

namespace A346826.P13651986062474908958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167614 (n + 6) - 10).toNat

end

end A346826.P13651986062474908958

/-! ## A346826.P12148832714517588735

`A346520(eq[7, A004736(n+1)])`
-/

namespace A346826.P12148832714517588735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346826.P12148832714517588735

/-! ## A346826.P10393261614199079991

`A346520(A052905(n+3)+n+5)`
-/

namespace A346826.P10393261614199079991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A052905 (n + 3) + (n + 5 : ℤ)).toNat

end

end A346826.P10393261614199079991

/-! ## A346826.P6852553220238258904

`A346520(A004280(n+4)+A000124(n+5))`
-/

namespace A346826.P6852553220238258904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A004280 (n + 4) + A000124 (n + 5)).toNat

end

end A346826.P6852553220238258904

/-!
# A346827: Number of partitions of the (n+7)-multiset {0,...,0,1,2,...,7} with n 0's into distinct multisets.

The programs for A346827, there is no canonical definition to state claims against.
-/

/-! ## A346827.P14806011183146219424

`A346520(A155212(n+4))`
-/

namespace A346827.P14806011183146219424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A155212 (n + 4)).toNat

end

end A346827.P14806011183146219424

/-! ## A346827.P2859697267903677449

`A346520(eq[7, A025581(n)])`
-/

namespace A346827.P2859697267903677449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346827.P2859697267903677449

/-! ## A346827.P17903633703351659080

`A346520(A000217(n+8)-8)`
-/

namespace A346827.P17903633703351659080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A000217 (n + 8) - 8).toNat

end

end A346827.P17903633703351659080

/-! ## A346827.P9094399677152616478

`A346520(A167499(n+3)+A016813(n+3))`
-/

namespace A346827.P9094399677152616478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167499 (n + 3) + A016813 (n + 3)).toNat

end

end A346827.P9094399677152616478

/-! ## A346827.P4620406698850240260

`A346520(A133263(n+5)+A016789(n+3))`
-/

namespace A346827.P4620406698850240260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A133263 (n + 5) + A016789 (n + 3)).toNat

end

end A346827.P4620406698850240260

/-! ## A346827.P14736144769587750419

`A346520(A001844(n+8)%A167614(n+7))`
-/

namespace A346827.P14736144769587750419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (Int.tmod (A001844 (n + 8)) (A167614 (n + 7))).toNat

end

end A346827.P14736144769587750419

/-!
# A346828: Number of partitions of the (n+8)-multiset {0,...,0,1,2,...,8} with n 0's into distinct multisets.

The programs for A346828, there is no canonical definition to state claims against.
-/

/-! ## A346828.P2015221592789488507

`A346520(A055999(n+6)-3)`
-/

namespace A346828.P2015221592789488507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A055999 (n + 6) - 3).toNat

end

end A346828.P2015221592789488507

/-! ## A346828.P2523028176267310383

`A346520(A046691(n+7)-5)`
-/

namespace A346828.P2523028176267310383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A046691 (n + 7) - 5).toNat

end

end A346828.P2523028176267310383

/-! ## A346828.P16040979330027964307

`A346520(A027379(n+7)-6)`
-/

namespace A346828.P16040979330027964307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A027379 (n + 7) - 6).toNat

end

end A346828.P16040979330027964307

/-! ## A346828.P18412800606010596041

`A346520(n+4+A046691(n+6))`
-/

namespace A346828.P18412800606010596041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 ((n + 4 : ℤ) + A046691 (n + 6)).toNat

end

end A346828.P18412800606010596041

/-! ## A346828.P3673813562122068471

`A346520(A008586(n+5)+A000124(n+5))`
-/

namespace A346828.P3673813562122068471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A008586 (n + 5) + A000124 (n + 5)).toNat

end

end A346828.P3673813562122068471

/-! ## A346828.P3409767921430031394

`A346520(A167614(n+6)+A004280(n+4))`
-/

namespace A346828.P3409767921430031394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A167614 (n + 6) + A004280 (n + 4)).toNat

end

end A346828.P3409767921430031394

/-! ## A346828.P4252913831536248875

`A346520(A004280(n+5)+A000124(n+7))`
-/

namespace A346828.P4252913831536248875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A004280 (n + 5) + A000124 (n + 7)).toNat

end

end A346828.P4252913831536248875

/-!
# A346829: Number of partitions of the (n+9)-multiset {0,...,0,1,2,...,9} with n 0's into distinct multisets.

The programs for A346829, there is no canonical definition to state claims against.
-/

/-! ## A346829.P5913935314672700808

`A346520(eq[8, A116598(n)])`
-/

namespace A346829.P5913935314672700808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346829.P5913935314672700808

/-! ## A346829.P13602493789630214461

`A346520(eq[9, A025581(n)])`
-/

namespace A346829.P13602493789630214461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346829.P13602493789630214461

/-! ## A346829.P14720550101517906686

`A346520(eq[10, A195663(n)])`
-/

namespace A346829.P14720550101517906686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346829.P14720550101517906686

/-! ## A346829.P11648332335200563750

`A346520(eq[19, A099375(n)])`
-/

namespace A346829.P11648332335200563750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346829.P11648332335200563750

/-! ## A346829.P9824173248650633477

`A346520(eq[10, A004736(n+1)])`
-/

namespace A346829.P9824173248650633477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346829.P9824173248650633477

/-!
# A346830: Number of partitions of the (n+10)-multiset {0,...,0,1,2,...,10} with n 0's into distinct multisets.

The programs for A346830, there is no canonical definition to state claims against.
-/

/-! ## A346830.P455152646893962339

`A346520(eq[10, A025581(n)])`
-/

namespace A346830.P455152646893962339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346830.P455152646893962339

/-! ## A346830.P8576153659630457831

`A346520(eq[12, A116598(n)])`
-/

namespace A346830.P8576153659630457831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346830.P8576153659630457831

/-! ## A346830.P10034172634555740501

`A346520(eq[21, A099375(n)])`
-/

namespace A346830.P10034172634555740501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346830.P10034172634555740501

/-! ## A346830.P6187626703009959561

`A346520(A161680(n+12)-11)`
-/

namespace A346830.P6187626703009959561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A161680 (n + 12) - 11).toNat

end

end A346830.P6187626703009959561

/-! ## A346830.P14482916358477422250

`A346520(eq[11, A004736(n+1)])`
-/

namespace A346830.P14482916358477422250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346830.P14482916358477422250

/-!
# A346838: a(n) = (PolyLog(-n, -i) - exp(i*Pi*n)*PolyLog(-n, i)) * i / exp(i*Pi*n/2).

The programs for A346838, there is no canonical definition to state claims against.
-/

/-! ## A346838.P2197310568730745307

`A247453(∑[n])`
-/

namespace A346838.P2197310568730745307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247453 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346838.P2197310568730745307

/-! ## A346838.P10893415697678579363

`(-1)^n*A000111(n)`
-/

namespace A346838.P10893415697678579363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000111 n

end

end A346838.P10893415697678579363

/-! ## A346838.P5153984436747809798

`(-1)^n*A109449(∑[n])`
-/

namespace A346838.P5153984436747809798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A109449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346838.P5153984436747809798

/-! ## A346838.P10342801385682537678

`A000111(round(acot(n)+n))/(-1)^n`
-/

namespace A346838.P10342801385682537678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000111 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A346838.P10342801385682537678

/-! ## A346838.P17856539151923089433

`A000111(n)*A033999(n)`
-/

namespace A346838.P17856539151923089433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A033999 n

end

end A346838.P17856539151923089433

/-! ## A346838.P1233702756278983398

`A000111(n)*A066170(∑[n])`
-/

namespace A346838.P1233702756278983398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A066170 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346838.P1233702756278983398

/-! ## A346838.P16712653129169440650

`A000111(n)*A056594(2*n)`
-/

namespace A346838.P16712653129169440650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A056594 (2 * n)

end

end A346838.P16712653129169440650

/-! ## A346838.P9875816215515783018

`A000111(n)*A057077(2*n)`
-/

namespace A346838.P9875816215515783018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A057077 (2 * n)

end

end A346838.P9875816215515783018

/-! ## A346838.P12157845859942277590

`A000111(n)*(A112030(n²)-2)`
-/

namespace A346838.P12157845859942277590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * (A112030 (n ^ 2) - 2)

end

end A346838.P12157845859942277590

/-! ## A346838.P11726618399591204291

`A000111(n)*A112030(2*n+1)`
-/

namespace A346838.P11726618399591204291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A112030 (2 * n + 1)

end

end A346838.P11726618399591204291

/-!
# A346840: Number of n-dimensional lattice walks from {1}^n to {0}^n using steps that decrease the Euclidean distance to the origin and that change each coordinate by at most 1.

The programs for A346840, there is no canonical definition to state claims against.
-/

/-! ## A346840.P8310905785596128272

`A347811(∑[n+1]+1)`
-/

namespace A346840.P8310905785596128272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347811 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A346840.P8310905785596128272

/-! ## A346840.P14172523437275744862

`A065648(n)*A347811(A134869(n+1))`
-/

namespace A346840.P14172523437275744862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n * A347811 (A134869 (n + 1)).toNat

end

end A346840.P14172523437275744862

/-! ## A346840.P18425334390150284608

`A280865(n)*A347811(A134869(n+1))`
-/

namespace A346840.P18425334390150284608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280865 n * A347811 (A134869 (n + 1)).toNat

end

end A346840.P18425334390150284608

/-! ## A346840.P945826098527975746

`A304042(n)*A347811(A134869(n+1))`
-/

namespace A346840.P945826098527975746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n * A347811 (A134869 (n + 1)).toNat

end

end A346840.P945826098527975746

/-! ## A346840.P6875209225000161014

`A347811(A134869(n+1))/A007318(A001222(n+1)!)`
-/

namespace A346840.P6875209225000161014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347811 (A134869 (n + 1)).toNat : ℚ) / (A007318 (Nat.factorial (A001222 (n + 1)).toNat) : ℚ)

end

end A346840.P6875209225000161014

/-!
# A346841: E.g.f.: Product_{k>=1} 1 / (1 - x^k)^sin(x).

The programs for A346841, there is no canonical definition to state claims against.
-/

/-! ## A346841.P9006324683068692797

`A106611(A151370(n)²)`
-/

namespace A346841.P9006324683068692797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A151370 n ^ 2).toNat

end

end A346841.P9006324683068692797

/-! ## A346841.P13224178873524746463

`A351981(A367892(n+2))`
-/

namespace A346841.P13224178873524746463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351981 (A367892 (n + 2)).toNat

end

end A346841.P13224178873524746463

/-!
# A346842: E.g.f.: exp(exp(x) - 1) * (exp(x) - 1)^3 / 3!.

The programs for A346842, there is no canonical definition to state claims against.
-/

/-! ## A346842.P2954093257583105307

`A049020(A167614(n+2))`
-/

namespace A346842.P2954093257583105307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A167614 (n + 2)).toNat

end

end A346842.P2954093257583105307

/-! ## A346842.P47603615901988976

`A049020(A052905(n)+8)`
-/

namespace A346842.P47603615901988976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A052905 n + 8).toNat

end

end A346842.P47603615901988976

/-! ## A346842.P8248845160292941768

`A049020(A055999(n)+9)`
-/

namespace A346842.P8248845160292941768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A055999 n + 9).toNat

end

end A346842.P8248845160292941768

/-! ## A346842.P11829821444845318258

`A049020(eq[3, A002262(n)])`
-/

namespace A346842.P11829821444845318258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346842.P11829821444845318258

/-! ## A346842.P11623648480141474971

`A049020(A000124(n+3)+2)`
-/

namespace A346842.P11623648480141474971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A000124 (n + 3) + 2).toNat

end

end A346842.P11623648480141474971

/-! ## A346842.P11063157519344323291

`A049020(A000096(n+2)+4)`
-/

namespace A346842.P11063157519344323291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A000096 (n + 2) + 4).toNat

end

end A346842.P11063157519344323291

/-! ## A346842.P8352289783918746952

`A049020(A027379(n+1)+6)`
-/

namespace A346842.P8352289783918746952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A027379 (n + 1) + 6).toNat

end

end A346842.P8352289783918746952

/-! ## A346842.P18400055892077625438

`A049020(eq[2, A002260(n+1)-2])`
-/

namespace A346842.P18400055892077625438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346842.P18400055892077625438

/-! ## A346842.P1976516361753662027

`A049020(eq[2, A002260(n+1)/2])`
-/

namespace A346842.P1976516361753662027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A346842.P1976516361753662027

/-!
# A346843: E.g.f.: exp(exp(x) - 1) * (exp(x) - 1)^4 / 4!.

The programs for A346843, there is no canonical definition to state claims against.
-/

/-! ## A346843.P2129805958315128050

`A049020(A155212(n)+12)`
-/

namespace A346843.P2129805958315128050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A155212 n + 12).toNat

end

end A346843.P2129805958315128050

/-! ## A346843.P9322772109684750379

`A049020(eq[4, A002262(n)])`
-/

namespace A346843.P9322772109684750379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346843.P9322772109684750379

/-! ## A346843.P5367208023990916127

`A049020(eq[4, A258651(n)])`
-/

namespace A346843.P5367208023990916127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346843.P5367208023990916127

/-! ## A346843.P5188265713395705095

`A049020(A000096(n+3)+5)`
-/

namespace A346843.P5188265713395705095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A000096 (n + 3) + 5).toNat

end

end A346843.P5188265713395705095

/-! ## A346843.P15211410975501099438

`A049020(A000217(n+4)+4)`
-/

namespace A346843.P15211410975501099438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A000217 (n + 4) + 4).toNat

end

end A346843.P15211410975501099438

/-! ## A346843.P6061266614182814164

`A049020(A027379(n+2)+7)`
-/

namespace A346843.P6061266614182814164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A027379 (n + 2) + 7).toNat

end

end A346843.P6061266614182814164

/-! ## A346843.P1193976710440698431

`record[gcd(A048993(n+4), A049020(n+8))]`
-/

namespace A346843.P1193976710440698431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 (n + 4)) (A049020 (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346843.P1193976710440698431

/-!
# A346844: E.g.f.: exp(exp(x) - 1) * (exp(x) - 1)^5 / 5!.

The programs for A346844, there is no canonical definition to state claims against.
-/

/-! ## A346844.P17870243248521807197

`A049020(A167499(n+4))`
-/

namespace A346844.P17870243248521807197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A167499 (n + 4)).toNat

end

end A346844.P17870243248521807197

/-! ## A346844.P6440694222988911177

`A049020(eq[5, A002262(n)])`
-/

namespace A346844.P6440694222988911177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346844.P6440694222988911177

/-! ## A346844.P6487787719872472023

`A049020(eq[5, log2(A059268(n))])`
-/

namespace A346844.P6487787719872472023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A346844.P6487787719872472023

/-! ## A346844.P374995240178680043

`A049020(A000096(n+4)+6)`
-/

namespace A346844.P374995240178680043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A000096 (n + 4) + 6).toNat

end

end A346844.P374995240178680043

/-! ## A346844.P11881867984203869879

`A049020(eq[6, A002260(n+1)])`
-/

namespace A346844.P11881867984203869879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346844.P11881867984203869879

/-! ## A346844.P7071681471564187717

`A049020(A000217(n+6)-(n+1))`
-/

namespace A346844.P7071681471564187717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A346844.P7071681471564187717

/-!
# A346845: E.g.f.: log(1 + x) / (1 - x)^3.

The programs for A346845, there is no canonical definition to state claims against.
-/

/-! ## A346845.P14139917630361931374

`∑[∑[A084964(A081342(n))+1]]`
-/

namespace A346845.P14139917630361931374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A081342 n).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346845.P14139917630361931374

/-!
# A346846: E.g.f.: log(1 + x) / (1 - x)^4.

The programs for A346846, there is no canonical definition to state claims against.
-/

/-! ## A346846.P9370416214981195328

`xor(A000720(A016174(n)), A291970(n))`
-/

namespace A346846.P9370416214981195328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000720 (A016174 n).toNat) (A291970 n)

end

end A346846.P9370416214981195328

/-!
# A346848: Number of conjugacy classes of the symplectic group Sp(2n, 2) over the field with 2 elements.

The programs for A346848, there is no canonical definition to state claims against.
-/

/-! ## A346848.P12452133251995014026

`A295144(n)+A001222(A322297(2*n))`
-/

namespace A346848.P12452133251995014026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295144 n + A001222 (A322297 (2 * n)).toNat

end

end A346848.P12452133251995014026

/-! ## A346848.P9601468269467299656

`A072863(n)+A001222(A292305(n))`
-/

namespace A346848.P9601468269467299656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n + A001222 (A292305 n).toNat

end

end A346848.P9601468269467299656

/-!
# A346849: Decimal expansion of 2 - 307 * Pi^7 / (655360 * sqrt(2)).

The programs for A346849, there is no canonical definition to state claims against.
-/

/-! ## A346849.P130339716294482596

`9-A389442(n+1)`
-/

namespace A346849.P130339716294482596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A389442 (n + 1 + 1)

end

end A346849.P130339716294482596

/-!
# A346851: Number of partitions of the (n+5)-multiset {0,...,0,1,2,...,n} with five 0's.

The programs for A346851, there is no canonical definition to state claims against.
-/

/-! ## A346851.P6880503535427186289

`A346426(A167499(n+4))`
-/

namespace A346851.P6880503535427186289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A167499 (n + 4)).toNat

end

end A346851.P6880503535427186289

/-! ## A346851.P14842726630506927865

`A346426(eq[5, A002262(n)])`
-/

namespace A346851.P14842726630506927865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346851.P14842726630506927865

/-! ## A346851.P3955172471542455885

`record[A346426(lt[8, A193588(n)])]`
-/

namespace A346851.P3955172471542455885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346851.P3955172471542455885

/-! ## A346851.P18089256633632733606

`A346426(A000124(n+5)+4)`
-/

namespace A346851.P18089256633632733606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000124 (n + 5) + 4).toNat

end

end A346851.P18089256633632733606

/-! ## A346851.P14639309593669026844

`A346426(A000217(n+5)+5)`
-/

namespace A346851.P14639309593669026844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000217 (n + 5) + 5).toNat

end

end A346851.P14639309593669026844

/-! ## A346851.P1415757149985688021

`A346426(A055999(n+2)+11)`
-/

namespace A346851.P1415757149985688021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A055999 (n + 2) + 11).toNat

end

end A346851.P1415757149985688021

/-! ## A346851.P13710273390466312107

`A346426(eq[5, A144328(n+1)])`
-/

namespace A346851.P13710273390466312107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346851.P13710273390466312107

/-! ## A346851.P6150143067979167254

`A346426(eq[6, A002260(n+1)])`
-/

namespace A346851.P6150143067979167254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346851.P6150143067979167254

/-!
# A346852: Number of partitions of the (n+6)-multiset {0,...,0,1,2,...,n} with six 0's.

The programs for A346852, there is no canonical definition to state claims against.
-/

/-! ## A346852.P1132534424762452405

`A346426(A167499(n+5)+1)`
-/

namespace A346852.P1132534424762452405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A167499 (n + 5) + 1).toNat

end

end A346852.P1132534424762452405

/-! ## A346852.P18128545329847057045

`A346426(A000124(n+6)+5)`
-/

namespace A346852.P18128545329847057045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000124 (n + 6) + 5).toNat

end

end A346852.P18128545329847057045

/-! ## A346852.P17991882594364615701

`A346426(A167614(n+6)-(n+4))`
-/

namespace A346852.P17991882594364615701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A167614 (n + 6) - (n + 4 : ℤ)).toNat

end

end A346852.P17991882594364615701

/-! ## A346852.P5038101465141051203

`A346426(A340266(n+9)-A016825(n+7))`
-/

namespace A346852.P5038101465141051203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A340266 (n + 9) - A016825 (n + 7)).toNat

end

end A346852.P5038101465141051203

/-! ## A346852.P17696565529396833230

`A346426(A055998(n+12)-A004769(n+8))`
-/

namespace A346852.P17696565529396833230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A055998 (n + 12) - A004769 (n + 8)).toNat

end

end A346852.P17696565529396833230

/-!
# A346853: Number of partitions of the (n+7)-multiset {0,...,0,1,2,...,n} with seven 0's.

The programs for A346853, there is no canonical definition to state claims against.
-/

/-! ## A346853.P10510351345819992783

`A346426(A167499(n+6)+2)`
-/

namespace A346853.P10510351345819992783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A167499 (n + 6) + 2).toNat

end

end A346853.P10510351345819992783

/-! ## A346853.P1094208511198601566

`A346426(A000124(n+8)-(n+2))`
-/

namespace A346853.P1094208511198601566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000124 (n + 8) - (n + 2 : ℤ)).toNat

end

end A346853.P1094208511198601566

/-! ## A346853.P18283787781332773417

`A346426(A167614(n+7)-(n+4))`
-/

namespace A346853.P18283787781332773417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A167614 (n + 7) - (n + 4 : ℤ)).toNat

end

end A346853.P18283787781332773417

/-! ## A346853.P10906428476311334003

`A346426(A052905(n+6)-A004273(n+3))`
-/

namespace A346853.P10906428476311334003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A052905 (n + 6) - A004273 (n + 3)).toNat

end

end A346853.P10906428476311334003

/-! ## A346853.P2578999895869624905

`A346426(A004652(n+4)+A004652(n+11))`
-/

namespace A346853.P2578999895869624905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A004652 (n + 4) + A004652 (n + 11)).toNat

end

end A346853.P2578999895869624905

/-! ## A346853.P13474954336522696847

`A346426(A233583(n+14)+A000124(n+6))`
-/

namespace A346853.P13474954336522696847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A233583 (n + 14) + A000124 (n + 6)).toNat

end

end A346853.P13474954336522696847

/-!
# A346854: Number of partitions of the (n+8)-multiset {0,...,0,1,2,...,n} with eight 0's.

The programs for A346854, there is no canonical definition to state claims against.
-/

/-! ## A346854.P17678720923273654736

`A346426(A166136(n+7)+2)`
-/

namespace A346854.P17678720923273654736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A166136 (n + 7) + 2).toNat

end

end A346854.P17678720923273654736

/-! ## A346854.P16577118473347396079

`A346426(A167614(n+7)+5)`
-/

namespace A346854.P16577118473347396079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A167614 (n + 7) + 5).toNat

end

end A346854.P16577118473347396079

/-! ## A346854.P1330328394154496276

`A346426(A000096(n+7)+9)`
-/

namespace A346854.P1330328394154496276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000096 (n + 7) + 9).toNat

end

end A346854.P1330328394154496276

/-! ## A346854.P10008322524306875685

`A346426(A000124(n+9)-(n+2))`
-/

namespace A346854.P10008322524306875685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000124 (n + 9) - (n + 2 : ℤ)).toNat

end

end A346854.P10008322524306875685

/-! ## A346854.P10400760839841845645

`A346426(A233583(n+16)+A000124(n+7))`
-/

namespace A346854.P10400760839841845645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A233583 (n + 16) + A000124 (n + 7)).toNat

end

end A346854.P10400760839841845645

/-!
# A346855: Number of partitions of the (n+9)-multiset {0,...,0,1,2,...,n} with nine 0's.

The programs for A346855, there is no canonical definition to state claims against.
-/

/-! ## A346855.P2964300728604954957

`A346819(n)+A346853(n)+A346851(n)`
-/

namespace A346855.P2964300728604954957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346819 n + (A346853 n + A346851 n)

end

end A346855.P2964300728604954957

/-! ## A346855.P16699464534905968621

`A346426(eq[9, A002262(n)])`
-/

namespace A346855.P16699464534905968621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346855.P16699464534905968621

/-! ## A346855.P14699251002331529876

`A346426(eq[9, A144328(n+1)])`
-/

namespace A346855.P14699251002331529876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346855.P14699251002331529876

/-! ## A346855.P14703208835595090629

`A346426(eq[10, A002260(n+1)])`
-/

namespace A346855.P14703208835595090629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346855.P14703208835595090629

/-! ## A346855.P7741402901167059377

`A346426(eq[9, A133233(n)])`
-/

namespace A346855.P7741402901167059377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346855.P7741402901167059377

/-!
# A346856: Number of partitions of the (n+10)-multiset {0,...,0,1,2,...,n} with ten 0's.

The programs for A346856, there is no canonical definition to state claims against.
-/

/-! ## A346856.P3873087785567678286

`A346426(eq[10, A002262(n)])`
-/

namespace A346856.P3873087785567678286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346856.P3873087785567678286

/-! ## A346856.P8855024936308466169

`A346426(eq[10, A144328(n+1)])`
-/

namespace A346856.P8855024936308466169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346856.P8855024936308466169

/-! ## A346856.P8782445727888953685

`A346426(eq[11, A002260(n+1)])`
-/

namespace A346856.P8782445727888953685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346856.P8782445727888953685

/-! ## A346856.P15486633050765106000

`A346426(eq[11, A134868(n+1)])`
-/

namespace A346856.P15486633050765106000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346856.P15486633050765106000

/-! ## A346856.P4785975346750284398

`A346426(eq[11, A133232(n+1)])`
-/

namespace A346856.P4785975346750284398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346856.P4785975346750284398

/-!
# A346857: Number of partitions of the (n+4)-multiset {0,...,0,1,2,3,4} with n 0's.

The programs for A346857, there is no canonical definition to state claims against.
-/

/-! ## A346857.P4671093540497740716

`A346426(C(n+5, 2)+n)`
-/

namespace A346857.P4671093540497740716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (Nat.choose (n + 5) 2 + n)

end

end A346857.P4671093540497740716

/-! ## A346857.P16533325544175673905

`A346426(6*n+10+∑[n]-n)`
-/

namespace A346857.P16533325544175673905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 ((6 * n + 10 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A346857.P16533325544175673905

/-! ## A346857.P10758019049222827894

`A346426(A052905(n+2))%A002872(3*(n+1))`
-/

namespace A346857.P10758019049222827894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346426 (A052905 (n + 2)).toNat) (A002872 (3 * (n + 1)))

end

end A346857.P10758019049222827894

/-! ## A346857.P17536807505560266132

`A318284(8*A001747(n+1))`
-/

namespace A346857.P17536807505560266132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (8 * A001747 (n + 1)).toNat

end

end A346857.P17536807505560266132

/-! ## A346857.P4813923457441860888

`A318284(16*A005180(n+1))`
-/

namespace A346857.P4813923457441860888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (16 * A005180 (n + 1)).toNat

end

end A346857.P4813923457441860888

/-!
# A346858: Number of partitions of the (n+5)-multiset {0,...,0,1,2,...,5} with n 0's.

The programs for A346858, there is no canonical definition to state claims against.
-/

/-! ## A346858.P18261332568558518328

`A346426(A055999(n+3))`
-/

namespace A346858.P18261332568558518328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A055999 (n + 3)).toNat

end

end A346858.P18261332568558518328

/-! ## A346858.P13657820933674071786

`A346426(Δ[A023551(n+1)])`
-/

namespace A346858.P13657820933674071786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (f1 (n + 1) - f1 n).toNat

end

end A346858.P13657820933674071786

/-! ## A346858.P9377281620330506833

`A346426(Δ[A026054(n+3)])`
-/

namespace A346858.P9377281620330506833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (f1 (n + 1) - f1 n).toNat

end

end A346858.P9377281620330506833

/-! ## A346858.P7996693175620763476

`A346426(A000217(n+6)-6)`
-/

namespace A346858.P7996693175620763476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000217 (n + 6) - 6).toNat

end

end A346858.P7996693175620763476

/-! ## A346858.P4492358233626519502

`A346426(A000124(n+5)+n-1)`
-/

namespace A346858.P4492358233626519502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A346858.P4492358233626519502

/-!
# A346859: Number of partitions of the (n+6)-multiset {0,...,0,1,2,...,6} with n 0's.

The programs for A346859, there is no canonical definition to state claims against.
-/

/-! ## A346859.P15189912779347503445

`A346426(Δ[A103145(n)]+5)`
-/

namespace A346859.P15189912779347503445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (f1 (n + 1) - f1 n + 5).toNat

end

end A346859.P15189912779347503445

/-! ## A346859.P12401034903317617932

`A346426(A052905(n+4)-2)`
-/

namespace A346859.P12401034903317617932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A052905 (n + 4) - 2).toNat

end

end A346859.P12401034903317617932

/-! ## A346859.P9523879259339262131

`A346426(A000217(n+7)-7)`
-/

namespace A346859.P9523879259339262131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000217 (n + 7) - 7).toNat

end

end A346859.P9523879259339262131

/-! ## A346859.P9335513036086127904

`A346426(Δ[A023551(n+2)]-1)`
-/

namespace A346859.P9335513036086127904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (f1 (n + 1) - f1 n - 1).toNat

end

end A346859.P9335513036086127904

/-! ## A346859.P10221603185219374361

`A346426(Δ[A026054(n+4)]-1)`
-/

namespace A346859.P10221603185219374361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (f1 (n + 1) - f1 n - 1).toNat

end

end A346859.P10221603185219374361

/-! ## A346859.P16210022689723750804

`A346426(A055998(n+6)-(n+12))`
-/

namespace A346859.P16210022689723750804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A055998 (n + 6) - (n + 12 : ℤ)).toNat

end

end A346859.P16210022689723750804

/-! ## A346859.P5824775688836683056

`A346426(A167614(n+3)+A016789(n+2))`
-/

namespace A346859.P5824775688836683056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A167614 (n + 3) + A016789 (n + 2)).toNat

end

end A346859.P5824775688836683056

/-! ## A346859.P18353262964721122245

`A346426(A034856(n+3)+A016777(n+4))`
-/

namespace A346859.P18353262964721122245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A034856 (n + 3) + A016777 (n + 4)).toNat

end

end A346859.P18353262964721122245

/-! ## A346859.P14345870068791507526

`A346426(A004273(n+3)+A000124(n+5))`
-/

namespace A346859.P14345870068791507526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A004273 (n + 3) + A000124 (n + 5)).toNat

end

end A346859.P14345870068791507526

/-!
# A346860: Number of partitions of the (n+7)-multiset {0,...,0,1,2,...,7} with n 0's.

The programs for A346860, there is no canonical definition to state claims against.
-/

/-! ## A346860.P11139301405133997

`A346426(A155212(n+4))`
-/

namespace A346860.P11139301405133997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A155212 (n + 4)).toNat

end

end A346860.P11139301405133997

/-! ## A346860.P618772147031397887

`A346426(eq[7, A025581(n)])`
-/

namespace A346860.P618772147031397887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346860.P618772147031397887

/-! ## A346860.P15833679136404420195

`A346426(A052905(n+5)-3)`
-/

namespace A346860.P15833679136404420195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A052905 (n + 5) - 3).toNat

end

end A346860.P15833679136404420195

/-! ## A346860.P11974749782431715343

`A346426(A000217(n+8)-8)`
-/

namespace A346860.P11974749782431715343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000217 (n + 8) - 8).toNat

end

end A346860.P11974749782431715343

/-! ## A346860.P13150840526567390197

`A346426(eq[8, A004736(n+1)])`
-/

namespace A346860.P13150840526567390197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346860.P13150840526567390197

/-! ## A346860.P16885508634048405080

`A346426(A167614(n+5)+2*(n+2))`
-/

namespace A346860.P16885508634048405080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A167614 (n + 5) + (2 * (n + 2) : ℤ)).toNat

end

end A346860.P16885508634048405080

/-! ## A346860.P14504171221580295535

`A346426(2*n+A000217(n+6)+7)`
-/

namespace A346860.P14504171221580295535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A346860.P14504171221580295535

/-! ## A346860.P2752158382618708753

`A346426(eq[6, A002262(n)]+2*n+1)`
-/

namespace A346860.P2752158382618708753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1))

end

end A346860.P2752158382618708753

/-! ## A346860.P14785276076459390131

`A346426(A004277(n)+A133263(n+6)+5)`
-/

namespace A346860.P14785276076459390131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A004277 n + (A133263 (n + 6) + 5)).toNat

end

end A346860.P14785276076459390131

/-!
# A346861: Number of partitions of the (n+8)-multiset {0,...,0,1,2,...,8} with n 0's.

The programs for A346861, there is no canonical definition to state claims against.
-/

/-! ## A346861.P18360610259009619436

`A346426(A056000(n+5)+1)`
-/

namespace A346861.P18360610259009619436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A056000 (n + 5) + 1).toNat

end

end A346861.P18360610259009619436

/-! ## A346861.P5958865771524292371

`A346426(A052905(n+6)-4)`
-/

namespace A346861.P5958865771524292371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A052905 (n + 6) - 4).toNat

end

end A346861.P5958865771524292371

/-! ## A346861.P14661150775948661842

`A346426(A000217(n+9)-9)`
-/

namespace A346861.P14661150775948661842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000217 (n + 9) - 9).toNat

end

end A346861.P14661150775948661842

/-! ## A346861.P10331200994931974257

`A346426(A055998(n+6)+n+3)`
-/

namespace A346861.P10331200994931974257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A055998 (n + 6) + (n + 3 : ℤ)).toNat

end

end A346861.P10331200994931974257

/-! ## A346861.P11490903567641052677

`A346426(A004273(n+4)+A000124(n+7))`
-/

namespace A346861.P11490903567641052677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A004273 (n + 4) + A000124 (n + 7)).toNat

end

end A346861.P11490903567641052677

/-!
# A346862: Number of partitions of the (n+9)-multiset {0,...,0,1,2,...,9} with n 0's.

The programs for A346862, there is no canonical definition to state claims against.
-/

/-! ## A346862.P4059110708035244445

`A346426(A056000(n+6))`
-/

namespace A346862.P4059110708035244445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A056000 (n + 6)).toNat

end

end A346862.P4059110708035244445

/-! ## A346862.P16234038819340005942

`A346426(eq[9, A025581(n)])`
-/

namespace A346862.P16234038819340005942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346862.P16234038819340005942

/-! ## A346862.P16631704969418661686

`A346426(eq[10, A195663(n)])`
-/

namespace A346862.P16631704969418661686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346862.P16631704969418661686

/-! ## A346862.P7539450751852262809

`A346426(eq[19, A099375(n)])`
-/

namespace A346862.P7539450751852262809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346862.P7539450751852262809

/-! ## A346862.P2878076007538311992

`A346426(eq[10, A004736(n+1)])`
-/

namespace A346862.P2878076007538311992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346862.P2878076007538311992

/-!
# A346863: Number of partitions of the (n+10)-multiset {0,...,0,1,2,...,10} with n 0's.

The programs for A346863, there is no canonical definition to state claims against.
-/

/-! ## A346863.P12062046933532641577

`A346426(eq[10, A025581(n)])`
-/

namespace A346863.P12062046933532641577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346863.P12062046933532641577

/-! ## A346863.P8107318660061142

`A346426(eq[11, A195663(n)])`
-/

namespace A346863.P8107318660061142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346863.P8107318660061142

/-! ## A346863.P9972229838911601855

`A346426(eq[12, A116598(n)])`
-/

namespace A346863.P9972229838911601855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346863.P9972229838911601855

/-! ## A346863.P17836982211667426895

`A346426(eq[21, A099375(n)])`
-/

namespace A346863.P17836982211667426895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346863.P17836982211667426895

/-! ## A346863.P11465686301016003691

`A346426(A000217(n+11)-11)`
-/

namespace A346863.P11465686301016003691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000217 (n + 11) - 11).toNat

end

end A346863.P11465686301016003691

/-! ## A346863.P7404975998425221049

`A346426(eq[11, A004736(n+1)])`
-/

namespace A346863.P7404975998425221049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346863.P7404975998425221049

/-!
# A346864: Irregular triangle read by rows in which row n lists the row A014105(n) of A237591, n >= 1.

The programs for A346864, there is no canonical definition to state claims against.
-/

/-! ## A346864.P8631644051575670680

`A346873(round(sqrt(n+1))²+n+1)`
-/

namespace A346864.P8631644051575670680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346873 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ) + 1).toNat

end

end A346864.P8631644051575670680

/-!
# A346865: Sum of divisors of the n-th hexagonal number.

The programs for A346865, the canonical program `A346865.P13059190641947619191` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346865 has offset 1).

The definition of A346865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346865.P13059190641947619191

`A000203(A000384(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A346865

/-- `A000203(A000384(n+1))` -/
def P13059190641947619191.Spec : Prop :=
  ∀ n, P13059190641947619191.a n = A346865 (n + 1)

theorem P13059190641947619191.correct : P13059190641947619191.Spec := by
  intro n
  simp only [A346865, Nat.add_sub_cancel]

end A346865

/-! ## A346865.P322883536986035556

`∑{d}[n+1, #]*∑{d}[Δ[n²], #]`
-/

namespace A346865.P322883536986035556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) * (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

end

end A346865.P322883536986035556

namespace A346865

/-- `∑{d}[n+1, #]*∑{d}[Δ[n²], #]` -/
def P322883536986035556.Spec : Prop :=
  ∀ n, (P322883536986035556.a n : ℤ) = A346865 (n + 1)

end A346865

/-! ## A346865.P2944849040293644554

`A000203(comp[2*n])*∑{d}[n+1, #]`
-/

namespace A346865.P2944849040293644554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A346865.P2944849040293644554

namespace A346865

/-- `A000203(comp[2*n])*∑{d}[n+1, #]` -/
def P2944849040293644554.Spec : Prop :=
  ∀ n, P2944849040293644554.a n = A346865 (n + 1)

end A346865

/-! ## A346865.P15606431165337070682

`A000203(n+1)*A008438(n)`
-/

namespace A346865.P15606431165337070682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A008438 n

end

end A346865.P15606431165337070682

namespace A346865

/-- `A000203(n+1)*A008438(n)` -/
def P15606431165337070682.Spec : Prop :=
  ∀ n, P15606431165337070682.a n = A346865 (n + 1)

end A346865

/-! ## A346865.P10544185263299128237

`A121613(n)*A143348(n+1)`
-/

namespace A346865.P10544185263299128237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121613 n * A143348 (n + 1)

end

end A346865.P10544185263299128237

namespace A346865

/-- `A121613(n)*A143348(n+1)` -/
def P10544185263299128237.Spec : Prop :=
  ∀ n, P10544185263299128237.a n = A346865 (n + 1)

end A346865

/-! ## A346865.P7085628349983929344

`abs(A000203(n+1)*A121613(n))`
-/

namespace A346865.P7085628349983929344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (n + 1) * A121613 n|

end

end A346865.P7085628349983929344

namespace A346865

/-- `abs(A000203(n+1)*A121613(n))` -/
def P7085628349983929344.Spec : Prop :=
  ∀ n, P7085628349983929344.a n = A346865 (n + 1)

end A346865

/-! ## A346865.P9161397793953552416

`A008438(n)*A245092(2*n+1)`
-/

namespace A346865.P9161397793953552416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n * A245092 (2 * n + 1)

end

end A346865.P9161397793953552416

namespace A346865

/-- `A008438(n)*A245092(2*n+1)` -/
def P9161397793953552416.Spec : Prop :=
  ∀ n, P9161397793953552416.a n = A346865 (n + 1)

end A346865

/-! ## A346865.P1914316685863461183

`A000203(n+1)*A000203(Δ[n²])`
-/

namespace A346865.P1914316685863461183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346865.P1914316685863461183

namespace A346865

/-- `A000203(n+1)*A000203(Δ[n²])` -/
def P1914316685863461183.Spec : Prop :=
  ∀ n, P1914316685863461183.a n = A346865 (n + 1)

end A346865

/-! ## A346865.P7008683619042290518

`A000203(2*n+1)/A000203(n+1)^-1`
-/

namespace A346865.P7008683619042290518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 * n + 1) : ℚ) / (A000203 (n + 1) : ℚ) ^ (-1 : ℤ)

end

end A346865.P7008683619042290518

namespace A346865

/-- `A000203(2*n+1)/A000203(n+1)^-1` -/
def P7008683619042290518.Spec : Prop :=
  ∀ n, P7008683619042290518.a n = (A346865 (n + 1) : ℚ)

end A346865

/-! ## A346865.P17252933976205018940

`A074285(Δ[n²])`
-/

namespace A346865.P17252933976205018940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346865.P17252933976205018940

namespace A346865

/-- `A074285(Δ[n²])` -/
def P17252933976205018940.Spec : Prop :=
  ∀ n, P17252933976205018940.a n = A346865 (n + 1)

end A346865

/-! ## A346865.P5183240749606865727

`∑{d}[∑[4*n+1], #]`
-/

namespace A346865.P5183240749606865727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A346865.P5183240749606865727

namespace A346865

/-- `∑{d}[∑[4*n+1], #]` -/
def P5183240749606865727.Spec : Prop :=
  ∀ n, (P5183240749606865727.a n : ℤ) = A346865 (n + 1)

end A346865

/-! ## A346865.P1870731830832413782

`A000203(∑[4*n+1])`
-/

namespace A346865.P1870731830832413782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346865.P1870731830832413782

namespace A346865

/-- `A000203(∑[4*n+1])` -/
def P1870731830832413782.Spec : Prop :=
  ∀ n, P1870731830832413782.a n = A346865 (n + 1)

end A346865

/-! ## A346865.P17905211458388552110

`A000203((2*n+1)*(n+1))+and(2, n²)`
-/

namespace A346865.P17905211458388552110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((2 * n + 1) * (n + 1)) + (Nat.land 2 (n ^ 2) : ℤ)

end

end A346865.P17905211458388552110

namespace A346865

/-- `A000203((2*n+1)*(n+1))+and(2, n²)` -/
def P17905211458388552110.Spec : Prop :=
  ∀ n, P17905211458388552110.a n = A346865 (n + 1)

end A346865

/-! ## A346865.P12305565490362155841

`lcm(A000203((2*n+1)*(n+1)), A000203(n+1))`
-/

namespace A346865.P12305565490362155841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 ((2 * n + 1) * (n + 1))) (A000203 (n + 1))

end

end A346865.P12305565490362155841

namespace A346865

/-- `lcm(A000203((2*n+1)*(n+1)), A000203(n+1))` -/
def P12305565490362155841.Spec : Prop :=
  ∀ n, (P12305565490362155841.a n : ℤ) = A346865 (n + 1)

end A346865

/-! ## A346865.P4294490983418409053

`A000203((2*n+1)*(n+1))/gcd(2, A000040(n+2))`
-/

namespace A346865.P4294490983418409053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 ((2 * n + 1) * (n + 1)) : ℚ) / (Int.gcd 2 (A000040 (n + 2)) : ℚ)

end

end A346865.P4294490983418409053

namespace A346865

/-- `A000203((2*n+1)*(n+1))/gcd(2, A000040(n+2))` -/
def P4294490983418409053.Spec : Prop :=
  ∀ n, P4294490983418409053.a n = (A346865 (n + 1) : ℚ)

end A346865

/-! ## A346865.P2805976902718650876

`A000203((2*n+1)*(n+1))+C(2, A000032(n+2))`
-/

namespace A346865.P2805976902718650876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((2 * n + 1) * (n + 1)) + (Nat.choose 2 (A000032 (n + 2)).toNat : ℤ)

end

end A346865.P2805976902718650876

namespace A346865

/-- `A000203((2*n+1)*(n+1))+C(2, A000032(n+2))` -/
def P2805976902718650876.Spec : Prop :=
  ∀ n, P2805976902718650876.a n = A346865 (n + 1)

end A346865

/-! ## A346865.P2494027083856468865

`A000203((2*n+1)*(n+1))+C(2, A000203(n+2))`
-/

namespace A346865.P2494027083856468865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((2 * n + 1) * (n + 1)) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A346865.P2494027083856468865

namespace A346865

/-- `A000203((2*n+1)*(n+1))+C(2, A000203(n+2))` -/
def P2494027083856468865.Spec : Prop :=
  ∀ n, P2494027083856468865.a n = A346865 (n + 1)

end A346865

/-! ## A346865.P18231404696171923818

`A000203((2*n+1)*(n+1))/A000045(gcd(n, n+1))`
-/

namespace A346865.P18231404696171923818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 ((2 * n + 1) * (n + 1)) : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A346865.P18231404696171923818

namespace A346865

/-- `A000203((2*n+1)*(n+1))/A000045(gcd(n, n+1))` -/
def P18231404696171923818.Spec : Prop :=
  ∀ n, P18231404696171923818.a n = (A346865 (n + 1) : ℚ)

end A346865

/-! ## A346865.P1983134646294628863

`A000203((2*n+1)*(n+1))/and(1, A006530(2*n+1))`
-/

namespace A346865.P1983134646294628863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 ((2 * n + 1) * (n + 1)) : ℚ) / (Int.land 1 (A006530 (2 * n + 1)) : ℚ)

end

end A346865.P1983134646294628863

namespace A346865

/-- `A000203((2*n+1)*(n+1))/and(1, A006530(2*n+1))` -/
def P1983134646294628863.Spec : Prop :=
  ∀ n, P1983134646294628863.a n = (A346865 (n + 1) : ℚ)

end A346865

/-! ## A346865.P5132475912898214996

`A008683(A005117(n+1))²*A000203((2*n+1)*(n+1))`
-/

namespace A346865.P5132475912898214996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A000203 ((2 * n + 1) * (n + 1))

end

end A346865.P5132475912898214996

namespace A346865

/-- `A008683(A005117(n+1))²*A000203((2*n+1)*(n+1))` -/
def P5132475912898214996.Spec : Prop :=
  ∀ n, P5132475912898214996.a n = A346865 (n + 1)

end A346865

/-!
# A346866: Sum of divisors of the n-th second hexagonal number.

The programs for A346866, the canonical program `A346866.P14220785514782403903` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346866 has offset 1).

The definition of A346866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346866.P14220785514782403903

`A000203(A014105(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A346866

/-- `A000203(A014105(n+1))` -/
def P14220785514782403903.Spec : Prop :=
  ∀ n, P14220785514782403903.a n = A346866 (n + 1)

theorem P14220785514782403903.correct : P14220785514782403903.Spec := by
  intro n
  simp only [A346866, Nat.add_sub_cancel]

end A346866

/-! ## A346866.P13933869399185685573

`A000203(n+1)*A008438(n+1)`
-/

namespace A346866.P13933869399185685573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A008438 (n + 1)

end

end A346866.P13933869399185685573

namespace A346866

/-- `A000203(n+1)*A008438(n+1)` -/
def P13933869399185685573.Spec : Prop :=
  ∀ n, P13933869399185685573.a n = A346866 (n + 1)

end A346866

/-! ## A346866.P130564863764982351

`abs(A143348(n+1))*A008438(n+1)`
-/

namespace A346866.P130564863764982351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| * A008438 (n + 1)

end

end A346866.P130564863764982351

namespace A346866

/-- `abs(A143348(n+1))*A008438(n+1)` -/
def P130564863764982351.Spec : Prop :=
  ∀ n, P130564863764982351.a n = A346866 (n + 1)

end A346866

/-! ## A346866.P10579268302087044847

`Δ[A160664(n)]*A000203(2*n+3)`
-/

namespace A346866.P10579268302087044847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000203 (2 * n + 3)

end

end A346866.P10579268302087044847

namespace A346866

/-- `Δ[A160664(n)]*A000203(2*n+3)` -/
def P10579268302087044847.Spec : Prop :=
  ∀ n, P10579268302087044847.a n = A346866 (n + 1)

end A346866

/-! ## A346866.P3263437462230429430

`A008438(n+1)*A245092(2*n+1)`
-/

namespace A346866.P3263437462230429430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (n + 1) * A245092 (2 * n + 1)

end

end A346866.P3263437462230429430

namespace A346866

/-- `A008438(n+1)*A245092(2*n+1)` -/
def P3263437462230429430.Spec : Prop :=
  ∀ n, P3263437462230429430.a n = A346866 (n + 1)

end A346866

/-! ## A346866.P7493577017207072585

`A000203(2*n+3)*A000203(n+1)`
-/

namespace A346866.P7493577017207072585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 3) * A000203 (n + 1)

end

end A346866.P7493577017207072585

namespace A346866

/-- `A000203(2*n+3)*A000203(n+1)` -/
def P7493577017207072585.Spec : Prop :=
  ∀ n, P7493577017207072585.a n = A346866 (n + 1)

end A346866

/-! ## A346866.P17689716826426905200

`abs(A000203(n+1)*A121613(n+1))`
-/

namespace A346866.P17689716826426905200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (n + 1) * A121613 (n + 1)|

end

end A346866.P17689716826426905200

namespace A346866

/-- `abs(A000203(n+1)*A121613(n+1))` -/
def P17689716826426905200.Spec : Prop :=
  ∀ n, P17689716826426905200.a n = A346866 (n + 1)

end A346866

/-! ## A346866.P9423890217662878638

`Δ[A326123(n+1)]*A000203(n+1)`
-/

namespace A346866.P9423890217662878638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000203 (n + 1)

end

end A346866.P9423890217662878638

namespace A346866

/-- `Δ[A326123(n+1)]*A000203(n+1)` -/
def P9423890217662878638.Spec : Prop :=
  ∀ n, P9423890217662878638.a n = A346866 (n + 1)

end A346866

/-! ## A346866.P7315344762963203945

`A074285(2*(n+1))`
-/

namespace A346866.P7315344762963203945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074285 (2 * (n + 1))

end

end A346866.P7315344762963203945

namespace A346866

/-- `A074285(2*(n+1))` -/
def P7315344762963203945.Spec : Prop :=
  ∀ n, P7315344762963203945.a n = A346866 (n + 1)

end A346866

/-! ## A346866.P9778966970838996538

`A113184(2*n+3)*A245092(Δ[n²])`
-/

namespace A346866.P9778966970838996538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (2 * n + 3) * A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346866.P9778966970838996538

namespace A346866

/-- `A113184(2*n+3)*A245092(Δ[n²])` -/
def P9778966970838996538.Spec : Prop :=
  ∀ n, P9778966970838996538.a n = A346866 (n + 1)

end A346866

/-! ## A346866.P6345582987517461973

`∑{d}[∑[record[xor(3, n)]], #]`
-/

namespace A346866.P6345582987517461973
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A346866.P6345582987517461973

namespace A346866

/-- `∑{d}[∑[record[xor(3, n)]], #]` -/
def P6345582987517461973.Spec : Prop :=
  ∀ n, (P6345582987517461973.a n : ℤ) = A346866 (n + 1)

end A346866

/-! ## A346866.P8820390541657427883

`∑{d}[∑[4*n+3], #]`
-/

namespace A346866.P8820390541657427883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A346866.P8820390541657427883

namespace A346866

/-- `∑{d}[∑[4*n+3], #]` -/
def P8820390541657427883.Spec : Prop :=
  ∀ n, (P8820390541657427883.a n : ℤ) = A346866 (n + 1)

end A346866

/-! ## A346866.P14756069876220721416

`A000203(∑[record[xor(3, n)]])`
-/

namespace A346866.P14756069876220721416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346866.P14756069876220721416

namespace A346866

/-- `A000203(∑[record[xor(3, n)]])` -/
def P14756069876220721416.Spec : Prop :=
  ∀ n, P14756069876220721416.a n = A346866 (n + 1)

end A346866

/-! ## A346866.P13329337073351884160

`A000203(∑[4*n+3])`
-/

namespace A346866.P13329337073351884160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346866.P13329337073351884160

namespace A346866

/-- `A000203(∑[4*n+3])` -/
def P13329337073351884160.Spec : Prop :=
  ∀ n, P13329337073351884160.a n = A346866 (n + 1)

end A346866

/-!
# A346867: Sum of divisors of the numbers that have middle divisors.

The programs for A346867, the canonical program `A346867.P16453727210105736092` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346867 has offset 1).

The definition of A346867 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346867.P16453727210105736092

`A000203(A071562(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A346867

/-- `A000203(A071562(n+1))` -/
def P16453727210105736092.Spec : Prop :=
  ∀ n, P16453727210105736092.a n = A346867 (n + 1)

theorem P16453727210105736092.correct : P16453727210105736092.Spec := by
  intro n
  simp only [A346867, Nat.add_sub_cancel]

end A346867

/-! ## A346867.P5809949658653585625

`∑{d}[eq[1, A347950(n+1)]+1, #]`
-/

namespace A346867.P5809949658653585625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A346867.P5809949658653585625

namespace A346867

/-- `∑{d}[eq[1, A347950(n+1)]+1, #]` -/
def P5809949658653585625.Spec : Prop :=
  ∀ n, (P5809949658653585625.a n : ℤ) = A346867 (n + 1)

end A346867

/-! ## A346867.P16887345018757178057

`∑{d}[lt[A348327(n+1), 1]+1, #]`
-/

namespace A346867.P16887345018757178057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A346867.P16887345018757178057

namespace A346867

/-- `∑{d}[lt[A348327(n+1), 1]+1, #]` -/
def P16887345018757178057.Spec : Prop :=
  ∀ n, (P16887345018757178057.a n : ℤ) = A346867 (n + 1)

end A346867

/-! ## A346867.P1554909994698821504

`∑{d}[lt[1, A348406(n+1)]+1, #]`
-/

namespace A346867.P1554909994698821504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A346867.P1554909994698821504

namespace A346867

/-- `∑{d}[lt[1, A348406(n+1)]+1, #]` -/
def P1554909994698821504.Spec : Prop :=
  ∀ n, (P1554909994698821504.a n : ℤ) = A346867 (n + 1)

end A346867

/-! ## A346867.P6423504216252146947

`∑{d}[A280919(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A346867.P6423504216252146947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A280919 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A346867.P6423504216252146947

namespace A346867

/-- `∑{d}[A280919(n)+a(n-1), #]` -/
def P6423504216252146947.Spec : Prop :=
  ∀ n, (P6423504216252146947.a n : ℤ) = A346867 (n + 1)

end A346867

/-! ## A346867.P13172164588721978284

`A000203(eq[0, A348327(n+1)]+1)`
-/

namespace A346867.P13172164588721978284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A346867.P13172164588721978284

namespace A346867

/-- `A000203(eq[0, A348327(n+1)]+1)` -/
def P13172164588721978284.Spec : Prop :=
  ∀ n, P13172164588721978284.a n = A346867 (n + 1)

end A346867

/-! ## A346867.P971374376283737928

`A000203(eq[1, A347950(n+1)]+1)`
-/

namespace A346867.P971374376283737928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A346867.P971374376283737928

namespace A346867

/-- `A000203(eq[1, A347950(n+1)]+1)` -/
def P971374376283737928.Spec : Prop :=
  ∀ n, P971374376283737928.a n = A346867 (n + 1)

end A346867

/-! ## A346867.P15674013188606095650

`A000203(lt[0, A067742(n+1)]+1)`
-/

namespace A346867.P15674013188606095650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A346867.P15674013188606095650

namespace A346867

/-- `A000203(lt[0, A067742(n+1)]+1)` -/
def P15674013188606095650.Spec : Prop :=
  ∀ n, P15674013188606095650.a n = A346867 (n + 1)

end A346867

/-! ## A346867.P12646744803020676823

`A000203(lt[0, A071090(n+1)]+1)`
-/

namespace A346867.P12646744803020676823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A346867.P12646744803020676823

namespace A346867

/-- `A000203(lt[0, A071090(n+1)]+1)` -/
def P12646744803020676823.Spec : Prop :=
  ∀ n, P12646744803020676823.a n = A346867 (n + 1)

end A346867

/-!
# A346868: Sum of divisors of the numbers with no middle divisors.

The programs for A346868, the canonical program `A346868.P1835923217682902368` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346868 has offset 1).

The definition of A346868 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071561, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346868.P1835923217682902368

`A000203(A071561(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A346868

/-- `A000203(A071561(n+1))` -/
def P1835923217682902368.Spec : Prop :=
  ∀ n, P1835923217682902368.a n = A346868 (n + 1)

theorem P1835923217682902368.correct : P1835923217682902368.Spec := by
  intro n
  simp only [A346868, Nat.add_sub_cancel]

end A346868

/-! ## A346868.P6289241151999487294

`∑{d}[eq[1, A348327(n+1)]+1, #]`
-/

namespace A346868.P6289241151999487294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A346868.P6289241151999487294

namespace A346868

/-- `∑{d}[eq[1, A348327(n+1)]+1, #]` -/
def P6289241151999487294.Spec : Prop :=
  ∀ n, (P6289241151999487294.a n : ℤ) = A346868 (n + 1)

end A346868

/-! ## A346868.P5273784120176823609

`∑{d}[eq[1, A348364(n+1)]+1, #]`
-/

namespace A346868.P5273784120176823609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A346868.P5273784120176823609

namespace A346868

/-- `∑{d}[eq[1, A348364(n+1)]+1, #]` -/
def P5273784120176823609.Spec : Prop :=
  ∀ n, (P5273784120176823609.a n : ℤ) = A346868 (n + 1)

end A346868

/-! ## A346868.P14454390807356991256

`∑{d}[eq[1, A348406(n+1)]+1, #]`
-/

namespace A346868.P14454390807356991256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A346868.P14454390807356991256

namespace A346868

/-- `∑{d}[eq[1, A348406(n+1)]+1, #]` -/
def P14454390807356991256.Spec : Prop :=
  ∀ n, (P14454390807356991256.a n : ℤ) = A346868 (n + 1)

end A346868

/-! ## A346868.P15563186295883365601

`∑{d}[comp[(n-C(∑[char[∑[n+1]]], 2))*∑[char[∑[n+1]]]], #]`
-/

namespace A346868.P15563186295883365601
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f6 j : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A346868.P15563186295883365601

namespace A346868

/-- `∑{d}[comp[(n-C(∑[char[∑[n+1]]], 2))*∑[char[∑[n+1]]]], #]` -/
def P15563186295883365601.Spec : Prop :=
  ∀ n, (P15563186295883365601.a n : ℤ) = A346868 (n + 1)

end A346868

/-! ## A346868.P10263991359184700705

`∑{d}[comp[A100345(n)], #]`
-/

namespace A346868.P10263991359184700705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A346868.P10263991359184700705

namespace A346868

/-- `∑{d}[comp[A100345(n)], #]` -/
def P10263991359184700705.Spec : Prop :=
  ∀ n, (P10263991359184700705.a n : ℤ) = A346868 (n + 1)

end A346868

/-! ## A346868.P4641316664113638096

`A000203(comp[(n-C(∑[char[∑[n+1]]], 2))*∑[char[∑[n+1]]]])`
-/

namespace A346868.P4641316664113638096
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A346868.P4641316664113638096

namespace A346868

/-- `A000203(comp[(n-C(∑[char[∑[n+1]]], 2))*∑[char[∑[n+1]]]])` -/
def P4641316664113638096.Spec : Prop :=
  ∀ n, P4641316664113638096.a n = A346868 (n + 1)

end A346868

/-! ## A346868.P974248481259279039

`A000203(comp[A100345(n)])`
-/

namespace A346868.P974248481259279039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A346868.P974248481259279039

namespace A346868

/-- `A000203(comp[A100345(n)])` -/
def P974248481259279039.Spec : Prop :=
  ∀ n, P974248481259279039.a n = A346868 (n + 1)

end A346868

/-! ## A346868.P11866270584884059282

`A000203(eq[0, A067742(n+1)]+1)`
-/

namespace A346868.P11866270584884059282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A346868.P11866270584884059282

namespace A346868

/-- `A000203(eq[0, A067742(n+1)]+1)` -/
def P11866270584884059282.Spec : Prop :=
  ∀ n, P11866270584884059282.a n = A346868 (n + 1)

end A346868

/-!
# A346869: Sum of all divisors, except the smallest and the largest of every number, of the first n odd numbers.

The programs for A346869, the canonical program `A346869.P11771609064873086218` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346869 has offset 1).

The definition of A346869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346869.P11771609064873086218

`∑[∑{d}[Δ[n²], #]]-((n+1)²+n)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346869

/-- `∑[∑{d}[Δ[n²], #]]-((n+1)²+n)` -/
def P11771609064873086218.Spec : Prop :=
  ∀ n, P11771609064873086218.a n = A346869 (n + 1)

theorem P11771609064873086218.correct : P11771609064873086218.Spec := by
  intro n
  simp only [A346869, Nat.add_sub_cancel]

end A346869

/-! ## A346869.P5315321956787537183

`∑[∑{d}[2*n+1, #]-(2*n+1)]-n`
-/

namespace A346869.P5315321956787537183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A346869.P5315321956787537183

namespace A346869

/-- `∑[∑{d}[2*n+1, #]-(2*n+1)]-n` -/
def P5315321956787537183.Spec : Prop :=
  ∀ n, P5315321956787537183.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P5840647052322832079

`∑[A346879(n+1)]`
-/

namespace A346869.P5840647052322832079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346869.P5840647052322832079

namespace A346869

/-- `∑[A346879(n+1)]` -/
def P5840647052322832079.Spec : Prop :=
  ∀ n, P5840647052322832079.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P14873152898033430161

`A347153(n+1)-n`
-/

namespace A346869.P14873152898033430161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347153 (n + 1) - (n : ℤ)

end

end A346869.P14873152898033430161

namespace A346869

/-- `A347153(n+1)-n` -/
def P14873152898033430161.Spec : Prop :=
  ∀ n, P14873152898033430161.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P17618487136630584706

`∑[A335022(2*n+1)]`
-/

namespace A346869.P17618487136630584706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335022 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346869.P17618487136630584706

namespace A346869

/-- `∑[A335022(2*n+1)]` -/
def P17618487136630584706.Spec : Prop :=
  ∀ n, P17618487136630584706.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P18208745548199017976

`∑[A346877(n+1)]-n`
-/

namespace A346869.P18208745548199017976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A346869.P18208745548199017976

namespace A346869

/-- `∑[A346877(n+1)]-n` -/
def P18208745548199017976.Spec : Prop :=
  ∀ n, P18208745548199017976.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P13211908518981956136

`∑[A058344(2*n+1)]-n`
-/

namespace A346869.P13211908518981956136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A346869.P13211908518981956136

namespace A346869

/-- `∑[A058344(2*n+1)]-n` -/
def P13211908518981956136.Spec : Prop :=
  ∀ n, P13211908518981956136.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P3035341004081296697

`∑[A296955(2*n+1)]-n`
-/

namespace A346869.P3035341004081296697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A346869.P3035341004081296697

namespace A346869

/-- `∑[A296955(2*n+1)]-n` -/
def P3035341004081296697.Spec : Prop :=
  ∀ n, P3035341004081296697.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P15048542147850923524

`∑[A000203(Δ[n²])-Δ[n²]]-n`
-/

namespace A346869.P15048542147850923524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A346869.P15048542147850923524

namespace A346869

/-- `∑[A000203(Δ[n²])-Δ[n²]]-n` -/
def P15048542147850923524.Spec : Prop :=
  ∀ n, P15048542147850923524.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P11663378281041446352

`(∑[A000203(2*n+1)]+1)%∑[n+1]`
-/

namespace A346869.P11663378281041446352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A346869.P11663378281041446352

namespace A346869

/-- `(∑[A000203(2*n+1)]+1)%∑[n+1]` -/
def P11663378281041446352.Spec : Prop :=
  ∀ n, P11663378281041446352.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P3140378175229520005

`A326123(n+1)-A028387(n)`
-/

namespace A346869.P3140378175229520005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326123 (n + 1) - A028387 n

end

end A346869.P3140378175229520005

namespace A346869

/-- `A326123(n+1)-A028387(n)` -/
def P3140378175229520005.Spec : Prop :=
  ∀ n, P3140378175229520005.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P2581424768552956540

`∑[A048050(2*n+1)]`
-/

namespace A346869.P2581424768552956540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346869.P2581424768552956540

namespace A346869

/-- `∑[A048050(2*n+1)]` -/
def P2581424768552956540.Spec : Prop :=
  ∀ n, P2581424768552956540.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P9554055140547136465

`∑[A001065(comp[2*n])]-n`
-/

namespace A346869.P9554055140547136465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A346869.P9554055140547136465

namespace A346869

/-- `∑[A001065(comp[2*n])]-n` -/
def P9554055140547136465.Spec : Prop :=
  ∀ n, P9554055140547136465.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P8305757154431104460

`∑[A173455(2*n+1)-1]`
-/

namespace A346869.P8305757154431104460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346869.P8305757154431104460

namespace A346869

/-- `∑[A173455(2*n+1)-1]` -/
def P8305757154431104460.Spec : Prop :=
  ∀ n, P8305757154431104460.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P7156087168449985514

`∑[A091570(2*n+1)]-n`
-/

namespace A346869.P7156087168449985514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A346869.P7156087168449985514

namespace A346869

/-- `∑[A091570(2*n+1)]-n` -/
def P7156087168449985514.Spec : Prop :=
  ∀ n, P7156087168449985514.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P18192292274239814252

`∑[A001065(Δ[n²])-1]+1`
-/

namespace A346869.P18192292274239814252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A346869.P18192292274239814252

namespace A346869

/-- `∑[A001065(Δ[n²])-1]+1` -/
def P18192292274239814252.Spec : Prop :=
  ∀ n, P18192292274239814252.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P15359704270138518686

`∑[A237588(2*n+1)]+n²`
-/

namespace A346869.P15359704270138518686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A346869.P15359704270138518686

namespace A346869

/-- `∑[A237588(2*n+1)]+n²` -/
def P15359704270138518686.Spec : Prop :=
  ∀ n, P15359704270138518686.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P2713984082999161465

`n²-∑[A235796(2*n+1)]`
-/

namespace A346869.P2713984082999161465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346869.P2713984082999161465

namespace A346869

/-- `n²-∑[A235796(2*n+1)]` -/
def P2713984082999161465.Spec : Prop :=
  ∀ n, P2713984082999161465.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P15768835394243320000

`∑[A001065(A004277(n)+1)-1]`
-/

namespace A346869.P15768835394243320000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A004277 n + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346869.P15768835394243320000

namespace A346869

/-- `∑[A001065(A004277(n)+1)-1]` -/
def P15768835394243320000.Spec : Prop :=
  ∀ n, P15768835394243320000.a n = A346869 (n + 1)

end A346869

/-! ## A346869.P13577999185572894944

`A244049(2*(n+1))-A346870(n+1)`
-/

namespace A346869.P13577999185572894944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (2 * (n + 1)) - A346870 (n + 1)

end

end A346869.P13577999185572894944

namespace A346869

/-- `A244049(2*(n+1))-A346870(n+1)` -/
def P13577999185572894944.Spec : Prop :=
  ∀ n, P13577999185572894944.a n = A346869 (n + 1)

end A346869

/-!
# A346870: Sum of all divisors, except the smallest and the largest of every number, of the first n positive even numbers.

The programs for A346870, the canonical program `A346870.P3354296508099536706` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346870 has offset 1).

The definition of A346870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346870.P3354296508099536706

`∑[∑{d}[2*(n+1), #]-(2*n+3)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346870

/-- `∑[∑{d}[2*(n+1), #]-(2*n+3)]` -/
def P3354296508099536706.Spec : Prop :=
  ∀ n, P3354296508099536706.a n = A346870 (n + 1)

theorem P3354296508099536706.correct : P3354296508099536706.Spec := by
  intro n
  simp only [A346870, Nat.add_sub_cancel]

end A346870

/-! ## A346870.P13697585064462338522

`∑[A346880(n+1)]`
-/

namespace A346870.P13697585064462338522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P13697585064462338522

namespace A346870

/-- `∑[A346880(n+1)]` -/
def P13697585064462338522.Spec : Prop :=
  ∀ n, P13697585064462338522.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P15952069638913414476

`∑[A346878(n+1)-1]`
-/

namespace A346870.P15952069638913414476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346878 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P15952069638913414476

namespace A346870

/-- `∑[A346878(n+1)-1]` -/
def P15952069638913414476.Spec : Prop :=
  ∀ n, P15952069638913414476.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P9613662662753495946

`A347154(n+1)-(n+1)`
-/

namespace A346870.P9613662662753495946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347154 (n + 1) - (n + 1 : ℤ)

end

end A346870.P9613662662753495946

namespace A346870

/-- `A347154(n+1)-(n+1)` -/
def P9613662662753495946.Spec : Prop :=
  ∀ n, P9613662662753495946.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P2914033937053664805

`∑[A296955(2*(n+1))+n]`
-/

namespace A346870.P2914033937053664805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (2 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P2914033937053664805

namespace A346870

/-- `∑[A296955(2*(n+1))+n]` -/
def P2914033937053664805.Spec : Prop :=
  ∀ n, P2914033937053664805.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P3958527112411700424

`∑[A318505(2*(n+1))+n]`
-/

namespace A346870.P3958527112411700424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (2 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P3958527112411700424

namespace A346870

/-- `∑[A318505(2*(n+1))+n]` -/
def P3958527112411700424.Spec : Prop :=
  ∀ n, P3958527112411700424.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P13975027899040309120

`(n+1)²-∑[A378978(n+1)]`
-/

namespace A346870.P13975027899040309120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P13975027899040309120

namespace A346870

/-- `(n+1)²-∑[A378978(n+1)]` -/
def P13975027899040309120.Spec : Prop :=
  ∀ n, P13975027899040309120.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P8739822333629484392

`∑[A000203(2*(n+1))-(2*n+3)]`
-/

namespace A346870.P8739822333629484392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) - (2 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P8739822333629484392

namespace A346870

/-- `∑[A000203(2*(n+1))-(2*n+3)]` -/
def P8739822333629484392.Spec : Prop :=
  ∀ n, P8739822333629484392.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P9964413168273671690

`∑[A000203(n+2+n)-(n+3)-n]`
-/

namespace A346870.P9964413168273671690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2 + n) - (n + 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P9964413168273671690

namespace A346870

/-- `∑[A000203(n+2+n)-(n+3)-n]` -/
def P9964413168273671690.Spec : Prop :=
  ∀ n, P9964413168273671690.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P7488340587965253178

`∑[A048050(2*(n+1))]`
-/

namespace A346870.P7488340587965253178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P7488340587965253178

namespace A346870

/-- `∑[A048050(2*(n+1))]` -/
def P7488340587965253178.Spec : Prop :=
  ∀ n, P7488340587965253178.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P9746401325877846531

`∑[A001065(2*(n+1))-1]`
-/

namespace A346870.P9746401325877846531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P9746401325877846531

namespace A346870

/-- `∑[A001065(2*(n+1))-1]` -/
def P9746401325877846531.Spec : Prop :=
  ∀ n, P9746401325877846531.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P4026599338869058963

`∑[A173455(2*(n+1))-1]`
-/

namespace A346870.P4026599338869058963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P4026599338869058963

namespace A346870

/-- `∑[A173455(2*(n+1))-1]` -/
def P4026599338869058963.Spec : Prop :=
  ∀ n, P4026599338869058963.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P1355833359759102342

`∑[abs(1-A001065(Δ[n²]+1))]`
-/

namespace A346870.P1355833359759102342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001065 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P1355833359759102342

namespace A346870

/-- `∑[abs(1-A001065(Δ[n²]+1))]` -/
def P1355833359759102342.Spec : Prop :=
  ∀ n, P1355833359759102342.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P6013200245675884422

`A244049(2*(n+1))-A346869(n+1)`
-/

namespace A346870.P6013200245675884422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (2 * (n + 1)) - A346869 (n + 1)

end

end A346870.P6013200245675884422

namespace A346870

/-- `A244049(2*(n+1))-A346869(n+1)` -/
def P6013200245675884422.Spec : Prop :=
  ∀ n, P6013200245675884422.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P13930062240321061749

`A130472(2*n+1)+∑[A001065(2*(n+1))]`
-/

namespace A346870.P13930062240321061749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P13930062240321061749

namespace A346870

/-- `A130472(2*n+1)+∑[A001065(2*(n+1))]` -/
def P13930062240321061749.Spec : Prop :=
  ∀ n, P13930062240321061749.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P7619092051897682920

`∑[A152770(2*(n+1))+A070824(2*(n+1))]`
-/

namespace A346870.P7619092051897682920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (2 * (n + 1)) + A070824 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P7619092051897682920

namespace A346870

/-- `∑[A152770(2*(n+1))+A070824(2*(n+1))]` -/
def P7619092051897682920.Spec : Prop :=
  ∀ n, P7619092051897682920.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P2817057581986133579

`∑[A244049(2*(n+1))-A244049(2*n+1)]`
-/

namespace A346870.P2817057581986133579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (2 * (n + 1)) - A244049 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P2817057581986133579

namespace A346870

/-- `∑[A244049(2*(n+1))-A244049(2*n+1)]` -/
def P2817057581986133579.Spec : Prop :=
  ∀ n, P2817057581986133579.a n = A346870 (n + 1)

end A346870

/-! ## A346870.P13143699912124898481

`∑[A008619(A294015(2*(n+1)))-2]`
-/

namespace A346870.P13143699912124898481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A294015 (2 * (n + 1))).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346870.P13143699912124898481

namespace A346870

/-- `∑[A008619(A294015(2*(n+1)))-2]` -/
def P13143699912124898481.Spec : Prop :=
  ∀ n, P13143699912124898481.a n = A346870 (n + 1)

end A346870

/-!
# A346871: Irregular triangle read by rows in which row n lists the row A000040(n) of A237591, n >= 1.

The programs for A346871, there is no canonical definition to state claims against.
-/

/-! ## A346871.P7752343934352310516

`A236103(A358746(n+5)+A118955(n+1))`
-/

namespace A346871.P7752343934352310516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236103 (A358746 (n + 5) + A118955 (n + 1)).toNat

end

end A346871.P7752343934352310516

/-! ## A346871.P8417476410766844151

`A333516(A000079(2*(n+2))%A315834(3*n+1))`
-/

namespace A346871.P8417476410766844151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333516 (Int.tmod (A000079 (2 * (n + 2))) (A315834 (3 * n + 1))).toNat

end

end A346871.P8417476410766844151

/-!
# A346872: Irregular triangle read by rows in which row n lists the row 2^(n-1) of A237591, n >= 1.

The programs for A346872, there is no canonical definition to state claims against.
-/

/-! ## A346872.P7492189252616703281

`A225244(gcd(A046059(n+1), A334437(n)))`
-/

namespace A346872.P7492189252616703281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 (Int.gcd (A046059 (n + 1)) (A334437 n))

end

end A346872.P7492189252616703281

/-!
# A346873: Triangle read by rows in which row n lists the row A000217(n) of A237591, n >= 1.

The programs for A346873, there is no canonical definition to state claims against.
-/

/-! ## A346873.P18360451945625824369

`A159481(A270103(n+1)%A270099(n))`
-/

namespace A346873.P18360451945625824369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (Int.tmod (A270103 (n + 1)) (A270099 n)).toNat

end

end A346873.P18360451945625824369

/-! ## A346873.P5477840057725178733

`A159481(A270103(n+1))%A076197(n+1)`
-/

namespace A346873.P5477840057725178733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159481 (A270103 (n + 1)).toNat) (A076197 (n + 1))

end

end A346873.P5477840057725178733

/-! ## A346873.P4162203319121410366

`∏{e}[A006516(A130303(n+1)), #]`
-/

namespace A346873.P4162203319121410366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (A130303 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A346873.P4162203319121410366

/-! ## A346873.P13880533437922274277

`A130303(n+1)-A124625(A136470(n))`
-/

namespace A346873.P13880533437922274277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130303 (n + 1) - A124625 (A136470 n).toNat

end

end A346873.P13880533437922274277

/-!
# A346874: Irregular triangle read by rows in which row n lists the row 2^n - 1 of A237591, n >= 1.

The programs for A346874, there is no canonical definition to state claims against.
-/

/-! ## A346874.P3489354384703833677

`Δ[A247983(∑[A346872(n+1)])]`
-/

namespace A346874.P3489354384703833677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346872 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346874.P3489354384703833677

/-! ## A346874.P2551888274554936148

`A140740(A187829(n+1)-A059995(n))`
-/

namespace A346874.P2551888274554936148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140740 (A187829 (n + 1) - A059995 n).toNat

end

end A346874.P2551888274554936148

/-! ## A346874.P10105632597175923176

`A140740(A187829(n+1)-A210715(n))`
-/

namespace A346874.P10105632597175923176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140740 (A187829 (n + 1) - A210715 n).toNat

end

end A346874.P10105632597175923176

/-! ## A346874.P9597549362692062725

`A140740(A187829(n+1)-A161264(n+1))`
-/

namespace A346874.P9597549362692062725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140740 (A187829 (n + 1) - A161264 (n + 1)).toNat

end

end A346874.P9597549362692062725

/-!
# A346875: Irregular triangle read by rows in which row n lists the row A000384(n) of A237591, n >= 1.

The programs for A346875, there is no canonical definition to state claims against.
-/

/-! ## A346875.P13256947075024920768

`A346873(comp[round(sqrt(n))²+n])`
-/

namespace A346875.P13256947075024920768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A346875.P13256947075024920768

/-!
# A346877: Sum of the divisors, except for the largest, of the n-th odd number.

The programs for A346877, the canonical program `A346877.P16742217085109088791` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346877 has offset 1).

The definition of A346877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346877.P387985233037157709

`A057427(n)+A346879(n+1)`
-/

namespace A346877.P387985233037157709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A346879 (n + 1)

end

end A346877.P387985233037157709

namespace A346877

/-- `A057427(n)+A346879(n+1)` -/
def P387985233037157709.Spec : Prop :=
  ∀ n, P387985233037157709.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P16742217085109088791

`A001065(2*n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A346877

/-- `A001065(2*n+1)` -/
def P16742217085109088791.Spec : Prop :=
  ∀ n, P16742217085109088791.a n = A346877 (n + 1)

theorem P16742217085109088791.correct : P16742217085109088791.Spec := by
  intro n
  simp only [A346877, Nat.add_sub_cancel]

end A346877

/-! ## A346877.P9148075879732977894

`∑{d}[2*n+1, #]-Δ[n²]`
-/

namespace A346877.P9148075879732977894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A346877.P9148075879732977894

namespace A346877

/-- `∑{d}[2*n+1, #]-Δ[n²]` -/
def P9148075879732977894.Spec : Prop :=
  ∀ n, P9148075879732977894.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P11736478700461799519

`∑{d}[2*n+1, #]-1-2*n`
-/

namespace A346877.P11736478700461799519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1 - (2 * n : ℤ)

end

end A346877.P11736478700461799519

namespace A346877

/-- `∑{d}[2*n+1, #]-1-2*n` -/
def P11736478700461799519.Spec : Prop :=
  ∀ n, P11736478700461799519.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P403046927064184779

`∑{d}[2*n+1, #%(2*n+1)]`
-/

namespace A346877.P403046927064184779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % (2 * n + 1)

end

end A346877.P403046927064184779

namespace A346877

/-- `∑{d}[2*n+1, #%(2*n+1)]` -/
def P403046927064184779.Spec : Prop :=
  ∀ n, (P403046927064184779.a n : ℤ) = A346877 (n + 1)

end A346877

/-! ## A346877.P12601624339696897923

`A058344(Δ[n²])`
-/

namespace A346877.P12601624339696897923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346877.P12601624339696897923

namespace A346877

/-- `A058344(Δ[n²])` -/
def P12601624339696897923.Spec : Prop :=
  ∀ n, P12601624339696897923.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P17737169414960042406

`A296955(Δ[n²])`
-/

namespace A346877.P17737169414960042406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346877.P17737169414960042406

namespace A346877

/-- `A296955(Δ[n²])` -/
def P17737169414960042406.Spec : Prop :=
  ∀ n, P17737169414960042406.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P16391688794691691867

`A281006(Δ[n²])-1`
-/

namespace A346877.P16391688794691691867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A346877.P16391688794691691867

namespace A346877

/-- `A281006(Δ[n²])-1` -/
def P16391688794691691867.Spec : Prop :=
  ∀ n, P16391688794691691867.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P14180221527174100860

`A008438(n)-Δ[n²]`
-/

namespace A346877.P14180221527174100860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A346877.P14180221527174100860

namespace A346877

/-- `A008438(n)-Δ[n²]` -/
def P14180221527174100860.Spec : Prop :=
  ∀ n, P14180221527174100860.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P12383880104990332822

`abs(A058344(2*n+1))`
-/

namespace A346877.P12383880104990332822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058344 (2 * n + 1)|

end

end A346877.P12383880104990332822

namespace A346877

/-- `abs(A058344(2*n+1))` -/
def P12383880104990332822.Spec : Prop :=
  ∀ n, P12383880104990332822.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P3286533301273990804

`A000203(Δ[n²])-Δ[n²]`
-/

namespace A346877.P3286533301273990804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A346877.P3286533301273990804

namespace A346877

/-- `A000203(Δ[n²])-Δ[n²]` -/
def P3286533301273990804.Spec : Prop :=
  ∀ n, P3286533301273990804.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P2332307346448852762

`floor(A294015(2*n+1)/2)`
-/

namespace A346877.P2332307346448852762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294015 (2 * n + 1) : ℚ) / 2⌋

end

end A346877.P2332307346448852762

namespace A346877

/-- `floor(A294015(2*n+1)/2)` -/
def P2332307346448852762.Spec : Prop :=
  ∀ n, P2332307346448852762.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P760897399212120714

`∑{d}[2*n+1, #-A000010(#)]`
-/

namespace A346877.P760897399212120714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A000010 d)

end

end A346877.P760897399212120714

namespace A346877

/-- `∑{d}[2*n+1, #-A000010(#)]` -/
def P760897399212120714.Spec : Prop :=
  ∀ n, P760897399212120714.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P636718275910970572

`2*n+1-A033879(2*n+1)`
-/

namespace A346877.P636718275910970572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A033879 (2 * n + 1)

end

end A346877.P636718275910970572

namespace A346877

/-- `2*n+1-A033879(2*n+1)` -/
def P636718275910970572.Spec : Prop :=
  ∀ n, P636718275910970572.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P11824332169746167248

`A000203(2*n+1)-1-2*n`
-/

namespace A346877.P11824332169746167248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - 1 - (2 * n : ℤ)

end

end A346877.P11824332169746167248

namespace A346877

/-- `A000203(2*n+1)-1-2*n` -/
def P11824332169746167248.Spec : Prop :=
  ∀ n, P11824332169746167248.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P16839987167828348556

`abs(2*n-A000203(comp[2*n]))-1`
-/

namespace A346877.P16839987167828348556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)| - 1

end

end A346877.P16839987167828348556

namespace A346877

/-- `abs(2*n-A000203(comp[2*n]))-1` -/
def P16839987167828348556.Spec : Prop :=
  ∀ n, P16839987167828348556.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P885474230486405339

`A346879(n+1)-A057428(n)`
-/

namespace A346877.P885474230486405339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346879 (n + 1) - A057428 n

end

end A346877.P885474230486405339

namespace A346877

/-- `A346879(n+1)-A057428(n)` -/
def P885474230486405339.Spec : Prop :=
  ∀ n, P885474230486405339.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P15028508918172046214

`n-(A016777(n)-A000203(2*n+1))`
-/

namespace A346877.P15028508918172046214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A016777 n - A000203 (2 * n + 1))

end

end A346877.P15028508918172046214

namespace A346877

/-- `n-(A016777(n)-A000203(2*n+1))` -/
def P15028508918172046214.Spec : Prop :=
  ∀ n, P15028508918172046214.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P5799934779600670679

`A163163(2*n+1)-A000005(2*n+1)`
-/

namespace A346877.P5799934779600670679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (2 * n + 1) - A000005 (2 * n + 1)

end

end A346877.P5799934779600670679

namespace A346877

/-- `A163163(2*n+1)-A000005(2*n+1)` -/
def P5799934779600670679.Spec : Prop :=
  ∀ n, P5799934779600670679.a n = A346877 (n + 1)

end A346877

/-! ## A346877.P8189547599875589440

`A336851(A064216(n+1))`
-/

namespace A346877.P8189547599875589440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336851 (A064216 (n + 1)).toNat

end

end A346877.P8189547599875589440

namespace A346877

/-- `A336851(A064216(n+1))` -/
def P8189547599875589440.Spec : Prop :=
  ∀ n, P8189547599875589440.a n = A346877 (n + 1)

end A346877

/-!
# A346878: Sum of the divisors, except for the largest, of the n-th positive even number.

The programs for A346878, the canonical program `A346878.P5483888305537072488` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346878 has offset 1).

The definition of A346878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346878.P5483888305537072488

`1+A346880(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A346878

/-- `1+A346880(n+1)` -/
def P5483888305537072488.Spec : Prop :=
  ∀ n, P5483888305537072488.a n = A346878 (n + 1)

theorem P5483888305537072488.correct : P5483888305537072488.Spec := by
  intro n
  simp only [A346878, Nat.add_sub_cancel]

end A346878

/-! ## A346878.P16781705417524167016

`A001065(2*(n+1))`
-/

namespace A346878.P16781705417524167016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * (n + 1))

end

end A346878.P16781705417524167016

namespace A346878

/-- `A001065(2*(n+1))` -/
def P16781705417524167016.Spec : Prop :=
  ∀ n, P16781705417524167016.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P18161688359456406271

`∑{d}[2*(n+1), #]-2*(n+1)`
-/

namespace A346878.P18161688359456406271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (2 * (n + 1) : ℤ)

end

end A346878.P18161688359456406271

namespace A346878

/-- `∑{d}[2*(n+1), #]-2*(n+1)` -/
def P18161688359456406271.Spec : Prop :=
  ∀ n, P18161688359456406271.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P3113748436580403598

`∑{d}[n+2+n, #]-(n+2)-n`
-/

namespace A346878.P3113748436580403598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 2 : ℤ) - (n : ℤ)

end

end A346878.P3113748436580403598

namespace A346878

/-- `∑{d}[n+2+n, #]-(n+2)-n` -/
def P3113748436580403598.Spec : Prop :=
  ∀ n, P3113748436580403598.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P2823194710436523533

`A326146(2*(n+1))+2`
-/

namespace A346878.P2823194710436523533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 (2 * (n + 1)) + 2

end

end A346878.P2823194710436523533

namespace A346878

/-- `A326146(2*(n+1))+2` -/
def P2823194710436523533.Spec : Prop :=
  ∀ n, P2823194710436523533.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P8609943306429619827

`A281006(2*(n+1))-2`
-/

namespace A346878.P8609943306429619827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 (2 * (n + 1)) - 2

end

end A346878.P8609943306429619827

namespace A346878

/-- `A281006(2*(n+1))-2` -/
def P8609943306429619827.Spec : Prop :=
  ∀ n, P8609943306429619827.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P3659129038486408071

`floor(A294015(2*(n+1))/2)`
-/

namespace A346878.P3659129038486408071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294015 (2 * (n + 1)) : ℚ) / 2⌋

end

end A346878.P3659129038486408071

namespace A346878

/-- `floor(A294015(2*(n+1))/2)` -/
def P3659129038486408071.Spec : Prop :=
  ∀ n, P3659129038486408071.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P18234755897426972871

`A296955(2*(n+1))+n+1`
-/

namespace A346878.P18234755897426972871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A346878.P18234755897426972871

namespace A346878

/-- `A296955(2*(n+1))+n+1` -/
def P18234755897426972871.Spec : Prop :=
  ∀ n, P18234755897426972871.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P8668613170114782312

`A318505(2*(n+1))+n+1`
-/

namespace A346878.P8668613170114782312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A346878.P8668613170114782312

namespace A346878

/-- `A318505(2*(n+1))+n+1` -/
def P8668613170114782312.Spec : Prop :=
  ∀ n, P8668613170114782312.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P2026576364051112227

`A062731(n+1)-2*(n+1)`
-/

namespace A346878.P2026576364051112227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (n + 1) - (2 * (n + 1) : ℤ)

end

end A346878.P2026576364051112227

namespace A346878

/-- `A062731(n+1)-2*(n+1)` -/
def P2026576364051112227.Spec : Prop :=
  ∀ n, P2026576364051112227.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P17783943768819989862

`A326061(2*(n+1))-(n+1)`
-/

namespace A346878.P17783943768819989862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326061 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A346878.P17783943768819989862

namespace A346878

/-- `A326061(2*(n+1))-(n+1)` -/
def P17783943768819989862.Spec : Prop :=
  ∀ n, P17783943768819989862.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P7556963902479072533

`2*(n+1)-A378978(n+1)`
-/

namespace A346878.P7556963902479072533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A378978 (n + 1)

end

end A346878.P7556963902479072533

namespace A346878

/-- `2*(n+1)-A378978(n+1)` -/
def P7556963902479072533.Spec : Prop :=
  ∀ n, P7556963902479072533.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P10659824005863480510

`A000203(2*(n+1))-2*(n+1)`
-/

namespace A346878.P10659824005863480510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A346878.P10659824005863480510

namespace A346878

/-- `A000203(2*(n+1))-2*(n+1)` -/
def P10659824005863480510.Spec : Prop :=
  ∀ n, P10659824005863480510.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P11399584699276994393

`A000203(n+2+n)-(n+2)-n`
-/

namespace A346878.P11399584699276994393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2 + n) - (n + 2 : ℤ) - (n : ℤ)

end

end A346878.P11399584699276994393

namespace A346878

/-- `A000203(n+2+n)-(n+2)-n` -/
def P11399584699276994393.Spec : Prop :=
  ∀ n, P11399584699276994393.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P12146486383805127726

`Δ[A000203(2*n)-(2*n-a(n-1))]` with `a(0)=0`
-/

namespace A346878.P12146486383805127726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000203 (2 * n) - ((2 * n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346878.P12146486383805127726

namespace A346878

/-- `Δ[A000203(2*n)-(2*n-a(n-1))]` -/
def P12146486383805127726.Spec : Prop :=
  ∀ n, P12146486383805127726.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P16670742866176978213

`A054785(n+1)+A033880(n+1)`
-/

namespace A346878.P16670742866176978213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) + A033880 (n + 1)

end

end A346878.P16670742866176978213

namespace A346878

/-- `A054785(n+1)+A033880(n+1)` -/
def P16670742866176978213.Spec : Prop :=
  ∀ n, P16670742866176978213.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P8329793653704189969

`A091818(n+1)+A000593(n+1)`
-/

namespace A346878.P8329793653704189969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) + A000593 (n + 1)

end

end A346878.P8329793653704189969

namespace A346878

/-- `A091818(n+1)+A000593(n+1)` -/
def P8329793653704189969.Spec : Prop :=
  ∀ n, P8329793653704189969.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P11039926079702067685

`A326990(n+1)+A294015(n+1)`
-/

namespace A346878.P11039926079702067685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326990 (n + 1) + A294015 (n + 1)

end

end A346878.P11039926079702067685

namespace A346878

/-- `A326990(n+1)+A294015(n+1)` -/
def P11039926079702067685.Spec : Prop :=
  ∀ n, P11039926079702067685.a n = A346878 (n + 1)

end A346878

/-! ## A346878.P2424249720410534688

`A054785(n+1)-A033879(n+1)`
-/

namespace A346878.P2424249720410534688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A033879 (n + 1)

end

end A346878.P2424249720410534688

namespace A346878

/-- `A054785(n+1)-A033879(n+1)` -/
def P2424249720410534688.Spec : Prop :=
  ∀ n, P2424249720410534688.a n = A346878 (n + 1)

end A346878

/-!
# A346879: Sum of the divisors, except the smallest and the largest, of the n-th odd number.

The programs for A346879, the canonical program `A346879.P2705901714156670864` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346879 has offset 1).

The definition of A346879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346879.P2705901714156670864

`A048050(2*n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A346879

/-- `A048050(2*n+1)` -/
def P2705901714156670864.Spec : Prop :=
  ∀ n, P2705901714156670864.a n = A346879 (n + 1)

theorem P2705901714156670864.correct : P2705901714156670864.Spec := by
  intro n
  simp only [A346879, Nat.add_sub_cancel]

end A346879

/-! ## A346879.P16517078548300953982

`A335022(Δ[n²])`
-/

namespace A346879.P16517078548300953982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335022 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346879.P16517078548300953982

namespace A346879

/-- `A335022(Δ[n²])` -/
def P16517078548300953982.Spec : Prop :=
  ∀ n, P16517078548300953982.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P14804046219994294011

`abs(A335022(2*n+1))`
-/

namespace A346879.P14804046219994294011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A335022 (2 * n + 1)|

end

end A346879.P14804046219994294011

namespace A346879

/-- `abs(A335022(2*n+1))` -/
def P14804046219994294011.Spec : Prop :=
  ∀ n, P14804046219994294011.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P13554322001063927610

`A008438(n)-record[2-xor(1, -n)]`
-/

namespace A346879.P13554322001063927610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346879.P13554322001063927610

namespace A346879

/-- `A008438(n)-record[2-xor(1, -n)]` -/
def P13554322001063927610.Spec : Prop :=
  ∀ n, P13554322001063927610.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P2577250689407683049

`A000203(Δ[n²])-record[2-xor(1, -n)]`
-/

namespace A346879.P2577250689407683049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A346879.P2577250689407683049

namespace A346879

/-- `A000203(Δ[n²])-record[2-xor(1, -n)]` -/
def P2577250689407683049.Spec : Prop :=
  ∀ n, P2577250689407683049.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P10924952779942589241

`A008438(n)-A103517(n)`
-/

namespace A346879.P10924952779942589241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n - A103517 n

end

end A346879.P10924952779942589241

namespace A346879

/-- `A008438(n)-A103517(n)` -/
def P10924952779942589241.Spec : Prop :=
  ∀ n, P10924952779942589241.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P5342266218753799997

`A346877(n+1)+A057428(n)`
-/

namespace A346879.P5342266218753799997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346877 (n + 1) + A057428 n

end

end A346879.P5342266218753799997

namespace A346879

/-- `A346877(n+1)+A057428(n)` -/
def P5342266218753799997.Spec : Prop :=
  ∀ n, P5342266218753799997.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P13196295204009462881

`A346877(n+1)-A057427(n)`
-/

namespace A346879.P13196295204009462881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346877 (n + 1) - A057427 n

end

end A346879.P13196295204009462881

namespace A346879

/-- `A346877(n+1)-A057427(n)` -/
def P13196295204009462881.Spec : Prop :=
  ∀ n, P13196295204009462881.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P5385900915386134658

`A058344(2*n+1)+A057428(n)`
-/

namespace A346879.P5385900915386134658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (2 * n + 1) + A057428 n

end

end A346879.P5385900915386134658

namespace A346879

/-- `A058344(2*n+1)+A057428(n)` -/
def P5385900915386134658.Spec : Prop :=
  ∀ n, P5385900915386134658.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P7537238723185017525

`A004277(n)-A033879(2*n+1)`
-/

namespace A346879.P7537238723185017525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A033879 (2 * n + 1)

end

end A346879.P7537238723185017525

namespace A346879

/-- `A004277(n)-A033879(2*n+1)` -/
def P7537238723185017525.Spec : Prop :=
  ∀ n, P7537238723185017525.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P8725121517967527032

`A000203(2*n+1)-A103517(n)`
-/

namespace A346879.P8725121517967527032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A103517 n

end

end A346879.P8725121517967527032

namespace A346879

/-- `A000203(2*n+1)-A103517(n)` -/
def P8725121517967527032.Spec : Prop :=
  ∀ n, P8725121517967527032.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P11021954147009599716

`A058344(2*n+1)-A057427(n)`
-/

namespace A346879.P11021954147009599716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (2 * n + 1) - A057427 n

end

end A346879.P11021954147009599716

namespace A346879

/-- `A058344(2*n+1)-A057427(n)` -/
def P11021954147009599716.Spec : Prop :=
  ∀ n, P11021954147009599716.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P6214963780946167177

`abs(A004277(n)+1-A000203(comp[2*n]))-1`
-/

namespace A346879.P6214963780946167177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 n + 1 - A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)| - 1

end

end A346879.P6214963780946167177

namespace A346879

/-- `abs(A004277(n)+1-A000203(comp[2*n]))-1` -/
def P6214963780946167177.Spec : Prop :=
  ∀ n, P6214963780946167177.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P2098267494240266843

`A000203(2*n+1)-(n+1)*gcd(2, A000010(n+2))`
-/

namespace A346879.P2098267494240266843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - ((n + 1) * Int.gcd 2 (A000010 (n + 2)) : ℤ)

end

end A346879.P2098267494240266843

namespace A346879

/-- `A000203(2*n+1)-(n+1)*gcd(2, A000010(n+2))` -/
def P2098267494240266843.Spec : Prop :=
  ∀ n, P2098267494240266843.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P3999842541393098790

`A000203(2*n+1)-(n+1)*A000032(C(2, n+2))`
-/

namespace A346879.P3999842541393098790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - (n + 1 : ℤ) * A000032 (Nat.choose 2 (n + 2))

end

end A346879.P3999842541393098790

namespace A346879

/-- `A000203(2*n+1)-(n+1)*A000032(C(2, n+2))` -/
def P3999842541393098790.Spec : Prop :=
  ∀ n, P3999842541393098790.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P8140497786105277810

`A000203(2*n+1)-(and(1, A000040(n+1))+2*n+1)`
-/

namespace A346879.P8140497786105277810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - (Int.land 1 (A000040 (n + 1)) + (2 * n + 1 : ℤ))

end

end A346879.P8140497786105277810

namespace A346879

/-- `A000203(2*n+1)-(and(1, A000040(n+1))+2*n+1)` -/
def P8140497786105277810.Spec : Prop :=
  ∀ n, P8140497786105277810.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P11726790628033190381

`A173455(Δ[n²])-1`
-/

namespace A346879.P11726790628033190381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A346879.P11726790628033190381

namespace A346879

/-- `A173455(Δ[n²])-1` -/
def P11726790628033190381.Spec : Prop :=
  ∀ n, P11726790628033190381.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P3599149530288349233

`A001065(comp[2*(n+1)]+2)-1`
-/

namespace A346879.P3599149530288349233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) - 1

end

end A346879.P3599149530288349233

namespace A346879

/-- `A001065(comp[2*(n+1)]+2)-1` -/
def P3599149530288349233.Spec : Prop :=
  ∀ n, P3599149530288349233.a n = A346879 (n + 1)

end A346879

/-! ## A346879.P15415313159821403853

`A091570(A254667(2*n+1))-1`
-/

namespace A346879.P15415313159821403853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (A254667 (2 * n + 1)).toNat - 1

end

end A346879.P15415313159821403853

namespace A346879

/-- `A091570(A254667(2*n+1))-1` -/
def P15415313159821403853.Spec : Prop :=
  ∀ n, P15415313159821403853.a n = A346879 (n + 1)

end A346879

/-!
# A346880: Sum of the divisors, except the smallest and the largest, of the n-th positive even number.

The programs for A346880, the canonical program `A346880.P3202443241792394982` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346880 has offset 1).

The definition of A346880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346880.P3202443241792394982

`A048050(2*(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A346880

/-- `A048050(2*(n+1))` -/
def P3202443241792394982.Spec : Prop :=
  ∀ n, P3202443241792394982.a n = A346880 (n + 1)

theorem P3202443241792394982.correct : P3202443241792394982.Spec := by
  intro n
  simp only [A346880, Nat.add_sub_cancel]

end A346880

/-! ## A346880.P9493715607082932400

`∑{d}[2*(n+1), #]-(2*n+3)`
-/

namespace A346880.P9493715607082932400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (2 * n + 3 : ℤ)

end

end A346880.P9493715607082932400

namespace A346880

/-- `∑{d}[2*(n+1), #]-(2*n+3)` -/
def P9493715607082932400.Spec : Prop :=
  ∀ n, P9493715607082932400.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P9054704134098293619

`abs(Δ[n²]-∑{d}[Δ[n²]+1, #])-2`
-/

namespace A346880.P9054704134098293619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n).natAbs, d : ℕ) : ℤ)| - 2

end

end A346880.P9054704134098293619

namespace A346880

/-- `abs(Δ[n²]-∑{d}[Δ[n²]+1, #])-2` -/
def P9054704134098293619.Spec : Prop :=
  ∀ n, P9054704134098293619.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P16633657403871057175

`A346878(n+1)-1`
-/

namespace A346880.P16633657403871057175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346878 (n + 1) - 1

end

end A346880.P16633657403871057175

namespace A346880

/-- `A346878(n+1)-1` -/
def P16633657403871057175.Spec : Prop :=
  ∀ n, P16633657403871057175.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P9120184373531918836

`A326146(2*(n+1))+1`
-/

namespace A346880.P9120184373531918836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 (2 * (n + 1)) + 1

end

end A346880.P9120184373531918836

namespace A346880

/-- `A326146(2*(n+1))+1` -/
def P9120184373531918836.Spec : Prop :=
  ∀ n, P9120184373531918836.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P13960120630145448761

`A281006(2*(n+1))-3`
-/

namespace A346880.P13960120630145448761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 (2 * (n + 1)) - 3

end

end A346880.P13960120630145448761

namespace A346880

/-- `A281006(2*(n+1))-3` -/
def P13960120630145448761.Spec : Prop :=
  ∀ n, P13960120630145448761.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P16699821220508279680

`A296955(2*(n+1))+n`
-/

namespace A346880.P16699821220508279680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (2 * (n + 1)) + (n : ℤ)

end

end A346880.P16699821220508279680

namespace A346880

/-- `A296955(2*(n+1))+n` -/
def P16699821220508279680.Spec : Prop :=
  ∀ n, P16699821220508279680.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P7809866057396313014

`A318505(2*(n+1))+n`
-/

namespace A346880.P7809866057396313014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (2 * (n + 1)) + (n : ℤ)

end

end A346880.P7809866057396313014

namespace A346880

/-- `A318505(2*(n+1))+n` -/
def P7809866057396313014.Spec : Prop :=
  ∀ n, P7809866057396313014.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P1381055897602853767

`Δ[n²]-A378978(n+1)`
-/

namespace A346880.P1381055897602853767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A378978 (n + 1)

end

end A346880.P1381055897602853767

namespace A346880

/-- `Δ[n²]-A378978(n+1)` -/
def P1381055897602853767.Spec : Prop :=
  ∀ n, P1381055897602853767.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P16633449967228472707

`A326061(2*(n+1))-(n+2)`
-/

namespace A346880.P16633449967228472707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326061 (2 * (n + 1)) - (n + 2 : ℤ)

end

end A346880.P16633449967228472707

namespace A346880

/-- `A326061(2*(n+1))-(n+2)` -/
def P16633449967228472707.Spec : Prop :=
  ∀ n, P16633449967228472707.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P11708838377938107912

`A062731(n+1)-(2*n+3)`
-/

namespace A346880.P11708838377938107912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (n + 1) - (2 * n + 3 : ℤ)

end

end A346880.P11708838377938107912

namespace A346880

/-- `A062731(n+1)-(2*n+3)` -/
def P11708838377938107912.Spec : Prop :=
  ∀ n, P11708838377938107912.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P5788803710916111759

`Δ[n²]-A033879(2*(n+1))`
-/

namespace A346880.P5788803710916111759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A033879 (2 * (n + 1))

end

end A346880.P5788803710916111759

namespace A346880

/-- `Δ[n²]-A033879(2*(n+1))` -/
def P5788803710916111759.Spec : Prop :=
  ∀ n, P5788803710916111759.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P14380019216900686577

`A000203(2*(n+1))-(2*n+3)`
-/

namespace A346880.P14380019216900686577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) - (2 * n + 3 : ℤ)

end

end A346880.P14380019216900686577

namespace A346880

/-- `A000203(2*(n+1))-(2*n+3)` -/
def P14380019216900686577.Spec : Prop :=
  ∀ n, P14380019216900686577.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P6186529049959679623

`A000203(n+2+n)-(n+3)-n`
-/

namespace A346880.P6186529049959679623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2 + n) - (n + 3 : ℤ) - (n : ℤ)

end

end A346880.P6186529049959679623

namespace A346880

/-- `A000203(n+2+n)-(n+3)-n` -/
def P6186529049959679623.Spec : Prop :=
  ∀ n, P6186529049959679623.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P9427610274249175117

`A062967(n+1)+A000593(n+1)`
-/

namespace A346880.P9427610274249175117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062967 (n + 1) + A000593 (n + 1)

end

end A346880.P9427610274249175117

namespace A346880

/-- `A062967(n+1)+A000593(n+1)` -/
def P9427610274249175117.Spec : Prop :=
  ∀ n, P9427610274249175117.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P18244857419357659185

`A326990(n+1)+A091818(n+1)`
-/

namespace A346880.P18244857419357659185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326990 (n + 1) + A091818 (n + 1)

end

end A346880.P18244857419357659185

namespace A346880

/-- `A326990(n+1)+A091818(n+1)` -/
def P18244857419357659185.Spec : Prop :=
  ∀ n, P18244857419357659185.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P15475927213005896641

`A033880(n+1)+A054785(n+1)-1`
-/

namespace A346880.P15475927213005896641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (A054785 (n + 1) - 1)

end

end A346880.P15475927213005896641

namespace A346880

/-- `A033880(n+1)+A054785(n+1)-1` -/
def P15475927213005896641.Spec : Prop :=
  ∀ n, P15475927213005896641.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P14453185354911963619

`A054785(n+1)-(A033879(n+1)+1)`
-/

namespace A346880.P14453185354911963619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - (A033879 (n + 1) + 1)

end

end A346880.P14453185354911963619

namespace A346880

/-- `A054785(n+1)-(A033879(n+1)+1)` -/
def P14453185354911963619.Spec : Prop :=
  ∀ n, P14453185354911963619.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P9173683853048606680

`A000593(n+1)+A091818(n+1)-1`
-/

namespace A346880.P9173683853048606680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A091818 (n + 1) - 1)

end

end A346880.P9173683853048606680

namespace A346880

/-- `A000593(n+1)+A091818(n+1)-1` -/
def P9173683853048606680.Spec : Prop :=
  ∀ n, P9173683853048606680.a n = A346880 (n + 1)

end A346880

/-! ## A346880.P5204917861585709442

`A294015(n+1)+A326990(n+1)-1`
-/

namespace A346880.P5204917861585709442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1) + (A326990 (n + 1) - 1)

end

end A346880.P5204917861585709442

namespace A346880

/-- `A294015(n+1)+A326990(n+1)-1` -/
def P5204917861585709442.Spec : Prop :=
  ∀ n, P5204917861585709442.a n = A346880 (n + 1)

end A346880

/-!
# A346881: Number of partitions of the (n+4)-multiset {1,2,...,n,1,2,3,4}.

The programs for A346881, there is no canonical definition to state claims against.
-/

/-! ## A346881.P11050384448707018667

`A346500(6*n+10+C(n, 2))`
-/

namespace A346881.P11050384448707018667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (6 * n + 10 + Nat.choose n 2)

end

end A346881.P11050384448707018667

/-! ## A346881.P10826116709900985019

`A346500(6*n+10+∑[n]-n)`
-/

namespace A346881.P10826116709900985019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 ((6 * n + 10 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A346881.P10826116709900985019

/-! ## A346881.P17571244542594145394

`A346500(A052905(n+2))%A000902(2*(n+2))`
-/

namespace A346881.P17571244542594145394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346500 (A052905 (n + 2)).toNat) (A000902 (2 * (n + 2)))

end

end A346881.P17571244542594145394

/-! ## A346881.P15341655574686675836

`A346500(eq[4, A025581(n)])%A343979(n+1)`
-/

namespace A346881.P15341655574686675836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A343979 (n + 1))

end

end A346881.P15341655574686675836

/-!
# A346882: Number of partitions of the (n+5)-multiset {1,2,...,n,1,2,...,5}.

The programs for A346882, there is no canonical definition to state claims against.
-/

/-! ## A346882.P5887952057802029333

`A346500(A055999(n+3))`
-/

namespace A346882.P5887952057802029333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A055999 (n + 3)).toNat

end

end A346882.P5887952057802029333

/-! ## A346882.P9916478703345845078

`A346500(A167499(n+4))`
-/

namespace A346882.P9916478703345845078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A167499 (n + 4)).toNat

end

end A346882.P9916478703345845078

/-! ## A346882.P9509216062166376863

`A346500(A056115(n)+20)`
-/

namespace A346882.P9509216062166376863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A056115 n + 20).toNat

end

end A346882.P9509216062166376863

/-! ## A346882.P2823833184577344137

`A346500(eq[32, A130321(n)])`
-/

namespace A346882.P2823833184577344137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346882.P2823833184577344137

/-! ## A346882.P12945180112046419390

`A346500(Δ[A023551(n+1)])`
-/

namespace A346882.P12945180112046419390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (f1 (n + 1) - f1 n).toNat

end

end A346882.P12945180112046419390

/-! ## A346882.P2691798659839049721

`A346500(A167614(n+4)+2)`
-/

namespace A346882.P2691798659839049721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A167614 (n + 4) + 2).toNat

end

end A346882.P2691798659839049721

/-! ## A346882.P12984599512996854726

`A346500(A000217(n+6)-6)`
-/

namespace A346882.P12984599512996854726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A000217 (n + 6) - 6).toNat

end

end A346882.P12984599512996854726

/-!
# A346883: Number of partitions of the (n+6)-multiset {1,2,...,n,1,2,...,6}.

The programs for A346883, there is no canonical definition to state claims against.
-/

/-! ## A346883.P1840812282374925414

`A346500(Δ[A103145(n)]+5)`
-/

namespace A346883.P1840812282374925414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (f1 (n + 1) - f1 n + 5).toNat

end

end A346883.P1840812282374925414

/-! ## A346883.P15558960769672315694

`A346500(A000096(n+5)+7)`
-/

namespace A346883.P15558960769672315694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A000096 (n + 5) + 7).toNat

end

end A346883.P15558960769672315694

/-! ## A346883.P18087754988574219550

`A346500(A034856(n+6)-5)`
-/

namespace A346883.P18087754988574219550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A034856 (n + 6) - 5).toNat

end

end A346883.P18087754988574219550

/-! ## A346883.P4086682030393478205

`A346500(A000217(n+7)-7)`
-/

namespace A346883.P4086682030393478205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A000217 (n + 7) - 7).toNat

end

end A346883.P4086682030393478205

/-! ## A346883.P8216385300384591751

`A346500(Δ[Δ[A055832(n+5)]])`
-/

namespace A346883.P8216385300384591751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (f1 (n + 1) - f1 n).toNat

end

end A346883.P8216385300384591751

/-! ## A346883.P7262929502633624267

`A346500(Δ[A023551(n+2)]-1)`
-/

namespace A346883.P7262929502633624267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (f1 (n + 1) - f1 n - 1).toNat

end

end A346883.P7262929502633624267

/-!
# A346884: Number of partitions of the (n+7)-multiset {1,2,...,n,1,2,...,7}.

The programs for A346884, there is no canonical definition to state claims against.
-/

/-! ## A346884.P6673986313176984267

`A346500(eq[7, A002262(n)])`
-/

namespace A346884.P6673986313176984267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346884.P6673986313176984267

/-! ## A346884.P5530483495965256824

`A346500(eq[7, A025581(n)])`
-/

namespace A346884.P5530483495965256824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346884.P5530483495965256824

/-! ## A346884.P13046022777183753402

`A346500(A000096(n+6)+8)`
-/

namespace A346884.P13046022777183753402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A000096 (n + 6) + 8).toNat

end

end A346884.P13046022777183753402

/-! ## A346884.P13133092089689306171

`A346500(A000217(n+8)-8)`
-/

namespace A346884.P13133092089689306171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A000217 (n + 8) - 8).toNat

end

end A346884.P13133092089689306171

/-! ## A346884.P1553665596490276178

`A346500(eq[8, A004736(n+1)])`
-/

namespace A346884.P1553665596490276178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346884.P1553665596490276178

/-! ## A346884.P16764606899894036248

`A346500(eq[7, val(A036561(n), 2)])`
-/

namespace A346884.P16764606899894036248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A346884.P16764606899894036248

/-! ## A346884.P14978972061660538598

`A346500(2*n+A000217(n+6)+7)`
-/

namespace A346884.P14978972061660538598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A346884.P14978972061660538598

/-!
# A346885: Number of partitions of the (n+8)-multiset {1,2,...,n,1,2,...,8}.

The programs for A346885, there is no canonical definition to state claims against.
-/

/-! ## A346885.P14786799508002537012

`A346500(A167614(n+7)+5)`
-/

namespace A346885.P14786799508002537012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A167614 (n + 7) + 5).toNat

end

end A346885.P14786799508002537012

/-! ## A346885.P3240910269939580520

`A346500(A046691(n+7)-5)`
-/

namespace A346885.P3240910269939580520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A046691 (n + 7) - 5).toNat

end

end A346885.P3240910269939580520

/-! ## A346885.P9199710075317222847

`A346500(A000096(n+7)+9)`
-/

namespace A346885.P9199710075317222847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A000096 (n + 7) + 9).toNat

end

end A346885.P9199710075317222847

/-! ## A346885.P8552636982140241856

`A346500(A000217(n+9)-9)`
-/

namespace A346885.P8552636982140241856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A000217 (n + 9) - 9).toNat

end

end A346885.P8552636982140241856

/-! ## A346885.P8246471419996492043

`A346500(A055999(n+5)+A020715(n))`
-/

namespace A346885.P8246471419996492043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A055999 (n + 5) + A020715 n).toNat

end

end A346885.P8246471419996492043

/-! ## A346885.P16303081618091704412

`A346500(A052905(n+7)-A005843(n+3))`
-/

namespace A346885.P16303081618091704412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A052905 (n + 7) - A005843 (n + 3)).toNat

end

end A346885.P16303081618091704412

/-!
# A346886: Number of partitions of the (n+9)-multiset {1,2,...,n,1,2,...,9}.

The programs for A346886, there is no canonical definition to state claims against.
-/

/-! ## A346886.P9314021590529832265

`A346500(eq[9, A002262(n)])`
-/

namespace A346886.P9314021590529832265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346886.P9314021590529832265

/-! ## A346886.P13218566308792432566

`A346500(eq[9, A025581(n)])`
-/

namespace A346886.P13218566308792432566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346886.P13218566308792432566

/-! ## A346886.P407631828795213067

`A346500(eq[10, A002260(n+1)])`
-/

namespace A346886.P407631828795213067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346886.P407631828795213067

/-! ## A346886.P6438391352294511029

`A346500(eq[10, A004736(n+1)])`
-/

namespace A346886.P6438391352294511029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346886.P6438391352294511029

/-! ## A346886.P329356321986515119

`A346500(eq[10, A208233(n+1)])`
-/

namespace A346886.P329356321986515119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346886.P329356321986515119

/-! ## A346886.P15856372846769560385

`A346500(eq[10, A208234(n+1)])`
-/

namespace A346886.P15856372846769560385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346886.P15856372846769560385

/-!
# A346887: Number of partitions of the (n+10)-multiset {1,2,...,n,1,2,...,10}.

The programs for A346887, there is no canonical definition to state claims against.
-/

/-! ## A346887.P17004686073601057738

`A346500(eq[10, A002262(n)])`
-/

namespace A346887.P17004686073601057738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346887.P17004686073601057738

/-! ## A346887.P988895878446809061

`A346500(eq[10, A025581(n)])`
-/

namespace A346887.P988895878446809061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346887.P988895878446809061

/-! ## A346887.P13946745658522070671

`A346500(eq[11, A002260(n+1)])`
-/

namespace A346887.P13946745658522070671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346887.P13946745658522070671

/-! ## A346887.P1388963551363772166

`A346500(eq[11, A004736(n+1)])`
-/

namespace A346887.P1388963551363772166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346887.P1388963551363772166

/-! ## A346887.P8648969986468662530

`A346500(eq[11, A208233(n+1)])`
-/

namespace A346887.P8648969986468662530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346887.P8648969986468662530

/-! ## A346887.P10396686520129065574

`A346500(eq[11, A208234(n+1)])`
-/

namespace A346887.P10396686520129065574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346887.P10396686520129065574

/-!
# A346888: Expansion of e.g.f. 1 / (1 - x^2 * exp(x) / 2).

The programs for A346888, there is no canonical definition to state claims against.
-/

/-! ## A346888.P3010251130104793558

`A351703(∑[n+2]-1)`
-/

namespace A346888.P3010251130104793558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351703 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A346888.P3010251130104793558

/-! ## A346888.P7467578095043267119

`A351703(A034856(n+1))+char[10]`
-/

namespace A346888.P7467578095043267119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351703 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A346888.P7467578095043267119

/-! ## A346888.P6403140369674229330

`A043568(n)*A351703(A034856(n+1))`
-/

namespace A346888.P6403140369674229330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A351703 (A034856 (n + 1)).toNat

end

end A346888.P6403140369674229330

/-! ## A346888.P4201996809086363468

`A055642(n)*A351703(A034856(n+1))`
-/

namespace A346888.P4201996809086363468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A351703 (A034856 (n + 1)).toNat

end

end A346888.P4201996809086363468

/-! ## A346888.P7181264462670502014

`A061674(n)*A351703(A034856(n+1))`
-/

namespace A346888.P7181264462670502014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n * A351703 (A034856 (n + 1)).toNat

end

end A346888.P7181264462670502014

/-!
# A346889: Expansion of e.g.f. 1 / (1 - x^3 * exp(x) / 3!).

The programs for A346889, there is no canonical definition to state claims against.
-/

/-! ## A346889.P5353235589846582959

`A351703(∑[n+3])`
-/

namespace A346889.P5353235589846582959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346889.P5353235589846582959

/-! ## A346889.P12863621139402971974

`A351703(A141214(n))+char[9]`
-/

namespace A346889.P12863621139402971974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351703 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A346889.P12863621139402971974

/-! ## A346889.P8079601240457378010

`A043568(n)*A351703(A141214(n))`
-/

namespace A346889.P8079601240457378010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A351703 (A141214 n).toNat

end

end A346889.P8079601240457378010

/-! ## A346889.P7227218121600696844

`A055642(n)*A351703(A141214(n))`
-/

namespace A346889.P7227218121600696844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A351703 (A141214 n).toNat

end

end A346889.P7227218121600696844

/-! ## A346889.P9395901355941445316

`A351703(A141214(n))%A037053(n)`
-/

namespace A346889.P9395901355941445316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351703 (A141214 n).toNat) (A037053 n)

end

end A346889.P9395901355941445316

/-!
# A346890: Expansion of e.g.f. 1 / (1 - x^4 * exp(x) / 4!).

The programs for A346890, there is no canonical definition to state claims against.
-/

/-! ## A346890.P16284138588610834456

`A145454(n)%A089875(n)+A145454(n)-C(n, 4)`
-/

namespace A346890.P16284138588610834456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145454 n) (A089875 n) + (A145454 n - (Nat.choose n 4 : ℤ))

end

end A346890.P16284138588610834456

/-! ## A346890.P18062497282598401554

`A137564(A353882(n)+C(n, 4))`
-/

namespace A346890.P18062497282598401554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A353882 n + (Nat.choose n 4 : ℤ)).toNat

end

end A346890.P18062497282598401554

/-! ## A346890.P7339962835798409090

`A137564(A353896(n)+C(n, 4))`
-/

namespace A346890.P7339962835798409090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A353896 n + (Nat.choose n 4 : ℤ)).toNat

end

end A346890.P7339962835798409090

/-! ## A346890.P11963838752406312594

`A106612(A353882(n))+A000332(n)`
-/

namespace A346890.P11963838752406312594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A353882 n).toNat + A000332 n

end

end A346890.P11963838752406312594

/-! ## A346890.P3965493853398010576

`A137564(A353882(n)+A000332(n))`
-/

namespace A346890.P3965493853398010576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A353882 n + A000332 n).toNat

end

end A346890.P3965493853398010576

/-!
# A346894: Expansion of e.g.f. 1 / (1 - (exp(x) - 1)^3 / 3!).

The programs for A346894, there is no canonical definition to state claims against.
-/

/-! ## A346894.P15396115156720957122

`A002262((n^n-(-1)^n)/(n+1))^ceil(n/98)`
-/

namespace A346894.P15396115156720957122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 (SequenceMachineLib.roundAway (((n ^ n : ℤ) - (-1) ^ n : ℚ) / (n + 1 : ℚ))).toNat : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A346894.P15396115156720957122

/-! ## A346894.P9487926661663823703

`A033183(Δ[A007161(n)])`
-/

namespace A346894.P9487926661663823703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (f1 (n + 1) - f1 n).toNat

end

end A346894.P9487926661663823703

/-!
# A346895: Expansion of e.g.f. 1 / (1 - (exp(x) - 1)^4 / 4!).

The programs for A346895, there is no canonical definition to state claims against.
-/

/-! ## A346895.P1152024099978115121

`A327505(n)+A185034(A185034(n))`
-/

namespace A346895.P1152024099978115121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327505 n + A185034 (A185034 n).toNat

end

end A346895.P1152024099978115121

/-! ## A346895.P6772558193936566429

`A327505(n)+A185234(A185234(n))`
-/

namespace A346895.P6772558193936566429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327505 n + A185234 (A185234 n).toNat

end

end A346895.P6772558193936566429

/-! ## A346895.P12686141683697752746

`or(A002262(A353896(n+1)), A327505(n))`
-/

namespace A346895.P12686141683697752746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A353896 (n + 1)).toNat) (A327505 n)

end

end A346895.P12686141683697752746

/-! ## A346895.P6014619964489298725

`A327505(A073789(n))`
-/

namespace A346895.P6014619964489298725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327505 (A073789 n).toNat

end

end A346895.P6014619964489298725

/-!
# A346896: Expansion of e.g.f.: (1-12*x)^(-11/12).

The programs for A346896, there is no canonical definition to state claims against.
-/

/-! ## A346896.P912434383859616674

`∏[abs(1-12*n)]`
-/

namespace A346896.P912434383859616674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (12 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346896.P912434383859616674

/-! ## A346896.P15748676855368633357

`floor(∏[a(n-1)+12])` with `a(0)=1, a(1)=11`

`floor` is left out, it is the identity on integers.
-/

namespace A346896.P15748676855368633357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346896.P15748676855368633357

/-! ## A346896.P4218815291151656927

`(12*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A346896.P4218815291151656927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((12 * n : ℤ) - 1) * a (n - 1)

end

end A346896.P4218815291151656927

/-! ## A346896.P1779573459865421513

`a(n-1)*A017653(n-1)` with `a(0)=1`
-/

namespace A346896.P1779573459865421513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017653 (n - 1)

end

end A346896.P1779573459865421513

/-! ## A346896.P6547916951777432576

`a(n-1)*A305859(3*n)` with `a(0)=1`
-/

namespace A346896.P6547916951777432576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A305859 (3 * n)

end

end A346896.P6547916951777432576

/-!
# A346897: Number of partitions of the (n+4)-multiset {1,2,...,n,1,2,3,4} into distinct multisets.

The programs for A346897, there is no canonical definition to state claims against.
-/

/-! ## A346897.P3626366170401799177

`A346517(6*n+10+C(n, 2))`
-/

namespace A346897.P3626366170401799177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (6 * n + 10 + Nat.choose n 2)

end

end A346897.P3626366170401799177

/-! ## A346897.P3238398416211394126

`A346517(6*n+10+∑[n]-n)`
-/

namespace A346897.P3238398416211394126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 ((6 * n + 10 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A346897.P3238398416211394126

/-! ## A346897.P14569574673324998097

`or(A209229(n+3), A346517(A052905(n+2)))`
-/

namespace A346897.P14569574673324998097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 (n + 3)) (A346517 (A052905 (n + 2)).toNat)

end

end A346897.P14569574673324998097

/-! ## A346897.P8601108246489413676

`A346517(A052905(n+2))+A010892(3*n+2)`
-/

namespace A346897.P8601108246489413676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A052905 (n + 2)).toNat + A010892 (3 * n + 2)

end

end A346897.P8601108246489413676

/-! ## A346897.P15496665519494259492

`A346517(eq[4, A025581(n)])%A343979(n+1)`
-/

namespace A346897.P15496665519494259492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A343979 (n + 1))

end

end A346897.P15496665519494259492

/-!
# A346898: Number of partitions of the (n+5)-multiset {1,2,...,n,1,2,...,5} into distinct multisets.

The programs for A346898, there is no canonical definition to state claims against.
-/

/-! ## A346898.P13828425718532011144

`A346517(A055999(n+3))`
-/

namespace A346898.P13828425718532011144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A055999 (n + 3)).toNat

end

end A346898.P13828425718532011144

/-! ## A346898.P11980087827527211238

`A346517(A167499(n+4))`
-/

namespace A346898.P11980087827527211238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A167499 (n + 4)).toNat

end

end A346898.P11980087827527211238

/-! ## A346898.P110057887793396011

`A346517(eq[5, A025581(n)])`
-/

namespace A346898.P110057887793396011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346898.P110057887793396011

/-! ## A346898.P8173014270937689303

`A346517(Δ[A026054(n+3)])`
-/

namespace A346898.P8173014270937689303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (f1 (n + 1) - f1 n).toNat

end

end A346898.P8173014270937689303

/-! ## A346898.P6567004429118933200

`A346517(A167614(n+4)+2)`
-/

namespace A346898.P6567004429118933200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A167614 (n + 4) + 2).toNat

end

end A346898.P6567004429118933200

/-! ## A346898.P6922936176701747795

`A346517(2*n+A000124(n+4)+4)`
-/

namespace A346898.P6922936176701747795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 ((2 * n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A346898.P6922936176701747795

/-!
# A346899: Number of partitions of the (n+6)-multiset {1,2,...,n,1,2,...,6} into distinct multisets.

The programs for A346899, there is no canonical definition to state claims against.
-/

/-! ## A346899.P10435672215165196697

`A346517(eq[6, A002262(n)])`
-/

namespace A346899.P10435672215165196697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346899.P10435672215165196697

/-! ## A346899.P7325514822847445880

`A346517(eq[6, A025581(n)])`
-/

namespace A346899.P7325514822847445880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346899.P7325514822847445880

/-! ## A346899.P6955669234639711184

`A346517(eq[13, A099375(n)])`
-/

namespace A346899.P6955669234639711184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346899.P6955669234639711184

/-! ## A346899.P13825371491716975993

`A346517(eq[64, A130321(n)])`
-/

namespace A346899.P13825371491716975993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346899.P13825371491716975993

/-! ## A346899.P11932330105283771275

`A346517(Δ[A103145(n)]+5)`
-/

namespace A346899.P11932330105283771275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (f1 (n + 1) - f1 n + 5).toNat

end

end A346899.P11932330105283771275

/-! ## A346899.P2406253633366852190

`A346517(A000096(n+5)+7)`
-/

namespace A346899.P2406253633366852190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A000096 (n + 5) + 7).toNat

end

end A346899.P2406253633366852190

/-! ## A346899.P15794349293051277614

`A346517(A000217(n+7)-7)`
-/

namespace A346899.P15794349293051277614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A000217 (n + 7) - 7).toNat

end

end A346899.P15794349293051277614

/-! ## A346899.P17506942263836913960

`A346517(eq[7, A002260(n+1)])`
-/

namespace A346899.P17506942263836913960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346899.P17506942263836913960

/-! ## A346899.P11994591055935429557

`A346517(eq[7, A004736(n+1)])`
-/

namespace A346899.P11994591055935429557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346899.P11994591055935429557

/-! ## A346899.P5254824915019778264

`A346517(Δ[A026054(n+4)]-1)`
-/

namespace A346899.P5254824915019778264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (f1 (n + 1) - f1 n - 1).toNat

end

end A346899.P5254824915019778264

