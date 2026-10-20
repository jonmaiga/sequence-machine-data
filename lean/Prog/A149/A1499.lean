import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A149900: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 0, 0), (1, 0, 1)}.

The programs for A149900, there is no canonical definition to state claims against.
-/

/-! ## A149900.P16872786693655466579

`A004396(A150120(n)+A088699(n))`
-/

namespace A149900.P16872786693655466579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A150120 n + A088699 n).toNat

end

end A149900.P16872786693655466579

/-! ## A149900.P6400274055560384583

`A004396(A150120(n)+A089688(n))`
-/

namespace A149900.P6400274055560384583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A150120 n + A089688 n).toNat

end

end A149900.P6400274055560384583

/-! ## A149900.P12265426786896297351

`A004396(A193592(n)+A150120(n))`
-/

namespace A149900.P12265426786896297351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A193592 n + A150120 n).toNat

end

end A149900.P12265426786896297351

/-! ## A149900.P866809430637934317

`A004396(or(A034886(n), A150120(n)))`
-/

namespace A149900.P866809430637934317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lor (A034886 n) (A150120 n)).toNat

end

end A149900.P866809430637934317

/-!
# A149901: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (0, 1, 1), (1, -1, -1)}.

The programs for A149901, there is no canonical definition to state claims against.
-/

/-! ## A149901.P3158599314218182612

`A151663(A087944(n)+n)`
-/

namespace A149901.P3158599314218182612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151663 (A087944 n + (n : ℤ)).toNat

end

end A149901.P3158599314218182612

/-! ## A149901.P17491441334785480508

`A263270(A079162(n)+A052984(n))`
-/

namespace A149901.P17491441334785480508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A079162 n + A052984 n).toNat

end

end A149901.P17491441334785480508

/-! ## A149901.P5816664970344549624

`or(A002262(A060053(n)), A149891(n))`
-/

namespace A149901.P5816664970344549624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A060053 n).toNat) (A149891 n)

end

end A149901.P5816664970344549624

/-!
# A149902: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 0, 0), (1, 0, 1)}.

The programs for A149902, there is no canonical definition to state claims against.
-/

/-! ## A149902.P81847256835581387

`A189176(n)-A139353(A275557(n))`
-/

namespace A149902.P81847256835581387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 n - A139353 (A275557 n).toNat

end

end A149902.P81847256835581387

/-! ## A149902.P5285836868361248442

`A149924(n)-A307598(A057780(n+1))`
-/

namespace A149902.P5285836868361248442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149924 n - A307598 (A057780 (n + 1)).toNat

end

end A149902.P5285836868361248442

/-!
# A149903: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (0, 1, 1), (1, -1, -1)}.

The programs for A149903, there is no canonical definition to state claims against.
-/

/-! ## A149903.P13272142354008296817

`A256502(A360153(n)+A001405(n))`
-/

namespace A149903.P13272142354008296817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A360153 n + A001405 n).toNat

end

end A149903.P13272142354008296817

/-! ## A149903.P16824600420060915061

`A276798(A302645(n+2)+A080888(n))`
-/

namespace A149903.P16824600420060915061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A302645 (n + 2) + A080888 n).toNat

end

end A149903.P16824600420060915061

/-!
# A149904: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (0, 1, 1), (1, -1, -1)}.

The programs for A149904, there is no canonical definition to state claims against.
-/

/-! ## A149904.P10726156275250937436

`∑[A248610(∑[A148973(n)])]`
-/

namespace A149904.P10726156275250937436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148973 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149904.P10726156275250937436

/-! ## A149904.P16295364855450073814

`A110656(∑[4*A150084(n)])`
-/

namespace A149904.P16295364855450073814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A150084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149904.P16295364855450073814

/-! ## A149904.P15870988790962763283

`A008679(7*A047095(n)+6)`
-/

namespace A149904.P15870988790962763283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (7 * A047095 n + 6).toNat

end

end A149904.P15870988790962763283

/-!
# A149905: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A149905, there is no canonical definition to state claims against.
-/

/-! ## A149905.P8514491642195557452

`A127763(xor(∑{d}[n+1, #]-(n+1), A151098(n)))`
-/

namespace A149905.P8514491642195557452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (Int.xor (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (A151098 n)).toNat

end

end A149905.P8514491642195557452

/-! ## A149905.P13654716997714445085

`A105513(A074506(n))+A000041(n)`
-/

namespace A149905.P13654716997714445085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105513 (A074506 n).toNat + A000041 n

end

end A149905.P13654716997714445085

/-! ## A149905.P3579334428848055865

`A156562(A382181(n)+A001791(n))`
-/

namespace A149905.P3579334428848055865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A382181 n + A001791 n).toNat

end

end A149905.P3579334428848055865

/-!
# A149907: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, 0, 0)}.

The programs for A149907, there is no canonical definition to state claims against.
-/

/-! ## A149907.P11284427662541647270

`A080405(A339037(n+1)+1)`
-/

namespace A149907.P11284427662541647270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (A339037 (n + 1) + 1).toNat

end

end A149907.P11284427662541647270

/-! ## A149907.P3084373904812628151

`A319559(n)+A080405(A014445(n))`
-/

namespace A149907.P3084373904812628151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319559 n + A080405 (A014445 n).toNat

end

end A149907.P3084373904812628151

/-!
# A149908: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (0, 0, 1), (1, 0, 0)}.

The programs for A149908, there is no canonical definition to state claims against.
-/

/-! ## A149908.P697912752561250492

`A149909(A073788(n))`
-/

namespace A149908.P697912752561250492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149909 (A073788 n).toNat

end

end A149908.P697912752561250492

/-! ## A149908.P16158921360397995598

`A149909(A171596(n))`
-/

namespace A149908.P16158921360397995598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149909 (A171596 n).toNat

end

end A149908.P16158921360397995598

/-! ## A149908.P16026139180886121643

`A255408(A149909(n))`
-/

namespace A149908.P16026139180886121643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A149909 n).toNat

end

end A149908.P16026139180886121643

/-!
# A149911: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, -1, -1), (1, 0, 0)}.

The programs for A149911, there is no canonical definition to state claims against.
-/

/-! ## A149911.P1608168515021543189

`A255072(A149365(n+1))`
-/

namespace A149911.P1608168515021543189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A149365 (n + 1)).toNat

end

end A149911.P1608168515021543189

/-! ## A149911.P8654182559384196806

`A077609(A381344(n))+A027941(n)`
-/

namespace A149911.P8654182559384196806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (A381344 n).toNat + A027941 n

end

end A149911.P8654182559384196806

/-! ## A149911.P8919853941587959534

`A317420(A104859(n+1)-A124765(n))`
-/

namespace A149911.P8919853941587959534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317420 (A104859 (n + 1) - A124765 n).toNat

end

end A149911.P8919853941587959534

/-!
# A149912: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A149912, there is no canonical definition to state claims against.
-/

/-! ## A149912.P5553466178845976668

`A220658(A007583(n)+A006365(n))`
-/

namespace A149912.P5553466178845976668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A007583 n + A006365 n).toNat

end

end A149912.P5553466178845976668

/-! ## A149912.P16083925165231199394

`A111858(A108080(n))+A052542(n)`
-/

namespace A149912.P16083925165231199394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111858 (A108080 n).toNat + A052542 n

end

end A149912.P16083925165231199394

/-! ## A149912.P18244694888668296568

`A067434(A289814(n)+A001077(n))`
-/

namespace A149912.P18244694888668296568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A289814 n + A001077 n).toNat

end

end A149912.P18244694888668296568

/-!
# A149913: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A149913, there is no canonical definition to state claims against.
-/

/-! ## A149913.P5579187618819388872

`A039946(n)+A008679(A055845(n))`
-/

namespace A149913.P5579187618819388872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039946 n + A008679 (A055845 n).toNat

end

end A149913.P5579187618819388872

/-! ## A149913.P18267876899594087817

`A054899(A000079(n)²)+A018000(n)`
-/

namespace A149913.P18267876899594087817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A000079 n ^ 2).toNat + A018000 n

end

end A149913.P18267876899594087817

/-! ## A149913.P5948097993209004859

`A334043(n+1)+A247908(A000984(n))`
-/

namespace A149913.P5948097993209004859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334043 (n + 1) + A247908 (A000984 n).toNat

end

end A149913.P5948097993209004859

/-!
# A149914: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (0, 1, 0), (1, 0, 0)}.

The programs for A149914, there is no canonical definition to state claims against.
-/

/-! ## A149914.P5612834439594844841

`A109610(A371979(n+1))`
-/

namespace A149914.P5612834439594844841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109610 (A371979 (n + 1)).toNat

end

end A149914.P5612834439594844841

/-! ## A149914.P1147280313129726921

`A097992(Δ[A018075(n)²])`
-/

