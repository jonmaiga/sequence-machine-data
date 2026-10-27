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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A152600: a(n)=0^n+sum{k=0..n-1, C(n+k-1,2k)*A000108(k)*3^k*2^(n-k)}.

The programs for A152600, there is no canonical definition to state claims against.
-/

/-! ## A152600.P1982998988953758821

`(3/n-1)*4*a(n-2)+4*(4-6/n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A152600.P1982998988953758821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 / (n : ℚ) - 1) * (4 * a (n - 2)) + 4 * ((4 - 6 / (n : ℚ)) * a (n - 1))

end

end A152600.P1982998988953758821

/-! ## A152600.P1069788525844110511

`A005843(A034031(a(n-1)+1)+2)` with `a(0)=1, a(1)=2`
-/

namespace A152600.P1069788525844110511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A005843 (A034031 (a (n - 1) + 1).toNat + 2).toNat

end

end A152600.P1069788525844110511

/-!
# A152601: a(n) = Sum_{k=0..n} C(n+k,2k)*A000108(k)*3^k*2^(n-k).

The programs for A152601, there is no canonical definition to state claims against.
-/

/-! ## A152601.P1797054860288126886

`A152600(n+1)/2`
-/

namespace A152601.P1797054860288126886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152600 (n + 1) : ℚ) / 2

end

end A152601.P1797054860288126886

/-! ## A152601.P16946399191386278989

`Δ[∑[A152600(n)]/2]`
-/

namespace A152601.P16946399191386278989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152600 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152601.P16946399191386278989

/-! ## A152601.P18341156159523952391

`record[A152600(A106249(n))/2]`
-/

namespace A152601.P18341156159523952391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152600 (A106249 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152601.P18341156159523952391

/-! ## A152601.P9995412825963636507

`record[ratio[A152600(A050873(n+1))]]`
-/

namespace A152601.P9995412825963636507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152600 (A050873 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152601.P9995412825963636507

/-! ## A152601.P644061079047422707

`record[ratio[A152600(A204988(n+1))]]`
-/

namespace A152601.P644061079047422707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152600 (A204988 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152601.P644061079047422707

/-!
# A152602: a(n) = 2*{0,a(n-2),0} + 2*{-1/2,a(n-1)}+2*{a(n-1),-1/2}.

The programs for A152602, there is no canonical definition to state claims against.
-/

/-! ## A152602.P1038264031699601698

`A066839(3*A118185(n))`
-/

namespace A152602.P1038264031699601698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (3 * A118185 n).toNat

end

end A152602.P1038264031699601698

/-! ## A152602.P7684456435364659777

`A070039(3*A118185(n))`
-/

namespace A152602.P7684456435364659777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (3 * A118185 n).toNat

end

end A152602.P7684456435364659777

/-! ## A152602.P14028979497334093332

`A115772(A117401(n))-4`
-/

namespace A152602.P14028979497334093332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115772 (A117401 n).toNat - 4

end

end A152602.P14028979497334093332

/-! ## A152602.P14134193281115090370

`A343985(3*A117401(n))`
-/

namespace A152602.P14134193281115090370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343985 (3 * A117401 n).toNat

end

end A152602.P14134193281115090370

/-! ## A152602.P1656747225825561087

`A166387(6*A118185(n))`
-/

namespace A152602.P1656747225825561087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166387 (6 * A118185 n).toNat

end

end A152602.P1656747225825561087

/-!
# A152606: a(1) = 1; thereafter a(n) is always the smallest integer > a(n-1) not leading to a contradiction, such that any six consecutive digits in the sequence sum up to a prime.

The programs for A152606, there is no canonical definition to state claims against.
-/

/-! ## A152606.P6638792448837314535

`A054181(lt[A026741(n), 6])`
-/

namespace A152606.P6638792448837314535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054181 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A152606.P6638792448837314535

/-! ## A152606.P5696619087204806530

`A054181(lt[A029578(n), 6])`
-/

namespace A152606.P5696619087204806530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054181 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A152606.P5696619087204806530

/-! ## A152606.P11440562906085374677

`A277315(A185387(n))+n`
-/

namespace A152606.P11440562906085374677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277315 (A185387 n).toNat + (n : ℤ)

end

end A152606.P11440562906085374677

/-! ## A152606.P3129964817715004553

`∑[A261363(A192572(n)²)]`
-/

namespace A152606.P3129964817715004553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261363 (A192572 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152606.P3129964817715004553

/-! ## A152606.P17398077640809735761

`∩[A054181(n), A096076(n)]`
-/

namespace A152606.P17398077640809735761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096076 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152606.P17398077640809735761

/-!
# A152607: a(1) = 1; thereafter a(n) is always the smallest integer > a(n-1) not leading to a contradiction, such that the concatenation of any two consecutive digits in the sequence is a prime.

The programs for A152607, there is no canonical definition to state claims against.
-/

/-! ## A152607.P12993904970722701718

`lcm(2, A152136(n+1))/2`
-/

namespace A152607.P12993904970722701718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A152136 (n + 1)) : ℚ) / 2

end

end A152607.P12993904970722701718

/-! ## A152607.P15746994686132717233

`A152136(n+1)-A000007(n)`
-/

namespace A152607.P15746994686132717233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152136 (n + 1) - A000007 n

end

end A152607.P15746994686132717233

/-! ## A152607.P5087244701159963265

`A152136(n+1)/A054977(n)`
-/

namespace A152607.P5087244701159963265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152136 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A152607.P5087244701159963265

/-! ## A152607.P2551352079630865634

`C(A152136(n+1), A057428(n)²)`
-/

namespace A152607.P2551352079630865634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A152136 (n + 1)).toNat (A057428 n ^ 2).toNat

end

end A152607.P2551352079630865634

/-! ## A152607.P3720531816737277466

`A152136(n+1)-char[A058832(n)]`
-/

namespace A152607.P3720531816737277466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058832 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152136 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A152607.P3720531816737277466

/-!
# A152612: Number of isomorphism classes of n-fold coverings of a connected graph with Betti number 3.

The programs for A152612, there is no canonical definition to state claims against.
-/

/-! ## A152612.P3994835948558353440

`A160449(A167614(n+2))`
-/

namespace A152612.P3994835948558353440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A167614 (n + 2)).toNat

end

end A152612.P3994835948558353440

/-! ## A152612.P14102895141944139343

`A160449(A052905(n)+8)`
-/

namespace A152612.P14102895141944139343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A052905 n + 8).toNat

end

end A152612.P14102895141944139343

/-! ## A152612.P7645698727539967626

`A160449(A055999(n)+9)`
-/

namespace A152612.P7645698727539967626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A055999 n + 9).toNat

end

end A152612.P7645698727539967626

/-! ## A152612.P4497152913817484453

`A160449(eq[3, A002262(n)])`
-/

namespace A152612.P4497152913817484453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152612.P4497152913817484453

/-! ## A152612.P12081883950173260368

`A160449(eq[3, A140207(n)])`
-/

namespace A152612.P12081883950173260368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152612.P12081883950173260368

/-!
# A152613: Triangle read by rows: T(n,k) = 3*T(n-1,k-1) + 3*T(n-1,k) - 2*T(n-2,k-1) with T(n,0) = T(n,n) = 1.

The programs for A152613, there is no canonical definition to state claims against.
-/

/-! ## A152613.P5597292140156761853

`A261216(A022173(n))`
-/

namespace A152613.P5597292140156761853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (A022173 n).toNat

end

end A152613.P5597292140156761853

/-! ## A152613.P8688535169551089813

`A262260(A328300(n))`
-/

namespace A152613.P8688535169551089813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262260 (A328300 n).toNat

end

end A152613.P8688535169551089813

/-! ## A152613.P12318753552576361299

`A262260(A108470(n+1))`
-/

namespace A152613.P12318753552576361299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262260 (A108470 (n + 1)).toNat

end

end A152613.P12318753552576361299

/-! ## A152613.P6611448953238115638

`A052126(A107801(n+1)*A157153(n))`
-/

namespace A152613.P6611448953238115638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A107801 (n + 1) * A157153 n).toNat

end

end A152613.P6611448953238115638

/-!
# A152614: Square array read by upwards antidiagonals.

The programs for A152614, there is no canonical definition to state claims against.
-/

/-! ## A152614.P8018658414357291217

`-or(A077050(n+1), A077052(n+1))`
-/

namespace A152614.P8018658414357291217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A077050 (n + 1)) (A077052 (n + 1))

end

end A152614.P8018658414357291217

/-! ## A152614.P7073023815529118789

`-or(A008683(A322550(n+1)), A077050(n+1))`
-/

namespace A152614.P7073023815529118789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A008683 (A322550 (n + 1)).toNat) (A077050 (n + 1))

end

end A152614.P7073023815529118789

/-! ## A152614.P16006208337067612746

`-or(A077050(n+1), A128407(A286156(n+1)))`
-/

namespace A152614.P16006208337067612746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A077050 (n + 1)) (A128407 (A286156 (n + 1)).toNat)

end

end A152614.P16006208337067612746

/-! ## A152614.P11496060295088752798

`-or(A143142(n+1)*A307039(n), A077052(n+1))`
-/

namespace A152614.P11496060295088752798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A143142 (n + 1) * A307039 n) (A077052 (n + 1))

end

end A152614.P11496060295088752798

/-! ## A152614.P6625584111245121557

`(A077049(n+1)-1)*A077052(n+1)-A077050(n+1)`
-/

namespace A152614.P6625584111245121557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077049 (n + 1) - 1) * A077052 (n + 1) - A077050 (n + 1)

end

end A152614.P6625584111245121557

/-! ## A152614.P14768646336582408243

`(A077051(n+1)-1)*A077050(n+1)-A077052(n+1)`
-/

namespace A152614.P14768646336582408243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077051 (n + 1) - 1) * A077050 (n + 1) - A077052 (n + 1)

end

end A152614.P14768646336582408243

/-! ## A152614.P16692857356492538853

`A008683(8*(n+1))-or(A077050(n+1), A077052(n+1))`
-/

namespace A152614.P16692857356492538853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) - Int.lor (A077050 (n + 1)) (A077052 (n + 1))

end

end A152614.P16692857356492538853

/-! ## A152614.P14302213597757550579

`-or(A054521(n+1)*A144778(n+1), A077052(n+1))`
-/

namespace A152614.P14302213597757550579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A054521 (n + 1) * A144778 (n + 1)) (A077052 (n + 1))

end

end A152614.P14302213597757550579

/-!
# A152615: Numbers k such that exactly two subsets of proper divisors of k sum to k.

The programs for A152615, there is no canonical definition to state claims against.
-/

/-! ## A152615.P10625944925613309093

`eq[3, A033630(n)]`
-/

namespace A152615.P10625944925613309093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152615.P10625944925613309093

/-! ## A152615.P12655424366203103506

`eq[2, A065205(n+1)]+1`
-/

namespace A152615.P12655424366203103506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A152615.P12655424366203103506

/-! ## A152615.P1129771478505333254

`eq[2, A065205(A028310(n))]`
-/

namespace A152615.P1129771478505333254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152615.P1129771478505333254

/-! ## A152615.P7788019447996835314

`A014681(eq[2, A065205(n+1)])`
-/

namespace A152615.P7788019447996835314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152615.P7788019447996835314

/-! ## A152615.P17389873389701641168

`A020725(eq[2, A065205(n+1)])`
-/

namespace A152615.P17389873389701641168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152615.P17389873389701641168

/-! ## A152615.P12058581018689517903

`eq[2, A065205(A065190(n+1))]`
-/

namespace A152615.P12058581018689517903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152615.P12058581018689517903

/-! ## A152615.P2660163973246979103

`eq[2, A065205(A000007(n)+n)]`
-/

namespace A152615.P2660163973246979103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152615.P2660163973246979103

/-! ## A152615.P7781325440989978149

`eq[2, A065205(A060000(n+1))]`
-/

namespace A152615.P7781325440989978149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152615.P7781325440989978149

/-! ## A152615.P6036211678237023013

`eq[3, A219208(n)]`
-/

namespace A152615.P6036211678237023013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152615.P6036211678237023013

/-!
# A152616: Numbers k such that exactly three subsets of proper divisors of k sum to k.

The programs for A152616, there is no canonical definition to state claims against.
-/

/-! ## A152616.P10452836667552225578

`eq[4, A033630(n)]`
-/

namespace A152616.P10452836667552225578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152616.P10452836667552225578

/-! ## A152616.P17800765873954767989

`eq[3, A065205(A028310(n))]`
-/

namespace A152616.P17800765873954767989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152616.P17800765873954767989

/-! ## A152616.P5749206037873700830

`A020725(eq[3, A065205(n+1)])`
-/

namespace A152616.P5749206037873700830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152616.P5749206037873700830

/-! ## A152616.P7819055779594695242

`eq[3, A065205(A060000(n+1))]`
-/

namespace A152616.P7819055779594695242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152616.P7819055779594695242

/-! ## A152616.P16188961410537550360

`eq[4, A219208(n)]`
-/

namespace A152616.P16188961410537550360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152616.P16188961410537550360

/-!
# A152618: a(n) = (n-1)^2*(n+1).

The programs for A152618, the canonical program `A152618.P5109371313770539411` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152618 has offset 0).

The definition of A152618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)²*(n+1)` (program `A152618.P5109371313770539411`, by `A152618.P5109371313770539411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152618.P6395701742479831693

`(n+1)*(n-1)²`
-/

namespace A152618.P6395701742479831693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - 1) ^ 2

end

end A152618.P6395701742479831693

namespace A152618

/-- `(n+1)*(n-1)²` -/
def P6395701742479831693.Spec : Prop :=
  ∀ n, P6395701742479831693.a n = A152618 n

theorem P6395701742479831693.correct : P6395701742479831693.Spec := by
  intro n
  simp only [A152618, Nat.add_sub_cancel, A152618.P6395701742479831693.a, A152618.P5109371313770539411.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152618

/-! ## A152618.P5109371313770539411

`(n-1)²*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152618

/-- `(n-1)²*(n+1)` -/
def P5109371313770539411.Spec : Prop :=
  ∀ n, P5109371313770539411.a n = A152618 n

theorem P5109371313770539411.correct : P5109371313770539411.Spec := by
  intro n
  simp only [A152618]

end A152618

/-! ## A152618.P7539297998412859378

`A083074(n)+2`
-/

namespace A152618.P7539297998412859378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083074 n + 2

end

end A152618.P7539297998412859378

namespace A152618

/-- `A083074(n)+2` -/
def P7539297998412859378.Spec : Prop :=
  ∀ n, P7539297998412859378.a n = A152618 n

theorem P7539297998412859378.correct : P7539297998412859378.Spec := by
  intro n
  simp only [A152618, Nat.add_sub_cancel, A152618.P7539297998412859378.a, A152618.P5109371313770539411.a, A083074, A083074.P14700976878568610308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152618

/-! ## A152618.P17716474304919879223

`lcm(n-1, n²)+1-n`
-/

namespace A152618.P17716474304919879223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℤ) + (1 - (n : ℤ))

end

end A152618.P17716474304919879223

namespace A152618

/-- `lcm(n-1, n²)+1-n` -/
def P17716474304919879223.Spec : Prop :=
  ∀ n, P17716474304919879223.a n = A152618 n

end A152618

/-! ## A152618.P9134456203933125852

`or(1, (n-1)*n²)-n`
-/

namespace A152618.P9134456203933125852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n : ℤ) - 1) * (n ^ 2 : ℤ)) - (n : ℤ)

end

end A152618.P9134456203933125852

namespace A152618

/-- `or(1, (n-1)*n²)-n` -/
def P9134456203933125852.Spec : Prop :=
  ∀ n, P9134456203933125852.a n = A152618 n

end A152618

/-! ## A152618.P14608213392694233464

`xor(1, (n-1)*n²)-n`
-/

namespace A152618.P14608213392694233464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1) * (n ^ 2 : ℤ)) - (n : ℤ)

end

end A152618.P14608213392694233464

namespace A152618

/-- `xor(1, (n-1)*n²)-n` -/
def P14608213392694233464.Spec : Prop :=
  ∀ n, P14608213392694233464.a n = A152618 n

end A152618

/-! ## A152618.P16573331398239139008

`(1-n)²/tan(acot(n+1))`
-/

namespace A152618.P16573331398239139008
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A152618.P16573331398239139008

namespace A152618

/-- `(1-n)²/tan(acot(n+1))` -/
def P16573331398239139008.Spec : Prop :=
  ∀ n, P16573331398239139008.a n = (A152618 n : ℝ)

end A152618

/-! ## A152618.P8255270210607119204

`(1-n)²/cot(atan(n+1))`
-/

namespace A152618.P8255270210607119204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A152618.P8255270210607119204

namespace A152618

/-- `(1-n)²/cot(atan(n+1))` -/
def P8255270210607119204.Spec : Prop :=
  ∀ n, P8255270210607119204.a n = (A152618 n : ℝ)

end A152618

/-! ## A152618.P11047568378566647225

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=-2`
-/

namespace A152618.P11047568378566647225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152618.P11047568378566647225

namespace A152618

/-- `∑[∑[a(n-1)+6]]` -/
def P11047568378566647225.Spec : Prop :=
  ∀ n, P11047568378566647225.a n = A152618 n

end A152618

/-! ## A152618.P7592934745481708129

`n*(2*C(n, 2)-1)+1`
-/

namespace A152618.P7592934745481708129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * Nat.choose n 2 : ℤ) - 1) + 1

end

end A152618.P7592934745481708129

namespace A152618

/-- `n*(2*C(n, 2)-1)+1` -/
def P7592934745481708129.Spec : Prop :=
  ∀ n, P7592934745481708129.a n = A152618 n

theorem P7592934745481708129.correct : P7592934745481708129.Spec := by
  intro n
  simp only [A152618, Nat.add_sub_cancel, A152618.P7592934745481708129.a, A152618.P5109371313770539411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A152618

/-! ## A152618.P9797887583863197914

`∑[9-∑[a(n-1)-6]]` with `a(0)=8`
-/

namespace A152618.P9797887583863197914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152618.P9797887583863197914

namespace A152618

/-- `∑[9-∑[a(n-1)-6]]` -/
def P9797887583863197914.Spec : Prop :=
  ∀ n, P9797887583863197914.a n = A152618 n

end A152618

/-! ## A152618.P9571927875568961201

`1-(n-2*n*C(n, 2))`
-/

namespace A152618.P9571927875568961201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n * Nat.choose n 2 : ℤ))

end

end A152618.P9571927875568961201

namespace A152618

/-- `1-(n-2*n*C(n, 2))` -/
def P9571927875568961201.Spec : Prop :=
  ∀ n, P9571927875568961201.a n = A152618 n

theorem P9571927875568961201.correct : P9571927875568961201.Spec := by
  intro n
  simp only [A152618, Nat.add_sub_cancel, A152618.P9571927875568961201.a, A152618.P5109371313770539411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A152618

/-! ## A152618.P9051464044697691126

`n*lcm(n, 1-n)-(n-1)`
-/

namespace A152618.P9051464044697691126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Int.lcm (n : ℤ) (1 - (n : ℤ)) : ℤ) - ((n : ℤ) - 1)

end

end A152618.P9051464044697691126

namespace A152618

/-- `n*lcm(n, 1-n)-(n-1)` -/
def P9051464044697691126.Spec : Prop :=
  ∀ n, P9051464044697691126.a n = A152618 n

end A152618

/-! ## A152618.P11994818135398133040

`(1-n²)²/C(n+1, n)`
-/

namespace A152618.P11994818135398133040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n ^ 2 : ℤ)) ^ 2 : ℚ) / (Nat.choose (n + 1) n : ℚ)

end

end A152618.P11994818135398133040

namespace A152618

/-- `(1-n²)²/C(n+1, n)` -/
def P11994818135398133040.Spec : Prop :=
  ∀ n, P11994818135398133040.a n = (A152618 n : ℚ)

end A152618

/-! ## A152618.P8362320293921931125

`(n-2)*or(1, ∑[2*n])+3`
-/

namespace A152618.P8362320293921931125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + 3

end

end A152618.P8362320293921931125

namespace A152618

/-- `(n-2)*or(1, ∑[2*n])+3` -/
def P8362320293921931125.Spec : Prop :=
  ∀ n, P8362320293921931125.a n = A152618 n

end A152618

/-! ## A152618.P16426739293587742984

`(n-2)*xor(1, ∑[2*n])+3`
-/

namespace A152618.P16426739293587742984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + 3

end

end A152618.P16426739293587742984

namespace A152618

/-- `(n-2)*xor(1, ∑[2*n])+3` -/
def P16426739293587742984.Spec : Prop :=
  ∀ n, P16426739293587742984.a n = A152618 n

end A152618

/-! ## A152618.P6230753916939034586

`sqrt((n-1)^4*record[(n-1)²])`
-/

namespace A152618.P6230753916939034586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n : ℤ) - 1) ^ 4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A152618.P6230753916939034586

namespace A152618

/-- `sqrt((n-1)^4*record[(n-1)²])` -/
def P6230753916939034586.Spec : Prop :=
  ∀ n, P6230753916939034586.a n = (A152618 n : ℝ)

end A152618

/-! ## A152618.P1391269694142712255

`-((n-1)*∑[or(1, -(2*n))])`
-/

namespace A152618.P1391269694142712255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A152618.P1391269694142712255

namespace A152618

/-- `-((n-1)*∑[or(1, -(2*n))])` -/
def P1391269694142712255.Spec : Prop :=
  ∀ n, P1391269694142712255.a n = A152618 n

end A152618

/-! ## A152618.P6612714753716417596

`∑[or(1, -(2*n))]²/(n+1)`
-/

namespace A152618.P6612714753716417596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A152618.P6612714753716417596

namespace A152618

/-- `∑[or(1, -(2*n))]²/(n+1)` -/
def P6612714753716417596.Spec : Prop :=
  ∀ n, P6612714753716417596.a n = (A152618 n : ℚ)

end A152618

/-! ## A152618.P16997189926721606398

`-((n-1)*∑[xor(1, -(2*n))])`
-/

namespace A152618.P16997189926721606398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A152618.P16997189926721606398

namespace A152618

/-- `-((n-1)*∑[xor(1, -(2*n))])` -/
def P16997189926721606398.Spec : Prop :=
  ∀ n, P16997189926721606398.a n = A152618 n

end A152618

/-!
# A152619: a(n) = n*(n+2)^2.

The programs for A152619, the canonical program `A152619.P2662992481695215872` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152619 has offset 0).

The definition of A152619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+2)²` (program `A152619.P2662992481695215872`, by `A152619.P2662992481695215872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152619.P2662992481695215872

`n*(n+2)²`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152619

/-- `n*(n+2)²` -/
def P2662992481695215872.Spec : Prop :=
  ∀ n, (P2662992481695215872.a n : ℤ) = A152619 n

theorem P2662992481695215872.correct : P2662992481695215872.Spec := by
  intro n
  simp only [A152619]

end A152619

/-! ## A152619.P10330879696971173332

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=9, a(2)=32, a(3)=75`
-/

namespace A152619.P10330879696971173332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9, 32, 75] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A152619.P10330879696971173332

