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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

/-!
# A108500: Number of values of k (1<=k<=n) where k^(n+1) != k mod n, or equivalently where sum_i{1<=i<=n} k^i != 0 mod n.

The programs for A108500, there is no canonical definition to state claims against.
-/

/-! ## A108500.P9635351058720614259

`n+1-A108499(n+1)`
-/

namespace A108500.P9635351058720614259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A108499 (n + 1)

end

end A108500.P9635351058720614259

/-! ## A108500.P5969405725850305006

`A024000(A108499(n+1))+n`
-/

namespace A108500.P5969405725850305006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A108499 (n + 1)).toNat + (n : ℤ)

end

end A108500.P5969405725850305006

/-! ## A108500.P14410655464273421954

`A022958(A108499(n+1)+1)+n`
-/

namespace A108500.P14410655464273421954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A108499 (n + 1) + 1).toNat + (n : ℤ)

end

end A108500.P14410655464273421954

/-! ## A108500.P15823100126682459871

`abs(A108499(n+1)+A001478(n+1))`
-/

namespace A108500.P15823100126682459871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108499 (n + 1) + A001478 (n + 1)|

end

end A108500.P15823100126682459871

/-! ## A108500.P17402278377116000328

`Δ[A027689(n)]%(A108499(n+1)+n+1)`
-/

namespace A108500.P17402278377116000328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A108499 (n + 1) + (n + 1 : ℤ))

end

end A108500.P17402278377116000328

/-! ## A108500.P11399647932588344036

`A023443(n)+A022958(A108499(n+1))`
-/

namespace A108500.P11399647932588344036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A022958 (A108499 (n + 1)).toNat

end

end A108500.P11399647932588344036

/-! ## A108500.P7731433972841524351

`A001478(A108499(n+1))+A000027(n+1)`
-/

namespace A108500.P7731433972841524351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A108499 (n + 1)).toNat + A000027 (n + 1)

end

end A108500.P7731433972841524351

/-! ## A108500.P10547733853941805036

`A004525(2*(n+1))+A001478(A108499(n+1))`
-/

namespace A108500.P10547733853941805036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * (n + 1)) + A001478 (A108499 (n + 1)).toNat

end

end A108500.P10547733853941805036

/-! ## A108500.P13806742972724930040

`(A001478(A108499(n+1))+n+1)*(-1)^A000010(n+2)`
-/

namespace A108500.P13806742972724930040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001478 (A108499 (n + 1)).toNat + (n + 1 : ℤ) : ℚ) * (-1 : ℚ) ^ (A000010 (n + 2) : ℤ)

end

end A108500.P13806742972724930040

/-!
# A108501: Number of factorizations of 4*n into even numbers.

The programs for A108501, there is no canonical definition to state claims against.
-/

/-! ## A108501.P16134648910943222605

`A340785(2*(n+1))`
-/

namespace A108501.P16134648910943222605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340785 (2 * (n + 1))

end

end A108501.P16134648910943222605

/-! ## A108501.P17630729365826305860

`gcd(A000038(n), A340785(A004277(n+1)))`
-/

namespace A108501.P17630729365826305860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A340785 (A004277 (n + 1)).toNat)

end

end A108501.P17630729365826305860

/-! ## A108501.P11639334318594673103

`A340785(A004277(n+1))+A000038(n+1)`
-/

namespace A108501.P11639334318594673103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340785 (A004277 (n + 1)).toNat + A000038 (n + 1)

end

end A108501.P11639334318594673103

/-! ## A108501.P18252212108822070734

`A340785(A004277(n+1))+C(A028310(n)-n, 2)`
-/

namespace A108501.P18252212108822070734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340785 (A004277 (n + 1)).toNat + (Nat.choose (A028310 n - (n : ℤ)).toNat 2 : ℤ)

end

end A108501.P18252212108822070734

/-! ## A108501.P17318827258983068600

`A340785(A004277(n+1))%(A000040(n+1)²+n)`
-/

namespace A108501.P17318827258983068600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340785 (A004277 (n + 1)).toNat) (A000040 (n + 1) ^ 2 + (n : ℤ))

end

end A108501.P17318827258983068600

/-! ## A108501.P982146495099732934

`A340785(A004277(n+1))^A003557(A089026(n+1))`
-/

namespace A108501.P982146495099732934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340785 (A004277 (n + 1)).toNat : ℚ) ^ (A003557 (A089026 (n + 1)).toNat : ℤ)

end

end A108501.P982146495099732934

/-! ## A108501.P3396104722406021080

`A340785(A004277(n+1))/A003557(A089026(n+2))`
-/

namespace A108501.P3396104722406021080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340785 (A004277 (n + 1)).toNat : ℚ) / (A003557 (A089026 (n + 2)).toNat : ℚ)

end

end A108501.P3396104722406021080

/-! ## A108501.P5744390999611055940

`A349906(4*(n+1))`
-/

namespace A108501.P5744390999611055940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (4 * (n + 1))

end

end A108501.P5744390999611055940

/-! ## A108501.P10201655939308730698

`A340785(A004277(n+1))/A340785(A000040(n+2))`
-/

namespace A108501.P10201655939308730698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340785 (A004277 (n + 1)).toNat : ℚ) / (A340785 (A000040 (n + 2)).toNat : ℚ)

end

end A108501.P10201655939308730698

/-! ## A108501.P16823892888902197483

`A320439(2*A290641(2*(n+1)))`
-/

namespace A108501.P16823892888902197483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (2 * A290641 (2 * (n + 1))).toNat

end

end A108501.P16823892888902197483

/-!
# A108502: Number of factorizations of 4*n into distinct even numbers.

The programs for A108502, there is no canonical definition to state claims against.
-/

/-! ## A108502.P4853347329365989232

`A357859(A071364(2*(n+1)))`
-/

namespace A108502.P4853347329365989232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357859 (A071364 (2 * (n + 1))).toNat

end

end A108502.P4853347329365989232

/-! ## A108502.P9878355556824691933

`A357859(2*(n+1))`
-/

namespace A108502.P9878355556824691933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357859 (2 * (n + 1))

end

end A108502.P9878355556824691933

/-! ## A108502.P7746531056929464565

`A357859(A103517(n))%29`
-/

namespace A108502.P7746531056929464565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357859 (A103517 n).toNat) 29

end

end A108502.P7746531056929464565

/-! ## A108502.P13037866780311343299

`∑{d}[n+1, ceil(1/#)]-A005087(A279356(n+1))`
-/

namespace A108502.P13037866780311343299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ - A005087 (A279356 (n + 1)).toNat

end

end A108502.P13037866780311343299

/-! ## A108502.P6474356020550923941

`A059841(A122111(n+1))+A033273(n+1)`
-/

namespace A108502.P6474356020550923941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A122111 (n + 1)).toNat + A033273 (n + 1)

end

end A108502.P6474356020550923941

/-!
# A108504: Number of divisors of A025487(n) that are at most sqrt(A025487(n)).

The programs for A108504, there is no canonical definition to state claims against.
-/

/-! ## A108504.P11608115917226371111

`A038548(A025487(n+1))`
-/

namespace A108504.P11608115917226371111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A025487 (n + 1)).toNat

end

end A108504.P11608115917226371111

/-! ## A108504.P13169639383183230903

`ceil(A146288(n+1)/2)`
-/

namespace A108504.P13169639383183230903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A146288 (n + 1) : ℚ) / 2⌉

end

end A108504.P13169639383183230903

/-! ## A108504.P10417951311136666162

`A065033(A146288(n+1))`
-/

namespace A108504.P10417951311136666162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A146288 (n + 1)).toNat

end

end A108504.P10417951311136666162

/-! ## A108504.P14792516866127556470

`A004526(A146288(n+1)+1)`
-/

namespace A108504.P14792516866127556470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A146288 (n + 1) + 1).toNat

end

end A108504.P14792516866127556470

/-! ## A108504.P1613934818795348517

`A008619(A146288(n+1)-1)`
-/

namespace A108504.P1613934818795348517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A146288 (n + 1) - 1).toNat

end

end A108504.P1613934818795348517

/-! ## A108504.P6468258746747930772

`A028242(xor(1, A146288(n+1)))`
-/

namespace A108504.P6468258746747930772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A146288 (n + 1))).toNat

end

end A108504.P6468258746747930772

/-! ## A108504.P1614410525036666051

`A110656(4*A146288(n+1))`
-/

namespace A108504.P1614410525036666051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (4 * A146288 (n + 1)).toNat

end

end A108504.P1614410525036666051

/-! ## A108504.P15733463621738853602

`∑{d}[A025487(n+1), A059841(A001222(#))]`
-/

namespace A108504.P15733463621738853602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059841 (A001222 d).toNat

end

end A108504.P15733463621738853602

/-! ## A108504.P3845738338528848039

`A211272(2*A025487(n+1))`
-/

namespace A108504.P3845738338528848039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (2 * A025487 (n + 1)).toNat

end

end A108504.P3845738338528848039

/-!
# A108505: Number of palindromic semiprimes less than 10^n.

The programs for A108505, there is no canonical definition to state claims against.
-/

/-! ## A108505.P2095798652204749234

`A198833(A069598(n+1)+1)%∑[A008498(n)]`
-/

namespace A108505.P2095798652204749234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198833 (A069598 (n + 1) + 1).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108505.P2095798652204749234

/-!
# A108507: Number of paths of length n between two arbitrary, distinct vertices in K5, the complete graph on 5 vertices.

The programs for A108507, there is no canonical definition to state claims against.
-/

/-! ## A108507.P504243533158373940

`A357886(n+16)`
-/

namespace A108507.P504243533158373940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357886 (n + 16)

end

end A108507.P504243533158373940

/-!
# A108508: Number of paths of length n between two arbitrary, distinct vertices in K6, the complete graph on 6 vertices.

The programs for A108508, there is no canonical definition to state claims against.
-/

/-! ## A108508.P11960550009965955721

`A357886(n+27)`
-/

namespace A108508.P11960550009965955721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357886 (n + 27)

end

end A108508.P11960550009965955721

/-! ## A108508.P3298295563482920101

`(n+1)*A199502(2^n)`
-/

namespace A108508.P3298295563482920101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A199502 (2 ^ n)

end

end A108508.P3298295563482920101

/-!
# A108509: Number of paths of length n between two arbitrary, distinct vertices in K7, the complete graph on 7 vertices.

The programs for A108509, there is no canonical definition to state claims against.
-/

/-! ## A108509.P7589661314953509921

`A357886(n+43)`
-/

namespace A108509.P7589661314953509921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357886 (n + 43)

end

end A108509.P7589661314953509921

/-!
# A108511: a(n) is the smallest number m such that prime(m) = n*m - 1, or 0 if no such m exists.

The programs for A108511, there is no canonical definition to state claims against.
-/

/-! ## A108511.P5364996354508464054

`A097660(∑[A097662(n)])%A097656(n)`
-/

namespace A108511.P5364996354508464054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A097656 n)

end

end A108511.P5364996354508464054

/-! ## A108511.P13047262523680789539

`A165111(A211002(n+1)+A041427(n))`
-/

namespace A108511.P13047262523680789539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 (A211002 (n + 1) + A041427 n).toNat

end

end A108511.P13047262523680789539

/-!
# A108512: a(n) is number of solutions of equation prime(x) = n*x - 1.

The programs for A108512, there is no canonical definition to state claims against.
-/

/-! ## A108512.P10550221326433790670

`val(A115449(∑[A002496(n+1)]), 3)`
-/

namespace A108512.P10550221326433790670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A115449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat 3

end

end A108512.P10550221326433790670

/-! ## A108512.P18041097479639394872

`A004603(A214092(n+1)+A027642(n))`
-/

namespace A108512.P18041097479639394872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004603 (A214092 (n + 1) + A027642 n).toNat

end

end A108512.P18041097479639394872

/-! ## A108512.P5534295693159561055

`A096493(A286512(2*n+3)+A256213(n+1))`
-/

namespace A108512.P5534295693159561055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (A286512 (2 * n + 3) + A256213 (n + 1)).toNat

end

end A108512.P5534295693159561055

/-!
# A108513: Numbers of the form (2^i)*(5^j)*(7^k), with i, j, k >= 0.

The programs for A108513, there is no canonical definition to state claims against.
-/

/-! ## A108513.P2460733176722431638

`record[lcm(3, A002473(n+1))/3]`
-/

namespace A108513.P2460733176722431638
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A002473 (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108513.P2460733176722431638

/-! ## A108513.P3145100330551896407

`A002473(lt[0, A002473(n+1)%3]+1)`
-/

namespace A108513.P3145100330551896407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002473 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A108513.P3145100330551896407

/-! ## A108513.P15966145581914791850

`A002473(eq[1, gcd(3, A002473(n+1))]+1)`
-/

namespace A108513.P15966145581914791850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A002473 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A108513.P15966145581914791850

/-! ## A108513.P10524430322351964236

`A002473(eq[1, A002473(n+1)²%3]+1)`
-/

namespace A108513.P10524430322351964236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002473 (n + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A108513.P10524430322351964236

/-! ## A108513.P1393870029508294126

`record[A002473(n+1)/A053590(A086297(n+1))]`
-/

namespace A108513.P1393870029508294126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) / (A053590 (A086297 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108513.P1393870029508294126

/-! ## A108513.P12029459388725063637

`∩[A002473(n+1), A072013(n+1)]`
-/

namespace A108513.P12029459388725063637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108513.P12029459388725063637

/-! ## A108513.P12851882080158753536

`∩[A051038(n+1), A072013(n+1)]`
-/

namespace A108513.P12851882080158753536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108513.P12851882080158753536

/-! ## A108513.P15276472823546717956

`∩[A072013(n+1), A080197(n+1)]`
-/

namespace A108513.P15276472823546717956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108513.P15276472823546717956

/-! ## A108513.P6408710504923060565

`record[A106610(A002473(n+1))]`
-/

namespace A108513.P6408710504923060565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A002473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108513.P6408710504923060565

/-! ## A108513.P1693043303662253114

`∩[A002473(n+1), A229968(n+1)]`
-/

namespace A108513.P1693043303662253114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108513.P1693043303662253114

/-! ## A108513.P15146688768315622525

`∩[A051038(n+1), A229968(n+1)]`
-/

namespace A108513.P15146688768315622525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108513.P15146688768315622525

/-! ## A108513.P11361695670749920275

`∩[A002473(n+1), A192817(n+1)]`
-/

namespace A108513.P11361695670749920275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108513.P11361695670749920275

/-! ## A108513.P21708307634396292

`∩[A002473(n+1), A229973(n+1)]`
-/

namespace A108513.P21708307634396292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108513.P21708307634396292

/-! ## A108513.P4023535567025307174

`∩[A001651(n+1), A002473(n+1)]`
-/

namespace A108513.P4023535567025307174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108513.P4023535567025307174

/-! ## A108513.P5525373948796728990

`record[A071785(floor(3*n/2)+1)]`
-/

namespace A108513.P5525373948796728990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (⌊3 * ((n : ℚ) / 2)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108513.P5525373948796728990

/-! ## A108513.P17815488806066830960

`eq[n, A376301(A091684(n))]`
-/

namespace A108513.P17815488806066830960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 (A091684 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108513.P17815488806066830960

/-! ## A108513.P3466192238201840051

`eq[n, A376301(A106610(n))]`
-/

namespace A108513.P3466192238201840051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 (A106610 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108513.P3466192238201840051

/-! ## A108513.P15491195533001185935

`record[A262401(A008619(n)+n)]`
-/

namespace A108513.P15491195533001185935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (A008619 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108513.P15491195533001185935

/-! ## A108513.P6842343574166057080

`filter[A001651(n+1), A086299(#)]`
-/

namespace A108513.P6842343574166057080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A108513.P6842343574166057080

/-! ## A108513.P11864267218838655865

`filter[A072013(n+1), A086299(#)]`
-/

namespace A108513.P11864267218838655865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A108513.P11864267218838655865

/-!
# A108514: If n is a power of 2, a(n)=n; otherwise a(n) = (p-1)*n/p where p = smallest odd prime divisor of n.

The programs for A108514, there is no canonical definition to state claims against.
-/

/-! ## A108514.P13085774960005995422

`n+1-A108738(n+1)%A008619(n)`
-/

namespace A108514.P13085774960005995422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A108738 (n + 1)) (A008619 n)

end

end A108514.P13085774960005995422

/-! ## A108514.P3833253041616781223

`A057237(A000265(n+1))*A108738(n+1)`
-/

namespace A108514.P3833253041616781223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A000265 (n + 1)).toNat * A108738 (n + 1)

end

end A108514.P3833253041616781223

/-! ## A108514.P12092274806492851639

`A000010(A078701(n+1))*A108738(n+1)`
-/

namespace A108514.P12092274806492851639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A078701 (n + 1)).toNat * A108738 (n + 1)

end

end A108514.P12092274806492851639

/-! ## A108514.P9114498007923258178

`A108738(n+1)*A173557(A336650(n+1))`
-/

namespace A108514.P9114498007923258178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (n + 1) * A173557 (A336650 (n + 1)).toNat

end

end A108514.P9114498007923258178

/-! ## A108514.P15564035353442481903

`A362739(A051755(n+2))`
-/

namespace A108514.P15564035353442481903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362739 (A051755 (n + 2)).toNat

end

end A108514.P15564035353442481903

/-! ## A108514.P11639863898727530615

`A108738(n+1)*A173557(A078701(n+1)²)`
-/

namespace A108514.P11639863898727530615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (n + 1) * A173557 (A078701 (n + 1) ^ 2).toNat

end

end A108514.P11639863898727530615

/-! ## A108514.P12758967080674968059

`A002260(∑[n+2]-A108738(n+1))`
-/

namespace A108514.P12758967080674968059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A108738 (n + 1)).toNat

end

end A108514.P12758967080674968059

/-! ## A108514.P8491225569283645828

`A193739(A108738(n+1)+∑[n])`
-/

namespace A108514.P8491225569283645828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A108738 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A108514.P8491225569283645828

/-!
# A108520: Expansion of 1/(1+2*x+2*x^2).

The programs for A108520, the canonical program `A108520.P3281839290057182931` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108520 has offset 0).

The definition of A108520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x+2x^2))` (program `A108520.P3281839290057182931`, by `A108520.P3281839290057182931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108520.P3281839290057182931

`ogf(1/(1+2x+2x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108520

/-- `ogf(1/(1+2x+2x^2))` -/
def P3281839290057182931.Spec : Prop :=
  ∀ n, P3281839290057182931.a n = A108520 n

theorem P3281839290057182931.correct : P3281839290057182931.Spec := by
  intro n
  simp only [A108520]

end A108520

/-! ## A108520.P1521124145426792481

`A016116(n+1)*A075553(n+1)`
-/

namespace A108520.P1521124145426792481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A075553 (n + 1)

end

end A108520.P1521124145426792481

namespace A108520

/-- `A016116(n+1)*A075553(n+1)` -/
def P1521124145426792481.Spec : Prop :=
  ∀ n, P1521124145426792481.a n = A108520 n

end A108520

/-! ## A108520.P16019581334552416189

`2*a(n-3)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A108520.P16019581334552416189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n a =>
  2 * a (n - 3) - a (n - 1)

end

end A108520.P16019581334552416189

namespace A108520

/-- `2*a(n-3)-a(n-1)` -/
def P16019581334552416189.Spec : Prop :=
  ∀ n, P16019581334552416189.a n = A108520 n

end A108520

/-! ## A108520.P14312662454217413626

`a(n-3)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A108520.P14312662454217413626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 1))

end

end A108520.P14312662454217413626

namespace A108520

/-- `a(n-3)+a(n-3)-a(n-1)` -/
def P14312662454217413626.Spec : Prop :=
  ∀ n, P14312662454217413626.a n = A108520 n

end A108520

/-! ## A108520.P14544290295877775326

`floor(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=-2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A108520.P14544290295877775326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3))

end

end A108520.P14544290295877775326

namespace A108520

/-- `floor(a(n-3)-(a(n-1)-a(n-3)))` -/
def P14544290295877775326.Spec : Prop :=
  ∀ n, P14544290295877775326.a n = A108520 n

end A108520

/-! ## A108520.P18411616550349419225

`∑[a(n-3)-(a(n-1)-a(n-3))]` with `a(0)=1, a(1)=-3, a(2)=4`
-/

namespace A108520.P18411616550349419225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 4] fun n f1 =>
  f1 (n - 3) - (f1 (n - 1) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108520.P18411616550349419225

namespace A108520

/-- `∑[a(n-3)-(a(n-1)-a(n-3))]` -/
def P18411616550349419225.Spec : Prop :=
  ∀ n, P18411616550349419225.a n = A108520 n

end A108520

/-! ## A108520.P2678027981132057221

`∑[A078069(n)]`
-/

namespace A108520.P2678027981132057221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108520.P2678027981132057221

namespace A108520

/-- `∑[A078069(n)]` -/
def P2678027981132057221.Spec : Prop :=
  ∀ n, P2678027981132057221.a n = A108520 n

end A108520

/-! ## A108520.P9530647771798588818

`Δ[-A137505(n+1)]`
-/

namespace A108520.P9530647771798588818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108520.P9530647771798588818

namespace A108520

/-- `Δ[-A137505(n+1)]` -/
def P9530647771798588818.Spec : Prop :=
  ∀ n, P9530647771798588818.a n = A108520 n

end A108520

/-! ## A108520.P981424208435718111

`(-1)^n*A099087(n)`
-/

namespace A108520.P981424208435718111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A099087 n

end

end A108520.P981424208435718111

namespace A108520

/-- `(-1)^n*A099087(n)` -/
def P981424208435718111.Spec : Prop :=
  ∀ n, P981424208435718111.a n = A108520 n

end A108520

/-! ## A108520.P13045433728516784601

`A009116(n)-a(n-1)` with `a(0)=1`
-/

namespace A108520.P13045433728516784601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009116 n - a (n - 1)

end

end A108520.P13045433728516784601

namespace A108520

/-- `A009116(n)-a(n-1)` -/
def P13045433728516784601.Spec : Prop :=
  ∀ n, P13045433728516784601.a n = A108520 n

end A108520

/-! ## A108520.P14543347367425384722

`A000038(n)-A084102(n)`
-/

namespace A108520.P14543347367425384722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A084102 n

end

end A108520.P14543347367425384722

namespace A108520

/-- `A000038(n)-A084102(n)` -/
def P14543347367425384722.Spec : Prop :=
  ∀ n, P14543347367425384722.a n = A108520 n

end A108520

/-! ## A108520.P2895117351932762244

`A099087(n)/A033999(n)`
-/

namespace A108520.P2895117351932762244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A033999 n : ℚ)

end

end A108520.P2895117351932762244

namespace A108520

/-- `A099087(n)/A033999(n)` -/
def P2895117351932762244.Spec : Prop :=
  ∀ n, P2895117351932762244.a n = (A108520 n : ℚ)

end A108520

/-! ## A108520.P1729397032442705442

`A084102(n)*A153881(n+1)`
-/

namespace A108520.P1729397032442705442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 n * A153881 (n + 1)

end

end A108520.P1729397032442705442

namespace A108520

/-- `A084102(n)*A153881(n+1)` -/
def P1729397032442705442.Spec : Prop :=
  ∀ n, P1729397032442705442.a n = A108520 n

end A108520

/-! ## A108520.P15190171181971902238

`A099087(n)*A165326(n+1)`
-/

namespace A108520.P15190171181971902238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n * A165326 (n + 1)

end

end A108520.P15190171181971902238

namespace A108520

/-- `A099087(n)*A165326(n+1)` -/
def P15190171181971902238.Spec : Prop :=
  ∀ n, P15190171181971902238.a n = A108520 n

end A108520

/-! ## A108520.P7417277539797211935

`A099087(n)*A309873(n+1)`
-/

namespace A108520.P7417277539797211935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n * A309873 (n + 1)