namespace A149914.P1147280313129726921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018075 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (f1 (n + 1) - f1 n).toNat

end

end A149914.P1147280313129726921

/-! ## A149914.P13702796266611370991

`or(A100470(A059951(n+1)), A151280(n))`
-/

namespace A149914.P13702796266611370991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100470 (A059951 (n + 1)).toNat) (A151280 n)

end

end A149914.P13702796266611370991

/-!
# A149915: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, 0, 1), (1, 0, 0)}.

The programs for A149915, there is no canonical definition to state claims against.
-/

/-! ## A149915.P3145538879797026488

`A149916(n)-A185284((1-n)²)`
-/

namespace A149915.P3145538879797026488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149916 n - A185284 ((1 - (n : ℤ)) ^ 2).toNat

end

end A149915.P3145538879797026488

/-! ## A149915.P17038379848988918086

`or(A111660(A317714(n+1)), A149881(n))`
-/

namespace A149915.P17038379848988918086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111660 (A317714 (n + 1)).toNat) (A149881 n)

end

end A149915.P17038379848988918086

/-! ## A149915.P16949858762538428985

`∏{p}[A149916(n)², #]`
-/

namespace A149915.P16949858762538428985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149916 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149915.P16949858762538428985

/-!
# A149916: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (0, 0, 1), (1, 0, 0)}.

The programs for A149916, there is no canonical definition to state claims against.
-/

/-! ## A149916.P3257912493076508962

`A185284(A309223(2*n+1))+A149915(n)`
-/

namespace A149916.P3257912493076508962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A309223 (2 * n + 1)).toNat + A149915 n

end

end A149916.P3257912493076508962

/-!
# A149917: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A149917, there is no canonical definition to state claims against.
-/

/-! ## A149917.P13705485167455602629

`A080907(round(sqrt(A112948(n+1))))`
-/

namespace A149917.P13705485167455602629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (SequenceMachineLib.roundAway (Real.sqrt (A112948 (n + 1) : ℝ))).toNat

end

end A149917.P13705485167455602629

/-! ## A149917.P14512248876976359745

`A040027(n)+A003285(A001861(n))`
-/

namespace A149917.P14512248876976359745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040027 n + A003285 (A001861 n).toNat

end

end A149917.P14512248876976359745

/-! ## A149917.P2132698258111143921

`A149916(n)+A010894(A052905(n))`
-/

namespace A149917.P2132698258111143921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149916 n + A010894 ((A052905 n).toNat + 21)

end

end A149917.P2132698258111143921

/-!
# A149918: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A149918, there is no canonical definition to state claims against.
-/

/-! ## A149918.P6716687860893972878

`or(A125173(A001349(n)), A149890(n))`
-/

namespace A149918.P6716687860893972878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125173 (A001349 n).toNat) (A149890 n)

end

end A149918.P6716687860893972878

/-! ## A149918.P8126697501624076694

`or(A125173(A001349(n)), A149891(n))`
-/

namespace A149918.P8126697501624076694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125173 (A001349 n).toNat) (A149891 n)

end

end A149918.P8126697501624076694

/-! ## A149918.P11841600471475763505

`or(A001221(A125814(n)), A149890(n))`
-/

namespace A149918.P11841600471475763505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A125814 n).toNat) (A149890 n)

end

end A149918.P11841600471475763505

/-!
# A149919: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149919, there is no canonical definition to state claims against.
-/

/-! ## A149919.P12416531147772958676

`A080907(A149885(n))`
-/

namespace A149919.P12416531147772958676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A149885 n).toNat

end

end A149919.P12416531147772958676

/-! ## A149919.P5889451753157472368

`A080907(A149886(n))`
-/

namespace A149919.P5889451753157472368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A149886 n).toNat

end

end A149919.P5889451753157472368

/-! ## A149919.P3052680138716465591

`A075249(A115115(n+2))`
-/

namespace A149919.P3052680138716465591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075249 (A115115 (n + 2)).toNat

end

end A149919.P3052680138716465591

/-!
# A149920: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149920, there is no canonical definition to state claims against.
-/

/-! ## A149920.P17582517347051908957

`or(A149891(n), A230194(A149891(n)))`
-/

namespace A149920.P17582517347051908957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149891 n) (A230194 (A149891 n).toNat)

end

end A149920.P17582517347051908957

/-! ## A149920.P4655613621768047475

`∑[A243283(A211192(2*(n+1)))]`
-/

namespace A149920.P4655613621768047475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A211192 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149920.P4655613621768047475

/-! ## A149920.P15051123216182770498

`A138194(A150505(n+1)+n²)`
-/

namespace A149920.P15051123216182770498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A150505 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A149920.P15051123216182770498

/-!
# A149921: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A149921, there is no canonical definition to state claims against.
-/

/-! ## A149921.P752535656832468096

`A247983(A261003(n)+n)`
-/

namespace A149921.P752535656832468096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A261003 n + (n : ℤ)).toNat

end

end A149921.P752535656832468096

/-! ## A149921.P11481887516479559576

`A075245(A001037(2*n+3)+1)`
-/

namespace A149921.P11481887516479559576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075245 (A001037 (2 * n + 3) + 1).toNat

end

end A149921.P11481887516479559576

/-! ## A149921.P8115776882026770433

`A008617(7*A051841(2*n+3))`
-/

namespace A149921.P8115776882026770433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (7 * A051841 (2 * n + 3)).toNat

end

end A149921.P8115776882026770433

/-!
# A149922: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149922, there is no canonical definition to state claims against.
-/

/-! ## A149922.P649268512477926991

`∑[A266348(∑[A320654(n)])]`
-/

namespace A149922.P649268512477926991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266348 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149922.P649268512477926991

/-! ## A149922.P13344392243290366402

`A339844(n)-A001222(A322137(n))`
-/

namespace A149922.P13344392243290366402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339844 n - A001222 (A322137 n).toNat

end

end A149922.P13344392243290366402

/-! ## A149922.P13282365493463105474

`or(A001222(A122898(n)), A149892(n))`
-/

namespace A149922.P13282365493463105474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A122898 n).toNat) (A149892 n)

end

end A149922.P13282365493463105474

/-!
# A149923: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A149923, there is no canonical definition to state claims against.
-/

/-! ## A149923.P9384146444118630803

`A067434(A151079(n))`
-/

namespace A149923.P9384146444118630803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A151079 n).toNat

end

end A149923.P9384146444118630803

/-! ## A149923.P11095293935976693192

`A067434(A151080(n))`
-/

namespace A149923.P11095293935976693192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A151080 n).toNat

end

end A149923.P11095293935976693192

/-! ## A149923.P1133206685774178812

`or(A006530(∏[n+3]/3), A119021(n))`
-/

namespace A149923.P1133206685774178812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3)).toNat) (A119021 n)

end

end A149923.P1133206685774178812

/-!
# A149924: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149924, there is no canonical definition to state claims against.
-/

/-! ## A149924.P11934760106770133671

`A138194(A150593(n+1))`
-/

namespace A149924.P11934760106770133671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A150593 (n + 1)).toNat

end

end A149924.P11934760106770133671

/-! ## A149924.P11056840897136719484

`A321018(A150720(n+1))`
-/

namespace A149924.P11056840897136719484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (A150720 (n + 1)).toNat

end

end A149924.P11056840897136719484

/-! ## A149924.P5463140542426272680

`A321018(A150721(n+1))`
-/

namespace A149924.P5463140542426272680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (A150721 (n + 1)).toNat

end

end A149924.P5463140542426272680

/-!
# A149925: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (0, 0, 1), (1, 0, 0)}.

The programs for A149925, there is no canonical definition to state claims against.
-/

/-! ## A149925.P9335055302755524469

`Δ[A255338(Δ[A279555(n)])]`
-/

namespace A149925.P9335055302755524469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279555 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A149925.P9335055302755524469

/-! ## A149925.P13291446959607669551

`A027073(n)+A003056(A014445(n))`
-/

namespace A149925.P13291446959607669551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027073 n + A003056 (A014445 n).toNat

end

end A149925.P13291446959607669551

/-! ## A149925.P2849580787821824633

`A062108(A230823(n)+A007863(n))`
-/

namespace A149925.P2849580787821824633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A230823 n + A007863 n).toNat

end

end A149925.P2849580787821824633

/-!
# A149926: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149926, there is no canonical definition to state claims against.
-/

/-! ## A149926.P16435396320797041238

`A264749(2*(A108080(n)+n))`
-/

namespace A149926.P16435396320797041238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (2 * (A108080 n + (n : ℤ))).toNat

end

end A149926.P16435396320797041238

/-! ## A149926.P12191471907952099723

`A194640(A308201(n)+A000984(n))`
-/

namespace A149926.P12191471907952099723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A308201 n + A000984 n).toNat

end