namespace A152619

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P10330879696971173332.Spec : Prop :=
  ∀ n, P10330879696971173332.a n = A152619 n

theorem P10330879696971173332.correct : P10330879696971173332.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A152619, Nat.add_sub_cancel, A152619.P10330879696971173332.a, A152619.P2662992481695215872.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A152619, Nat.add_sub_cancel, A152619.P10330879696971173332.a, A152619.P2662992481695215872.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152619

/-! ## A152619.P2662221402388893078

`record[(n-2)*n²]`
-/

namespace A152619.P2662221402388893078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152619.P2662221402388893078

namespace A152619

/-- `record[(n-2)*n²]` -/
def P2662221402388893078.Spec : Prop :=
  ∀ n, P2662221402388893078.a n = A152619 n

end A152619

/-! ## A152619.P13631989927458492446

`floor(n/acot((n+2)²))`
-/

namespace A152619.P13631989927458492446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((n + 2) ^ 2 : ℝ)⌋

end

end A152619.P13631989927458492446

namespace A152619

/-- `floor(n/acot((n+2)²))` -/
def P13631989927458492446.Spec : Prop :=
  ∀ n, P13631989927458492446.a n = A152619 n

end A152619

/-! ## A152619.P13490483882229074272

`round(n/acot((n+2)²))`
-/

namespace A152619.P13490483882229074272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((n + 2) ^ 2 : ℝ))

end

end A152619.P13490483882229074272

namespace A152619

/-- `round(n/acot((n+2)²))` -/
def P13490483882229074272.Spec : Prop :=
  ∀ n, P13490483882229074272.a n = A152619 n

end A152619

/-! ## A152619.P16694445200443174025

`n/tan(acot((n+2)²))`
-/

namespace A152619.P16694445200443174025
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.tan (SequenceMachineLib.acot ((n + 2) ^ 2 : ℝ))

end

end A152619.P16694445200443174025

namespace A152619

/-- `n/tan(acot((n+2)²))` -/
def P16694445200443174025.Spec : Prop :=
  ∀ n, P16694445200443174025.a n = (A152619 n : ℝ)

end A152619

/-! ## A152619.P6070252570120350161

`n/cot(atan(n+2))²`
-/

namespace A152619.P6070252570120350161
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.cot (Real.arctan (n + 2 : ℝ)) ^ 2

end

end A152619.P6070252570120350161

namespace A152619

/-- `n/cot(atan(n+2))²` -/
def P6070252570120350161.Spec : Prop :=
  ∀ n, P6070252570120350161.a n = (A152619 n : ℝ)

end A152619

/-! ## A152619.P1276868930428978787

`lcm(n, n/(1/(n+2))²)`
-/

namespace A152619.P1276868930428978787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / (1 / (n + 2 : ℚ)) ^ 2))

end

end A152619.P1276868930428978787

namespace A152619

/-- `lcm(n, n/(1/(n+2))²)` -/
def P1276868930428978787.Spec : Prop :=
  ∀ n, (P1276868930428978787.a n : ℤ) = A152619 n

end A152619

/-! ## A152619.P10976047849433562075

`n/record[(n-2)²]^-1`
-/

namespace A152619.P10976047849433562075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (-1 : ℤ)

end

end A152619.P10976047849433562075

namespace A152619

/-- `n/record[(n-2)²]^-1` -/
def P10976047849433562075.Spec : Prop :=
  ∀ n, P10976047849433562075.a n = (A152619 n : ℚ)

end A152619

/-! ## A152619.P5705237712642601339

`n*(n+2)/cot(atan(n+2))`
-/

namespace A152619.P5705237712642601339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℝ) / Real.cot (Real.arctan (n + 2 : ℝ))

end

end A152619.P5705237712642601339

namespace A152619

/-- `n*(n+2)/cot(atan(n+2))` -/
def P5705237712642601339.Spec : Prop :=
  ∀ n, P5705237712642601339.a n = (A152619 n : ℝ)

end A152619

/-! ## A152619.P2419933932029107015

`∑[∑[a(n-1)+6]]-1` with `a(0)=1, a(1)=8`
-/

namespace A152619.P2419933932029107015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A152619.P2419933932029107015

namespace A152619

/-- `∑[∑[a(n-1)+6]]-1` -/
def P2419933932029107015.Spec : Prop :=
  ∀ n, P2419933932029107015.a n = A152619 n

end A152619

/-! ## A152619.P14727660220697106

`(n+3)*or(1, ∑[2*n])-3`
-/

namespace A152619.P14727660220697106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 3

end

end A152619.P14727660220697106

namespace A152619

/-- `(n+3)*or(1, ∑[2*n])-3` -/
def P14727660220697106.Spec : Prop :=
  ∀ n, P14727660220697106.a n = A152619 n

end A152619

/-! ## A152619.P18189454298852497866

`(n+3)*xor(1, ∑[2*n])-3`
-/

namespace A152619.P18189454298852497866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 3

end

end A152619.P18189454298852497866

namespace A152619

/-- `(n+3)*xor(1, ∑[2*n])-3` -/
def P18189454298852497866.Spec : Prop :=
  ∀ n, P18189454298852497866.a n = A152619 n

end A152619

/-! ## A152619.P15687266646772272166

`n^3-∑[a(n-1)-8]` with `a(0)=0`
-/

namespace A152619.P15687266646772272166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152619.P15687266646772272166

namespace A152619

/-- `n^3-∑[a(n-1)-8]` -/
def P15687266646772272166.Spec : Prop :=
  ∀ n, P15687266646772272166.a n = A152619 n

end A152619

/-! ## A152619.P1505582667652686096

`lcm(n+1, (n+1)²+n)-1`
-/

namespace A152619.P1505582667652686096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) ((n + 1) ^ 2 + n) : ℤ) - 1

end

end A152619.P1505582667652686096

namespace A152619

/-- `lcm(n+1, (n+1)²+n)-1` -/
def P1505582667652686096.Spec : Prop :=
  ∀ n, P1505582667652686096.a n = A152619 n

end A152619

/-! ## A152619.P9353442092794724087

`n%(n+1)/(1/(n+2))²`
-/

namespace A152619.P9353442092794724087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % (n + 1) : ℕ) : ℚ) / (1 / (n + 2 : ℚ)) ^ 2

end

end A152619.P9353442092794724087

namespace A152619

/-- `n%(n+1)/(1/(n+2))²` -/
def P9353442092794724087.Spec : Prop :=
  ∀ n, P9353442092794724087.a n = (A152619 n : ℚ)

theorem P9353442092794724087.correct : P9353442092794724087.Spec := by
  intro n
  simp only [A152619, Nat.add_sub_cancel, A152619.P9353442092794724087.a, A152619.P2662992481695215872.a, SequenceMachineLib.memo_apply]
  try simp

end A152619

/-! ## A152619.P3276398697417863020

`n/(1/C(n+2, n+1))²`
-/

namespace A152619.P3276398697417863020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 / (Nat.choose (n + 2) (n + 1) : ℚ)) ^ 2

end

end A152619.P3276398697417863020

namespace A152619

/-- `n/(1/C(n+2, n+1))²` -/
def P3276398697417863020.Spec : Prop :=
  ∀ n, P3276398697417863020.a n = (A152619 n : ℚ)

end A152619

/-! ## A152619.P16548247003118401393

`gcd(n, 2*n)/(n+2)^-2`
-/

namespace A152619.P16548247003118401393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n) : ℚ) / (n + 2 : ℚ) ^ (-2 : ℤ)

end

end A152619.P16548247003118401393

namespace A152619

/-- `gcd(n, 2*n)/(n+2)^-2` -/
def P16548247003118401393.Spec : Prop :=
  ∀ n, P16548247003118401393.a n = (A152619 n : ℚ)

theorem P16548247003118401393.correct : P16548247003118401393.Spec := by
  intro n
  simp only [A152619, Nat.add_sub_cancel, A152619.P16548247003118401393.a, A152619.P2662992481695215872.a, SequenceMachineLib.memo_apply]
  try simp

end A152619

/-! ## A152619.P623057384650581913

`n/C(n+2, n+1)^-2`
-/

namespace A152619.P623057384650581913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.choose (n + 2) (n + 1) : ℚ) ^ (-2 : ℤ)

end

end A152619.P623057384650581913

namespace A152619

/-- `n/C(n+2, n+1)^-2` -/
def P623057384650581913.Spec : Prop :=
  ∀ n, P623057384650581913.a n = (A152619 n : ℚ)

end A152619

/-! ## A152619.P12368107578283037102

`n/(n+2)^or(2*n, -2)`
-/

namespace A152619.P12368107578283037102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 2 : ℚ) ^ (Int.lor (2 * n : ℤ) (-2) : ℤ)

end

end A152619.P12368107578283037102

namespace A152619

/-- `n/(n+2)^or(2*n, -2)` -/
def P12368107578283037102.Spec : Prop :=
  ∀ n, P12368107578283037102.a n = (A152619 n : ℚ)

end A152619

/-!
# A152620: a(n)=-8*a(n-1)-6*a(n-2), n>1 ; a(0)=1, a(1)=-2 .

The programs for A152620, the canonical program `A152620.P1566406307826976601` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152620 has offset 0).

The definition of A152620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-8*a(n-1)-6*a(n-2)` (program `A152620.P1566406307826976601`, by `A152620.P1566406307826976601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152620.P1566406307826976601

`-8*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=-2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152620

/-- `-8*a(n-1)-6*a(n-2)` -/
def P1566406307826976601.Spec : Prop :=
  ∀ n, P1566406307826976601.a n = A152620 n

theorem P1566406307826976601.correct : P1566406307826976601.Spec := by
  intro n
  simp only [A152620]

end A152620

/-! ## A152620.P10261997819145798146

`ogf((1+6x)/(1+8x+6x^2))`
-/

namespace A152620.P10261997819145798146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 8, 6] n

end

end A152620.P10261997819145798146

namespace A152620

/-- `ogf((1+6x)/(1+8x+6x^2))` -/
def P10261997819145798146.Spec : Prop :=
  ∀ n, P10261997819145798146.a n = A152620 n

end A152620

/-! ## A152620.P15829095579901118644

`(-1)^n*A152621(n)`
-/

namespace A152620.P15829095579901118644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A152621 n

end

end A152620.P15829095579901118644

namespace A152620

/-- `(-1)^n*A152621(n)` -/
def P15829095579901118644.Spec : Prop :=
  ∀ n, P15829095579901118644.a n = A152620 n

end A152620

/-! ## A152620.P11592436795831418783

`A152621(n)/A133730(2*n)`
-/

namespace A152620.P11592436795831418783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152621 n : ℚ) / (A133730 (2 * n) : ℚ)

end

end A152620.P11592436795831418783

namespace A152620

/-- `A152621(n)/A133730(2*n)` -/
def P11592436795831418783.Spec : Prop :=
  ∀ n, P11592436795831418783.a n = (A152620 n : ℚ)

end A152620

/-! ## A152620.P18000744790689339900

`(∑[A190978(n)]+1)*A033999(n)`
-/

namespace A152620.P18000744790689339900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A033999 n

end

end A152620.P18000744790689339900

namespace A152620

/-- `(∑[A190978(n)]+1)*A033999(n)` -/
def P18000744790689339900.Spec : Prop :=
  ∀ n, P18000744790689339900.a n = A152620 n

end A152620

/-! ## A152620.P15685150201265618992

`∑[A190978(A028310(n))]*cos(π*n)`
-/

namespace A152620.P15685150201265618992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190978 (A028310 n).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) * Real.cos (Real.pi * (n : ℝ))

end

end A152620.P15685150201265618992

namespace A152620

/-- `∑[A190978(A028310(n))]*cos(π*n)` -/
def P15685150201265618992.Spec : Prop :=
  ∀ n, P15685150201265618992.a n = (A152620 n : ℝ)

end A152620

/-! ## A152620.P6895695699708952872

`A152621(n)/A141417(and(3, -(n+1)²))`
-/

namespace A152620.P6895695699708952872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152621 n : ℚ) / (A141417 (Int.land 3 (-((n + 1) ^ 2 : ℤ))).toNat : ℚ)

end

end A152620.P6895695699708952872

namespace A152620

/-- `A152621(n)/A141417(and(3, -(n+1)²))` -/
def P6895695699708952872.Spec : Prop :=
  ∀ n, P6895695699708952872.a n = (A152620 n : ℚ)

end A152620

/-! ## A152620.P518059125354184044

`A152621(n)/A130595(A000217(n))`
-/

namespace A152620.P518059125354184044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152621 n : ℚ) / (A130595 (A000217 n).toNat : ℚ)

end

end A152620.P518059125354184044

namespace A152620

/-- `A152621(n)/A130595(A000217(n))` -/
def P518059125354184044.Spec : Prop :=
  ∀ n, P518059125354184044.a n = (A152620 n : ℚ)

end A152620

/-! ## A152620.P16407283399172444585

`∑[A190978(A028310(n))]*A033999(n)`
-/

namespace A152620.P16407283399172444585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190978 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A152620.P16407283399172444585

namespace A152620

/-- `∑[A190978(A028310(n))]*A033999(n)` -/
def P16407283399172444585.Spec : Prop :=
  ∀ n, P16407283399172444585.a n = A152620 n

end A152620

/-!
# A152621: a(n)=8*a(n-1)-6*a(n-2), n>1 ; a(0)=1, a(1)=2.

The programs for A152621, the canonical program `A152621.P1357244625935064076` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152621 has offset 0).

The definition of A152621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-6*a(n-2)` (program `A152621.P1357244625935064076`, by `A152621.P1357244625935064076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152621.P1357244625935064076

`8*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152621

/-- `8*a(n-1)-6*a(n-2)` -/
def P1357244625935064076.Spec : Prop :=
  ∀ n, P1357244625935064076.a n = A152621 n

theorem P1357244625935064076.correct : P1357244625935064076.Spec := by
  intro n
  simp only [A152621]

end A152621

/-! ## A152621.P18005495425988662631

`ogf((1-6x)/(1-8x+6x^2))`
-/

namespace A152621.P18005495425988662631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -8, 6] n

end

end A152621.P18005495425988662631

namespace A152621

/-- `ogf((1-6x)/(1-8x+6x^2))` -/
def P18005495425988662631.Spec : Prop :=
  ∀ n, P18005495425988662631.a n = A152621 n

end A152621

/-! ## A152621.P12947859540813136155

`abs(A152620(n))`
-/

namespace A152621.P12947859540813136155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152620 n|

end

end A152621.P12947859540813136155

namespace A152621

/-- `abs(A152620(n))` -/
def P12947859540813136155.Spec : Prop :=
  ∀ n, P12947859540813136155.a n = A152621 n

end A152621

/-! ## A152621.P14626378286308524517

`∑[A190978(n)]+1`
-/

namespace A152621.P14626378286308524517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A152621.P14626378286308524517

namespace A152621

/-- `∑[A190978(n)]+1` -/
def P14626378286308524517.Spec : Prop :=
  ∀ n, P14626378286308524517.a n = A152621 n

end A152621

/-! ## A152621.P13504564761598519601

`∑[∑[round(A147838(n)/6)]]+1`
-/

namespace A152621.P13504564761598519601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147838 n : ℚ) / 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A152621.P13504564761598519601

namespace A152621

/-- `∑[∑[round(A147838(n)/6)]]+1` -/
def P13504564761598519601.Spec : Prop :=
  ∀ n, P13504564761598519601.a n = A152621 n

end A152621

/-! ## A152621.P3827677359023938835

`∑[A190978(A028310(n))]`
-/

namespace A152621.P3827677359023938835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190978 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152621.P3827677359023938835

namespace A152621

/-- `∑[A190978(A028310(n))]` -/
def P3827677359023938835.Spec : Prop :=
  ∀ n, P3827677359023938835.a n = A152621 n

end A152621

/-! ## A152621.P1821856608905837015

`lcm(A152620(n), A242179(n))`
-/

namespace A152621.P1821856608905837015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152620 n) (A242179 n)

end

end A152621.P1821856608905837015

namespace A152621

/-- `lcm(A152620(n), A242179(n))` -/
def P1821856608905837015.Spec : Prop :=
  ∀ n, (P1821856608905837015.a n : ℤ) = A152621 n

end A152621

/-! ## A152621.P5343079599593089931

`A062157(n+1)*A152620(n)`
-/

namespace A152621.P5343079599593089931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A152620 n

end

end A152621.P5343079599593089931

namespace A152621

/-- `A062157(n+1)*A152620(n)` -/
def P5343079599593089931.Spec : Prop :=
  ∀ n, P5343079599593089931.a n = A152621 n

end A152621

/-! ## A152621.P16708774353847287231

`∑[A249310(A028310(A004273(n)))]`
-/

namespace A152621.P16708774353847287231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249310 (A028310 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152621.P16708774353847287231

namespace A152621

/-- `∑[A249310(A028310(A004273(n)))]` -/
def P16708774353847287231.Spec : Prop :=
  ∀ n, P16708774353847287231.a n = A152621 n

end A152621

/-!
# A152622: Tetrahedral numbers n*(n+1)*(n+2)/6 with n, n+1 and n+2 nonprime.

The programs for A152622, there is no canonical definition to state claims against.
-/

/-! ## A152622.P17669849356079038813

`C(A093516(n+3), 3)`
-/

namespace A152622.P17669849356079038813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A093516 (n + 3)).toNat 3