end

end A108520.P7417277539797211935

namespace A108520

/-- `A099087(n)*A309873(n+1)` -/
def P7417277539797211935.Spec : Prop :=
  ∀ n, P7417277539797211935.a n = A108520 n

end A108520

/-! ## A108520.P3406169105989421567

`A118827(n+1)*A363524(n)`
-/

namespace A108520.P3406169105989421567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1) * A363524 n

end

end A108520.P3406169105989421567

namespace A108520

/-- `A118827(n+1)*A363524(n)` -/
def P3406169105989421567.Spec : Prop :=
  ∀ n, P3406169105989421567.a n = A108520 n

end A108520

/-! ## A108520.P3426983442447919946

`A230074(n+1)*A320770(n)`
-/

namespace A108520.P3426983442447919946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230074 (n + 1) * A320770 n

end

end A108520.P3426983442447919946

namespace A108520

/-- `A230074(n+1)*A320770(n)` -/
def P3426983442447919946.Spec : Prop :=
  ∀ n, P3426983442447919946.a n = A108520 n

end A108520

/-! ## A108520.P15107806724694764901

`A230074(n+1)*A363524(n)`
-/

namespace A108520.P15107806724694764901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230074 (n + 1) * A363524 n

end

end A108520.P15107806724694764901

namespace A108520

/-- `A230074(n+1)*A363524(n)` -/
def P15107806724694764901.Spec : Prop :=
  ∀ n, P15107806724694764901.a n = A108520 n

end A108520

/-! ## A108520.P8857798006950800067

`A327767(n+1)*A363524(n)`
-/

namespace A108520.P8857798006950800067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327767 (n + 1) * A363524 n

end

end A108520.P8857798006950800067

namespace A108520

/-- `A327767(n+1)*A363524(n)` -/
def P8857798006950800067.Spec : Prop :=
  ∀ n, P8857798006950800067.a n = A108520 n

end A108520

/-! ## A108520.P18431211168071891447

`A084102(n)*A165326(2*n)`
-/

namespace A108520.P18431211168071891447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 n * A165326 (2 * n)

end

end A108520.P18431211168071891447

namespace A108520

/-- `A084102(n)*A165326(2*n)` -/
def P18431211168071891447.Spec : Prop :=
  ∀ n, P18431211168071891447.a n = A108520 n

end A108520

/-!
# A108521: Number of rooted trees with n generators.

The programs for A108521, there is no canonical definition to state claims against.
-/

/-! ## A108521.P8156284883391960816

`A062050(A309087(n)+A008549(n))`
-/

namespace A108521.P8156284883391960816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A309087 n + A008549 n).toNat

end

end A108521.P8156284883391960816

/-! ## A108521.P17691876136269148544

`A289341(n+1)+A059995(A192802(n+2))`
-/

namespace A108521.P17691876136269148544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289341 (n + 1) + A059995 (A192802 (n + 2)).toNat

end

end A108521.P17691876136269148544

/-! ## A108521.P260791480462643990

`A198518(2*n+1)-A343747(A000079(n))`
-/

namespace A108521.P260791480462643990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198518 (2 * n + 1) - A343747 (A000079 n).toNat

end

end A108521.P260791480462643990

/-!
# A108522: Number of increasing rooted trees with n generators.

The programs for A108522, there is no canonical definition to state claims against.
-/

/-! ## A108522.P13296786935641334287

`A284724((n+2)*n^n)`
-/

namespace A108522.P13296786935641334287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284724 ((n + 2) * n ^ n)

end

end A108522.P13296786935641334287

/-!
# A108523: Number of rooted identity trees with n generators.

The programs for A108523, there is no canonical definition to state claims against.
-/

/-! ## A108523.P3937617070960501543

`A108955(A109000(n)+A011782(n))`
-/

namespace A108523.P3937617070960501543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108955 (A109000 n + A011782 n).toNat

end

end A108523.P3937617070960501543

/-! ## A108523.P5173319519798548091

`A095773(A094433(n))`
-/

namespace A108523.P5173319519798548091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A094433 n).toNat

end

end A108523.P5173319519798548091

/-! ## A108523.P5613733187333687850

`A070868(A149045(n))`
-/

namespace A108523.P5613733187333687850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A149045 n).toNat

end

end A108523.P5613733187333687850

/-! ## A108523.P10607502086936641215

`A073289(A245898(n+1))`
-/

namespace A108523.P10607502086936641215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A245898 (n + 1)).toNat

end

end A108523.P10607502086936641215

/-!
# A108524: Number of ordered rooted trees with n generators.

The programs for A108524, the canonical program `A108524.P1272162441215940971` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108524 has offset 1).

The definition of A108524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108524.P5656155870331082126

`(A025231(n+1)+a(n-1))/2` with `a(0)=1`
-/

namespace A108524.P5656155870331082126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A025231 (n + 1) : ℚ) + a (n - 1)) / 2

end

end A108524.P5656155870331082126

namespace A108524

/-- `(A025231(n+1)+a(n-1))/2` -/
def P5656155870331082126.Spec : Prop :=
  ∀ n, P5656155870331082126.a n = (A108524 (n + 1) : ℚ)

end A108524

/-! ## A108524.P1272162441215940971

`(A047891(n+1)+a(n-1))/2` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108524

/-- `(A047891(n+1)+a(n-1))/2` -/
def P1272162441215940971.Spec : Prop :=
  ∀ n, P1272162441215940971.a n = (A108524 (n + 1) : ℚ)

end A108524

/-! ## A108524.P8695806480069383248

`record[A357585(n)]`
-/

namespace A108524.P8695806480069383248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108524.P8695806480069383248

namespace A108524

/-- `record[A357585(n)]` -/
def P8695806480069383248.Spec : Prop :=
  ∀ n, P8695806480069383248.a n = A108524 (n + 1)

end A108524

/-! ## A108524.P18358567301227009455

`A357585(∑[n+1]+1)`
-/

namespace A108524.P18358567301227009455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357585 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A108524.P18358567301227009455

namespace A108524

/-- `A357585(∑[n+1]+1)` -/
def P18358567301227009455.Spec : Prop :=
  ∀ n, P18358567301227009455.a n = A108524 (n + 1)

end A108524

/-! ## A108524.P790086490150870013

`A357585(A134869(n+1))+A010894(n)`
-/

namespace A108524.P790086490150870013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357585 (A134869 (n + 1)).toNat + A010894 (n + 21)

end

end A108524.P790086490150870013

namespace A108524

/-- `A357585(A134869(n+1))+A010894(n)` -/
def P790086490150870013.Spec : Prop :=
  ∀ n, P790086490150870013.a n = A108524 (n + 1)

end A108524

/-!
# A108526: Number of mobiles (cycle rooted trees) with n generators.

The programs for A108526, there is no canonical definition to state claims against.
-/

/-! ## A108526.P14962077688652238551

`A350780(a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A108526.P14962077688652238551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A350780 (a (n - 1)).toNat

end

end A108526.P14962077688652238551

/-! ## A108526.P1152056602693123523

`A167703(round((4-6/(n+1))*a(n-1)))` with `a(0)=1`
-/

namespace A108526.P1152056602693123523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167703 (SequenceMachineLib.roundAway ((4 - 6 / (n + 1 : ℚ)) * (a (n - 1) : ℚ))).toNat

end

end A108526.P1152056602693123523

/-!
# A108527: Number of labeled mobiles (cycle rooted trees) with n generators.

The programs for A108527, there is no canonical definition to state claims against.
-/

/-! ## A108527.P1065683691654703346

`A309076(∑{d}[A008545(n), #])`
-/

namespace A108527.P1065683691654703346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309076 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A108527.P1065683691654703346

/-!
# A108528: Number of increasing mobiles (cycle rooted trees) with n generators.

The programs for A108528, there is no canonical definition to state claims against.
-/

/-! ## A108528.P16704892930875430766

`A109959(a(n-1)-n+1)` with `a(0)=1, a(1)=2`
-/

namespace A108528.P16704892930875430766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A109959 (a (n - 1) - (n : ℤ) + 1).toNat

end

end A108528.P16704892930875430766

/-!
# A108529: Number of asymmetric mobiles (cycle rooted trees) with n generators.

The programs for A108529, there is no canonical definition to state claims against.
-/

/-! ## A108529.P14135020787687404336

`A248227(A148704(n))`
-/

namespace A108529.P14135020787687404336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A148704 n).toNat

end

end A108529.P14135020787687404336

/-! ## A108529.P9417171150608671409

`A060384(A029899(n)+A029890(n+1))`
-/

namespace A108529.P9417171150608671409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A029899 n + A029890 (n + 1)).toNat

end

end A108529.P9417171150608671409

/-! ## A108529.P7108551456316860257

`A264749(3*A148876(n))+A059995(A351509(n))`
-/

namespace A108529.P7108551456316860257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (3 * A148876 n).toNat + A059995 (A351509 n).toNat

end

end A108529.P7108551456316860257

/-!
# A108530: Number of rooted identity trees with n internal (non-leaf) nodes.

The programs for A108530, there is no canonical definition to state claims against.
-/

/-! ## A108530.P17967451726381356921

`A300763(xor(n, A071755(n)))`
-/

namespace A108530.P17967451726381356921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (Int.xor (n : ℤ) (A071755 n)).toNat

end

end A108530.P17967451726381356921

/-! ## A108530.P17545270142589866772

`A034973(A149406(n)+A096647(n))`
-/

namespace A108530.P17545270142589866772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A149406 n + A096647 n).toNat

end

end A108530.P17545270142589866772

/-! ## A108530.P7028187547168397973

`A082533(A054857(n))`
-/

namespace A108530.P7028187547168397973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082533 (A054857 n).toNat

end

end A108530.P7028187547168397973

/-!
# A108531: Number of mobiles (cycle rooted trees) with n nodes and 2-colored internal (non-leaf) nodes.

The programs for A108531, there is no canonical definition to state claims against.
-/

/-! ## A108531.P4539535684969794120

`floor(sqrt(3*A279201(n)))`
-/

namespace A108531.P4539535684969794120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A279201 n)

end

end A108531.P4539535684969794120

/-! ## A108531.P12177407233837978751

`A112325(A070778(n))`
-/

namespace A108531.P12177407233837978751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A070778 n).toNat

end

end A108531.P12177407233837978751

/-!
# A108532: Number of asymmetric mobiles (cycle rooted trees) with n nodes and 2-colored internal (non-leaf) nodes.

The programs for A108532, there is no canonical definition to state claims against.
-/

/-! ## A108532.P7897458305027433032

`A220658(∑[A150759(n)])`
-/

namespace A108532.P7897458305027433032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108532.P7897458305027433032

/-! ## A108532.P9105855032191752642

`A008615(or(7, A349847(n)))`
-/

namespace A108532.P9105855032191752642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lor 7 (A349847 n)).toNat

end

end A108532.P9105855032191752642

/-! ## A108532.P5003720578120533080

`A112689(or(7, A349847(n)))`
-/

namespace A108532.P5003720578120533080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (Int.lor 7 (A349847 n)).toNat

end

end A108532.P5003720578120533080

/-!
# A108535: Positions of balanced digits in the decimal expansion of Pi.

The programs for A108535, there is no canonical definition to state claims against.
-/

/-! ## A108535.P12407709266877785953

`eq[A095916(n+1), A095916(n+2)]+2`
-/

namespace A108535.P12407709266877785953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A108535.P12407709266877785953

/-!
# A108536: Maximal "digit" in position n from right of numbers in "base American money" representation (A080897).

The programs for A108536, there is no canonical definition to state claims against.
-/

/-! ## A108536.P10805874980835633877

`gcd(A097150(3*(n+1))², lt[2*n²-1, xor(n, 2*n)²])`
-/

namespace A108536.P10805874980835633877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097150 (3 * (n + 1)) ^ 2) (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A108536.P10805874980835633877

/-! ## A108536.P12728762579593834230

`gcd(A126045(n+1)², A003726(n+1))`
-/

namespace A108536.P12728762579593834230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126045 (n + 1) ^ 2) (A003726 (n + 1))

end

end A108536.P12728762579593834230

/-! ## A108536.P14904544202689028523

`gcd(A083866(n), A361020(A224374(n+1)))`
-/

namespace A108536.P14904544202689028523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083866 n) (A361020 (A224374 (n + 1)).toNat)

end

end A108536.P14904544202689028523

/-! ## A108536.P4804997275522859729

`A243070(gcd(A022844(n), A082227(n+2)))`
-/

namespace A108536.P4804997275522859729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (Int.gcd (A022844 n) (A082227 (n + 2)))

end

end A108536.P4804997275522859729

/-! ## A108536.P3833421006890303072

`gcd(A001221(A004828(n+10))², A004828(n+1))`
-/

namespace A108536.P3833421006890303072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A004828 (n + 10)).toNat ^ 2) (A004828 (n + 1))

end

end A108536.P3833421006890303072

/-!
# A108537: Concatenation of palindrome k and its 10's complement is prime.

The programs for A108537, there is no canonical definition to state claims against.
-/

/-! ## A108537.P9065017400480352652

`A331912(A083785(n+1))+A001787(n)`
-/

namespace A108537.P9065017400480352652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (A083785 (n + 1)).toNat + A001787 n

end

end A108537.P9065017400480352652

/-!
# A108539: a(n) = that prime p such that p/prime(n) is nearest to phi, the golden ratio: phi=(1+sqrt(5))/2.

The programs for A108539, the canonical program `A108539.P13491111978164648350` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108539 has offset 1).

The definition of A108539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108539.P13491111978164648350

`A076272(A075317(A008578(n+2)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A108539

/-- `A076272(A075317(A008578(n+2)))` -/
def P13491111978164648350.Spec : Prop :=
  ∀ n, P13491111978164648350.a n = A108539 (n + 1)

theorem P13491111978164648350.correct : P13491111978164648350.Spec := by
  intro n
  simp only [A108539, Nat.add_sub_cancel]

end A108539

/-! ## A108539.P1950391224030008753

`A076272(A075317(p?[A227082(n+1)]))`
-/

namespace A108539.P1950391224030008753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A075317 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A108539.P1950391224030008753

namespace A108539

/-- `A076272(A075317(p?[A227082(n+1)]))` -/
def P1950391224030008753.Spec : Prop :=
  ∀ n, P1950391224030008753.a n = A108539 (n + 1)

end A108539

/-! ## A108539.P12742694046976549373

`A076272(∑{p}[A001248(n+1), A075317(#)])`
-/

namespace A108539.P12742694046976549373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A075317 p).toNat

end

end A108539.P12742694046976549373

namespace A108539

/-- `A076272(∑{p}[A001248(n+1), A075317(#)])` -/
def P12742694046976549373.Spec : Prop :=
  ∀ n, P12742694046976549373.a n = A108539 (n + 1)

end A108539

/-! ## A108539.P5058092046816471907

`A076272(∑{p}[A001248(n+1), A283233(#)])`
-/

namespace A108539.P5058092046816471907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A283233 p).toNat

end

end A108539.P5058092046816471907

namespace A108539

/-- `A076272(∑{p}[A001248(n+1), A283233(#)])` -/
def P5058092046816471907.Spec : Prop :=
  ∀ n, P5058092046816471907.a n = A108539 (n + 1)

end A108539

/-! ## A108539.P9751226038301174204

`A076272(∏{p}[A001248(n+1), A075317(#)])`
-/

namespace A108539.P9751226038301174204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A075317 p).toNat

end

end A108539.P9751226038301174204

namespace A108539

/-- `A076272(∏{p}[A001248(n+1), A075317(#)])` -/
def P9751226038301174204.Spec : Prop :=
  ∀ n, P9751226038301174204.a n = A108539 (n + 1)

end A108539

/-!
# A108540: Golden semiprimes: a(n)=p*q and abs(p*phi-q)

The programs for A108540, there is no canonical definition to state claims against.
-/

/-! ## A108540.P9793716117533666711

`A108541(n+1)*A108542(n+1)`
-/

namespace A108540.P9793716117533666711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108541 (n + 1) * A108542 (n + 1)

end

end A108540.P9793716117533666711

/-! ## A108540.P6594797848002901100

`lcm(A108541(A000027(n+1)), A108542(n+1))`
-/

namespace A108540.P6594797848002901100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A108541 (A000027 (n + 1)).toNat) (A108542 (n + 1))

end

end A108540.P6594797848002901100

/-! ## A108540.P17595837964225316432

`lcm(A108541(n+1), A108542(A005408(n)-n))`
-/

namespace A108540.P17595837964225316432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A108541 (n + 1)) (A108542 (A005408 n - (n : ℤ)).toNat)

end

end A108540.P17595837964225316432

/-! ## A108540.P6892097314039543375

`A108542(n+1)*A151800(ceil(A108542(n+1)/ϕ)-2)`
-/

namespace A108540.P6892097314039543375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108542 (n + 1) * A151800 (⌈(A108542 (n + 1) : ℝ) / Real.goldenRatio⌉ - 2).toNat

end

end A108540.P6892097314039543375

/-! ## A108540.P6095567241217684185

`A007918(ceil(A108542(n+1)/ϕ)-1)*A108542(n+1)`
-/

namespace A108540.P6095567241217684185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (⌈(A108542 (n + 1) : ℝ) / Real.goldenRatio⌉ - 1).toNat * A108542 (n + 1)

end

end A108540.P6095567241217684185

/-!
# A108541: Lesser prime factor of n-th golden semiprime.

The programs for A108541, there is no canonical definition to state claims against.
-/

/-! ## A108541.P8085419708513864107

`A108540(n+1)/A108542(n+1)`
-/

namespace A108541.P8085419708513864107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108540 (n + 1) : ℚ) / (A108542 (n + 1) : ℚ)

end

end A108541.P8085419708513864107

/-! ## A108541.P3221671365787702045

`round(sqrt(A108540(n+1)/ϕ))`
-/

namespace A108541.P3221671365787702045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A108540 (n + 1) : ℝ) / Real.goldenRatio))

end

end A108541.P3221671365787702045

/-! ## A108541.P18028354196645118108

`A151800(ceil(A108542(n+1)/ϕ)-2)`
-/

namespace A108541.P18028354196645118108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (⌈(A108542 (n + 1) : ℝ) / Real.goldenRatio⌉ - 2).toNat

end

end A108541.P18028354196645118108

/-! ## A108541.P12997646659159724913

`A007918(ceil(A108542(n+1)/ϕ)-1)`
-/

namespace A108541.P12997646659159724913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (⌈(A108542 (n + 1) : ℝ) / Real.goldenRatio⌉ - 1).toNat

end

end A108541.P12997646659159724913

/-! ## A108541.P16525103239558165766

`A007918(A057428(n)+ceil(A108542(n+1)/ϕ))`
-/

namespace A108541.P16525103239558165766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A057428 n + ⌈(A108542 (n + 1) : ℝ) / Real.goldenRatio⌉).toNat

end

end A108541.P16525103239558165766

/-! ## A108541.P6931653499988103695

`p?[A002251(A173919(n+1))-A173919(n+1)]`
-/

namespace A108541.P6931653499988103695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A173919 (n + 1)).toNat - A173919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108541.P6931653499988103695

/-!
# A108542: Greater prime factor of n-th golden semiprime.

The programs for A108542, there is no canonical definition to state claims against.
-/

/-! ## A108542.P2214521604154923345

`A108540(n+1)/A108541(n+1)`
-/

namespace A108542.P2214521604154923345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108540 (n + 1) : ℚ) / (A108541 (n + 1) : ℚ)

end

end A108542.P2214521604154923345

/-! ## A108542.P18083150093306493704

`A108539(∑{d}[A108541(n+1), A000720(#)])`
-/

namespace A108542.P18083150093306493704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108539 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A108542.P18083150093306493704

/-! ## A108542.P6183403726622894154

`A108539(∏{p}[A108541(n+1), A000720(#)])`
-/

namespace A108542.P6183403726622894154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108539 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A108542.P6183403726622894154

/-! ## A108542.P8367451598971378593

`or(1, A000201(A108541(n+1)))`
-/

namespace A108542.P8367451598971378593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000201 (A108541 (n + 1)).toNat)

end

end A108542.P8367451598971378593

/-! ## A108542.P4726806165509005549

`p?[or(1, A000201(A000040(n+1)))]`
-/

namespace A108542.P4726806165509005549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000201 (A000040 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108542.P4726806165509005549

/-! ## A108542.P11865171179592745799

`p?[or(1, A000201(A008578(n+1)))]`
-/

namespace A108542.P11865171179592745799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000201 (A008578 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108542.P11865171179592745799

/-! ## A108542.P12055861659977492231

`p?[or(A207376(n+1)-(n+1), A000201(n+1))]`
-/

namespace A108542.P12055861659977492231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207376 (n + 1) - (n + 1 : ℤ)) (A000201 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108542.P12055861659977492231

/-!
# A108543: Primes that are factors of golden semiprimes (A108540).

The programs for A108543, there is no canonical definition to state claims against.
-/

/-! ## A108543.P713413356861264239

`∪[A108541(n+1), A108542(n+1)]`
-/

namespace A108543.P713413356861264239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108543.P713413356861264239

/-! ## A108543.P14447206136795544351

`p?[n*A258053(A276580(n+2))]`
-/

namespace A108543.P14447206136795544351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A258053 (A276580 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108543.P14447206136795544351

/-! ## A108543.P4748987922847821552

`record[A007918(A327525(n+1)+A006530(n+1))]`
-/

namespace A108543.P4748987922847821552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A327525 (n + 1) + A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108543.P4748987922847821552

/-!
# A108544: Primes that are factors of distinct golden semiprimes (A108540).

The programs for A108544, there is no canonical definition to state claims against.
-/

/-! ## A108544.P10677574922321656720

`round(root(A107768(n+1), 3))`
-/

namespace A108544.P10677574922321656720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A107768 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A108544.P10677574922321656720

/-! ## A108544.P8971801624815927258

`∩[A108541(n+1), A108542(n+1)]`
-/

namespace A108544.P8971801624815927258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108544.P8971801624815927258

/-!
# A108546: Lexicographically earliest permutation of primes such that for n>1 forms 4*k+1 and 4*k+3 alternate.

The programs for A108546, there is no canonical definition to state claims against.
-/

/-! ## A108546.P5809112126708042055

`A000040(A332807(n+1))`
-/

namespace A108546.P5809112126708042055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A332807 (n + 1)).toNat

end

end A108546.P5809112126708042055

/-! ## A108546.P41133425499462011

`A332806(A332807(A332807(A332807(A332805(n+1)))))`
-/

namespace A108546.P41133425499462011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332806 (A332807 (A332807 (A332807 (A332805 (n + 1)).toNat).toNat).toNat).toNat

end

end A108546.P41133425499462011

/-! ## A108546.P15608820128494773303

`A006005(A332807(n+1))+A000007(n)`
-/

namespace A108546.P15608820128494773303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A332807 (n + 1)).toNat + A000007 n

end

end A108546.P15608820128494773303

/-! ## A108546.P12132793294543850104

`A008578(A332807(n+1)+1)`
-/

namespace A108546.P12132793294543850104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A332807 (n + 1) + 1).toNat

end

end A108546.P12132793294543850104

/-! ## A108546.P4695510657143380852

`A182986(A332807(n+1)+1)`
-/

namespace A108546.P4695510657143380852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A332807 (n + 1) + 1).toNat

end

end A108546.P4695510657143380852

/-! ## A108546.P6586160375481214134

`A332806(A332807(A332807(A267100(A267100(n+1)))))`
-/

namespace A108546.P6586160375481214134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332806 (A332807 (A332807 (A267100 (A267100 (n + 1)).toNat).toNat).toNat).toNat

end

end A108546.P6586160375481214134

/-! ## A108546.P18405659731851638238

`p?[A108548(n+1)]`
-/

namespace A108546.P18405659731851638238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108546.P18405659731851638238