end A149926.P12191471907952099723

/-!
# A149927: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A149927, there is no canonical definition to state claims against.
-/

/-! ## A149927.P4877023499254236366

`A145072(∏{p}[∏{p}[n+1, #*val(n+1, #)], #]^((n+1)/∏{p}[n+1, #]))`
-/

namespace A149927.P4877023499254236366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145072 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A149927.P4877023499254236366

/-! ## A149927.P18052323543602122686

`A214701(A149932(n))`
-/

namespace A149927.P18052323543602122686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A149932 n).toNat

end

end A149927.P18052323543602122686

/-! ## A149927.P9219573923145659910

`A214701(A149933(n))`
-/

namespace A149927.P9219573923145659910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A149933 n).toNat

end

end A149927.P9219573923145659910

/-!
# A149928: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, -1, -1), (1, 0, 0)}.

The programs for A149928, there is no canonical definition to state claims against.
-/

/-! ## A149928.P6145950617527887587

`∑[A261585(9*A120305(n))]`
-/

namespace A149928.P6145950617527887587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (9 * A120305 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149928.P6145950617527887587

/-! ## A149928.P39436706719449306

`A214701(A149938(n)+char[6])`
-/

namespace A149928.P39436706719449306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A149938 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A149928.P39436706719449306

/-! ## A149928.P15789259818920785368

`A008679(A148449(n+3)+1)`
-/

namespace A149928.P15789259818920785368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A148449 (n + 3) + 1).toNat

end

end A149928.P15789259818920785368

/-!
# A149929: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A149929, there is no canonical definition to state claims against.
-/

/-! ## A149929.P15462977805113904218

`A249695(A053527(n))+A003430(n+1)`
-/

namespace A149929.P15462977805113904218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249695 (A053527 n).toNat + A003430 (n + 1)

end

end A149929.P15462977805113904218

/-! ## A149929.P2319161460614800256

`round((A003255(C(2*n, n)+n+1)+1)/4)`
-/

namespace A149929.P2319161460614800256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003255 (Nat.choose (2 * n) n + (n + 1)) + 1 : ℚ) / 4)

end

end A149929.P2319161460614800256

/-! ## A149929.P1650459773337552884

`A189176(n)+A185284(n²)-char[4]`
-/

namespace A149929.P1650459773337552884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 n + A185284 (n ^ 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A149929.P1650459773337552884

/-!
# A149930: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, -1, -1), (1, 0, 0)}.

The programs for A149930, there is no canonical definition to state claims against.
-/

/-! ## A149930.P10216667537581890930

`∑[A360029(round(2^(n-1)))]`
-/

namespace A149930.P10216667537581890930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360029 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149930.P10216667537581890930

/-! ## A149930.P7708141702078773496

`A054897(A188129(n)+2-n)`
-/

namespace A149930.P7708141702078773496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (A188129 n + (2 - (n : ℤ))).toNat

end

end A149930.P7708141702078773496

/-! ## A149930.P6929164838688343778

`A138999(A000302(n))+A027934(n)`
-/

namespace A149930.P6929164838688343778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A000302 n).toNat + A027934 n

end

end A149930.P6929164838688343778

/-!
# A149931: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A149931, there is no canonical definition to state claims against.
-/

/-! ## A149931.P9638234638322999633

`A322058(∑[∑[n+1]]+2)`
-/

namespace A149931.P9638234638322999633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322058 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A149931.P9638234638322999633

/-! ## A149931.P13866173290824907071

`A084520(A083314(n))`
-/

namespace A149931.P13866173290824907071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084520 (A083314 n).toNat

end

end A149931.P13866173290824907071

/-! ## A149931.P1792539558489348817

`A008615(5*A150041(n))`
-/

namespace A149931.P1792539558489348817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (5 * A150041 n).toNat

end

end A149931.P1792539558489348817

/-!
# A149932: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (0, 0, 1), (1, 0, 0)}.

The programs for A149932, there is no canonical definition to state claims against.
-/

/-! ## A149932.P14344479058945431594

`A149933(A073789(n))`
-/

namespace A149932.P14344479058945431594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149933 (A073789 n).toNat

end

end A149932.P14344479058945431594

/-! ## A149932.P3132899377470170238

`A149933(A171644(n))`
-/

namespace A149932.P3132899377470170238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149933 (A171644 n).toNat

end

end A149932.P3132899377470170238

/-! ## A149932.P6630666877974199090

`A149933(A004869(n+1))`
-/

namespace A149932.P6630666877974199090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149933 (A004869 (n + 1)).toNat

end

end A149932.P6630666877974199090

/-! ## A149932.P15971287247782188980

`A149933(A004880(n+1))`
-/

namespace A149932.P15971287247782188980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149933 (A004880 (n + 1)).toNat

end

end A149932.P15971287247782188980

/-!
# A149934: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A149934, there is no canonical definition to state claims against.
-/

/-! ## A149934.P8216349375482883503

`A149900(n)+A121902(A058106(n))`
-/

namespace A149934.P8216349375482883503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149900 n + A121902 (A058106 n).toNat

end

end A149934.P8216349375482883503

/-! ## A149934.P5211145016414341435

`or(A058276(A098600(n)), A149932(n))`
-/

namespace A149934.P5211145016414341435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058276 (A098600 n).toNat) (A149932 n)

end

end A149934.P5211145016414341435

/-! ## A149934.P4945499193255848606

`A297323(A146878(n+1))+A099376(n)`
-/

namespace A149934.P4945499193255848606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A146878 (n + 1)).toNat + A099376 n

end

end A149934.P4945499193255848606

/-!
# A149935: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149935, there is no canonical definition to state claims against.
-/

/-! ## A149935.P1173622352903443062

`A177849(A058380(n))+A099376(n)`
-/

namespace A149935.P1173622352903443062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A058380 n).toNat + A099376 n

end

end A149935.P1173622352903443062

/-! ## A149935.P15732256805279145785

`A062108(A166229(n)+n)`
-/

namespace A149935.P15732256805279145785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A166229 n + (n : ℤ)).toNat

end

end A149935.P15732256805279145785

/-! ## A149935.P4828364510151580837

`A062108(or(n, A166229(n)))`
-/

namespace A149935.P4828364510151580837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Int.lor (n : ℤ) (A166229 n)).toNat

end

end A149935.P4828364510151580837

/-!
# A149936: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149936, there is no canonical definition to state claims against.
-/

/-! ## A149936.P2721680228028237886

`A220658(A083424(n))-char[6]`
-/

namespace A149936.P2721680228028237886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A083424 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A149936.P2721680228028237886

/-! ## A149936.P2831854441215717550

`A194640(A006999(n)+A000984(n))`
-/

namespace A149936.P2831854441215717550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A006999 n + A000984 n).toNat

end

end A149936.P2831854441215717550

/-! ## A149936.P7079304808284228997

`A127763(A076024(n)+A006139(n))`
-/

namespace A149936.P7079304808284228997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A076024 n + A006139 n).toNat

end

end A149936.P7079304808284228997

/-!
# A149937: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A149937, there is no canonical definition to state claims against.
-/

/-! ## A149937.P9824110397545825456

`A084510(A155179(n))`
-/

namespace A149937.P9824110397545825456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084510 (A155179 n).toNat

end

end A149937.P9824110397545825456

/-! ## A149937.P12697112660501524668

`A060384(A254030(n)/2)`
-/

namespace A149937.P12697112660501524668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (SequenceMachineLib.roundAway ((A254030 n : ℚ) / 2)).toNat

end

end A149937.P12697112660501524668

/-! ## A149937.P14465146151339897100

`A194640(A027988(n)+A000984(n))`
-/

namespace A149937.P14465146151339897100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A027988 n + A000984 n).toNat

end

end A149937.P14465146151339897100

/-!
# A149938: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A149938, there is no canonical definition to state claims against.
-/

/-! ## A149938.P5637975106400323624

`char[4]+round((A003255(C(2*n, n)+n+1)+1)/4)`
-/

namespace A149938.P5637975106400323624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((A003255 (Nat.choose (2 * n) n + (n + 1)) + 1 : ℚ) / 4)

end

end A149938.P5637975106400323624

/-! ## A149938.P8353462792137918980

`A189176(n)+A185284(n²)`
-/

namespace A149938.P8353462792137918980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 n + A185284 (n ^ 2)

end

end A149938.P8353462792137918980

/-! ## A149938.P8907759587872486664

`round(A121707(A329831(4^n)+1)/81)`
-/

namespace A149938.P8907759587872486664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A121707 (A329831 (4 ^ n) + 1).toNat : ℚ) / 81)

end

end A149938.P8907759587872486664

/-!
# A149939: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (0, 0, 1), (1, 0, 0)}.

The programs for A149939, there is no canonical definition to state claims against.
-/