end

end A152622.P17669849356079038813

/-! ## A152622.P16014578946849081059

`C(A093512(n+4), 3)`
-/

namespace A152622.P16014578946849081059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A093512 (n + 4)).toNat 3

end

end A152622.P16014578946849081059

/-! ## A152622.P18269848918204235071

`C(A079364(n+1)+1, 3)`
-/

namespace A152622.P18269848918204235071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079364 (n + 1) + 1).toNat 3

end

end A152622.P18269848918204235071

/-! ## A152622.P10591060094252272637

`C(lt[4, A103509(n+1)], 3)`
-/

namespace A152622.P10591060094252272637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 3

end

end A152622.P10591060094252272637

/-! ## A152622.P769070379550674206

`A000292(lt[2, A007920(n)])`
-/

namespace A152622.P769070379550674206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A152622.P769070379550674206

/-!
# A152623: Decimal expansion of 3/2.

The programs for A152623, the canonical program `A152623.P9861138873391974069` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152623 has offset 1).

The definition of A152623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152623.P9861138873391974069

`C(5, 4*n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152623

/-- `C(5, 4*n)` -/
def P9861138873391974069.Spec : Prop :=
  ∀ n, (P9861138873391974069.a n : ℤ) = A152623 (n + 1)

theorem P9861138873391974069.correct : P9861138873391974069.Spec := by
  intro n
  simp only [A152623, Nat.add_sub_cancel]

end A152623

/-!
# A152624: Decimal expansion of 7/2.

The programs for A152624, the canonical program `A152624.P2455775845060836493` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152624 has offset 1).

The definition of A152624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152624.P2455775845060836493

`T(n-1,k)*T(n-1,k-1)` with `a(0)=3, a(1)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152624

/-- `T(n-1,k)*T(n-1,k-1)` -/
def P2455775845060836493.Spec : Prop :=
  ∀ n, (P2455775845060836493.a n : ℤ) = A152624 (n + 1)

theorem P2455775845060836493.correct : P2455775845060836493.Spec := by
  intro n
  simp only [A152624, Nat.add_sub_cancel]

end A152624

/-!
# A152625: Prime numbers p such that 2p+1, 4p+1, 8p+1, 10p+1, 14p+1 and 16p+1 are all composite numbers.

The programs for A152625, there is no canonical definition to state claims against.
-/

/-! ## A152625.P4103459848703043422

`A256485(A077168(n+9))`
-/

namespace A152625.P4103459848703043422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256485 (A077168 (n + 9)).toNat

end

end A152625.P4103459848703043422

/-!
# A152627: Decimal expansion of 3/4.

The programs for A152627, the canonical program `A152627.P18354818948753354442` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152627 has offset 0).

The definition of A152627 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A152627.anchor (n : ℕ) : A152627 n = ((3 * 10 ^ (n + 1) / 4 % 10 : ℕ) : ℤ)` in `Proof.A152.A152627`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152627.P18354818948753354442

`a(n-1)` with `a(0)=7, a(1)=5, a(2)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152627

/-- `a(n-1)` -/
def P18354818948753354442.Spec : Prop :=
  ∀ n, (P18354818948753354442.a n : ℤ) = A152627 n

theorem P18354818948753354442.correct : P18354818948753354442.Spec := by
  intro n
  simp only [A152627]

end A152627

/-!
# A152629: Number of permutations of floor(i*3/2), i=0..n-1, with all sums of 7 adjacent terms unique.

The programs for A152629, there is no canonical definition to state claims against.
-/

/-! ## A152629.P1571434497416499096

`a(n-1)+n*A331173(a(n-1))` with `a(0)=1`
-/

namespace A152629.P1571434497416499096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℤ) * A331173 (a (n - 1)).toNat

end

end A152629.P1571434497416499096

/-! ## A152629.P8736102950009035295

`A152646(∑[A250666(n)])`
-/

namespace A152629.P8736102950009035295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152646 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152629.P8736102950009035295

/-! ## A152629.P17238248257761776516

`A152643(∑[A287383(n)])`
-/

namespace A152629.P17238248257761776516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152643 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152629.P17238248257761776516

/-! ## A152629.P16426827331169525341

`A000027(A152631(n+1))`
-/

namespace A152629.P16426827331169525341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A152631 (n + 1)).toNat

end

end A152629.P16426827331169525341

/-! ## A152629.P5554502291496530850

`A000027(A152635(n+1))`
-/

namespace A152629.P5554502291496530850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A152635 (n + 1)).toNat

end

end A152629.P5554502291496530850

/-!
# A152631: Number of permutations of floor(i*5/2), i=0..n-1, with all sums of 7 adjacent terms unique.

The programs for A152631, there is no canonical definition to state claims against.
-/

/-! ## A152631.P11748445594049263984

`A152635(C(n+1, ∑{digits}[n, #]))`
-/

namespace A152631.P11748445594049263984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152635 (Nat.choose (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A152631.P11748445594049263984

/-! ## A152631.P8970463128465354947

`A152635(A153583(∑[n]))`
-/

namespace A152631.P8970463128465354947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152635 (A153583 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A152631.P8970463128465354947

/-! ## A152631.P10937234301178516215

`A152635(A062399(n)+1)`
-/

namespace A152631.P10937234301178516215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152635 (A062399 n + 1).toNat

end

end A152631.P10937234301178516215

/-! ## A152631.P2429658799402628863

`A152643(A062399(n)+1)`
-/

namespace A152631.P2429658799402628863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152643 (A062399 n + 1).toNat

end

end A152631.P2429658799402628863

/-! ## A152631.P7620697875802347222

`record[A152635(A114731(n+1))]`
-/

namespace A152631.P7620697875802347222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152635 (A114731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152631.P7620697875802347222

/-!
# A152632: Number of permutations of floor(i*5/3), i=0..n-1, with all sums of 7 adjacent terms unique.

The programs for A152632, there is no canonical definition to state claims against.
-/

/-! ## A152632.P3852210237226014950

`A152640(record[A048379(n)])`
-/

namespace A152632.P3852210237226014950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152640 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152632.P3852210237226014950

/-! ## A152632.P13452633273708347868

`A152640(record[A252648(n)])`
-/

namespace A152632.P13452633273708347868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152640 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152632.P13452633273708347868

/-! ## A152632.P2071628395449378594

`A000027(A152640(n+1))`
-/

namespace A152632.P2071628395449378594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A152640 (n + 1)).toNat

end

end A152632.P2071628395449378594

/-! ## A152632.P13226315591767046789

`A152640(A024657(n+1))`
-/

namespace A152632.P13226315591767046789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152640 (A024657 (n + 1)).toNat

end

end A152632.P13226315591767046789

/-! ## A152632.P12936856306267231557

`A152640(C(A052382(n+1), n))`
-/

namespace A152632.P12936856306267231557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152640 (Nat.choose (A052382 (n + 1)).toNat n)

end

end A152632.P12936856306267231557

/-!
# A152634: Number of permutations of floor(i*6/5), i=0..n-1, with all sums of 7 adjacent terms unique.

The programs for A152634, there is no canonical definition to state claims against.
-/

/-! ## A152634.P17148296644736038144

`A152639(A199343(n))`
-/

namespace A152634.P17148296644736038144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152639 (A199343 n).toNat

end

end A152634.P17148296644736038144

/-! ## A152634.P16292560694577463011

`A152639(∑[A250666(n)])`
-/

namespace A152634.P16292560694577463011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152634.P16292560694577463011

/-! ## A152634.P17573713258789205802

`A152639(∑[A251078(n)])`
-/

namespace A152634.P17573713258789205802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152634.P17573713258789205802

/-! ## A152634.P4086164047705985585

`A152639(record[A048379(n)])`
-/

namespace A152634.P4086164047705985585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152634.P4086164047705985585

/-! ## A152634.P5094396943078529331

`A000027(A152639(n+1))`
-/

namespace A152634.P5094396943078529331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A152639 (n + 1)).toNat

end

end A152634.P5094396943078529331

/-!
# A152635: Number of permutations of floor(i*7/2), i=0..n-1, with all sums of 7 adjacent terms unique.

The programs for A152635, there is no canonical definition to state claims against.
-/

/-! ## A152635.P15484710517661867093

`A152643(A077168(n))`
-/

namespace A152635.P15484710517661867093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152643 (A077168 n).toNat

end

end A152635.P15484710517661867093

/-! ## A152635.P10722005024949297236

`A152643(A060695(n+1))`
-/

namespace A152635.P10722005024949297236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152643 (A060695 (n + 1)).toNat

end

end A152635.P10722005024949297236

/-! ## A152635.P8831015726353254700

`A152643(∑[A257778(n)!])`
-/

namespace A152635.P8831015726353254700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A257778 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152643 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152635.P8831015726353254700

/-! ## A152635.P3946063574752089661

`A152643(∑[A147343(n+1)])`
-/

namespace A152635.P3946063574752089661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152643 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152635.P3946063574752089661

/-! ## A152635.P15154206863113234151

`A152643(∑[A257778(n)+1])`
-/

namespace A152635.P15154206863113234151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152643 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152635.P15154206863113234151

/-!
# A152636: Number of permutations of floor(i*7/3), i=0..n-1, with all sums of 7 adjacent terms unique.

The programs for A152636, there is no canonical definition to state claims against.
-/

/-! ## A152636.P16333048353095719107

`A152638(A199343(n))`
-/

namespace A152636.P16333048353095719107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152638 (A199343 n).toNat

end

end A152636.P16333048353095719107

/-! ## A152636.P8134427441991014396

`A152638(∑[A250666(n)])`
-/

namespace A152636.P8134427441991014396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152638 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152636.P8134427441991014396

/-! ## A152636.P8738285424754340416

`A152638(A061219(n+1))`
-/

namespace A152636.P8738285424754340416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152638 (A061219 (n + 1)).toNat

end

end A152636.P8738285424754340416

/-! ## A152636.P4383296268802858718

`A152638(A250666(n)+n)`
-/

namespace A152636.P4383296268802858718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152638 (A250666 n + (n : ℤ)).toNat

end

end A152636.P4383296268802858718

/-! ## A152636.P6388582650170893393

`A152638(lcm(n+1, A054252(n)))`
-/

namespace A152636.P6388582650170893393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152638 (Int.lcm (n + 1 : ℤ) (A054252 n))

end

end A152636.P6388582650170893393

/-!
# A152637: Number of permutations of floor(i*7/4), i=0..n-1, with all sums of 7 adjacent terms unique.

The programs for A152637, there is no canonical definition to state claims against.
-/

/-! ## A152637.P4575618160258104541

`A152641(A199343(n))`
-/

namespace A152637.P4575618160258104541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152641 (A199343 n).toNat

end

end A152637.P4575618160258104541

/-! ## A152637.P3231577608478395365

`A152641(∑[A250666(n)])`
-/

namespace A152637.P3231577608478395365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152637.P3231577608478395365

/-! ## A152637.P12744152910185326896

`A152644(∑[A250666(n)])`
-/

namespace A152637.P12744152910185326896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152644 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152637.P12744152910185326896

/-! ## A152637.P8801618092190828219

`A152641(record[A048379(n)])`
-/

namespace A152637.P8801618092190828219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152637.P8801618092190828219

/-! ## A152637.P2637977097156708569

`A152644(record[A048379(n)])`
-/

namespace A152637.P2637977097156708569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152644 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152637.P2637977097156708569

/-!
# A152650: Triangle of the numerators of coefficients c(n,k) = [x^k] P(n,x) of certain polynomials P(n,x) given below.

The programs for A152650, there is no canonical definition to state claims against.
-/

/-! ## A152650.P13634906095889475484

`A009998(n)²/A255812(n+1)`
-/

namespace A152650.P13634906095889475484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n ^ 2 : ℚ) / (A255812 (n + 1) : ℚ)

end

end A152650.P13634906095889475484

/-! ## A152650.P6737944480977469203

`A009998(n)/A119502(n)*A152656(n)`
-/

namespace A152650.P6737944480977469203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) / (A119502 n : ℚ) * (A152656 n : ℚ)

end

end A152650.P6737944480977469203

/-! ## A152650.P7246067303333803009

`lcm(A094587(n), A154372(n))/A094587(n)`
-/

namespace A152650.P7246067303333803009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A094587 n) (A154372 n) : ℚ) / (A094587 n : ℚ)

end

end A152650.P7246067303333803009

/-! ## A152650.P5411664153924636182

`A000027(A009998(n)/A255812(n+1)*A009998(n))`
-/

namespace A152650.P5411664153924636182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A009998 n : ℚ) / (A255812 (n + 1) : ℚ) * (A009998 n : ℚ))).toNat

end

end A152650.P5411664153924636182

/-! ## A152650.P4615313368952216450

`A009998(n)/A000027(A255812(n+1)/A009998(n))`
-/

namespace A152650.P4615313368952216450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) / (A000027 (SequenceMachineLib.roundAway ((A255812 (n + 1) : ℚ) / (A009998 n : ℚ))).toNat : ℚ)

end

end A152650.P4615313368952216450

/-! ## A152650.P15222081086479800095

`A000290(A009998(n))/A255812(A000027(n+1))`
-/

namespace A152650.P15222081086479800095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A009998 n).toNat : ℚ) / (A255812 (A000027 (n + 1)).toNat : ℚ)

end

end A152650.P15222081086479800095

/-! ## A152650.P7371619620841680824

`A000290(A002262(n+1)^A025581(n))/A255812(n+1)`
-/

namespace A152650.P7371619620841680824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (SequenceMachineLib.roundAway ((A002262 (n + 1) : ℚ) ^ (A025581 n : ℤ))).toNat : ℚ) / (A255812 (n + 1) : ℚ)

end

end A152650.P7371619620841680824

/-! ## A152650.P16167856521743383294

`A000290(A144328(n+2)^A004736(n+2))/A255812(n+1)`
-/

namespace A152650.P16167856521743383294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (SequenceMachineLib.roundAway ((A144328 (n + 2) : ℚ) ^ (A004736 (n + 2) : ℤ))).toNat : ℚ) / (A255812 (n + 1) : ℚ)

end

end A152650.P16167856521743383294

/-!
# A152652: Least prime p with digit sum A047235(n).

The programs for A152652, there is no canonical definition to state claims against.
-/

/-! ## A152652.P15503572967019320368

`record[A067180(2*(n+1))]`
-/

namespace A152652.P15503572967019320368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152652.P15503572967019320368

/-! ## A152652.P3514441768039554826

`A067180(A047235(n+1))`
-/

namespace A152652.P3514441768039554826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A047235 (n + 1)).toNat

end

end A152652.P3514441768039554826

/-! ## A152652.P7518839224264761824

`A067180(A047241(n+1)+1)`
-/

namespace A152652.P7518839224264761824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A047241 (n + 1) + 1).toNat

end

end A152652.P7518839224264761824

/-! ## A152652.P11536835545763116901

`A067180(2*A001651(n+1))`
-/

namespace A152652.P11536835545763116901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (2 * A001651 (n + 1)).toNat

end

end A152652.P11536835545763116901

/-! ## A152652.P12111118678274934642

`A067180(A001651(n+1)+A001651(n+1))`
-/

namespace A152652.P12111118678274934642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A001651 (n + 1) + A001651 (n + 1)).toNat

end

end A152652.P12111118678274934642

/-!
# A152653: a(n) = (n-1)! * Product_{k=1..n-1} k!.

The programs for A152653, the canonical program `A152653.P369305298096991339` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152653 has offset 1).

The definition of A152653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152653.P369305298096991339

`A000178(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A152653

/-- `A000178(n+1)/(n+1)` -/
def P369305298096991339.Spec : Prop :=
  ∀ n, P369305298096991339.a n = (A152653 (n + 1) : ℚ)

end A152653

/-! ## A152653.P5533821234374269393

`n!*∏[n!]`
-/

namespace A152653.P5533821234374269393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152653.P5533821234374269393

namespace A152653

/-- `n!*∏[n!]` -/
def P5533821234374269393.Spec : Prop :=
  ∀ n, (P5533821234374269393.a n : ℤ) = A152653 (n + 1)

end A152653

/-! ## A152653.P5634809183240981847

`n!/∏[1/n!]`
-/

namespace A152653.P5634809183240981847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152653.P5634809183240981847

namespace A152653

/-- `n!/∏[1/n!]` -/
def P5634809183240981847.Spec : Prop :=
  ∀ n, P5634809183240981847.a n = (A152653 (n + 1) : ℚ)

end A152653

/-! ## A152653.P12476692230483841686

`exp(∑[log(n!)])*n!`
-/

namespace A152653.P12476692230483841686
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j) * (Nat.factorial n : ℝ)

end

end A152653.P12476692230483841686

namespace A152653

/-- `exp(∑[log(n!)])*n!` -/
def P12476692230483841686.Spec : Prop :=
  ∀ n, P12476692230483841686.a n = (A152653 (n + 1) : ℝ)

end A152653

/-! ## A152653.P10557630347750702967

`∏[Δ[n!]+floor(acot(n))]`
-/

namespace A152653.P10557630347750702967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152653.P10557630347750702967

namespace A152653

/-- `∏[Δ[n!]+floor(acot(n))]` -/
def P10557630347750702967.Spec : Prop :=
  ∀ n, P10557630347750702967.a n = A152653 (n + 1)

end A152653

/-!
# A152654: A vector recursion sequence: k = 1; m = 2; l = 1; a(n)=k*{0,a(n-2),0}+m*{-(m-1)/m,a(n-1)}++m*{a(n-1),-(m-1)/m}+l*{0,0,a(n-4),0,0}.

The programs for A152654, there is no canonical definition to state claims against.
-/

/-! ## A152654.P17362609938710145874

`A111987(A157152(n))`
-/

namespace A152654.P17362609938710145874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111987 (A157152 n).toNat

end

end A152654.P17362609938710145874

/-! ## A152654.P17023240752311559505

`A321578(A157149(n))`
-/

namespace A152654.P17023240752311559505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A157149 n).toNat

end

end A152654.P17023240752311559505

/-! ## A152654.P8503906189193297686

`A097285(A000010(A157177(n)²))`
-/

namespace A152654.P8503906189193297686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A000010 (A157177 n ^ 2).toNat).toNat

end

end A152654.P8503906189193297686

/-! ## A152654.P8792060594494059103

`A157179(n)+A001222(A176639(n))`
-/

namespace A152654.P8792060594494059103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157179 n + A001222 (A176639 n).toNat

end

end A152654.P8792060594494059103

/-! ## A152654.P4140563414031892130

`A007674(A001263(n+1)%A350569(n+2))`
-/

namespace A152654.P4140563414031892130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (Int.tmod (A001263 (n + 1)) (A350569 (n + 2))).toNat

end

end A152654.P4140563414031892130

/-!
# A152655: A vector recursion sequence: k = -3; m = 3; l = -3; a(n)=k*{0,a(n-2),0}+m*{-(m-1)/m,a(n-1)}++m*{a(n-1),-(m-1)/m}+l*{0,0,a(n-4),0,0}.

The programs for A152655, there is no canonical definition to state claims against.
-/

/-! ## A152655.P14595380766073804382

`A000265(A223202(n+1))+char[12]`
-/

namespace A152655.P14595380766073804382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A223202 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A152655.P14595380766073804382

/-! ## A152655.P16711374560664779385

`A137339(A001263(n+1))%(n+4)²`
-/

namespace A152655.P16711374560664779385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137339 (A001263 (n + 1)).toNat) ((n + 4) ^ 2 : ℤ)

end

end A152655.P16711374560664779385

/-! ## A152655.P6881502991999305343

`A061898(A000005(A007318(n)!))`
-/

namespace A152655.P6881502991999305343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A000005 (Nat.factorial (A007318 n).toNat)).toNat

end

end A152655.P6881502991999305343

/-! ## A152655.P5379858572621586201

`A061898(A000005(A034932(n)!))`
-/

namespace A152655.P5379858572621586201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A000005 (Nat.factorial (A034932 n).toNat)).toNat

end

end A152655.P5379858572621586201

/-! ## A152655.P17464319436688673294

`A225413(n)+A000265(A223202(n+1))`
-/

namespace A152655.P17464319436688673294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225413 n + A000265 (A223202 (n + 1)).toNat

end

end A152655.P17464319436688673294

/-!
# A152656: Triangle read by rows: denominators of polynomials from A000142: P(0,x) = 1, P(n,x) = 1/n! + x*Sum_{i=0..n-1} P(n-i-1)/i!. Numerators are A152650.

The programs for A152656, the canonical program `A152656.P12665630540216407348` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152656 has offset 0).

The definition of A152656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152656.P16678019980762800528

`A009998(n)/A255812(n+1)*A119502(n)`
-/

namespace A152656.P16678019980762800528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) / (A255812 (n + 1) : ℚ) * (A119502 n : ℚ)

end

end A152656.P16678019980762800528

namespace A152656

/-- `A009998(n)/A255812(n+1)*A119502(n)` -/
def P16678019980762800528.Spec : Prop :=
  ∀ n, P16678019980762800528.a n = (A152656 n : ℚ)

end A152656

/-! ## A152656.P12665630540216407348

`lcm(A009998(n), A119502(n))/A009998(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A152656

/-- `lcm(A009998(n), A119502(n))/A009998(n)` -/
def P12665630540216407348.Spec : Prop :=
  ∀ n, P12665630540216407348.a n = (A152656 n : ℚ)

end A152656

/-! ## A152656.P16698459301700397939

`gcd(A119502(n), A142589(n+1))`
-/

namespace A152656.P16698459301700397939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119502 n) (A142589 (n + 1))