/-! ## A108546.P15553110550355988859

`A332818(a(n-1))` with `a(0)=2`
-/

namespace A108546.P15553110550355988859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A332818 (a (n - 1)).toNat

end

end A108546.P15553110550355988859

/-! ## A108546.P12872055071201497275

`A389073(a(n-1))-1` with `a(0)=2`
-/

namespace A108546.P12872055071201497275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A389073 (a (n - 1)).toNat - 1

end

end A108546.P12872055071201497275

/-! ## A108546.P11179941047537704898

`A108548(A000040(n+1))`
-/

namespace A108546.P11179941047537704898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A000040 (n + 1)).toNat

end

end A108546.P11179941047537704898

/-! ## A108546.P13294235926190186826

`A108548(A008578(n+2))`
-/

namespace A108546.P13294235926190186826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A008578 (n + 2)).toNat

end

end A108546.P13294235926190186826

/-! ## A108546.P18249823268529394991

`A108548(A182986(n+2))`
-/

namespace A108546.P18249823268529394991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A182986 (n + 2)).toNat

end

end A108546.P18249823268529394991

/-! ## A108546.P9011415800952956520

`A108548(record[A006530(n+2)])`
-/

namespace A108546.P9011415800952956520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108546.P9011415800952956520

/-! ## A108546.P1297208688602417677

`A108548(record[A020639(n+2)])`
-/

namespace A108546.P1297208688602417677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108546.P1297208688602417677

/-! ## A108546.P1415776854509278245

`A108548(A082500(2*(n+1)))`
-/

namespace A108546.P1415776854509278245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A082500 (2 * (n + 1))).toNat

end

end A108546.P1415776854509278245

/-! ## A108546.P13829336265874047422

`A108548(A014689(n+1)+n+1)`
-/

namespace A108546.P13829336265874047422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A014689 (n + 1) + (n + 1 : ℤ)).toNat

end

end A108546.P13829336265874047422

/-! ## A108546.P1973467050689787261

`A108548(A108548(A332806(n+1)))`
-/

namespace A108546.P1973467050689787261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A108548 (A332806 (n + 1)).toNat).toNat

end

end A108546.P1973467050689787261

/-! ## A108546.P3529365838961374621

`filter[A108548(n+1), A010051(#)]`
-/

namespace A108546.P3529365838961374621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A108546.P3529365838961374621

/-! ## A108546.P2230419214257196529

`A267099(A267101(A332807(A267097(A080147(n+1)))))`
-/

namespace A108546.P2230419214257196529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A267101 (A332807 (A267097 (A080147 (n + 1)).toNat).toNat).toNat).toNat

end

end A108546.P2230419214257196529

/-! ## A108546.P15918104573526108008

`A267099(A267101(A332807(A267107(A267107(n+1)))))`
-/

namespace A108546.P15918104573526108008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A267101 (A332807 (A267107 (A267107 (n + 1)).toNat).toNat).toNat).toNat

end

end A108546.P15918104573526108008

/-!
# A108547: Fixed points for prime number permutation A108546.

The programs for A108547, there is no canonical definition to state claims against.
-/

/-! ## A108547.P18129162566860899338

`p?[gcd(A151800(n), A332808(n+1))]`
-/

namespace A108547.P18129162566860899338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151800 n) (A332808 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A108547.P18129162566860899338

/-! ## A108547.P8043388407373242610

`record[gcd(A050997(n+1), A108546(n+1))]`
-/

namespace A108547.P8043388407373242610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050997 (n + 1)) (A108546 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108547.P8043388407373242610

/-! ## A108547.P15387472175197342646

`A000040(eq[n+1, A332807(n+1)]+1)`
-/

namespace A108547.P15387472175197342646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A108547.P15387472175197342646

/-! ## A108547.P6955889164457245325

`p?[(A332805(n+1)-n)*A108546(n+1)]`
-/

namespace A108547.P6955889164457245325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332805 (n + 1) - (n : ℤ)) * A108546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108547.P6955889164457245325

/-! ## A108547.P15725093231087796172

`∪[A007351(n+1), A096447(n+1)]%A096448(3*n+5)`
-/

namespace A108547.P15725093231087796172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096447 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A096448 (3 * n + 5))

end

end A108547.P15725093231087796172

/-!
# A108548: Fully multiplicative with a(prime(j)) = A108546(j), where A108546 is the lexicographically earliest permutation of primes such that after 2 the forms 4*k+1 and 4*k+3 alternate, and prime(j) is the j-th prime in A000040.

The programs for A108548, there is no canonical definition to state claims against.
-/

/-! ## A108548.P247242812729641944

`∏{e}[A181821(n+1), A108546(#)]`
-/

namespace A108548.P247242812729641944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A108546 (Nat.factorization (f1 n).natAbs p)

end

end A108548.P247242812729641944

/-! ## A108548.P12960978145471098861

`A227324(A332808(A227324(n+1)))`
-/

namespace A108548.P12960978145471098861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227324 (A332808 (A227324 (n + 1)).toNat).toNat

end

end A108548.P12960978145471098861

/-! ## A108548.P8845942671555297492

`A332808(n+1)^gcd(67, ∑[n])`
-/

namespace A108548.P8845942671555297492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1) ^ Nat.gcd 67 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108548.P8845942671555297492

/-! ## A108548.P14078517171054465831

`A000188(lcm(2, A332808((n+1)²)))`
-/

namespace A108548.P14078517171054465831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.lcm 2 (A332808 ((n + 1) ^ 2)))

end

end A108548.P14078517171054465831

/-! ## A108548.P7129441588421272157

`A332808(n+1)%A340846(n+2)²`
-/

namespace A108548.P7129441588421272157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332808 (n + 1)) (A340846 (n + 2) ^ 2)

end

end A108548.P7129441588421272157

/-! ## A108548.P14317850966039855708

`A332808(n+1)^A014963(67*(n+1))`
-/

namespace A108548.P14317850966039855708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332808 (n + 1) : ℚ) ^ (A014963 (67 * (n + 1)) : ℤ)

end

end A108548.P14317850966039855708

/-! ## A108548.P16919470369210943509

`A332808(A332811(A332817(n+1)))`
-/

namespace A108548.P16919470369210943509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A332811 (A332817 (n + 1)).toNat).toNat

end

end A108548.P16919470369210943509

/-! ## A108548.P15889704459301016690

`A332808(A332811(A332808(A163511(n+1))))`
-/

namespace A108548.P15889704459301016690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A332811 (A332808 (A163511 (n + 1)).toNat).toNat).toNat

end

end A108548.P15889704459301016690

/-! ## A108548.P16465397846075571746

`A014963(or(62, C(n, 62)))*A332808(n+1)`
-/

namespace A108548.P16465397846075571746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lor 62 (Nat.choose n 62)) * A332808 (n + 1)

end

end A108548.P16465397846075571746

/-! ## A108548.P6848757581620029143

`A332808(n+1)+A185284(A321347(n))`
-/

namespace A108548.P6848757581620029143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1) + A185284 (A321347 n).toNat

end

end A108548.P6848757581620029143

/-!
# A108549: Fixed points for A108548.

The programs for A108549, there is no canonical definition to state claims against.
-/

/-! ## A108549.P12093919602385222639

`eq[n, A108548(abs(1-n)+1)]`
-/

namespace A108549.P12093919602385222639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108549.P12093919602385222639

/-! ## A108549.P2726191413193143595

`eq[n, A332808(abs(1-n)+1)]`
-/

namespace A108549.P2726191413193143595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108549.P2726191413193143595

/-! ## A108549.P15550859388750257092

`record[gcd(n+1, A108548(n+1))]`
-/

namespace A108549.P15550859388750257092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A108548 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108549.P15550859388750257092

/-! ## A108549.P3212116291607209185

`record[A332808(n+1)%(n+2)]`
-/

namespace A108549.P3212116291607209185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332808 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108549.P3212116291607209185

/-! ## A108549.P4587331946580286946

`record[gcd(A165998(n), A332808(n+1))]`
-/

namespace A108549.P4587331946580286946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165998 n) (A332808 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108549.P4587331946580286946

/-! ## A108549.P16945926844601845405

`A000027(eq[n+1, A332808(n+1)]+1)`
-/

namespace A108549.P16945926844601845405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A108549.P16945926844601845405

/-! ## A108549.P9018346752327574253

`eq[A243071(n+1), A332811(n+1)]+1`
-/

namespace A108549.P9018346752327574253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108549.P9018346752327574253

/-! ## A108549.P4831173496812747332

`A332808(eq[n+1, A332808(n+1)]+1)`
-/

namespace A108549.P4831173496812747332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A108549.P4831173496812747332

/-! ## A108549.P7474994464634791841

`eq[A000720(A006530(n+1)), A332899(n+1)]+1`
-/

namespace A108549.P7474994464634791841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108549.P7474994464634791841

/-!
# A108550: Number of ways of packing a 3 X (2n-1) rectangle with dominoes, leaving one space unoccupied.

The programs for A108550, there is no canonical definition to state claims against.
-/

/-! ## A108550.P13222328138138402829

`floor(2/acot(n))*A061579(A081016(n))`
-/

namespace A108550.P13222328138138402829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ * A061579 (A081016 n).toNat

end

end A108550.P13222328138138402829

/-!
# A108552: Integer values of (1*2*...*k)/(1+2+...+k) = k!/T(k) = A000142(k)/A000217(k), k>=1.

The programs for A108552, there is no canonical definition to state claims against.
-/

/-! ## A108552.P2010713045011069547

`A090586(lt[or(1, n), ∏{d}[n+1, #]])`
-/

namespace A108552.P2010713045011069547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090586 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A108552.P2010713045011069547

/-! ## A108552.P8167751367604495177

`A090586(lt[(n+1)/and(n+1, -(n+1)), ∏{d}[n+1, #]])`
-/

namespace A108552.P8167751367604495177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090586 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A108552.P8167751367604495177

/-! ## A108552.P17598887491988852382

`A126328(A060462(n+1))`
-/

namespace A108552.P17598887491988852382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126328 (A060462 (n + 1)).toNat

end

end A108552.P17598887491988852382

/-! ## A108552.P16970337526891115873

`A093422(record[A069268(n+1)])`
-/

namespace A108552.P16970337526891115873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093422 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108552.P16970337526891115873

/-! ## A108552.P14164980610751520917

`A090586(comp[A166260(n+3)])`
-/

namespace A108552.P14164980610751520917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090586 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A108552.P14164980610751520917

/-!
# A108554: Main diagonal of square array A108553, in which row n equals the crystal ball sequence for D_n lattice.

The programs for A108554, there is no canonical definition to state claims against.
-/

/-! ## A108554.P6926547679880221101

`A108553(∑[4*n])`
-/

namespace A108554.P6926547679880221101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108553 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108554.P6926547679880221101

/-! ## A108554.P722756140575340996

`or(1, A108553((n+1)*2*n))`
-/

namespace A108554.P722756140575340996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108553 ((n + 1) * (2 * n)))

end

end A108554.P722756140575340996

/-!
# A108555: Antidiagonal sums of square array A108553, in which row n equals the crystal ball sequence for D_n lattice.

The programs for A108555, there is no canonical definition to state claims against.
-/

/-! ## A108555.P2405417310148644081

`A084520(A151057(n))`
-/

namespace A108555.P2405417310148644081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084520 (A151057 n).toNat

end

end A108555.P2405417310148644081

/-! ## A108555.P17112301194573373711

`∑[A023990(A150881(n))]`
-/

namespace A108555.P17112301194573373711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023990 (A150881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108555.P17112301194573373711

/-! ## A108555.P8580368677677738297

`A108954(A026748(n))+n`
-/

namespace A108555.P8580368677677738297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A026748 n).toNat + (n : ℤ)

end

end A108555.P8580368677677738297

/-!
# A108556: Triangle, read by rows, where row n equals the inverse binomial transform of the crystal ball sequence for D_n lattice.

The programs for A108556, there is no canonical definition to state claims against.
-/

/-! ## A108556.P342684227293444726

`A234613(A229565(n+1)^A250662(n))`
-/

namespace A108556.P342684227293444726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (SequenceMachineLib.roundAway ((A229565 (n + 1) : ℚ) ^ (A250662 n : ℤ))).toNat

end

end A108556.P342684227293444726

/-! ## A108556.P5085845315480132347

`A234613(C(A229565(n+1), A250662(n)))`
-/

namespace A108556.P5085845315480132347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (Nat.choose (A229565 (n + 1)).toNat (A250662 n).toNat)

end

end A108556.P5085845315480132347

/-! ## A108556.P4813733851513806368

`A234613(A229565(n+1)^A165045(n+1))`
-/

namespace A108556.P4813733851513806368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (SequenceMachineLib.roundAway ((A229565 (n + 1) : ℚ) ^ (A165045 (n + 1) : ℤ))).toNat

end

end A108556.P4813733851513806368

/-! ## A108556.P3278288905125755847

`A234613(A229565(n+1)%A229566(n+1))`
-/

namespace A108556.P3278288905125755847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (Int.tmod (A229565 (n + 1)) (A229566 (n + 1))).toNat

end

end A108556.P3278288905125755847

/-!
# A108557: Row sums of triangle A108556, in which row n equals the inverse binomial transform of the crystal ball sequence for D_n lattice.

The programs for A108557, there is no canonical definition to state claims against.
-/

/-! ## A108557.P14730368813580135850

`A186890(A018006(n))`
-/

namespace A108557.P14730368813580135850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186890 (A018006 n).toNat

end

end A108557.P14730368813580135850

/-!
# A108558: Symmetric triangle, read by rows, where row n equals the (n+1)-th differences of the crystal ball sequence for D_n lattice, for n>=0.

The programs for A108558, there is no canonical definition to state claims against.
-/

/-! ## A108558.P15611108803894893484

`A145390(6^A014473(n))`
-/

namespace A108558.P15611108803894893484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145390 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A108558.P15611108803894893484

/-! ## A108558.P15195808076028090407

`A025581(A140145(A113245(n)))`
-/

namespace A108558.P15195808076028090407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A140145 (A113245 n).toNat).toNat

end

end A108558.P15195808076028090407

/-!
# A108559: Numbers k such that k + prime(k) is divisible by 11.

The programs for A108559, there is no canonical definition to state claims against.
-/

/-! ## A108559.P11237917647688776420

`eq[1, A010880(A090178(n+1))]`
-/

namespace A108559.P11237917647688776420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A090178 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108559.P11237917647688776420

/-!
# A108560: a(n) = (A108559(n)+prime(A108559(n)))/11.

The programs for A108560, there is no canonical definition to state claims against.
-/

/-! ## A108560.P13670603063355246184

`(A108559(n+1)+A000040(A108559(n+1)))/11`
-/

namespace A108560.P13670603063355246184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108559 (n + 1) + A000040 (A108559 (n + 1)).toNat : ℚ) / 11

end

end A108560.P13670603063355246184

/-!
# A108561: Triangle read by rows: T(n,0)=1, T(n,n)=(-1)^n, T(n+1,k)=T(n,k-1)+T(n,k) for 0 < k < n.

The programs for A108561, there is no canonical definition to state claims against.
-/

/-! ## A108561.P9118072651990053206

`2*A059259(n)-A007318(n)`
-/

namespace A108561.P9118072651990053206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059259 n - A007318 n

end

end A108561.P9118072651990053206

/-! ## A108561.P14685908453761050451

`A112465(∑[char[∑[n]]]²-(n+1))`
-/

namespace A108561.P14685908453761050451
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A108561.P14685908453761050451

/-! ## A108561.P17507683885573298774

`abs((-1)^n)*A112465(A061579(n))`
-/

namespace A108561.P17507683885573298774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-1) ^ n| * A112465 (A061579 n).toNat

end

end A108561.P17507683885573298774

/-! ## A108561.P2179896441728449554

`A112465(A061579(n))+A011734(A001511(n+1))`
-/

namespace A108561.P2179896441728449554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A061579 n).toNat + A011734 (A001511 (n + 1)).toNat

end

end A108561.P2179896441728449554

/-! ## A108561.P3998960590267774962

`A112465(A061579(n))+A002483(2*n)`
-/

namespace A108561.P3998960590267774962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A061579 n).toNat + A002483 (2 * n)

end

end A108561.P3998960590267774962

/-! ## A108561.P12467160331421570617

`A112465(A061579(n))^A014963(A158083(n))`
-/

namespace A108561.P12467160331421570617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112465 (A061579 n).toNat : ℚ) ^ (A014963 (A158083 n).toNat : ℤ)

end

end A108561.P12467160331421570617

/-! ## A108561.P1131450197109692124

`A112465(A061579(n))%A022370(n)`
-/

namespace A108561.P1131450197109692124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112465 (A061579 n).toNat) (A022370 n)

end

end A108561.P1131450197109692124

/-! ## A108561.P6097946856329437658

`A112555(n)*A122188(n+1)`
-/

namespace A108561.P6097946856329437658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112555 n * A122188 (n + 1)

end

end A108561.P6097946856329437658

/-!
# A108562: Primes of the form prime(n) + prime(n+1) - 2n - 1.

The programs for A108562, the canonical program `A108562.P17517280457270217684` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108562 has offset 1).

The definition of A108562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108562.P17548248712087631440

`p?[A108568(n+1)]`
-/

namespace A108562.P17548248712087631440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108562.P17548248712087631440

namespace A108562

/-- `p?[A108568(n+1)]` -/
def P17548248712087631440.Spec : Prop :=
  ∀ n, P17548248712087631440.a n = A108562 (n + 1)

end A108562

/-! ## A108562.P17517280457270217684

`p?[∑[A046930(n+1)]+1]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A108562

/-- `p?[∑[A046930(n+1)]+1]` -/
def P17517280457270217684.Spec : Prop :=
  ∀ n, P17517280457270217684.a n = A108562 (n + 1)

theorem P17517280457270217684.correct : P17517280457270217684.Spec := by
  intro n
  simp only [A108562, Nat.add_sub_cancel]

end A108562

/-! ## A108562.P12201571836422950879

`p?[∑[A159461(n+1)]+2]`
-/

namespace A108562.P12201571836422950879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108562.P12201571836422950879

namespace A108562

/-- `p?[∑[A159461(n+1)]+2]` -/
def P12201571836422950879.Spec : Prop :=
  ∀ n, P12201571836422950879.a n = A108562 (n + 1)

end A108562

/-! ## A108562.P6446226171870925706

`p?[abs(3-(A001043(n+1)-2*n))]`
-/

namespace A108562.P6446226171870925706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (A001043 (n + 1) - (2 * n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108562.P6446226171870925706

namespace A108562

/-- `p?[abs(3-(A001043(n+1)-2*n))]` -/
def P6446226171870925706.Spec : Prop :=
  ∀ n, P6446226171870925706.a n = A108562 (n + 1)

end A108562

/-! ## A108562.P11649330382561119552

`p?[∑[A046930(A028310(n))]]`
-/

namespace A108562.P11649330382561119552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108562.P11649330382561119552

namespace A108562

/-- `p?[∑[A046930(A028310(n))]]` -/
def P11649330382561119552.Spec : Prop :=
  ∀ n, P11649330382561119552.a n = A108562 (n + 1)

end A108562

/-! ## A108562.P3624091244283516317

`p?[A011974(n+1)-A005408(n)]`
-/

namespace A108562.P3624091244283516317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108562.P3624091244283516317

namespace A108562

/-- `p?[A011974(n+1)-A005408(n)]` -/
def P3624091244283516317.Spec : Prop :=
  ∀ n, P3624091244283516317.a n = A108562 (n + 1)

end A108562

/-! ## A108562.P2490499735759132835

`p?[A239636(n+1)+A001223(n+1)]`
-/

namespace A108562.P2490499735759132835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239636 (n + 1) + A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108562.P2490499735759132835

namespace A108562

/-- `p?[A239636(n+1)+A001223(n+1)]` -/
def P2490499735759132835.Spec : Prop :=
  ∀ n, P2490499735759132835.a n = A108562 (n + 1)

end A108562

/-! ## A108562.P8900876692636161451

`p?[A131733(n+2)+A008578(n+2)]`
-/

namespace A108562.P8900876692636161451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 2) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108562.P8900876692636161451

namespace A108562

/-- `p?[A131733(n+2)+A008578(n+2)]` -/
def P8900876692636161451.Spec : Prop :=
  ∀ n, P8900876692636161451.a n = A108562 (n + 1)

end A108562

/-! ## A108562.P3655918760628849068

`∩[A108568(n+1), A380468(n+1)]`
-/

namespace A108562.P3655918760628849068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P3655918760628849068

namespace A108562

/-- `∩[A108568(n+1), A380468(n+1)]` -/
def P3655918760628849068.Spec : Prop :=
  ∀ n, (P3655918760628849068.a n : ℤ) = A108562 (n + 1)

end A108562

/-! ## A108562.P6299174137860352784

`∩[A000040(n+1), A108568(n+1)]`
-/

namespace A108562.P6299174137860352784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P6299174137860352784

namespace A108562

/-- `∩[A000040(n+1), A108568(n+1)]` -/
def P6299174137860352784.Spec : Prop :=
  ∀ n, (P6299174137860352784.a n : ℤ) = A108562 (n + 1)

end A108562

/-! ## A108562.P12785579691827401314

`∩[A008578(n+1), A108568(n+1)]`
-/

namespace A108562.P12785579691827401314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P12785579691827401314

namespace A108562

/-- `∩[A008578(n+1), A108568(n+1)]` -/
def P12785579691827401314.Spec : Prop :=
  ∀ n, (P12785579691827401314.a n : ℤ) = A108562 (n + 1)

end A108562

/-! ## A108562.P16246688364671447844

`∩[A046022(n+1), A108568(n+1)]`
-/

namespace A108562.P16246688364671447844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P16246688364671447844

namespace A108562

/-- `∩[A046022(n+1), A108568(n+1)]` -/
def P16246688364671447844.Spec : Prop :=
  ∀ n, (P16246688364671447844.a n : ℤ) = A108562 (n + 1)

end A108562

/-! ## A108562.P17240820734591554829

`∩[A051948(n+1), A108568(n+1)]`
-/

namespace A108562.P17240820734591554829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P17240820734591554829

namespace A108562

/-- `∩[A051948(n+1), A108568(n+1)]` -/
def P17240820734591554829.Spec : Prop :=
  ∀ n, (P17240820734591554829.a n : ℤ) = A108562 (n + 1)

end A108562

/-! ## A108562.P5322584998252143845

`∩[A093515(n+1), A108568(n+1)]`
-/

namespace A108562.P5322584998252143845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P5322584998252143845

namespace A108562

/-- `∩[A093515(n+1), A108568(n+1)]` -/
def P5322584998252143845.Spec : Prop :=
  ∀ n, (P5322584998252143845.a n : ℤ) = A108562 (n + 1)

end A108562

/-! ## A108562.P10545868521812293619

`∩[A106118(n+1), A108568(n+1)]`
-/

namespace A108562.P10545868521812293619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P10545868521812293619

namespace A108562

/-- `∩[A106118(n+1), A108568(n+1)]` -/
def P10545868521812293619.Spec : Prop :=
  ∀ n, (P10545868521812293619.a n : ℤ) = A108562 (n + 1)

end A108562

/-! ## A108562.P1611975249462287132

`∩[A108568(n+1), A116974(n+1)]`
-/

namespace A108562.P1611975249462287132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P1611975249462287132

namespace A108562

/-- `∩[A108568(n+1), A116974(n+1)]` -/
def P1611975249462287132.Spec : Prop :=
  ∀ n, (P1611975249462287132.a n : ℤ) = A108562 (n + 1)

end A108562

/-! ## A108562.P6818471941908022501

`∩[A108568(n+1), A158611(n+1)]`
-/

namespace A108562.P6818471941908022501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P6818471941908022501

namespace A108562

/-- `∩[A108568(n+1), A158611(n+1)]` -/
def P6818471941908022501.Spec : Prop :=
  ∀ n, (P6818471941908022501.a n : ℤ) = A108562 (n + 1)

end A108562

/-! ## A108562.P9487167891509965220

`∩[A053813(n+1), A108568(n+1)]`
-/

namespace A108562.P9487167891509965220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P9487167891509965220

namespace A108562

/-- `∩[A053813(n+1), A108568(n+1)]` -/
def P9487167891509965220.Spec : Prop :=
  ∀ n, (P9487167891509965220.a n : ℤ) = A108562 (n + 1)

end A108562

/-! ## A108562.P14704591972489497912

`∩[A062972(n+1), A108568(n+1)]`
-/

namespace A108562.P14704591972489497912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P14704591972489497912

namespace A108562

/-- `∩[A062972(n+1), A108568(n+1)]` -/
def P14704591972489497912.Spec : Prop :=
  ∀ n, (P14704591972489497912.a n : ℤ) = A108562 (n + 1)

end A108562

/-! ## A108562.P6653070053944867359

`∩[A283599(n+1), A108568(n+1)]`
-/

namespace A108562.P6653070053944867359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108562.P6653070053944867359

namespace A108562

/-- `∩[A283599(n+1), A108568(n+1)]` -/
def P6653070053944867359.Spec : Prop :=
  ∀ n, (P6653070053944867359.a n : ℤ) = A108562 (n + 1)

end A108562

/-!
# A108563: Number of representations of n as sum of twice a square plus thrice a square.

The programs for A108563, there is no canonical definition to state claims against.
-/

/-! ## A108563.P1812101874919069252

`A061347(n+1)*A263577(n)`
-/

namespace A108563.P1812101874919069252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A263577 n

end

end A108563.P1812101874919069252

/-! ## A108563.P4707586834636350699

`2*A000377(n)-A046113(n)`
-/

namespace A108563.P4707586834636350699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000377 n - A046113 n

end

end A108563.P4707586834636350699

/-! ## A108563.P12044804653357381813

`A046113(2*n)`
-/

namespace A108563.P12044804653357381813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (2 * n)

end

end A108563.P12044804653357381813

/-! ## A108563.P18070169434232898594

`A046113(n+n)%A006450(n+1)`
-/

namespace A108563.P18070169434232898594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046113 (n + n)) (A006450 (n + 1))

end

end A108563.P18070169434232898594

/-! ## A108563.P14595699886869772229

`A046113(A005843(n))%A000408(n+1)`
-/

namespace A108563.P14595699886869772229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046113 (A005843 n).toNat) (A000408 (n + 1))

end

end A108563.P14595699886869772229

/-! ## A108563.P3513241157495188086

`abs(A260309(2*n))`
-/

namespace A108563.P3513241157495188086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260309 (2 * n)|

end

end A108563.P3513241157495188086

/-! ## A108563.P9232805690774531118

`A057079(n)*A260309(2*n)`
-/

namespace A108563.P9232805690774531118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A260309 (2 * n)

end

end A108563.P9232805690774531118

/-! ## A108563.P17944797035372923247

`gcd(A000038(n), A260309(2*n))`
-/

namespace A108563.P17944797035372923247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A260309 (2 * n))

end

end A108563.P17944797035372923247

/-! ## A108563.P16945024585209383522

`lcm(A000034(n), A260309(2*n))`
-/

namespace A108563.P16945024585209383522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A260309 (2 * n))

end

end A108563.P16945024585209383522

/-! ## A108563.P2917541837878671858

`∑[A100051(n)]*A260309(2*n)`
-/

namespace A108563.P2917541837878671858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A260309 (2 * n)

end

end A108563.P2917541837878671858

/-! ## A108563.P718983315115032303

`A057077(2*n)*A260309(2*n)`
-/

namespace A108563.P718983315115032303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A260309 (2 * n)

end

end A108563.P718983315115032303

/-! ## A108563.P10028011850354032704

`2*A229723(2*n)/A057079(n+1)`
-/

namespace A108563.P10028011850354032704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A229723 (2 * n) : ℚ) / (A057079 (n + 1) : ℚ))

end

end A108563.P10028011850354032704

/-! ## A108563.P15127060342922711163

`2*A229723(2*n)/A132954(n+1)`
-/

namespace A108563.P15127060342922711163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A229723 (2 * n) : ℚ) / (A132954 (n + 1) : ℚ))

end

end A108563.P15127060342922711163

/-! ## A108563.P2773896592394135154

`(A102560(2*n+1)+A102560(2*n))*A260309(2*n)`
-/

namespace A108563.P2773896592394135154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102560 (2 * n + 1) + A102560 (2 * n)) * A260309 (2 * n)

end

end A108563.P2773896592394135154

/-! ## A108563.P15591742760988531853

`abs(A229723(3*n))`
-/

namespace A108563.P15591742760988531853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A229723 (3 * n)|

end

end A108563.P15591742760988531853

/-! ## A108563.P6867107689769214894

`∑{d}[A229723(3*n), A000010(#)]`
-/

namespace A108563.P6867107689769214894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229723 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A108563.P6867107689769214894

/-! ## A108563.P8405794167726342140

`lcm(A000122(n)!, A229723(3*n))`
-/

namespace A108563.P8405794167726342140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000122 n).toNat : ℤ) (A229723 (3 * n))