/-! ## A149939.P2151217191846307737

`ceil((ceil((A135631(A174403(n))+1)/7)+1)/7)`
-/

namespace A149939.P2151217191846307737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A135631 (A174403 n).toNat + 1 : ℚ) / 7⌉ + 1 : ℚ) / 7⌉

end

end A149939.P2151217191846307737

/-! ## A149939.P7321645875674767645

`A149940(n)%p?[2^n-1]`
-/

namespace A149939.P7321645875674767645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149940 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A149939.P7321645875674767645

/-! ## A149939.P3630422000864019551

`A149940(A073788(n))`
-/

namespace A149939.P3630422000864019551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149940 (A073788 n).toNat

end

end A149939.P3630422000864019551

/-!
# A149941: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149941, there is no canonical definition to state claims against.
-/

/-! ## A149941.P3885163368900397646

`A220658(A098619(n))`
-/

namespace A149941.P3885163368900397646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A098619 n).toNat

end

end A149941.P3885163368900397646

/-! ## A149941.P1428104739310774253

`∑[A157271(∑[A149446(n)])]`
-/

namespace A149941.P1428104739310774253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149446 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149941.P1428104739310774253

/-! ## A149941.P9890077605979871783

`or(A149940(n), A185284(n²))`
-/

namespace A149941.P9890077605979871783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149940 n) (A185284 (n ^ 2))

end

end A149941.P9890077605979871783

/-!
# A149942: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A149942, there is no canonical definition to state claims against.
-/

/-! ## A149942.P7664363793442029305

`A149943(A073788(n))`
-/

namespace A149942.P7664363793442029305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149943 (A073788 n).toNat

end

end A149942.P7664363793442029305

/-! ## A149942.P9242755766947547765

`A154470(A149943(n))`
-/

namespace A149942.P9242755766947547765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A149943 n).toNat

end

end A149942.P9242755766947547765

/-! ## A149942.P6977308112428278439

`A149943(A171596(n))`
-/

namespace A149942.P6977308112428278439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149943 (A171596 n).toNat

end

end A149942.P6977308112428278439

/-!
# A149944: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A149944, there is no canonical definition to state claims against.
-/

/-! ## A149944.P7389892807683288341

`A263270(A149764(n+1))`
-/

namespace A149944.P7389892807683288341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A149764 (n + 1)).toNat

end

end A149944.P7389892807683288341

/-! ## A149944.P18187745286074915440

`A204892(A133024(2*n+1))-A014567(n+1)`
-/

namespace A149944.P18187745286074915440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A133024 (2 * n + 1)).toNat - A014567 (n + 1)

end

end A149944.P18187745286074915440

/-!
# A149945: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A149945, there is no canonical definition to state claims against.
-/

/-! ## A149945.P1680019072471726937

`A120750(A149927(n)+Δ[A308118(n+1)])`
-/

namespace A149945.P1680019072471726937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A149927 n + (f1 (n + 1) - f1 n)).toNat

end

end A149945.P1680019072471726937

/-! ## A149945.P2385845965108282766

`A036234(A212804(3*n+2))-A172471(n)`
-/

namespace A149945.P2385845965108282766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A212804 (3 * n + 2)).toNat - A172471 n

end

end A149945.P2385845965108282766

/-! ## A149945.P8689723612081415859

`A323169(n+1)+A048865(A000045(3*n+1))`
-/

namespace A149945.P8689723612081415859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1) + A048865 (A000045 (3 * n + 1)).toNat

end

end A149945.P8689723612081415859

/-!
# A149946: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A149946, there is no canonical definition to state claims against.
-/

/-! ## A149946.P13230791803703121461

`∑[A248183(A000048(2*(n+1)))]`
-/

namespace A149946.P13230791803703121461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A000048 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149946.P13230791803703121461

/-! ## A149946.P15927708142834207654

`A099384(A322380(n))+A099376(n)`
-/

namespace A149946.P15927708142834207654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 (A322380 n).toNat + A099376 n

end

end A149946.P15927708142834207654

/-! ## A149946.P1262229864905155758

`A223730(A155804(n))+A149931(n)`
-/

namespace A149946.P1262229864905155758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A155804 n).toNat + A149931 n

end

end A149946.P1262229864905155758

/-!
# A149947: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A149947, there is no canonical definition to state claims against.
-/

/-! ## A149947.P5901565066468169660

`∑[A248227(∑[A246975(n)])]`
-/

namespace A149947.P5901565066468169660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246975 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149947.P5901565066468169660

/-! ## A149947.P18192508240980979164

`A116388(n)+A008676(A072263(n))`
-/

namespace A149947.P18192508240980979164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116388 n + A008676 (A072263 n).toNat

end

end A149947.P18192508240980979164

/-! ## A149947.P5477908834611912976

`A255072(A242818(n)+A097070(n+1))`
-/

namespace A149947.P5477908834611912976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A242818 n + A097070 (n + 1)).toNat

end

end A149947.P5477908834611912976

/-!
# A149948: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A149948, there is no canonical definition to state claims against.
-/

/-! ## A149948.P4882967960682043676

`A054897(A188129(n)+A052551(n))`
-/

namespace A149948.P4882967960682043676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (A188129 n + A052551 n).toNat

end

end A149948.P4882967960682043676

/-! ## A149948.P14023917783883911880

`A149951(n)-A025442(A000699(n))`
-/

namespace A149948.P14023917783883911880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149951 n - A025442 (A000699 n).toNat

end

end A149948.P14023917783883911880

/-! ## A149948.P10756854382203470719

`A054897(or(A000217(n), A188129(n)))`
-/

namespace A149948.P10756854382203470719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (Int.lor (A000217 n) (A188129 n)).toNat

end

end A149948.P10756854382203470719

/-!
# A149949: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (0, 1, 1), (1, 0, -1)}.

The programs for A149949, there is no canonical definition to state claims against.
-/

/-! ## A149949.P17924589440395486190

`A149950(gcd(11*n, ∏{digits}[n, #]))`
-/

namespace A149949.P17924589440395486190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149950 (Nat.gcd (11 * n) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod)

end

end A149949.P17924589440395486190

/-! ## A149949.P11965557591541904845

`record[gcd(floor(n/10), A149950(n))]`
-/

namespace A149949.P11965557591541904845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 10⌋ (A149950 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A149949.P11965557591541904845

/-! ## A149949.P114382144451264209

`A149950(A002998(n))`
-/

namespace A149949.P114382144451264209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149950 (A002998 n).toNat

end

end A149949.P114382144451264209

/-! ## A149949.P5477867491498557280

`A149950(A039723(n))`
-/

namespace A149949.P5477867491498557280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149950 (A039723 n).toNat

end

end A149949.P5477867491498557280

/-! ## A149949.P12449160666239176377

`A149950(A046469(n))`
-/

namespace A149949.P12449160666239176377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149950 (A046469 n).toNat

end

end A149949.P12449160666239176377

/-!
# A149951: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A149951, there is no canonical definition to state claims against.
-/

/-! ## A149951.P4750449689452740261

`A065033(A149954(n)+A149937(n))`
-/

namespace A149951.P4750449689452740261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A149954 n + A149937 n).toNat

end

end A149951.P4750449689452740261

/-! ## A149951.P16056549789105879592

`A220658(A052990(n))`
-/

namespace A149951.P16056549789105879592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A052990 n).toNat

end

end A149951.P16056549789105879592

/-! ## A149951.P4477382355976692972

`A255072(∑[A150924(n)])`
-/

namespace A149951.P4477382355976692972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149951.P4477382355976692972

/-!
# A149952: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149952, there is no canonical definition to state claims against.
-/

/-! ## A149952.P16423931000204038349

`A337526(n+1)-Δ[A263822(n+1)]`
-/

namespace A149952.P16423931000204038349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337526 (n + 1) - (f1 (n + 1) - f1 n)

end

end A149952.P16423931000204038349

/-! ## A149952.P1288421110101436031

`A306353(A150165(n))-Δ[A263822(n+1)]`
-/

namespace A149952.P1288421110101436031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306353 (A150165 n).toNat - (f1 (n + 1) - f1 n)

end

end A149952.P1288421110101436031

/-! ## A149952.P17832379900260474108

`A189176(n)+A034333(A034329(n))`
-/

namespace A149952.P17832379900260474108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 n + A034333 (A034329 n).toNat

end

end A149952.P17832379900260474108

/-!
# A149953: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (0, 1, 1), (1, 0, -1)}.

The programs for A149953, there is no canonical definition to state claims against.
-/

/-! ## A149953.P4078275285455970872

`A149954(n)-A001899(A147719(n))`
-/

namespace A149953.P4078275285455970872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149954 n - A001899 (A147719 n).toNat

end

end A149953.P4078275285455970872

/-! ## A149953.P910013370980630405