end

end A152656.P16698459301700397939

namespace A152656

/-- `gcd(A119502(n), A142589(n+1))` -/
def P16698459301700397939.Spec : Prop :=
  ∀ n, (P16698459301700397939.a n : ℤ) = A152656 n

end A152656

/-! ## A152656.P631218489863727571

`lcm(A094587(n), A154372(n))/A154372(n)`
-/

namespace A152656.P631218489863727571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A094587 n) (A154372 n) : ℚ) / (A154372 n : ℚ)

end

end A152656.P631218489863727571

namespace A152656

/-- `lcm(A094587(n), A154372(n))/A154372(n)` -/
def P631218489863727571.Spec : Prop :=
  ∀ n, P631218489863727571.a n = (A152656 n : ℚ)

end A152656

/-! ## A152656.P507150324139488696

`gcd(A025581(n)!, A153274(n+1))`
-/

namespace A152656.P507150324139488696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A025581 n).toNat : ℤ) (A153274 (n + 1))

end

end A152656.P507150324139488696

namespace A152656

/-- `gcd(A025581(n)!, A153274(n+1))` -/
def P507150324139488696.Spec : Prop :=
  ∀ n, (P507150324139488696.a n : ℤ) = A152656 n

end A152656

/-! ## A152656.P1831583184873659905

`A119502(n)/A009998(n)*A152650(n)`
-/

namespace A152656.P1831583184873659905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119502 n : ℚ) / (A009998 n : ℚ) * (A152650 n : ℚ)

end

end A152656.P1831583184873659905

namespace A152656

/-- `A119502(n)/A009998(n)*A152650(n)` -/
def P1831583184873659905.Spec : Prop :=
  ∀ n, P1831583184873659905.a n = (A152656 n : ℚ)

end A152656

/-! ## A152656.P16437969090824624116

`gcd(A153274(n+1)², A130469(n+1))`
-/

namespace A152656.P16437969090824624116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153274 (n + 1) ^ 2) (A130469 (n + 1))

end

end A152656.P16437969090824624116

namespace A152656

/-- `gcd(A153274(n+1)², A130469(n+1))` -/
def P16437969090824624116.Spec : Prop :=
  ∀ n, (P16437969090824624116.a n : ℤ) = A152656 n

end A152656

/-!
# A152657: Secluded primes.

The programs for A152657, there is no canonical definition to state claims against.
-/

/-! ## A152657.P14742572622877465664

`record[A008683(A001006(n))*A092217(n+1)]`
-/

namespace A152657.P14742572622877465664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001006 n).toNat * A092217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152657.P14742572622877465664

/-!
# A152659: Triangle read by rows: T(n,k) is the number of lattice paths from (0,0) to (n,n) with steps E=(1,0) and N=(0,1) and having k turns (NE or EN) (1<=k<=2n-1).

The programs for A152659, there is no canonical definition to state claims against.
-/

/-! ## A152659.P11091570861136809295

`2*A247644(n+1)`
-/

namespace A152659.P11091570861136809295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247644 (n + 1)

end

end A152659.P11091570861136809295

/-! ## A152659.P15837130784802383891

`4*A247644(-xor(n, -1))/2`
-/

namespace A152659.P15837130784802383891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A247644 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2)

end

end A152659.P15837130784802383891

/-! ## A152659.P15870095776140899575

`2*A088855(comp[round(sqrt(n+1))²+n]+1)`
-/

namespace A152659.P15870095776140899575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088855 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A152659.P15870095776140899575

/-! ## A152659.P12199987791750066882

`A004277(A247644(n+1))`
-/

namespace A152659.P12199987791750066882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A247644 (n + 1)).toNat

end

end A152659.P12199987791750066882

/-! ## A152659.P9317001902616715849

`A004275(A247644(n+1)+1)`
-/

namespace A152659.P9317001902616715849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A247644 (n + 1) + 1).toNat

end

end A152659.P9317001902616715849

/-! ## A152659.P15514575333550566885

`2*A172101(A317303(n+1))`
-/

namespace A152659.P15514575333550566885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172101 (A317303 (n + 1)).toNat

end

end A152659.P15514575333550566885

/-! ## A152659.P16366020568739242978

`A004273(A247644(n+1)+1)-1`
-/

namespace A152659.P16366020568739242978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A247644 (n + 1) + 1).toNat - 1

end

end A152659.P16366020568739242978

/-! ## A152659.P2114961133342658052

`A004273(A247644(-xor(n, -1)))+1`
-/

namespace A152659.P2114961133342658052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A247644 (-Int.xor (n : ℤ) (-1)).toNat).toNat + 1

end

end A152659.P2114961133342658052

/-! ## A152659.P5263573472906535282

`A247644(n+1)+A247644(-xor(n, -1))`
-/

namespace A152659.P5263573472906535282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247644 (n + 1) + A247644 (-Int.xor (n : ℤ) (-1)).toNat

end

end A152659.P5263573472906535282

/-! ## A152659.P14436271432261982670

`A005843(A247644(n+1))%A000032(n+2)`
-/

namespace A152659.P14436271432261982670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A247644 (n + 1)).toNat) (A000032 (n + 2))

end

end A152659.P14436271432261982670

/-!
# A152661: Number of permutations of [n] for which the first two entries have the same parity (n>=2).

The programs for A152661, there is no canonical definition to state claims against.
-/

/-! ## A152661.P12825162782543006598

`n!*∑[and(1, n)+n]`
-/

namespace A152661.P12825162782543006598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152661.P12825162782543006598

/-! ## A152661.P16986016265028830412

`n!*floor((n+1)²/2)`
-/

namespace A152661.P16986016265028830412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌊((n + 1) ^ 2 : ℚ) / 2⌋

end

end A152661.P16986016265028830412

/-! ## A152661.P15497407078207968138

`2*n!*∑[∑[n%2]]`
-/

namespace A152661.P15497407078207968138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152661.P15497407078207968138

/-! ## A152661.P9073276083579028713

`ceil(n/2)*∏[xor(1, n)+1]`
-/

namespace A152661.P9073276083579028713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152661.P9073276083579028713

/-! ## A152661.P933424431482849661

`n*((n+1)!-a(n-1))` with `a(0)=0`
-/

namespace A152661.P933424431482849661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((Nat.factorial (n + 1) : ℤ) - a (n - 1))

end

end A152661.P933424431482849661

/-! ## A152661.P4224542591160172885

`n*(∏[n+1]-a(n-1))` with `a(0)=0`
-/

namespace A152661.P4224542591160172885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1))

end

end A152661.P4224542591160172885

/-! ## A152661.P17580999019866418758

`(n/floor(n/2)+n)*a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A152661.P17580999019866418758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  ((n : ℚ) / (⌊(n : ℚ) / 2⌋ : ℚ) + (n : ℚ)) * a (n - 1)

end

end A152661.P17580999019866418758

/-! ## A152661.P10698709474594213835

`2*A077613(n+1)`
-/

namespace A152661.P10698709474594213835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077613 (n + 1)

end

end A152661.P10698709474594213835

/-! ## A152661.P2936629040836953266

`A000142(n)*A007590(n+1)`
-/

namespace A152661.P2936629040836953266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A007590 (n + 1)

end

end A152661.P2936629040836953266

/-! ## A152661.P14605221220383023538

`(A000982(n)+n)*A000142(n)`
-/

namespace A152661.P14605221220383023538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000982 n + (n : ℤ)) * A000142 n

end

end A152661.P14605221220383023538

/-!
# A152663: Number of leading odd entries in all permutations of {1,2,...,n} (see example).

The programs for A152663, there is no canonical definition to state claims against.
-/

/-! ## A152663.P710408967603369697

`xor(1, n+2)/(n+3)*(n+1)!`
-/

namespace A152663.P710408967603369697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 2) : ℚ) / (n + 3 : ℚ) * (Nat.factorial (n + 1) : ℚ)

end

end A152663.P710408967603369697

/-! ## A152663.P11565736486630735708

`xor(1, n+2)/(n+3)*∏[n+1]`
-/

namespace A152663.P11565736486630735708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 2) : ℚ) / (n + 3 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A152663.P11565736486630735708

/-! ## A152663.P2743659521118795436

`∏[n+1]/ratio[A065033(n+1)]`
-/

namespace A152663.P2743659521118795436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A152663.P2743659521118795436

/-! ## A152663.P4072074453834594004

`∏[n+1]/ratio[A110654(n+1)]`
-/

namespace A152663.P4072074453834594004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A152663.P4072074453834594004

/-! ## A152663.P16682258029497517758

`A256881(n+2)-A000142(n+1)`
-/

namespace A152663.P16682258029497517758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256881 (n + 2) - A000142 (n + 1)

end

end A152663.P16682258029497517758

/-! ## A152663.P11106796799524995377

`A065033(n+1)*A107991(n+2)`
-/

namespace A152663.P11106796799524995377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) * A107991 (n + 2)

end

end A152663.P11106796799524995377

/-! ## A152663.P1950033491430075036

`A256881(n+2)-A052849(n+1)/2`
-/

namespace A152663.P1950033491430075036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256881 (n + 2) : ℚ) - (A052849 (n + 1) : ℚ) / 2

end

end A152663.P1950033491430075036

/-! ## A152663.P11509939855688220169

`A000142(n+1)/A052558(n+1)*A052591(n+1)`
-/

namespace A152663.P11509939855688220169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A052558 (n + 1) : ℚ) * (A052591 (n + 1) : ℚ)

end

end A152663.P11509939855688220169

/-! ## A152663.P1501073857397958915

`((n+2)!-∏[-(n+1)])/(n+3)`
-/

namespace A152663.P1501073857397958915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.factorial (n + 2) : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 3 : ℚ)

end

end A152663.P1501073857397958915

/-! ## A152663.P11881966059536696668

`(∏[n+2]-∏[-(n+1)])/(n+3)`
-/

namespace A152663.P11881966059536696668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (n + 3 : ℚ)

end

end A152663.P11881966059536696668

/-!
# A152664: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} for which k is the maximal number of initial even entries (0 <= k <= floor(n/2)).

The programs for A152664, there is no canonical definition to state claims against.
-/

/-! ## A152664.P733079921941727598

`A348997(A363488(n+1)%A293606(n))`
-/

namespace A152664.P733079921941727598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348997 (Int.tmod (A363488 (n + 1)) (A293606 n)).toNat

end

end A152664.P733079921941727598

/-! ## A152664.P6513289643476598959

`A336856(A000110(n)*A011971(n))`
-/

namespace A152664.P6513289643476598959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336856 (A000110 n * A011971 n).toNat

end

end A152664.P6513289643476598959

/-! ## A152664.P3637212668497485801

`A000005(xor(A052433(n+1), A141202(n+1))+1)`
-/

namespace A152664.P3637212668497485801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor (A052433 (n + 1)) (A141202 (n + 1)) + 1).toNat

end

end A152664.P3637212668497485801

/-! ## A152664.P17173442802574802468

`gcd(A034382(n+1)/(n+1), A338986(A283174(n+1)))`
-/

namespace A152664.P17173442802574802468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A034382 (n + 1) : ℚ) / (n + 1 : ℚ))) (A338986 (A283174 (n + 1)).toNat)

end

end A152664.P17173442802574802468

/-!
# A152665: Number of leading even entries in all permutations of {1,2,...,n}.

The programs for A152665, there is no canonical definition to state claims against.
-/

/-! ## A152665.P4907534455732049900

`∏[A004526(n)+1]*A037955(n+1)`
-/

namespace A152665.P4907534455732049900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A037955 (n + 1)

end

end A152665.P4907534455732049900

/-! ## A152665.P13907542415635112991

`∏[A008621(2*n)]*A037955(n+1)`
-/

namespace A152665.P13907542415635112991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A037955 (n + 1)

end

end A152665.P13907542415635112991

/-! ## A152665.P6168448463529845245

`∏[A140106(n+4)]*A037955(n+1)`
-/

namespace A152665.P6168448463529845245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A037955 (n + 1)

end

end A152665.P6168448463529845245

/-! ## A152665.P7806898957261328430

`A052657(n+1)/A004526(A265283(n+1))`
-/

namespace A152665.P7806898957261328430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052657 (n + 1) : ℚ) / (A004526 (A265283 (n + 1)).toNat : ℚ)

end

end A152665.P7806898957261328430

/-! ## A152665.P17541125894336283363

`A000142(n+1)*A004526(n+1)/A266977(n)`
-/

namespace A152665.P17541125894336283363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) * A004526 (n + 1) : ℚ) / (A266977 n : ℚ)

end

end A152665.P17541125894336283363

/-! ## A152665.P7919558056771303962

`A077611(n+2)/A002620(n+3)`
-/

namespace A152665.P7919558056771303962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077611 (n + 2) : ℚ) / (A002620 (n + 3) : ℚ)

end

end A152665.P7919558056771303962

/-!
# A152666: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k runs of odd entries (0<=k<=ceiling(n/2)). For example, the permutation 321756498 has 3 runs of odd entries: 3, 175 and 9.

The programs for A152666, there is no canonical definition to state claims against.
-/

/-! ## A152666.P922632500043316792

`A276150(A324239(n+1)^3)`
-/

namespace A152666.P922632500043316792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A324239 (n + 1) ^ 3).toNat

end

end A152666.P922632500043316792

/-!
# A152667: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k runs of even entries (n >= 2, 1 <= k <= floor(n/2)). For example, the permutation 321756498 has 3 runs of even entries: 2, 64 and 8.

The programs for A152667, there is no canonical definition to state claims against.
-/

/-! ## A152667.P10101891315718953771

`A145892(C(ceil(2*sqrt(n+1)), 2)-n+1)`
-/

namespace A152667.P10101891315718953771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145892 ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A152667.P10101891315718953771

/-! ## A152667.P5573386989778715181

`A145892(A271647(n+1)+1)`
-/

namespace A152667.P5573386989778715181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145892 (A271647 (n + 1) + 1).toNat

end

end A152667.P5573386989778715181

/-! ## A152667.P8020222283770127738

`A045826(A387764(n))/2`
-/

namespace A152667.P8020222283770127738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045826 (A387764 n).toNat : ℚ) / 2

end

end A152667.P8020222283770127738

/-!
# A152668: Number of runs of even entries in all permutations of {1,2,...,n} (the permutation 274831659 has 3 runs of even entries: 2, 48 and 6).

The programs for A152668, there is no canonical definition to state claims against.
-/

/-! ## A152668.P11022002150293945465

`(n+1)!*∑[n+2-a(n-1)]` with `a(0)=2`
-/

namespace A152668.P11022002150293945465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n + 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152668.P11022002150293945465

/-! ## A152668.P7304878979171764641

`∑[n+2-a(n-1)]*∏[n+1]` with `a(0)=2`
-/

namespace A152668.P7304878979171764641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n + 2 : ℤ) - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A152668.P7304878979171764641

/-! ## A152668.P4091314493915639012

`A091441(∑[gcd(2, n)+n])`
-/

namespace A152668.P4091314493915639012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091441 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152668.P4091314493915639012

/-! ## A152668.P1557912774102504962

`record[A091441(floor((2-n)²/2)+n)]`
-/

namespace A152668.P1557912774102504962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091441 (⌊((2 - (n : ℤ)) ^ 2 : ℚ) / 2⌋ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152668.P1557912774102504962

/-! ## A152668.P6547197363399825746

`A091441(floor((n+1)²/2)+n+3)`
-/

namespace A152668.P6547197363399825746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091441 (⌊((n + 1) ^ 2 : ℚ) / 2⌋ + (n : ℤ) + 3).toNat

end

end A152668.P6547197363399825746

/-! ## A152668.P6760191648798422534

`(A004526(n)+1)*A052687(n+1)`
-/

namespace A152668.P6760191648798422534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) * A052687 (n + 1)

end

end A152668.P6760191648798422534

/-! ## A152668.P16664429771410569513

`2*A077613(n+2)-A306258(n+1)`
-/

namespace A152668.P16664429771410569513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077613 (n + 2) - A306258 (n + 1)

end

end A152668.P16664429771410569513

/-!
# A152669: Last digit of Catalan number A000108(n).

The programs for A152669, the canonical program `A152669.P4398512011609175369` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152669 has offset 0).

The definition of A152669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152669.P4398512011609175369

`A000108(n)%10`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A152669

/-- `A000108(n)%10` -/
def P4398512011609175369.Spec : Prop :=
  ∀ n, P4398512011609175369.a n = A152669 n

theorem P4398512011609175369.correct : P4398512011609175369.Spec := by
  intro n
  simp only [A152669]

end A152669

/-! ## A152669.P3356771954947291348

`A054899(A368359(n))`
-/

namespace A152669.P3356771954947291348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A368359 n).toNat

end

end A152669.P3356771954947291348

namespace A152669

/-- `A054899(A368359(n))` -/
def P3356771954947291348.Spec : Prop :=
  ∀ n, P3356771954947291348.a n = A152669 n

end A152669

/-! ## A152669.P3589407318211872709

`abs(A168491(n)%10)`
-/

namespace A152669.P3589407318211872709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A168491 n) 10|

end

end A152669.P3589407318211872709

namespace A152669

/-- `abs(A168491(n)%10)` -/
def P3589407318211872709.Spec : Prop :=
  ∀ n, P3589407318211872709.a n = A152669 n

end A152669

/-! ## A152669.P8109604969892936087

`A120588(n+1)%10`
-/

namespace A152669.P8109604969892936087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 1)) 10

end

end A152669.P8109604969892936087

namespace A152669

/-- `A120588(n+1)%10` -/
def P8109604969892936087.Spec : Prop :=
  ∀ n, P8109604969892936087.a n = A152669 n

end A152669

/-! ## A152669.P5072748193625313624

`(A120304(n)+2)%10`
-/

namespace A152669.P5072748193625313624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120304 n + 2) 10

end

end A152669.P5072748193625313624

namespace A152669

/-- `(A120304(n)+2)%10` -/
def P5072748193625313624.Spec : Prop :=
  ∀ n, P5072748193625313624.a n = A152669 n

theorem P5072748193625313624.correct : P5072748193625313624.Spec := by
  intro n
  simp only [A152669, Nat.add_sub_cancel, A152669.P5072748193625313624.a, A152669.P4398512011609175369.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152669

/-! ## A152669.P9537186173506624630

`A028303(2*n)%10`
-/

namespace A152669.P9537186173506624630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 (2 * n)) 10

end

end A152669.P9537186173506624630

namespace A152669

/-- `A028303(2*n)%10` -/
def P9537186173506624630.Spec : Prop :=
  ∀ n, P9537186173506624630.a n = A152669 n

end A152669

/-! ## A152669.P1833239413112989672

`A028304(2*n)%10`
-/

namespace A152669.P1833239413112989672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028304 (2 * n)) 10

end

end A152669.P1833239413112989672

namespace A152669

/-- `A028304(2*n)%10` -/
def P1833239413112989672.Spec : Prop :=
  ∀ n, P1833239413112989672.a n = A152669 n

end A152669

/-! ## A152669.P9134473591457593366

`A126120(2*n)%10`
-/

namespace A152669.P9134473591457593366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 (2 * n)) 10

end

end A152669.P9134473591457593366

namespace A152669

/-- `A126120(2*n)%10` -/
def P9134473591457593366.Spec : Prop :=
  ∀ n, P9134473591457593366.a n = A152669 n

end A152669

/-! ## A152669.P11768502064446981261

`A126324(2*n)%10`
-/

namespace A152669.P11768502064446981261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126324 (2 * n)) 10

end

end A152669.P11768502064446981261

namespace A152669

/-- `A126324(2*n)%10` -/
def P11768502064446981261.Spec : Prop :=
  ∀ n, P11768502064446981261.a n = A152669 n

end A152669

/-! ## A152669.P16544153599831484801

`A329687(3*n)%10`
-/

namespace A152669.P16544153599831484801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329687 (3 * n)) 10

end

end A152669.P16544153599831484801

namespace A152669

/-- `A329687(3*n)%10` -/
def P16544153599831484801.Spec : Prop :=
  ∀ n, P16544153599831484801.a n = A152669 n

end A152669

/-! ## A152669.P6438216817222858617

`(A246604(n)+n)%10`
-/

namespace A152669.P6438216817222858617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246604 n + (n : ℤ)) 10

end

end A152669.P6438216817222858617

namespace A152669

/-- `(A246604(n)+n)%10` -/
def P6438216817222858617.Spec : Prop :=
  ∀ n, P6438216817222858617.a n = A152669 n

theorem P6438216817222858617.correct : P6438216817222858617.Spec := by
  intro n
  simp only [A152669, Nat.add_sub_cancel, A152669.P6438216817222858617.a, A152669.P4398512011609175369.a, A000108, A000108.P17551949696095299361.a, A246604, A246604.P5603396420743086449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152669

/-! ## A152669.P7719120893368166467

`A089408(Δ[n²])%10`
-/

namespace A152669.P7719120893368166467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 10

end

end A152669.P7719120893368166467

namespace A152669

/-- `A089408(Δ[n²])%10` -/
def P7719120893368166467.Spec : Prop :=
  ∀ n, P7719120893368166467.a n = A152669 n

end A152669

/-! ## A152669.P355073284177082957

`A097331(Δ[n²])%10`
-/

namespace A152669.P355073284177082957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 10

end

end A152669.P355073284177082957

namespace A152669

/-- `A097331(Δ[n²])%10` -/
def P355073284177082957.Spec : Prop :=
  ∀ n, P355073284177082957.a n = A152669 n

end A152669

/-! ## A152669.P9081115057156777788

`abs(A115140(n+1))%10`
-/

namespace A152669.P9081115057156777788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A115140 (n + 1)| 10

end

end A152669.P9081115057156777788

namespace A152669

/-- `abs(A115140(n+1))%10` -/
def P9081115057156777788.Spec : Prop :=
  ∀ n, P9081115057156777788.a n = A152669 n

end A152669

/-! ## A152669.P16998727683271049022

`abs(A105523(2*n+1))%10`
-/

namespace A152669.P16998727683271049022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A105523 (2 * n + 1)| 10

end

end A152669.P16998727683271049022

namespace A152669

/-- `abs(A105523(2*n+1))%10` -/
def P16998727683271049022.Spec : Prop :=
  ∀ n, P16998727683271049022.a n = A152669 n

end A152669

/-! ## A152669.P11864061818400325697

`abs(A182492(4*n+3))%10`
-/

namespace A152669.P11864061818400325697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A182492 (4 * n + 3)| 10

end

end A152669.P11864061818400325697

namespace A152669

/-- `abs(A182492(4*n+3))%10` -/
def P11864061818400325697.Spec : Prop :=
  ∀ n, P11864061818400325697.a n = A152669 n

end A152669

/-! ## A152669.P8407494447826994535

`A208355(A004273(n))%10`
-/

namespace A152669.P8407494447826994535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (A004273 n).toNat) 10

end

end A152669.P8407494447826994535

namespace A152669

/-- `A208355(A004273(n))%10` -/
def P8407494447826994535.Spec : Prop :=
  ∀ n, P8407494447826994535.a n = A152669 n

end A152669

/-! ## A152669.P9296355685676610195

`(A263986(n)+A000045(n))%10`
-/

namespace A152669.P9296355685676610195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + A000045 n) 10

end

end A152669.P9296355685676610195

namespace A152669

/-- `(A263986(n)+A000045(n))%10` -/
def P9296355685676610195.Spec : Prop :=
  ∀ n, P9296355685676610195.a n = A152669 n

theorem P9296355685676610195.correct : P9296355685676610195.Spec := by
  intro n
  simp only [A152669, Nat.add_sub_cancel, A152669.P9296355685676610195.a, A152669.P4398512011609175369.a, A000045, A000045.P11838749114346432762.a, A000108, A000108.P17551949696095299361.a, A263986, A263986.P11008450882714767519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152669

/-! ## A152669.P7450461754262011592

`(A001405(2*n)/(n+1))%10`
-/

namespace A152669.P7450461754262011592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001405 (2 * n) : ℚ) / (n + 1 : ℚ))) 10

end

end A152669.P7450461754262011592

namespace A152669

/-- `(A001405(2*n)/(n+1))%10` -/
def P7450461754262011592.Spec : Prop :=
  ∀ n, P7450461754262011592.a n = A152669 n

end A152669

/-! ## A152669.P14943077213660701923

`(A028329(n)/(2*(n+1)))%10`
-/

namespace A152669.P14943077213660701923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A028329 n : ℚ) / (2 * (n + 1) : ℚ))) 10

end

end A152669.P14943077213660701923

namespace A152669

/-- `(A028329(n)/(2*(n+1)))%10` -/
def P14943077213660701923.Spec : Prop :=
  ∀ n, P14943077213660701923.a n = A152669 n

end A152669

/-!
# A152670: Even Catalan numbers.

The programs for A152670, the canonical program `A152670.P12437644103347504857` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152670 has offset 1).

The definition of A152670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062289, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152670.P12437644103347504857

`A000108(A062289(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152670

/-- `A000108(A062289(n+1))` -/
def P12437644103347504857.Spec : Prop :=
  ∀ n, P12437644103347504857.a n = A152670 (n + 1)

theorem P12437644103347504857.correct : P12437644103347504857.Spec := by
  intro n
  simp only [A152670, Nat.add_sub_cancel]

end A152670

/-! ## A152670.P6701613816859912101

`2*A152671(n+1)`
-/

namespace A152670.P6701613816859912101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152671 (n + 1)

end

end A152670.P6701613816859912101

namespace A152670

/-- `2*A152671(n+1)` -/
def P6701613816859912101.Spec : Prop :=
  ∀ n, P6701613816859912101.a n = A152670 (n + 1)

end A152670

/-! ## A152670.P5671640133622497732

`A000108(comp[2^n-1])`
-/

namespace A152670.P5671640133622497732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152670.P5671640133622497732

namespace A152670

/-- `A000108(comp[2^n-1])` -/
def P5671640133622497732.Spec : Prop :=
  ∀ n, P5671640133622497732.a n = A152670 (n + 1)

end A152670

/-! ## A152670.P15890334819114530420

`A120588(comp[Δ[ceil(2^(n-1))]])`
-/

namespace A152670.P15890334819114530420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152670.P15890334819114530420

namespace A152670

/-- `A120588(comp[Δ[ceil(2^(n-1))]])` -/
def P15890334819114530420.Spec : Prop :=
  ∀ n, P15890334819114530420.a n = A152670 (n + 1)

end A152670

/-! ## A152670.P12128158912461731289

`A120304(comp[and(n, -(n+2))])+2`
-/

namespace A152670.P12128158912461731289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 2

end

end A152670.P12128158912461731289

namespace A152670

/-- `A120304(comp[and(n, -(n+2))])+2` -/
def P12128158912461731289.Spec : Prop :=
  ∀ n, P12128158912461731289.a n = A152670 (n + 1)

end A152670

/-! ## A152670.P18405660864430968053

`abs(A168491(comp[2^(∑[n+1]%(n+2))-1]))`
-/

namespace A152670.P18405660864430968053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2)) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A152670.P18405660864430968053