end

end A108563.P8405794167726342140

/-! ## A108563.P13417162949597116969

`gcd(A260309(2*n)², A260309(3*n))`
-/

namespace A108563.P13417162949597116969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260309 (2 * n) ^ 2) (A260309 (3 * n))

end

end A108563.P13417162949597116969

/-! ## A108563.P15974276611117873591

`2*A000377(n)-A260309(4*n)`
-/

namespace A108563.P15974276611117873591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000377 n - A260309 (4 * n)

end

end A108563.P15974276611117873591

/-! ## A108563.P7195008406867665427

`lcm(A260309(4*n)-2, A260309(3*n))`
-/

namespace A108563.P7195008406867665427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260309 (4 * n) - 2) (A260309 (3 * n))

end

end A108563.P7195008406867665427

/-!
# A108564: a(0) = 0, a(1) = 1, a(2) = 1, a(3) = 2, a(4) = 4, for n>3: a(n+1) = SORT[a(n) + a(n-1) + a(n-2) + a(n-3)], where SORT places digits in ascending order and deletes 0's.

The programs for A108564, there is no canonical definition to state claims against.
-/

/-! ## A108564.P14901789797670976410

`ceil(A118053(3*n+1)/8)`
-/

namespace A108564.P14901789797670976410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118053 (3 * n + 1) : ℚ) / 8⌉

end

end A108564.P14901789797670976410

/-! ## A108564.P13042162769014828178

`floor(sqrt(A120060(∑[n+2]+4)))`
-/

namespace A108564.P13042162769014828178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A120060 (∑ j ∈ Finset.range (n + 1), f1 j + 4))

end

end A108564.P13042162769014828178

/-! ## A108564.P12250784183922156311

`A135663(∑[(4-6/(n+1))*a(n-1)])` with `a(0)=5, a(1)=2`
-/

namespace A108564.P12250784183922156311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A108564.P12250784183922156311

/-! ## A108564.P3830582163831821073

`A135660(A006483(n))`
-/

namespace A108564.P3830582163831821073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A006483 n).toNat

end

end A108564.P3830582163831821073

/-! ## A108564.P12930848368163196266

`A135662(A149839(n))`
-/

namespace A108564.P12930848368163196266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A149839 n).toNat

end

end A108564.P12930848368163196266

/-!
# A108565: a(0) = 0, a(1) = a(2) = 1, a(3) = 2, a(4) = 4, for n>3: a(n+1) = SORT[ a(n) + a(n-1) + a(n-2) + a(n-3) + a(n-4)], where SORT places digits in ascending order and deletes 0's.

The programs for A108565, there is no canonical definition to state claims against.
-/

/-! ## A108565.P3929993630020438455

`A337561(A287648(n+1))%A000204(n+1)`
-/

namespace A108565.P3929993630020438455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337561 (A287648 (n + 1)).toNat) (A000204 (n + 1))

end

end A108565.P3929993630020438455

/-!
# A108566: a(0) = 0, a(1) = a(2) = 1, a(3) = 2, a(4) = 4, a(5) = 8, for n>4: a(n+1) = SORT[ a(n) + a(n-1) + a(n-2) + a(n-3) + a(n-4) + a(n-5)], where SORT places digits in ascending order and deletes 0's.

The programs for A108566, there is no canonical definition to state claims against.
-/

/-! ## A108566.P9814318593874225673

`A107628(or(6, A001047(n)))`
-/

namespace A108566.P9814318593874225673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (Int.lor 6 (A001047 n)).toNat

end

end A108566.P9814318593874225673

/-! ## A108566.P16519437513625703899

`A338796(n+1)+A126696(n²)`
-/

namespace A108566.P16519437513625703899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338796 (n + 1) + A126696 (n ^ 2)

end

end A108566.P16519437513625703899

/-! ## A108566.P6401525045628596249

`ceil(A094387(A094862(n+1))/ϕ)-1`
-/

namespace A108566.P6401525045628596249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094387 (A094862 (n + 1)).toNat : ℝ) / Real.goldenRatio⌉ - 1

end

end A108566.P6401525045628596249

/-! ## A108566.P17855318354817986882

`A167905(A224704(n))%((n+1)*Δ[n^3])`
-/

namespace A108566.P17855318354817986882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167905 (A224704 n).toNat) ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A108566.P17855318354817986882

/-! ## A108566.P16746998343357907347

`A167905(A224704(n))-A055641(n)`
-/

namespace A108566.P16746998343357907347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167905 (A224704 n).toNat - A055641 n

end

end A108566.P16746998343357907347

/-!
# A108567: a(0) = 0, a(1) = a(2) = 1, a(3) = 2, a(4) = 4, a(5) = 8, a(6) = 16, for n>5: a(n+1) = SORT[ a(n) + a(n-1) + a(n-2) + a(n-3) + a(n-4) + a(n-5) + a(n-6)], where SORT places digits in ascending order and deletes 0's.

The programs for A108567, there is no canonical definition to state claims against.
-/

/-! ## A108567.P1105014439513100664

`round(2^(n-2))-A185274(2^ceil(n/2))`
-/

namespace A108567.P1105014439513100664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) - A185274 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A108567.P1105014439513100664

/-! ## A108567.P7499397649559549906

`round(2^(n-2))-A187499(A187499(2^ceil(n/2)))`
-/

namespace A108567.P7499397649559549906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) - A187499 (A187499 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat).toNat

end

end A108567.P7499397649559549906

/-! ## A108567.P9353332463428943641

`A274936(n)+A004197(A157015(n))`
-/

namespace A108567.P9353332463428943641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274936 n + A004197 (A157015 n).toNat

end

end A108567.P9353332463428943641

/-! ## A108567.P18157324798764652017

`A166444(n)-A121389(A111429(n))`
-/

namespace A108567.P18157324798764652017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n - A121389 (A111429 n).toNat

end

end A108567.P18157324798764652017

/-! ## A108567.P12269216504094268785

`A166444(n)-A184964(A131572(n+1))`
-/

namespace A108567.P12269216504094268785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n - A184964 (A131572 (n + 1)).toNat

end

end A108567.P12269216504094268785

/-!
# A108568: a(n) = prime(n) + prime(n+1) - 2n - 1.

The programs for A108568, the canonical program `A108568.P6444954097101715420` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108568 has offset 1).

The definition of A108568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108568.P6444954097101715420

`∑[A046930(n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A108568

/-- `∑[A046930(n+1)]+1` -/
def P6444954097101715420.Spec : Prop :=
  ∀ n, P6444954097101715420.a n = A108568 (n + 1)

theorem P6444954097101715420.correct : P6444954097101715420.Spec := by
  intro n
  simp only [A108568, Nat.add_sub_cancel]

end A108568

/-! ## A108568.P18339778527814314576

`∑[A159461(n+1)]+2`
-/

namespace A108568.P18339778527814314576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A108568.P18339778527814314576

namespace A108568

/-- `∑[A159461(n+1)]+2` -/
def P18339778527814314576.Spec : Prop :=
  ∀ n, P18339778527814314576.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P8576550459521960960

`∑[A075527(n)-2]+2`
-/

namespace A108568.P8576550459521960960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A108568.P8576550459521960960

namespace A108568

/-- `∑[A075527(n)-2]+2` -/
def P8576550459521960960.Spec : Prop :=
  ∀ n, P8576550459521960960.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P5189342061600204610

`Δ[A061802(n)-(n+1)²]`
-/

namespace A108568.P5189342061600204610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108568.P5189342061600204610

namespace A108568

/-- `Δ[A061802(n)-(n+1)²]` -/
def P5189342061600204610.Spec : Prop :=
  ∀ n, P5189342061600204610.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P12195000037457478011

`A001043(n+1)-(2*n+3)`
-/

namespace A108568.P12195000037457478011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - (2 * n + 3 : ℤ)

end

end A108568.P12195000037457478011

namespace A108568

/-- `A001043(n+1)-(2*n+3)` -/
def P12195000037457478011.Spec : Prop :=
  ∀ n, P12195000037457478011.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P17513377140093870523

`A239636(n+1)+A001223(n+1)`
-/

namespace A108568.P17513377140093870523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239636 (n + 1) + A001223 (n + 1)

end

end A108568.P17513377140093870523

namespace A108568

/-- `A239636(n+1)+A001223(n+1)` -/
def P17513377140093870523.Spec : Prop :=
  ∀ n, P17513377140093870523.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P2285973186403549374

`A173072(n+1)+A154115(n+1)`
-/

namespace A108568.P2285973186403549374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) + A154115 (n + 1)

end

end A108568.P2285973186403549374

namespace A108568

/-- `A173072(n+1)+A154115(n+1)` -/
def P2285973186403549374.Spec : Prop :=
  ∀ n, P2285973186403549374.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P7221793937717386034

`A134591(n+1)-A147965(n+1)`
-/

namespace A108568.P7221793937717386034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - A147965 (n + 1)

end

end A108568.P7221793937717386034

namespace A108568

/-- `A134591(n+1)-A147965(n+1)` -/
def P7221793937717386034.Spec : Prop :=
  ∀ n, P7221793937717386034.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P2950568676130234532

`A011974(n+2)-A005408(n+1)`
-/

namespace A108568.P2950568676130234532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) - A005408 (n + 1)

end

end A108568.P2950568676130234532

namespace A108568

/-- `A011974(n+2)-A005408(n+1)` -/
def P2950568676130234532.Spec : Prop :=
  ∀ n, P2950568676130234532.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P5784646086192579780

`A065091(n+1)+A131733(n+1)-2`
-/

namespace A108568.P5784646086192579780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (A131733 (n + 1) - 2)

end

end A108568.P5784646086192579780

namespace A108568

/-- `A065091(n+1)+A131733(n+1)-2` -/
def P5784646086192579780.Spec : Prop :=
  ∀ n, P5784646086192579780.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P8353964679954873607

`A000040(n+1)+2*A008507(n+1)`
-/

namespace A108568.P8353964679954873607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A008507 (n + 1)

end

end A108568.P8353964679954873607

namespace A108568

/-- `A000040(n+1)+2*A008507(n+1)` -/
def P8353964679954873607.Spec : Prop :=
  ∀ n, P8353964679954873607.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P4995379545552767152

`A014689(n+1)+A014689(n+2)`
-/

namespace A108568.P4995379545552767152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + A014689 (n + 2)

end

end A108568.P4995379545552767152

namespace A108568

/-- `A014689(n+1)+A014689(n+2)` -/
def P4995379545552767152.Spec : Prop :=
  ∀ n, P4995379545552767152.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P16095383130969853897

`A065890(n+1)+A014692(n+2)`
-/

namespace A108568.P16095383130969853897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + A014692 (n + 2)

end

end A108568.P16095383130969853897

namespace A108568

/-- `A065890(n+1)+A014692(n+2)` -/
def P16095383130969853897.Spec : Prop :=
  ∀ n, P16095383130969853897.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P273235093495671772

`A131733(n+2)+A000040(n+1)`
-/

namespace A108568.P273235093495671772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 2) + A000040 (n + 1)

end

end A108568.P273235093495671772

namespace A108568

/-- `A131733(n+2)+A000040(n+1)` -/
def P273235093495671772.Spec : Prop :=
  ∀ n, P273235093495671772.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P18375728384179562844

`A004232(n+1)-A073497(n+2)`
-/

namespace A108568.P18375728384179562844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004232 (n + 1) - A073497 (n + 2)

end

end A108568.P18375728384179562844

namespace A108568

/-- `A004232(n+1)-A073497(n+2)` -/
def P18375728384179562844.Spec : Prop :=
  ∀ n, P18375728384179562844.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P3989169188760641724

`A131733(n+2)+A008578(n+2)`
-/

namespace A108568.P3989169188760641724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 2) + A008578 (n + 2)

end

end A108568.P3989169188760641724

namespace A108568

/-- `A131733(n+2)+A008578(n+2)` -/
def P3989169188760641724.Spec : Prop :=
  ∀ n, P3989169188760641724.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P366214869812763179

`A162177(n+2)+A014692(n+2)`
-/

namespace A108568.P366214869812763179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 2) + A014692 (n + 2)

end

end A108568.P366214869812763179

namespace A108568

/-- `A162177(n+2)+A014692(n+2)` -/
def P366214869812763179.Spec : Prop :=
  ∀ n, P366214869812763179.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P11151727101889266643

`A134591(n+2)-A123128(n+1)`
-/

namespace A108568.P11151727101889266643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 2) - A123128 (n + 1)

end

end A108568.P11151727101889266643

namespace A108568

/-- `A134591(n+2)-A123128(n+1)` -/
def P11151727101889266643.Spec : Prop :=
  ∀ n, P11151727101889266643.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P14299002342754005997

`(n+1)²+A108754(n+2)-A007504(n)`
-/

namespace A108568.P14299002342754005997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A108754 (n + 2) - A007504 n)

end

end A108568.P14299002342754005997

namespace A108568

/-- `(n+1)²+A108754(n+2)-A007504(n)` -/
def P14299002342754005997.Spec : Prop :=
  ∀ n, P14299002342754005997.a n = A108568 (n + 1)

end A108568

/-! ## A108568.P3912283342456531832

`A007504(n+1)+A131733(n+2)-A007504(n)`
-/

namespace A108568.P3912283342456531832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A131733 (n + 2) - A007504 n)

end

end A108568.P3912283342456531832

namespace A108568

/-- `A007504(n+1)+A131733(n+2)-A007504(n)` -/
def P3912283342456531832.Spec : Prop :=
  ∀ n, P3912283342456531832.a n = A108568 (n + 1)

end A108568

/-!
# A108569: Numbers n such that phi(n) = phi(n + phi(n)).

The programs for A108569, there is no canonical definition to state claims against.
-/

/-! ## A108569.P14189060319220980392

`A051953(A051487(n+1)^A208673(n))`
-/

namespace A108569.P14189060319220980392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (SequenceMachineLib.roundAway ((A051487 (n + 1) : ℚ) ^ (A208673 n : ℤ))).toNat

end

end A108569.P14189060319220980392

/-! ## A108569.P4331802538323146096

`A051953(C(A051487(n+1), A208673(n)))`
-/

namespace A108569.P4331802538323146096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (Nat.choose (A051487 (n + 1)).toNat (A208673 n).toNat)

end

end A108569.P4331802538323146096

/-! ## A108569.P6154344108298808930

`A051953(A051487(n+1)^A147433(n+1))`
-/

namespace A108569.P6154344108298808930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (SequenceMachineLib.roundAway ((A051487 (n + 1) : ℚ) ^ (A147433 (n + 1) : ℤ))).toNat

end

end A108569.P6154344108298808930

/-! ## A108569.P10088321640682536825

`A051953(C(A051487(n+1), A147433(n+1)))`
-/

namespace A108569.P10088321640682536825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (Nat.choose (A051487 (n + 1)).toNat (A147433 (n + 1)).toNat)

end

end A108569.P10088321640682536825

/-! ## A108569.P18084996287816064639

`A051953(C(A051487(n+1), A074465(n+2)))`
-/

namespace A108569.P18084996287816064639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (Nat.choose (A051487 (n + 1)).toNat (A074465 (n + 2)).toNat)

end

end A108569.P18084996287816064639

/-!
# A108570: Squares of lesser of twin primes.

The programs for A108570, the canonical program `A108570.P885746933404080471` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108570 has offset 1).

The definition of A108570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108570.P885746933404080471

`p?[p?[xor(1, n)]-2]²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108570

/-- `p?[p?[xor(1, n)]-2]²` -/
def P885746933404080471.Spec : Prop :=
  ∀ n, P885746933404080471.a n = A108570 (n + 1)

theorem P885746933404080471.correct : P885746933404080471.Spec := by
  intro n
  simp only [A108570, Nat.add_sub_cancel]

end A108570

/-! ## A108570.P2776232549336360279

`p?[p?[2*n+1]-2]²`
-/

namespace A108570.P2776232549336360279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P2776232549336360279

namespace A108570

/-- `p?[p?[2*n+1]-2]²` -/
def P2776232549336360279.Spec : Prop :=
  ∀ n, P2776232549336360279.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P3463283717949786871

`A001359(n+1)²`
-/

namespace A108570.P3463283717949786871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) ^ 2

end

end A108570.P3463283717949786871

namespace A108570

/-- `A001359(n+1)²` -/
def P3463283717949786871.Spec : Prop :=
  ∀ n, P3463283717949786871.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P16289622899554005743

`A124588(n+2)²`
-/

namespace A108570.P16289622899554005743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 2) ^ 2

end

end A108570.P16289622899554005743

namespace A108570

/-- `A124588(n+2)²` -/
def P16289622899554005743.Spec : Prop :=
  ∀ n, P16289622899554005743.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P13136066774949939215

`A181747(n+2)²`
-/

namespace A108570.P13136066774949939215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 2) ^ 2

end

end A108570.P13136066774949939215

namespace A108570

/-- `A181747(n+2)²` -/
def P13136066774949939215.Spec : Prop :=
  ∀ n, P13136066774949939215.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P1989273906356782707

`A077800(Δ[n²])²`
-/

namespace A108570.P1989273906356782707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A108570.P1989273906356782707

namespace A108570

/-- `A077800(Δ[n²])²` -/
def P1989273906356782707.Spec : Prop :=
  ∀ n, P1989273906356782707.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P4056114843387189658

`A137367(n+1)+2`
-/

namespace A108570.P4056114843387189658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137367 (n + 1) + 2

end

end A108570.P4056114843387189658

namespace A108570

/-- `A137367(n+1)+2` -/
def P4056114843387189658.Spec : Prop :=
  ∀ n, P4056114843387189658.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P3496854475531758698

`record[A391050(n+1)²]`
-/

namespace A108570.P3496854475531758698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391050 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108570.P3496854475531758698

namespace A108570

/-- `record[A391050(n+1)²]` -/
def P3496854475531758698.Spec : Prop :=
  ∀ n, P3496854475531758698.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P5002420233444676056

`p?[A001838(n+1)]²`
-/

namespace A108570.P5002420233444676056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P5002420233444676056

namespace A108570

/-- `p?[A001838(n+1)]²` -/
def P5002420233444676056.Spec : Prop :=
  ∀ n, P5002420233444676056.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P1580888360769445722

`p?[A040976(n+1)]²`
-/

namespace A108570.P1580888360769445722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P1580888360769445722

namespace A108570

/-- `p?[A040976(n+1)]²` -/
def P1580888360769445722.Spec : Prop :=
  ∀ n, P1580888360769445722.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P6267533958681655649

`p?[A054799(n+1)]²`
-/

namespace A108570.P6267533958681655649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P6267533958681655649

namespace A108570