`A149954(n)-A004198(A149963(n))`
-/

namespace A149953.P910013370980630405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149954 n - A004198 (A149963 n).toNat

end

end A149953.P910013370980630405

/-! ## A149953.P697442125615086544

`A149954(n)-A065205(A149958(n))`
-/

namespace A149953.P697442125615086544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149954 n - A065205 (A149958 n).toNat

end

end A149953.P697442125615086544

/-! ## A149953.P10193183301180624137

`A149954(n)-A107846(A149967(n))`
-/

namespace A149953.P10193183301180624137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149954 n - A107846 (A149967 n).toNat

end

end A149953.P10193183301180624137

/-!
# A149954: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 0), (0, 1, 1), (1, 0, -1)}.

The programs for A149954, there is no canonical definition to state claims against.
-/

/-! ## A149954.P4282089787354114903

`A149953(n)+A001899(A147719(n))`
-/

namespace A149954.P4282089787354114903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149953 n + A001899 (A147719 n).toNat

end

end A149954.P4282089787354114903

/-! ## A149954.P14503581181940781698

`or(A053589(A149932(n)), A149953(n))`
-/

namespace A149954.P14503581181940781698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053589 (A149932 n).toNat) (A149953 n)

end

end A149954.P14503581181940781698

/-! ## A149954.P15476985209182864120

`or(A053589(A149947(n)), A149953(n))`
-/

namespace A149954.P15476985209182864120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053589 (A149947 n).toNat) (A149953 n)

end

end A149954.P15476985209182864120

/-! ## A149954.P7749967886653856412

`A008619(Δ[A366099(n)])`
-/

namespace A149954.P7749967886653856412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A149954.P7749967886653856412

/-!
# A149955: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A149955, there is no canonical definition to state claims against.
-/

/-! ## A149955.P10292495617945704077

`A138999(A074605(n)+A008574(n))`
-/

namespace A149955.P10292495617945704077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A074605 n + A008574 n).toNat

end

end A149955.P10292495617945704077

/-! ## A149955.P16411678912987822297

`A149954(n)+A001899(A149954(n+1))`
-/

namespace A149955.P16411678912987822297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149954 n + A001899 (A149954 (n + 1)).toNat

end

end A149955.P16411678912987822297

/-!
# A149956: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149956, there is no canonical definition to state claims against.
-/

/-! ## A149956.P4313742180018803085

`A248183(A140271(n+1)+A000984(n))`
-/

namespace A149956.P4313742180018803085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A140271 (n + 1) + A000984 n).toNat

end

end A149956.P4313742180018803085

/-! ## A149956.P8671845954319930724

`A248183(A309639(n+1)+A056040(2*n))`
-/

namespace A149956.P8671845954319930724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A309639 (n + 1) + A056040 (2 * n)).toNat

end

end A149956.P8671845954319930724

/-!
# A149957: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149957, there is no canonical definition to state claims against.
-/

/-! ## A149957.P1268681895798546195

`A187185(4*A047153(n+1))`
-/

namespace A149957.P1268681895798546195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (4 * A047153 (n + 1)).toNat

end

end A149957.P1268681895798546195

/-! ## A149957.P13828376205951418299

`A143464(n)+A122953(A361764(n))`
-/

namespace A149957.P13828376205951418299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143464 n + A122953 (A361764 n).toNat

end

end A149957.P13828376205951418299

/-!
# A149958: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A149958, there is no canonical definition to state claims against.
-/

/-! ## A149958.P2279403951823456739

`round(Δ[sqrt(A292623(2*(n+1)))])`
-/

namespace A149958.P2279403951823456739
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A292623 (2 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A149958.P2279403951823456739

/-! ## A149958.P84629146244983329

`A091226(A052913(n)+(n%2)^n)`
-/

namespace A149958.P84629146244983329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A052913 n + (((n % 2) ^ n : ℕ) : ℤ)).toNat

end

end A149958.P84629146244983329

/-! ## A149958.P3073898716990620731

`A008616(A151451(n+2))+A001519(n)`
-/

namespace A149958.P3073898716990620731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A151451 (n + 2)).toNat + A001519 n

end

end A149958.P3073898716990620731

/-!
# A149959: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A149959, there is no canonical definition to state claims against.
-/

/-! ## A149959.P18432943408390809623

`A099376(n)+A089853(A089127(n))`
-/

namespace A149959.P18432943408390809623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A089853 (A089127 n).toNat

end

end A149959.P18432943408390809623

/-! ## A149959.P2841671550476608303

`A302478(A216645(2*n+3)+A003462(n))`
-/

namespace A149959.P2841671550476608303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A216645 (2 * n + 3) + A003462 n).toNat

end

end A149959.P2841671550476608303

/-! ## A149959.P4049209081424029157

`A060715(A244690(3*n+5)+A000032(3*n))`
-/

namespace A149959.P4049209081424029157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A244690 (3 * n + 5) + A000032 (3 * n)).toNat

end

end A149959.P4049209081424029157

/-!
# A149960: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149960, there is no canonical definition to state claims against.
-/

/-! ## A149960.P13757138829240448904

`A008615(A345241(n+3)+n+1)`
-/

namespace A149960.P13757138829240448904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A345241 (n + 3) + (n : ℤ) + 1).toNat

end

end A149960.P13757138829240448904

/-! ## A149960.P13088522399776795218

`A273859(A082582(n))+A093129(n)`
-/

namespace A149960.P13088522399776795218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A082582 n).toNat + A093129 n

end

end A149960.P13088522399776795218

/-! ## A149960.P16629524460686012217

`A268430(n)+A159632(A033995(n))`
-/

namespace A149960.P16629524460686012217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268430 n + A159632 (A033995 n).toNat

end

end A149960.P16629524460686012217

/-!
# A149961: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A149961, there is no canonical definition to state claims against.
-/

/-! ## A149961.P3830647073444423768

`A220658(A001576(n))-A072964(n)`
-/

namespace A149961.P3830647073444423768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A001576 n).toNat - A072964 n

end

end A149961.P3830647073444423768

/-! ## A149961.P6212206662549506836

`A015616(n+1)+A008621(A087440(n))`
-/

namespace A149961.P6212206662549506836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 1) + A008621 (A087440 n).toNat

end

end A149961.P6212206662549506836

/-! ## A149961.P6933105513245224441

`A283467(A127673(2*n)+A003500(n))`
-/

namespace A149961.P6933105513245224441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 (A127673 (2 * n) + A003500 n).toNat

end

end A149961.P6933105513245224441

/-!
# A149962: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149962, there is no canonical definition to state claims against.
-/

/-! ## A149962.P4845776796662181171

`A149963(n)-8*A004198(A149963(n))`
-/

namespace A149962.P4845776796662181171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149963 n - 8 * A004198 (A149963 n).toNat

end

end A149962.P4845776796662181171

/-! ## A149962.P9521101027802024222

`A149963(A073788(n))`
-/

namespace A149962.P9521101027802024222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149963 (A073788 n).toNat

end

end A149962.P9521101027802024222

/-! ## A149962.P18284335433093553206

`A149963(A171596(n))`
-/

namespace A149962.P18284335433093553206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149963 (A171596 n).toNat

end

end A149962.P18284335433093553206

/-!
# A149963: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149963, there is no canonical definition to state claims against.
-/

/-! ## A149963.P2354781217170022494

`or(A111660(A108290(n)), A149962(n))`
-/

namespace A149963.P2354781217170022494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111660 (A108290 n).toNat) (A149962 n)

end

end A149963.P2354781217170022494

/-! ## A149963.P5163584157140319332

`or(A070201(A149949(n)), A149962(n))`
-/

namespace A149963.P5163584157140319332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070201 (A149949 n).toNat) (A149962 n)

end

end A149963.P5163584157140319332

/-! ## A149963.P17988882769533223305

`or(A070201(A149950(n)), A149962(n))`
-/

namespace A149963.P17988882769533223305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070201 (A149950 n).toNat) (A149962 n)

end

end A149963.P17988882769533223305

/-! ## A149963.P1390516417693392363

`or(A149962(n), A167688(A149981(n)))`
-/

namespace A149963.P1390516417693392363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149962 n) (A167688 (A149981 n).toNat)

end

end A149963.P1390516417693392363

/-!
# A149964: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A149964, there is no canonical definition to state claims against.
-/

/-! ## A149964.P9794574715358230135

`A185284(n²)+A149962(n)`
-/

namespace A149964.P9794574715358230135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n ^ 2) + A149962 n

end

end A149964.P9794574715358230135

/-! ## A149964.P4132550050678116497

`A137579(A100037(n+1))+A007581(n)`
-/

namespace A149964.P4132550050678116497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A100037 (n + 1)).toNat + A007581 n

end

end A149964.P4132550050678116497

/-! ## A149964.P11141245573332530297