namespace A152670

/-- `abs(A168491(comp[2^(∑[n+1]%(n+2))-1]))` -/
def P18405660864430968053.Spec : Prop :=
  ∀ n, P18405660864430968053.a n = A152670 (n + 1)

end A152670

/-! ## A152670.P6062275420782850205

`abs(A168491(comp[A000225(n)]))`
-/

namespace A152670.P6062275420782850205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A152670.P6062275420782850205

namespace A152670

/-- `abs(A168491(comp[A000225(n)]))` -/
def P6062275420782850205.Spec : Prop :=
  ∀ n, P6062275420782850205.a n = A152670 (n + 1)

end A152670

/-! ## A152670.P8488473655544055418

`2*A152766(eq[2, A152765(n)])`
-/

namespace A152670.P8488473655544055418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152670.P8488473655544055418

namespace A152670

/-- `2*A152766(eq[2, A152765(n)])` -/
def P8488473655544055418.Spec : Prop :=
  ∀ n, P8488473655544055418.a n = A152670 (n + 1)

end A152670

/-! ## A152670.P9634671456224840202

`A120304(comp[A131436(n+1)])+2`
-/

namespace A152670.P9634671456224840202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131436 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 2

end

end A152670.P9634671456224840202

namespace A152670

/-- `A120304(comp[A131436(n+1)])+2` -/
def P9634671456224840202.Spec : Prop :=
  ∀ n, P9634671456224840202.a n = A152670 (n + 1)

end A152670

/-! ## A152670.P3990742467760907973

`A126120(eq[A126120(n)%2, A126120(n+1)])`
-/

namespace A152670.P3990742467760907973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A152670.P3990742467760907973

namespace A152670

/-- `A126120(eq[A126120(n)%2, A126120(n+1)])` -/
def P3990742467760907973.Spec : Prop :=
  ∀ n, P3990742467760907973.a n = A152670 (n + 1)

end A152670

/-! ## A152670.P7020907593233377592

`A172417(A103813(n+1))`
-/

namespace A152670.P7020907593233377592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172417 (A103813 (n + 1)).toNat

end

end A152670.P7020907593233377592

namespace A152670

/-- `A172417(A103813(n+1))` -/
def P7020907593233377592.Spec : Prop :=
  ∀ n, P7020907593233377592.a n = A152670 (n + 1)

end A152670

/-!
# A152671: Even Catalan numbers divided by 2.

The programs for A152671, the canonical program `A152671.P5270819374685445221` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152671 has offset 1).

The definition of A152671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152670, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152671.P5270819374685445221

`A152670(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152671

/-- `A152670(n+1)/2` -/
def P5270819374685445221.Spec : Prop :=
  ∀ n, P5270819374685445221.a n = (A152671 (n + 1) : ℚ)

end A152671

/-! ## A152671.P1847736470849323979

`A000108(A062289(n+1))/2`
-/

namespace A152671.P1847736470849323979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (A062289 (n + 1)).toNat : ℚ) / 2

end

end A152671.P1847736470849323979

namespace A152671

/-- `A000108(A062289(n+1))/2` -/
def P1847736470849323979.Spec : Prop :=
  ∀ n, P1847736470849323979.a n = (A152671 (n + 1) : ℚ)

end A152671

/-! ## A152671.P11292082676909995154

`A130380(comp[2^n-1])`
-/

namespace A152671.P11292082676909995154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130380 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152671.P11292082676909995154

namespace A152671

/-- `A130380(comp[2^n-1])` -/
def P11292082676909995154.Spec : Prop :=
  ∀ n, P11292082676909995154.a n = A152671 (n + 1)

end A152671

/-! ## A152671.P3211142155984871935

`A000108(comp[2^n-1])/2`
-/

namespace A152671.P3211142155984871935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A152671.P3211142155984871935

namespace A152671

/-- `A000108(comp[2^n-1])/2` -/
def P3211142155984871935.Spec : Prop :=
  ∀ n, P3211142155984871935.a n = (A152671 (n + 1) : ℚ)

end A152671

/-! ## A152671.P1743846228863603157

`(A120304(comp[and(n, -(n+2))])+2)/2`
-/

namespace A152671.P1743846228863603157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120304 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 2 : ℚ) / 2

end

end A152671.P1743846228863603157

namespace A152671

/-- `(A120304(comp[and(n, -(n+2))])+2)/2` -/
def P1743846228863603157.Spec : Prop :=
  ∀ n, P1743846228863603157.a n = (A152671 (n + 1) : ℚ)

end A152671

/-! ## A152671.P11104988866629599912

`A152766(lt[3, 3*(n+1)/2^val(n+1, 2)])`
-/

namespace A152671.P11104988866629599912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152766 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A152671.P11104988866629599912

namespace A152671

/-- `A152766(lt[3, 3*(n+1)/2^val(n+1, 2)])` -/
def P11104988866629599912.Spec : Prop :=
  ∀ n, P11104988866629599912.a n = A152671 (n + 1)

end A152671

/-! ## A152671.P7817706583195163405

`A152766(eq[2, A152765(n)])`
-/

namespace A152671.P7817706583195163405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152671.P7817706583195163405

namespace A152671

/-- `A152766(eq[2, A152765(n)])` -/
def P7817706583195163405.Spec : Prop :=
  ∀ n, P7817706583195163405.a n = A152671 (n + 1)

end A152671

/-! ## A152671.P3566012824112410053

`A120588(A057716(n+1))/2`
-/

namespace A152671.P3566012824112410053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (A057716 (n + 1)).toNat : ℚ) / 2

end

end A152671.P3566012824112410053

namespace A152671

/-- `A120588(A057716(n+1))/2` -/
def P3566012824112410053.Spec : Prop :=
  ∀ n, P3566012824112410053.a n = (A152671 (n + 1) : ℚ)

end A152671

/-! ## A152671.P9301135934936688901

`A172417(A103813(n+1))/2`
-/

namespace A152671.P9301135934936688901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172417 (A103813 (n + 1)).toNat : ℚ) / 2

end

end A152671.P9301135934936688901

namespace A152671

/-- `A172417(A103813(n+1))/2` -/
def P9301135934936688901.Spec : Prop :=
  ∀ n, P9301135934936688901.a n = (A152671 (n + 1) : ℚ)

end A152671

/-!
# A152674: Number of divisors of the numbers that are not squares.

The programs for A152674, the canonical program `A152674.P4037238558150557697` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152674 has offset 1).

The definition of A152674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152674.P4037238558150557697

`2*A095686(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152674

/-- `2*A095686(n+1)` -/
def P4037238558150557697.Spec : Prop :=
  ∀ n, P4037238558150557697.a n = A152674 (n + 1)

theorem P4037238558150557697.correct : P4037238558150557697.Spec := by
  intro n
  simp only [A152674, Nat.add_sub_cancel]

end A152674

/-! ## A152674.P10785633520372949648

`A000005(A000037(n+1))`
-/

namespace A152674.P10785633520372949648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000037 (n + 1)).toNat

end

end A152674.P10785633520372949648

namespace A152674

/-- `A000005(A000037(n+1))` -/
def P10785633520372949648.Spec : Prop :=
  ∀ n, P10785633520372949648.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P18253762014942866097

`∏{e}[comp[n²], #+1]`
-/

namespace A152674.P18253762014942866097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A152674.P18253762014942866097

namespace A152674

/-- `∏{e}[comp[n²], #+1]` -/
def P18253762014942866097.Spec : Prop :=
  ∀ n, (P18253762014942866097.a n : ℤ) = A152674 (n + 1)

end A152674

/-! ## A152674.P1692818995663791138

`∑{d}[comp[n²], ceil(acot(#))]`
-/

namespace A152674.P1692818995663791138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A152674.P1692818995663791138

namespace A152674

/-- `∑{d}[comp[n²], ceil(acot(#))]` -/
def P1692818995663791138.Spec : Prop :=
  ∀ n, P1692818995663791138.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P5160927423223761335

`∑{d}[comp[n²], (#%2)!]`
-/

namespace A152674.P5160927423223761335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (d % 2)

end

end A152674.P5160927423223761335

namespace A152674

/-- `∑{d}[comp[n²], (#%2)!]` -/
def P5160927423223761335.Spec : Prop :=
  ∀ n, (P5160927423223761335.a n : ℤ) = A152674 (n + 1)

end A152674

/-! ## A152674.P5712990429411948

`∑{d}[comp[n²], and(1, #)!]`
-/

namespace A152674.P5712990429411948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.land 1 d)

end

end A152674.P5712990429411948

namespace A152674

/-- `∑{d}[comp[n²], and(1, #)!]` -/
def P5712990429411948.Spec : Prop :=
  ∀ n, (P5712990429411948.a n : ℤ) = A152674 (n + 1)

end A152674

/-! ## A152674.P15866426377398578532

`∑{d}[comp[n²], gcd(2, gcd(3, #))]`
-/

namespace A152674.P15866426377398578532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 (Nat.gcd 3 d)

end

end A152674.P15866426377398578532

namespace A152674

/-- `∑{d}[comp[n²], gcd(2, gcd(3, #))]` -/
def P15866426377398578532.Spec : Prop :=
  ∀ n, (P15866426377398578532.a n : ℤ) = A152674 (n + 1)

end A152674

/-! ## A152674.P14491971963218865349

`∑{d}[comp[n²], ((-1)^#)²]`
-/

namespace A152674.P14491971963218865349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((-1) ^ d) ^ 2

end

end A152674.P14491971963218865349

namespace A152674

/-- `∑{d}[comp[n²], ((-1)^#)²]` -/
def P14491971963218865349.Spec : Prop :=
  ∀ n, P14491971963218865349.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P16143881931274750379

`A000005(comp[n²])`
-/

namespace A152674.P16143881931274750379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A152674.P16143881931274750379

namespace A152674

/-- `A000005(comp[n²])` -/
def P16143881931274750379.Spec : Prop :=
  ∀ n, P16143881931274750379.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P4568945301748683237

`lcm(2, A000005(comp[n^2]))`
-/

namespace A152674.P4568945301748683237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A152674.P4568945301748683237

namespace A152674

/-- `lcm(2, A000005(comp[n^2]))` -/
def P4568945301748683237.Spec : Prop :=
  ∀ n, (P4568945301748683237.a n : ℤ) = A152674 (n + 1)

end A152674

/-! ## A152674.P4331452499818389355

`A004277(A095686(n+1))`
-/

namespace A152674.P4331452499818389355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A095686 (n + 1)).toNat

end

end A152674.P4331452499818389355

namespace A152674

/-- `A004277(A095686(n+1))` -/
def P4331452499818389355.Spec : Prop :=
  ∀ n, P4331452499818389355.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P6820491734622970634

`filter[A000005(n+2), A059841(#)]`
-/

namespace A152674.P6820491734622970634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A152674.P6820491734622970634

namespace A152674

/-- `filter[A000005(n+2), A059841(#)]` -/
def P6820491734622970634.Spec : Prop :=
  ∀ n, P6820491734622970634.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P1356042012713259642

`filter[A000005(n+2), A135528(#)]`
-/

namespace A152674.P1356042012713259642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A152674.P1356042012713259642

namespace A152674

/-- `filter[A000005(n+2), A135528(#)]` -/
def P1356042012713259642.Spec : Prop :=
  ∀ n, P1356042012713259642.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P13027633521731775749

`filter[A000005(n+2), A266591(#)]`
-/