/-- `p?[A054799(n+1)]²` -/
def P6267533958681655649.Spec : Prop :=
  ∀ n, P6267533958681655649.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P3340847650599814391

`p?[A063693(n+1)]²`
-/

namespace A108570.P3340847650599814391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P3340847650599814391

namespace A108570

/-- `p?[A063693(n+1)]²` -/
def P3340847650599814391.Spec : Prop :=
  ∀ n, P3340847650599814391.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P15557480184318403595

`p?[A063700(n+1)]²`
-/

namespace A108570.P15557480184318403595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P15557480184318403595

namespace A108570

/-- `p?[A063700(n+1)]²` -/
def P15557480184318403595.Spec : Prop :=
  ∀ n, P15557480184318403595.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P11360404041589045424

`p?[A065873(n+1)]²`
-/

namespace A108570.P11360404041589045424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P11360404041589045424

namespace A108570

/-- `p?[A065873(n+1)]²` -/
def P11360404041589045424.Spec : Prop :=
  ∀ n, P11360404041589045424.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P12423595370454857550

`p?[A066147(n+1)]²`
-/

namespace A108570.P12423595370454857550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P12423595370454857550

namespace A108570

/-- `p?[A066147(n+1)]²` -/
def P12423595370454857550.Spec : Prop :=
  ∀ n, P12423595370454857550.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P3868242007505113981

`p?[A066692(n+1)]²`
-/

namespace A108570.P3868242007505113981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P3868242007505113981

namespace A108570

/-- `p?[A066692(n+1)]²` -/
def P3868242007505113981.Spec : Prop :=
  ∀ n, P3868242007505113981.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P2112512565700901315

`p?[A067532(n+1)]²`
-/

namespace A108570.P2112512565700901315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P2112512565700901315

namespace A108570

/-- `p?[A067532(n+1)]²` -/
def P2112512565700901315.Spec : Prop :=
  ∀ n, P2112512565700901315.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P17401821194919153640

`p?[A069233(n+1)]²`
-/

namespace A108570.P17401821194919153640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P17401821194919153640

namespace A108570

/-- `p?[A069233(n+1)]²` -/
def P17401821194919153640.Spec : Prop :=
  ∀ n, P17401821194919153640.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P10397934242425035076

`p?[A072282(n+1)]²`
-/

namespace A108570.P10397934242425035076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P10397934242425035076

namespace A108570

/-- `p?[A072282(n+1)]²` -/
def P10397934242425035076.Spec : Prop :=
  ∀ n, P10397934242425035076.a n = A108570 (n + 1)

end A108570

/-! ## A108570.P6368149909575057834

`p?[A280590(n+1)]²`
-/

namespace A108570.P6368149909575057834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108570.P6368149909575057834

namespace A108570

/-- `p?[A280590(n+1)]²` -/
def P6368149909575057834.Spec : Prop :=
  ∀ n, P6368149909575057834.a n = A108570 (n + 1)

end A108570

/-!
# A108571: Any digit d in the sequence says: "I am part of an integer in which you'll find d digits d".

The programs for A108571, there is no canonical definition to state claims against.
-/

/-! ## A108571.P9525389378249099104

`∪[A247700(n+1)%A356504(n+1), A105776(n+5)]`
-/

namespace A108571.P9525389378249099104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247700 (n + 1)) (A356504 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105776 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108571.P9525389378249099104

/-! ## A108571.P16964190443465617317

`eq[n, A139337(n)]`
-/

namespace A108571.P16964190443465617317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108571.P16964190443465617317

/-! ## A108571.P15901517109528552665

`A139337(∪[A247700(n+1), A247701(n+1)])`
-/

namespace A108571.P15901517109528552665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247701 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A108571.P15901517109528552665

/-! ## A108571.P11058324690689123290

`∪[A139337(A247700(n+1)), A105776(n+5)]`
-/

namespace A108571.P11058324690689123290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A247700 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105776 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108571.P11058324690689123290

/-! ## A108571.P6764875599327726226

`∪[A105776(A085908(n+1)), A247700(n+1)]`
-/

namespace A108571.P6764875599327726226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105776 (A085908 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108571.P6764875599327726226

/-!
# A108572: Number of partitions of n which, as multisets, are nontrivial repetitions of a multiset.

The programs for A108572, there is no canonical definition to state claims against.
-/

/-! ## A108572.P2898053668182663577

`∑[Δ[A018783(n)]-char[1]]`
-/

namespace A108572.P2898053668182663577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108572.P2898053668182663577

/-! ## A108572.P14025046415658478614

`A018783(ceil(acot(n)+n))-1`
-/

namespace A108572.P14025046415658478614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat - 1

end

end A108572.P14025046415658478614

/-! ## A108572.P3218590185979215529

`A018783(abs(1-n)+2)-1`
-/

namespace A108572.P3218590185979215529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (|1 - (n : ℤ)| + 2).toNat - 1

end

end A108572.P3218590185979215529

/-! ## A108572.P7610528049257398456

`A018783(n+1)+floor(acot(n))-1`
-/

namespace A108572.P7610528049257398456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1

end

end A108572.P7610528049257398456

/-! ## A108572.P9257219561019314666

`A057428(n)+A018783(n+1)`
-/

namespace A108572.P9257219561019314666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A018783 (n + 1)

end

end A108572.P9257219561019314666

/-! ## A108572.P14577238882544337384

`A000045(C(2, n+2))+A018783(n+1)-1`
-/

namespace A108572.P14577238882544337384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (A018783 (n + 1) - 1)

end

end A108572.P14577238882544337384

/-! ## A108572.P17867905756568774227

`(A018783(n+1)-1)*A001221(2-C(n, n²))`
-/

namespace A108572.P17867905756568774227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018783 (n + 1) - 1) * A001221 (2 - Nat.choose n (n ^ 2))

end

end A108572.P17867905756568774227

/-! ## A108572.P215420317132692477

`A018783(n+1)+1-A020639(Δ[A000040(n+1)])`
-/

namespace A108572.P215420317132692477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) + 1 - A020639 (f1 (n + 1) - f1 n).toNat

end

end A108572.P215420317132692477

/-! ## A108572.P8988477448850892611

`A083751(n+1)-A302698(n+1)`
-/

namespace A108572.P8988477448850892611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 1) - A302698 (n + 1)

end

end A108572.P8988477448850892611

/-! ## A108572.P239762747237627015

`∑[Δ[A018783(n)]%A000041(n)]`
-/

namespace A108572.P239762747237627015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108572.P239762747237627015

/-! ## A108572.P1698719451624223205

`A000041(n+1)-A300486(n+1)`
-/

namespace A108572.P1698719451624223205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A300486 (n + 1)

end

end A108572.P1698719451624223205

/-!
# A108574: Range of A000790 (primary pretenders).

The programs for A108574, there is no canonical definition to state claims against.
-/

/-! ## A108574.P8538424717759794806

`∪[A001248(n+1), A162730(n+1)]`
-/

namespace A108574.P8538424717759794806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108574.P8538424717759794806

/-! ## A108574.P17433157531775816071

`∪[A030146(n+1), A162730(n+1)]`
-/

namespace A108574.P17433157531775816071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108574.P17433157531775816071

/-! ## A108574.P16964954804677331733

`∪[A052043(n+1), A162730(n+1)]`
-/

namespace A108574.P16964954804677331733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108574.P16964954804677331733

/-! ## A108574.P12926808455266781134

`∪[A068999(n+1), A162730(n+1)]`
-/

namespace A108574.P12926808455266781134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108574.P12926808455266781134

/-! ## A108574.P18387636920333731134

`∪[A077438(n+1), A162730(n+1)]`
-/

namespace A108574.P18387636920333731134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108574.P18387636920333731134

/-! ## A108574.P12087499056946274209

`∪[A115652(n+1), A162730(n+1)]`
-/

namespace A108574.P12087499056946274209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108574.P12087499056946274209

/-! ## A108574.P8728615533642835421

`∪[A162730(n+1), A179707(n+1)]`
-/

namespace A108574.P8728615533642835421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108574.P8728615533642835421

/-! ## A108574.P12908791188976598409

`∪[A162730(n+1), A188836(n+1)]`
-/

namespace A108574.P12908791188976598409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108574.P12908791188976598409

/-! ## A108574.P6826747561681369714

`∪[A162730(n+1), A236024(n+1)]`
-/

namespace A108574.P6826747561681369714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108574.P6826747561681369714

/-! ## A108574.P8566160331728026647

`∪[A162730(n+1), A247078(n+1)]`
-/

namespace A108574.P8566160331728026647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108574.P8566160331728026647

/-!
# A108575: Numbers k such that the continued fraction for sqrt(k) is multiplicative.

The programs for A108575, there is no canonical definition to state claims against.
-/

/-! ## A108575.P2810538830094559596

`filter[A109054(n+1), A023969(#)]`
-/

namespace A108575.P2810538830094559596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023969 (f1 j).toNat = 1) n)

end

end A108575.P2810538830094559596

/-! ## A108575.P15119507244288404263

`filter[A109054(n+2), A049240(#)]`
-/

namespace A108575.P15119507244288404263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A108575.P15119507244288404263

/-! ## A108575.P16279928735010502658

`filter[A109054(n+2), A118175(#)]`
-/

namespace A108575.P16279928735010502658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118175 (f1 j).toNat = 1) n)

end

end A108575.P16279928735010502658

/-! ## A108575.P14896489970990901392

`filter[A109054(n+2), A262855(#)]`
-/

namespace A108575.P14896489970990901392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262855 (f1 j).toNat = 1) n)

end

end A108575.P14896489970990901392

/-! ## A108575.P17540224173207109670

`filter[A109054(n+2), A263804(#)]`
-/

namespace A108575.P17540224173207109670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263804 (f1 j).toNat = 1) n)

end

end A108575.P17540224173207109670

/-!
# A108576: Number of 3 X 3 magic squares (with distinct positive entries) having all entries < n.

The programs for A108576, the canonical program `A108576.P11044419720950305093` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108576 has offset 1).

The definition of A108576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108576.P17855771332158391603

`8*A108577(n+1)`
-/

namespace A108576.P17855771332158391603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A108577 (n + 1)

end

end A108576.P17855771332158391603

namespace A108576

/-- `8*A108577(n+1)` -/
def P17855771332158391603.Spec : Prop :=
  ∀ n, P17855771332158391603.a n = A108576 (n + 1)

end A108576

/-! ## A108576.P11044419720950305093