`A076024(n)+A001817(A174702(n+1))`
-/

namespace A149964.P11141245573332530297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 n + A001817 (A174702 (n + 1)).toNat

end

end A149964.P11141245573332530297

/-!
# A149965: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149965, there is no canonical definition to state claims against.
-/

/-! ## A149965.P10038086549132552346

`A008615(∏{p}[∏{p}[n+1, #*val(n+1, #)], #]+(2^n+2)²-6)`
-/

namespace A149965.P10038086549132552346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + (((2 ^ n + 2) ^ 2 : ℤ) - 6)).toNat

end

end A149965.P10038086549132552346

/-! ## A149965.P8843872515444315683

`∑[A259178(A339036(n))]`
-/

namespace A149965.P8843872515444315683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (A339036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149965.P8843872515444315683

/-! ## A149965.P10022942701427614748

`A008615(xor(1, A290718(n+1)+n))`
-/

namespace A149965.P10022942701427614748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.xor 1 (A290718 (n + 1) + (n : ℤ))).toNat

end

end A149965.P10022942701427614748

/-!
# A149966: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149966, there is no canonical definition to state claims against.
-/

/-! ## A149966.P5879821540208560418

`A036234(A083881(n)-n)`
-/

namespace A149966.P5879821540208560418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A083881 n - (n : ℤ)).toNat

end

end A149966.P5879821540208560418

/-! ## A149966.P5323298867990559039

`A285425(3*n+2)+∑[A339586(2*(n+2))]`
-/

namespace A149966.P5323298867990559039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339586 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285425 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149966.P5323298867990559039

/-!
# A149967: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149967, there is no canonical definition to state claims against.
-/

/-! ## A149967.P6404440311691811993

`A269381(A151150(n))`
-/

namespace A149967.P6404440311691811993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (A151150 n).toNat

end

end A149967.P6404440311691811993

/-! ## A149967.P17179598949719685442

`A194444(ceil(2^(n-1)))+A000129(n)`
-/

namespace A149967.P17179598949719685442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194444 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A000129 n

end

end A149967.P17179598949719685442

/-! ## A149967.P10217878738114025392

`A149970(n)-A011734(A054147(n))`
-/

namespace A149967.P10217878738114025392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149970 n - A011734 (A054147 n).toNat

end

end A149967.P10217878738114025392

/-!
# A149968: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A149968, there is no canonical definition to state claims against.
-/

/-! ## A149968.P17281639580312162336

`A080907(A268430(n))-A325106(n)`
-/

namespace A149968.P17281639580312162336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A268430 n).toNat - A325106 n

end

end A149968.P17281639580312162336

/-! ## A149968.P18123386865374523543

`A127498(n)+∑[A046660(A197189(n))]`
-/

namespace A149968.P18123386865374523543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A197189 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127498 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149968.P18123386865374523543

/-!
# A149969: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149969, there is no canonical definition to state claims against.
-/

/-! ## A149969.P14772150880318760412

`A040545(2*4^n-1)+(2^n+4)*(2^n-1)/6`
-/

namespace A149969.P14772150880318760412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040545 (2 * 4 ^ n - 1) : ℚ) + (2 ^ n + 4 : ℚ) * (((2 ^ n : ℤ) - 1 : ℚ) / 6)

end

end A149969.P14772150880318760412

/-! ## A149969.P18168207999804893082

`A110655(A060999(n)+A047018(n))`
-/

namespace A149969.P18168207999804893082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A060999 n + A047018 n).toNat

end

end A149969.P18168207999804893082

/-!
# A149970: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, -1, 1), (1, 0, 0)}.

The programs for A149970, there is no canonical definition to state claims against.
-/

/-! ## A149970.P4104424388281499834

`A149967(n)+A011734(A054147(n))`
-/

namespace A149970.P4104424388281499834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149967 n + A011734 (A054147 n).toNat

end

end A149970.P4104424388281499834

/-! ## A149970.P2307089299821609699

`A149967(n)+A044938(A057552(n))`
-/

namespace A149970.P2307089299821609699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149967 n + A044938 (A057552 n).toNat

end

end A149970.P2307089299821609699

/-! ## A149970.P7619173523873588713

`A149967(n)+A007949(A150654(n))`
-/

namespace A149970.P7619173523873588713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149967 n + A007949 (A150654 n).toNat

end

end A149970.P7619173523873588713

/-!
# A149971: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A149971, there is no canonical definition to state claims against.
-/

/-! ## A149971.P11773940118094248382

`A084782(n)+A003056(A001563(n))`
-/

namespace A149971.P11773940118094248382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084782 n + A003056 (A001563 n).toNat

end

end A149971.P11773940118094248382

/-! ## A149971.P9018123939664932600

`A008621(A149986(n)+Δ[A150005(n)])`
-/

namespace A149971.P9018123939664932600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A149986 n + (f1 (n + 1) - f1 n)).toNat

end

end A149971.P9018123939664932600

/-! ## A149971.P8401266613302204954

`A048645(n+1)+A008407(A000108(n))`
-/

namespace A149971.P8401266613302204954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1) + A008407 (A000108 n).toNat

end

end A149971.P8401266613302204954

/-!
# A149972: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A149972, there is no canonical definition to state claims against.
-/

/-! ## A149972.P14863184026888513103

`A008615(5*A150094(n))`
-/

namespace A149972.P14863184026888513103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (5 * A150094 n).toNat

end

end A149972.P14863184026888513103

/-! ## A149972.P3457500406984228832

`A008615(lcm(5, A150094(n)))`
-/

namespace A149972.P3457500406984228832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lcm 5 (A150094 n))

end

end A149972.P3457500406984228832

/-! ## A149972.P4236331369718817114

`A105514(A004171(n))+A002384(n+1)`
-/

namespace A149972.P4236331369718817114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105514 (A004171 n).toNat + A002384 (n + 1)

end

end A149972.P4236331369718817114

/-!
# A149973: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A149973, there is no canonical definition to state claims against.
-/

/-! ## A149973.P5996461416520763797

`A020888(A390910(n+1))`
-/

namespace A149973.P5996461416520763797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (A390910 (n + 1)).toNat

end

end A149973.P5996461416520763797

/-! ## A149973.P598311839265284641

`A149974(n)-A292373(A133892(n))`
-/

namespace A149973.P598311839265284641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149974 n - A292373 (A133892 n).toNat

end

end A149973.P598311839265284641

/-! ## A149973.P10780940847845149739

`A086700(n+1)+A002265(A002001(n))`
-/

namespace A149973.P10780940847845149739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086700 (n + 1) + A002265 (A002001 n).toNat

end

end A149973.P10780940847845149739

/-!
# A149974: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149974, there is no canonical definition to state claims against.
-/

/-! ## A149974.P14811076139570362767

`A008615(5*A150095(n))`
-/

namespace A149974.P14811076139570362767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (5 * A150095 n).toNat

end

end A149974.P14811076139570362767

/-! ## A149974.P15842389928583008830

`A008615(5*A150096(n))`
-/

namespace A149974.P15842389928583008830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (5 * A150096 n).toNat

end

end A149974.P15842389928583008830

/-! ## A149974.P9989907837345466936

`A292373(A133892(n))+A149973(n)`
-/

namespace A149974.P9989907837345466936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A133892 n).toNat + A149973 n

end

end A149974.P9989907837345466936

/-!
# A149975: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149975, there is no canonical definition to state claims against.
-/

/-! ## A149975.P11497202430772600756

`A020913(A149961(n+1))`
-/

namespace A149975.P11497202430772600756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020913 (A149961 (n + 1)).toNat

end

end A149975.P11497202430772600756

/-! ## A149975.P8146662403736085924

`∏{p}[A149995(n)², #]-A056823(n)`
-/

namespace A149975.P8146662403736085924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149995 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - A056823 n

end

end A149975.P8146662403736085924

/-! ## A149975.P12976522127821714658

`A159866(n+1)+A070750(A072877(n+2))`
-/

namespace A149975.P12976522127821714658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159866 (n + 1) + A070750 (A072877 (n + 2)).toNat

end

end A149975.P12976522127821714658

/-!
# A149976: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149976, there is no canonical definition to state claims against.
-/

/-! ## A149976.P9060765659974787443

`A097992(A281347(n+2))`
-/

namespace A149976.P9060765659974787443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A281347 (n + 2)).toNat

end

end A149976.P9060765659974787443

/-! ## A149976.P10177270712779939425

`A008615(5*A150097(n))`
-/

namespace A149976.P10177270712779939425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (5 * A150097 n).toNat

end

end A149976.P10177270712779939425

/-! ## A149976.P16422714460254676456

`A008615(lcm(5, A150097(n)))`
-/

namespace A149976.P16422714460254676456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lcm 5 (A150097 n))

end

end A149976.P16422714460254676456