namespace A152674.P13027633521731775749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A152674.P13027633521731775749

namespace A152674

/-- `filter[A000005(n+2), A266591(#)]` -/
def P13027633521731775749.Spec : Prop :=
  ∀ n, P13027633521731775749.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P10135776829762776615

`A320111(2*A000037(n+1))`
-/

namespace A152674.P10135776829762776615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A000037 (n + 1)).toNat

end

end A152674.P10135776829762776615

namespace A152674

/-- `A320111(2*A000037(n+1))` -/
def P10135776829762776615.Spec : Prop :=
  ∀ n, P10135776829762776615.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P7770371403001983696

`A161841(comp[n²])`
-/

namespace A152674.P7770371403001983696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161841 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A152674.P7770371403001983696

namespace A152674

/-- `A161841(comp[n²])` -/
def P7770371403001983696.Spec : Prop :=
  ∀ n, P7770371403001983696.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P8627768715085318635

`A032741(comp[n²])+1`
-/

namespace A152674.P8627768715085318635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A152674.P8627768715085318635

namespace A152674

/-- `A032741(comp[n²])+1` -/
def P8627768715085318635.Spec : Prop :=
  ∀ n, P8627768715085318635.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P14284882345423855354

`A070824(comp[n²])+2`
-/

namespace A152674.P14284882345423855354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 2

end

end A152674.P14284882345423855354

namespace A152674

/-- `A070824(comp[n²])+2` -/
def P14284882345423855354.Spec : Prop :=
  ∀ n, P14284882345423855354.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P9767039680839802571

`A161840(comp[n²])+2`
-/

namespace A152674.P9767039680839802571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161840 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 2

end

end A152674.P9767039680839802571

namespace A152674

/-- `A161840(comp[n²])+2` -/
def P9767039680839802571.Spec : Prop :=
  ∀ n, P9767039680839802571.a n = A152674 (n + 1)

end A152674

/-! ## A152674.P12684618163332819204

`2*A038548(comp[n²])`
-/

namespace A152674.P12684618163332819204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038548 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A152674.P12684618163332819204

namespace A152674

/-- `2*A038548(comp[n²])` -/
def P12684618163332819204.Spec : Prop :=
  ∀ n, P12684618163332819204.a n = A152674 (n + 1)

end A152674

/-!
# A152675: Decimal expansion of log_5 (2).

The programs for A152675, there is no canonical definition to state claims against.
-/

/-! ## A152675.P7262604586217192393

`A154156(n+1)`
-/

namespace A152675.P7262604586217192393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154156 (n + 1 + 1)

end

end A152675.P7262604586217192393

/-! ## A152675.P1109674772772726441

`A154156(n)-Δ[-A154156(n)]`
-/

namespace A152675.P1109674772772726441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A154156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154156 (n + 1) - (f1 (n + 1) - f1 n)

end

end A152675.P1109674772772726441

/-!
# A152676: a(n) = A002144(n) - A002314(n).

The programs for A152676, there is no canonical definition to state claims against.
-/

/-! ## A152676.P8600673766128962887

`A002144(n+1)-A002314(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152676.P8600673766128962887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A002314 (n + 1)

end

end A152676.P8600673766128962887

/-! ## A152676.P3632783293885216583

`A055131(n)/3-A002314(n+1)`
-/

namespace A152676.P3632783293885216583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3 - (A002314 (n + 1) : ℚ)

end

end A152676.P3632783293885216583

/-! ## A152676.P7484367488807962045

`sqrt(A080109(n+1))-A002314(n+1)`
-/

namespace A152676.P7484367488807962045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) : ℝ) - (A002314 (n + 1) : ℝ)

end

end A152676.P7484367488807962045

/-! ## A152676.P5724365385872814230

`p?[A008846(n+1)]-A002314(n+1)`
-/

namespace A152676.P5724365385872814230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002314 (n + 1)

end

end A152676.P5724365385872814230

/-! ## A152676.P6952332829248005662

`A152680(n+1)+1-A002314(n+1)`
-/

namespace A152676.P6952332829248005662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1) + (1 - A002314 (n + 1))

end

end A152676.P6952332829248005662

/-! ## A152676.P3350558158443235880

`4*A005098(n+1)+1-A002314(n+1)`
-/

namespace A152676.P3350558158443235880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005098 (n + 1) + 1 - A002314 (n + 1)

end

end A152676.P3350558158443235880

/-! ## A152676.P8708742463434877079

`gcd(A048628(n+1), A055131(n))-A002314(n+1)`
-/

namespace A152676.P8708742463434877079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A048628 (n + 1)) (A055131 n) : ℤ) - A002314 (n + 1)

end

end A152676.P8708742463434877079

/-! ## A152676.P14219316412460301240

`A022757(n+1)-(A002314(n+1)+A002145(n+1))`
-/

namespace A152676.P14219316412460301240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022757 (n + 1) - (A002314 (n + 1) + A002145 (n + 1))

end

end A152676.P14219316412460301240

/-! ## A152676.P5969397021425192615

`A002145(n+1)+A102261(n+1)-A002314(n+1)`
-/

namespace A152676.P5969397021425192615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) + (A102261 (n + 1) - A002314 (n + 1))

end

end A152676.P5969397021425192615

/-! ## A152676.P3131810698461899842

`A002313(n+2)-A002314(n+1)`
-/

namespace A152676.P3131810698461899842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A002314 (n + 1)

end

end A152676.P3131810698461899842

/-! ## A152676.P10209991149663196250

`A280084(n+2)-A002314(n+1)`
-/

namespace A152676.P10209991149663196250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2) - A002314 (n + 1)

end

end A152676.P10209991149663196250

/-! ## A152676.P8439200022930100941

`p?[A120960(n+1)]-A002314(n+1)`
-/

namespace A152676.P8439200022930100941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002314 (n + 1)

end

end A152676.P8439200022930100941

/-! ## A152676.P13559953045900329956

`A336883(n+1)+A336884(n+1)-A002314(n+1)`
-/

namespace A152676.P13559953045900329956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336883 (n + 1) + (A336884 (n + 1) - A002314 (n + 1))

end

end A152676.P13559953045900329956

/-! ## A152676.P7274348230363692069

`A000040(A080147(n+1))-A002314(n+1)`
-/

namespace A152676.P7274348230363692069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080147 (n + 1)).toNat - A002314 (n + 1)

end

end A152676.P7274348230363692069

/-! ## A152676.P4757897213265757099

`p?[A004613(n+1)]-A002314(n+1)`
-/

namespace A152676.P4757897213265757099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002314 (n + 1)

end

end A152676.P4757897213265757099

/-! ## A152676.P9984284535281442330

`p?[A057948(n+1)]-A002314(n+1)`
-/

namespace A152676.P9984284535281442330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002314 (n + 1)

end

end A152676.P9984284535281442330

/-! ## A152676.P17461866663718795057

`p?[A020882(n+1)]-A002314(n+1)`
-/

namespace A152676.P17461866663718795057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002314 (n + 1)

end

end A152676.P17461866663718795057

/-! ## A152676.P9616489498055045349

`A016813(A005098(n+1))-A002314(n+1)`
-/

namespace A152676.P9616489498055045349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A005098 (n + 1)).toNat - A002314 (n + 1)

end

end A152676.P9616489498055045349

/-! ## A152676.P8756015226587184807

`A006530(A055131(n))-A002314(n+1)`
-/

namespace A152676.P8756015226587184807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055131 n).toNat - A002314 (n + 1)

end

end A152676.P8756015226587184807

/-! ## A152676.P3081420979434494538

`A111745(2*(n+1))-A002314(n+1)`
-/

namespace A152676.P3081420979434494538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111745 (2 * (n + 1)) - A002314 (n + 1)

end

end A152676.P3081420979434494538

/-!
# A152677: Subsequence of odd terms in A000203 (sum-of-divisors function sigma), in the order in which they occur and with repetitions.

The programs for A152677, the canonical program `A152677.P9647776619714122887` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152677 has offset 1).

The definition of A152677 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028982, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152677.P9647776619714122887

`A000203(A028982(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A152677

/-- `A000203(A028982(n+1))` -/
def P9647776619714122887.Spec : Prop :=
  ∀ n, P9647776619714122887.a n = A152677 (n + 1)

theorem P9647776619714122887.correct : P9647776619714122887.Spec := by
  intro n
  simp only [A152677, Nat.add_sub_cancel]

end A152677

/-! ## A152677.P10858426354404850350

`∑{d}[∪[2*(n+1)², (n+1)²], #]`
-/

namespace A152677.P10858426354404850350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A152677.P10858426354404850350

namespace A152677

/-- `∑{d}[∪[2*(n+1)², (n+1)²], #]` -/
def P10858426354404850350.Spec : Prop :=
  ∀ n, (P10858426354404850350.a n : ℤ) = A152677 (n + 1)

end A152677

/-! ## A152677.P17162994771066084764

`A000203(∪[2*(n+1)², (n+1)²])`
-/

namespace A152677.P17162994771066084764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A152677.P17162994771066084764

namespace A152677

/-- `A000203(∪[2*(n+1)², (n+1)²])` -/
def P17162994771066084764.Spec : Prop :=
  ∀ n, P17162994771066084764.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P8096975238337607475

`A000203(A088827(n+1)/2)`
-/

namespace A152677.P8096975238337607475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A088827 (n + 1) : ℚ) / 2)).toNat

end

end A152677.P8096975238337607475

namespace A152677

/-- `A000203(A088827(n+1)/2)` -/
def P8096975238337607475.Spec : Prop :=
  ∀ n, P8096975238337607475.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P1147973334125974250

`A000203(record[(n+1)*A000203(n+1)%2])`
-/

namespace A152677.P1147973334125974250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000203 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152677.P1147973334125974250

namespace A152677

/-- `A000203(record[(n+1)*A000203(n+1)%2])` -/
def P1147973334125974250.Spec : Prop :=
  ∀ n, P1147973334125974250.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P16209374007481391063

`A000203(record[(n+1)/gcd(2, A000203(n+1))])`
-/

namespace A152677.P16209374007481391063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A000203 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A152677.P16209374007481391063

namespace A152677

/-- `A000203(record[(n+1)/gcd(2, A000203(n+1))])` -/
def P16209374007481391063.Spec : Prop :=
  ∀ n, P16209374007481391063.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P10571645429724809523

`A000203(record[(n+1)*and(1, A000203(n+1))])`
-/

namespace A152677.P10571645429724809523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152677.P10571645429724809523

namespace A152677

/-- `A000203(record[(n+1)*and(1, A000203(n+1))])` -/
def P10571645429724809523.Spec : Prop :=
  ∀ n, P10571645429724809523.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P18051748116179500614

`A000203(record[(n+1)^and(1, A000203(n+1))])`
-/

namespace A152677.P18051748116179500614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.land 1 (A000203 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A152677.P18051748116179500614

namespace A152677

/-- `A000203(record[(n+1)^and(1, A000203(n+1))])` -/
def P18051748116179500614.Spec : Prop :=
  ∀ n, P18051748116179500614.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P12229112751287366510

`A000203(record[(n+1)^(A000203(n+1)²%2)])`
-/

namespace A152677.P12229112751287366510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A000203 (n + 1) ^ 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A152677.P12229112751287366510

namespace A152677

/-- `A000203(record[(n+1)^(A000203(n+1)²%2)])` -/
def P12229112751287366510.Spec : Prop :=
  ∀ n, P12229112751287366510.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P484884983431280524

`∑{d}[lt[A007913(n+1), 3]+1, #]`
-/

namespace A152677.P484884983431280524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A152677.P484884983431280524

namespace A152677

/-- `∑{d}[lt[A007913(n+1), 3]+1, #]` -/
def P484884983431280524.Spec : Prop :=
  ∀ n, (P484884983431280524.a n : ℤ) = A152677 (n + 1)

end A152677

/-! ## A152677.P16967026027424554990

`A000203(lt[val(A000203(n+1), 2), 1]+1)`
-/

namespace A152677.P16967026027424554990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A152677.P16967026027424554990

namespace A152677

/-- `A000203(lt[val(A000203(n+1), 2), 1]+1)` -/
def P16967026027424554990.Spec : Prop :=
  ∀ n, P16967026027424554990.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P15928033600253682756

`A000203(lt[(A000203(n+1)-1)%2, 1]+1)`
-/

namespace A152677.P15928033600253682756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) - 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A152677.P15928033600253682756

namespace A152677

/-- `A000203(lt[(A000203(n+1)-1)%2, 1]+1)` -/
def P15928033600253682756.Spec : Prop :=
  ∀ n, P15928033600253682756.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P12908082650678751533

`A000203(lt[A193336(n+1), 1]+1)`
-/

namespace A152677.P12908082650678751533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A152677.P12908082650678751533

namespace A152677

/-- `A000203(lt[A193336(n+1), 1]+1)` -/
def P12908082650678751533.Spec : Prop :=
  ∀ n, P12908082650678751533.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P16384641491770272795

`A000203(lt[A292377(n+1), 1]+1)`
-/

namespace A152677.P16384641491770272795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A152677.P16384641491770272795

namespace A152677

/-- `A000203(lt[A292377(n+1), 1]+1)` -/
def P16384641491770272795.Spec : Prop :=
  ∀ n, P16384641491770272795.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P17065140942368184797

`A161942(A028982(2*n+1-n))`
-/

namespace A152677.P17065140942368184797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161942 (A028982 (2 * n + 1 - n)).toNat

end

end A152677.P17065140942368184797

namespace A152677

/-- `A161942(A028982(2*n+1-n))` -/
def P17065140942368184797.Spec : Prop :=
  ∀ n, P17065140942368184797.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P340526952909721522

`∑{d}[eq[1, A286357(n+1)]+1, #]`
-/

namespace A152677.P340526952909721522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A152677.P340526952909721522

namespace A152677

/-- `∑{d}[eq[1, A286357(n+1)]+1, #]` -/
def P340526952909721522.Spec : Prop :=
  ∀ n, (P340526952909721522.a n : ℤ) = A152677 (n + 1)

end A152677

/-! ## A152677.P8978840819910336854

`∑{d}[lt[(A000593(n+1)-1)%2, 1]+1, #]`
-/

namespace A152677.P8978840819910336854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000593 (n + 1) - 1) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A152677.P8978840819910336854

namespace A152677

/-- `∑{d}[lt[(A000593(n+1)-1)%2, 1]+1, #]` -/
def P8978840819910336854.Spec : Prop :=
  ∀ n, (P8978840819910336854.a n : ℤ) = A152677 (n + 1)

end A152677

/-! ## A152677.P4288572937910457883

`A000203(record[A235872(n+1)])`
-/

namespace A152677.P4288572937910457883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152677.P4288572937910457883

namespace A152677

/-- `A000203(record[A235872(n+1)])` -/
def P4288572937910457883.Spec : Prop :=
  ∀ n, P4288572937910457883.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P14441238732259396613

`A161942(eq[1, A286357(n+1)]+1)`
-/

namespace A152677.P14441238732259396613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A152677.P14441238732259396613

namespace A152677

/-- `A161942(eq[1, A286357(n+1)]+1)` -/
def P14441238732259396613.Spec : Prop :=
  ∀ n, P14441238732259396613.a n = A152677 (n + 1)

end A152677

/-! ## A152677.P3835949162002839336

`A326065(A088827(n+1))`
-/

namespace A152677.P3835949162002839336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A088827 (n + 1)).toNat

end

end A152677.P3835949162002839336

namespace A152677

/-- `A326065(A088827(n+1))` -/
def P3835949162002839336.Spec : Prop :=
  ∀ n, P3835949162002839336.a n = A152677 (n + 1)

end A152677

/-!
# A152678: Even members of A000203.

The programs for A152678, the canonical program `A152678.P16261350358217221362` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152678 has offset 1).

The definition of A152678 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028983, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152678.P16261350358217221362

`A000203(A028983(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152678

/-- `A000203(A028983(n+1))` -/
def P16261350358217221362.Spec : Prop :=
  ∀ n, P16261350358217221362.a n = A152678 (n + 1)

theorem P16261350358217221362.correct : P16261350358217221362.Spec := by
  intro n
  simp only [A152678, Nat.add_sub_cancel]

end A152678

/-! ## A152678.P8793449663723018509

`∑{d}[comp[∪[2*n², n²]], #]`
-/

namespace A152678.P8793449663723018509
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A152678.P8793449663723018509

namespace A152678

/-- `∑{d}[comp[∪[2*n², n²]], #]` -/
def P8793449663723018509.Spec : Prop :=
  ∀ n, (P8793449663723018509.a n : ℤ) = A152678 (n + 1)

end A152678

/-! ## A152678.P11783758404795759690

`2*A152679(n+1)`
-/

namespace A152678.P11783758404795759690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152679 (n + 1)

end

end A152678.P11783758404795759690

namespace A152678

/-- `2*A152679(n+1)` -/
def P11783758404795759690.Spec : Prop :=
  ∀ n, P11783758404795759690.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P10545491208498802121

`A000203(comp[∪[2*n², n²]])`
-/

namespace A152678.P10545491208498802121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A152678.P10545491208498802121

namespace A152678

/-- `A000203(comp[∪[2*n², n²]])` -/
def P10545491208498802121.Spec : Prop :=
  ∀ n, P10545491208498802121.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P6489524245753690885

`A000203(comp[floor(n/2)*floor(n/(n%2+1))])`
-/

namespace A152678.P6489524245753690885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152678.P6489524245753690885

namespace A152678

/-- `A000203(comp[floor(n/2)*floor(n/(n%2+1))])` -/
def P6489524245753690885.Spec : Prop :=
  ∀ n, P6489524245753690885.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P11123555222530581221

`A000203(comp[A115881(n+1)])`
-/

namespace A152678.P11123555222530581221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115881 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152678.P11123555222530581221

namespace A152678

/-- `A000203(comp[A115881(n+1)])` -/
def P11123555222530581221.Spec : Prop :=
  ∀ n, P11123555222530581221.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P3849173512857816896

`A000203(A088829(n+1)/2)`
-/

namespace A152678.P3849173512857816896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A088829 (n + 1) : ℚ) / 2)).toNat

end

end A152678.P3849173512857816896

namespace A152678

/-- `A000203(A088829(n+1)/2)` -/
def P3849173512857816896.Spec : Prop :=
  ∀ n, P3849173512857816896.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P7364239534632131689

`A000203(eq[0, A000203(n+1)%2]+1)`
-/

namespace A152678.P7364239534632131689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A152678.P7364239534632131689

namespace A152678

/-- `A000203(eq[0, A000203(n+1)%2]+1)` -/
def P7364239534632131689.Spec : Prop :=
  ∀ n, P7364239534632131689.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P2895353097567855812

`A000203(lt[1, gcd(2, A000203(n+1))]+1)`
-/

namespace A152678.P2895353097567855812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A152678.P2895353097567855812

namespace A152678

/-- `A000203(lt[1, gcd(2, A000203(n+1))]+1)` -/
def P2895353097567855812.Spec : Prop :=
  ∀ n, P2895353097567855812.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P5569207717005844047

`A000203(eq[0, and(1, A000203(n+2))]+2)`
-/

namespace A152678.P5569207717005844047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000203 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A152678.P5569207717005844047

namespace A152678

/-- `A000203(eq[0, and(1, A000203(n+2))]+2)` -/
def P5569207717005844047.Spec : Prop :=
  ∀ n, P5569207717005844047.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P1870265278692614096

`A000203(lt[and(1, A000203(n+1)), 1]+1)`
-/

namespace A152678.P1870265278692614096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A152678.P1870265278692614096

namespace A152678

/-- `A000203(lt[and(1, A000203(n+1)), 1]+1)` -/
def P1870265278692614096.Spec : Prop :=
  ∀ n, P1870265278692614096.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P10803764336407019072

`A000203(comp[(n+1)*and(1, A000203(n+1))])`
-/

namespace A152678.P10803764336407019072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A000203 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152678.P10803764336407019072

namespace A152678

/-- `A000203(comp[(n+1)*and(1, A000203(n+1))])` -/
def P10803764336407019072.Spec : Prop :=
  ∀ n, P10803764336407019072.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P2300602330409708858