`∑[A108578(n%∑[(n+1)%2]+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108576

/-- `∑[A108578(n%∑[(n+1)%2]+1)]` -/
def P11044419720950305093.Spec : Prop :=
  ∀ n, P11044419720950305093.a n = A108576 (n + 1)

theorem P11044419720950305093.correct : P11044419720950305093.Spec := by
  intro n
  simp only [A108576, Nat.add_sub_cancel]

end A108576

/-! ## A108576.P11191703829434923169

`∑[A108578(A065033(n))]`
-/

namespace A108576.P11191703829434923169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108578 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108576.P11191703829434923169

namespace A108576

/-- `∑[A108578(A065033(n))]` -/
def P11191703829434923169.Spec : Prop :=
  ∀ n, P11191703829434923169.a n = A108576 (n + 1)

end A108576

/-! ## A108576.P12482361451299097764

`∑[A108578(A008619(abs(1-n)))]`
-/

namespace A108576.P12482361451299097764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108578 (A008619 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108576.P12482361451299097764

namespace A108576

/-- `∑[A108578(A008619(abs(1-n)))]` -/
def P12482361451299097764.Spec : Prop :=
  ∀ n, P12482361451299097764.a n = A108576 (n + 1)

end A108576

/-! ## A108576.P8254145653142435936

`∑[8*A108579(A140106(n+1)+1)]`
-/

namespace A108576.P8254145653142435936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A108579 (A140106 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108576.P8254145653142435936

namespace A108576

/-- `∑[8*A108579(A140106(n+1)+1)]` -/
def P8254145653142435936.Spec : Prop :=
  ∀ n, P8254145653142435936.a n = A108576 (n + 1)

end A108576

/-! ## A108576.P3057902874082504089

`A008590(A108577(n+1))`
-/

namespace A108576.P3057902874082504089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A108577 (n + 1)).toNat

end

end A108576.P3057902874082504089

namespace A108576

/-- `A008590(A108577(n+1))` -/
def P3057902874082504089.Spec : Prop :=
  ∀ n, P3057902874082504089.a n = A108576 (n + 1)

end A108576

/-!
# A108577: Number of symmetry classes of 3 X 3 magic squares (with distinct positive entries) having all entries < n.

The programs for A108577, the canonical program `A108577.P3318721791506617652` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108577 has offset 1).

The definition of A108577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108577.P921649588662765847

`A108576(n+1)/8`
-/

namespace A108577.P921649588662765847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108576 (n + 1) : ℚ) / 8

end

end A108577.P921649588662765847

namespace A108577

/-- `A108576(n+1)/8` -/
def P921649588662765847.Spec : Prop :=
  ∀ n, P921649588662765847.a n = (A108577 (n + 1) : ℚ)

end A108577

/-! ## A108577.P3318721791506617652

`∑[A108579(n%∑[(n+1)%2]+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108577

/-- `∑[A108579(n%∑[(n+1)%2]+1)]` -/
def P3318721791506617652.Spec : Prop :=
  ∀ n, P3318721791506617652.a n = A108577 (n + 1)

theorem P3318721791506617652.correct : P3318721791506617652.Spec := by
  intro n
  simp only [A108577, Nat.add_sub_cancel]

end A108577

/-! ## A108577.P18006674927487954390

`∑[A108579(A065033(n))]`
-/

namespace A108577.P18006674927487954390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108577.P18006674927487954390

namespace A108577

/-- `∑[A108579(A065033(n))]` -/
def P18006674927487954390.Spec : Prop :=
  ∀ n, P18006674927487954390.a n = A108577 (n + 1)

end A108577

/-! ## A108577.P1170871639224992600

`∑[A108579(A008619(abs(1-n)))]`
-/

namespace A108577.P1170871639224992600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (A008619 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108577.P1170871639224992600

namespace A108577

/-- `∑[A108579(A008619(abs(1-n)))]` -/
def P1170871639224992600.Spec : Prop :=
  ∀ n, P1170871639224992600.a n = A108577 (n + 1)

end A108577

/-! ## A108577.P2241111877561040203

`∑[A108579(A140106(n+1)+1)]`
-/

namespace A108577.P2241111877561040203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (A140106 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108577.P2241111877561040203

namespace A108577

/-- `∑[A108579(A140106(n+1)+1)]` -/
def P2241111877561040203.Spec : Prop :=
  ∀ n, P2241111877561040203.a n = A108577 (n + 1)

end A108577

/-! ## A108577.P13682989665427121510

`A006085(A108576(n+1))`
-/

namespace A108577.P13682989665427121510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A108576 (n + 1)).toNat

end

end A108577.P13682989665427121510

namespace A108577

/-- `A006085(A108576(n+1))` -/
def P13682989665427121510.Spec : Prop :=
  ∀ n, P13682989665427121510.a n = A108577 (n + 1)

end A108577

/-!
# A108578: Number of 3 X 3 magic squares with magic sum 3n.

The programs for A108578, the canonical program `A108578.P9135805578968318496` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108578 has offset 1).

The definition of A108578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108578.P9135805578968318496

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=8, a(5)=24`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108578

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P9135805578968318496.Spec : Prop :=
  ∀ n, P9135805578968318496.a n = A108578 (n + 1)

theorem P9135805578968318496.correct : P9135805578968318496.Spec := by
  intro n
  simp only [A108578, Nat.add_sub_cancel]

end A108578

/-! ## A108578.P15197468388353789766

`8*A108579(n+1)`
-/

namespace A108578.P15197468388353789766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A108579 (n + 1)

end

end A108578.P15197468388353789766

namespace A108578

/-- `8*A108579(n+1)` -/
def P15197468388353789766.Spec : Prop :=
  ∀ n, P15197468388353789766.a n = A108578 (n + 1)

end A108578

/-! ## A108578.P9217522215528650537

`A174256(n)+a(n-1)` with `a(0)=0`
-/

namespace A108578.P9217522215528650537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A174256 n + a (n - 1)

end

end A108578.P9217522215528650537

namespace A108578

/-- `A174256(n)+a(n-1)` -/
def P9217522215528650537.Spec : Prop :=
  ∀ n, P9217522215528650537.a n = A108578 (n + 1)

end A108578

/-! ## A108578.P2324002643543283746

`8*∑[A174257(abs(1-n)+1)]`
-/

namespace A108578.P2324002643543283746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108578.P2324002643543283746

namespace A108578

/-- `8*∑[A174257(abs(1-n)+1)]` -/
def P2324002643543283746.Spec : Prop :=
  ∀ n, P2324002643543283746.a n = A108578 (n + 1)

end A108578

/-! ## A108578.P10600157356030311753

`8*(A054925(n)-A187324(n))`
-/

namespace A108578.P10600157356030311753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A054925 n - A187324 n)

end

end A108578.P10600157356030311753

namespace A108578

/-- `8*(A054925(n)-A187324(n))` -/
def P10600157356030311753.Spec : Prop :=
  ∀ n, P10600157356030311753.a n = A108578 (n + 1)

end A108578

/-! ## A108578.P6615844399055822757

`8*(∑[A110654(n)]-A004773(n))`
-/

namespace A108578.P6615844399055822757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j - A004773 n)

end

end A108578.P6615844399055822757

namespace A108578

/-- `8*(∑[A110654(n)]-A004773(n))` -/
def P6615844399055822757.Spec : Prop :=
  ∀ n, P6615844399055822757.a n = A108578 (n + 1)

end A108578

/-! ## A108578.P4199340268840405907

`8*(A002620(n+1)-A004773(n))`
-/

namespace A108578.P4199340268840405907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A002620 (n + 1) - A004773 n)

end

end A108578.P4199340268840405907

namespace A108578

/-- `8*(A002620(n+1)-A004773(n))` -/
def P4199340268840405907.Spec : Prop :=
  ∀ n, P4199340268840405907.a n = A108578 (n + 1)

end A108578

/-! ## A108578.P3537559899120653289

`8*(A004652(n)-A063197(n+1))`
-/

namespace A108578.P3537559899120653289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A004652 n - A063197 (n + 1))

end

end A108578.P3537559899120653289

namespace A108578

/-- `8*(A004652(n)-A063197(n+1))` -/
def P3537559899120653289.Spec : Prop :=
  ∀ n, P3537559899120653289.a n = A108578 (n + 1)

end A108578

/-! ## A108578.P2704173156660279790

`∑[A174256(n+1)]-A174256(n+1)`
-/

namespace A108578.P2704173156660279790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A174256 (n + 1)

end

end A108578.P2704173156660279790

namespace A108578

/-- `∑[A174256(n+1)]-A174256(n+1)` -/
def P2704173156660279790.Spec : Prop :=
  ∀ n, P2704173156660279790.a n = A108578 (n + 1)

end A108578

/-! ## A108578.P10555486176931938399

`A108576(2*(n+1))-A108576(2*n+1)`
-/

namespace A108578.P10555486176931938399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108576 (2 * (n + 1)) - A108576 (2 * n + 1)

end

end A108578.P10555486176931938399

namespace A108578

/-- `A108576(2*(n+1))-A108576(2*n+1)` -/
def P10555486176931938399.Spec : Prop :=
  ∀ n, P10555486176931938399.a n = A108578 (n + 1)

end A108578

/-! ## A108578.P7449210553441141784

`A008590(A108579(n+1))`
-/

namespace A108578.P7449210553441141784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A108579 (n + 1)).toNat

end

end A108578.P7449210553441141784

namespace A108578

/-- `A008590(A108579(n+1))` -/
def P7449210553441141784.Spec : Prop :=
  ∀ n, P7449210553441141784.a n = A108578 (n + 1)

end A108578

/-! ## A108578.P6785738514034030025

`A008590(A004652(n)-A063197(n+1))`
-/

namespace A108578.P6785738514034030025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A004652 n - A063197 (n + 1)).toNat

end

end A108578.P6785738514034030025

namespace A108578

/-- `A008590(A004652(n)-A063197(n+1))` -/
def P6785738514034030025.Spec : Prop :=
  ∀ n, P6785738514034030025.a n = A108578 (n + 1)

end A108578

/-! ## A108578.P16490823579082359852

`A008590(A108577(2*(n+1))-A108577(2*n+1))`
-/

namespace A108578.P16490823579082359852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A108577 (2 * (n + 1)) - A108577 (2 * n + 1)).toNat

end

end A108578.P16490823579082359852

namespace A108578

/-- `A008590(A108577(2*(n+1))-A108577(2*n+1))` -/
def P16490823579082359852.Spec : Prop :=
  ∀ n, P16490823579082359852.a n = A108578 (n + 1)

end A108578

/-!
# A108579: Number of symmetry classes of 3 X 3 magic squares (with distinct positive entries) having magic sum 3n.

The programs for A108579, the canonical program `A108579.P4005499333962739147` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108579 has offset 1).

The definition of A108579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108579.P4005499333962739147

`floor(1/4*(n-1)²)-floor(1/3*n)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108579

/-- `floor(1/4*(n-1)²)-floor(1/3*n)` -/
def P4005499333962739147.Spec : Prop :=
  ∀ n, P4005499333962739147.a n = A108579 (n + 1)

theorem P4005499333962739147.correct : P4005499333962739147.Spec := by
  intro n
  simp only [A108579, Nat.add_sub_cancel]

end A108579

/-! ## A108579.P17408938016854984409

`∑[a(n-2)+n%3]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A108579.P17408938016854984409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 2) + n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108579.P17408938016854984409

namespace A108579

/-- `∑[a(n-2)+n%3]` -/
def P17408938016854984409.Spec : Prop :=
  ∀ n, (P17408938016854984409.a n : ℤ) = A108579 (n + 1)

end A108579

/-! ## A108579.P3040167156889953416

`floor(∑[a(n-2)+3]/3)` with `a(0)=2, a(1)=-1, a(2)=-1`
-/

namespace A108579.P3040167156889953416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, -1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A108579.P3040167156889953416

namespace A108579

/-- `floor(∑[a(n-2)+3]/3)` -/
def P3040167156889953416.Spec : Prop :=
  ∀ n, P3040167156889953416.a n = A108579 (n + 1)

end A108579

/-! ## A108579.P17913983372697803658

`floor(a(n-1)+(n-gcd(3, n))/2)` with `a(0)=0`
-/

namespace A108579.P17913983372697803658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℤ) - (Nat.gcd 3 n : ℤ) : ℚ) / 2⌋

end

end A108579.P17913983372697803658

namespace A108579

/-- `floor(a(n-1)+(n-gcd(3, n))/2)` -/
def P17913983372697803658.Spec : Prop :=
  ∀ n, P17913983372697803658.a n = A108579 (n + 1)

end A108579

/-! ## A108579.P400911160102249242

`A108578(n+1)/8`
-/

namespace A108579.P400911160102249242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108578 (n + 1) : ℚ) / 8

end

end A108579.P400911160102249242

namespace A108579

/-- `A108578(n+1)/8` -/
def P400911160102249242.Spec : Prop :=
  ∀ n, P400911160102249242.a n = (A108579 (n + 1) : ℚ)

end A108579

/-! ## A108579.P14195161008829936609

`∑[A174257(abs(1-n)+1)]`
-/

namespace A108579.P14195161008829936609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108579.P14195161008829936609

namespace A108579

/-- `∑[A174257(abs(1-n)+1)]` -/
def P14195161008829936609.Spec : Prop :=
  ∀ n, P14195161008829936609.a n = A108579 (n + 1)

end A108579

/-! ## A108579.P12728824190516638189

`A263807(n)%A024401(n+1)`
-/

namespace A108579.P12728824190516638189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263807 n) (A024401 (n + 1))

end

end A108579.P12728824190516638189

namespace A108579

/-- `A263807(n)%A024401(n+1)` -/
def P12728824190516638189.Spec : Prop :=
  ∀ n, P12728824190516638189.a n = A108579 (n + 1)

end A108579

/-! ## A108579.P7723583167884600957

`A104249(n)%A211481(n)`
-/

namespace A108579.P7723583167884600957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104249 n) (A211481 n)

end

end A108579.P7723583167884600957

namespace A108579

/-- `A104249(n)%A211481(n)` -/
def P7723583167884600957.Spec : Prop :=
  ∀ n, P7723583167884600957.a n = A108579 (n + 1)

end A108579

/-! ## A108579.P912342925478332777

`A265409(A212986(n+1))`
-/

namespace A108579.P912342925478332777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265409 (A212986 (n + 1)).toNat

end

end A108579.P912342925478332777

namespace A108579

/-- `A265409(A212986(n+1))` -/
def P912342925478332777.Spec : Prop :=
  ∀ n, P912342925478332777.a n = A108579 (n + 1)

end A108579

/-! ## A108579.P16895103941157367100

`A006085(A108578(n+1))`
-/

namespace A108579.P16895103941157367100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A108578 (n + 1)).toNat

end

end A108579.P16895103941157367100

namespace A108579

/-- `A006085(A108578(n+1))` -/
def P16895103941157367100.Spec : Prop :=
  ∀ n, P16895103941157367100.a n = A108579 (n + 1)

end A108579

/-!
# A108580: Numbers whose sum of bits when written in binary > sum of decimal digits.

The programs for A108580, the canonical program `A108580.P112236071896363944` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108580 has offset 1).

The definition of A108580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108580.P112236071896363944

`lt[A180018(n), 0]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108580

/-- `lt[A180018(n), 0]` -/
def P112236071896363944.Spec : Prop :=
  ∀ n, (P112236071896363944.a n : ℤ) = A108580 (n + 1)

theorem P112236071896363944.correct : P112236071896363944.Spec := by
  intro n
  simp only [A108580, Nat.add_sub_cancel]

end A108580

/-! ## A108580.P5013693895255223291

`lt[A007953(n), A000120(n)]`
-/

namespace A108580.P5013693895255223291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108580.P5013693895255223291

namespace A108580

/-- `lt[A007953(n), A000120(n)]` -/
def P5013693895255223291.Spec : Prop :=
  ∀ n, (P5013693895255223291.a n : ℤ) = A108580 (n + 1)

end A108580

/-! ## A108580.P13635518694997346204

`lt[A329562(n), A001316(n)]`
-/

namespace A108580.P13635518694997346204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108580.P13635518694997346204

namespace A108580

/-- `lt[A329562(n), A001316(n)]` -/
def P13635518694997346204.Spec : Prop :=
  ∀ n, (P13635518694997346204.a n : ℤ) = A108580 (n + 1)

end A108580

/-! ## A108580.P9290334762817015656

`lt[A118881(n), A000120(n)²]`
-/

namespace A108580.P9290334762817015656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108580.P9290334762817015656

namespace A108580

/-- `lt[A118881(n), A000120(n)²]` -/
def P9290334762817015656.Spec : Prop :=
  ∀ n, (P9290334762817015656.a n : ℤ) = A108580 (n + 1)

end A108580

/-! ## A108580.P15953966393832727151

`lt[log2(A329562(n)), A000120(n)]`
-/

namespace A108580.P15953966393832727151
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A108580.P15953966393832727151

namespace A108580

/-- `lt[log2(A329562(n)), A000120(n)]` -/
def P15953966393832727151.Spec : Prop :=
  ∀ n, (P15953966393832727151.a n : ℤ) = A108580 (n + 1)

end A108580

/-! ## A108580.P16734891820901096084

`lt[A007953(n)+1, A000005(A001316(n))]`
-/

namespace A108580.P16734891820901096084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108580.P16734891820901096084

namespace A108580

/-- `lt[A007953(n)+1, A000005(A001316(n))]` -/
def P16734891820901096084.Spec : Prop :=
  ∀ n, (P16734891820901096084.a n : ℤ) = A108580 (n + 1)

end A108580

/-! ## A108580.P10319445221571667247

`lt[A053831(A171397(n)), A000120(n)]`
-/

namespace A108580.P10319445221571667247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (A171397 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108580.P10319445221571667247

namespace A108580

/-- `lt[A053831(A171397(n)), A000120(n)]` -/
def P10319445221571667247.Spec : Prop :=
  ∀ n, (P10319445221571667247.a n : ℤ) = A108580 (n + 1)

end A108580

/-! ## A108580.P14278996931293484002

`lt[A053836(A102489(n)), A000120(n)]`
-/

namespace A108580.P14278996931293484002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A102489 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108580.P14278996931293484002

namespace A108580

/-- `lt[A053836(A102489(n)), A000120(n)]` -/
def P14278996931293484002.Spec : Prop :=
  ∀ n, (P14278996931293484002.a n : ℤ) = A108580 (n + 1)

end A108580

/-!
# A108581: Positive triangular numbers repeated their own number of times.

The programs for A108581, the canonical program `A108581.P11690575044026609258` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108581 has offset 1).

The definition of A108581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108581.P12705718763663185187

`C(∑[char[C(n, 3)]]+1, 2)`
-/

namespace A108581.P12705718763663185187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A108581.P12705718763663185187

namespace A108581

/-- `C(∑[char[C(n, 3)]]+1, 2)` -/
def P12705718763663185187.Spec : Prop :=
  ∀ n, (P12705718763663185187.a n : ℤ) = A108581 (n + 1)

end A108581

/-! ## A108581.P73014825731400206

`C(-xor(-1, ∑[char[C(n, 3)]]), 2)`
-/

namespace A108581.P73014825731400206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (-Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat 2

end

end A108581.P73014825731400206

namespace A108581

/-- `C(-xor(-1, ∑[char[C(n, 3)]]), 2)` -/
def P73014825731400206.Spec : Prop :=
  ∀ n, (P73014825731400206.a n : ℤ) = A108581 (n + 1)

end A108581

/-! ## A108581.P17232248237330391226

`C(comp[∑[C(n, 2)]+n]-n, 2)`
-/

namespace A108581.P17232248237330391226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2

end

end A108581.P17232248237330391226

namespace A108581

/-- `C(comp[∑[C(n, 2)]+n]-n, 2)` -/
def P17232248237330391226.Spec : Prop :=
  ∀ n, (P17232248237330391226.a n : ℤ) = A108581 (n + 1)

end A108581

/-! ## A108581.P6276515172388713370

`comp[∑[n*char[∑[n]]]+n]-n`
-/

namespace A108581.P6276515172388713370
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A108581.P6276515172388713370

namespace A108581

/-- `comp[∑[n*char[∑[n]]]+n]-n` -/
def P6276515172388713370.Spec : Prop :=
  ∀ n, P6276515172388713370.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P10231067016254779312

`C(A194847(n), 2)`
-/

namespace A108581.P10231067016254779312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A194847 n).toNat 2

end

end A108581.P10231067016254779312

namespace A108581

/-- `C(A194847(n), 2)` -/
def P10231067016254779312.Spec : Prop :=
  ∀ n, (P10231067016254779312.a n : ℤ) = A108581 (n + 1)

end A108581

/-! ## A108581.P11690575044026609258

`C(A056556(n)+2, 2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108581

/-- `C(A056556(n)+2, 2)` -/
def P11690575044026609258.Spec : Prop :=
  ∀ n, (P11690575044026609258.a n : ℤ) = A108581 (n + 1)

theorem P11690575044026609258.correct : P11690575044026609258.Spec := by
  intro n
  simp only [A108581, Nat.add_sub_cancel]

end A108581

/-! ## A108581.P916429422715824753

`A000217(∑[char[C(n, 3)]])`
-/

namespace A108581.P916429422715824753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108581.P916429422715824753

namespace A108581

/-- `A000217(∑[char[C(n, 3)]])` -/
def P916429422715824753.Spec : Prop :=
  ∀ n, P916429422715824753.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P7324315143709410525

`A105340(∑[char[C(n, 3)]])`
-/

namespace A108581.P7324315143709410525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105340 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108581.P7324315143709410525

namespace A108581

/-- `A105340(∑[char[C(n, 3)]])` -/
def P7324315143709410525.Spec : Prop :=
  ∀ n, P7324315143709410525.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P14348944403544060899

`A000217(A056556(n)+1)`
-/

namespace A108581.P14348944403544060899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A056556 n + 1).toNat

end

end A108581.P14348944403544060899

namespace A108581

/-- `A000217(A056556(n)+1)` -/
def P14348944403544060899.Spec : Prop :=
  ∀ n, P14348944403544060899.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P10688258253421031994

`A127739(A123579(n+1))`
-/

namespace A108581.P10688258253421031994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A123579 (n + 1)).toNat

end

end A108581.P10688258253421031994

namespace A108581

/-- `A127739(A123579(n+1))` -/
def P10688258253421031994.Spec : Prop :=
  ∀ n, P10688258253421031994.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P14169401297467213472

`A057944(A274079(n+1))`
-/

namespace A108581.P14169401297467213472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A274079 (n + 1)).toNat

end

end A108581.P14169401297467213472

namespace A108581

/-- `A057944(A274079(n+1))` -/
def P14169401297467213472.Spec : Prop :=
  ∀ n, P14169401297467213472.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P3259002461913491046

`A000217(A360010(n+1))`
-/

namespace A108581.P3259002461913491046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A360010 (n + 1)).toNat

end

end A108581.P3259002461913491046

namespace A108581

/-- `A000217(A360010(n+1))` -/
def P3259002461913491046.Spec : Prop :=
  ∀ n, P3259002461913491046.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P17760648073037618391

`∑[∑[A023533(n)]*A023533(n)]`
-/

namespace A108581.P17760648073037618391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A023533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108581.P17760648073037618391

namespace A108581

/-- `∑[∑[A023533(n)]*A023533(n)]` -/
def P17760648073037618391.Spec : Prop :=
  ∀ n, P17760648073037618391.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P11877472633016025651

`∑[char[A000292(n)]*A173964(n+1)]`
-/

namespace A108581.P11877472633016025651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A173964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108581.P11877472633016025651

namespace A108581

/-- `∑[char[A000292(n)]*A173964(n+1)]` -/
def P11877472633016025651.Spec : Prop :=
  ∀ n, P11877472633016025651.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P17173625057082011672

`A000217(A107436(A123579(n+2)))`
-/

namespace A108581.P17173625057082011672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A107436 (A123579 (n + 2)).toNat).toNat

end

end A108581.P17173625057082011672

namespace A108581

/-- `A000217(A107436(A123579(n+2)))` -/
def P17173625057082011672.Spec : Prop :=
  ∀ n, P17173625057082011672.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P4604624994178811144

`A002378(A220104(2*n+1))/2`
-/

namespace A108581.P4604624994178811144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A220104 (2 * n + 1)).toNat : ℚ) / 2

end

end A108581.P4604624994178811144

namespace A108581

/-- `A002378(A220104(2*n+1))/2` -/
def P4604624994178811144.Spec : Prop :=
  ∀ n, P4604624994178811144.a n = (A108581 (n + 1) : ℚ)

end A108581

/-! ## A108581.P15714083017435620282

`A090706(A014311(n+1))`
-/

namespace A108581.P15714083017435620282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (A014311 (n + 1)).toNat

end

end A108581.P15714083017435620282

namespace A108581

/-- `A090706(A014311(n+1))` -/
def P15714083017435620282.Spec : Prop :=
  ∀ n, P15714083017435620282.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P17969308959980069299

`A090706(A379267(n+1))`
-/

namespace A108581.P17969308959980069299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (A379267 (n + 1)).toNat

end

end A108581.P17969308959980069299

namespace A108581

/-- `A090706(A379267(n+1))` -/
def P17969308959980069299.Spec : Prop :=
  ∀ n, P17969308959980069299.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P17302875082650131

`A090706(eq[2, A023416(n)])`
-/

namespace A108581.P17302875082650131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108581.P17302875082650131

namespace A108581

/-- `A090706(eq[2, A023416(n)])` -/
def P17302875082650131.Spec : Prop :=
  ∀ n, P17302875082650131.a n = A108581 (n + 1)

end A108581

/-! ## A108581.P3057666571443925810

`A000217(A123578(A123579(A123578(A000217(n+1)))))`
-/

namespace A108581.P3057666571443925810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A123578 (A123579 (A123578 (A000217 (n + 1)).toNat).toNat).toNat).toNat

end

end A108581.P3057666571443925810

namespace A108581

/-- `A000217(A123578(A123579(A123578(A000217(n+1)))))` -/
def P3057666571443925810.Spec : Prop :=
  ∀ n, P3057666571443925810.a n = A108581 (n + 1)

end A108581

/-!
# A108582: n appears n^3 times.

The programs for A108582, the canonical program `A108582.P3256571617680340629` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108582 has offset 1).

The definition of A108582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108582.P3256571617680340629

`ceil(1/2*(sqrt(8*sqrt(n+1)+1)-1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108582

/-- `ceil(1/2*(sqrt(8*sqrt(n+1)+1)-1))` -/
def P3256571617680340629.Spec : Prop :=
  ∀ n, P3256571617680340629.a n = A108582 (n + 1)

theorem P3256571617680340629.correct : P3256571617680340629.Spec := by
  intro n
  simp only [A108582, Nat.add_sub_cancel]

end A108582

/-! ## A108582.P4557016656950743741

`round(sqrt(ceil(record[sqrt(xor(3, n))])))`
-/

namespace A108582.P4557016656950743741
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ : ℝ))

end

end A108582.P4557016656950743741

namespace A108582

/-- `round(sqrt(ceil(record[sqrt(xor(3, n))])))` -/
def P4557016656950743741.Spec : Prop :=
  ∀ n, P4557016656950743741.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P6050366837332450458

`char[C(n, 2)²]+a(n-1)` with `a(0)=1`
-/

namespace A108582.P6050366837332450458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A108582.P6050366837332450458

namespace A108582

/-- `char[C(n, 2)²]+a(n-1)` -/
def P6050366837332450458.Spec : Prop :=
  ∀ n, (P6050366837332450458.a n : ℤ) = A108582 (n + 1)

end A108582

/-! ## A108582.P16317662353182959730

`char[∑[n^3]]+a(n-1)` with `a(0)=1`
-/

namespace A108582.P16317662353182959730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A108582.P16317662353182959730

namespace A108582

/-- `char[∑[n^3]]+a(n-1)` -/
def P16317662353182959730.Spec : Prop :=
  ∀ n, (P16317662353182959730.a n : ℤ) = A108582 (n + 1)

end A108582

/-! ## A108582.P9806356353084905381

`comp[C(n, 2)²+n-1]-n`
-/

namespace A108582.P9806356353084905381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 + n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A108582.P9806356353084905381

namespace A108582

/-- `comp[C(n, 2)²+n-1]-n` -/
def P9806356353084905381.Spec : Prop :=
  ∀ n, P9806356353084905381.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P16295242497219854819

`∑[A387646(n)]`
-/

namespace A108582.P16295242497219854819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108582.P16295242497219854819

namespace A108582

/-- `∑[A387646(n)]` -/
def P16295242497219854819.Spec : Prop :=
  ∀ n, P16295242497219854819.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P13706708143632039349

`∑[char[A000537(n)]]`
-/

namespace A108582.P13706708143632039349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108582.P13706708143632039349

namespace A108582

/-- `∑[char[A000537(n)]]` -/
def P13706708143632039349.Spec : Prop :=
  ∀ n, (P13706708143632039349.a n : ℤ) = A108582 (n + 1)

end A108582

/-! ## A108582.P3118694557696472645

`round(sqrt(∑[A000122(n)]))`
-/

namespace A108582.P3118694557696472645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A108582.P3118694557696472645

namespace A108582

/-- `round(sqrt(∑[A000122(n)]))` -/
def P3118694557696472645.Spec : Prop :=
  ∀ n, P3118694557696472645.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P7606440210925370142

`A002024(floor(sqrt(n))+1)`
-/

namespace A108582.P7606440210925370142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.sqrt n + 1)

end

end A108582.P7606440210925370142

namespace A108582

/-- `A002024(floor(sqrt(n))+1)` -/
def P7606440210925370142.Spec : Prop :=
  ∀ n, P7606440210925370142.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P15818224993215930599

`round(sqrt(A001650(n+1)))`
-/

namespace A108582.P15818224993215930599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001650 (n + 1) : ℝ))

end

end A108582.P15818224993215930599

namespace A108582

/-- `round(sqrt(A001650(n+1)))` -/
def P15818224993215930599.Spec : Prop :=
  ∀ n, P15818224993215930599.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P15247740482181818199

`round(sqrt(A027434(n+1)))`
-/

namespace A108582.P15247740482181818199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027434 (n + 1) : ℝ))

end

end A108582.P15247740482181818199

namespace A108582

/-- `round(sqrt(A027434(n+1)))` -/
def P15247740482181818199.Spec : Prop :=
  ∀ n, P15247740482181818199.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P10141804228423667303

`A000194(A000267(n)+1)`
-/

namespace A108582.P10141804228423667303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000267 n + 1).toNat

end

end A108582.P10141804228423667303

namespace A108582

/-- `A000194(A000267(n)+1)` -/
def P10141804228423667303.Spec : Prop :=
  ∀ n, P10141804228423667303.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P1456394783166017233

`A000194(A001650(n+1))`
-/

namespace A108582.P1456394783166017233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A001650 (n + 1)).toNat

end

end A108582.P1456394783166017233

namespace A108582

/-- `A000194(A001650(n+1))` -/
def P1456394783166017233.Spec : Prop :=
  ∀ n, P1456394783166017233.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P5952915293181124844

`A003056(A000196(n))+1`
-/

namespace A108582.P5952915293181124844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000196 n).toNat + 1

end

end A108582.P5952915293181124844

namespace A108582

/-- `A003056(A000196(n))+1` -/
def P5952915293181124844.Spec : Prop :=
  ∀ n, P5952915293181124844.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P6468889916675099289

`A000194(A027434(n+1))`
-/

namespace A108582.P6468889916675099289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A027434 (n + 1)).toNat

end

end A108582.P6468889916675099289

namespace A108582

/-- `A000194(A027434(n+1))` -/
def P6468889916675099289.Spec : Prop :=
  ∀ n, P6468889916675099289.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P3085429634744801501

`A000194(A130819(n+1))`
-/

namespace A108582.P3085429634744801501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A130819 (n + 1)).toNat

end

end A108582.P3085429634744801501

namespace A108582

/-- `A000194(A130819(n+1))` -/
def P3085429634744801501.Spec : Prop :=
  ∀ n, P3085429634744801501.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P11923101795061637191

`A000194(A055086(n)+2)`
-/

namespace A108582.P11923101795061637191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A055086 n + 2).toNat

end

end A108582.P11923101795061637191

namespace A108582

/-- `A000194(A055086(n)+2)` -/
def P11923101795061637191.Spec : Prop :=
  ∀ n, P11923101795061637191.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P3229194087360340832

`A000194(A060018(n+2)+1)`
-/

namespace A108582.P3229194087360340832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A060018 (n + 2) + 1).toNat

end

end A108582.P3229194087360340832

namespace A108582

/-- `A000194(A060018(n+2)+1)` -/
def P3229194087360340832.Spec : Prop :=
  ∀ n, P3229194087360340832.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P12393863243430881921

`A000194(A307136(n+1)-1)`
-/

namespace A108582.P12393863243430881921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A307136 (n + 1) - 1).toNat

end

end A108582.P12393863243430881921

namespace A108582

/-- `A000194(A307136(n+1)-1)` -/
def P12393863243430881921.Spec : Prop :=
  ∀ n, P12393863243430881921.a n = A108582 (n + 1)

end A108582

/-! ## A108582.P11751855506033883725

`A000194(2*A003059(n+1))`
-/

namespace A108582.P11751855506033883725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A003059 (n + 1)).toNat

end

end A108582.P11751855506033883725

namespace A108582

/-- `A000194(2*A003059(n+1))` -/
def P11751855506033883725.Spec : Prop :=
  ∀ n, P11751855506033883725.a n = A108582 (n + 1)

end A108582

/-!
# A108584: Numbers k such that 10*k - 97 is prime.

The programs for A108584, the canonical program `A108584.P13995613551814768691` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108584 has offset 1).

The definition of A108584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108584.P17162757671365612072

`A108854(n+1)-3`
-/

namespace A108584.P17162757671365612072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108854 (n + 1) - 3

end

end A108584.P17162757671365612072

namespace A108584

/-- `A108854(n+1)-3` -/
def P17162757671365612072.Spec : Prop :=
  ∀ n, P17162757671365612072.a n = A108584 (n + 1)

end A108584

/-! ## A108584.P13995613551814768691

`A024913(n+1)+9`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108584

/-- `A024913(n+1)+9` -/
def P13995613551814768691.Spec : Prop :=
  ∀ n, P13995613551814768691.a n = A108584 (n + 1)

theorem P13995613551814768691.correct : P13995613551814768691.Spec := by
  intro n
  simp only [A108584, Nat.add_sub_cancel]

end A108584

/-! ## A108584.P11062620330057687989

`A102338(n+1)+10`
-/

namespace A108584.P11062620330057687989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1) + 10

end

end A108584.P11062620330057687989

namespace A108584

/-- `A102338(n+1)+10` -/
def P11062620330057687989.Spec : Prop :=
  ∀ n, P11062620330057687989.a n = A108584 (n + 1)

end A108584

/-! ## A108584.P13145224846581799470

`A087505(n+1)/2+10`
-/

namespace A108584.P13145224846581799470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087505 (n + 1) : ℚ) / 2 + 10

end

end A108584.P13145224846581799470

namespace A108584

/-- `A087505(n+1)/2+10` -/
def P13145224846581799470.Spec : Prop :=
  ∀ n, P13145224846581799470.a n = (A108584 (n + 1) : ℚ)

end A108584

/-! ## A108584.P14349766539558160091

`(A024896(n+1)+1)/2+9`
-/

namespace A108584.P14349766539558160091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024896 (n + 1) + 1 : ℚ) / 2 + 9

end

end A108584.P14349766539558160091

namespace A108584

/-- `(A024896(n+1)+1)/2+9` -/
def P14349766539558160091.Spec : Prop :=
  ∀ n, P14349766539558160091.a n = (A108584 (n + 1) : ℚ)

end A108584

/-! ## A108584.P6554105061704629898

`A020723(A024913(n+1))`
-/

namespace A108584.P6554105061704629898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A024913 (n + 1)).toNat

end

end A108584.P6554105061704629898

namespace A108584

/-- `A020723(A024913(n+1))` -/
def P6554105061704629898.Spec : Prop :=
  ∀ n, P6554105061704629898.a n = A108584 (n + 1)

end A108584

/-! ## A108584.P17268634622003110682

`A023445(A108854(n+1))`
-/

namespace A108584.P17268634622003110682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A108854 (n + 1)).toNat

end

end A108584.P17268634622003110682

namespace A108584

/-- `A023445(A108854(n+1))` -/
def P17268634622003110682.Spec : Prop :=
  ∀ n, P17268634622003110682.a n = A108584 (n + 1)

end A108584

/-! ## A108584.P7539774281719634520

`A196081(A087505(n+1))`
-/

namespace A108584.P7539774281719634520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196081 (A087505 (n + 1)).toNat

end

end A108584.P7539774281719634520

namespace A108584

/-- `A196081(A087505(n+1))` -/
def P7539774281719634520.Spec : Prop :=
  ∀ n, P7539774281719634520.a n = A108584 (n + 1)

end A108584

/-! ## A108584.P2789536314560992041

`A000463(A024896(n+1))+9`
-/

namespace A108584.P2789536314560992041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A024896 (n + 1)).toNat + 9

end

end A108584.P2789536314560992041

namespace A108584