/-!
# A149977: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149977, there is no canonical definition to state claims against.
-/

/-! ## A149977.P11230118165958960233

`∑[A110656(A150336(n+1))]`
-/

namespace A149977.P11230118165958960233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A150336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149977.P11230118165958960233

/-! ## A149977.P7163254581924661469

`A081148(A238825(n+1))+A001791(n)`
-/

namespace A149977.P7163254581924661469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081148 (A238825 (n + 1)).toNat + A001791 n

end

end A149977.P7163254581924661469

/-! ## A149977.P134699659332341894

`A055642(3*(n+1))+A002266(A049139(n+3))`
-/

namespace A149977.P134699659332341894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (3 * (n + 1)) + A002266 (A049139 (n + 3)).toNat

end

end A149977.P134699659332341894

/-!
# A149978: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A149978, there is no canonical definition to state claims against.
-/

/-! ## A149978.P16772853958892535298

`A008621(3*A150188(n))`
-/

namespace A149978.P16772853958892535298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (3 * A150188 n).toNat

end

end A149978.P16772853958892535298

/-! ## A149978.P4397310513054349391

`A050296(A150201(n)+A002605(n))`
-/

namespace A149978.P4397310513054349391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A150201 n + A002605 n).toNat

end

end A149978.P4397310513054349391

/-! ## A149978.P15411571380072461616

`A155069(n)+A008616(A050476(n))`
-/

namespace A149978.P15411571380072461616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n + A008616 (A050476 n).toNat

end

end A149978.P15411571380072461616

/-!
# A149979: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149979, there is no canonical definition to state claims against.
-/

/-! ## A149979.P1551597701357587170

`record[∑[A194515(A148496(n))]]`
-/

namespace A149979.P1551597701357587170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194515 (A148496 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A149979.P1551597701357587170

/-! ## A149979.P12438410509090985825

`A289493((∑{digits}[n+2, #]+1+n)*A199874(n))`
-/

namespace A149979.P12438410509090985825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1 + n : ℕ) : ℤ) * A199874 n).toNat

end

end A149979.P12438410509090985825

/-! ## A149979.P9973875327594553570

`A289493(lcm(∑{digits}[n+2, #]+1+n, A199874(n)))`
-/

namespace A149979.P9973875327594553570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (Int.lcm ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1 + n : ℕ) : ℤ) (A199874 n))

end

end A149979.P9973875327594553570

/-!
# A149980: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, 1, 0)}.

The programs for A149980, there is no canonical definition to state claims against.
-/

/-! ## A149980.P17357804126892900775

`A087960(A218672(n))+A038056(n+1)`
-/

namespace A149980.P17357804126892900775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A218672 n).toNat + A038056 (n + 1)

end

end A149980.P17357804126892900775

/-! ## A149980.P7130860249805326365

`A038056(n+1)-A008836(A050479(n))`
-/

namespace A149980.P7130860249805326365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038056 (n + 1) - A008836 (A050479 n).toNat

end

end A149980.P7130860249805326365

/-! ## A149980.P17285839962198131276

`A038056(n+1)-A008683(A052781(n))`
-/

namespace A149980.P17285839962198131276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038056 (n + 1) - A008683 (A052781 n).toNat

end

end A149980.P17285839962198131276

/-!
# A149981: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A149981, there is no canonical definition to state claims against.
-/

/-! ## A149981.P14577052110590828871

`A004277(A149982(n))-A149984(n)`
-/

namespace A149981.P14577052110590828871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149982 n).toNat - A149984 n

end

end A149981.P14577052110590828871

/-! ## A149981.P6229479123579379125

`A004277(A149991(n))-A149996(n)`
-/

namespace A149981.P6229479123579379125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149991 n).toNat - A149996 n

end

end A149981.P6229479123579379125

/-! ## A149981.P3169154290520144750

`A149982(A073788(n))`
-/

namespace A149981.P3169154290520144750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149982 (A073788 n).toNat

end

end A149981.P3169154290520144750

/-!
# A149982: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A149982, there is no canonical definition to state claims against.
-/

/-! ## A149982.P16120966443841478252

`A004525(A149984(n)+A149981(n))`
-/

namespace A149982.P16120966443841478252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149984 n + A149981 n).toNat

end

end A149982.P16120966443841478252

/-! ## A149982.P4973033809919643470

`A004526(A149984(n)+A149981(n))`
-/

namespace A149982.P4973033809919643470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149984 n + A149981 n).toNat

end

end A149982.P4973033809919643470

/-! ## A149982.P5407999164638927216

`A025480(A149984(n)+A149981(n))`
-/

namespace A149982.P5407999164638927216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A149984 n + A149981 n).toNat

end

end A149982.P5407999164638927216

/-! ## A149982.P8158033730664624905

`A029578(A149984(n)+A149981(n))`
-/

namespace A149982.P8158033730664624905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A149984 n + A149981 n).toNat

end

end A149982.P8158033730664624905

/-!
# A149983: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, -1), (0, 0, 1), (1, 1, 0)}.

The programs for A149983, there is no canonical definition to state claims against.
-/

/-! ## A149983.P3099848884464685608

`or(A149982(n), A184955((3-n)²))`
-/

namespace A149983.P3099848884464685608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149982 n) (A184955 ((3 - (n : ℤ)) ^ 2).toNat)

end

end A149983.P3099848884464685608

/-! ## A149983.P6474733686841799711

`A028310(A283726(n+1)+A149982(n))`
-/

namespace A149983.P6474733686841799711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A283726 (n + 1) + A149982 n).toNat

end

end A149983.P6474733686841799711

/-! ## A149983.P7981645135173424001

`or(A149982(n), A305089(A267408(n+1)))`
-/

namespace A149983.P7981645135173424001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149982 n) (A305089 (A267408 (n + 1)).toNat)

end

end A149983.P7981645135173424001

/-!
# A149984: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A149984, there is no canonical definition to state claims against.
-/

/-! ## A149984.P2256686511425544696

`A004277(A149982(n))-A149981(n)`
-/

namespace A149984.P2256686511425544696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149982 n).toNat - A149981 n

end

end A149984.P2256686511425544696

/-! ## A149984.P16550646645479993990

`A004277(A149991(n))-A149994(n)`
-/

namespace A149984.P16550646645479993990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149991 n).toNat - A149994 n

end

end A149984.P16550646645479993990

/-! ## A149984.P6593348382080722685

`A004277(A149992(n))-A149996(n)`
-/

namespace A149984.P6593348382080722685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149992 n).toNat - A149996 n

end

end A149984.P6593348382080722685

/-!
# A149985: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A149985, there is no canonical definition to state claims against.
-/

/-! ## A149985.P13405125632127337424

`or(A149981(n), A184955(A054154(n)))`
-/

namespace A149985.P13405125632127337424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149981 n) (A184955 (A054154 n).toNat)

end

end A149985.P13405125632127337424

/-! ## A149985.P5980669457669576092

`or(A149984(n), A184955(A054154(n)))`
-/

namespace A149985.P5980669457669576092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149984 n) (A184955 (A054154 n).toNat)

end

end A149985.P5980669457669576092

/-! ## A149985.P7944851829850341335

`or(A149981(n), A167700(A149953(n)))`
-/

namespace A149985.P7944851829850341335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149981 n) (A167700 (A149953 n).toNat)

end

end A149985.P7944851829850341335

/-! ## A149985.P14090813303815104848

`or(A149984(n), A167700(A149953(n)))`
-/

namespace A149985.P14090813303815104848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149984 n) (A167700 (A149953 n).toNat)

end

end A149985.P14090813303815104848

/-!
# A149986: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A149986, there is no canonical definition to state claims against.
-/

/-! ## A149986.P4592736114057062840

`A088004(A052984(n)+3)`
-/

namespace A149986.P4592736114057062840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A052984 n + 3).toNat

end

end A149986.P4592736114057062840

/-! ## A149986.P6868850656128977611

`A306548(A066186(n))+A149982(n)`
-/

namespace A149986.P6868850656128977611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306548 (A066186 n).toNat + A149982 n

end

end A149986.P6868850656128977611

/-! ## A149986.P13496805787570920497

`A109497(A000045(n)*A007689(n))`
-/

namespace A149986.P13496805787570920497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A000045 n * A007689 n).toNat

end

end A149986.P13496805787570920497

/-!
# A149987: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A149987, there is no canonical definition to state claims against.
-/

/-! ## A149987.P9943775958393321263

`xor(A045840(A104429(n)), A149988(n))`
-/

namespace A149987.P9943775958393321263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045840 (A104429 n).toNat) (A149988 n)

end

end A149987.P9943775958393321263

/-! ## A149987.P11580499267589337454

`A000026(A149988(n))`
-/

namespace A149987.P11580499267589337454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149988 n).toNat