`A000203(eq[2, A020639(A000203(n+1))]+1)`
-/

namespace A152678.P2300602330409708858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A152678.P2300602330409708858

namespace A152678

/-- `A000203(eq[2, A020639(A000203(n+1))]+1)` -/
def P2300602330409708858.Spec : Prop :=
  ∀ n, P2300602330409708858.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P5946735766575728407

`∑{d}[lt[2, A020639(∑{d}[n+1, #]+1)]+1, #]`
-/

namespace A152678.P5946735766575728407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f4 n), d + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A152678.P5946735766575728407

namespace A152678

/-- `∑{d}[lt[2, A020639(∑{d}[n+1, #]+1)]+1, #]` -/
def P5946735766575728407.Spec : Prop :=
  ∀ n, (P5946735766575728407.a n : ℤ) = A152678 (n + 1)

end A152678

/-! ## A152678.P1981586198972015189

`A000203(eq[A000161(n), A025441(n)])`
-/

namespace A152678.P1981586198972015189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A152678.P1981586198972015189

namespace A152678

/-- `A000203(eq[A000161(n), A025441(n)])` -/
def P1981586198972015189.Spec : Prop :=
  ∀ n, P1981586198972015189.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P16966961183720085070

`A326065(A088829(n+1))`
-/

namespace A152678.P16966961183720085070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A088829 (n + 1)).toNat

end

end A152678.P16966961183720085070

namespace A152678

/-- `A326065(A088829(n+1))` -/
def P16966961183720085070.Spec : Prop :=
  ∀ n, P16966961183720085070.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P7342543583415467744

`A004277(A152679(n+1))`
-/

namespace A152678.P7342543583415467744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A152679 (n + 1)).toNat

end

end A152678.P7342543583415467744

namespace A152678

/-- `A004277(A152679(n+1))` -/
def P7342543583415467744.Spec : Prop :=
  ∀ n, P7342543583415467744.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P17445947410977529359

`filter[A000203(n+1), A059841(#)]`
-/

namespace A152678.P17445947410977529359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A152678.P17445947410977529359

namespace A152678

/-- `filter[A000203(n+1), A059841(#)]` -/
def P17445947410977529359.Spec : Prop :=
  ∀ n, P17445947410977529359.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P12516956896541915141

`filter[A000203(n+1), A267043(#)]`
-/

namespace A152678.P12516956896541915141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A152678.P12516956896541915141

namespace A152678

/-- `filter[A000203(n+1), A267043(#)]` -/
def P12516956896541915141.Spec : Prop :=
  ∀ n, P12516956896541915141.a n = A152678 (n + 1)

end A152678

/-! ## A152678.P16391609803610331475

`filter[A000203(n+2), A135528(#)]`
-/

namespace A152678.P16391609803610331475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A152678.P16391609803610331475

namespace A152678

/-- `filter[A000203(n+2), A135528(#)]` -/
def P16391609803610331475.Spec : Prop :=
  ∀ n, P16391609803610331475.a n = A152678 (n + 1)

end A152678

/-!
# A152679: Even members of A000203, divided by 2.

The programs for A152679, the canonical program `A152679.P11876912117743683288` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152679 has offset 1).

The definition of A152679 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152678, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152679.P11876912117743683288

`A152678(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152679

/-- `A152678(n+1)/2` -/
def P11876912117743683288.Spec : Prop :=
  ∀ n, P11876912117743683288.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P7674842611906416839

`∑{d}[A028983(n+1), #/2]`
-/

namespace A152679.P7674842611906416839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / 2

end

end A152679.P7674842611906416839

namespace A152679

/-- `∑{d}[A028983(n+1), #/2]` -/
def P7674842611906416839.Spec : Prop :=
  ∀ n, P7674842611906416839.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P2194453862944344258

`A000203(comp[∪[2*n², n²]])/2`
-/

namespace A152679.P2194453862944344258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A152679.P2194453862944344258

namespace A152679

/-- `A000203(comp[∪[2*n², n²]])/2` -/
def P2194453862944344258.Spec : Prop :=
  ∀ n, P2194453862944344258.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P4145601280449350558

`A000203(A028983(n+1))/2`
-/

namespace A152679.P4145601280449350558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A028983 (n + 1)).toNat : ℚ) / 2

end

end A152679.P4145601280449350558

namespace A152679

/-- `A000203(A028983(n+1))/2` -/
def P4145601280449350558.Spec : Prop :=
  ∀ n, P4145601280449350558.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P6993133154048173484

`A000203(comp[A115881(n+1)])/2`
-/

namespace A152679.P6993133154048173484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115881 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A152679.P6993133154048173484

namespace A152679

/-- `A000203(comp[A115881(n+1)])/2` -/
def P6993133154048173484.Spec : Prop :=
  ∀ n, P6993133154048173484.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P490196480787179128

`A000203(A088829(n+1)/2)/2`
-/

namespace A152679.P490196480787179128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((A088829 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A152679.P490196480787179128

namespace A152679

/-- `A000203(A088829(n+1)/2)/2` -/
def P490196480787179128.Spec : Prop :=
  ∀ n, P490196480787179128.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P3090231237622385762

`A000203(lt[2, A007913(n+1)]+1)/2`
-/

namespace A152679.P3090231237622385762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / 2

end

end A152679.P3090231237622385762

namespace A152679

/-- `A000203(lt[2, A007913(n+1)]+1)/2` -/
def P3090231237622385762.Spec : Prop :=
  ∀ n, P3090231237622385762.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P12451289623990937375

`A000203(lt[A000203(n+1)%2, 1]+1)/2`
-/

namespace A152679.P12451289623990937375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2

end

end A152679.P12451289623990937375

namespace A152679

/-- `A000203(lt[A000203(n+1)%2, 1]+1)/2` -/
def P12451289623990937375.Spec : Prop :=
  ∀ n, P12451289623990937375.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P4976699929929418219

`A000203(eq[2, gcd(2, A000203(n+1))]+1)/2`
-/

namespace A152679.P4976699929929418219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000203 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) : ℚ) / 2

end

end A152679.P4976699929929418219

namespace A152679

/-- `A000203(eq[2, gcd(2, A000203(n+1))]+1)/2` -/
def P4976699929929418219.Spec : Prop :=
  ∀ n, P4976699929929418219.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P14137498831497624615

`A000203(eq[2, A020639(A000203(n+1))]+1)/2`
-/

namespace A152679.P14137498831497624615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000203 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A152679.P14137498831497624615

namespace A152679

/-- `A000203(eq[2, A020639(A000203(n+1))]+1)/2` -/
def P14137498831497624615.Spec : Prop :=
  ∀ n, P14137498831497624615.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P2127162707269712898

`∑{d}[lt[n+2-Δ[A069891(n)], n]+1, #]/2`
-/

namespace A152679.P2127162707269712898
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (f3 (n + 1) - f3 n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / 2

end

end A152679.P2127162707269712898

namespace A152679

/-- `∑{d}[lt[n+2-Δ[A069891(n)], n]+1, #]/2` -/
def P2127162707269712898.Spec : Prop :=
  ∀ n, P2127162707269712898.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P2323325601700323277

`A368582(A028983(n+1))`
-/

namespace A152679.P2323325601700323277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368582 (A028983 (n + 1)).toNat

end

end A152679.P2323325601700323277

namespace A152679

/-- `A368582(A028983(n+1))` -/
def P2323325601700323277.Spec : Prop :=
  ∀ n, P2323325601700323277.a n = A152679 (n + 1)

end A152679

/-! ## A152679.P73924652219151241

`A000203(eq[0, A093709(n)])/2`
-/

namespace A152679.P73924652219151241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A152679.P73924652219151241

namespace A152679

/-- `A000203(eq[0, A093709(n)])/2` -/
def P73924652219151241.Spec : Prop :=
  ∀ n, P73924652219151241.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P11251601464755064557

`A000203(eq[0, A214507(n)])/2`
-/

namespace A152679.P11251601464755064557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214507 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A152679.P11251601464755064557

namespace A152679

/-- `A000203(eq[0, A214507(n)])/2` -/
def P11251601464755064557.Spec : Prop :=
  ∀ n, P11251601464755064557.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P4082787675374184916

`A000203(eq[A000161(n), A025441(n)])/2`
-/

namespace A152679.P4082787675374184916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A152679.P4082787675374184916

namespace A152679

/-- `A000203(eq[A000161(n), A025441(n)])/2` -/
def P4082787675374184916.Spec : Prop :=
  ∀ n, P4082787675374184916.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P15986743042589275728

`A326065(A088829(n+1))/2`
-/

namespace A152679.P15986743042589275728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326065 (A088829 (n + 1)).toNat : ℚ) / 2

end

end A152679.P15986743042589275728

namespace A152679

/-- `A326065(A088829(n+1))/2` -/
def P15986743042589275728.Spec : Prop :=
  ∀ n, P15986743042589275728.a n = (A152679 (n + 1) : ℚ)

end A152679

/-! ## A152679.P8076590215102678072

`A001281(A152678(n+1))`
-/

namespace A152679.P8076590215102678072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152678 (n + 1)).toNat

end

end A152679.P8076590215102678072

namespace A152679

/-- `A001281(A152678(n+1))` -/
def P8076590215102678072.Spec : Prop :=
  ∀ n, P8076590215102678072.a n = A152679 (n + 1)

end A152679

/-!
# A152680: a(n) = 4*A005098(n) = A002144(n) - 1.

The programs for A152680, the canonical program `A152680.P7400182187401258968` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152680 has offset 1).

The definition of A152680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002144(n+1)-1` (program `A152680.P7400182187401258968`, by `A152680.P7400182187401258968.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152680.P7400182187401258968

`A002144(n+1)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A152680

/-- `A002144(n+1)-1` -/
def P7400182187401258968.Spec : Prop :=
  ∀ n, P7400182187401258968.a n = A152680 (n + 1)

theorem P7400182187401258968.correct : P7400182187401258968.Spec := by
  intro n
  simp only [A152680, Nat.add_sub_cancel]

end A152680

/-! ## A152680.P2301446973416973762

`4*A005098(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152680.P2301446973416973762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005098 (n + 1)

end

end A152680.P2301446973416973762

namespace A152680

/-- `4*A005098(n+1)` -/
def P2301446973416973762.Spec : Prop :=
  ∀ n, P2301446973416973762.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P16394401735406292891

`p?[4*n+1]-1`
-/

namespace A152680.P16394401735406292891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A152680.P16394401735406292891

namespace A152680

/-- `p?[4*n+1]-1` -/
def P16394401735406292891.Spec : Prop :=
  ∀ n, P16394401735406292891.a n = A152680 (n + 1)

theorem P16394401735406292891.correct : P16394401735406292891.Spec := by
  intro n
  simp only [A152680, Nat.add_sub_cancel, A152680.P16394401735406292891.f1, A152680.P16394401735406292891.a, A152680.P7400182187401258968.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152680

/-! ## A152680.P17502210665202152346

`xor(1, p?[4*n+1])`
-/

namespace A152680.P17502210665202152346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A152680.P17502210665202152346

namespace A152680

/-- `xor(1, p?[4*n+1])` -/
def P17502210665202152346.Spec : Prop :=
  ∀ n, (P17502210665202152346.a n : ℤ) = A152680 (n + 1)

end A152680

/-! ## A152680.P16594072953176609366

`A055131(n)/3-1`
-/

namespace A152680.P16594072953176609366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3 - 1

end

end A152680.P16594072953176609366

namespace A152680

/-- `A055131(n)/3-1` -/
def P16594072953176609366.Spec : Prop :=
  ∀ n, P16594072953176609366.a n = (A152680 (n + 1) : ℚ)

theorem P16594072953176609366.correct : P16594072953176609366.Spec := by
  intro n
  simp only [A152680, Nat.add_sub_cancel, A152680.P16594072953176609366.a, A152680.P7400182187401258968.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A055131, A055131.P8908878053079909028.f1, A055131.P8908878053079909028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152680

/-! ## A152680.P17382432001612177099

`sqrt(A080109(n+1))-1`
-/

namespace A152680.P17382432001612177099
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) : ℝ) - 1

end

end A152680.P17382432001612177099

namespace A152680

/-- `sqrt(A080109(n+1))-1` -/
def P17382432001612177099.Spec : Prop :=
  ∀ n, P17382432001612177099.a n = (A152680 (n + 1) : ℝ)

end A152680

/-! ## A152680.P11050358836738569089

`2*(A119681(n+1)-1)`
-/

namespace A152680.P11050358836738569089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A119681 (n + 1) - 1)

end

end A152680.P11050358836738569089

namespace A152680

/-- `2*(A119681(n+1)-1)` -/
def P11050358836738569089.Spec : Prop :=
  ∀ n, P11050358836738569089.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P14185104553728019851

`4*(A111215(n+1)+1)`
-/

namespace A152680.P14185104553728019851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A111215 (n + 1) + 1)

end

end A152680.P14185104553728019851

namespace A152680

/-- `4*(A111215(n+1)+1)` -/
def P14185104553728019851.Spec : Prop :=
  ∀ n, P14185104553728019851.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P9457735262650070554

`2*(A089255(n+1)-3)`
-/

namespace A152680.P9457735262650070554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089255 (n + 1) - 3)

end

end A152680.P9457735262650070554

namespace A152680

/-- `2*(A089255(n+1)-3)` -/
def P9457735262650070554.Spec : Prop :=
  ∀ n, P9457735262650070554.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P3191386430981891928

`A082073(n)+a(n-1)` with `a(0)=4`
-/

namespace A152680.P3191386430981891928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A082073 n + a (n - 1)

end

end A152680.P3191386430981891928

namespace A152680

/-- `A082073(n)+a(n-1)` -/
def P3191386430981891928.Spec : Prop :=
  ∀ n, P3191386430981891928.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P152783980812973816

`A022757(n+1)-A090658(n+1)`
-/

namespace A152680.P152783980812973816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022757 (n + 1) - A090658 (n + 1)

end

end A152680.P152783980812973816

namespace A152680

/-- `A022757(n+1)-A090658(n+1)` -/
def P152783980812973816.Spec : Prop :=
  ∀ n, P152783980812973816.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P14972247120176898717

`A002313(n+2)-1`
-/

namespace A152680.P14972247120176898717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - 1

end

end A152680.P14972247120176898717

namespace A152680

/-- `A002313(n+2)-1` -/
def P14972247120176898717.Spec : Prop :=
  ∀ n, P14972247120176898717.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P13842703338896430652

`A280084(n+2)-1`
-/

namespace A152680.P13842703338896430652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2) - 1

end

end A152680.P13842703338896430652

namespace A152680

/-- `A280084(n+2)-1` -/
def P13842703338896430652.Spec : Prop :=
  ∀ n, P13842703338896430652.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P1484007635623835911

`A267101(A080148(n+1))-1`
-/

namespace A152680.P1484007635623835911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A080148 (n + 1)).toNat - 1

end

end A152680.P1484007635623835911

namespace A152680

/-- `A267101(A080148(n+1))-1` -/
def P1484007635623835911.Spec : Prop :=
  ∀ n, P1484007635623835911.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P4120053756163295757

`A111744(Δ[n²])-1`
-/

namespace A152680.P4120053756163295757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A152680.P4120053756163295757

namespace A152680

/-- `A111744(Δ[n²])-1` -/
def P4120053756163295757.Spec : Prop :=
  ∀ n, P4120053756163295757.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P11764197927080332398

`A108546(2*n+3)-1`
-/

namespace A152680.P11764197927080332398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (2 * n + 3) - 1

end

end A152680.P11764197927080332398

namespace A152680

/-- `A108546(2*n+3)-1` -/
def P11764197927080332398.Spec : Prop :=
  ∀ n, P11764197927080332398.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P646648256414203942

`record[A163366(n+3)]`
-/

namespace A152680.P646648256414203942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163366 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152680.P646648256414203942

namespace A152680

/-- `record[A163366(n+3)]` -/
def P646648256414203942.Spec : Prop :=
  ∀ n, P646648256414203942.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P15734247216107242213

`A006093(A080147(n+1))`
-/

namespace A152680.P15734247216107242213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A080147 (n + 1)).toNat

end

end A152680.P15734247216107242213

namespace A152680

/-- `A006093(A080147(n+1))` -/
def P15734247216107242213.Spec : Prop :=
  ∀ n, P15734247216107242213.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P1043489963018759760

`A165972(A138970(n+1))`
-/

namespace A152680.P1043489963018759760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (A138970 (n + 1)).toNat

end

end A152680.P1043489963018759760

namespace A152680

/-- `A165972(A138970(n+1))` -/
def P1043489963018759760.Spec : Prop :=
  ∀ n, P1043489963018759760.a n = A152680 (n + 1)

end A152680

/-! ## A152680.P5651823539203474619

`A000040(eq[0, and(2, A000040(n+1))]+1)-1`
-/

namespace A152680.P5651823539203474619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A152680.P5651823539203474619

namespace A152680

/-- `A000040(eq[0, and(2, A000040(n+1))]+1)-1` -/
def P5651823539203474619.Spec : Prop :=
  ∀ n, P5651823539203474619.a n = A152680 (n + 1)

end A152680

/-!
# A152681: [x^(n+1)]Reversion[x*(1-x)/(1-3*x)].

The programs for A152681, there is no canonical definition to state claims against.
-/

/-! ## A152681.P18432036059099246980

`A000038(n)-A125695(n)`
-/

namespace A152681.P18432036059099246980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A125695 n

end

end A152681.P18432036059099246980

/-! ## A152681.P10158461849274505144

`A125695(n)*A153881(n+1)`
-/

namespace A152681.P10158461849274505144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125695 n * A153881 (n + 1)

end

end A152681.P10158461849274505144

/-! ## A152681.P11929916771126424209

`A000038(n)-A154825(n)*A280560(n)`
-/

namespace A152681.P11929916771126424209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A154825 n * A280560 n

end

end A152681.P11929916771126424209

/-! ## A152681.P5807561999133533928

`A153881(n+1)*A154825(n)*A280560(n)`
-/

namespace A152681.P5807561999133533928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A154825 n * A280560 n

end

end A152681.P5807561999133533928

/-! ## A152681.P15524565748758939636

`A008836(A284694(n+1))*A154825(n)*A280560(n)`
-/

namespace A152681.P15524565748758939636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A284694 (n + 1)).toNat * A154825 n * A280560 n

end

end A152681.P15524565748758939636

/-! ## A152681.P12475601766768920005

`A125694(∑[n])`
-/

namespace A152681.P12475601766768920005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125694 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152681.P12475601766768920005

/-! ## A152681.P16945769330187269338

`A280560(n)*A308035(A027379(n))`
-/

namespace A152681.P16945769330187269338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n * A308035 (A027379 n).toNat

end

end A152681.P16945769330187269338

/-! ## A152681.P14778456145666799402

`A280560(n)*A308035(A055998(n))`
-/

namespace A152681.P14778456145666799402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n * A308035 (A055998 n).toNat

end

end A152681.P14778456145666799402

/-!
# A152682: The smallest value of the largest label for which there exists an edge-magic injection of the complete graph K_n on n vertices.

The programs for A152682, there is no canonical definition to state claims against.
-/

/-! ## A152682.P13979083378208872739

`A152946(n+1)+∑[n+1]`
-/

namespace A152682.P13979083378208872739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152946 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152682.P13979083378208872739

/-! ## A152682.P12743901823249907541

`A152946(n+1)+A000096(n)+1`
-/

namespace A152682.P12743901823249907541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152946 (n + 1) + A000096 n + 1

end

end A152682.P12743901823249907541

/-! ## A152682.P11636148659726155331

`A179865(n+2)+A152946(n+1)`
-/

namespace A152682.P11636148659726155331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 2) + A152946 (n + 1)

end

end A152682.P11636148659726155331

/-! ## A152682.P16107179477104752183

`A152947(n+2)+A152946(n+1)+n`
-/

namespace A152682.P16107179477104752183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 2) + (A152946 (n + 1) + (n : ℤ))

end

end A152682.P16107179477104752183

/-! ## A152682.P916441250121899011

`∑[n+1]+A274160(n+1)²%A274168(2*n)`
-/