/-- `A000463(A024896(n+1))+9` -/
def P2789536314560992041.Spec : Prop :=
  ∀ n, P2789536314560992041.a n = A108584 (n + 1)

end A108584

/-! ## A108584.P6802838127994940740

`A004525(A024896(n+1)+19)`
-/

namespace A108584.P6802838127994940740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A024896 (n + 1) + 19).toNat

end

end A108584.P6802838127994940740

namespace A108584

/-- `A004525(A024896(n+1)+19)` -/
def P6802838127994940740.Spec : Prop :=
  ∀ n, P6802838127994940740.a n = A108584 (n + 1)

end A108584

/-!
# A108585: a(n) = a(n-1) + 2*A005185(n+1), with a(1) = 2.

The programs for A108585, the canonical program `A108585.P8890325841937586428` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108585 has offset 1).

The definition of A108585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*A005185(n+2)` (program `A108585.P8890325841937586428`, by `A108585.P8890325841937586428.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108585.P8890325841937586428

`a(n-1)+2*A005185(n+2)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108585

/-- `a(n-1)+2*A005185(n+2)` -/
def P8890325841937586428.Spec : Prop :=
  ∀ n, P8890325841937586428.a n = A108585 (n + 1)

theorem P8890325841937586428.correct : P8890325841937586428.Spec := by
  intro n
  simp only [A108585, Nat.add_sub_cancel]

end A108585

/-! ## A108585.P15039985952883067938

`∑[A240809(2*(n+1))]`
-/

namespace A108585.P15039985952883067938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240809 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108585.P15039985952883067938

namespace A108585

/-- `∑[A240809(2*(n+1))]` -/
def P15039985952883067938.Spec : Prop :=
  ∀ n, P15039985952883067938.a n = A108585 (n + 1)

end A108585

/-! ## A108585.P11536872198217258281

`∑[2*A005185(n+2)]`
-/

namespace A108585.P11536872198217258281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005185 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108585.P11536872198217258281

namespace A108585

/-- `∑[2*A005185(n+2)]` -/
def P11536872198217258281.Spec : Prop :=
  ∀ n, P11536872198217258281.a n = A108585 (n + 1)

end A108585

/-! ## A108585.P280863077982457932

`2*(A076268(n+2)-1)`
-/

namespace A108585.P280863077982457932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A076268 (n + 2) - 1)

end

end A108585.P280863077982457932

namespace A108585

/-- `2*(A076268(n+2)-1)` -/
def P280863077982457932.Spec : Prop :=
  ∀ n, P280863077982457932.a n = A108585 (n + 1)

end A108585

/-! ## A108585.P8777983248551755764

`∑[2*Δ[A076268(n+1)]]`
-/

namespace A108585.P8777983248551755764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076268 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108585.P8777983248551755764

namespace A108585

/-- `∑[2*Δ[A076268(n+1)]]` -/
def P8777983248551755764.Spec : Prop :=
  ∀ n, P8777983248551755764.a n = A108585 (n + 1)

end A108585

/-! ## A108585.P1379042758831665374

`∑[Δ[A064550(n)]+n+1]`
-/

namespace A108585.P1379042758831665374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064550 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108585.P1379042758831665374

namespace A108585

/-- `∑[Δ[A064550(n)]+n+1]` -/
def P1379042758831665374.Spec : Prop :=
  ∀ n, P1379042758831665374.a n = A108585 (n + 1)

end A108585

/-! ## A108585.P8992245577432375781

`∑[A004277(A005185(n+2))]`
-/

namespace A108585.P8992245577432375781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005185 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108585.P8992245577432375781

namespace A108585

/-- `∑[A004277(A005185(n+2))]` -/
def P8992245577432375781.Spec : Prop :=
  ∀ n, P8992245577432375781.a n = A108585 (n + 1)

end A108585

/-! ## A108585.P8310567853831022010

`A004275(A076268(n+2))`
-/

namespace A108585.P8310567853831022010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A076268 (n + 2)).toNat

end

end A108585.P8310567853831022010

namespace A108585

/-- `A004275(A076268(n+2))` -/
def P8310567853831022010.Spec : Prop :=
  ∀ n, P8310567853831022010.a n = A108585 (n + 1)

end A108585

/-! ## A108585.P16349400093313019762

`A005843(∑[A005185(n+2)])`
-/

namespace A108585.P16349400093313019762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108585.P16349400093313019762

namespace A108585

/-- `A005843(∑[A005185(n+2)])` -/
def P16349400093313019762.Spec : Prop :=
  ∀ n, P16349400093313019762.a n = A108585 (n + 1)

end A108585

/-!
# A108586: Floor(2*n*Pi/(2*Pi-1)).

The programs for A108586, the canonical program `A108586.P16827602156646223610` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108586 has offset 1).

The definition of A108586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*(n+1)*π/(2*π-1))` (program `A108586.P16827602156646223610`, by `A108586.P16827602156646223610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108586.P16827602156646223610

`floor(2*(n+1)*π/(2*π-1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108586

/-- `floor(2*(n+1)*π/(2*π-1))` -/
def P16827602156646223610.Spec : Prop :=
  ∀ n, P16827602156646223610.a n = A108586 (n + 1)

theorem P16827602156646223610.correct : P16827602156646223610.Spec := by
  intro n
  simp only [A108586, Nat.add_sub_cancel]

end A108586

/-! ## A108586.P10231435013662379129

`lt[floor(sin(n+1)), sin(n)]`
-/

namespace A108586.P10231435013662379129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n + 1 : ℝ)⌋

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A108586.P10231435013662379129

namespace A108586

/-- `lt[floor(sin(n+1)), sin(n)]` -/
def P10231435013662379129.Spec : Prop :=
  ∀ n, (P10231435013662379129.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P5750820386387577893

`lt[sin(n+1), ceil(sin(n))]`
-/

namespace A108586.P5750820386387577893
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A108586.P5750820386387577893

namespace A108586

/-- `lt[sin(n+1), ceil(sin(n))]` -/
def P5750820386387577893.Spec : Prop :=
  ∀ n, (P5750820386387577893.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P7690384778182453529

`lt[sin(n+1), sin(1)+sin(n)]`
-/

namespace A108586.P7690384778182453529
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 : ℝ) + Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108586.P7690384778182453529

namespace A108586

/-- `lt[sin(n+1), sin(1)+sin(n)]` -/
def P7690384778182453529.Spec : Prop :=
  ∀ n, (P7690384778182453529.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P3425947628303208058

`comp[A038130(n)]`
-/

namespace A108586.P3425947628303208058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038130 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108586.P3425947628303208058

namespace A108586

/-- `comp[A038130(n)]` -/
def P3425947628303208058.Spec : Prop :=
  ∀ n, (P3425947628303208058.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P10573492238096745283

`∪[A054386(n+1), A246388(n)]`
-/

namespace A108586.P10573492238096745283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246388 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108586.P10573492238096745283

namespace A108586

/-- `∪[A054386(n+1), A246388(n)]` -/
def P10573492238096745283.Spec : Prop :=
  ∀ n, (P10573492238096745283.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P6472049674258675642

`∪[A054386(n+1), A246396(n)]`
-/

namespace A108586.P6472049674258675642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108586.P6472049674258675642

namespace A108586

/-- `∪[A054386(n+1), A246396(n)]` -/
def P6472049674258675642.Spec : Prop :=
  ∀ n, (P6472049674258675642.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P630353969035527465

`∪[A070752(n+1), A246390(n)]`
-/

namespace A108586.P630353969035527465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108586.P630353969035527465

namespace A108586

/-- `∪[A070752(n+1), A246390(n)]` -/
def P630353969035527465.Spec : Prop :=
  ∀ n, (P630353969035527465.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P15978756925413123696

`∪[A332485(n+1), A246390(n)]`
-/

namespace A108586.P15978756925413123696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108586.P15978756925413123696

namespace A108586

/-- `∪[A332485(n+1), A246390(n)]` -/
def P15978756925413123696.Spec : Prop :=
  ∀ n, (P15978756925413123696.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P3663049154949317822

`∪[A026310(n+1), A054386(n+1)]`
-/

namespace A108586.P3663049154949317822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108586.P3663049154949317822

namespace A108586

/-- `∪[A026310(n+1), A054386(n+1)]` -/
def P3663049154949317822.Spec : Prop :=
  ∀ n, (P3663049154949317822.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P6419959127933480960

`∪[A054386(n+1), A070752(n+1)]`
-/

namespace A108586.P6419959127933480960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108586.P6419959127933480960

namespace A108586

/-- `∪[A054386(n+1), A070752(n+1)]` -/
def P6419959127933480960.Spec : Prop :=
  ∀ n, (P6419959127933480960.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P13168552387673098140

`∪[A246293(n+1), A054386(n+1)]`
-/

namespace A108586.P13168552387673098140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108586.P13168552387673098140

namespace A108586

/-- `∪[A246293(n+1), A054386(n+1)]` -/
def P13168552387673098140.Spec : Prop :=
  ∀ n, (P13168552387673098140.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P5477851899789535916

`∪[A054386(n+1), A246411(n+1)]`
-/

namespace A108586.P5477851899789535916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108586.P5477851899789535916

namespace A108586

/-- `∪[A054386(n+1), A246411(n+1)]` -/
def P5477851899789535916.Spec : Prop :=
  ∀ n, (P5477851899789535916.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P2667309816808178057

`∪[A246413(n+1), A054386(n+1)]`
-/

namespace A108586.P2667309816808178057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108586.P2667309816808178057

namespace A108586

/-- `∪[A246413(n+1), A054386(n+1)]` -/
def P2667309816808178057.Spec : Prop :=
  ∀ n, (P2667309816808178057.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P18148614774034744705

`∪[A054386(n+1), A277094(n+1)]`
-/

namespace A108586.P18148614774034744705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108586.P18148614774034744705

namespace A108586

/-- `∪[A054386(n+1), A277094(n+1)]` -/
def P18148614774034744705.Spec : Prop :=
  ∀ n, (P18148614774034744705.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P18269756984434114517

`lt[cos(n), cos(A000493(n))]`
-/

namespace A108586.P18269756984434114517
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A000493 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108586.P18269756984434114517

namespace A108586

/-- `lt[cos(n), cos(A000493(n))]` -/
def P18269756984434114517.Spec : Prop :=
  ∀ n, (P18269756984434114517.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P2250006809761429838

`lt[0, ∑[sin(n)]]`
-/

namespace A108586.P2250006809761429838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A108586.P2250006809761429838

namespace A108586

/-- `lt[0, ∑[sin(n)]]` -/
def P2250006809761429838.Spec : Prop :=
  ∀ n, (P2250006809761429838.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P18096515576557837630

`lt[1, ∏[exp(sin(n))]]`
-/

namespace A108586.P18096515576557837630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.sin (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A108586.P18096515576557837630

namespace A108586

/-- `lt[1, ∏[exp(sin(n))]]` -/
def P18096515576557837630.Spec : Prop :=
  ∀ n, (P18096515576557837630.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P5178083439127320856

`lt[Δ[sin(n)], sin(1)]`
-/

namespace A108586.P5178083439127320856
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A108586.P5178083439127320856

namespace A108586

/-- `lt[Δ[sin(n)], sin(1)]` -/
def P5178083439127320856.Spec : Prop :=
  ∀ n, (P5178083439127320856.a n : ℤ) = A108586 (n + 1)

end A108586

/-! ## A108586.P13807480566650841250

`A108592(A038130(n+1))`
-/

namespace A108586.P13807480566650841250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108592 (A038130 (n + 1)).toNat

end

end A108586.P13807480566650841250

namespace A108586

/-- `A108592(A038130(n+1))` -/
def P13807480566650841250.Spec : Prop :=
  ∀ n, P13807480566650841250.a n = A108586 (n + 1)

end A108586

/-!
# A108587: a(n) = floor(n/(1-sin(1))).

The programs for A108587, the canonical program `A108587.P12607068357851298065` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108587 has offset 1).

The definition of A108587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/(1-sin(1)))` (program `A108587.P12607068357851298065`, by `A108587.P12607068357851298065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108587.P12607068357851298065

`floor((n+1)/(1-sin(1)))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108587

/-- `floor((n+1)/(1-sin(1)))` -/
def P12607068357851298065.Spec : Prop :=
  ∀ n, P12607068357851298065.a n = A108587 (n + 1)

theorem P12607068357851298065.correct : P12607068357851298065.Spec := by
  intro n
  simp only [A108587, Nat.add_sub_cancel]

end A108587

/-! ## A108587.P13648341443192064300

`comp[floor(n/sin(1))]`
-/

namespace A108587.P13648341443192064300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108587.P13648341443192064300

namespace A108587

/-- `comp[floor(n/sin(1))]` -/
def P13648341443192064300.Spec : Prop :=
  ∀ n, (P13648341443192064300.a n : ℤ) = A108587 (n + 1)

end A108587

/-! ## A108587.P14953782428364818726

`abs(ceil((n+1)/(sin(1)-1)))`
-/

namespace A108587.P14953782428364818726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n + 1 : ℝ) / (Real.sin (1 : ℝ) - 1)⌉|

end

end A108587.P14953782428364818726

namespace A108587

/-- `abs(ceil((n+1)/(sin(1)-1)))` -/
def P14953782428364818726.Spec : Prop :=
  ∀ n, P14953782428364818726.a n = A108587 (n + 1)

end A108587

/-! ## A108587.P10783004939458447396

`-ceil((n+1)/(sin(1)-1))`
-/

namespace A108587.P10783004939458447396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n + 1 : ℝ) / (Real.sin (1 : ℝ) - 1)⌉

end

end A108587.P10783004939458447396

namespace A108587

/-- `-ceil((n+1)/(sin(1)-1))` -/
def P10783004939458447396.Spec : Prop :=
  ∀ n, P10783004939458447396.a n = A108587 (n + 1)

end A108587

/-! ## A108587.P12623077165716820319

`record[A108593(n+1)]`
-/

namespace A108587.P12623077165716820319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108587.P12623077165716820319

namespace A108587

/-- `record[A108593(n+1)]` -/
def P12623077165716820319.Spec : Prop :=
  ∀ n, P12623077165716820319.a n = A108587 (n + 1)

end A108587

/-! ## A108587.P188835520006433219

`A108593(A108120(n+1))`
-/

namespace A108587.P188835520006433219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (A108120 (n + 1)).toNat

end

end A108587.P188835520006433219

namespace A108587

/-- `A108593(A108120(n+1))` -/
def P188835520006433219.Spec : Prop :=
  ∀ n, P188835520006433219.a n = A108587 (n + 1)

end A108587

/-! ## A108587.P11267374315163515287

`A108593(A108611(n)+1+n)`
-/

namespace A108587.P11267374315163515287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (A108611 n + 1 + (n : ℤ)).toNat

end

end A108587.P11267374315163515287

namespace A108587

/-- `A108593(A108611(n)+1+n)` -/
def P11267374315163515287.Spec : Prop :=
  ∀ n, P11267374315163515287.a n = A108587 (n + 1)

end A108587

/-! ## A108587.P12668348023767536360

`A324902(A155024(n+1))+A059555(A059558(n+1))`
-/

namespace A108587.P12668348023767536360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324902 (A155024 (n + 1)).toNat + A059555 (A059558 (n + 1)).toNat

end

end A108587.P12668348023767536360

namespace A108587

/-- `A324902(A155024(n+1))+A059555(A059558(n+1))` -/
def P12668348023767536360.Spec : Prop :=
  ∀ n, P12668348023767536360.a n = A108587 (n + 1)

end A108587

/-! ## A108587.P15087872054027807171

`A059555(4*(n+1))%A089712(n+1)`
-/

namespace A108587.P15087872054027807171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059555 (4 * (n + 1))) (A089712 (n + 1))

end

end A108587.P15087872054027807171

namespace A108587

/-- `A059555(4*(n+1))%A089712(n+1)` -/
def P15087872054027807171.Spec : Prop :=
  ∀ n, P15087872054027807171.a n = A108587 (n + 1)

end A108587

/-! ## A108587.P5293424416729033611

`A108593(A108612(n+1)/(n+1))`
-/

namespace A108587.P5293424416729033611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (SequenceMachineLib.roundAway ((A108612 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A108587.P5293424416729033611

namespace A108587

/-- `A108593(A108612(n+1)/(n+1))` -/
def P5293424416729033611.Spec : Prop :=
  ∀ n, P5293424416729033611.a n = A108587 (n + 1)

end A108587

/-!
# A108588: Numbers k such that 10*k + 97 is prime.

The programs for A108588, the canonical program `A108588.P7215769571112862849` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108588 has offset 1).

The definition of A108588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108588.P7215769571112862849

`A102342(n+6)-9`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108588

/-- `A102342(n+6)-9` -/
def P7215769571112862849.Spec : Prop :=
  ∀ n, P7215769571112862849.a n = A108588 (n + 1)

theorem P7215769571112862849.correct : P7215769571112862849.Spec := by
  intro n
  simp only [A108588, Nat.add_sub_cancel]

end A108588

/-! ## A108588.P803846825714888822

`A024914(A020715(n))-10`
-/

namespace A108588.P803846825714888822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (A020715 n).toNat - 10

end

end A108588.P803846825714888822

namespace A108588

/-- `A024914(A020715(n))-10` -/
def P803846825714888822.Spec : Prop :=
  ∀ n, P803846825714888822.a n = A108588 (n + 1)

end A108588

/-! ## A108588.P12444614759311093256

`eq[1, A001222(10*n+97)]`
-/

namespace A108588.P12444614759311093256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 97)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108588.P12444614759311093256

namespace A108588

/-- `eq[1, A001222(10*n+97)]` -/
def P12444614759311093256.Spec : Prop :=
  ∀ n, (P12444614759311093256.a n : ℤ) = A108588 (n + 1)

end A108588

/-! ## A108588.P13341992225312684385

`eq[2, A000005(10*n+97)]`
-/

namespace A108588.P13341992225312684385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 97)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108588.P13341992225312684385

namespace A108588

/-- `eq[2, A000005(10*n+97)]` -/
def P13341992225312684385.Spec : Prop :=
  ∀ n, (P13341992225312684385.a n : ℤ) = A108588 (n + 1)

end A108588

/-! ## A108588.P18414437880199838615

`eq[A000010(A017353(n+9)), A017341(n+9)]`
-/

namespace A108588.P18414437880199838615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017353 (n + 9)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108588.P18414437880199838615

namespace A108588

/-- `eq[A000010(A017353(n+9)), A017341(n+9)]` -/
def P18414437880199838615.Spec : Prop :=
  ∀ n, (P18414437880199838615.a n : ℤ) = A108588 (n + 1)

end A108588

/-! ## A108588.P14541370372531029695

`eq[1, A281680(A016885(n+9))]`
-/

namespace A108588.P14541370372531029695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A016885 (n + 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108588.P14541370372531029695

namespace A108588

/-- `eq[1, A281680(A016885(n+9))]` -/
def P14541370372531029695.Spec : Prop :=
  ∀ n, (P14541370372531029695.a n : ℤ) = A108588 (n + 1)

end A108588

/-!
# A108589: a(n) = floor(n*Pi/(Pi-2)).

The programs for A108589, the canonical program `A108589.P7630648566228244449` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108589 has offset 1).

The definition of A108589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*π/(π-2))` (program `A108589.P7630648566228244449`, by `A108589.P7630648566228244449.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108589.P7630648566228244449

`floor((n+1)*π/(π-2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108589

/-- `floor((n+1)*π/(π-2))` -/
def P7630648566228244449.Spec : Prop :=
  ∀ n, P7630648566228244449.a n = A108589 (n + 1)

theorem P7630648566228244449.correct : P7630648566228244449.Spec := by
  intro n
  simp only [A108589, Nat.add_sub_cancel]

end A108589

/-! ## A108589.P5318048430493988023

`comp[floor(n*acos(0))]`
-/

namespace A108589.P5318048430493988023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.arccos (0 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108589.P5318048430493988023

namespace A108589

/-- `comp[floor(n*acos(0))]` -/
def P5318048430493988023.Spec : Prop :=
  ∀ n, (P5318048430493988023.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P16078329323664489995

`comp[floor(n*asin(1))]`
-/

namespace A108589.P16078329323664489995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.arcsin (1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108589.P16078329323664489995

namespace A108589

/-- `comp[floor(n*asin(1))]` -/
def P16078329323664489995.Spec : Prop :=
  ∀ n, (P16078329323664489995.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P3166477483503367707

`comp[floor(2*n*atan(1))]`
-/

namespace A108589.P3166477483503367707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) * Real.arctan (1 : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108589.P3166477483503367707

namespace A108589

/-- `comp[floor(2*n*atan(1))]` -/
def P3166477483503367707.Spec : Prop :=
  ∀ n, (P3166477483503367707.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P15230287987266633513

`comp[floor(2*n*acot(1))]`
-/

namespace A108589.P15230287987266633513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) * SequenceMachineLib.acot (1 : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108589.P15230287987266633513

namespace A108589

/-- `comp[floor(2*n*acot(1))]` -/
def P15230287987266633513.Spec : Prop :=
  ∀ n, (P15230287987266633513.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P18023328931868032515

`comp[round(n*atan(2*n))]`
-/

namespace A108589.P18023328931868032515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.arctan (2 * n : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108589.P18023328931868032515

namespace A108589

/-- `comp[round(n*atan(2*n))]` -/
def P18023328931868032515.Spec : Prop :=
  ∀ n, (P18023328931868032515.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P3779630394258092931

`lt[cot(2*(n+1)), cot(2)]`
-/

namespace A108589.P3779630394258092931
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (2 * (n + 1) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108589.P3779630394258092931

namespace A108589

/-- `lt[cot(2*(n+1)), cot(2)]` -/
def P3779630394258092931.Spec : Prop :=
  ∀ n, (P3779630394258092931.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P7460055076077833715

`lt[abs(cos(2*n+1)), cos(1)]`
-/

namespace A108589.P7460055076077833715
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (2 * n + 1 : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108589.P7460055076077833715

namespace A108589

/-- `lt[abs(cos(2*n+1)), cos(1)]` -/
def P7460055076077833715.Spec : Prop :=
  ∀ n, (P7460055076077833715.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P4023043465542013446

`lt[sin(1), abs(sin(2*n+1))]`
-/

namespace A108589.P4023043465542013446
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin (2 * n + 1 : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108589.P4023043465542013446

namespace A108589

/-- `lt[sin(1), abs(sin(2*n+1))]` -/
def P4023043465542013446.Spec : Prop :=
  ∀ n, (P4023043465542013446.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P17447342860595922936

`lt[tan(1), abs(tan(2*n+1))]`
-/

namespace A108589.P17447342860595922936
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.tan (2 * n + 1 : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108589.P17447342860595922936

namespace A108589

/-- `lt[tan(1), abs(tan(2*n+1))]` -/
def P17447342860595922936.Spec : Prop :=
  ∀ n, (P17447342860595922936.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P8497283003429784781

`lt[tan(1)+tan(n), tan(n+1)]`
-/

namespace A108589.P8497283003429784781
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (1 : ℝ) + Real.tan (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108589.P8497283003429784781

namespace A108589

/-- `lt[tan(1)+tan(n), tan(n+1)]` -/
def P8497283003429784781.Spec : Prop :=
  ∀ n, (P8497283003429784781.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P8581671043891786300

`∪[A246442(n+1), A246451(n+1)]`
-/

namespace A108589.P8581671043891786300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108589.P8581671043891786300

namespace A108589

/-- `∪[A246442(n+1), A246451(n+1)]` -/
def P8581671043891786300.Spec : Prop :=
  ∀ n, (P8581671043891786300.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P17565628674865208925

`record[A108590(n+1)]`
-/

namespace A108589.P17565628674865208925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108589.P17565628674865208925

namespace A108589

/-- `record[A108590(n+1)]` -/
def P17565628674865208925.Spec : Prop :=
  ∀ n, P17565628674865208925.a n = A108589 (n + 1)

end A108589

/-! ## A108589.P13895051996136937628

`A108590(A140758(n+1))`
-/

namespace A108589.P13895051996136937628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108590 (A140758 (n + 1)).toNat

end

end A108589.P13895051996136937628

namespace A108589

/-- `A108590(A140758(n+1))` -/
def P13895051996136937628.Spec : Prop :=
  ∀ n, P13895051996136937628.a n = A108589 (n + 1)

end A108589

/-! ## A108589.P14786517453271384159

`comp[A140758(n)]`
-/

namespace A108589.P14786517453271384159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108589.P14786517453271384159

namespace A108589

/-- `comp[A140758(n)]` -/
def P14786517453271384159.Spec : Prop :=
  ∀ n, (P14786517453271384159.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P16142457358380006698

`∩[A054386(n+1), A258048(n)-1]`
-/

namespace A108589.P16142457358380006698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108589.P16142457358380006698

namespace A108589

/-- `∩[A054386(n+1), A258048(n)-1]` -/
def P16142457358380006698.Spec : Prop :=
  ∀ n, (P16142457358380006698.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P10447000622545167021

`A184592(Δ[n²])-n`
-/

namespace A108589.P10447000622545167021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184592 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A108589.P10447000622545167021

namespace A108589

/-- `A184592(Δ[n²])-n` -/
def P10447000622545167021.Spec : Prop :=
  ∀ n, P10447000622545167021.a n = A108589 (n + 1)

end A108589

/-! ## A108589.P2298310356685955880

`A063460(2*(n+1))-(n+1)`
-/

namespace A108589.P2298310356685955880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A108589.P2298310356685955880

namespace A108589

/-- `A063460(2*(n+1))-(n+1)` -/
def P2298310356685955880.Spec : Prop :=
  ∀ n, P2298310356685955880.a n = A108589 (n + 1)

end A108589

/-! ## A108589.P2203544017057577993

`lt[tan(1), Δ[tan(n)]]`
-/

namespace A108589.P2203544017057577993
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (1 : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108589.P2203544017057577993

namespace A108589

/-- `lt[tan(1), Δ[tan(n)]]` -/
def P2203544017057577993.Spec : Prop :=
  ∀ n, (P2203544017057577993.a n : ℤ) = A108589 (n + 1)

end A108589

/-! ## A108589.P7302017881970992089

`round(log2(A374455(n+1)))`
-/

namespace A108589.P7302017881970992089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A374455 (n + 1) : ℝ))

end

end A108589.P7302017881970992089

namespace A108589

/-- `round(log2(A374455(n+1)))` -/
def P7302017881970992089.Spec : Prop :=
  ∀ n, P7302017881970992089.a n = A108589 (n + 1)

end A108589

/-!
# A108590: Self-inverse integer permutation induced by Beatty sequences for Pi/2 and Pi/(Pi-2).

The programs for A108590, there is no canonical definition to state claims against.
-/

/-! ## A108590.P9741573018242662052

`A109233(n+1)-A044941(A094388(n))`
-/

namespace A108590.P9741573018242662052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (n + 1) - A044941 (A094388 n).toNat

end

end A108590.P9741573018242662052

/-! ## A108590.P12363217119692776931

`A109233(n+1)-A055641(A215928(n))`
-/

namespace A108590.P12363217119692776931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (n + 1) - A055641 (A215928 n).toNat

end

end A108590.P12363217119692776931

/-! ## A108590.P6339238553273631581

`A109233(n+1)-A353470(A101367(2*(n+2)))`
-/

namespace A108590.P6339238553273631581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (n + 1) - A353470 (A101367 (2 * (n + 2))).toNat

end

end A108590.P6339238553273631581

/-!
# A108591: Self-inverse integer permutation induced by Beatty sequences for Pi and Pi/(Pi-1).

The programs for A108591, there is no canonical definition to state claims against.
-/

/-! ## A108591.P16298407503461630351

`A110119(n+1)-A055641(A020753(n+1))`
-/

namespace A108591.P16298407503461630351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (n + 1) - A055641 (A020753 (n + 1)).toNat

end

end A108591.P16298407503461630351

/-! ## A108591.P14971196204393197506

`A020753(n+1)+A110119(n+1)-A052382(n+1)`
-/

namespace A108591.P14971196204393197506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (n + 1) + (A110119 (n + 1) - A052382 (n + 1))

end

end A108591.P14971196204393197506

/-! ## A108591.P6444604102905920424

`A110119(n+1)-A178498(A016921(n))`
-/

namespace A108591.P6444604102905920424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (n + 1) - A178498 (A016921 n).toNat

end

end A108591.P6444604102905920424

/-!
# A108592: Self-inverse integer permutation induced by Beatty sequences for 2*Pi and 2*Pi/(2*Pi-1).

The programs for A108592, there is no canonical definition to state claims against.
-/

/-! ## A108592.P17802438297004160730

`A108593(n+1)-A285159(A271838(3*n))`
-/

namespace A108592.P17802438297004160730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (n + 1) - A285159 (A271838 (3 * n)).toNat

end

end A108592.P17802438297004160730

/-! ## A108592.P2522256749239535976

`A108593(n+1)-A055641(A000104(n))`
-/

namespace A108592.P2522256749239535976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (n + 1) - A055641 (A000104 n).toNat

end

end A108592.P2522256749239535976

/-! ## A108592.P11108185159507769632

`A108593(n+1)-A101638(A004251(n))`
-/

namespace A108592.P11108185159507769632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (n + 1) - A101638 (A004251 n).toNat

end

end A108592.P11108185159507769632

/-! ## A108592.P12853194053775687589

`A108593(n+1)-A212619(A077866(n))`
-/

namespace A108592.P12853194053775687589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (n + 1) - A212619 (A077866 n).toNat

end

end A108592.P12853194053775687589

/-! ## A108592.P6356201804287852864

`A108593(n+1)-A010059(A000583(n+2))`
-/

namespace A108592.P6356201804287852864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (n + 1) - A010059 (A000583 (n + 2)).toNat

end

end A108592.P6356201804287852864

/-!
# A108593: Self-inverse integer permutation induced by Beatty sequences for 1/sin(1) and 1/(1-sin(1)).

The programs for A108593, there is no canonical definition to state claims against.
-/

/-! ## A108593.P13020031216414432806

`A285159(A271838(3*n))+A108592(n+1)`
-/

namespace A108593.P13020031216414432806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (A271838 (3 * n)).toNat + A108592 (n + 1)

end

end A108593.P13020031216414432806

/-! ## A108593.P17412804829211351726

`A115790(A063459(n))+A108592(A077168(n))`
-/

namespace A108593.P17412804829211351726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115790 (A063459 n).toNat + A108592 (A077168 n).toNat

end

end A108593.P17412804829211351726

/-! ## A108593.P14053539216869632815

`A108592(n+1)+A055641(A000104(n))`
-/

namespace A108593.P14053539216869632815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108592 (n + 1) + A055641 (A000104 n).toNat

end

end A108593.P14053539216869632815

/-! ## A108593.P14694856886659125578

`A188170(A331686(n+1))+A108592(n+1)`
-/

namespace A108593.P14694856886659125578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A331686 (n + 1)).toNat + A108592 (n + 1)

end

end A108593.P14694856886659125578

/-! ## A108593.P11238158531606185527

`A108592(n+1)+A101638(A004251(n))`
-/

namespace A108593.P11238158531606185527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108592 (n + 1) + A101638 (A004251 n).toNat

end

end A108593.P11238158531606185527

/-!
# A108594: Numbers k such that 10*k + 101 is prime.

The programs for A108594, the canonical program `A108594.P11342460370923421472` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108594 has offset 1).

The definition of A108594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108594.P11342460370923421472

`A024912(n+6)-10`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108594

/-- `A024912(n+6)-10` -/
def P11342460370923421472.Spec : Prop :=
  ∀ n, P11342460370923421472.a n = A108594 (n + 1)

theorem P11342460370923421472.correct : P11342460370923421472.Spec := by
  intro n
  simp only [A108594, Nat.add_sub_cancel]

end A108594

/-! ## A108594.P7840113928302748757

`eq[1, A068695(n+10)]`
-/

namespace A108594.P7840113928302748757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108594.P7840113928302748757

namespace A108594

/-- `eq[1, A068695(n+10)]` -/
def P7840113928302748757.Spec : Prop :=
  ∀ n, (P7840113928302748757.a n : ℤ) = A108594 (n + 1)

end A108594

/-! ## A108594.P18002228101559808524

`eq[1, A091088(n+10)]`
-/

namespace A108594.P18002228101559808524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108594.P18002228101559808524

namespace A108594

/-- `eq[1, A091088(n+10)]` -/
def P18002228101559808524.Spec : Prop :=
  ∀ n, (P18002228101559808524.a n : ℤ) = A108594 (n + 1)

end A108594

/-! ## A108594.P14966771818588922000

`eq[1, A001222(10*(n+10)+1)]`
-/

namespace A108594.P14966771818588922000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * (n + 10) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108594.P14966771818588922000

namespace A108594

/-- `eq[1, A001222(10*(n+10)+1)]` -/
def P14966771818588922000.Spec : Prop :=
  ∀ n, (P14966771818588922000.a n : ℤ) = A108594 (n + 1)

end A108594

/-! ## A108594.P17319487811580933592

`eq[2, A000005(10*(n+10)+1)]`
-/

namespace A108594.P17319487811580933592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (n + 10) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108594.P17319487811580933592

namespace A108594

/-- `eq[2, A000005(10*(n+10)+1)]` -/
def P17319487811580933592.Spec : Prop :=
  ∀ n, (P17319487811580933592.a n : ℤ) = A108594 (n + 1)

end A108594

/-! ## A108594.P7887766672830333520

`eq[10*(n+10)+1, A006530(10*(n+10)+1)]`
-/

namespace A108594.P7887766672830333520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 10) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * (n + 10) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108594.P7887766672830333520

namespace A108594

/-- `eq[10*(n+10)+1, A006530(10*(n+10)+1)]` -/
def P7887766672830333520.Spec : Prop :=
  ∀ n, (P7887766672830333520.a n : ℤ) = A108594 (n + 1)

end A108594

/-! ## A108594.P147423475554705677

`eq[10*(n+10)+1, A020639(10*(n+10)+1)]`
-/

namespace A108594.P147423475554705677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 10) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * (n + 10) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108594.P147423475554705677

namespace A108594

/-- `eq[10*(n+10)+1, A020639(10*(n+10)+1)]` -/
def P147423475554705677.Spec : Prop :=
  ∀ n, (P147423475554705677.a n : ℤ) = A108594 (n + 1)

end A108594

/-! ## A108594.P15696995380752325076

`eq[10*(n+10)+1, A014963(10*(n+10)+1)]`
-/

namespace A108594.P15696995380752325076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 10) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 10) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108594.P15696995380752325076

namespace A108594

/-- `eq[10*(n+10)+1, A014963(10*(n+10)+1)]` -/
def P15696995380752325076.Spec : Prop :=
  ∀ n, (P15696995380752325076.a n : ℤ) = A108594 (n + 1)

end A108594

/-! ## A108594.P17121098688664688984

`eq[1, A088782(n+10)]`
-/

namespace A108594.P17121098688664688984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088782 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108594.P17121098688664688984

namespace A108594

/-- `eq[1, A088782(n+10)]` -/
def P17121098688664688984.Spec : Prop :=
  ∀ n, (P17121098688664688984.a n : ℤ) = A108594 (n + 1)

end A108594

/-!
# A108595: Numbers k such that 10*k + 103 is prime.

The programs for A108595, the canonical program `A108595.P5830331830864878917` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108595 has offset 1).

The definition of A108595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108595.P5830331830864878917

`A102338(n+8)-10`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108595

/-- `A102338(n+8)-10` -/
def P5830331830864878917.Spec : Prop :=
  ∀ n, P5830331830864878917.a n = A108595 (n + 1)

theorem P5830331830864878917.correct : P5830331830864878917.Spec := by
  intro n
  simp only [A108595, Nat.add_sub_cancel]

end A108595

/-! ## A108595.P3555447914075056652

`A024913(n+8)-11`
-/

namespace A108595.P3555447914075056652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 8) - 11

end

end A108595.P3555447914075056652

namespace A108595

/-- `A024913(n+8)-11` -/
def P3555447914075056652.Spec : Prop :=
  ∀ n, P3555447914075056652.a n = A108595 (n + 1)

end A108595

/-! ## A108595.P7664349668063309338

`eq[3, A096915(n+10)]`
-/

namespace A108595.P7664349668063309338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108595.P7664349668063309338

namespace A108595

/-- `eq[3, A096915(n+10)]` -/
def P7664349668063309338.Spec : Prop :=
  ∀ n, (P7664349668063309338.a n : ℤ) = A108595 (n + 1)

end A108595

/-! ## A108595.P9790755263561278100

`eq[2, A000005(A017305(n+10))]`
-/

namespace A108595.P9790755263561278100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017305 (n + 10)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108595.P9790755263561278100

namespace A108595

/-- `eq[2, A000005(A017305(n+10))]` -/
def P9790755263561278100.Spec : Prop :=
  ∀ n, (P9790755263561278100.a n : ℤ) = A108595 (n + 1)

end A108595

/-! ## A108595.P8074635771750713149

`A004526(A087505(n+8))-10`
-/

namespace A108595.P8074635771750713149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A087505 (n + 8)).toNat - 10

end

end A108595.P8074635771750713149

namespace A108595

/-- `A004526(A087505(n+8))-10` -/
def P8074635771750713149.Spec : Prop :=
  ∀ n, P8074635771750713149.a n = A108595 (n + 1)

end A108595

/-! ## A108595.P6489094598898756997

`eq[3, A020483(A008706(n+10))]`
-/

namespace A108595.P6489094598898756997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A008706 (n + 10)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108595.P6489094598898756997

namespace A108595

/-- `eq[3, A020483(A008706(n+10))]` -/
def P6489094598898756997.Spec : Prop :=
  ∀ n, (P6489094598898756997.a n : ℤ) = A108595 (n + 1)

end A108595

/-! ## A108595.P1236715483036145604

`eq[2, A245509(10*(n+10)+2)]`
-/

namespace A108595.P1236715483036145604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245509 (10 * (n + 10) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108595.P1236715483036145604

namespace A108595

/-- `eq[2, A245509(10*(n+10)+2)]` -/
def P1236715483036145604.Spec : Prop :=
  ∀ n, (P1236715483036145604.a n : ℤ) = A108595 (n + 1)

end A108595

/-! ## A108595.P4723567334921276462

`eq[4, A257231(10*(n+10)+1)]`
-/

namespace A108595.P4723567334921276462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257231 (10 * (n + 10) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108595.P4723567334921276462

namespace A108595

/-- `eq[4, A257231(10*(n+10)+1)]` -/
def P4723567334921276462.Spec : Prop :=
  ∀ n, (P4723567334921276462.a n : ℤ) = A108595 (n + 1)

end A108595

/-! ## A108595.P9921386828184269212

`eq[1, A295335(A017293(n+10))]`
-/

namespace A108595.P9921386828184269212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 (A017293 (n + 10)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108595.P9921386828184269212

namespace A108595

/-- `eq[1, A295335(A017293(n+10))]` -/
def P9921386828184269212.Spec : Prop :=
  ∀ n, (P9921386828184269212.a n : ℤ) = A108595 (n + 1)

end A108595

/-!
# A108598: a(n) = floor(n*((5+sqrt(5))/4)).

The programs for A108598, the canonical program `A108598.P13240507923519069860` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108598 has offset 1).

The definition of A108598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(5+sqrt(5))/4)` (program `A108598.P13240507923519069860`, by `A108598.P13240507923519069860.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108598.P13240507923519069860

`floor((n+1)*(5+sqrt(5))/4)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108598

/-- `floor((n+1)*(5+sqrt(5))/4)` -/
def P13240507923519069860.Spec : Prop :=
  ∀ n, P13240507923519069860.a n = A108598 (n + 1)

theorem P13240507923519069860.correct : P13240507923519069860.Spec := by
  intro n
  simp only [A108598, Nat.add_sub_cancel]

end A108598

/-! ## A108598.P9019974617018392209

`n+1+floor((n+1)*cos(π/5))`
-/

namespace A108598.P9019974617018392209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌊(n + 1 : ℝ) * Real.cos (Real.pi / 5)⌋

end

end A108598.P9019974617018392209

namespace A108598

/-- `n+1+floor((n+1)*cos(π/5))` -/
def P9019974617018392209.Spec : Prop :=
  ∀ n, P9019974617018392209.a n = A108598 (n + 1)

end A108598

/-! ## A108598.P17799338249380359159

`round(ceil(lcm(2, 2*n)+ϕ*(n+1))/2)`
-/

namespace A108598.P17799338249380359159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈(Nat.lcm 2 (2 * n) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌉ : ℚ) / 2)

end

end A108598.P17799338249380359159

namespace A108598

/-- `round(ceil(lcm(2, 2*n)+ϕ*(n+1))/2)` -/
def P17799338249380359159.Spec : Prop :=
  ∀ n, P17799338249380359159.a n = A108598 (n + 1)

end A108598

/-! ## A108598.P17407371397596913023

`∑[3-Δ[A195122(n)]]`
-/

namespace A108598.P17407371397596913023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108598.P17407371397596913023

namespace A108598

/-- `∑[3-Δ[A195122(n)]]` -/
def P17407371397596913023.Spec : Prop :=
  ∀ n, P17407371397596913023.a n = A108598 (n + 1)

end A108598

/-! ## A108598.P13950212526331866482

`ceil(A054770(n+1)/2)`
-/

namespace A108598.P13950212526331866482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054770 (n + 1) : ℚ) / 2⌉

end

end A108598.P13950212526331866482

namespace A108598

/-- `ceil(A054770(n+1)/2)` -/
def P13950212526331866482.Spec : Prop :=
  ∀ n, P13950212526331866482.a n = A108598 (n + 1)

end A108598

/-! ## A108598.P3204182105820177595

`comp[A190511(n+1)]+1`
-/

namespace A108598.P3204182105820177595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A108598.P3204182105820177595

namespace A108598

/-- `comp[A190511(n+1)]+1` -/
def P3204182105820177595.Spec : Prop :=
  ∀ n, (P3204182105820177595.a n : ℤ) = A108598 (n + 1)

end A108598

/-! ## A108598.P364491497182784129

`∑[char[A001961(n+1)]+1]`
-/

namespace A108598.P364491497182784129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108598.P364491497182784129

namespace A108598

/-- `∑[char[A001961(n+1)]+1]` -/
def P364491497182784129.Spec : Prop :=
  ∀ n, (P364491497182784129.a n : ℤ) = A108598 (n + 1)

end A108598

/-! ## A108598.P14122416238366947914

`comp[A022839(n+1)-1]+1`
-/

namespace A108598.P14122416238366947914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A108598.P14122416238366947914

namespace A108598

/-- `comp[A022839(n+1)-1]+1` -/
def P14122416238366947914.Spec : Prop :=
  ∀ n, (P14122416238366947914.a n : ℤ) = A108598 (n + 1)

end A108598

/-! ## A108598.P7852383030814914866

`ceil((A001950(n+1)+n)/2)`
-/

namespace A108598.P7852383030814914866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001950 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A108598.P7852383030814914866

namespace A108598

/-- `ceil((A001950(n+1)+n)/2)` -/
def P7852383030814914866.Spec : Prop :=
  ∀ n, P7852383030814914866.a n = A108598 (n + 1)

end A108598

/-! ## A108598.P896159803075336723

`ceil((A287726(n+1)-n)/2)`
-/

namespace A108598.P896159803075336723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A287726 (n + 1) - (n : ℤ) : ℚ) / 2⌉

end

end A108598.P896159803075336723

namespace A108598

/-- `ceil((A287726(n+1)-n)/2)` -/
def P896159803075336723.Spec : Prop :=
  ∀ n, P896159803075336723.a n = A108598 (n + 1)

end A108598

/-! ## A108598.P2444722159212541494

`∑[char[comp[A001962(n+1)]]]+n`
-/

namespace A108598.P2444722159212541494
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A108598.P2444722159212541494

namespace A108598

/-- `∑[char[comp[A001962(n+1)]]]+n` -/
def P2444722159212541494.Spec : Prop :=
  ∀ n, (P2444722159212541494.a n : ℤ) = A108598 (n + 1)

end A108598

/-! ## A108598.P1012910503641084653

`3*(n+1)-A195122(n+1)`
-/

namespace A108598.P1012910503641084653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A195122 (n + 1)

end

end A108598.P1012910503641084653

namespace A108598

/-- `3*(n+1)-A195122(n+1)` -/
def P1012910503641084653.Spec : Prop :=
  ∀ n, P1012910503641084653.a n = A108598 (n + 1)

end A108598

/-! ## A108598.P13932227149720898941

`∑[char[A005206(2*n+1)]+1]`
-/

namespace A108598.P13932227149720898941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108598.P13932227149720898941

namespace A108598

/-- `∑[char[A005206(2*n+1)]+1]` -/
def P13932227149720898941.Spec : Prop :=
  ∀ n, (P13932227149720898941.a n : ℤ) = A108598 (n + 1)

end A108598

/-! ## A108598.P7730348882217846451

`ceil((A000201(n+1)+Δ[n²])/2)`
-/

namespace A108598.P7730348882217846451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000201 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2⌉

end

end A108598.P7730348882217846451

namespace A108598

/-- `ceil((A000201(n+1)+Δ[n²])/2)` -/
def P7730348882217846451.Spec : Prop :=
  ∀ n, P7730348882217846451.a n = A108598 (n + 1)

end A108598

/-! ## A108598.P7131116663537652716

`comp[comp[A001950(2*(n+1))]+n-1]+1`
-/

namespace A108598.P7131116663537652716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A108598.P7131116663537652716

namespace A108598

/-- `comp[comp[A001950(2*(n+1))]+n-1]+1` -/
def P7131116663537652716.Spec : Prop :=
  ∀ n, (P7131116663537652716.a n : ℤ) = A108598 (n + 1)

end A108598

/-! ## A108598.P14908057500141907433

`A190079(n+1)-A001961(n+1)`
-/

namespace A108598.P14908057500141907433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190079 (n + 1) - A001961 (n + 1)

end

end A108598.P14908057500141907433

namespace A108598

/-- `A190079(n+1)-A001961(n+1)` -/
def P14908057500141907433.Spec : Prop :=
  ∀ n, P14908057500141907433.a n = A108598 (n + 1)

end A108598

/-! ## A108598.P13613509727006145462

`A356107(n+1)-A356105(n+1)`
-/

namespace A108598.P13613509727006145462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356107 (n + 1) - A356105 (n + 1)

end

end A108598.P13613509727006145462

namespace A108598

/-- `A356107(n+1)-A356105(n+1)` -/
def P13613509727006145462.Spec : Prop :=
  ∀ n, P13613509727006145462.a n = A108598 (n + 1)

end A108598

/-! ## A108598.P13810431228655925753

`∪[A184586(n+1), A194152(n+1)]`
-/

namespace A108598.P13810431228655925753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108598.P13810431228655925753

namespace A108598

/-- `∪[A184586(n+1), A194152(n+1)]` -/
def P13810431228655925753.Spec : Prop :=
  ∀ n, (P13810431228655925753.a n : ℤ) = A108598 (n + 1)

end A108598

/-! ## A108598.P6083527934482761676

`∪[A190511(n+1), A356220(n+1)]`
-/

namespace A108598.P6083527934482761676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A108598.P6083527934482761676

namespace A108598

/-- `∪[A190511(n+1), A356220(n+1)]` -/
def P6083527934482761676.Spec : Prop :=
  ∀ n, (P6083527934482761676.a n : ℤ) = A108598 (n + 1)

end A108598