end

end A149987.P11580499267589337454

/-! ## A149987.P4427456453672546651

`A149988(A073789(n))`
-/

namespace A149987.P4427456453672546651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149988 (A073789 n).toNat

end

end A149987.P4427456453672546651

/-! ## A149987.P10423499605877179579

`A149988(A171644(n))`
-/

namespace A149987.P10423499605877179579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149988 (A171644 n).toNat

end

end A149987.P10423499605877179579

/-!
# A149988: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A149988, there is no canonical definition to state claims against.
-/

/-! ## A149988.P2026065625976576009

`xor(A045840(A104429(n)), A149987(n))`
-/

namespace A149988.P2026065625976576009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045840 (A104429 n).toNat) (A149987 n)

end

end A149988.P2026065625976576009

/-!
# A149989: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (0, 1, 1), (1, 0, 0)}.

The programs for A149989, there is no canonical definition to state claims against.
-/

/-! ## A149989.P11589737582549401909

`A149990(A073788(n))`
-/

namespace A149989.P11589737582549401909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149990 (A073788 n).toNat

end

end A149989.P11589737582549401909

/-! ## A149989.P17175376088782971411

`A149990(A171596(n))`
-/

namespace A149989.P17175376088782971411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149990 (A171596 n).toNat

end

end A149989.P17175376088782971411

/-! ## A149989.P11370150034646030030

`A149990(A004868(n+1))`
-/

namespace A149989.P11370150034646030030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149990 (A004868 (n + 1)).toNat

end

end A149989.P11370150034646030030

/-!
# A149990: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A149990, there is no canonical definition to state claims against.
-/

/-! ## A149990.P9464009033908777777

`or(A136590(A001045(n)), A149989(n))`
-/

namespace A149990.P9464009033908777777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136590 (A001045 n).toNat) (A149989 n)

end

end A149990.P9464009033908777777

/-! ## A149990.P10505582475703022832

`or(A149989(n), A235919(A150002(n)))`
-/

namespace A149990.P10505582475703022832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149989 n) (A235919 (A150002 n).toNat)

end

end A149990.P10505582475703022832

/-!
# A149991: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A149991, there is no canonical definition to state claims against.
-/

/-! ## A149991.P15591255439450499670

`A004526(A149994(n)+A149984(n))`
-/

namespace A149991.P15591255439450499670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149994 n + A149984 n).toNat

end

end A149991.P15591255439450499670

/-! ## A149991.P12196716567332194839

`A025480(A149994(n)+A149984(n))`
-/

namespace A149991.P12196716567332194839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A149994 n + A149984 n).toNat

end

end A149991.P12196716567332194839

/-! ## A149991.P145086803428199413

`A025480(A149995(n)+A149982(n))`
-/

namespace A149991.P145086803428199413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A149995 n + A149982 n).toNat

end

end A149991.P145086803428199413

/-! ## A149991.P12342054961756475128

`A025480(A149996(n)+A149981(n))`
-/

namespace A149991.P12342054961756475128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A149996 n + A149981 n).toNat

end

end A149991.P12342054961756475128

/-!
# A149992: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A149992, there is no canonical definition to state claims against.
-/

/-! ## A149992.P1505680734751040155

`A004526(A149996(n)+A149984(n))`
-/

namespace A149992.P1505680734751040155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149996 n + A149984 n).toNat

end

end A149992.P1505680734751040155

/-! ## A149992.P6314922389209823155

`A025480(A149996(n)+A149984(n))`
-/

namespace A149992.P6314922389209823155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A149996 n + A149984 n).toNat

end

end A149992.P6314922389209823155

/-! ## A149992.P14130199725938952511

`A142150(A149996(n)+A149984(n))`
-/

namespace A149992.P14130199725938952511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A149996 n + A149984 n).toNat

end

end A149992.P14130199725938952511

/-! ## A149992.P9940933783595410201

`A252463(A149996(n)+A149984(n))`
-/

namespace A149992.P9940933783595410201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A149996 n + A149984 n).toNat

end

end A149992.P9940933783595410201

/-!
# A149993: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A149993, there is no canonical definition to state claims against.
-/

/-! ## A149993.P18089172196681798697

`A059995(11*A149961(n))`
-/

namespace A149993.P18089172196681798697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (11 * A149961 n).toNat

end

end A149993.P18089172196681798697

/-! ## A149993.P11042539306896012721

`A059995(lcm(11, A149961(n)))`
-/

namespace A149993.P11042539306896012721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.lcm 11 (A149961 n))

end

end A149993.P11042539306896012721

/-!
# A149994: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (0, 1, 1), (1, 0, 0)}.

The programs for A149994, there is no canonical definition to state claims against.
-/

/-! ## A149994.P8910278737917797845

`A004277(A149991(n))-A149984(n)`
-/

namespace A149994.P8910278737917797845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149991 n).toNat - A149984 n

end

end A149994.P8910278737917797845

/-! ## A149994.P7094649055030192487

`A004277(A149995(n))-A149996(n)`
-/

namespace A149994.P7094649055030192487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149995 n).toNat - A149996 n

end

end A149994.P7094649055030192487

/-! ## A149994.P7721698526455080637

`∏{p}[A149995(n)², #]`
-/

namespace A149994.P7721698526455080637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149995 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149994.P7721698526455080637

/-!
# A149995: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (0, 1, 1), (1, 0, 0)}.

The programs for A149995, there is no canonical definition to state claims against.
-/

/-! ## A149995.P11962997114991181458

`A004525(A149996(n)+A149994(n))`
-/

namespace A149995.P11962997114991181458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149996 n + A149994 n).toNat

end

end A149995.P11962997114991181458

/-! ## A149995.P16873643224046808917

`A004526(A149996(n)+A149994(n))`
-/

namespace A149995.P16873643224046808917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149996 n + A149994 n).toNat

end

end A149995.P16873643224046808917

/-! ## A149995.P16412551258629518741

`A025480(A149996(n)+A149994(n))`
-/

namespace A149995.P16412551258629518741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A149996 n + A149994 n).toNat

end

end A149995.P16412551258629518741

/-! ## A149995.P9454907477157112571

`A032742(A149996(n)+A149994(n))`
-/

namespace A149995.P9454907477157112571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A149996 n + A149994 n).toNat

end

end A149995.P9454907477157112571

/-!
# A149996: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (-1, 1, 1), (0, 1, 1), (1, 0, 0)}.

The programs for A149996, there is no canonical definition to state claims against.
-/

/-! ## A149996.P4337738911768211860

`A004277(A149991(n))-A149981(n)`
-/

namespace A149996.P4337738911768211860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149991 n).toNat - A149981 n

end

end A149996.P4337738911768211860

/-! ## A149996.P4641155340349883980

`A004277(A149992(n))-A149984(n)`
-/

namespace A149996.P4641155340349883980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149992 n).toNat - A149984 n

end

end A149996.P4641155340349883980

/-! ## A149996.P8812097014605269748

`A004277(A149995(n))-A149994(n)`
-/

namespace A149996.P8812097014605269748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149995 n).toNat - A149994 n

end

end A149996.P8812097014605269748

/-!
# A149997: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, -1), (1, 0, 0)}.

The programs for A149997, there is no canonical definition to state claims against.
-/

/-! ## A149997.P10028548031702001382

`xor(A149998(n), A191928(A214200(n)))`
-/

namespace A149997.P10028548031702001382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149998 n) (A191928 (A214200 n).toNat)

end

end A149997.P10028548031702001382

/-! ## A149997.P6931550364016107192

`∏{p}[A149998(n)², #]`
-/

namespace A149997.P6931550364016107192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149998 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149997.P6931550364016107192

/-! ## A149997.P4335853892446221364

`A149998(A073788(n))`
-/

namespace A149997.P4335853892446221364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149998 (A073788 n).toNat

end

end A149997.P4335853892446221364

/-!
# A149998: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, -1, -1), (1, 0, 1)}.

The programs for A149998, there is no canonical definition to state claims against.
-/

/-! ## A149998.P10642353573662968378

`xor(A149997(n), A191928(A214200(n)))`
-/

namespace A149998.P10642353573662968378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149997 n) (A191928 (A214200 n).toNat)

end

end A149998.P10642353573662968378

/-!
# A149999: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A149999, there is no canonical definition to state claims against.
-/

/-! ## A149999.P12848619905637974141

`A080907(A141201(n+2))`
-/

namespace A149999.P12848619905637974141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A141201 (n + 2)).toNat

end

end A149999.P12848619905637974141

/-! ## A149999.P10818613419952916280

`or(A087624(n+5), A194403(A352821(3*n+2)))`
-/

namespace A149999.P10818613419952916280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087624 (n + 5)) (A194403 (A352821 (3 * n + 2)).toNat)

end

end A149999.P10818613419952916280