namespace A152682.P916441250121899011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A274160 (n + 1) ^ 2) (A274168 (2 * n))

end

end A152682.P916441250121899011

/-!
# A152683: Decimal expansion of log_6 (2).

The programs for A152683, there is no canonical definition to state claims against.
-/

/-! ## A152683.P14869917310684245089

`A154199(n+1)`
-/

namespace A152683.P14869917310684245089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154199 (n + 1 + 1)

end

end A152683.P14869917310684245089

/-! ## A152683.P9929440990250834175

`9-A152935(n)`
-/

namespace A152683.P9929440990250834175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A152935 n

end

end A152683.P9929440990250834175

/-! ## A152683.P5639656975270188404

`9-A154911(n+1)`
-/

namespace A152683.P5639656975270188404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154911 (n + 1 + 1)

end

end A152683.P5639656975270188404

/-!
# A152684: a(n) is the number of top-down sequences (F_1, F_2, ..., F_n) whereas each F_i is a labeled forest on n nodes, containing i directed rooted trees. F_(i+1) is proper subset of F_i.

The programs for A152684, the canonical program `A152684.P6806438186541260922` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152684 has offset 1).

The definition of A152684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152684.P6806438186541260922

`(n+1)^n*n!`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152684

/-- `(n+1)^n*n!` -/
def P6806438186541260922.Spec : Prop :=
  ∀ n, (P6806438186541260922.a n : ℤ) = A152684 (n + 1)

theorem P6806438186541260922.correct : P6806438186541260922.Spec := by
  intro n
  simp only [A152684, Nat.add_sub_cancel]

end A152684

/-! ## A152684.P8230474867774721226

`a(n-1)*((n+1)/n)^(n-2)*(n+1)²` with `a(0)=1`
-/

namespace A152684.P8230474867774721226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((n + 1 : ℚ) / (n : ℚ)) ^ ((n : ℤ) - 2 : ℤ) * ((n + 1) ^ 2 : ℚ)

end

end A152684.P8230474867774721226

namespace A152684

/-- `a(n-1)*((n+1)/n)^(n-2)*(n+1)²` -/
def P8230474867774721226.Spec : Prop :=
  ∀ n, P8230474867774721226.a n = (A152684 (n + 1) : ℚ)

end A152684

/-! ## A152684.P3050996264615134080

`n!/(n+1)^-n`
-/

namespace A152684.P3050996264615134080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (n + 1 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A152684.P3050996264615134080

namespace A152684

/-- `n!/(n+1)^-n` -/
def P3050996264615134080.Spec : Prop :=
  ∀ n, P3050996264615134080.a n = (A152684 (n + 1) : ℚ)

theorem P3050996264615134080.correct : P3050996264615134080.Spec := by
  intro n
  simp only [A152684, Nat.add_sub_cancel, A152684.P3050996264615134080.a, A152684.P6806438186541260922.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A152684

/-! ## A152684.P11579000746789337

`(n+1)^(n-1)*∏[n+1]`
-/

namespace A152684.P11579000746789337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A152684.P11579000746789337

namespace A152684

/-- `(n+1)^(n-1)*∏[n+1]` -/
def P11579000746789337.Spec : Prop :=
  ∀ n, P11579000746789337.a n = (A152684 (n + 1) : ℚ)

end A152684

/-! ## A152684.P9234751327186190670

`A394783(∑[n+1])`
-/

namespace A152684.P9234751327186190670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394783 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152684.P9234751327186190670

namespace A152684

/-- `A394783(∑[n+1])` -/
def P9234751327186190670.Spec : Prop :=
  ∀ n, P9234751327186190670.a n = A152684 (n + 1)

end A152684

/-!
# A152685: Triangle read by rows, A100861(n,k) * A118930(k).

The programs for A152685, there is no canonical definition to state claims against.
-/

/-! ## A152685.P329245500015031681

`ceil(A059344(n)%A103405(n+1)/2)`
-/

namespace A152685.P329245500015031681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A059344 n) (A103405 (n + 1)) : ℚ) / 2⌉

end

end A152685.P329245500015031681

/-! ## A152685.P8109508530939489749

`A065033(A059344(n))%p?[A003106(n)]`
-/

namespace A152685.P8109508530939489749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A059344 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A152685.P8109508530939489749

/-! ## A152685.P3736251745404329474

`A004525(A059344(n)%A103405(n+1))`
-/

namespace A152685.P3736251745404329474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A059344 n) (A103405 (n + 1))).toNat

end

end A152685.P3736251745404329474

/-! ## A152685.P11932214975742464183

`A062828(A059344(n))%A332418(n+1)`
-/

namespace A152685.P11932214975742464183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062828 (A059344 n).toNat) (A332418 (n + 1))

end

end A152685.P11932214975742464183

/-! ## A152685.P7952707782987531712

`A065033(A059344(n))+A000038(A000045(n)+1)`
-/

namespace A152685.P7952707782987531712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A059344 n).toNat + A000038 (A000045 n + 1).toNat

end

end A152685.P7952707782987531712

/-!
# A152686: Partial products of the partial products of the nonzero Fibonacci numbers.

The programs for A152686, there is no canonical definition to state claims against.
-/

/-! ## A152686.P10790743389553454383

`∏[∏[round(ϕ*a(n-1))]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A152686.P10790743389553454383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152686.P10790743389553454383

/-! ## A152686.P329006668658641441

`∏[∏[a(n-1)+a(n-2)]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A152686.P329006668658641441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152686.P329006668658641441

/-! ## A152686.P4644620970013003126

`∏[A003266(n)]`
-/

namespace A152686.P4644620970013003126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152686.P4644620970013003126

/-! ## A152686.P13406203823291305608

`∏[sqrt(A382910(n))]`
-/

namespace A152686.P13406203823291305608
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A382910 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152686.P13406203823291305608

/-! ## A152686.P8450299995818654129

`∏[∏[A274163(n)]]`
-/

namespace A152686.P8450299995818654129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274163 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152686.P8450299995818654129

/-!
# A152687: Partial products operator applied thrice to nonzero Fibonacci numbers.

The programs for A152687, there is no canonical definition to state claims against.
-/

/-! ## A152687.P10636090662045214075

`∏[∏[∏[a(n-1)+a(n-2)]]]` with `a(0)=1, a(1)=1`
-/

namespace A152687.P10636090662045214075
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  f3 (n - 1) + f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152687.P10636090662045214075

/-! ## A152687.P3923194078957494918

`∏[A152686(n+1)]`
-/

namespace A152687.P3923194078957494918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152687.P3923194078957494918

/-! ## A152687.P11176958105815176483

`∏[∏[∏[A005181(n)]]]`
-/

namespace A152687.P11176958105815176483
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152687.P11176958105815176483

/-! ## A152687.P11360049931088634230

`∏[∏[∏[A185357(n)]]]`
-/

namespace A152687.P11360049931088634230
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152687.P11360049931088634230

/-!
# A152688: Partial products of A152687.

The programs for A152688, there is no canonical definition to state claims against.
-/

/-! ## A152688.P9575363719325489387

`∏[A152687(n+1)]`
-/

namespace A152688.P9575363719325489387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152688.P9575363719325489387

/-! ## A152688.P3913870645095682411

`∏[∏[A152686(n+1)]]`
-/

namespace A152688.P3913870645095682411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152686 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152688.P3913870645095682411

/-! ## A152688.P7321695269718768471

`∏[∏[∏[∏[A000045(n+1)]]]]`
-/

namespace A152688.P7321695269718768471
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152688.P7321695269718768471

/-!
# A152689: Apply partial sum operator thrice to factorials.

The programs for A152689, there is no canonical definition to state claims against.
-/

/-! ## A152689.P13748517863166498512

`∑[∑[∑[(n-3)*a(n-1)]]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A152689.P13748517863166498512
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f3 =>
  ((n : ℤ) - 3) * f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152689.P13748517863166498512

/-! ## A152689.P6169050289907702444

`n²+A232845(n)-2*n`
-/

namespace A152689.P6169050289907702444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A232845 n - (2 * n : ℤ))

end

end A152689.P6169050289907702444

/-! ## A152689.P14687194011755225287

`∑[A014144(A289207(n))]`
-/

namespace A152689.P14687194011755225287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014144 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152689.P14687194011755225287

/-! ## A152689.P6565098975770261637

`∑[∑[A003422(A004275(n)-n)]]`
-/

namespace A152689.P6565098975770261637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A004275 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152689.P6565098975770261637

/-! ## A152689.P4851802561091067190

`∑[A014144(A233583(n+1)-2)]`
-/

namespace A152689.P4851802561091067190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014144 (A233583 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152689.P4851802561091067190

/-! ## A152689.P486378641783317621

`n-1+A122092(n)-A232845(n)`
-/

namespace A152689.P486378641783317621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A122092 n - A232845 n)

end

end A152689.P486378641783317621

/-! ## A152689.P9113842812645139691

`A114949(n)+A232845(n)-2*n-6`
-/

namespace A152689.P9113842812645139691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 n + (A232845 n - (2 * n : ℤ) - 6)

end

end A152689.P9113842812645139691

/-!
# A152690: Partial sums of superfactorials (A000178).

The programs for A152690, there is no canonical definition to state claims against.
-/

/-! ## A152690.P17265608529218939350

`∑[∏[n!]]`
-/

namespace A152690.P17265608529218939350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152690.P17265608529218939350

/-! ## A152690.P13188283106664586839

`∑[exp(∑[log(n!)])]`
-/

namespace A152690.P13188283106664586839
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Nat.factorial n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152690.P13188283106664586839

/-! ## A152690.P17436781335514622650

`∑[2^∑[log2(n!)]]`
-/

namespace A152690.P17436781335514622650
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152690.P17436781335514622650

/-! ## A152690.P14137993979659298400

`∑[n!*a(n-1)]` with `a(0)=1`
-/

namespace A152690.P14137993979659298400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.factorial n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152690.P14137993979659298400

/-! ## A152690.P8866557670484644735

`∏[n!]+a(n-1)` with `a(0)=1`
-/

namespace A152690.P8866557670484644735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A152690.P8866557670484644735

/-!
# A152691: Multiples of 64.

The programs for A152691, the canonical program `A152691.P6353139268516617885` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152691 has offset 0).

The definition of A152691 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A152691.anchor (n : ℕ) : A152691 n = 64 * n` in `Proof.A152.A152691`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152691.P6353139268516617885

`64*n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152691

/-- `64*n` -/
def P6353139268516617885.Spec : Prop :=
  ∀ n, (P6353139268516617885.a n : ℤ) = A152691 n

theorem P6353139268516617885.correct : P6353139268516617885.Spec := by
  intro n
  simp only [A152691]

end A152691

/-!
# A152692: a(n) = n*3^n - n*2^n - n*1^n.

The programs for A152692, the canonical program `A152692.P3237748303010621338` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152692 has offset 0).

The definition of A152692 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*3^n-n*2^n-n` (program `A152692.P3237748303010621338`, by `A152692.P3237748303010621338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152692.P13409257640753200821

`n*(3^n-2^n-1)`
-/

namespace A152692.P13409257640753200821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((3 ^ n : ℤ) - (2 ^ n : ℤ) - 1)

end

end A152692.P13409257640753200821

namespace A152692

/-- `n*(3^n-2^n-1)` -/
def P13409257640753200821.Spec : Prop :=
  ∀ n, P13409257640753200821.a n = A152692 n

theorem P13409257640753200821.correct : P13409257640753200821.Spec := by
  intro n
  simp only [A152692, Nat.add_sub_cancel, A152692.P13409257640753200821.a, A152692.P3237748303010621338.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152692

/-! ## A152692.P3237748303010621338

`n*3^n-n*2^n-n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152692

/-- `n*3^n-n*2^n-n` -/
def P3237748303010621338.Spec : Prop :=
  ∀ n, P3237748303010621338.a n = A152692 n

theorem P3237748303010621338.correct : P3237748303010621338.Spec := by
  intro n
  simp only [A152692]

end A152692

/-! ## A152692.P3701719461398162850

`n*3^n-n*2^n-n*1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152692.P3701719461398162850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * 3 ^ n : ℤ) - (n * 2 ^ n : ℤ) - (n * 1 : ℤ)

end

end A152692.P3701719461398162850

namespace A152692

/-- `n*3^n-n*2^n-n*1` -/
def P3701719461398162850.Spec : Prop :=
  ∀ n, P3701719461398162850.a n = A152692 n

theorem P3701719461398162850.correct : P3701719461398162850.Spec := by
  intro n
  simp only [A152692, Nat.add_sub_cancel, A152692.P3701719461398162850.a, A152692.P3237748303010621338.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152692

/-! ## A152692.P1608950549225358755

`n*3^n-n*2^n-n*1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152692.P1608950549225358755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * 3 ^ n : ℤ) - (n * 2 ^ n : ℤ) - (n * 1 ^ n : ℤ)

end

end A152692.P1608950549225358755

namespace A152692

/-- `n*3^n-n*2^n-n*1^n` -/
def P1608950549225358755.Spec : Prop :=
  ∀ n, P1608950549225358755.a n = A152692 n

theorem P1608950549225358755.correct : P1608950549225358755.Spec := by
  intro n
  simp only [A152692, Nat.add_sub_cancel, A152692.P1608950549225358755.a, A152692.P3237748303010621338.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152692

/-! ## A152692.P11365393802811174166

`abs(n*A083321(n))`
-/

namespace A152692.P11365393802811174166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A083321 n|

end

end A152692.P11365393802811174166

namespace A152692

/-- `abs(n*A083321(n))` -/
def P11365393802811174166.Spec : Prop :=
  ∀ n, P11365393802811174166.a n = A152692 n

end A152692

/-!
# A152694: Number of permutations of floor(i*3/2), i=0..n-1, with all sums of 8 adjacent terms unique.

The programs for A152694, there is no canonical definition to state claims against.
-/

/-! ## A152694.P5491892856147498620

`A152696((n+1)*2^∑{digits}[n, #%C(n, #)])`
-/

namespace A152694.P5491892856147498620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152696 ((n + 1) * 2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

end

end A152694.P5491892856147498620

/-! ## A152694.P10283832105021863826

`A152696(A256079(n))`
-/

namespace A152694.P10283832105021863826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152696 (A256079 n).toNat

end

end A152694.P10283832105021863826

/-! ## A152694.P889298507381388087

`A152696(∑[A061603(n)])`
-/

namespace A152694.P889298507381388087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152696 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152694.P889298507381388087

/-! ## A152694.P5677542750581077145

`A152700(∑[A061603(n)])`
-/

namespace A152694.P5677542750581077145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152694.P5677542750581077145

/-! ## A152694.P746361082609787876

`A152708(∑[A061603(n)])`
-/

namespace A152694.P746361082609787876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152708 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152694.P746361082609787876

/-!
# A152695: Number of permutations of floor(i*4/3), i=0..n-1, with all sums of 8 adjacent terms unique.

The programs for A152695, there is no canonical definition to state claims against.
-/

/-! ## A152695.P3767345427881504546

`A152703(gcd(11, C(9, n))+n)`
-/

namespace A152695.P3767345427881504546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152703 (Nat.gcd 11 (Nat.choose 9 n) + n)

end

end A152695.P3767345427881504546

/-! ## A152695.P5321472386304398198

`A152703(∑[(2^∑{digits}[n, #%C(n, #)])^5])`
-/

namespace A152695.P5321472386304398198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152695.P5321472386304398198

/-! ## A152695.P8773460550251526470

`A152703(2*(2*n-((n-2*floor(n/10))%(((n+1)*∏{p}[n+1, #])^4)-floor(n/10)))-n+1)`
-/

namespace A152695.P8773460550251526470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152703 (2 * ((2 * n : ℤ) - (Int.tmod ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋) ((((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)) ^ 4 : ℕ) : ℤ) - ⌊(n : ℚ) / 10⌋)) - (n : ℤ) + 1).toNat

end

end A152695.P8773460550251526470

/-! ## A152695.P1446713508317881196

`A152703(A002998(n)+1)`
-/

namespace A152695.P1446713508317881196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152703 (A002998 n + 1).toNat

end

end A152695.P1446713508317881196

/-! ## A152695.P3455548217731058129

`A152703(A003100(n)+1)`
-/

namespace A152695.P3455548217731058129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152703 (A003100 n + 1).toNat

end

end A152695.P3455548217731058129

/-!
# A152696: Number of permutations of floor(i*5/2), i=0..n-1, with all sums of 8 adjacent terms unique.

The programs for A152696, there is no canonical definition to state claims against.
-/

/-! ## A152696.P9642033230895783906

`lcm(eq[72, lcm(72, n)], A152700(n+1))`
-/

namespace A152696.P9642033230895783906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 72 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) (A152700 (n + 1))

end

end A152696.P9642033230895783906

/-! ## A152696.P5650861076640596733

`A152700(A084193(∑[n]))`
-/

namespace A152696.P5650861076640596733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152700 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A152696.P5650861076640596733

/-! ## A152696.P7281207314475146930

`record[A152700(A095161(n))]`
-/

namespace A152696.P7281207314475146930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152700 (A095161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152696.P7281207314475146930

/-! ## A152696.P12570303458572636604

`A152700(A004186(n)+1)`
-/

namespace A152696.P12570303458572636604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152700 (A004186 n + 1).toNat

end

end A152696.P12570303458572636604

/-! ## A152696.P16387876356305913178

`A152708(A004186(n)+1)`
-/

namespace A152696.P16387876356305913178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152708 (A004186 n + 1).toNat

end

end A152696.P16387876356305913178

/-!
# A152697: Number of permutations of floor(i*5/3), i=0..n-1, with all sums of 8 adjacent terms unique.

The programs for A152697, there is no canonical definition to state claims against.
-/

/-! ## A152697.P12964515831104558483

`A152701(∑[(n-∑{digits}[n, #])!])`
-/

namespace A152697.P12964515831104558483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152701 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152697.P12964515831104558483

/-! ## A152697.P11580775586645484266

`A152701(∑[1-(∑{digits}[n, #]-n)])`
-/

namespace A152697.P11580775586645484266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152697.P11580775586645484266

/-! ## A152697.P8966276470278392382

`A152701(1-(∑{digits}[n, #]-n)+n)`
-/

namespace A152697.P8966276470278392382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152701 (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) + (n : ℤ)).toNat

end

end A152697.P8966276470278392382

/-! ## A152697.P10105822896473010652

`A152710((n+1)*2^∑{digits}[n, #%C(n, #)])`
-/

namespace A152697.P10105822896473010652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152710 ((n + 1) * 2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

end

end A152697.P10105822896473010652

/-! ## A152697.P16978727194856746612

`A152701(A003100(n)+1)`
-/

namespace A152697.P16978727194856746612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152701 (A003100 n + 1).toNat

end

end A152697.P16978727194856746612

/-!
# A152699: Number of permutations of floor(i*6/5), i=0..n-1, with all sums of 8 adjacent terms unique.

The programs for A152699, there is no canonical definition to state claims against.
-/

/-! ## A152699.P11162168106716540808

`A152704(gcd(11, C(9, n))+n)`
-/

namespace A152699.P11162168106716540808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152704 (Nat.gcd 11 (Nat.choose 9 n) + n)

end

end A152699.P11162168106716540808

/-! ## A152699.P10092060848421169311

`A152704(∑[(2^∑{digits}[n, #%C(n, #)])^5])`
-/

namespace A152699.P10092060848421169311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152699.P10092060848421169311

/-! ## A152699.P1018355353363978129

`A152704(A003100(n)+1)`
-/

namespace A152699.P1018355353363978129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152704 (A003100 n + 1).toNat

end

end A152699.P1018355353363978129

/-! ## A152699.P10262721010949070266

`A152707(A003100(n)+1)`
-/

namespace A152699.P10262721010949070266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152707 (A003100 n + 1).toNat

end

end A152699.P10262721010949070266

/-! ## A152699.P964845620780351767

`A152707(A133504(n+1)+1)`
-/

namespace A152699.P964845620780351767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152707 (A133504 (n + 1) + 1).toNat

end

end A152699.P964845620780351767

