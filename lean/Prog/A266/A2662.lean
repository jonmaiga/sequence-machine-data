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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
# A266200: Herbert-Ackermann numbers: a(n) = Hack(n,n,n) = H_{n+1}(n,n), where Hack is the Herbert-Ackermann function.

The programs for A266200, there is no canonical definition to state claims against.
-/

/-! ## A266200.P17871442742610717928

`(n-1)^round(cosh(a(n-1)))` with `a(0)=0`
-/

namespace A266200.P17871442742610717928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1 : ℚ) ^ (SequenceMachineLib.roundAway (Real.cosh (a (n - 1) : ℝ)) : ℤ)

end

end A266200.P17871442742610717928

/-!
# A266201: Goodstein numbers: a(n) = G_n(n), where G is the Goodstein function.

The programs for A266201, there is no canonical definition to state claims against.
-/

/-! ## A266201.P12623388698587264460

`A296441(∑[4*n])`
-/

namespace A266201.P12623388698587264460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266201.P12623388698587264460

/-! ## A266201.P17774044674074651973

`and(-1, A296441(A046092(n)))`
-/

namespace A266201.P17774044674074651973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A296441 (A046092 n).toNat)

end

end A266201.P17774044674074651973

/-! ## A266201.P7865614532434257825

`and(-1, A296441(A106232(n+1)))`
-/

namespace A266201.P7865614532434257825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A296441 (A106232 (n + 1)).toNat)

end

end A266201.P7865614532434257825

/-! ## A266201.P16474332508639306171

`A296441(A046092(n))+A025438(n)`
-/

namespace A266201.P16474332508639306171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (A046092 n).toNat + A025438 n

end

end A266201.P16474332508639306171

/-! ## A266201.P10511536270872542028

`A326458(n)+A296441(A046092(n))`
-/

namespace A266201.P10511536270872542028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 n + A296441 (A046092 n).toNat

end

end A266201.P10511536270872542028

/-!
# A266203: Number of steps k to make g_k(n) converge to zero.

The programs for A266203, there is no canonical definition to state claims against.
-/

/-! ## A266203.P2967068482364484906

`A056041(n)-2`
-/

namespace A266203.P2967068482364484906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056041 n - 2

end

end A266203.P2967068482364484906

/-! ## A266203.P12513448668867069061

`A052955(∑[abs(or(1, n-2))])-2`
-/

namespace A266203.P12513448668867069061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A266203.P12513448668867069061

/-! ## A266203.P8446855954365775944

`A023444(A056041(n))`
-/

namespace A266203.P8446855954365775944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A056041 n).toNat

end

end A266203.P8446855954365775944

/-! ## A266203.P10586068558450843239

`A004273(A268687(n))`
-/

namespace A266203.P10586068558450843239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A268687 n).toNat

end

end A266203.P10586068558450843239

/-!
# A266204: a(n) = G_n(5), where G_n(k) is the Goodstein function defined in A266201.

The programs for A266204, there is no canonical definition to state claims against.
-/

/-! ## A266204.P4551468238956778857

`A056193(n)+A271560(n)-A271559(n)`
-/

namespace A266204.P4551468238956778857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056193 n + (A271560 n - A271559 n)

end

end A266204.P4551468238956778857

/-! ## A266204.P17453845103180332879

`A271554(n)+A271560(n)-A222117(n)`
-/

namespace A266204.P17453845103180332879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271554 n + (A271560 n - A222117 n)

end

end A266204.P17453845103180332879

/-! ## A266204.P9132441184541586245

`A266205(n)+A271560(n)-A271561(n)`
-/

namespace A266204.P9132441184541586245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266205 n + (A271560 n - A271561 n)

end

end A266204.P9132441184541586245

/-! ## A266204.P7200486861639726339

`A296441(A167499(n+4))`
-/

namespace A266204.P7200486861639726339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (A167499 (n + 4)).toNat

end

end A266204.P7200486861639726339

/-! ## A266204.P8065522092548143007

`A296441(eq[5, A002262(n)])`
-/

namespace A266204.P8065522092548143007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266204.P8065522092548143007

/-!
# A266205: a(n) = G_n(6), where G is the Goodstein function defined in A266201.

The programs for A266205, there is no canonical definition to state claims against.
-/

/-! ## A266205.P5862845149032639509

`A056193(n)+A271561(n)-A271559(n)`
-/

namespace A266205.P5862845149032639509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056193 n + (A271561 n - A271559 n)

end

end A266205.P5862845149032639509

/-! ## A266205.P5761696677278090673

`A271554(n)+A271561(n)-A222117(n)`
-/

namespace A266205.P5761696677278090673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271554 n + (A271561 n - A222117 n)

end

end A266205.P5761696677278090673

/-! ## A266205.P15240429542982708482

`A266204(n)+A271561(n)-A271560(n)`
-/

namespace A266205.P15240429542982708482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266204 n + (A271561 n - A271560 n)

end

end A266205.P15240429542982708482

/-! ## A266205.P8236583026173762944

`A296441(eq[6, A002262(n)])`
-/

namespace A266205.P8236583026173762944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266205.P8236583026173762944

/-! ## A266205.P9355002750381885506

`A296441(eq[5, A327844(n+1)])`
-/

namespace A266205.P9355002750381885506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266205.P9355002750381885506

/-!
# A266206: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 315", based on the 5-celled von Neumann neighborhood.

The programs for A266206, there is no canonical definition to state claims against.
-/

/-! ## A266206.P7620438356894844390

`A271249(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A266206.P7620438356894844390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271249 (n - 1) + a (n - 1)

end

end A266206.P7620438356894844390

/-! ## A266206.P18015536542783544819

`A271249(n-1)-(A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A266206.P18015536542783544819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271249 (n - 1) - (A000038 n - a (n - 1))

end

end A266206.P18015536542783544819

/-! ## A266206.P3163460623710273984

`Δ[A271248(n)]-A271249(n)`
-/

namespace A266206.P3163460623710273984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271249 n

end

end A266206.P3163460623710273984

/-! ## A266206.P14818160663593858752

`A271248(n+1)-(A271249(n)+A271248(n))`
-/

namespace A266206.P14818160663593858752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271248 (n + 1) - (A271249 n + A271248 n)

end

end A266206.P14818160663593858752

/-!
# A266207: Number of nX2 arrays containing 2 copies of 0..n-1 with no element plus any horizontal, vertical, diagonal or antidiagonal neighbor equal to n-1.

The programs for A266207, there is no canonical definition to state claims against.
-/

/-! ## A266207.P13543476539889107726

`A266208(∑[n+2])`
-/

namespace A266207.P13543476539889107726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266207.P13543476539889107726

/-! ## A266207.P1515320023551823830

`lcm(2, A266208(A101881(2*n+1)))`
-/

namespace A266207.P1515320023551823830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A266208 (A101881 (2 * n + 1)).toNat)

end

end A266207.P1515320023551823830

/-! ## A266207.P15769693211049028546

`lcm(4, A266208(A117142(2*(n+1))))`
-/

namespace A266207.P15769693211049028546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A266208 (A117142 (2 * (n + 1))).toNat)

end

end A266207.P15769693211049028546

/-! ## A266207.P5794857555338925707

`A266208(A101881(2*n+1))+A055961(n)`
-/

namespace A266207.P5794857555338925707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (A101881 (2 * n + 1)).toNat + A055961 n

end

end A266207.P5794857555338925707

/-! ## A266207.P8599750129963570542

`A266208(A117142(2*(n+1)))%A055973(n)`
-/

namespace A266207.P8599750129963570542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266208 (A117142 (2 * (n + 1))).toNat) (A055973 n)

end

end A266207.P8599750129963570542

/-!
# A266208: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element plus any horizontal, vertical, diagonal or antidiagonal neighbor equal to n-1.

The programs for A266208, there is no canonical definition to state claims against.
-/

/-! ## A266208.P277947149439960631

`gcd(A266156(A113143(n)), A266158(n+1))`
-/

namespace A266208.P277947149439960631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A266156 (A113143 n).toNat) (A266158 (n + 1))

end

end A266208.P277947149439960631

/-! ## A266208.P5475899049620915108

`A266158(n+1)/A020639(A027467(n))`
-/

namespace A266208.P5475899049620915108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266158 (n + 1) : ℚ) / (A020639 (A027467 n).toNat : ℚ)

end

end A266208.P5475899049620915108

/-! ## A266208.P16466494067678475788

`A266158(n+1)/A001227(A089463(n))`
-/

namespace A266208.P16466494067678475788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266158 (n + 1) : ℚ) / (A001227 (A089463 n).toNat : ℚ)

end

end A266208.P16466494067678475788

/-! ## A266208.P9153579868648933062

`A266158(n+1)/A020639(A155810(n))`
-/

namespace A266208.P9153579868648933062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266158 (n + 1) : ℚ) / (A020639 (A155810 n).toNat : ℚ)

end

end A266208.P9153579868648933062

/-! ## A266208.P6189437212335494564

`A266158(n+1)/A141021(A115991(n))`
-/

namespace A266208.P6189437212335494564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266158 (n + 1) : ℚ) / (A141021 (A115991 n).toNat : ℚ)

end

end A266208.P6189437212335494564

/-!
# A266209: Number of 4Xn arrays containing n copies of 0..4-1 with no element plus any horizontal, vertical, diagonal or antidiagonal neighbor equal to 4-1.

The programs for A266209, there is no canonical definition to state claims against.
-/

/-! ## A266209.P15324473291293253935

`A266208(A141214(n)+7)`
-/

namespace A266209.P15324473291293253935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (A141214 n + 7).toNat

end

end A266209.P15324473291293253935

/-! ## A266209.P13271494579697957646

`A266208(A052905(n)+9)`
-/

namespace A266209.P13271494579697957646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (A052905 n + 9).toNat

end

end A266209.P13271494579697957646

/-! ## A266209.P8315388101055549600

`A266208(A055999(n)+10)`
-/

namespace A266209.P8315388101055549600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (A055999 n + 10).toNat

end

end A266209.P8315388101055549600

/-! ## A266209.P9917516125620096691

`A266208(eq[5, A066657(n)])`
-/

namespace A266209.P9917516125620096691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266209.P9917516125620096691

/-!
# A266210: Number of 5Xn arrays containing n copies of 0..5-1 with no element plus any horizontal, vertical, diagonal or antidiagonal neighbor equal to 5-1.

The programs for A266210, there is no canonical definition to state claims against.
-/

/-! ## A266210.P2321036282460376431

`A266208(A155212(n)+13)`
-/

namespace A266210.P2321036282460376431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (A155212 n + 13).toNat

end

end A266210.P2321036282460376431

/-! ## A266210.P10795812469057344723

`A266208(A056000(n)+15)`
-/

namespace A266210.P10795812469057344723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (A056000 n + 15).toNat

end

end A266210.P10795812469057344723

/-! ## A266210.P6061187158584547203

`A266208(eq[7, A066657(n)])`
-/

namespace A266210.P6061187158584547203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266210.P6061187158584547203

/-!
# A266211: E.g.f.: Sum_{n>=1} x^(n^2) * exp(n*x^n) / n!.

The programs for A266211, there is no canonical definition to state claims against.
-/

/-! ## A266211.P8495166402379629664

`(n+1)*A262144(a(n-1))²` with `a(0)=1`
-/

namespace A266211.P8495166402379629664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A262144 (a (n - 1)).toNat ^ 2

end

end A266211.P8495166402379629664

/-! ## A266211.P9349547666747513991

`lcm(n+1, A070165((n+1)^(n-1)))`
-/

namespace A266211.P9349547666747513991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A070165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat)

end

end A266211.P9349547666747513991

/-!
# A266212: Positive integers x such that x^3 = y^4 + z^2 for some positive integers y and z.

The programs for A266212, there is no canonical definition to state claims against.
-/

/-! ## A266212.P874344742209337531

`record[A078898(A274012(n+3))]`
-/

namespace A266212.P874344742209337531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A274012 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266212.P874344742209337531

/-! ## A266212.P6522586186995689180

`∩[A277851(n+1), A358610(n+1)]`
-/

namespace A266212.P6522586186995689180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266212.P6522586186995689180

/-!
# A266213: Square array A(n,r), the number of neighbors at a sharp Manhattan distance r in a finite n-hypercube lattice, read by upwards antidiagonals; A(n,r) = Sum_{k=0..min(n,r)} binomial(r-1,k-1)*binomial(n,k)* 2^k.

The programs for A266213, there is no canonical definition to state claims against.
-/

/-! ## A266213.P1218533921589707741

`2*A008288(n)-A035607(n)`
-/

namespace A266213.P1218533921589707741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008288 n - A035607 n

end

end A266213.P1218533921589707741

/-! ## A266213.P15290982804684262382

`A113413(n)+A122542(n)-A035607(n)`
-/

namespace A266213.P15290982804684262382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 n + (A122542 n - A035607 n)

end

end A266213.P15290982804684262382

/-! ## A266213.P917812473831163416

`A122542(A061579(n))`
-/

namespace A266213.P917812473831163416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A061579 n).toNat

end

end A266213.P917812473831163416

/-! ## A266213.P15427147416036090682

`A122542(A038722(n+1)-1)`
-/

namespace A266213.P15427147416036090682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A038722 (n + 1) - 1).toNat

end

end A266213.P15427147416036090682

/-! ## A266213.P14803391682291829821

`A122542(A002024(n+1)²-(n+1))`
-/

namespace A266213.P14803391682291829821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A266213.P14803391682291829821

/-! ## A266213.P768290080443940211

`A113413(n)-A128966(n)`
-/

namespace A266213.P768290080443940211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 n - A128966 n

end

end A266213.P768290080443940211

/-! ## A266213.P12204855984346907048

`A008288(n)-A093411(A035607(n)-A008288(n))`
-/

namespace A266213.P12204855984346907048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n - A093411 (A035607 n - A008288 n).toNat

end

end A266213.P12204855984346907048

/-! ## A266213.P6226010375583087672

`A035607(n)-A005843(A035607(n)-A008288(n))`
-/

namespace A266213.P6226010375583087672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n - A005843 (A035607 n - A008288 n).toNat

end

end A266213.P6226010375583087672

/-! ## A266213.P8780665674372117151

`A004277(A008288(n))-A035607(n)`
-/

namespace A266213.P8780665674372117151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008288 n).toNat - A035607 n

end

end A266213.P8780665674372117151

/-!
# A266214: Numbers n that are not coprime to the numerator of zeta(2*n)/(Pi^(2*n)).

The programs for A266214, the canonical program `A266214.P17513946000815325827` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266214 has offset 1).

The definition of A266214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266214.P17513946000815325827

`lt[a(floor(n/2))+n, n*gcd(2, n)]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266214

/-- `lt[a(floor(n/2))+n, n*gcd(2, n)]` -/
def P17513946000815325827.Spec : Prop :=
  ∀ n, (P17513946000815325827.a n : ℤ) = A266214 (n + 1)

theorem P17513946000815325827.correct : P17513946000815325827.Spec := by
  intro n
  simp only [A266214, Nat.add_sub_cancel]

end A266214

/-! ## A266214.P14117613902088859850

`lt[n^(n%2), a(and(n, n-1))+1]` with `a(0)=-1`
-/

namespace A266214.P14117613902088859850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P14117613902088859850

namespace A266214

/-- `lt[n^(n%2), a(and(n, n-1))+1]` -/
def P14117613902088859850.Spec : Prop :=
  ∀ n, (P14117613902088859850.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P16599105958510836718

`2*lt[2, A050315(n)]`
-/

namespace A266214.P16599105958510836718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P16599105958510836718

namespace A266214

/-- `2*lt[2, A050315(n)]` -/
def P16599105958510836718.Spec : Prop :=
  ∀ n, (P16599105958510836718.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P1745584705325731941

`2*lt[4, A001316(n)]`
-/

namespace A266214.P1745584705325731941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P1745584705325731941

namespace A266214

/-- `2*lt[4, A001316(n)]` -/
def P1745584705325731941.Spec : Prop :=
  ∀ n, (P1745584705325731941.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P17385316085763122290

`2*lt[4, A286622(n)]`
-/

namespace A266214.P17385316085763122290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P17385316085763122290

namespace A266214

/-- `2*lt[4, A286622(n)]` -/
def P17385316085763122290.Spec : Prop :=
  ∀ n, (P17385316085763122290.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P3864160659227143414

`2*lt[6, A278222(n)]`
-/

namespace A266214.P3864160659227143414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P3864160659227143414

namespace A266214

/-- `2*lt[6, A278222(n)]` -/
def P3864160659227143414.Spec : Prop :=
  ∀ n, (P3864160659227143414.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P2162500483475721661

`2*lt[6, A286588(n)]`
-/

namespace A266214.P2162500483475721661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P2162500483475721661

namespace A266214

/-- `2*lt[6, A286588(n)]` -/
def P2162500483475721661.Spec : Prop :=
  ∀ n, (P2162500483475721661.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P2684577690155644889

`lt[1, A128975(n+1)]+1`
-/

namespace A266214.P2684577690155644889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A266214.P2684577690155644889

namespace A266214

/-- `lt[1, A128975(n+1)]+1` -/
def P2684577690155644889.Spec : Prop :=
  ∀ n, (P2684577690155644889.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P7446025290797949521

`2*lt[1, A292601(A292601(n))]`
-/

namespace A266214.P7446025290797949521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 (A292601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P7446025290797949521

namespace A266214

/-- `2*lt[1, A292601(A292601(n))]` -/
def P7446025290797949521.Spec : Prop :=
  ∀ n, (P7446025290797949521.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P2364525875400698854

`2*A072823(n+2)`
-/

namespace A266214.P2364525875400698854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072823 (n + 2)

end

end A266214.P2364525875400698854

namespace A266214

/-- `2*A072823(n+2)` -/
def P2364525875400698854.Spec : Prop :=
  ∀ n, P2364525875400698854.a n = A266214 (n + 1)

end A266214

/-! ## A266214.P10058561388401322947

`2*lt[2, A000120(n)]`
-/

namespace A266214.P10058561388401322947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P10058561388401322947

namespace A266214

/-- `2*lt[2, A000120(n)]` -/
def P10058561388401322947.Spec : Prop :=
  ∀ n, (P10058561388401322947.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P5776685150734047552

`2*lt[2, A079318(n)]`
-/

namespace A266214.P5776685150734047552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P5776685150734047552

namespace A266214

/-- `2*lt[2, A079318(n)]` -/
def P5776685150734047552.Spec : Prop :=
  ∀ n, (P5776685150734047552.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P7298370381174264651

`A004277(A072823(n+2))`
-/

namespace A266214.P7298370381174264651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A072823 (n + 2)).toNat

end

end A266214.P7298370381174264651

namespace A266214

/-- `A004277(A072823(n+2))` -/
def P7298370381174264651.Spec : Prop :=
  ∀ n, P7298370381174264651.a n = A266214 (n + 1)

end A266214

/-! ## A266214.P14975483859799219477

`A004277(lt[2, A000120(n)])`
-/

namespace A266214.P14975483859799219477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A266214.P14975483859799219477

namespace A266214

/-- `A004277(lt[2, A000120(n)])` -/
def P14975483859799219477.Spec : Prop :=
  ∀ n, P14975483859799219477.a n = A266214 (n + 1)

end A266214

/-! ## A266214.P9142842965173563863

`2*lt[1, A088512(n)]`
-/

namespace A266214.P9142842965173563863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P9142842965173563863

namespace A266214

/-- `2*lt[1, A088512(n)]` -/
def P9142842965173563863.Spec : Prop :=
  ∀ n, (P9142842965173563863.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P17602844905839590943

`2*lt[2, A093659(n)]`
-/

namespace A266214.P17602844905839590943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P17602844905839590943

namespace A266214

/-- `2*lt[2, A093659(n)]` -/
def P17602844905839590943.Spec : Prop :=
  ∀ n, (P17602844905839590943.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P6259143609788389939

`2*lt[3, A038573(n)]`
-/

namespace A266214.P6259143609788389939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P6259143609788389939

namespace A266214

/-- `2*lt[3, A038573(n)]` -/
def P6259143609788389939.Spec : Prop :=
  ∀ n, (P6259143609788389939.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P3634411388575422184

`2*lt[6, A071044(n)]`
-/

namespace A266214.P3634411388575422184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P3634411388575422184

namespace A266214

/-- `2*lt[6, A071044(n)]` -/
def P3634411388575422184.Spec : Prop :=
  ∀ n, (P3634411388575422184.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P10991224733764784026

`2*lt[2, ∑[A088705(n)]]`
-/

namespace A266214.P10991224733764784026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266214.P10991224733764784026

namespace A266214

/-- `2*lt[2, ∑[A088705(n)]]` -/
def P10991224733764784026.Spec : Prop :=
  ∀ n, (P10991224733764784026.a n : ℤ) = A266214 (n + 1)

end A266214

/-! ## A266214.P16682024691761921988

`2*(comp[A073137(n)]+1)`
-/

namespace A266214.P16682024691761921988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A266214.P16682024691761921988

namespace A266214

/-- `2*(comp[A073137(n)]+1)` -/
def P16682024691761921988.Spec : Prop :=
  ∀ n, (P16682024691761921988.a n : ℤ) = A266214 (n + 1)

end A266214

/-!
# A266215: Positive integers x such that x^3 - 1 = y^4 + z^2 for some positive integers y and z.

The programs for A266215, there is no canonical definition to state claims against.
-/

/-! ## A266215.P2855983708365620396

`A179791(A287445(n+1)*A326057(n+1))`
-/

namespace A266215.P2855983708365620396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179791 (A287445 (n + 1) * A326057 (n + 1)).toNat

end

end A266215.P2855983708365620396

/-!
# A266216: Triangle read by rows giving successive states of cellular automaton generated by "Rule 7" initiated with a single ON (black) cell.

The programs for A266216, the canonical program `A266216.P13454128615488846391` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266216 has offset 0).

The definition of A266216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266216.P11831059120418241934

`(floor(sqrt(n))%2)^n-char[3]`
-/

namespace A266216.P11831059120418241934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.sqrt n % 2) ^ n : ℕ) : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266216.P11831059120418241934

namespace A266216

/-- `(floor(sqrt(n))%2)^n-char[3]` -/
def P11831059120418241934.Spec : Prop :=
  ∀ n, P11831059120418241934.a n = A266216 n

end A266216

/-! ## A266216.P1340179157744968866

`A266434(char[3]+n)`
-/

namespace A266216.P1340179157744968866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A266216.P1340179157744968866

namespace A266216

/-- `A266434(char[3]+n)` -/
def P1340179157744968866.Spec : Prop :=
  ∀ n, P1340179157744968866.a n = A266216 n

end A266216

/-! ## A266216.P11674140240037993786

`A266434(n)-char[3]`
-/

namespace A266216.P11674140240037993786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266216.P11674140240037993786

namespace A266216

/-- `A266434(n)-char[3]` -/
def P11674140240037993786.Spec : Prop :=
  ∀ n, P11674140240037993786.a n = A266216 n

end A266216

/-! ## A266216.P12306078050776598672

`∑[A010052(C(7, n)%2+n)]%2`
-/

namespace A266216.P12306078050776598672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Nat.choose 7 n % 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A266216.P12306078050776598672

namespace A266216

/-- `∑[A010052(C(7, n)%2+n)]%2` -/
def P12306078050776598672.Spec : Prop :=
  ∀ n, P12306078050776598672.a n = A266216 n

end A266216

/-! ## A266216.P6097226392993812297

`and(char[n²]+a(n-1), A267587(n))` with `a(0)=1, a(1)=1`
-/

namespace A266216.P6097226392993812297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.land (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + a (n - 1)) (A267587 n)

end

end A266216.P6097226392993812297

namespace A266216

/-- `and(char[n²]+a(n-1), A267587(n))` -/
def P6097226392993812297.Spec : Prop :=
  ∀ n, P6097226392993812297.a n = A266216 n

end A266216

/-! ## A266216.P13454128615488846391

`A266155(A113638(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A266216

/-- `A266155(A113638(n))` -/
def P13454128615488846391.Spec : Prop :=
  ∀ n, P13454128615488846391.a n = A266216 n

theorem P13454128615488846391.correct : P13454128615488846391.Spec := by
  intro n
  simp only [A266216]

end A266216

/-! ## A266216.P2961010282287068463

`A266377(A159966(n))`
-/

namespace A266216.P2961010282287068463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266377 (A159966 n).toNat

end

end A266216.P2961010282287068463

namespace A266216

/-- `A266377(A159966(n))` -/
def P2961010282287068463.Spec : Prop :=
  ∀ n, P2961010282287068463.a n = A266216 n

end A266216

/-! ## A266216.P10904005592342261633

`A267034(A178915(n+1))`
-/

namespace A266216.P10904005592342261633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (A178915 (n + 1)).toNat

end

end A266216.P10904005592342261633

namespace A266216

/-- `A267034(A178915(n+1))` -/
def P10904005592342261633.Spec : Prop :=
  ∀ n, P10904005592342261633.a n = A266216 n

end A266216

/-! ## A266216.P3302471521805564918

`A266434(n)*A267871(n)`
-/

namespace A266216.P3302471521805564918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 n * A267871 n

end

end A266216.P3302471521805564918

namespace A266216

/-- `A266434(n)*A267871(n)` -/
def P3302471521805564918.Spec : Prop :=
  ∀ n, P3302471521805564918.a n = A266216 n

end A266216

/-! ## A266216.P3148838548143770418

`and(A042955(n), A266434(n))`
-/

namespace A266216.P3148838548143770418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042955 n) (A266434 n)

end

end A266216.P3148838548143770418

namespace A266216

/-- `and(A042955(n), A266434(n))` -/
def P3148838548143770418.Spec : Prop :=
  ∀ n, P3148838548143770418.a n = A266216 n

end A266216

/-! ## A266216.P14759027105578106689

`and(A130008(n), A266434(n))`
-/

namespace A266216.P14759027105578106689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130008 n) (A266434 n)

end

end A266216.P14759027105578106689

namespace A266216

/-- `and(A130008(n), A266434(n))` -/
def P14759027105578106689.Spec : Prop :=
  ∀ n, P14759027105578106689.a n = A266216 n

end A266216

/-! ## A266216.P4508011900073556726

`and(A266434(n), A271491(n))`
-/

namespace A266216.P4508011900073556726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266434 n) (A271491 n)

end

end A266216.P4508011900073556726

namespace A266216

/-- `and(A266434(n), A271491(n))` -/
def P4508011900073556726.Spec : Prop :=
  ∀ n, P4508011900073556726.a n = A266216 n

end A266216

/-! ## A266216.P9621824393181028913

`and(A266434(n), A316319(n))`
-/

namespace A266216.P9621824393181028913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266434 n) (A316319 n)

end

end A266216.P9621824393181028913

namespace A266216

/-- `and(A266434(n), A316319(n))` -/
def P9621824393181028913.Spec : Prop :=
  ∀ n, P9621824393181028913.a n = A266216 n

end A266216

/-! ## A266216.P4367014996254662608

`xor(A185013(n), A266434(n))`
-/

namespace A266216.P4367014996254662608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185013 n) (A266434 n)

end

end A266216.P4367014996254662608

namespace A266216

/-- `xor(A185013(n), A266434(n))` -/
def P4367014996254662608.Spec : Prop :=
  ∀ n, P4367014996254662608.a n = A266216 n

end A266216

/-! ## A266216.P17193462769910375164

`and(A008461(n+1), A266434(n))`
-/

namespace A266216.P17193462769910375164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008461 (n + 1)) (A266434 n)

end

end A266216.P17193462769910375164

namespace A266216

/-- `and(A008461(n+1), A266434(n))` -/
def P17193462769910375164.Spec : Prop :=
  ∀ n, P17193462769910375164.a n = A266216 n

end A266216

/-! ## A266216.P14555650519952190880

`and(A056813(n+1), A266434(n))`
-/

namespace A266216.P14555650519952190880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056813 (n + 1)) (A266434 n)

end

end A266216.P14555650519952190880

namespace A266216

/-- `and(A056813(n+1), A266434(n))` -/
def P14555650519952190880.Spec : Prop :=
  ∀ n, P14555650519952190880.a n = A266216 n

end A266216

/-! ## A266216.P16107418149836916796

`and(A109986(n+1), A266434(n))`
-/

namespace A266216.P16107418149836916796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109986 (n + 1)) (A266434 n)

end

end A266216.P16107418149836916796

namespace A266216

/-- `and(A109986(n+1), A266434(n))` -/
def P16107418149836916796.Spec : Prop :=
  ∀ n, P16107418149836916796.a n = A266216 n

end A266216

/-! ## A266216.P13029742532717470058

`A266434(A056813(n+1)²)*A266434(n)`
-/

namespace A266216.P13029742532717470058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A056813 (n + 1) ^ 2).toNat * A266434 n

end

end A266216.P13029742532717470058

namespace A266216

/-- `A266434(A056813(n+1)²)*A266434(n)` -/
def P13029742532717470058.Spec : Prop :=
  ∀ n, P13029742532717470058.a n = A266216 n

end A266216

/-! ## A266216.P15426662790041667801

`A266982(A193768(n+2))`
-/

namespace A266216.P15426662790041667801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (A193768 (n + 2)).toNat

end

end A266216.P15426662790041667801

namespace A266216

/-- `A266982(A193768(n+2))` -/
def P15426662790041667801.Spec : Prop :=
  ∀ n, P15426662790041667801.a n = A266216 n

end A266216

/-! ## A266216.P3631095812176045440

`and(A266434(n), A270289(n))`
-/

namespace A266216.P3631095812176045440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266434 n) (A270289 n)

end

end A266216.P3631095812176045440

namespace A266216

/-- `and(A266434(n), A270289(n))` -/
def P3631095812176045440.Spec : Prop :=
  ∀ n, P3631095812176045440.a n = A266216 n

end A266216

/-!
# A266217: Binary representation of the n-th iteration of the "Rule 7" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266217, there is no canonical definition to state claims against.
-/

/-! ## A266217.P2150201249323834037

`A266435(n)-char[1]`
-/

namespace A266217.P2150201249323834037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266435 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266217.P2150201249323834037

/-! ## A266217.P3428806738889919004

`A266324(n)+A266435(n)-A266218(n)`
-/

namespace A266217.P3428806738889919004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266324 n + (A266435 n - A266218 n)

end

end A266217.P3428806738889919004

/-! ## A266217.P10639318204607059125

`A266218(n)+A266435(n)-A266436(n)`
-/

namespace A266217.P10639318204607059125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266218 n + (A266435 n - A266436 n)

end

end A266217.P10639318204607059125

/-! ## A266217.P10180420300551004412

`A266220(n)+A266435(n)-A266437(n)`
-/

namespace A266217.P10180420300551004412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 n + (A266435 n - A266437 n)

end

end A266217.P10180420300551004412

/-!
# A266218: Decimal representation of the n-th iteration of the "Rule 7" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266218, the canonical program `A266218.P16124281478245643888` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266218 has offset 0).

The definition of A266218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266218.P6115065084842157430

`A266324(n)+char[1]`
-/

namespace A266218.P6115065084842157430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266324 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266218.P6115065084842157430

namespace A266218

/-- `A266324(n)+char[1]` -/
def P6115065084842157430.Spec : Prop :=
  ∀ n, P6115065084842157430.a n = A266218 n

end A266218

/-! ## A266218.P10185122117659335193

`A266436(n)-char[1]`
-/

namespace A266218.P10185122117659335193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266436 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266218.P10185122117659335193

namespace A266218

/-- `A266436(n)-char[1]` -/
def P10185122117659335193.Spec : Prop :=
  ∀ n, P10185122117659335193.a n = A266218 n

end A266218

/-! ## A266218.P17422657199789448795

`(char[1]+1)*A266380(n)`
-/

namespace A266218.P17422657199789448795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A266380 n

end

end A266218.P17422657199789448795

namespace A266218

/-- `(char[1]+1)*A266380(n)` -/
def P17422657199789448795.Spec : Prop :=
  ∀ n, P17422657199789448795.a n = A266218 n

end A266218

/-! ## A266218.P17406309839480624952

`A335956(A266220(n))`
-/

namespace A266218.P17406309839480624952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335956 (A266220 n).toNat

end

end A266218.P17406309839480624952

namespace A266218

/-- `A335956(A266220(n))` -/
def P17406309839480624952.Spec : Prop :=
  ∀ n, P17406309839480624952.a n = A266218 n

end A266218

/-! ## A266218.P6804677330265603021

`A266380(n)*A285068(n)`
-/

namespace A266218.P6804677330265603021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266380 n * A285068 n

end

end A266218.P6804677330265603021

namespace A266218

/-- `A266380(n)*A285068(n)` -/
def P6804677330265603021.Spec : Prop :=
  ∀ n, P6804677330265603021.a n = A266218 n

end A266218

/-! ## A266218.P3488739355105860873

`A266380(n)*A288872(n)`
-/

namespace A266218.P3488739355105860873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266380 n * A288872 n

end

end A266218.P3488739355105860873

namespace A266218

/-- `A266380(n)*A288872(n)` -/
def P3488739355105860873.Spec : Prop :=
  ∀ n, P3488739355105860873.a n = A266218 n

end A266218

/-! ## A266218.P2271786188027534661

`A266380(n)*A293668(n)`
-/

namespace A266218.P2271786188027534661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266380 n * A293668 n

end

end A266218.P2271786188027534661

namespace A266218

/-- `A266380(n)*A293668(n)` -/
def P2271786188027534661.Spec : Prop :=
  ∀ n, P2271786188027534661.a n = A266218 n

end A266218

/-! ## A266218.P5405541240295141503

`A266380(n)*A369010(n)`
-/

namespace A266218.P5405541240295141503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266380 n * A369010 n

end

end A266218.P5405541240295141503

namespace A266218

/-- `A266380(n)*A369010(n)` -/
def P5405541240295141503.Spec : Prop :=
  ∀ n, P5405541240295141503.a n = A266218 n

end A266218

/-! ## A266218.P9069772741979807454

`lcm(A020513(n), A266380(n))`
-/

namespace A266218.P9069772741979807454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020513 n) (A266380 n)

end

end A266218.P9069772741979807454

namespace A266218

/-- `lcm(A020513(n), A266380(n))` -/
def P9069772741979807454.Spec : Prop :=
  ∀ n, (P9069772741979807454.a n : ℤ) = A266218 n

end A266218

/-! ## A266218.P16124281478245643888

`xor(A063524(n), A266436(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A266218

/-- `xor(A063524(n), A266436(n))` -/
def P16124281478245643888.Spec : Prop :=
  ∀ n, P16124281478245643888.a n = A266218 n

theorem P16124281478245643888.correct : P16124281478245643888.Spec := by
  intro n
  simp only [A266218]

end A266218

/-! ## A266218.P10712894259988889451

`xor(A157928(n), A266302(n))`
-/

namespace A266218.P10712894259988889451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157928 n) (A266302 n)

end

end A266218.P10712894259988889451

namespace A266218

/-- `xor(A157928(n), A266302(n))` -/
def P10712894259988889451.Spec : Prop :=
  ∀ n, P10712894259988889451.a n = A266218 n

end A266218

/-! ## A266218.P2564626196031477379

`(A266436(n)+A266324(n))/2`
-/

namespace A266218.P2564626196031477379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266436 n + A266324 n : ℚ) / 2

end

end A266218.P2564626196031477379

namespace A266218

/-- `(A266436(n)+A266324(n))/2` -/
def P2564626196031477379.Spec : Prop :=
  ∀ n, P2564626196031477379.a n = (A266218 n : ℚ)

end A266218

/-! ## A266218.P1400707614465226778

`A266380(n)+3*A266222(A266222(n))`
-/

namespace A266218.P1400707614465226778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266380 n + 3 * A266222 (A266222 n).toNat

end

end A266218.P1400707614465226778

namespace A266218

/-- `A266380(n)+3*A266222(A266222(n))` -/
def P1400707614465226778.Spec : Prop :=
  ∀ n, P1400707614465226778.a n = A266218 n

end A266218

/-! ## A266218.P14427144445678680392

`A266220(n)+A266436(n)-A266437(n)`
-/

namespace A266218.P14427144445678680392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 n + (A266436 n - A266437 n)

end

end A266218.P14427144445678680392

namespace A266218

/-- `A266220(n)+A266436(n)-A266437(n)` -/
def P14427144445678680392.Spec : Prop :=
  ∀ n, P14427144445678680392.a n = A266218 n

end A266218

/-! ## A266218.P30931693039439321

`A266377(n)+A266436(n)-A266434(n)`
-/

namespace A266218.P30931693039439321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266377 n + (A266436 n - A266434 n)

end

end A266218.P30931693039439321

namespace A266218

/-- `A266377(n)+A266436(n)-A266434(n)` -/
def P30931693039439321.Spec : Prop :=
  ∀ n, P30931693039439321.a n = A266218 n

end A266218

/-! ## A266218.P6620075307971973751

`A266302(n)-A062157(n-A062157(n))`
-/

namespace A266218.P6620075307971973751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266302 n - A062157 ((n : ℤ) - A062157 n).toNat

end

end A266218.P6620075307971973751

namespace A266218

/-- `A266302(n)-A062157(n-A062157(n))` -/
def P6620075307971973751.Spec : Prop :=
  ∀ n, P6620075307971973751.a n = A266218 n

end A266218

/-! ## A266218.P16568262801002897068

`xor(A057427(n-A057427(n)), A266302(n))`
-/

namespace A266218.P16568262801002897068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 ((n : ℤ) - A057427 n).toNat) (A266302 n)

end

end A266218.P16568262801002897068

namespace A266218

/-- `xor(A057427(n-A057427(n)), A266302(n))` -/
def P16568262801002897068.Spec : Prop :=
  ∀ n, P16568262801002897068.a n = A266218 n

end A266218

/-! ## A266218.P10807542054326512775

`A266434(n+1)+A266324(n)-A266155(n+1)`
-/

namespace A266218.P10807542054326512775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (n + 1) + (A266324 n - A266155 (n + 1))

end

end A266218.P10807542054326512775

namespace A266218

/-- `A266434(n+1)+A266324(n)-A266155(n+1)` -/
def P10807542054326512775.Spec : Prop :=
  ∀ n, P10807542054326512775.a n = A266218 n

end A266218

/-! ## A266218.P8971385983080190197

`A266155(n+1)+A266436(n)-A266434(n+1)`
-/

namespace A266218.P8971385983080190197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266155 (n + 1) + (A266436 n - A266434 (n + 1))

end

end A266218.P8971385983080190197

namespace A266218

/-- `A266155(n+1)+A266436(n)-A266434(n+1)` -/
def P8971385983080190197.Spec : Prop :=
  ∀ n, P8971385983080190197.a n = A266218 n

end A266218

/-! ## A266218.P7556183916073531792

`lcm(A073097(n), A267890(n))`
-/

namespace A266218.P7556183916073531792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073097 n) (A267890 n)

end

end A266218.P7556183916073531792

namespace A266218

/-- `lcm(A073097(n), A267890(n))` -/
def P7556183916073531792.Spec : Prop :=
  ∀ n, (P7556183916073531792.a n : ℤ) = A266218 n

end A266218

/-!
# A266219: Binary representation of the middle column of the "Rule 7" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266219, the canonical program `A266219.P11688854752725379845` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266219 has offset 0).

The definition of A266219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266219.P11688854752725379845

`ogf((1+x-x^2)/(1-10x-x^2+10x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266219

/-- `ogf((1+x-x^2)/(1-10x-x^2+10x^3))` -/
def P11688854752725379845.Spec : Prop :=
  ∀ n, P11688854752725379845.a n = A266219 n

theorem P11688854752725379845.correct : P11688854752725379845.Spec := by
  intro n
  simp only [A266219]

end A266219

/-! ## A266219.P12902532835149228602

`n%2+10*a(n-1)` with `a(0)=1`
-/

namespace A266219.P12902532835149228602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n % 2 + 10 * a (n - 1)

end

end A266219.P12902532835149228602

namespace A266219

/-- `n%2+10*a(n-1)` -/
def P12902532835149228602.Spec : Prop :=
  ∀ n, (P12902532835149228602.a n : ℤ) = A266219 n

end A266219

/-! ## A266219.P7482110232235521297

`and(1, n)+10*a(n-1)` with `a(0)=1`
-/

namespace A266219.P7482110232235521297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 n + 10 * a (n - 1)

end

end A266219.P7482110232235521297

namespace A266219

/-- `and(1, n)+10*a(n-1)` -/
def P7482110232235521297.Spec : Prop :=
  ∀ n, (P7482110232235521297.a n : ℤ) = A266219 n

end A266219

/-! ## A266219.P6255208296061297245

`or(10*a(n-1), gcd(2, n))` with `a(0)=1`
-/

namespace A266219.P6255208296061297245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (Nat.gcd 2 n)

end

end A266219.P6255208296061297245

namespace A266219

/-- `or(10*a(n-1), gcd(2, n))` -/
def P6255208296061297245.Spec : Prop :=
  ∀ n, (P6255208296061297245.a n : ℤ) = A266219 n

end A266219

/-! ## A266219.P6186631690849904931

`or(10*a(n-1), and(1, n))` with `a(0)=1`
-/

namespace A266219.P6186631690849904931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (Nat.land 1 n)

end

end A266219.P6186631690849904931

namespace A266219

/-- `or(10*a(n-1), and(1, n))` -/
def P6186631690849904931.Spec : Prop :=
  ∀ n, (P6186631690849904931.a n : ℤ) = A266219 n

end A266219

/-! ## A266219.P5159980954917187466

`floor(∑[10^n/11])+10^n`
-/

namespace A266219.P5159980954917187466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (10 ^ n : ℤ)

end

end A266219.P5159980954917187466

namespace A266219

/-- `floor(∑[10^n/11])+10^n` -/
def P5159980954917187466.Spec : Prop :=
  ∀ n, P5159980954917187466.a n = A266219 n

end A266219

/-! ## A266219.P2782132380301625954

`or(10*a(n-1), char[2*n+1])` with `a(0)=1`
-/

namespace A266219.P2782132380301625954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A266219.P2782132380301625954

namespace A266219

/-- `or(10*a(n-1), char[2*n+1])` -/
def P2782132380301625954.Spec : Prop :=
  ∀ n, (P2782132380301625954.a n : ℤ) = A266219 n

end A266219

/-! ## A266219.P579472678974446133

`floor(A179557(n+1)/9)`
-/

namespace A266219.P579472678974446133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179557 (n + 1) : ℚ) / 9⌋

end

end A266219.P579472678974446133

namespace A266219

/-- `floor(A179557(n+1)/9)` -/
def P579472678974446133.Spec : Prop :=
  ∀ n, P579472678974446133.a n = A266219 n

end A266219

/-! ## A266219.P16264604993738706781

`abs(A002275(n)-A037487(n))`
-/

namespace A266219.P16264604993738706781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002275 n - A037487 (n + 1)|

end

end A266219.P16264604993738706781

namespace A266219

/-- `abs(A002275(n)-A037487(n))` -/
def P16264604993738706781.Spec : Prop :=
  ∀ n, P16264604993738706781.a n = A266219 n

end A266219

/-! ## A266219.P2199105553457938797

`∑[A015585(n)+∑[A055996(n)]]`
-/

namespace A266219.P2199105553457938797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015585 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266219.P2199105553457938797

namespace A266219

/-- `∑[A015585(n)+∑[A055996(n)]]` -/
def P2199105553457938797.Spec : Prop :=
  ∀ n, P2199105553457938797.a n = A266219 n

end A266219

/-!
# A266220: Number of ON (black) cells in the n-th iteration of the "Rule 7" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266220, the canonical program `A266220.P9191670553585347128` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266220 has offset 0).

The definition of A266220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266220.P7941053955314346247

`C(lcm(2, n)+1, 2*n)-char[1]`
-/

namespace A266220.P7941053955314346247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lcm 2 n + 1) (2 * n) : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266220.P7941053955314346247

namespace A266220

/-- `C(lcm(2, n)+1, 2*n)-char[1]` -/
def P7941053955314346247.Spec : Prop :=
  ∀ n, P7941053955314346247.a n = A266220 n

end A266220

/-! ## A266220.P2783654296459175394

`xor(a(n-1)+1, 2*n)` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A266220.P2783654296459175394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  Nat.xor (a (n - 1) + 1) (2 * n)

end

end A266220.P2783654296459175394

namespace A266220

/-- `xor(a(n-1)+1, 2*n)` -/
def P2783654296459175394.Spec : Prop :=
  ∀ n, (P2783654296459175394.a n : ℤ) = A266220 n

end A266220

/-! ## A266220.P7690605701538778203

`xor(1, 2*n-a(n-1))` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A266220.P7690605701538778203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  Int.xor 1 ((2 * n : ℤ) - a (n - 1))

end

end A266220.P7690605701538778203

namespace A266220

/-- `xor(1, 2*n-a(n-1))` -/
def P7690605701538778203.Spec : Prop :=
  ∀ n, P7690605701538778203.a n = A266220 n

end A266220

/-! ## A266220.P11808324231506727726

`C(n-1, a(n-1))*Δ[n²]` with `a(0)=1, a(1)=2`
-/

namespace A266220.P11808324231506727726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Nat.choose ((n : ℤ) - 1).toNat (a (n - 1)).toNat : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A266220.P11808324231506727726

namespace A266220

/-- `C(n-1, a(n-1))*Δ[n²]` -/
def P11808324231506727726.Spec : Prop :=
  ∀ n, P11808324231506727726.a n = A266220 n

end A266220

/-! ## A266220.P6757365782815942538

`(2*n+1)*C(2, a(n-1))` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A266220.P6757365782815942538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  (2 * n + 1) * Nat.choose 2 (a (n - 1))

end

end A266220.P6757365782815942538

namespace A266220

/-- `(2*n+1)*C(2, a(n-1))` -/
def P6757365782815942538.Spec : Prop :=
  ∀ n, (P6757365782815942538.a n : ℤ) = A266220 n

end A266220

/-! ## A266220.P10793927216899802063

`floor((2*n+1)^(1-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A266220.P10793927216899802063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(2 * n + 1 : ℚ) ^ (1 - a (n - 1) : ℤ)⌋

end

end A266220.P10793927216899802063

namespace A266220

/-- `floor((2*n+1)^(1-a(n-1)))` -/
def P10793927216899802063.Spec : Prop :=
  ∀ n, P10793927216899802063.a n = A266220 n

end A266220

/-! ## A266220.P2442334563190729795

`round((2*n+1)^(1-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A266220.P2442334563190729795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ (1 - a (n - 1) : ℤ))

end

end A266220.P2442334563190729795

namespace A266220

/-- `round((2*n+1)^(1-a(n-1)))` -/
def P2442334563190729795.Spec : Prop :=
  ∀ n, P2442334563190729795.a n = A266220 n

end A266220

/-! ## A266220.P11332215494816118779

`∑[4-a(n-1)]-a(n-1)` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A266220.P11332215494816118779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A266220.P11332215494816118779

namespace A266220

/-- `∑[4-a(n-1)]-a(n-1)` -/
def P11332215494816118779.Spec : Prop :=
  ∀ n, P11332215494816118779.a n = A266220 n

end A266220

/-! ## A266220.P7390451410983863284

`(2*n+1-a(n-1))*n%2` with `a(0)=1`
-/

namespace A266220.P7390451410983863284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) + (1 - a (n - 1))) * ((n % 2 : ℕ) : ℤ)

end

end A266220.P7390451410983863284

namespace A266220

/-- `(2*n+1-a(n-1))*n%2` -/
def P7390451410983863284.Spec : Prop :=
  ∀ n, P7390451410983863284.a n = A266220 n

end A266220

/-! ## A266220.P17917289833516082340

`(a(n-1)+n+1)²%n²` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A266220.P17917289833516082340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  (a (n - 1) + (n + 1)) ^ 2 % n ^ 2

end

end A266220.P17917289833516082340

namespace A266220

/-- `(a(n-1)+n+1)²%n²` -/
def P17917289833516082340.Spec : Prop :=
  ∀ n, (P17917289833516082340.a n : ℤ) = A266220 n

end A266220

/-! ## A266220.P6724553539338486935

`(2*n+1-a(n-1))*and(1, n)` with `a(0)=1`
-/

namespace A266220.P6724553539338486935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1 : ℤ) - a (n - 1)) * (Nat.land 1 n : ℤ)

end

end A266220.P6724553539338486935

namespace A266220

/-- `(2*n+1-a(n-1))*and(1, n)` -/
def P6724553539338486935.Spec : Prop :=
  ∀ n, P6724553539338486935.a n = A266220 n

end A266220

/-! ## A266220.P2300040552844139305

`C(n, 2*a(n-1))*comp[2*n]` with `a(0)=1, a(1)=2`
-/

namespace A266220.P2300040552844139305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.choose n (2 * a (n - 1)) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A266220.P2300040552844139305

namespace A266220

/-- `C(n, 2*a(n-1))*comp[2*n]` -/
def P2300040552844139305.Spec : Prop :=
  ∀ n, (P2300040552844139305.a n : ℤ) = A266220 n

end A266220

/-! ## A266220.P13094294774769991430

`C(1-(a(n-1)-2*n), 2*n)` with `a(0)=1, a(1)=2`
-/

namespace A266220.P13094294774769991430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.choose (1 - ((a (n - 1) : ℤ) - (2 * n : ℤ))).toNat (2 * n)

end

end A266220.P13094294774769991430

namespace A266220

/-- `C(1-(a(n-1)-2*n), 2*n)` -/
def P13094294774769991430.Spec : Prop :=
  ∀ n, (P13094294774769991430.a n : ℤ) = A266220 n

end A266220

/-! ## A266220.P5865509583859189620

`floor((2*n+1)/(a(n-1)+1)²)` with `a(0)=1, a(1)=2`
-/

namespace A266220.P5865509583859189620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(2 * n + 1 : ℚ) / ((a (n - 1) + 1) ^ 2 : ℚ)⌋

end

end A266220.P5865509583859189620

namespace A266220

/-- `floor((2*n+1)/(a(n-1)+1)²)` -/
def P5865509583859189620.Spec : Prop :=
  ∀ n, P5865509583859189620.a n = A266220 n

end A266220

/-! ## A266220.P17132050741873861222

`lcm(n+1+n, C(n-1, a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A266220.P17132050741873861222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm (n + 1 + n) (Nat.choose ((n : ℤ) - 1).toNat (a (n - 1)))

end

end A266220.P17132050741873861222

namespace A266220

/-- `lcm(n+1+n, C(n-1, a(n-1)))` -/
def P17132050741873861222.Spec : Prop :=
  ∀ n, (P17132050741873861222.a n : ℤ) = A266220 n

end A266220

/-! ## A266220.P9191670553585347128

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=0, a(3)=7, a(4)=0, a(5)=11`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266220

/-- `2*a(n-2)-a(n-4)` -/
def P9191670553585347128.Spec : Prop :=
  ∀ n, P9191670553585347128.a n = A266220 n

theorem P9191670553585347128.correct : P9191670553585347128.Spec := by
  intro n
  simp only [A266220]

end A266220

/-! ## A266220.P2553248318759805028

`A266437(n)-char[1]`
-/

namespace A266220.P2553248318759805028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266220.P2553248318759805028

namespace A266220

/-- `A266437(n)-char[1]` -/
def P2553248318759805028.Spec : Prop :=
  ∀ n, P2553248318759805028.a n = A266220 n

end A266220

/-! ## A266220.P15585161137519584402

`Δ[n²]-A266222(n)`
-/

namespace A266220.P15585161137519584402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266222 n

end

end A266220.P15585161137519584402

namespace A266220

/-- `Δ[n²]-A266222(n)` -/
def P15585161137519584402.Spec : Prop :=
  ∀ n, P15585161137519584402.a n = A266220 n

end A266220

/-! ## A266220.P12454791413646669408

`xor(A010684(n), A019425(n))`
-/

namespace A266220.P12454791413646669408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A019425 n)

end

end A266220.P12454791413646669408

namespace A266220

/-- `xor(A010684(n), A019425(n))` -/
def P12454791413646669408.Spec : Prop :=
  ∀ n, P12454791413646669408.a n = A266220 n

end A266220

/-! ## A266220.P16255827214015835123

`xor(A063524(n), A266437(n))`
-/

namespace A266220.P16255827214015835123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A266437 n)

end

end A266220.P16255827214015835123

namespace A266220

/-- `xor(A063524(n), A266437(n))` -/
def P16255827214015835123.Spec : Prop :=
  ∀ n, P16255827214015835123.a n = A266220 n

end A266220

/-!
# A266221: Total number of ON (black) cells after n iterations of the "Rule 7" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266221, the canonical program `A266221.P12464840087749271452` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266221 has offset 0).

The definition of A266221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266221.P4058518763328101686

`C(or(1, n+1), 2%(n+2))`
-/

namespace A266221.P4058518763328101686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 (n + 1)) (2 % (n + 2))

end

end A266221.P4058518763328101686

namespace A266221

/-- `C(or(1, n+1), 2%(n+2))` -/
def P4058518763328101686.Spec : Prop :=
  ∀ n, (P4058518763328101686.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P326868732009569662

`C(and(1, n)^n+n+1, 2)`
-/

namespace A266221.P326868732009569662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 1 n ^ n + n + 1) 2

end

end A266221.P326868732009569662

namespace A266221

/-- `C(and(1, n)^n+n+1, 2)` -/
def P326868732009569662.Spec : Prop :=
  ∀ n, (P326868732009569662.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P1640661444665767019

`C(∑[2-a(n-1)], 2)` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A266221.P1640661444665767019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A266221.P1640661444665767019

namespace A266221

/-- `C(∑[2-a(n-1)], 2)` -/
def P1640661444665767019.Spec : Prop :=
  ∀ n, (P1640661444665767019.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P3133954669619704484

`C(char[n*n%2]+n+1, 2)`
-/

namespace A266221.P3133954669619704484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + n + 1) 2

end

end A266221.P3133954669619704484

namespace A266221

/-- `C(char[n*n%2]+n+1, 2)` -/
def P3133954669619704484.Spec : Prop :=
  ∀ n, (P3133954669619704484.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P3798361358612645295

`∑[n]+C(n+1, n*gcd(2, n))`
-/

namespace A266221.P3798361358612645295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 1) (n * Nat.gcd 2 n)

end

end A266221.P3798361358612645295

namespace A266221

/-- `∑[n]+C(n+1, n*gcd(2, n))` -/
def P3798361358612645295.Spec : Prop :=
  ∀ n, (P3798361358612645295.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P8188931107242650341

`C(C(lcm(2, n), 2*n)+n+1, 2)`
-/

namespace A266221.P8188931107242650341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (Nat.lcm 2 n) (2 * n) + (n + 1)) 2

end

end A266221.P8188931107242650341

namespace A266221

/-- `C(C(lcm(2, n), 2*n)+n+1, 2)` -/
def P8188931107242650341.Spec : Prop :=
  ∀ n, (P8188931107242650341.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P6208010016721165178

`C(or(1, n+1), abs(char[2*n]-n))`
-/

namespace A266221.P6208010016721165178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 (n + 1)) |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)|.toNat

end

end A266221.P6208010016721165178

namespace A266221

/-- `C(or(1, n+1), abs(char[2*n]-n))` -/
def P6208010016721165178.Spec : Prop :=
  ∀ n, (P6208010016721165178.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P238457632040566489

`floor(∑[n]+(n+1)^(-1)^(n+1))`
-/

namespace A266221.P238457632040566489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n + 1 : ℚ) ^ ((-1) ^ (n + 1) : ℤ)⌋

end

end A266221.P238457632040566489

namespace A266221

/-- `floor(∑[n]+(n+1)^(-1)^(n+1))` -/
def P238457632040566489.Spec : Prop :=
  ∀ n, P238457632040566489.a n = A266221 n

end A266221

/-! ## A266221.P15679564780515154326

`∑[xor(a(n-1)+1, 2*n)]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A266221.P15679564780515154326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  Nat.xor (f1 (n - 1) + 1) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266221.P15679564780515154326

namespace A266221

/-- `∑[xor(a(n-1)+1, 2*n)]` -/
def P15679564780515154326.Spec : Prop :=
  ∀ n, (P15679564780515154326.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P4830132302124855866

`C(and(n+1, -(floor(atan(n))+1))+1, 2)`
-/

namespace A266221.P4830132302124855866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n + 1 : ℤ) (-(⌊Real.arctan (n : ℝ)⌋ + 1)) + 1).toNat 2

end

end A266221.P4830132302124855866

namespace A266221

/-- `C(and(n+1, -(floor(atan(n))+1))+1, 2)` -/
def P4830132302124855866.Spec : Prop :=
  ∀ n, (P4830132302124855866.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P1715311153430289239

`C(n+2-val(a(n-1), n+1), 2)` with `a(0)=1`
-/

namespace A266221.P1715311153430289239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ((n + 2 : ℤ) - (SequenceMachineLib.valuation (a (n - 1)) (n + 1) : ℤ)).toNat 2

end

end A266221.P1715311153430289239

namespace A266221

/-- `C(n+2-val(a(n-1), n+1), 2)` -/
def P1715311153430289239.Spec : Prop :=
  ∀ n, (P1715311153430289239.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P14028117510362207943

`∑[∑[4-a(n-1)]-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A266221.P14028117510362207943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266221.P14028117510362207943

namespace A266221

/-- `∑[∑[4-a(n-1)]-a(n-1)]` -/
def P14028117510362207943.Spec : Prop :=
  ∀ n, P14028117510362207943.a n = A266221 n

end A266221

/-! ## A266221.P12464840087749271452

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=10, a(4)=10, a(5)=21`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266221

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P12464840087749271452.Spec : Prop :=
  ∀ n, P12464840087749271452.a n = A266221 n

theorem P12464840087749271452.correct : P12464840087749271452.Spec := by
  intro n
  simp only [A266221]

end A266221

/-! ## A266221.P8721879048009391604

`∑[A266220(n)]`
-/

namespace A266221.P8721879048009391604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266221.P8721879048009391604

namespace A266221

/-- `∑[A266220(n)]` -/
def P8721879048009391604.Spec : Prop :=
  ∀ n, P8721879048009391604.a n = A266221 n

end A266221

/-! ## A266221.P14594778727528091129

`C(∑[A105812(n)+1], 2)`
-/

namespace A266221.P14594778727528091129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A266221.P14594778727528091129

namespace A266221

/-- `C(∑[A105812(n)+1], 2)` -/
def P14594778727528091129.Spec : Prop :=
  ∀ n, (P14594778727528091129.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P15792395222789210574

`(n+1)²-A266223(n)`
-/

namespace A266221.P15792395222789210574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266223 n

end

end A266221.P15792395222789210574

namespace A266221

/-- `(n+1)²-A266223(n)` -/
def P15792395222789210574.Spec : Prop :=
  ∀ n, P15792395222789210574.a n = A266221 n

end A266221

/-! ## A266221.P10026852698684599638

`∑[n]+C(A014681(n), n)`
-/

namespace A266221.P10026852698684599638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (A014681 n).toNat n

end

end A266221.P10026852698684599638

namespace A266221

/-- `∑[n]+C(A014681(n), n)` -/
def P10026852698684599638.Spec : Prop :=
  ∀ n, (P10026852698684599638.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P2412595076089282286

`C(A131055(n+1)+1, 2)`
-/

namespace A266221.P2412595076089282286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131055 (n + 1) + 1).toNat 2

end

end A266221.P2412595076089282286

namespace A266221

/-- `C(A131055(n+1)+1, 2)` -/
def P2412595076089282286.Spec : Prop :=
  ∀ n, (P2412595076089282286.a n : ℤ) = A266221 n

end A266221

/-! ## A266221.P18312784112211227106

`(n+1)²-∑[A266222(n)]`
-/

namespace A266221.P18312784112211227106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266221.P18312784112211227106

namespace A266221

/-- `(n+1)²-∑[A266222(n)]` -/
def P18312784112211227106.Spec : Prop :=
  ∀ n, P18312784112211227106.a n = A266221 n

end A266221

/-! ## A266221.P16570009494563491695

`A266437(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A266221.P16570009494563491695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A266437 n + a (n - 1)

end

end A266221.P16570009494563491695

namespace A266221

/-- `A266437(n)+a(n-1)` -/
def P16570009494563491695.Spec : Prop :=
  ∀ n, P16570009494563491695.a n = A266221 n

end A266221

/-!
# A266222: Number of OFF (white) cells in the n-th iteration of the "Rule 7" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266222, the canonical program `A266222.P2338999857903625610` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266222 has offset 0).

The definition of A266222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266222.P2338999857903625610

`xor(a(n-1)+1, 2*n)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266222

/-- `xor(a(n-1)+1, 2*n)` -/
def P2338999857903625610.Spec : Prop :=
  ∀ n, (P2338999857903625610.a n : ℤ) = A266222 n

theorem P2338999857903625610.correct : P2338999857903625610.Spec := by
  intro n
  simp only [A266222]

end A266222

/-! ## A266222.P17546798163830069027

`xor(1, 2*n-a(n-1))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A266222.P17546798163830069027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  Int.xor 1 ((2 * n : ℤ) - a (n - 1))

end

end A266222.P17546798163830069027

namespace A266222

/-- `xor(1, 2*n-a(n-1))` -/
def P17546798163830069027.Spec : Prop :=
  ∀ n, P17546798163830069027.a n = A266222 n

end A266222

/-! ## A266222.P12715747445600148614

`C(a(n-2)+4, 2*n)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A266222.P12715747445600148614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  Nat.choose (a (n - 2) + 4) (2 * n)

end

end A266222.P12715747445600148614

namespace A266222

/-- `C(a(n-2)+4, 2*n)` -/
def P12715747445600148614.Spec : Prop :=
  ∀ n, (P12715747445600148614.a n : ℤ) = A266222 n

end A266222

/-! ## A266222.P13553178387062770086

`char[1]+Δ[n²]*char[2*(n+1)]`
-/

namespace A266222.P13553178387062770086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266222.P13553178387062770086

namespace A266222

/-- `char[1]+Δ[n²]*char[2*(n+1)]` -/
def P13553178387062770086.Spec : Prop :=
  ∀ n, P13553178387062770086.a n = A266222 n

end A266222

/-! ## A266222.P6519456028627792869

`(2*n+1)*a((n+1)%2)` with `a(0)=0, a(1)=1`
-/

namespace A266222.P6519456028627792869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n + 1) * a ((n + 1) % 2)

end

end A266222.P6519456028627792869

namespace A266222

/-- `(2*n+1)*a((n+1)%2)` -/
def P6519456028627792869.Spec : Prop :=
  ∀ n, (P6519456028627792869.a n : ℤ) = A266222 n

end A266222

/-! ## A266222.P5770632004699773978

`(2*n+1)*a(and(1, n+1))` with `a(0)=0, a(1)=1`
-/

namespace A266222.P5770632004699773978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n + 1) * a (Nat.land 1 (n + 1))

end

end A266222.P5770632004699773978

namespace A266222

/-- `(2*n+1)*a(and(1, n+1))` -/
def P5770632004699773978.Spec : Prop :=
  ∀ n, (P5770632004699773978.a n : ℤ) = A266222 n

end A266222

/-! ## A266222.P1914589264406285881

`and(2*n+1, floor((1-ϕ)^(n-1)))`
-/

namespace A266222.P1914589264406285881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) ⌊(1 - Real.goldenRatio) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A266222.P1914589264406285881

namespace A266222

/-- `and(2*n+1, floor((1-ϕ)^(n-1)))` -/
def P1914589264406285881.Spec : Prop :=
  ∀ n, P1914589264406285881.a n = A266222 n

end A266222

/-! ## A266222.P16586808713177045170

`C(n-1, a(n-1))*Δ[n²]` with `a(0)=0, a(1)=1`
-/

namespace A266222.P16586808713177045170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.choose ((n : ℤ) - 1).toNat (a (n - 1)).toNat : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A266222.P16586808713177045170

namespace A266222

/-- `C(n-1, a(n-1))*Δ[n²]` -/
def P16586808713177045170.Spec : Prop :=
  ∀ n, P16586808713177045170.a n = A266222 n

end A266222

/-! ## A266222.P10604850152281151236

`(a(n-1)+n+1)²%n²` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A266222.P10604850152281151236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  (a (n - 1) + (n + 1)) ^ 2 % n ^ 2

end

end A266222.P10604850152281151236

namespace A266222

/-- `(a(n-1)+n+1)²%n²` -/
def P10604850152281151236.Spec : Prop :=
  ∀ n, (P10604850152281151236.a n : ℤ) = A266222 n

end A266222

/-! ## A266222.P18381351817904119447

`(2*n+1)%or(2*n, 3%(n+2))`
-/

namespace A266222.P18381351817904119447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % Nat.lor (2 * n) (3 % (n + 2))

end

end A266222.P18381351817904119447

namespace A266222

/-- `(2*n+1)%or(2*n, 3%(n+2))` -/
def P18381351817904119447.Spec : Prop :=
  ∀ n, (P18381351817904119447.a n : ℤ) = A266222 n

end A266222

/-! ## A266222.P13492693513714538809

`lcm(n+1+n, C(n-1, a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A266222.P13492693513714538809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm (n + 1 + n) (Nat.choose ((n : ℤ) - 1).toNat (a (n - 1)))

end

end A266222.P13492693513714538809

namespace A266222

/-- `lcm(n+1+n, C(n-1, a(n-1)))` -/
def P13492693513714538809.Spec : Prop :=
  ∀ n, (P13492693513714538809.a n : ℤ) = A266222 n

end A266222

/-! ## A266222.P16018536379708602877

`(2*n+1)*a(Δ[n-a(n-1)])` with `a(0)=0, a(1)=1`
-/

namespace A266222.P16018536379708602877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n + 1) * a (f1 (n + 1) - f1 n).toNat

end

end A266222.P16018536379708602877

namespace A266222

/-- `(2*n+1)*a(Δ[n-a(n-1)])` -/
def P16018536379708602877.Spec : Prop :=
  ∀ n, (P16018536379708602877.a n : ℤ) = A266222 n

end A266222

/-! ## A266222.P664916030575602560

`C(2*n+1, (Δ[lcm(2, 1-n)]+n-3)²)`
-/

namespace A266222.P664916030575602560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - 3)) ^ 2).toNat

end

end A266222.P664916030575602560

namespace A266222

/-- `C(2*n+1, (Δ[lcm(2, 1-n)]+n-3)²)` -/
def P664916030575602560.Spec : Prop :=
  ∀ n, (P664916030575602560.a n : ℤ) = A266222 n

end A266222

/-! ## A266222.P6684282316685872816

`xor(1, A019425(xor(1, n)))`
-/

namespace A266222.P6684282316685872816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A019425 (Nat.xor 1 n))

end

end A266222.P6684282316685872816

namespace A266222

/-- `xor(1, A019425(xor(1, n)))` -/
def P6684282316685872816.Spec : Prop :=
  ∀ n, P6684282316685872816.a n = A266222 n

end A266222

/-! ## A266222.P11375318609587406531

`(2*n+1)*a(A001222(gcd(n, n+2)))` with `a(0)=0, a(1)=1`
-/

namespace A266222.P11375318609587406531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n + 1) * a (A001222 (Nat.gcd n (n + 2))).toNat

end

end A266222.P11375318609587406531

namespace A266222

/-- `(2*n+1)*a(A001222(gcd(n, n+2)))` -/
def P11375318609587406531.Spec : Prop :=
  ∀ n, (P11375318609587406531.a n : ℤ) = A266222 n

end A266222

/-! ## A266222.P10031002043116247342

`A129343(A296065(n+1))`
-/

namespace A266222.P10031002043116247342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129343 (A296065 (n + 1)).toNat

end

end A266222.P10031002043116247342

namespace A266222

/-- `A129343(A296065(n+1))` -/
def P10031002043116247342.Spec : Prop :=
  ∀ n, P10031002043116247342.a n = A266222 n

end A266222

/-! ## A266222.P1133166126196329724

`A160843(n)%A245766(n)`
-/

namespace A266222.P1133166126196329724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160843 n) (A245766 n)

end

end A266222.P1133166126196329724

namespace A266222

/-- `A160843(n)%A245766(n)` -/
def P1133166126196329724.Spec : Prop :=
  ∀ n, P1133166126196329724.a n = A266222 n

end A266222

/-! ## A266222.P1083670466271779765

`xor(A063524(n), A266439(n))`
-/

namespace A266222.P1083670466271779765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A266439 n)

end

end A266222.P1083670466271779765

namespace A266222

/-- `xor(A063524(n), A266439(n))` -/
def P1083670466271779765.Spec : Prop :=
  ∀ n, P1083670466271779765.a n = A266222 n

end A266222

/-! ## A266222.P5336954025021302134

`A267872(n)*A296066(n+1)`
-/

namespace A266222.P5336954025021302134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n * A296066 (n + 1)

end

end A266222.P5336954025021302134

namespace A266222

/-- `A267872(n)*A296066(n+1)` -/
def P5336954025021302134.Spec : Prop :=
  ∀ n, P5336954025021302134.a n = A266222 n

end A266222

/-! ## A266222.P8152995403128905627

`A223134(n)%A153285(n+1)`
-/

namespace A266222.P8152995403128905627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223134 n) (A153285 (n + 1))

end

end A266222.P8152995403128905627

namespace A266222

/-- `A223134(n)%A153285(n+1)` -/
def P8152995403128905627.Spec : Prop :=
  ∀ n, P8152995403128905627.a n = A266222 n

end A266222

/-!
# A266223: Total number of OFF (white) cells after n iterations of the "Rule 7" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266223, the canonical program `A266223.P17022688667305319694` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266223 has offset 0).

The definition of A266223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266223.P17022688667305319694

`C((n-1)%2+n+1, 2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266223

/-- `C((n-1)%2+n+1, 2)` -/
def P17022688667305319694.Spec : Prop :=
  ∀ n, (P17022688667305319694.a n : ℤ) = A266223 n

theorem P17022688667305319694.correct : P17022688667305319694.Spec := by
  intro n
  simp only [A266223]

end A266223

/-! ## A266223.P17712076861020533139

`C(∑[2-a(n-1)], 2)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A266223.P17712076861020533139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A266223.P17712076861020533139

namespace A266223

/-- `C(∑[2-a(n-1)], 2)` -/
def P17712076861020533139.Spec : Prop :=
  ∀ n, (P17712076861020533139.a n : ℤ) = A266223 n

end A266223

/-! ## A266223.P10738086952869176176

`C(char[2*(n+1)]+1+n, 2)`
-/

namespace A266223.P10738086952869176176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) 2

end

end A266223.P10738086952869176176

namespace A266223

/-- `C(char[2*(n+1)]+1+n, 2)` -/
def P10738086952869176176.Spec : Prop :=
  ∀ n, (P10738086952869176176.a n : ℤ) = A266223 n

end A266223

/-! ## A266223.P9347534847174104839

`or(1, n²)-a(n-1)+n` with `a(0)=0, a(1)=1`
-/

namespace A266223.P9347534847174104839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.lor 1 (n ^ 2) : ℤ) - a (n - 1) + (n : ℤ)

end

end A266223.P9347534847174104839

namespace A266223

/-- `or(1, n²)-a(n-1)+n` -/
def P9347534847174104839.Spec : Prop :=
  ∀ n, P9347534847174104839.a n = A266223 n

end A266223

/-! ## A266223.P11033042485603123112

`∑[xor(a(n-1)+1, 2*n)]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A266223.P11033042485603123112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  Nat.xor (f1 (n - 1) + 1) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266223.P11033042485603123112

namespace A266223

/-- `∑[xor(a(n-1)+1, 2*n)]` -/
def P11033042485603123112.Spec : Prop :=
  ∀ n, (P11033042485603123112.a n : ℤ) = A266223 n

end A266223

/-! ## A266223.P1096208220162895797

`∑[n+1]-(n+1)*(n%2)^n`
-/

namespace A266223.P1096208220162895797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((n + 1) * (n % 2) ^ n : ℕ) : ℤ)

end

end A266223.P1096208220162895797

namespace A266223

/-- `∑[n+1]-(n+1)*(n%2)^n` -/
def P1096208220162895797.Spec : Prop :=
  ∀ n, P1096208220162895797.a n = A266223 n

end A266223

/-! ## A266223.P6176557751232418001

`∑[n+1]-C(n+1, n*gcd(2, n))`
-/

namespace A266223.P6176557751232418001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (n + 1) (n * Nat.gcd 2 n) : ℤ)

end

end A266223.P6176557751232418001

namespace A266223

/-- `∑[n+1]-C(n+1, n*gcd(2, n))` -/
def P6176557751232418001.Spec : Prop :=
  ∀ n, P6176557751232418001.a n = A266223 n

end A266223

/-! ## A266223.P7667817079820747599

`∑[(2*n+1)*a(and(1, n+1))]` with `a(0)=0, a(1)=1`
-/

namespace A266223.P7667817079820747599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (2 * n + 1) * f1 (Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266223.P7667817079820747599

namespace A266223

/-- `∑[(2*n+1)*a(and(1, n+1))]` -/
def P7667817079820747599.Spec : Prop :=
  ∀ n, (P7667817079820747599.a n : ℤ) = A266223 n

end A266223

/-! ## A266223.P6053262698547377547

`∑[n+1]-floor((n+1)^(-1)^(n+1))`
-/

namespace A266223.P6053262698547377547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n + 1 : ℚ) ^ ((-1) ^ (n + 1) : ℤ)⌋

end

end A266223.P6053262698547377547

namespace A266223

/-- `∑[n+1]-floor((n+1)^(-1)^(n+1))` -/
def P6053262698547377547.Spec : Prop :=
  ∀ n, P6053262698547377547.a n = A266223 n

end A266223

/-! ## A266223.P16269973721586743452

`∑[A266222(n)]`
-/

namespace A266223.P16269973721586743452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266223.P16269973721586743452

namespace A266223

/-- `∑[A266222(n)]` -/
def P16269973721586743452.Spec : Prop :=
  ∀ n, P16269973721586743452.a n = A266223 n

end A266223

/-! ## A266223.P15613488868822137408

`A000217(char[2*(n+1)]+n)`
-/

namespace A266223.P15613488868822137408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A266223.P15613488868822137408

namespace A266223

/-- `A000217(char[2*(n+1)]+n)` -/
def P15613488868822137408.Spec : Prop :=
  ∀ n, P15613488868822137408.a n = A266223 n

end A266223

/-! ## A266223.P1552714995526398692

`A002593(n)%A317298(n)`
-/

namespace A266223.P1552714995526398692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002593 n) (A317298 n)

end

end A266223.P1552714995526398692

namespace A266223

/-- `A002593(n)%A317298(n)` -/
def P1552714995526398692.Spec : Prop :=
  ∀ n, P1552714995526398692.a n = A266223 n

end A266223

/-! ## A266223.P3065758315615306349

`A282614(n)%A081346(n)`
-/

namespace A266223.P3065758315615306349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282614 n) (A081346 n)

end

end A266223.P3065758315615306349

namespace A266223

/-- `A282614(n)%A081346(n)` -/
def P3065758315615306349.Spec : Prop :=
  ∀ n, P3065758315615306349.a n = A266223 n

end A266223

/-! ## A266223.P2917373605615991395

`A000384(1-A065033(n)+n)`
-/

namespace A266223.P2917373605615991395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (1 - A065033 n + (n : ℤ)).toNat

end

end A266223.P2917373605615991395

namespace A266223

/-- `A000384(1-A065033(n)+n)` -/
def P2917373605615991395.Spec : Prop :=
  ∀ n, P2917373605615991395.a n = A266223 n

end A266223

/-! ## A266223.P1703991564840586426

`A000384(1-(A065033(n)-n))`
-/

namespace A266223.P1703991564840586426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (1 - (A065033 n - (n : ℤ))).toNat

end

end A266223.P1703991564840586426

namespace A266223

/-- `A000384(1-(A065033(n)-n))` -/
def P1703991564840586426.Spec : Prop :=
  ∀ n, P1703991564840586426.a n = A266223 n

end A266223

/-! ## A266223.P13615532437848157048

`A008619(n)*A063196(n+1)`
-/

namespace A266223.P13615532437848157048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A063196 (n + 1)

end

end A266223.P13615532437848157048

namespace A266223

/-- `A008619(n)*A063196(n+1)` -/
def P13615532437848157048.Spec : Prop :=
  ∀ n, P13615532437848157048.a n = A266223 n

end A266223

/-! ## A266223.P6024888545527892087

`A027480(n)/A065190(n+1)`
-/

namespace A266223.P6024888545527892087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027480 n : ℚ) / (A065190 (n + 1) : ℚ)

end

end A266223.P6024888545527892087

namespace A266223

/-- `A027480(n)/A065190(n+1)` -/
def P6024888545527892087.Spec : Prop :=
  ∀ n, P6024888545527892087.a n = (A266223 n : ℚ)

end A266223

/-! ## A266223.P9493345634339021294

`A062392(n)%A085046(n+1)`
-/

namespace A266223.P9493345634339021294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062392 n) (A085046 (n + 1))

end

end A266223.P9493345634339021294

namespace A266223

/-- `A062392(n)%A085046(n+1)` -/
def P9493345634339021294.Spec : Prop :=
  ∀ n, P9493345634339021294.a n = A266223 n

end A266223

/-! ## A266223.P17347706208367143132

`A085786(n+1)%A080335(n)`
-/

namespace A266223.P17347706208367143132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085786 (n + 1)) (A080335 n)

end

end A266223.P17347706208367143132

namespace A266223

/-- `A085786(n+1)%A080335(n)` -/
def P17347706208367143132.Spec : Prop :=
  ∀ n, P17347706208367143132.a n = A266223 n

end A266223

/-! ## A266223.P15617939818601209893

`A002411(n)%A183207(n+1)`
-/

namespace A266223.P15617939818601209893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002411 n) (A183207 (n + 1))

end

end A266223.P15617939818601209893

namespace A266223

/-- `A002411(n)%A183207(n+1)` -/
def P15617939818601209893.Spec : Prop :=
  ∀ n, P15617939818601209893.a n = A266223 n

end A266223

/-!
# A266224: Least x such that prime(n)*x+x+1 is a prime, or -1 if no such x exists.

The programs for A266224, there is no canonical definition to state claims against.
-/

/-! ## A266224.P10065863883275328351

`A034693(p?[abs(xor(n, -2))]+1)`
-/

namespace A266224.P10065863883275328351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A266224.P10065863883275328351

/-! ## A266224.P14488611320102195201

`A034693(p?[xor(1, n)+1]+1)`
-/

namespace A266224.P14488611320102195201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A266224.P14488611320102195201

/-! ## A266224.P11352026953595147082

`A034693(p?[round(8*n/7)]+1)`
-/

namespace A266224.P11352026953595147082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A266224.P11352026953595147082

/-! ## A266224.P6451000234319448078

`A034693(A008864(n+1))`
-/

namespace A266224.P6451000234319448078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A008864 (n + 1)).toNat

end

end A266224.P6451000234319448078

/-! ## A266224.P15833637934447313464

`A034693(A028815(n+1))`
-/

namespace A266224.P15833637934447313464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A028815 (n + 1)).toNat

end

end A266224.P15833637934447313464

/-! ## A266224.P12318770781118058312

`A034693(A299763(n+2))`
-/

namespace A266224.P12318770781118058312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A299763 (n + 2)).toNat

end

end A266224.P12318770781118058312

/-! ## A266224.P3995160525365328671

`A034693(Δ[A007504(n)]+1)`
-/

namespace A266224.P3995160525365328671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (n + 1) - f1 n + 1).toNat

end

end A266224.P3995160525365328671

/-! ## A266224.P5801362504639603229

`A034693(A000040(n+1)+1)`
-/

namespace A266224.P5801362504639603229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A000040 (n + 1) + 1).toNat

end

end A266224.P5801362504639603229

/-! ## A266224.P7953253720859657431

`A034693(A006093(n+1)+2)`
-/

namespace A266224.P7953253720859657431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A006093 (n + 1) + 2).toNat

end

end A266224.P7953253720859657431

/-! ## A266224.P14677549856948974164

`A034693(A008578(n+2)+1)`
-/

namespace A266224.P14677549856948974164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A008578 (n + 2) + 1).toNat

end

end A266224.P14677549856948974164

/-! ## A266224.P1805527672664675831

`A034693(A182986(n+2)+1)`
-/

namespace A266224.P1805527672664675831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A182986 (n + 2) + 1).toNat

end

end A266224.P1805527672664675831

/-! ## A266224.P17965945432041308553

`A034693(A067747(2*n+1)+1)`
-/

namespace A266224.P17965945432041308553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A067747 (2 * n + 1) + 1).toNat

end

end A266224.P17965945432041308553

/-! ## A266224.P8418495809299640804

`A072341(Δ[A007504(n)])`
-/

namespace A266224.P8418495809299640804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072341 (f1 (n + 1) - f1 n).toNat

end

end A266224.P8418495809299640804

/-! ## A266224.P15381998755999261126

`A072341(A000040(n+1))`
-/

namespace A266224.P15381998755999261126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072341 (A000040 (n + 1)).toNat

end

end A266224.P15381998755999261126

/-! ## A266224.P5620831677651482186

`A072341(A161847(n+1))`
-/

namespace A266224.P5620831677651482186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072341 (A161847 (n + 1)).toNat

end

end A266224.P5620831677651482186

/-! ## A266224.P9418694097560664511

`A072341(A296375(n+1))`
-/

namespace A266224.P9418694097560664511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072341 (A296375 (n + 1)).toNat

end

end A266224.P9418694097560664511

/-! ## A266224.P3832472329413326225

`A072341(A008578(n+2))`
-/

namespace A266224.P3832472329413326225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072341 (A008578 (n + 2)).toNat

end

end A266224.P3832472329413326225

/-! ## A266224.P13551418597455999304

`A072341(A182986(n+2))`
-/

namespace A266224.P13551418597455999304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072341 (A182986 (n + 2)).toNat

end

end A266224.P13551418597455999304

/-! ## A266224.P7157365111886910671

`A072341(p?[comp[n²]])`
-/

namespace A266224.P7157365111886910671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072341 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A266224.P7157365111886910671

/-!
# A266225: Least x>1 such that prime(n)*x+x-1 is a prime, or -1 if no such x exists.

The programs for A266225, there is no canonical definition to state claims against.
-/

/-! ## A266225.P6609471227733922998

`ceil(A088732(A000040(n+1))/A000040(n+2))`
-/

namespace A266225.P6609471227733922998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088732 (A000040 (n + 1)).toNat : ℚ) / (A000040 (n + 2) : ℚ)⌉

end

end A266225.P6609471227733922998

/-! ## A266225.P14810764625520477575

`round(A088732(A000040(n+1))/A008864(n+1))`
-/

namespace A266225.P14810764625520477575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088732 (A000040 (n + 1)).toNat : ℚ) / (A008864 (n + 1) : ℚ))

end

end A266225.P14810764625520477575

/-! ## A266225.P12463511022963739867

`A008864(A069807(n+1))/A008864(n+1)`
-/

namespace A266225.P12463511022963739867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (A069807 (n + 1)).toNat : ℚ) / (A008864 (n + 1) : ℚ)

end

end A266225.P12463511022963739867

/-! ## A266225.P13783445599106658073

`floor(A000040(A069807(n+1))/A000040(n+1))`
-/

namespace A266225.P13783445599106658073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (A069807 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A266225.P13783445599106658073

/-! ## A266225.P10143376295711807501

`A088732(p?[A142150(n)])%A000040(n+1)+1`
-/

namespace A266225.P10143376295711807501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A000040 (n + 1)) + 1

end

end A266225.P10143376295711807501

/-! ## A266225.P12687104882589930151

`A088732(A000040(n+1))%A027748(A308495(n+1))+1`
-/

namespace A266225.P12687104882589930151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088732 (A000040 (n + 1)).toNat) (A027748 (A308495 (n + 1)).toNat) + 1

end

end A266225.P12687104882589930151

/-!
# A266226: a(n) = floor(Sum_{d|n} 1 / tau(d)).

The programs for A266226, the canonical program `A266226.P13876817309741798291` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266226 has offset 1).

The definition of A266226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266226.P14811578665792542531

`floor(∑{d}[n+1, 1/A000005(#)])`
-/

namespace A266226.P14811578665792542531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), 1 / (A000005 d : ℚ)⌋

end

end A266226.P14811578665792542531

namespace A266226

/-- `floor(∑{d}[n+1, 1/A000005(#)])` -/
def P14811578665792542531.Spec : Prop :=
  ∀ n, P14811578665792542531.a n = A266226 (n + 1)

end A266226

/-! ## A266226.P13876817309741798291

`floor(A265390(n+1)/A253139(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A266226

/-- `floor(A265390(n+1)/A253139(n+1))` -/
def P13876817309741798291.Spec : Prop :=
  ∀ n, P13876817309741798291.a n = A266226 (n + 1)

theorem P13876817309741798291.correct : P13876817309741798291.Spec := by
  intro n
  simp only [A266226, Nat.add_sub_cancel]

end A266226

/-! ## A266226.P17284706112459573669

`floor(A265391(n+1)/A265392(n+1))`
-/

namespace A266226.P17284706112459573669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265391 (n + 1) : ℚ) / (A265392 (n + 1) : ℚ)⌋

end

end A266226.P17284706112459573669

namespace A266226

/-- `floor(A265391(n+1)/A265392(n+1))` -/
def P17284706112459573669.Spec : Prop :=
  ∀ n, P17284706112459573669.a n = A266226 (n + 1)

end A266226

/-! ## A266226.P15188754172933342807

`A088461(round(sqrt(A000005((n+1)²)))+1)`
-/

namespace A266226.P15188754172933342807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088461 (SequenceMachineLib.roundAway (Real.sqrt (A000005 ((n + 1) ^ 2) : ℝ)) + 1).toNat

end

end A266226.P15188754172933342807

namespace A266226

/-- `A088461(round(sqrt(A000005((n+1)²)))+1)` -/
def P15188754172933342807.Spec : Prop :=
  ∀ n, P15188754172933342807.a n = A266226 (n + 1)

end A266226

/-! ## A266226.P6860409202119072036

`A048766(A006218(A038548((n+1)²)))`
-/

namespace A266226.P6860409202119072036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A006218 (A038548 ((n + 1) ^ 2)).toNat).toNat

end

end A266226.P6860409202119072036

namespace A266226

/-- `A048766(A006218(A038548((n+1)²)))` -/
def P6860409202119072036.Spec : Prop :=
  ∀ n, P6860409202119072036.a n = A266226 (n + 1)

end A266226

/-! ## A266226.P17478986898476285659

`A122651(A122651(A032741((n+1)²)))`
-/

namespace A266226.P17478986898476285659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A122651 (A032741 ((n + 1) ^ 2)).toNat).toNat

end

end A266226.P17478986898476285659

namespace A266226

/-- `A122651(A122651(A032741((n+1)²)))` -/
def P17478986898476285659.Spec : Prop :=
  ∀ n, P17478986898476285659.a n = A266226 (n + 1)

end A266226

/-! ## A266226.P14672421463672348482

`A048766(A077597(A038548(∑[2*n+1])))`
-/

namespace A266226.P14672421463672348482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A077597 (A038548 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A266226.P14672421463672348482

namespace A266226

/-- `A048766(A077597(A038548(∑[2*n+1])))` -/
def P14672421463672348482.Spec : Prop :=
  ∀ n, P14672421463672348482.a n = A266226 (n + 1)

end A266226

/-! ## A266226.P5285703154672789289

`A002265(∏{e}[n+1, #+1]%A267983(n+1))+1`
-/

namespace A266226.P5285703154672789289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A267983 (n + 1))).toNat + 1

end

end A266226.P5285703154672789289

namespace A266226

/-- `A002265(∏{e}[n+1, #+1]%A267983(n+1))+1` -/
def P5285703154672789289.Spec : Prop :=
  ∀ n, P5285703154672789289.a n = A266226 (n + 1)

end A266226

/-! ## A266226.P10762887708060534701

`A086858(A016003(n+1))`
-/

namespace A266226.P10762887708060534701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086858 (A016003 (n + 1)).toNat

end

end A266226.P10762887708060534701

namespace A266226

/-- `A086858(A016003(n+1))` -/
def P10762887708060534701.Spec : Prop :=
  ∀ n, P10762887708060534701.a n = A266226 (n + 1)

end A266226

/-!
# A266227: a(n) = floor(Sum_{d|n} 1/sigma(d)).

The programs for A266227, the canonical program `A266227.P13814129457012190154` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266227 has offset 1).

The definition of A266227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266227.P15526746454573809013

`floor(A265708(n+1)/A069934(n+1))`
-/

namespace A266227.P15526746454573809013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265708 (n + 1) : ℚ) / (A069934 (n + 1) : ℚ)⌋

end

end A266227.P15526746454573809013

namespace A266227

/-- `floor(A265708(n+1)/A069934(n+1))` -/
def P15526746454573809013.Spec : Prop :=
  ∀ n, P15526746454573809013.a n = A266227 (n + 1)

end A266227

/-! ## A266227.P829473344799179676

`floor(A265709(n+1)/A265710(n+1))`
-/

namespace A266227.P829473344799179676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265709 (n + 1) : ℚ) / (A265710 (n + 1) : ℚ)⌋

end

end A266227.P829473344799179676

namespace A266227

/-- `floor(A265709(n+1)/A265710(n+1))` -/
def P829473344799179676.Spec : Prop :=
  ∀ n, P829473344799179676.a n = A266227 (n + 1)

end A266227

/-! ## A266227.P8064928909914991946

`char[A265712(n+1)-1]+1`
-/

namespace A266227.P8064928909914991946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265712 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A266227.P8064928909914991946

namespace A266227

/-- `char[A265712(n+1)-1]+1` -/
def P8064928909914991946.Spec : Prop :=
  ∀ n, (P8064928909914991946.a n : ℤ) = A266227 (n + 1)

end A266227

/-! ## A266227.P16761391729498722170

`2-char[A265711(n+1)-1]`
-/

namespace A266227.P16761391729498722170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265711 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266227.P16761391729498722170

namespace A266227

/-- `2-char[A265711(n+1)-1]` -/
def P16761391729498722170.Spec : Prop :=
  ∀ n, P16761391729498722170.a n = A266227 (n + 1)

end A266227

/-! ## A266227.P13814129457012190154

`floor(∑{d}[n+1, 1/A000203(#)])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266227

/-- `floor(∑{d}[n+1, 1/A000203(#)])` -/
def P13814129457012190154.Spec : Prop :=
  ∀ n, P13814129457012190154.a n = A266227 (n + 1)

theorem P13814129457012190154.correct : P13814129457012190154.Spec := by
  intro n
  simp only [A266227, Nat.add_sub_cancel]

end A266227

/-! ## A266227.P7523329144632062663

`A351014((∑{d}[n+1, val(#², n+1+#)]+1)%A136804(n+1))`
-/

namespace A266227.P7523329144632062663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.tmod ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2) (n + 1 + d) + 1 : ℕ) : ℤ) (A136804 (n + 1))).toNat

end

end A266227.P7523329144632062663

namespace A266227

/-- `A351014((∑{d}[n+1, val(#², n+1+#)]+1)%A136804(n+1))` -/
def P7523329144632062663.Spec : Prop :=
  ∀ n, P7523329144632062663.a n = A266227 (n + 1)

end A266227

/-! ## A266227.P18053486986850897453

`round(A226898(A064988(n+1)%A305885(n+1))/ϕ)`
-/

namespace A266227.P18053486986850897453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A226898 (Int.tmod (A064988 (n + 1)) (A305885 (n + 1))).toNat : ℝ) / Real.goldenRatio)

end

end A266227.P18053486986850897453

namespace A266227

/-- `round(A226898(A064988(n+1)%A305885(n+1))/ϕ)` -/
def P18053486986850897453.Spec : Prop :=
  ∀ n, P18053486986850897453.a n = A266227 (n + 1)

end A266227

/-! ## A266227.P13587088528614079004

`A305254(or(1, A074971(n+1)))`
-/

namespace A266227.P13587088528614079004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305254 (Int.lor 1 (A074971 (n + 1))).toNat

end

end A266227.P13587088528614079004

namespace A266227

/-- `A305254(or(1, A074971(n+1)))` -/
def P13587088528614079004.Spec : Prop :=
  ∀ n, P13587088528614079004.a n = A266227 (n + 1)

end A266227

/-! ## A266227.P4579526580768178104

`A334369(C(A334362(n+1), 12))`
-/

namespace A266227.P4579526580768178104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334369 (Nat.choose (A334362 (n + 1)).toNat 12)

end

end A266227.P4579526580768178104

namespace A266227

/-- `A334369(C(A334362(n+1), 12))` -/
def P4579526580768178104.Spec : Prop :=
  ∀ n, P4579526580768178104.a n = A266227 (n + 1)

end A266227

/-! ## A266227.P3508917164151404590

`gcd(A096765(A294786(n+1)), A135513(n+4))`
-/

namespace A266227.P3508917164151404590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096765 (A294786 (n + 1)).toNat) (A135513 (n + 4))

end

end A266227.P3508917164151404590

namespace A266227

/-- `gcd(A096765(A294786(n+1)), A135513(n+4))` -/
def P3508917164151404590.Spec : Prop :=
  ∀ n, (P3508917164151404590.a n : ℤ) = A266227 (n + 1)

end A266227

/-!
# A266228: Numbers n such that Sum_{d|n} 1/sigma(d) > Sum_{d|m} 1/sigma(d) for all m < n.

The programs for A266228, there is no canonical definition to state claims against.
-/

/-! ## A266228.P13676943623897169695

`∩[A097212(n+1), A178860(n+1)]`
-/

namespace A266228.P13676943623897169695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266228.P13676943623897169695

/-! ## A266228.P9393841983663323819

`A097212(lt[A293635(4*n+11), A258774(4*n+2)])`
-/

namespace A266228.P9393841983663323819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293635 (4 * n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258774 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A266228.P9393841983663323819

/-! ## A266228.P310824335792327258

`∩[A097212(n+1), A178858(n+1)]`
-/

namespace A266228.P310824335792327258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266228.P310824335792327258

/-! ## A266228.P2645365627989431271

`∩[A097212(n+1), A245028(n+1)]`
-/

namespace A266228.P2645365627989431271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266228.P2645365627989431271

/-! ## A266228.P7109386982501462459

`A250247(A097212(n+1))`
-/

namespace A266228.P7109386982501462459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250247 (A097212 (n + 1)).toNat

end

end A266228.P7109386982501462459

/-!
# A266229: a(n) = Sum_{j=0..12} (-n)^j.

The programs for A266229, the canonical program `A266229.P14711780449339868904` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266229 has offset 0).

The definition of A266229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266229.P7022598475181161302

`(n^13+1)/(n+1)`
-/

namespace A266229.P7022598475181161302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 13 + 1 : ℚ) / (n + 1 : ℚ)

end

end A266229.P7022598475181161302

namespace A266229

/-- `(n^13+1)/(n+1)` -/
def P7022598475181161302.Spec : Prop :=
  ∀ n, P7022598475181161302.a n = (A266229 n : ℚ)

theorem P7022598475181161302.correct : P7022598475181161302.Spec := by
  intro n
  simp only [A266229, Nat.add_sub_cancel, A266229.P7022598475181161302.a, A266229.P14711780449339868904.a, A002061, A002061.P13016590216674735232.a, A059839, A059839.P16029782246819662926.a, A085537, A085537.P16655703013365461026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A266229

/-! ## A266229.P8260044131044103557

`A008456(n)+A024010(n)/(n+1)`
-/

namespace A266229.P8260044131044103557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008456 n : ℚ) + (A024010 n : ℚ) / (n + 1 : ℚ)

end

end A266229.P8260044131044103557

namespace A266229

/-- `A008456(n)+A024010(n)/(n+1)` -/
def P8260044131044103557.Spec : Prop :=
  ∀ n, P8260044131044103557.a n = (A266229 n : ℚ)

theorem P8260044131044103557.correct : P8260044131044103557.Spec := by
  intro n
  simp only [A266229, Nat.add_sub_cancel, A266229.P8260044131044103557.a, A266229.P14711780449339868904.a, A002061, A002061.P13016590216674735232.a, A008456, A008456.P10461044978200611102.a, A024010, A024010.P1201866457356709084.a, A059839, A059839.P16029782246819662926.a, A085537, A085537.P16655703013365461026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A266229

/-! ## A266229.P12181723904100685257

`(n-A005843(n))*A024010(n)/(n+1)+1`
-/

namespace A266229.P12181723904100685257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A005843 n : ℚ) * ((A024010 n : ℚ) / (n + 1 : ℚ)) + 1

end

end A266229.P12181723904100685257

namespace A266229

/-- `(n-A005843(n))*A024010(n)/(n+1)+1` -/
def P12181723904100685257.Spec : Prop :=
  ∀ n, P12181723904100685257.a n = (A266229 n : ℚ)

theorem P12181723904100685257.correct : P12181723904100685257.Spec := by
  intro n
  simp only [A266229, Nat.add_sub_cancel, A266229.P12181723904100685257.a, A266229.P14711780449339868904.a, A002061, A002061.P13016590216674735232.a, A005843, A005843.P3167286115683555970.a, A024010, A024010.P1201866457356709084.a, A059839, A059839.P16029782246819662926.a, A085537, A085537.P16655703013365461026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A266229

/-! ## A266229.P14711780449339868904

`A002061(n)+A059839(n)*A085537(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266229

/-- `A002061(n)+A059839(n)*A085537(n)` -/
def P14711780449339868904.Spec : Prop :=
  ∀ n, P14711780449339868904.a n = A266229 n

theorem P14711780449339868904.correct : P14711780449339868904.Spec := by
  intro n
  simp only [A266229]

end A266229

/-! ## A266229.P1879340982941136984

`A062160(eq[14, A004736(n+1)])`
-/

namespace A266229.P1879340982941136984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062160 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266229.P1879340982941136984

namespace A266229

/-- `A062160(eq[14, A004736(n+1)])` -/
def P1879340982941136984.Spec : Prop :=
  ∀ n, P1879340982941136984.a n = A266229 n

end A266229

/-!
# A266232: Binomial transform of the number of partitions into distinct parts (A000009).

The programs for A266232, there is no canonical definition to state claims against.
-/

/-! ## A266232.P5416592027003270010

`∑[A129519(n)]`
-/

namespace A266232.P5416592027003270010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266232.P5416592027003270010

/-! ## A266232.P8700233130443461556

`A129519(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A266232.P8700233130443461556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129519 n + a (A028310 n - 1).toNat

end

end A266232.P8700233130443461556

/-! ## A266232.P16779790906322200433

`a(n-1)+lcm(A033999(n), A129519(n))` with `a(0)=1`
-/

namespace A266232.P16779790906322200433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A033999 n) (A129519 n)

end

end A266232.P16779790906322200433

/-! ## A266232.P16350563325069339121

`a(n-1)+and(1, A127978(n+2))*A129519(n)` with `a(0)=1`
-/

namespace A266232.P16350563325069339121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land 1 (A127978 (n + 2)) * A129519 n

end

end A266232.P16350563325069339121

/-! ## A266232.P15795883977207860202

`a(n-1)+A129519(n)+A003893(60*(n+1))` with `a(0)=1`
-/

namespace A266232.P15795883977207860202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A129519 n + A003893 (60 * (n + 1)))

end

end A266232.P15795883977207860202

/-!
# A266233: Primes representable as f(f(f(...f(p)...))) where p is a prime and f(x) = x*2 + 1.

The programs for A266233, there is no canonical definition to state claims against.
-/

/-! ## A266233.P6614937122269953896

`p?[Δ[A080036(A335048(n+1))]]`
-/

namespace A266233.P6614937122269953896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (A335048 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266233.P6614937122269953896

/-! ## A266233.P9058010345871670159

`p?[lt[A352513(n+1), A352514(n)]]`
-/

namespace A266233.P9058010345871670159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A266233.P9058010345871670159

/-! ## A266233.P12760647113722633179

`∩[A080114(n+1), A309290(n+1)]`
-/

namespace A266233.P12760647113722633179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266233.P12760647113722633179

/-! ## A266233.P1266475658513764002

`∩[A080114(n+1), A329996(n+1)]`
-/

namespace A266233.P1266475658513764002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266233.P1266475658513764002

/-! ## A266233.P11593781842013706068

`A006530((n+1)*(10^(n+1))^(2/(n+1))*A095102(n+1))`
-/

namespace A266233.P11593781842013706068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * (10 ^ (n + 1) : ℝ) ^ (2 / (n + 1 : ℚ) : ℝ) * (A095102 (n + 1) : ℝ))).toNat

end

end A266233.P11593781842013706068

/-!
# A266234: Primes representable as f(f(f(...f(p)...))) where p is a prime and f(x) = x*2 - 1.

The programs for A266234, there is no canonical definition to state claims against.
-/

/-! ## A266234.P12906477913314033727

`record[A076565(A000010(2*(n+1)))]`
-/

namespace A266234.P12906477913314033727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (A000010 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266234.P12906477913314033727

/-! ## A266234.P15432443373502310520

`record[A006530(A039649(4*(n+1)))]`
-/

namespace A266234.P15432443373502310520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A039649 (4 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266234.P15432443373502310520

/-! ## A266234.P5369251445839887850

`record[A006530(A333787(2*(n+1))+1)]`
-/

namespace A266234.P5369251445839887850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A333787 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266234.P5369251445839887850

/-! ## A266234.P3088107838924576207

`record[A006530(A000010(4*(n+1))+1)]`
-/

namespace A266234.P3088107838924576207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (4 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266234.P3088107838924576207

/-! ## A266234.P6613551501928321969

`record[A014963(A000010(4*(n+1))+1)]`
-/

namespace A266234.P6613551501928321969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000010 (4 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266234.P6613551501928321969

/-! ## A266234.P8130471164281147388

`record[A020639(A000010(4*(n+1))+1)]`
-/

namespace A266234.P8130471164281147388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (4 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266234.P8130471164281147388

/-! ## A266234.P7245582801131446654

`record[A108077(2*A000010(2*(n+1)))]`
-/

namespace A266234.P7245582801131446654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (2 * A000010 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266234.P7245582801131446654

/-! ## A266234.P4325359981430952774

`record[A110560(2*A000010(2*(n+1)))]`
-/

namespace A266234.P4325359981430952774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (2 * A000010 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266234.P4325359981430952774

/-! ## A266234.P4625803583819255181

`record[A166333(2*A000010(2*(n+1)))]`
-/

namespace A266234.P4625803583819255181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * A000010 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266234.P4625803583819255181

/-! ## A266234.P7494933900468844772

`record[A020639(2*(A039649(or(1, n)+1)-2)+3)]`
-/

namespace A266234.P7494933900468844772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (A039649 (Nat.lor 1 n + 1) - 2) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266234.P7494933900468844772

/-!
# A266235: Primes representable as f(f(f(...f(p)...))) where p is a prime and f(x) = x^2 + 1.

The programs for A266235, there is no canonical definition to state claims against.
-/

/-! ## A266235.P12879741803924671700

`record[A089120(A323728(n+1))]`
-/

namespace A266235.P12879741803924671700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A323728 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266235.P12879741803924671700

/-! ## A266235.P14732022417625726632

`record[A089120(A000961(n+1)²+1)]`
-/

namespace A266235.P14732022417625726632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A000961 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266235.P14732022417625726632

/-!
# A266237: Number of magic squares of order n composed of the numbers from 1 to n^2, counted up to rotations, reflections, and M-transformations.

The programs for A266237, there is no canonical definition to state claims against.
-/

/-! ## A266237.P4002320726242342645

`A006052(n+1)/A002866(floor((n+1)/2))`
-/

namespace A266237.P4002320726242342645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006052 (n + 1) : ℚ) / (A002866 ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ)

end

end A266237.P4002320726242342645

/-!
# A266238: a(n+1) = 2^(2*n - 1) + (-1)^n * a(n), a(1) = 1.

The programs for A266238, the canonical program `A266238.P1697907969049915084` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266238 has offset 1).

The definition of A266238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266238.P1697907969049915084

`15*a(n-2)+16*a(n-4)` with `a(0)=1, a(1)=1, a(2)=9, a(3)=23`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266238

/-- `15*a(n-2)+16*a(n-4)` -/
def P1697907969049915084.Spec : Prop :=
  ∀ n, (P1697907969049915084.a n : ℤ) = A266238 (n + 1)

theorem P1697907969049915084.correct : P1697907969049915084.Spec := by
  intro n
  simp only [A266238, Nat.add_sub_cancel]

end A266238

/-! ## A266238.P8191879550267253583

`abs(a(n-1)+(-4)^n/2)` with `a(0)=1`
-/

namespace A266238.P8191879550267253583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) + ((-4) ^ n : ℚ) / 2|

end

end A266238.P8191879550267253583

namespace A266238

/-- `abs(a(n-1)+(-4)^n/2)` -/
def P8191879550267253583.Spec : Prop :=
  ∀ n, P8191879550267253583.a n = (A266238 (n + 1) : ℚ)

end A266238

/-! ## A266238.P7249392895670726332

`abs(or(a(n-1), A009117(n)))` with `a(0)=1`
-/

namespace A266238.P7249392895670726332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.lor (a (n - 1)) (A009117 n)|

end

end A266238.P7249392895670726332

namespace A266238

/-- `abs(or(a(n-1), A009117(n)))` -/
def P7249392895670726332.Spec : Prop :=
  ∀ n, P7249392895670726332.a n = A266238 (n + 1)

end A266238

/-! ## A266238.P13322441209780446402

`abs(∑[A174882(A053438(n))])`
-/

namespace A266238.P13322441209780446402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174882 (A053438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A266238.P13322441209780446402

namespace A266238

/-- `abs(∑[A174882(A053438(n))])` -/
def P13322441209780446402.Spec : Prop :=
  ∀ n, P13322441209780446402.a n = A266238 (n + 1)

end A266238

/-! ## A266238.P1846825512024071759

`abs(∑[A011782(n)*A120617(n)])`
-/

namespace A266238.P1846825512024071759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A120617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A266238.P1846825512024071759

namespace A266238

/-- `abs(∑[A011782(n)*A120617(n)])` -/
def P1846825512024071759.Spec : Prop :=
  ∀ n, P1846825512024071759.a n = A266238 (n + 1)

end A266238

/-!
# A266239: a(n) is the smallest k such that the following are four primes: prime(n)*k-1, prime(n)*k+1, prime(n)*k^2-1, prime(n)*k^2+1. Or -1 if no such k exists.

The programs for A266239, there is no canonical definition to state claims against.
-/

/-! ## A266239.P10154172932572543333

`A131005(A106711(∏[∏{e}[n+1, #+1]]))`
-/

namespace A266239.P10154172932572543333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131005 (A106711 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A266239.P10154172932572543333

/-!
# A266240: Triangle read by rows: T(n,g) is the number of rooted 2n-face triangulations in an orientable surface of genus g.

The programs for A266240, there is no canonical definition to state claims against.
-/

/-! ## A266240.P17523019179247979367

`A000747(n)-A366039(A366047(n+1))`
-/

namespace A266240.P17523019179247979367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000747 n - A366039 (A366047 (n + 1)).toNat

end

end A266240.P17523019179247979367

/-! ## A266240.P18012930238669656162

`A051801(lcm(A054367(n), A086482(n+1)))`
-/

namespace A266240.P18012930238669656162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (Int.lcm (A054367 n) (A086482 (n + 1)))

end

end A266240.P18012930238669656162

/-!
# A266242: Numbers n such that the initial digit of the fractional part of n*Pi is 0.

The programs for A266242, the canonical program `A266242.P14036727876500094086` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266242 has offset 1).

The definition of A266242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266242.P14036727876500094086

`eq[exp(floor(3*π*n)%3), A327298(n+4)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266242

/-- `eq[exp(floor(3*π*n)%3), A327298(n+4)]` -/
def P14036727876500094086.Spec : Prop :=
  ∀ n, (P14036727876500094086.a n : ℤ) = A266242 (n + 1)

theorem P14036727876500094086.correct : P14036727876500094086.Spec := by
  intro n
  simp only [A266242, Nat.add_sub_cancel]

end A266242

/-!
# A266244: Binary representation of the n-th iteration of the "Rule 9" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266244, there is no canonical definition to state claims against.
-/

/-! ## A266244.P16979906836626741370

`A007088(A266245(n))`
-/

namespace A266244.P16979906836626741370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266245 n).toNat

end

end A266244.P16979906836626741370

/-!
# A266245: Decimal representation of the n-th iteration of the "Rule 9" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266245, there is no canonical definition to state claims against.
-/

/-! ## A266245.P11767981617841202254

`A267255(n)-and(A267255(n+1), A267255(n))`
-/

namespace A266245.P11767981617841202254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267255 n - Int.land (A267255 (n + 1)) (A267255 n)

end

end A266245.P11767981617841202254

/-!
# A266246: Middle column of the "Rule 9" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266246, the canonical program `A266246.P3934076284950012732` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266246 has offset 0).

The definition of A266246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266246.P3934076284950012732

`Δ[round((n-5)/2)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266246

/-- `Δ[round((n-5)/2)]` -/
def P3934076284950012732.Spec : Prop :=
  ∀ n, P3934076284950012732.a n = A266246 n

theorem P3934076284950012732.correct : P3934076284950012732.Spec := by
  intro n
  simp only [A266246]

end A266246

/-!
# A266247: Binary representation of the middle column of the "Rule 9" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266247, the canonical program `A266247.P9589200688830506341` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266247 has offset 0).

The definition of A266247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266247.P9589200688830506341

`A266246(n)+10*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266247

/-- `A266246(n)+10*a(n-1)` -/
def P9589200688830506341.Spec : Prop :=
  ∀ n, P9589200688830506341.a n = A266247 n

theorem P9589200688830506341.correct : P9589200688830506341.Spec := by
  intro n
  simp only [A266247]

end A266247

/-! ## A266247.P9492202836706852780

`A007088(A266248(n))`
-/

namespace A266247.P9492202836706852780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266248 n).toNat

end

end A266247.P9492202836706852780

namespace A266247

/-- `A007088(A266248(n))` -/
def P9492202836706852780.Spec : Prop :=
  ∀ n, P9492202836706852780.a n = A266247 n

end A266247

/-! ## A266247.P1208068161188584236

`A007088(floor(5*A198274(n)/48))`
-/

namespace A266247.P1208068161188584236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(5 * A198274 n : ℚ) / 48⌋.toNat

end

end A266247.P1208068161188584236

namespace A266247

/-- `A007088(floor(5*A198274(n)/48))` -/
def P1208068161188584236.Spec : Prop :=
  ∀ n, P1208068161188584236.a n = A266247 n

end A266247

/-! ## A266247.P16489967776004087765

`A007088(A005206(3*2^n-1)-floor(2^(n-1)))`
-/

namespace A266247.P16489967776004087765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A005206 (3 * 2 ^ n - 1) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋).toNat

end

end A266247.P16489967776004087765

namespace A266247

/-- `A007088(A005206(3*2^n-1)-floor(2^(n-1)))` -/
def P16489967776004087765.Spec : Prop :=
  ∀ n, P16489967776004087765.a n = A266247 n

end A266247

/-! ## A266247.P16598086207753157673

`A256078(A267515(n+1))`
-/

namespace A266247.P16598086207753157673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A267515 (n + 1)).toNat

end

end A266247.P16598086207753157673

namespace A266247

/-- `A256078(A267515(n+1))` -/
def P16598086207753157673.Spec : Prop :=
  ∀ n, P16598086207753157673.a n = A266247 n

end A266247

/-!
# A266248: Decimal representation of the middle column of the "Rule 9" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266248, the canonical program `A266248.P17371326239596623866` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266248 has offset 0).

The definition of A266248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266248.P17371326239596623866

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=21, a(5)=43, a(6)=86`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266248

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P17371326239596623866.Spec : Prop :=
  ∀ n, P17371326239596623866.a n = A266248 n

theorem P17371326239596623866.correct : P17371326239596623866.Spec := by
  intro n
  simp only [A266248]

end A266248

/-! ## A266248.P6319260793851227361

`floor(65*2^n/48)`
-/

namespace A266248.P6319260793851227361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(65 * 2 ^ n : ℚ) / 48⌋

end

end A266248.P6319260793851227361

namespace A266248

/-- `floor(65*2^n/48)` -/
def P6319260793851227361.Spec : Prop :=
  ∀ n, P6319260793851227361.a n = A266248 n

end A266248

/-! ## A266248.P1913815781778265197

`a(n-1)+A266246(n)+a(n-1)` with `a(0)=1`
-/

namespace A266248.P1913815781778265197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A266246 n + a (n - 1))

end

end A266248.P1913815781778265197

namespace A266248

/-- `a(n-1)+A266246(n)+a(n-1)` -/
def P1913815781778265197.Spec : Prop :=
  ∀ n, P1913815781778265197.a n = A266248 n

end A266248

/-! ## A266248.P1472305965824399200

`2*a(n-1)-(A000038(n)-A266246(n))` with `a(0)=1`
-/

namespace A266248.P1472305965824399200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (A000038 n - A266246 n)

end

end A266248.P1472305965824399200

namespace A266248

/-- `2*a(n-1)-(A000038(n)-A266246(n))` -/
def P1472305965824399200.Spec : Prop :=
  ∀ n, P1472305965824399200.a n = A266248 n

end A266248

/-! ## A266248.P8656367313896082056

`A266721(n)-A166444(A289207(n))`
-/

namespace A266248.P8656367313896082056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266721 n - A166444 (A289207 n).toNat

end

end A266248.P8656367313896082056

namespace A266248

/-- `A266721(n)-A166444(A289207(n))` -/
def P8656367313896082056.Spec : Prop :=
  ∀ n, P8656367313896082056.a n = A266248 n

end A266248

/-! ## A266248.P11393327192372980909

`A267045(n)+Δ[A267045(A289207(n))]`
-/

namespace A266248.P11393327192372980909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267045 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267045 n + (f1 (n + 1) - f1 n)

end

end A266248.P11393327192372980909

namespace A266248

/-- `A267045(n)+Δ[A267045(A289207(n))]` -/
def P11393327192372980909.Spec : Prop :=
  ∀ n, P11393327192372980909.a n = A266248 n

end A266248

/-!
# A266249: Number of ON (black) cells in the n-th iteration of the "Rule 9" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266249, the canonical program `A266249.P16903991746729241488` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266249 has offset 0).

The definition of A266249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266249.P16903991746729241488

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2, a(4)=4, a(5)=5, a(6)=4, a(7)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266249

/-- `2*a(n-2)-a(n-4)` -/
def P16903991746729241488.Spec : Prop :=
  ∀ n, P16903991746729241488.a n = A266249 n

theorem P16903991746729241488.correct : P16903991746729241488.Spec := by
  intro n
  simp only [A266249]

end A266249

/-! ## A266249.P4778382980648495117

`A266447(n)-and(1, n)`
-/

namespace A266249.P4778382980648495117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266447 n - (Nat.land 1 n : ℤ)

end

end A266249.P4778382980648495117

namespace A266249

/-- `A266447(n)-and(1, n)` -/
def P4778382980648495117.Spec : Prop :=
  ∀ n, P4778382980648495117.a n = A266249 n

end A266249

/-! ## A266249.P9622858856721148186

`Δ[n²]-A266251(n)`
-/

namespace A266249.P9622858856721148186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266251 n

end

end A266249.P9622858856721148186

namespace A266249

/-- `Δ[n²]-A266251(n)` -/
def P9622858856721148186.Spec : Prop :=
  ∀ n, P9622858856721148186.a n = A266249 n

end A266249

/-! ## A266249.P10273717721702117698

`or(1, n)+n-A266449(n)`
-/

namespace A266249.P10273717721702117698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) + ((n : ℤ) - A266449 n)

end

end A266249.P10273717721702117698

namespace A266249

/-- `or(1, n)+n-A266449(n)` -/
def P10273717721702117698.Spec : Prop :=
  ∀ n, P10273717721702117698.a n = A266249 n

end A266249

/-! ## A266249.P1013733024697627472

`n-Δ[A029578(n-a(n-1))]` with `a(0)=1`
-/

namespace A266249.P1013733024697627472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A029578 ((n : ℤ) - f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A266249.P1013733024697627472

namespace A266249

/-- `n-Δ[A029578(n-a(n-1))]` -/
def P1013733024697627472.Spec : Prop :=
  ∀ n, P1013733024697627472.a n = A266249 n

end A266249

/-! ## A266249.P10237536486044937480

`A266447(n)-A000035(n)`
-/

namespace A266249.P10237536486044937480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266447 n - A000035 n

end

end A266249.P10237536486044937480

namespace A266249

/-- `A266447(n)-A000035(n)` -/
def P10237536486044937480.Spec : Prop :=
  ∀ n, P10237536486044937480.a n = A266249 n

end A266249

/-! ## A266249.P18042274118417021811

`A042963(n+1)-A266449(n)`
-/

namespace A266249.P18042274118417021811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) - A266449 n

end

end A266249.P18042274118417021811

namespace A266249

/-- `A042963(n+1)-A266449(n)` -/
def P18042274118417021811.Spec : Prop :=
  ∀ n, P18042274118417021811.a n = A266249 n

end A266249

/-! ## A266249.P14579878427250912229

`A266447(n)+2-A010693(n)`
-/

namespace A266249.P14579878427250912229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266447 n + (2 - A010693 n)

end

end A266249.P14579878427250912229

namespace A266249

/-- `A266447(n)+2-A010693(n)` -/
def P14579878427250912229.Spec : Prop :=
  ∀ n, P14579878427250912229.a n = A266249 n

end A266249

/-! ## A266249.P4036589912335330249

`A109613(n)+n-A266449(n)`
-/

namespace A266249.P4036589912335330249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + ((n : ℤ) - A266449 n)

end

end A266249.P4036589912335330249

namespace A266249

/-- `A109613(n)+n-A266449(n)` -/
def P4036589912335330249.Spec : Prop :=
  ∀ n, P4036589912335330249.a n = A266249 n

end A266249

/-! ## A266249.P2016807521389625566

`A056594(n)²+A266447(n)-1`
-/

namespace A266249.P2016807521389625566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 + (A266447 n - 1)

end

end A266249.P2016807521389625566

namespace A266249

/-- `A056594(n)²+A266447(n)-1` -/
def P2016807521389625566.Spec : Prop :=
  ∀ n, P2016807521389625566.a n = A266249 n

end A266249

/-! ## A266249.P18192692797948591677

`(A266447(n)-n%2)%(1-A016885(n))²`
-/

namespace A266249.P18192692797948591677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266447 n - ((n % 2 : ℕ) : ℤ)) ((1 - A016885 n) ^ 2)

end

end A266249.P18192692797948591677

namespace A266249

/-- `(A266447(n)-n%2)%(1-A016885(n))²` -/
def P18192692797948591677.Spec : Prop :=
  ∀ n, P18192692797948591677.a n = A266249 n

end A266249

/-! ## A266249.P12671550061954988877

`A267261(n+1)-2*n%2`
-/

namespace A266249.P12671550061954988877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267261 (n + 1) - ((2 * (n % 2) : ℕ) : ℤ)

end

end A266249.P12671550061954988877

namespace A266249

/-- `A267261(n+1)-2*n%2` -/
def P12671550061954988877.Spec : Prop :=
  ∀ n, P12671550061954988877.a n = A266249 n

end A266249

/-! ## A266249.P7278487735964564222

`Δ[log2(A016116(n+1))]-A266449(n)+n+n`
-/

namespace A266249.P7278487735964564222
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A016116 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A266449 n : ℝ) + (n : ℝ) + (n : ℝ)

end

end A266249.P7278487735964564222

namespace A266249

/-- `Δ[log2(A016116(n+1))]-A266449(n)+n+n` -/
def P7278487735964564222.Spec : Prop :=
  ∀ n, P7278487735964564222.a n = (A266249 n : ℝ)

end A266249

/-!
# A266250: Total number of ON (black) cells after n iterations of the "Rule 9" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266250, the canonical program `A266250.P8506846487110552929` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266250 has offset 0).

The definition of A266250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266250.P8506846487110552929

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=9, a(5)=14, a(6)=18, a(7)=27`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266250

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8506846487110552929.Spec : Prop :=
  ∀ n, P8506846487110552929.a n = A266250 n

theorem P8506846487110552929.correct : P8506846487110552929.Spec := by
  intro n
  simp only [A266250]

end A266250

/-! ## A266250.P11657170156631039962

`∑[A266249(n)]`
-/

namespace A266250.P11657170156631039962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266250.P11657170156631039962

namespace A266250

/-- `∑[A266249(n)]` -/
def P11657170156631039962.Spec : Prop :=
  ∀ n, P11657170156631039962.a n = A266250 n

end A266250

/-! ## A266250.P8691831250338868987

`(n+1)²-A266252(n)`
-/

namespace A266250.P8691831250338868987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266252 n

end

end A266250.P8691831250338868987

namespace A266250

/-- `(n+1)²-A266252(n)` -/
def P8691831250338868987.Spec : Prop :=
  ∀ n, P8691831250338868987.a n = A266250 n

end A266250

/-! ## A266250.P13302639296935645280

`∑[A266447(n)-and(1, n)]`
-/

namespace A266250.P13302639296935645280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266447 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266250.P13302639296935645280

namespace A266250

/-- `∑[A266447(n)-and(1, n)]` -/
def P13302639296935645280.Spec : Prop :=
  ∀ n, P13302639296935645280.a n = A266250 n

end A266250

/-! ## A266250.P6220871319689962221

`∑[Δ[n²]-A266251(n)]`
-/

namespace A266250.P6220871319689962221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266250.P6220871319689962221

namespace A266250

/-- `∑[Δ[n²]-A266251(n)]` -/
def P6220871319689962221.Spec : Prop :=
  ∀ n, P6220871319689962221.a n = A266250 n

end A266250

/-! ## A266250.P16945408042446701641

`∑[or(1, n)+n-A266449(n)]`
-/

namespace A266250.P16945408042446701641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n + n : ℤ) - A266449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266250.P16945408042446701641

namespace A266250

/-- `∑[or(1, n)+n-A266449(n)]` -/
def P16945408042446701641.Spec : Prop :=
  ∀ n, P16945408042446701641.a n = A266250 n

end A266250

/-! ## A266250.P17141511209562949034

`A266448(n)-A110654(n)`
-/

namespace A266250.P17141511209562949034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266448 n - A110654 n

end

end A266250.P17141511209562949034

namespace A266250

/-- `A266448(n)-A110654(n)` -/
def P17141511209562949034.Spec : Prop :=
  ∀ n, P17141511209562949034.a n = A266250 n

end A266250

/-! ## A266250.P10016489046566316944

`∑[A266447(n)-A000035(n)]`
-/

namespace A266250.P10016489046566316944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266447 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266250.P10016489046566316944

namespace A266250

/-- `∑[A266447(n)-A000035(n)]` -/
def P10016489046566316944.Spec : Prop :=
  ∀ n, P10016489046566316944.a n = A266250 n

end A266250

/-! ## A266250.P5376979112552863803

`A004526(n)-(n-A266448(n))`
-/

namespace A266250.P5376979112552863803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - ((n : ℤ) - A266448 n)

end

end A266250.P5376979112552863803

namespace A266250

/-- `A004526(n)-(n-A266448(n))` -/
def P5376979112552863803.Spec : Prop :=
  ∀ n, P5376979112552863803.a n = A266250 n

end A266250

/-! ## A266250.P16712556535506423564

`∑[A042963(n+1)-A266449(n)]`
-/

namespace A266250.P16712556535506423564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) - A266449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266250.P16712556535506423564

namespace A266250

/-- `∑[A042963(n+1)-A266449(n)]` -/
def P16712556535506423564.Spec : Prop :=
  ∀ n, P16712556535506423564.a n = A266250 n

end A266250

/-! ## A266250.P7994975357244611453

`A266249(n)+a(A004277(n)-(n+1))` with `a(0)=1`
-/

namespace A266250.P7994975357244611453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266249 n + a (A004277 n - (n + 1 : ℤ)).toNat

end

end A266250.P7994975357244611453

namespace A266250

/-- `A266249(n)+a(A004277(n)-(n+1))` -/
def P7994975357244611453.Spec : Prop :=
  ∀ n, P7994975357244611453.a n = A266250 n

end A266250

/-! ## A266250.P11286997590978873629

`A267262(n+1)-2*A004526(n+1)`
-/

namespace A266250.P11286997590978873629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267262 (n + 1) - 2 * A004526 (n + 1)

end

end A266250.P11286997590978873629

namespace A266250

/-- `A267262(n+1)-2*A004526(n+1)` -/
def P11286997590978873629.Spec : Prop :=
  ∀ n, P11286997590978873629.a n = A266250 n

end A266250

/-! ## A266250.P14445348225227970391

`A266249(n)+a(A074286(A013948(n))-1)` with `a(0)=1`
-/

namespace A266250.P14445348225227970391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266249 n + a (A074286 (A013948 n).toNat - 1).toNat

end

end A266250.P14445348225227970391

namespace A266250

/-- `A266249(n)+a(A074286(A013948(n))-1)` -/
def P14445348225227970391.Spec : Prop :=
  ∀ n, P14445348225227970391.a n = A266250 n

end A266250

/-!
# A266251: Number of OFF (white) cells in the n-th iteration of the "Rule 9" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266251, the canonical program `A266251.P12546690590261093811` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266251 has offset 0).

The definition of A266251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266251.P12546690590261093811

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=3, a(3)=5, a(4)=5, a(5)=6, a(6)=9, a(7)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266251

/-- `2*a(n-2)-a(n-4)` -/
def P12546690590261093811.Spec : Prop :=
  ∀ n, P12546690590261093811.a n = A266251 n

theorem P12546690590261093811.correct : P12546690590261093811.Spec := by
  intro n
  simp only [A266251]

end A266251

/-! ## A266251.P15566799033105950195

`A266449(n)+n%2`
-/

namespace A266251.P15566799033105950195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n + ((n % 2 : ℕ) : ℤ)

end

end A266251.P15566799033105950195

namespace A266251

/-- `A266449(n)+n%2` -/
def P15566799033105950195.Spec : Prop :=
  ∀ n, P15566799033105950195.a n = A266251 n

end A266251

/-! ## A266251.P3774864307871999877

`Δ[n²]-A266249(n)`
-/

namespace A266251.P3774864307871999877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266249 n

end

end A266251.P3774864307871999877

namespace A266251

/-- `Δ[n²]-A266249(n)` -/
def P3774864307871999877.Spec : Prop :=
  ∀ n, P3774864307871999877.a n = A266251 n

end A266251

/-! ## A266251.P5252133234681767745

`A266449(n)+A000035(n)`
-/

namespace A266251.P5252133234681767745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n + A000035 n

end

end A266251.P5252133234681767745

namespace A266251

/-- `A266449(n)+A000035(n)` -/
def P5252133234681767745.Spec : Prop :=
  ∀ n, P5252133234681767745.a n = A266251 n

end A266251

/-! ## A266251.P7551093302419248997

`A005843(n)+1-A266249(n)`
-/

namespace A266251.P7551093302419248997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A266249 n)

end

end A266251.P7551093302419248997

namespace A266251

/-- `A005843(n)+1-A266249(n)` -/
def P7551093302419248997.Spec : Prop :=
  ∀ n, P7551093302419248997.a n = A266251 n

end A266251

/-! ## A266251.P3504880631258618555

`A266449(n)+1-A059841(n)`
-/

namespace A266251.P3504880631258618555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n + (1 - A059841 n)

end

end A266251.P3504880631258618555

namespace A266251

/-- `A266449(n)+1-A059841(n)` -/
def P3504880631258618555.Spec : Prop :=
  ∀ n, P3504880631258618555.a n = A266251 n

end A266251

/-! ## A266251.P13511196400183801146

`A016777(n)-(A266249(n)+n)`
-/

namespace A266251.P13511196400183801146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A266249 n + (n : ℤ))

end

end A266251.P13511196400183801146

namespace A266251

/-- `A016777(n)-(A266249(n)+n)` -/
def P13511196400183801146.Spec : Prop :=
  ∀ n, P13511196400183801146.a n = A266251 n

end A266251

/-! ## A266251.P8807368675388023

`A266449(n)+1-A109613(n)+n`
-/

namespace A266251.P8807368675388023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n + (1 - A109613 n + (n : ℤ))

end

end A266251.P8807368675388023

namespace A266251

/-- `A266449(n)+1-A109613(n)+n` -/
def P8807368675388023.Spec : Prop :=
  ∀ n, P8807368675388023.a n = A266251 n

end A266251

/-! ## A266251.P2614003268244928729

`xor(1, n+1)+n+1-A267261(n+1)`
-/

namespace A266251.P2614003268244928729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 1) : ℤ) + ((n + 1 : ℤ) - A267261 (n + 1))

end

end A266251.P2614003268244928729

namespace A266251

/-- `xor(1, n+1)+n+1-A267261(n+1)` -/
def P2614003268244928729.Spec : Prop :=
  ∀ n, P2614003268244928729.a n = A266251 n

end A266251

/-! ## A266251.P10623615562243231556

`A266792(n+1)-Δ[n+1-a(n-1)]` with `a(0)=0`
-/

namespace A266251.P10623615562243231556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266792 (n + 1) - (f1 (n + 1) - f1 n)

end

end A266251.P10623615562243231556

namespace A266251

/-- `A266792(n+1)-Δ[n+1-a(n-1)]` -/
def P10623615562243231556.Spec : Prop :=
  ∀ n, P10623615562243231556.a n = A266251 n

end A266251

/-! ## A266251.P173934012777137373

`A266449(n)+A059841(n+1)`
-/

namespace A266251.P173934012777137373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n + A059841 (n + 1)

end

end A266251.P173934012777137373

namespace A266251

/-- `A266449(n)+A059841(n+1)` -/
def P173934012777137373.Spec : Prop :=
  ∀ n, P173934012777137373.a n = A266251 n

end A266251

/-! ## A266251.P3625818653677145385

`Δ[A267260(n)-Δ[A007590(n)]]`
-/

namespace A266251.P3625818653677145385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267260 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266251.P3625818653677145385

namespace A266251

/-- `Δ[A267260(n)-Δ[A007590(n)]]` -/
def P3625818653677145385.Spec : Prop :=
  ∀ n, P3625818653677145385.a n = A266251 n

end A266251

/-! ## A266251.P8570199718454799116

`A266449(n)+A266444(n+12)`
-/

namespace A266251.P8570199718454799116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n + A266444 (n + 12)

end

end A266251.P8570199718454799116

namespace A266251

/-- `A266449(n)+A266444(n+12)` -/
def P8570199718454799116.Spec : Prop :=
  ∀ n, P8570199718454799116.a n = A266251 n

end A266251

/-! ## A266251.P6015652388100232472

`A074286(A013948(n+1))+n-A266249(n)`
-/

namespace A266251.P6015652388100232472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A013948 (n + 1)).toNat + ((n : ℤ) - A266249 n)

end

end A266251.P6015652388100232472

namespace A266251

/-- `A074286(A013948(n+1))+n-A266249(n)` -/
def P6015652388100232472.Spec : Prop :=
  ∀ n, P6015652388100232472.a n = A266251 n

end A266251

/-! ## A266251.P13133884823950901794

`A266449(n)+A001221(A318454(n+1))`
-/

namespace A266251.P13133884823950901794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n + A001221 (A318454 (n + 1)).toNat

end

end A266251.P13133884823950901794

namespace A266251

/-- `A266449(n)+A001221(A318454(n+1))` -/
def P13133884823950901794.Spec : Prop :=
  ∀ n, P13133884823950901794.a n = A266251 n

end A266251

/-! ## A266251.P10481282530283416324

`A266449(n)+Δ[log2(A016116(n))]`
-/

namespace A266251.P10481282530283416324
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A016116 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A266449 n : ℝ) + (f1 (n + 1) - f1 n)

end

end A266251.P10481282530283416324

namespace A266251

/-- `A266449(n)+Δ[log2(A016116(n))]` -/
def P10481282530283416324.Spec : Prop :=
  ∀ n, P10481282530283416324.a n = (A266251 n : ℝ)

end A266251

/-!
# A266252: Total number of OFF (white) cells after n iterations of the "Rule 9" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266252, the canonical program `A266252.P12496654512604418616` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266252 has offset 0).

The definition of A266252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266252.P12496654512604418616

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=11, a(4)=16, a(5)=22, a(6)=31, a(7)=37`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266252

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P12496654512604418616.Spec : Prop :=
  ∀ n, P12496654512604418616.a n = A266252 n

theorem P12496654512604418616.correct : P12496654512604418616.Spec := by
  intro n
  simp only [A266252]

end A266252

/-! ## A266252.P4871266379964663593

`∑[A266251(n)]`
-/

namespace A266252.P4871266379964663593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266252.P4871266379964663593

namespace A266252

/-- `∑[A266251(n)]` -/
def P4871266379964663593.Spec : Prop :=
  ∀ n, P4871266379964663593.a n = A266252 n

end A266252

/-! ## A266252.P18338254978181446354

`(n+1)²-A266250(n)`
-/

namespace A266252.P18338254978181446354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266250 n

end

end A266252.P18338254978181446354

namespace A266252

/-- `(n+1)²-A266250(n)` -/
def P18338254978181446354.Spec : Prop :=
  ∀ n, P18338254978181446354.a n = A266252 n

end A266252

/-! ## A266252.P798017538620500062

`∑[A266449(n)+and(1, n)]`
-/

namespace A266252.P798017538620500062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266252.P798017538620500062

namespace A266252

/-- `∑[A266449(n)+and(1, n)]` -/
def P798017538620500062.Spec : Prop :=
  ∀ n, P798017538620500062.a n = A266252 n

end A266252

/-! ## A266252.P7590076204494377925

`∑[Δ[n²]-A266249(n)]`
-/

namespace A266252.P7590076204494377925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266252.P7590076204494377925

namespace A266252

/-- `∑[Δ[n²]-A266249(n)]` -/
def P7590076204494377925.Spec : Prop :=
  ∀ n, P7590076204494377925.a n = A266252 n

end A266252

/-! ## A266252.P13343210680187976061

`A266450(n)+A110654(n)`
-/

namespace A266252.P13343210680187976061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266450 n + A110654 n

end

end A266252.P13343210680187976061

namespace A266252

/-- `A266450(n)+A110654(n)` -/
def P13343210680187976061.Spec : Prop :=
  ∀ n, P13343210680187976061.a n = A266252 n

end A266252

/-! ## A266252.P14979040398731969241

`∑[A266449(n)+A000035(n)]`
-/

namespace A266252.P14979040398731969241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266252.P14979040398731969241

namespace A266252

/-- `∑[A266449(n)+A000035(n)]` -/
def P14979040398731969241.Spec : Prop :=
  ∀ n, P14979040398731969241.a n = A266252 n

end A266252

/-! ## A266252.P12225307170808247628

`∑[A266449(n)+1]-A008619(n)`
-/

namespace A266252.P12225307170808247628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008619 n

end

end A266252.P12225307170808247628

namespace A266252

/-- `∑[A266449(n)+1]-A008619(n)` -/
def P12225307170808247628.Spec : Prop :=
  ∀ n, P12225307170808247628.a n = A266252 n

end A266252

/-! ## A266252.P5255242015592198317

`∑[A004277(n)]+n-A266250(n)`
-/

namespace A266252.P5255242015592198317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A266250 n)

end

end A266252.P5255242015592198317

namespace A266252

/-- `∑[A004277(n)]+n-A266250(n)` -/
def P5255242015592198317.Spec : Prop :=
  ∀ n, P5255242015592198317.a n = A266252 n

end A266252

/-! ## A266252.P13320582700692686014

`A267260(n+1)-(Δ[A007590(n+1)]+1)`
-/

namespace A266252.P13320582700692686014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267260 (n + 1) - (f1 (n + 1) - f1 n + 1)

end

end A266252.P13320582700692686014

namespace A266252

/-- `A267260(n+1)-(Δ[A007590(n+1)]+1)` -/
def P13320582700692686014.Spec : Prop :=
  ∀ n, P13320582700692686014.a n = A266252 n

end A266252

/-! ## A266252.P5236301967725660376

`A266450(n)+A110656(4*n)`
-/

namespace A266252.P5236301967725660376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266450 n + A110656 (4 * n)

end

end A266252.P5236301967725660376

namespace A266252

/-- `A266450(n)+A110656(4*n)` -/
def P5236301967725660376.Spec : Prop :=
  ∀ n, P5236301967725660376.a n = A266252 n

end A266252

/-!
# A266253: Triangle read by rows giving successive states of cellular automaton generated by "Rule 11" initiated with a single ON (black) cell.

The programs for A266253, the canonical program `A266253.P16158340337139498809` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266253 has offset 0).

The definition of A266253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266253.P16158340337139498809

`floor(sqrt(n+2))%2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266253

/-- `floor(sqrt(n+2))%2` -/
def P16158340337139498809.Spec : Prop :=
  ∀ n, (P16158340337139498809.a n : ℤ) = A266253 n

theorem P16158340337139498809.correct : P16158340337139498809.Spec := by
  intro n
  simp only [A266253]

end A266253

/-! ## A266253.P17801468790573614876

`and(1, floor(sqrt(n+2)))`
-/

namespace A266253.P17801468790573614876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt (n + 2))

end

end A266253.P17801468790573614876

namespace A266253

/-- `and(1, floor(sqrt(n+2)))` -/
def P17801468790573614876.Spec : Prop :=
  ∀ n, (P17801468790573614876.a n : ℤ) = A266253 n

theorem P17801468790573614876.correct : P17801468790573614876.Spec := by
  intro n
  simp only [A266253, Nat.add_sub_cancel, A266253.P17801468790573614876.a, A266253.P16158340337139498809.a, SequenceMachineLib.memo_apply]
  try simp

end A266253

/-! ## A266253.P6295324026042476635

`log2(gcd(2, ceil(sqrt(n+3))))`
-/

namespace A266253.P6295324026042476635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 ⌈Real.sqrt (n + 3 : ℝ)⌉ : ℝ)

end

end A266253.P6295324026042476635

namespace A266253

/-- `log2(gcd(2, ceil(sqrt(n+3))))` -/
def P6295324026042476635.Spec : Prop :=
  ∀ n, P6295324026042476635.a n = (A266253 n : ℝ)

end A266253

/-! ## A266253.P3691463898045161900

`1-ceil(sqrt(n+3))%2`
-/

namespace A266253.P3691463898045161900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ⌈Real.sqrt (n + 3 : ℝ)⌉ 2

end

end A266253.P3691463898045161900

namespace A266253

/-- `1-ceil(sqrt(n+3))%2` -/
def P3691463898045161900.Spec : Prop :=
  ∀ n, P3691463898045161900.a n = A266253 n

end A266253

/-! ## A266253.P14878449048732496248

`-(ceil(-sqrt(n+2))%2)`
-/

namespace A266253.P14878449048732496248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ⌈-Real.sqrt (n + 2 : ℝ)⌉ 2

end

end A266253.P14878449048732496248

namespace A266253

/-- `-(ceil(-sqrt(n+2))%2)` -/
def P14878449048732496248.Spec : Prop :=
  ∀ n, P14878449048732496248.a n = A266253 n

end A266253

/-! ## A266253.P12269378646390085236

`A267598(∑[and(2, n)])`
-/

namespace A266253.P12269378646390085236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266253.P12269378646390085236

namespace A266253

/-- `A267598(∑[and(2, n)])` -/
def P12269378646390085236.Spec : Prop :=
  ∀ n, P12269378646390085236.a n = A266253 n

end A266253

/-! ## A266253.P15674456933154395577

`A000035(floor(sqrt(n+2)))`
-/

namespace A266253.P15674456933154395577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.sqrt (n + 2))

end

end A266253.P15674456933154395577

namespace A266253

/-- `A000035(floor(sqrt(n+2)))` -/
def P15674456933154395577.Spec : Prop :=
  ∀ n, P15674456933154395577.a n = A266253 n

end A266253

/-! ## A266253.P14714753780294380607

`val(A020639(ceil(sqrt(n+3))), 2)`
-/

namespace A266253.P14714753780294380607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 ⌈Real.sqrt (n + 3 : ℝ)⌉.toNat).toNat 2

end

end A266253.P14714753780294380607

namespace A266253

/-- `val(A020639(ceil(sqrt(n+3))), 2)` -/
def P14714753780294380607.Spec : Prop :=
  ∀ n, (P14714753780294380607.a n : ℤ) = A266253 n

end A266253

/-! ## A266253.P15464055183607099887

`A266659(A130481(n))`
-/

namespace A266253.P15464055183607099887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266659 (A130481 n).toNat

end

end A266253.P15464055183607099887

namespace A266253

/-- `A266659(A130481(n))` -/
def P15464055183607099887.Spec : Prop :=
  ∀ n, P15464055183607099887.a n = A266253 n

end A266253

/-! ## A266253.P1235084843023482478

`A267598(A201629(n))`
-/

namespace A266253.P1235084843023482478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 (A201629 n).toNat

end

end A266253.P1235084843023482478

namespace A266253

/-- `A267598(A201629(n))` -/
def P1235084843023482478.Spec : Prop :=
  ∀ n, P1235084843023482478.a n = A266253 n

end A266253

/-! ## A266253.P11323298424932229568

`A133872(A316355(n+1))`
-/

namespace A266253.P11323298424932229568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A316355 (n + 1)).toNat

end

end A266253.P11323298424932229568

namespace A266253

/-- `A133872(A316355(n+1))` -/
def P11323298424932229568.Spec : Prop :=
  ∀ n, P11323298424932229568.a n = A266253 n

end A266253

/-! ## A266253.P14393901444815252669

`A266659(A185012(n)+n)`
-/

namespace A266253.P14393901444815252669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266659 (A185012 n + (n : ℤ)).toNat

end

end A266253.P14393901444815252669

namespace A266253

/-- `A266659(A185012(n)+n)` -/
def P14393901444815252669.Spec : Prop :=
  ∀ n, P14393901444815252669.a n = A266253 n

end A266253

/-! ## A266253.P3035933573154885889

`A266659(n)-A185012(n)`
-/

namespace A266253.P3035933573154885889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266659 n - A185012 n

end

end A266253.P3035933573154885889

namespace A266253

/-- `A266659(n)-A185012(n)` -/
def P3035933573154885889.Spec : Prop :=
  ∀ n, P3035933573154885889.a n = A266253 n

end A266253

/-! ## A266253.P2517424945085835111

`A266659(n)*A267537(n)`
-/

namespace A266253.P2517424945085835111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266659 n * A267537 n

end

end A266253.P2517424945085835111

namespace A266253

/-- `A266659(n)*A267537(n)` -/
def P2517424945085835111.Spec : Prop :=
  ∀ n, P2517424945085835111.a n = A266253 n

end A266253

/-! ## A266253.P12219614936181362543

`A266659(n)*A267869(n)`
-/

namespace A266253.P12219614936181362543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266659 n * A267869 n

end

end A266253.P12219614936181362543

namespace A266253

/-- `A266659(n)*A267869(n)` -/
def P12219614936181362543.Spec : Prop :=
  ∀ n, P12219614936181362543.a n = A266253 n

end A266253

/-! ## A266253.P5478720811268457500

`A266659(or(n, A266659(n)))`
-/

namespace A266253.P5478720811268457500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266659 (Int.lor (n : ℤ) (A266659 n)).toNat

end

end A266253.P5478720811268457500

namespace A266253

/-- `A266659(or(n, A266659(n)))` -/
def P5478720811268457500.Spec : Prop :=
  ∀ n, P5478720811268457500.a n = A266253 n

end A266253

/-! ## A266253.P18062951317368031323

`A266300(A354034(n+2)+n)`
-/

namespace A266253.P18062951317368031323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A354034 (n + 2) + (n : ℤ)).toNat

end

end A266253.P18062951317368031323

namespace A266253

/-- `A266300(A354034(n+2)+n)` -/
def P18062951317368031323.Spec : Prop :=
  ∀ n, P18062951317368031323.a n = A266253 n

end A266253

/-! ## A266253.P4477016578323903134

`A266300(n+1)`
-/

namespace A266253.P4477016578323903134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (n + 1)

end

end A266253.P4477016578323903134

namespace A266253

/-- `A266300(n+1)` -/
def P4477016578323903134.Spec : Prop :=
  ∀ n, P4477016578323903134.a n = A266253 n

end A266253

/-! ## A266253.P7625194381438160440

`A266377(n+2)`
-/

namespace A266253.P7625194381438160440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266377 (n + 2)

end

end A266253.P7625194381438160440

namespace A266253

/-- `A266377(n+2)` -/
def P7625194381438160440.Spec : Prop :=
  ∀ n, P7625194381438160440.a n = A266253 n

end A266253

/-!
# A266255: Decimal representation of the n-th iteration of the "Rule 11" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266255, the canonical program `A266255.P7656117395515775197` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266255 has offset 0).

The definition of A266255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266255.P7656117395515775197

`17*a(n-2)-16*a(n-4)` with `a(0)=1, a(1)=4, a(2)=3, a(3)=124, a(4)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266255

/-- `17*a(n-2)-16*a(n-4)` -/
def P7656117395515775197.Spec : Prop :=
  ∀ n, P7656117395515775197.a n = A266255 n

theorem P7656117395515775197.correct : P7656117395515775197.Spec := by
  intro n
  simp only [A266255]

end A266255

/-! ## A266255.P15923614889531386371

`and(A174971(n), A266661(n))`
-/

namespace A266255.P15923614889531386371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174971 n) (A266661 n)

end

end A266255.P15923614889531386371

namespace A266255

/-- `and(A174971(n), A266661(n))` -/
def P15923614889531386371.Spec : Prop :=
  ∀ n, P15923614889531386371.a n = A266255 n

end A266255

/-! ## A266255.P7339157746624141543

`and(A260196(n), A266661(n))`
-/

namespace A266255.P7339157746624141543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A266661 n)

end

end A266255.P7339157746624141543

namespace A266255

/-- `and(A260196(n), A266661(n))` -/
def P7339157746624141543.Spec : Prop :=
  ∀ n, P7339157746624141543.a n = A266255 n

end A266255

/-! ## A266255.P16037973306244273357

`A266302(n)-2*A062157(n)`
-/

namespace A266255.P16037973306244273357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266302 n - 2 * A062157 n

end

end A266255.P16037973306244273357

namespace A266255

/-- `A266302(n)-2*A062157(n)` -/
def P16037973306244273357.Spec : Prop :=
  ∀ n, P16037973306244273357.a n = A266255 n

end A266255

/-! ## A266255.P21867915870431688

`xor(2*A057427(n), A266302(n))`
-/

namespace A266255.P21867915870431688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A057427 n) (A266302 n)

end

end A266255.P21867915870431688

namespace A266255

/-- `xor(2*A057427(n), A266302(n))` -/
def P21867915870431688.Spec : Prop :=
  ∀ n, P21867915870431688.a n = A266255 n

end A266255

/-! ## A266255.P10059565436328582969

`A266661(n)-A000038(A028242(n))`
-/

namespace A266255.P10059565436328582969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266661 n - A000038 (A028242 n).toNat

end

end A266255.P10059565436328582969

namespace A266255

/-- `A266661(n)-A000038(A028242(n))` -/
def P10059565436328582969.Spec : Prop :=
  ∀ n, P10059565436328582969.a n = A266255 n

end A266255

/-! ## A266255.P9491506088116441811

`xor(A010673(A004273(n)), A266302(n))`
-/

namespace A266255.P9491506088116441811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 (A004273 n).toNat) (A266302 n)

end

end A266255.P9491506088116441811

namespace A266255

/-- `xor(A010673(A004273(n)), A266302(n))` -/
def P9491506088116441811.Spec : Prop :=
  ∀ n, P9491506088116441811.a n = A266255 n

end A266255

/-! ## A266255.P15558172294004746852

`A266661(n)-and(A005009(n), A266258(n))`
-/

namespace A266255.P15558172294004746852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266661 n - Int.land (A005009 n) (A266258 n)

end

end A266255.P15558172294004746852

namespace A266255

/-- `A266661(n)-and(A005009(n), A266258(n))` -/
def P15558172294004746852.Spec : Prop :=
  ∀ n, P15558172294004746852.a n = A266255 n

end A266255

/-! ## A266255.P2247286526441579260

`abs(A266218(n)-(A266246(A266256(n))+2))`
-/

namespace A266255.P2247286526441579260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266218 n - (A266246 (A266256 n).toNat + 2)|

end

end A266255.P2247286526441579260

namespace A266255

/-- `abs(A266218(n)-(A266246(A266256(n))+2))` -/
def P2247286526441579260.Spec : Prop :=
  ∀ n, P2247286526441579260.a n = A266255 n

end A266255

/-! ## A266255.P5544749967302253671

`and(A266661(n), A267886(n))`
-/

namespace A266255.P5544749967302253671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266661 n) (A267886 n)

end

end A266255.P5544749967302253671

namespace A266255

/-- `and(A266661(n), A267886(n))` -/
def P5544749967302253671.Spec : Prop :=
  ∀ n, P5544749967302253671.a n = A266255 n

end A266255

/-! ## A266255.P17421375090027198233

`and(A266661(n), A267938(n))`
-/

namespace A266255.P17421375090027198233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266661 n) (A267938 n)

end

end A266255.P17421375090027198233

namespace A266255

/-- `and(A266661(n), A267938(n))` -/
def P17421375090027198233.Spec : Prop :=
  ∀ n, P17421375090027198233.a n = A266255 n

end A266255

/-! ## A266255.P7473099491093007459

`and(A266661(n+2), A266661(n))`
-/

namespace A266255.P7473099491093007459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266661 (n + 2)) (A266661 n)

end

end A266255.P7473099491093007459

namespace A266255

/-- `and(A266661(n+2), A266661(n))` -/
def P7473099491093007459.Spec : Prop :=
  ∀ n, P7473099491093007459.a n = A266255 n

end A266255

/-! ## A266255.P335239270549184863

`xor(A002262(A167614(n+1)), A266436(n))`
-/

namespace A266255.P335239270549184863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 (A167614 (n + 1)).toNat) (A266436 n)

end

end A266255.P335239270549184863

namespace A266255

/-- `xor(A002262(A167614(n+1)), A266436(n))` -/
def P335239270549184863.Spec : Prop :=
  ∀ n, P335239270549184863.a n = A266255 n

end A266255

/-!
# A266256: Number of ON (black) cells in the n-th iteration of the "Rule 11" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266256, the canonical program `A266256.P3529239228989792605` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266256 has offset 0).

The definition of A266256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266256.P10969432886340375205

`xor(2, a(n-2))+2` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A266256.P10969432886340375205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Nat.xor 2 (a (n - 2)) + 2

end

end A266256.P10969432886340375205

namespace A266256

/-- `xor(2, a(n-2))+2` -/
def P10969432886340375205.Spec : Prop :=
  ∀ n, (P10969432886340375205.a n : ℤ) = A266256 n

end A266256

/-! ## A266256.P13229285193062882439

`xor(1, 2*n-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A266256.P13229285193062882439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor 1 ((2 * n : ℤ) - a (n - 1))

end

end A266256.P13229285193062882439

namespace A266256

/-- `xor(1, 2*n-a(n-1))` -/
def P13229285193062882439.Spec : Prop :=
  ∀ n, P13229285193062882439.a n = A266256 n

end A266256

/-! ## A266256.P9627565813098386333

`a(n-2)+4*n%2` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A266256.P9627565813098386333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + 4 * (n % 2)

end

end A266256.P9627565813098386333

namespace A266256

/-- `a(n-2)+4*n%2` -/
def P9627565813098386333.Spec : Prop :=
  ∀ n, (P9627565813098386333.a n : ℤ) = A266256 n

end A266256

/-! ## A266256.P15789625910403666474

`a(n-2)+4*and(1, n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A266256.P15789625910403666474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + 4 * Nat.land 1 n

end

end A266256.P15789625910403666474

namespace A266256

/-- `a(n-2)+4*and(1, n)` -/
def P15789625910403666474.Spec : Prop :=
  ∀ n, (P15789625910403666474.a n : ℤ) = A266256 n

end A266256

/-! ## A266256.P10212252333173672935

`(2*xor(1, n))%(2*n+1)+1`
-/

namespace A266256.P10212252333173672935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 n % (2 * n + 1) + 1

end

end A266256.P10212252333173672935

namespace A266256

/-- `(2*xor(1, n))%(2*n+1)+1` -/
def P10212252333173672935.Spec : Prop :=
  ∀ n, (P10212252333173672935.a n : ℤ) = A266256 n

end A266256

/-! ## A266256.P3544639837818524839

`2*n+1-or(2, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A266256.P3544639837818524839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 * n + 1 : ℤ) - Int.lor 2 (a (n - 1))

end

end A266256.P3544639837818524839

namespace A266256

/-- `2*n+1-or(2, a(n-1))` -/
def P3544639837818524839.Spec : Prop :=
  ∀ n, P3544639837818524839.a n = A266256 n

end A266256

/-! ## A266256.P1895649132466169173

`or(2, 2*n-a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A266256.P1895649132466169173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 2 ((2 * n : ℤ) - a (n - 1)) - 1

end

end A266256.P1895649132466169173

namespace A266256

/-- `or(2, 2*n-a(n-1))-1` -/
def P1895649132466169173.Spec : Prop :=
  ∀ n, P1895649132466169173.a n = A266256 n

end A266256

/-! ## A266256.P12133848455913945660

`floor((4*n-2)/a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A266256.P12133848455913945660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌊((4 * n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A266256.P12133848455913945660

namespace A266256

/-- `floor((4*n-2)/a(n-1))` -/
def P12133848455913945660.Spec : Prop :=
  ∀ n, P12133848455913945660.a n = A266256 n

end A266256

/-! ## A266256.P14607114778230401

`C(2*n, gcd(2, a(n-1)))/n` with `a(0)=1, a(1)=1`
-/

namespace A266256.P14607114778230401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.choose (2 * n) (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1)))) : ℚ) / (n : ℚ)

end

end A266256.P14607114778230401

namespace A266256

/-- `C(2*n, gcd(2, a(n-1)))/n` -/
def P14607114778230401.Spec : Prop :=
  ∀ n, P14607114778230401.a n = (A266256 n : ℚ)

end A266256

/-! ## A266256.P17344463014034708783

`Δ[n²]-∑[8*and(1, n)]%Δ[n²]`
-/

namespace A266256.P17344463014034708783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.land 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

end

end A266256.P17344463014034708783

namespace A266256

/-- `Δ[n²]-∑[8*and(1, n)]%Δ[n²]` -/
def P17344463014034708783.Spec : Prop :=
  ∀ n, P17344463014034708783.a n = A266256 n

end A266256

/-! ## A266256.P15653462023959372817

`a(n-2)+4%a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A266256.P15653462023959372817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  a (n - 2) + 4 % a (n - 2)

end

end A266256.P15653462023959372817

namespace A266256

/-- `a(n-2)+4%a(n-2)` -/
def P15653462023959372817.Spec : Prop :=
  ∀ n, (P15653462023959372817.a n : ℤ) = A266256 n

end A266256

/-! ## A266256.P7591130135856604896

`lcm(2, 2*n+1-a(n-1))/2` with `a(0)=1`
-/

namespace A266256.P7591130135856604896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 2 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) - a (n - 1))) : ℚ) / 2

end

end A266256.P7591130135856604896

namespace A266256

/-- `lcm(2, 2*n+1-a(n-1))/2` -/
def P7591130135856604896.Spec : Prop :=
  ∀ n, P7591130135856604896.a n = (A266256 n : ℚ)

end A266256

/-! ## A266256.P15249381175419669433

`a(n-2)+and(2, a(n-1))²` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A266256.P15249381175419669433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + Nat.land 2 (a (n - 1)) ^ 2

end

end A266256.P15249381175419669433

namespace A266256

/-- `a(n-2)+and(2, a(n-1))²` -/
def P15249381175419669433.Spec : Prop :=
  ∀ n, (P15249381175419669433.a n : ℤ) = A266256 n

end A266256

/-! ## A266256.P3529239228989792605

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266256

/-- `2*a(n-2)-a(n-4)` -/
def P3529239228989792605.Spec : Prop :=
  ∀ n, P3529239228989792605.a n = A266256 n

theorem P3529239228989792605.correct : P3529239228989792605.Spec := by
  intro n
  simp only [A266256]

end A266256

/-! ## A266256.P11207965818241382540

`floor(a(n-2)+(4/a(n-1))²)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A266256.P11207965818241382540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) + (4 / (a (n - 1) : ℚ)) ^ 2⌋

end

end A266256.P11207965818241382540

namespace A266256

/-- `floor(a(n-2)+(4/a(n-1))²)` -/
def P11207965818241382540.Spec : Prop :=
  ∀ n, P11207965818241382540.a n = A266256 n

end A266256

/-! ## A266256.P4129925928975660513

`n+1-Δ[n-1-and(n-1, a(n-1))]` with `a(0)=0`
-/

namespace A266256.P4129925928975660513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 1 - Int.land ((n : ℤ) - 1) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A266256.P4129925928975660513

namespace A266256

/-- `n+1-Δ[n-1-and(n-1, a(n-1))]` -/
def P4129925928975660513.Spec : Prop :=
  ∀ n, P4129925928975660513.a n = A266256 n

end A266256

/-! ## A266256.P11467329615779674851

`a(n-2)+a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=2`
-/

namespace A266256.P11467329615779674851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5, 2] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 4))

end

end A266256.P11467329615779674851

namespace A266256

/-- `a(n-2)+a(n-2)-a(n-4)` -/
def P11467329615779674851.Spec : Prop :=
  ∀ n, P11467329615779674851.a n = A266256 n

theorem P11467329615779674851.correct : P11467329615779674851.Spec := by
  intro n
  simp only [A266256, Nat.add_sub_cancel, A266256.P11467329615779674851.a, A266256.P3529239228989792605.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A266256

/-! ## A266256.P5944596366741872458

`A266722(n)-and(1, n)`
-/

namespace A266256.P5944596366741872458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n - (Nat.land 1 n : ℤ)

end

end A266256.P5944596366741872458

namespace A266256

/-- `A266722(n)-and(1, n)` -/
def P5944596366741872458.Spec : Prop :=
  ∀ n, P5944596366741872458.a n = A266256 n

end A266256

/-! ## A266256.P10924000208443788680

`Δ[n²]-A266258(n)`
-/

namespace A266256.P10924000208443788680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266258 n

end

end A266256.P10924000208443788680

namespace A266256

/-- `Δ[n²]-A266258(n)` -/
def P10924000208443788680.Spec : Prop :=
  ∀ n, P10924000208443788680.a n = A266256 n

end A266256

/-! ## A266256.P2708754864354817685

`A266662(n*floor(atan(n)))`
-/

namespace A266256.P2708754864354817685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 ((n : ℤ) * ⌊Real.arctan (n : ℝ)⌋).toNat

end

end A266256.P2708754864354817685

namespace A266256

/-- `A266662(n*floor(atan(n)))` -/
def P2708754864354817685.Spec : Prop :=
  ∀ n, P2708754864354817685.a n = A266256 n

end A266256

/-!
# A266257: Total number of ON (black) cells after n iterations of the "Rule 11" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266257, the canonical program `A266257.P8456821887197501288` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266257 has offset 0).

The definition of A266257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266257.P2129286309380710163

`∑[n]+n^(n%2)`
-/

namespace A266257.P2129286309380710163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ (n % 2)

end

end A266257.P2129286309380710163

namespace A266257

/-- `∑[n]+n^(n%2)` -/
def P2129286309380710163.Spec : Prop :=
  ∀ n, (P2129286309380710163.a n : ℤ) = A266257 n

end A266257

/-! ## A266257.P12433636706502125538

`∑[n]+n^and(1, n)`
-/

namespace A266257.P12433636706502125538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ Nat.land 1 n

end

end A266257.P12433636706502125538

namespace A266257

/-- `∑[n]+n^and(1, n)` -/
def P12433636706502125538.Spec : Prop :=
  ∀ n, (P12433636706502125538.a n : ℤ) = A266257 n

end A266257

/-! ## A266257.P365686827183608014

`∑[n]+gcd(n, or(1, n))`
-/

namespace A266257.P365686827183608014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd n (Nat.lor 1 n)

end

end A266257.P365686827183608014

namespace A266257

/-- `∑[n]+gcd(n, or(1, n))` -/
def P365686827183608014.Spec : Prop :=
  ∀ n, (P365686827183608014.a n : ℤ) = A266257 n

end A266257

/-! ## A266257.P18174878621540219852

`∑[n]+C(n, and(1, n))`
-/

namespace A266257.P18174878621540219852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n (Nat.land 1 n)

end

end A266257.P18174878621540219852

namespace A266257

/-- `∑[n]+C(n, and(1, n))` -/
def P18174878621540219852.Spec : Prop :=
  ∀ n, (P18174878621540219852.a n : ℤ) = A266257 n

end A266257

/-! ## A266257.P13922610437533542080

`∑[xor(1, n)]+lcm(2, n)-n`
-/

namespace A266257.P13922610437533542080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm 2 n : ℕ) : ℤ) - (n : ℤ)

end

end A266257.P13922610437533542080

namespace A266257

/-- `∑[xor(1, n)]+lcm(2, n)-n` -/
def P13922610437533542080.Spec : Prop :=
  ∀ n, P13922610437533542080.a n = A266257 n

end A266257

/-! ## A266257.P8480695583993234044

`C(n, and(1, n))+C(n+1, 2)`
-/

namespace A266257.P8480695583993234044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 n) + Nat.choose (n + 1) 2

end

end A266257.P8480695583993234044

namespace A266257

/-- `C(n, and(1, n))+C(n+1, 2)` -/
def P8480695583993234044.Spec : Prop :=
  ∀ n, (P8480695583993234044.a n : ℤ) = A266257 n

end A266257

/-! ## A266257.P7664931782107442750

`floor(∑[n]²/a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A266257.P7664931782107442750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A266257.P7664931782107442750

namespace A266257

/-- `floor(∑[n]²/a(n-1))` -/
def P7664931782107442750.Spec : Prop :=
  ∀ n, P7664931782107442750.a n = A266257 n

end A266257

/-! ## A266257.P1253513590411623480

`floor(∑[n+1]-n^(-1)^n)`
-/

namespace A266257.P1253513590411623480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n : ℚ) ^ ((-1) ^ n : ℤ)⌋

end

end A266257.P1253513590411623480

namespace A266257

/-- `floor(∑[n+1]-n^(-1)^n)` -/
def P1253513590411623480.Spec : Prop :=
  ∀ n, P1253513590411623480.a n = A266257 n

end A266257

/-! ## A266257.P16098574479620738549

`∑[xor(2, a(n-2))+2]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A266257.P16098574479620738549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  Nat.xor 2 (f1 (n - 2)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266257.P16098574479620738549

namespace A266257

/-- `∑[xor(2, a(n-2))+2]` -/
def P16098574479620738549.Spec : Prop :=
  ∀ n, (P16098574479620738549.a n : ℤ) = A266257 n

end A266257

/-! ## A266257.P12654022329054555512

`∑[n+1]-C(n, (n+1)%2)`
-/

namespace A266257.P12654022329054555512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n ((n + 1) % 2) : ℤ)

end

end A266257.P12654022329054555512

namespace A266257

/-- `∑[n+1]-C(n, (n+1)%2)` -/
def P12654022329054555512.Spec : Prop :=
  ∀ n, P12654022329054555512.a n = A266257 n

end A266257

/-! ## A266257.P12180177944396735871

`∑[n+1]-xor(1, n+1)%(n+1)`
-/

namespace A266257.P12180177944396735871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((Nat.xor 1 (n + 1) % (n + 1) : ℕ) : ℤ)

end

end A266257.P12180177944396735871

namespace A266257

/-- `∑[n+1]-xor(1, n+1)%(n+1)` -/
def P12180177944396735871.Spec : Prop :=
  ∀ n, P12180177944396735871.a n = A266257 n

end A266257

/-! ## A266257.P16624805728671707388

`and(1, n)+∑[2*n]-a(n-1)` with `a(0)=1`
-/

namespace A266257.P16624805728671707388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 1 n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1))

end

end A266257.P16624805728671707388

namespace A266257

/-- `and(1, n)+∑[2*n]-a(n-1)` -/
def P16624805728671707388.Spec : Prop :=
  ∀ n, P16624805728671707388.a n = A266257 n

end A266257

/-! ## A266257.P12343445270451316328

`and(1, n)-(a(n-1)-∑[2*n])` with `a(0)=1`
-/

namespace A266257.P12343445270451316328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 1 n : ℤ) - (a (n - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A266257.P12343445270451316328

namespace A266257

/-- `and(1, n)-(a(n-1)-∑[2*n])` -/
def P12343445270451316328.Spec : Prop :=
  ∀ n, P12343445270451316328.a n = A266257 n

end A266257

/-! ## A266257.P306657482000496385

`∑[a(n-2)+4%a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A266257.P306657482000496385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 5] fun n f1 =>
  f1 (n - 2) + 4 % f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266257.P306657482000496385

namespace A266257

/-- `∑[a(n-2)+4%a(n-2)]` -/
def P306657482000496385.Spec : Prop :=
  ∀ n, (P306657482000496385.a n : ℤ) = A266257 n

end A266257

/-! ## A266257.P8456821887197501288

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9, a(4)=11`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266257

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8456821887197501288.Spec : Prop :=
  ∀ n, P8456821887197501288.a n = A266257 n

theorem P8456821887197501288.correct : P8456821887197501288.Spec := by
  intro n
  simp only [A266257]

end A266257

/-! ## A266257.P16094378104150815077

`∑[A266256(n)]`
-/

namespace A266257.P16094378104150815077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266257.P16094378104150815077

namespace A266257

/-- `∑[A266256(n)]` -/
def P16094378104150815077.Spec : Prop :=
  ∀ n, P16094378104150815077.a n = A266257 n

end A266257

/-! ## A266257.P10015995786815123694

`A128918(n)+n`
-/

namespace A266257.P10015995786815123694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128918 n + (n : ℤ)

end

end A266257.P10015995786815123694

namespace A266257

/-- `A128918(n)+n` -/
def P10015995786815123694.Spec : Prop :=
  ∀ n, P10015995786815123694.a n = A266257 n

end A266257

/-! ## A266257.P11385838687435753090

`A267353(n)-n`
-/

namespace A266257.P11385838687435753090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267353 n - (n : ℤ)

end

end A266257.P11385838687435753090

namespace A266257

/-- `A267353(n)-n` -/
def P11385838687435753090.Spec : Prop :=
  ∀ n, P11385838687435753090.a n = A266257 n

end A266257

/-! ## A266257.P17682340117586008269

`A093178(n)+∑[n]`
-/

namespace A266257.P17682340117586008269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A266257.P17682340117586008269

namespace A266257

/-- `A093178(n)+∑[n]` -/
def P17682340117586008269.Spec : Prop :=
  ∀ n, P17682340117586008269.a n = A266257 n

end A266257

/-! ## A266257.P1340755526511715207

`∑[A265722(n)]+n`
-/

namespace A266257.P1340755526511715207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A266257.P1340755526511715207

namespace A266257

/-- `∑[A265722(n)]+n` -/
def P1340755526511715207.Spec : Prop :=
  ∀ n, P1340755526511715207.a n = A266257 n

end A266257

/-!
# A266258: Number of OFF (white) cells in the n-th iteration of the "Rule 11" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266258, the canonical program `A266258.P877769324909583936` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266258 has offset 0).

The definition of A266258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266258.P1141550178641537727

`Δ[xor(1, n²)]%Δ[n²]`
-/

namespace A266258.P1141550178641537727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A266258.P1141550178641537727

namespace A266258

/-- `Δ[xor(1, n²)]%Δ[n²]` -/
def P1141550178641537727.Spec : Prop :=
  ∀ n, P1141550178641537727.a n = A266258 n

end A266258

/-! ## A266258.P4274217233889208914

`∑[8*and(1, n)]%Δ[n²]`
-/

namespace A266258.P4274217233889208914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A266258.P4274217233889208914

namespace A266258

/-- `∑[8*and(1, n)]%Δ[n²]` -/
def P4274217233889208914.Spec : Prop :=
  ∀ n, P4274217233889208914.a n = A266258 n

end A266258

/-! ## A266258.P587187895060591031

`(8*round(n/2))%comp[2*n]`
-/

namespace A266258.P587187895060591031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (8 * SequenceMachineLib.roundAway ((n : ℚ) / 2)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A266258.P587187895060591031

namespace A266258

/-- `(8*round(n/2))%comp[2*n]` -/
def P587187895060591031.Spec : Prop :=
  ∀ n, P587187895060591031.a n = A266258 n

end A266258

/-! ## A266258.P9698634777034399189

`xor(1, 2*n-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A266258.P9698634777034399189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  Int.xor 1 ((2 * n : ℤ) - a (n - 1))

end

end A266258.P9698634777034399189

namespace A266258

/-- `xor(1, 2*n-a(n-1))` -/
def P9698634777034399189.Spec : Prop :=
  ∀ n, P9698634777034399189.a n = A266258 n

end A266258

/-! ## A266258.P423989130093904336

`gcd(a(n-2)+4, a(n%2))` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A266258.P423989130093904336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  Nat.gcd (a (n - 2) + 4) (a (n % 2))

end

end A266258.P423989130093904336

namespace A266258

/-- `gcd(a(n-2)+4, a(n%2))` -/
def P423989130093904336.Spec : Prop :=
  ∀ n, (P423989130093904336.a n : ℤ) = A266258 n

end A266258

/-! ## A266258.P17446063199545342430

`C(2*n, gcd(2, a(n-1)))/n` with `a(0)=0, a(1)=2`
-/

namespace A266258.P17446063199545342430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (Nat.choose (2 * n) (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1)))) : ℚ) / (n : ℚ)

end

end A266258.P17446063199545342430

namespace A266258

/-- `C(2*n, gcd(2, a(n-1)))/n` -/
def P17446063199545342430.Spec : Prop :=
  ∀ n, P17446063199545342430.a n = (A266258 n : ℚ)

end A266258

/-! ## A266258.P2132878689094190284

`a(n-2)+4*(n+1)%2` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A266258.P2132878689094190284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  a (n - 2) + 4 * ((n + 1) % 2)

end

end A266258.P2132878689094190284

namespace A266258

/-- `a(n-2)+4*(n+1)%2` -/
def P2132878689094190284.Spec : Prop :=
  ∀ n, (P2132878689094190284.a n : ℤ) = A266258 n

end A266258

/-! ## A266258.P12867280168362062781

`and(2*n+1, -3)-a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A266258.P12867280168362062781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  Int.land (2 * n + 1 : ℤ) (-3) - a (n - 1)

end

end A266258.P12867280168362062781

namespace A266258

/-- `and(2*n+1, -3)-a(n-1)` -/
def P12867280168362062781.Spec : Prop :=
  ∀ n, P12867280168362062781.a n = A266258 n

end A266258

/-! ## A266258.P7056414920078225804

`a(n-2)+(2%a(n-2))²` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A266258.P7056414920078225804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  a (n - 2) + (2 % a (n - 2)) ^ 2

end

end A266258.P7056414920078225804

namespace A266258

/-- `a(n-2)+(2%a(n-2))²` -/
def P7056414920078225804.Spec : Prop :=
  ∀ n, (P7056414920078225804.a n : ℤ) = A266258 n

end A266258

/-! ## A266258.P877769324909583936

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=2, a(4)=7`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266258

/-- `2*a(n-2)-a(n-4)` -/
def P877769324909583936.Spec : Prop :=
  ∀ n, P877769324909583936.a n = A266258 n

theorem P877769324909583936.correct : P877769324909583936.Spec := by
  intro n
  simp only [A266258]

end A266258

/-! ## A266258.P2376141513470876880

`a(n-2)+4%(a(n-2)+2)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A266258.P2376141513470876880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  a (n - 2) + 4 % (a (n - 2) + 2)

end

end A266258.P2376141513470876880

namespace A266258

/-- `a(n-2)+4%(a(n-2)+2)` -/
def P2376141513470876880.Spec : Prop :=
  ∀ n, (P2376141513470876880.a n : ℤ) = A266258 n

end A266258

/-! ## A266258.P5060872877270904017

`∑[gcd(5, a(n-2))]-(a(n-1)+n)` with `a(0)=0, a(1)=2`
-/

namespace A266258.P5060872877270904017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.gcd 5 (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + (n : ℤ))

end

end A266258.P5060872877270904017

namespace A266258

/-- `∑[gcd(5, a(n-2))]-(a(n-1)+n)` -/
def P5060872877270904017.Spec : Prop :=
  ∀ n, P5060872877270904017.a n = A266258 n

end A266258

/-! ## A266258.P12110546528005907732

`Δ[n-1-and(n-1, a(n-1))]+n` with `a(0)=0`
-/

namespace A266258.P12110546528005907732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 1 - Int.land ((n : ℤ) - 1) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A266258.P12110546528005907732

namespace A266258

/-- `Δ[n-1-and(n-1, a(n-1))]+n` -/
def P12110546528005907732.Spec : Prop :=
  ∀ n, P12110546528005907732.a n = A266258 n

end A266258

/-! ## A266258.P10308553765806585566

`A266724(n)+and(1, n)`
-/

namespace A266258.P10308553765806585566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n + (Nat.land 1 n : ℤ)

end

end A266258.P10308553765806585566

namespace A266258

/-- `A266724(n)+and(1, n)` -/
def P10308553765806585566.Spec : Prop :=
  ∀ n, P10308553765806585566.a n = A266258 n

end A266258

/-! ## A266258.P11374964863024136316

`Δ[n²]-A266256(n)`
-/

namespace A266258.P11374964863024136316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266256 n

end

end A266258.P11374964863024136316

namespace A266258

/-- `Δ[n²]-A266256(n)` -/
def P11374964863024136316.Spec : Prop :=
  ∀ n, P11374964863024136316.a n = A266258 n

end A266258

/-! ## A266258.P10205354898102141571

`A137501(n)+A014681(n)`
-/

namespace A266258.P10205354898102141571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137501 n + A014681 n

end

end A266258.P10205354898102141571

namespace A266258

/-- `A137501(n)+A014681(n)` -/
def P10205354898102141571.Spec : Prop :=
  ∀ n, P10205354898102141571.a n = A266258 n

end A266258

/-! ## A266258.P10788348177711999627

`A266724(n)+A000035(n)`
-/

namespace A266258.P10788348177711999627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n + A000035 n

end

end A266258.P10788348177711999627

namespace A266258

/-- `A266724(n)+A000035(n)` -/
def P10788348177711999627.Spec : Prop :=
  ∀ n, P10788348177711999627.a n = A266258 n

end A266258

/-! ## A266258.P6374222729266396802

`A265723(n)+A057428(n)`
-/

namespace A266258.P6374222729266396802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265723 n + A057428 n

end

end A266258.P6374222729266396802

namespace A266258

/-- `A265723(n)+A057428(n)` -/
def P6374222729266396802.Spec : Prop :=
  ∀ n, P6374222729266396802.a n = A266258 n

end A266258

/-! ## A266258.P2686371253238690952

`A267354(n)+A057427(n)`
-/

namespace A266258.P2686371253238690952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 n + A057427 n

end

end A266258.P2686371253238690952

namespace A266258

/-- `A267354(n)+A057427(n)` -/
def P2686371253238690952.Spec : Prop :=
  ∀ n, P2686371253238690952.a n = A266258 n

end A266258

/-! ## A266258.P13564316988199308948

`A266664(n)+A063524(n)`
-/

namespace A266258.P13564316988199308948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266664 n + A063524 n

end

end A266258.P13564316988199308948

namespace A266258

/-- `A266664(n)+A063524(n)` -/
def P13564316988199308948.Spec : Prop :=
  ∀ n, P13564316988199308948.a n = A266258 n

end A266258

/-!
# A266259: Total number of OFF (white) cells after n iterations of the "Rule 11" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266259, the canonical program `A266259.P5296283903487392283` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266259 has offset 0).

The definition of A266259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266259.P5296283903487392283

`∑[n]+gcd(n, n%2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266259

/-- `∑[n]+gcd(n, n%2)` -/
def P5296283903487392283.Spec : Prop :=
  ∀ n, (P5296283903487392283.a n : ℤ) = A266259 n

theorem P5296283903487392283.correct : P5296283903487392283.Spec := by
  intro n
  simp only [A266259]

end A266259

/-! ## A266259.P9626949841211247734

`∑[n]+ceil(n^(-1)^n)`
-/

namespace A266259.P9626949841211247734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(n : ℚ) ^ ((-1) ^ n : ℤ)⌉

end

end A266259.P9626949841211247734

namespace A266259

/-- `∑[n]+ceil(n^(-1)^n)` -/
def P9626949841211247734.Spec : Prop :=
  ∀ n, P9626949841211247734.a n = A266259 n

end A266259

/-! ## A266259.P12905267276157199886

`∑[∑[8*and(1, n)]%Δ[n²]]`
-/

namespace A266259.P12905267276157199886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.land 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266259.P12905267276157199886

namespace A266259

/-- `∑[∑[8*and(1, n)]%Δ[n²]]` -/
def P12905267276157199886.Spec : Prop :=
  ∀ n, P12905267276157199886.a n = A266259 n

end A266259

/-! ## A266259.P12718757376894415058

`floor(∑[n]²/a(n-1))` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A266259.P12718757376894415058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A266259.P12718757376894415058

namespace A266259

/-- `floor(∑[n]²/a(n-1))` -/
def P12718757376894415058.Spec : Prop :=
  ∀ n, P12718757376894415058.a n = A266259 n

end A266259

/-! ## A266259.P4063973968856100839

`∑[xor(1, 2*n-a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A266259.P4063973968856100839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Int.xor 1 ((2 * n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266259.P4063973968856100839

namespace A266259

/-- `∑[xor(1, 2*n-a(n-1))]` -/
def P4063973968856100839.Spec : Prop :=
  ∀ n, P4063973968856100839.a n = A266259 n

end A266259

/-! ## A266259.P1112921458751593424

`∑[xor(1, n)+n-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A266259.P1112921458751593424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (Nat.xor 1 n + n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266259.P1112921458751593424

namespace A266259

/-- `∑[xor(1, n)+n-a(n-1)]` -/
def P1112921458751593424.Spec : Prop :=
  ∀ n, P1112921458751593424.a n = A266259 n

end A266259

/-! ## A266259.P2019029368010699165

`∑[a(n-2)+(2%a(n-2))²]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A266259.P2019029368010699165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  f1 (n - 2) + (2 % f1 (n - 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266259.P2019029368010699165

namespace A266259

/-- `∑[a(n-2)+(2%a(n-2))²]` -/
def P2019029368010699165.Spec : Prop :=
  ∀ n, (P2019029368010699165.a n : ℤ) = A266259 n

end A266259

/-! ## A266259.P12254859010829218158

`∑[A266258(n)]`
-/

namespace A266259.P12254859010829218158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266259.P12254859010829218158

namespace A266259

/-- `∑[A266258(n)]` -/
def P12254859010829218158.Spec : Prop :=
  ∀ n, P12254859010829218158.a n = A266259 n

end A266259

/-! ## A266259.P2372775348286314779

`∑[2*n+1-A266256(n)]`
-/

namespace A266259.P2372775348286314779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A266256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266259.P2372775348286314779

namespace A266259

/-- `∑[2*n+1-A266256(n)]` -/
def P2372775348286314779.Spec : Prop :=
  ∀ n, P2372775348286314779.a n = A266259 n

end A266259

/-! ## A266259.P1022351305991057334

`A028387(n)%A267353(n)`
-/

namespace A266259.P1022351305991057334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028387 n) (A267353 n)

end

end A266259.P1022351305991057334

namespace A266259

/-- `A028387(n)%A267353(n)` -/
def P1022351305991057334.Spec : Prop :=
  ∀ n, P1022351305991057334.a n = A266259 n

end A266259

/-! ## A266259.P17614556056732266061

`∪[A014106(n)+2, A014106(n)]`
-/

namespace A266259.P17614556056732266061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266259.P17614556056732266061

namespace A266259

/-- `∪[A014106(n)+2, A014106(n)]` -/
def P17614556056732266061.Spec : Prop :=
  ∀ n, (P17614556056732266061.a n : ℤ) = A266259 n

end A266259

/-! ## A266259.P16269797175346547370

`∪[A000096(2*n), A000096(2*n)+2]`
-/

namespace A266259.P16269797175346547370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (2 * n) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266259.P16269797175346547370

namespace A266259

/-- `∪[A000096(2*n), A000096(2*n)+2]` -/
def P16269797175346547370.Spec : Prop :=
  ∀ n, (P16269797175346547370.a n : ℤ) = A266259 n

end A266259

/-! ## A266259.P2482858140251784423

`∪[A266287(2*n), A266287(2*n)+2]`
-/

namespace A266259.P2482858140251784423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266287 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266287 (2 * n) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266259.P2482858140251784423

namespace A266259

/-- `∪[A266287(2*n), A266287(2*n)+2]` -/
def P2482858140251784423.Spec : Prop :=
  ∀ n, (P2482858140251784423.a n : ℤ) = A266259 n

end A266259

/-! ## A266259.P288718663714524283

`∪[A000124(2*n+1), A000124(2*n+1)-2]`
-/

namespace A266259.P288718663714524283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266259.P288718663714524283

namespace A266259

/-- `∪[A000124(2*n+1), A000124(2*n+1)-2]` -/
def P288718663714524283.Spec : Prop :=
  ∀ n, (P288718663714524283.a n : ℤ) = A266259 n

end A266259

/-! ## A266259.P6548238989566891842

`∑[A266249(n+3)-2]`
-/

namespace A266259.P6548238989566891842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266259.P6548238989566891842

namespace A266259

/-- `∑[A266249(n+3)-2]` -/
def P6548238989566891842.Spec : Prop :=
  ∀ n, P6548238989566891842.a n = A266259 n

end A266259

/-! ## A266259.P13300197010059632394

`record[∑[A110091(n+1)]-A110091(2*n+1)]`
-/

namespace A266259.P13300197010059632394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A110091 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266259.P13300197010059632394

namespace A266259

/-- `record[∑[A110091(n+1)]-A110091(2*n+1)]` -/
def P13300197010059632394.Spec : Prop :=
  ∀ n, P13300197010059632394.a n = A266259 n

end A266259

/-! ## A266259.P17274691615360938772

`A286151(A125577(n+1))`
-/

namespace A266259.P17274691615360938772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (A125577 (n + 1)).toNat

end

end A266259.P17274691615360938772

namespace A266259

/-- `A286151(A125577(n+1))` -/
def P17274691615360938772.Spec : Prop :=
  ∀ n, P17274691615360938772.a n = A266259 n

end A266259

/-! ## A266259.P18139111413117440782

`A083920(A265724(n)+1)`
-/

namespace A266259.P18139111413117440782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A265724 n + 1).toNat

end

end A266259.P18139111413117440782

namespace A266259

/-- `A083920(A265724(n)+1)` -/
def P18139111413117440782.Spec : Prop :=
  ∀ n, P18139111413117440782.a n = A266259 n

end A266259

/-! ## A266259.P12214605426236945316

`A309945(A266663(n+1))`
-/

namespace A266259.P12214605426236945316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309945 (A266663 (n + 1)).toNat

end

end A266259.P12214605426236945316

namespace A266259

/-- `A309945(A266663(n+1))` -/
def P12214605426236945316.Spec : Prop :=
  ∀ n, P12214605426236945316.a n = A266259 n

end A266259

/-! ## A266259.P10180599357061702203

`eq[A099509(n), A123185(n)]`
-/

namespace A266259.P10180599357061702203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266259.P10180599357061702203

namespace A266259

/-- `eq[A099509(n), A123185(n)]` -/
def P10180599357061702203.Spec : Prop :=
  ∀ n, (P10180599357061702203.a n : ℤ) = A266259 n

end A266259

/-!
# A266265: Product of products of divisors of divisors of n.

The programs for A266265, the canonical program `A266265.P18011338418643426227` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266265 has offset 1).

The definition of A266265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266265.P8033824084782062714

`∏{d}[n+1, A007955(#)]`
-/

namespace A266265.P8033824084782062714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007955 d

end

end A266265.P8033824084782062714

namespace A266265

/-- `∏{d}[n+1, A007955(#)]` -/
def P8033824084782062714.Spec : Prop :=
  ∀ n, P8033824084782062714.a n = A266265 (n + 1)

end A266265

/-! ## A266265.P12012815739194351378

`∏{d}[n+1, sqrt(A062758(#))]`
-/

namespace A266265.P12012815739194351378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Real.sqrt (A062758 d : ℝ)

end

end A266265.P12012815739194351378

namespace A266265

/-- `∏{d}[n+1, sqrt(A062758(#))]` -/
def P12012815739194351378.Spec : Prop :=
  ∀ n, P12012815739194351378.a n = (A266265 (n + 1) : ℝ)

end A266265

/-! ## A266265.P18011338418643426227

`(n+1)^(A007425(n+1)/3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266265

/-- `(n+1)^(A007425(n+1)/3)` -/
def P18011338418643426227.Spec : Prop :=
  ∀ n, P18011338418643426227.a n = (A266265 (n + 1) : ℝ)

end A266265

/-! ## A266265.P635190715580213771

`∏{d}[n+1, #^(A000005(#)/2)]`
-/

namespace A266265.P635190715580213771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((A000005 d : ℚ) / 2 : ℝ)

end

end A266265.P635190715580213771

namespace A266265

/-- `∏{d}[n+1, #^(A000005(#)/2)]` -/
def P635190715580213771.Spec : Prop :=
  ∀ n, P635190715580213771.a n = (A266265 (n + 1) : ℝ)

end A266265

/-! ## A266265.P16659481947769142406

`A007955(n+1)*A322672(n+1)`
-/

namespace A266265.P16659481947769142406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A322672 (n + 1)

end

end A266265.P16659481947769142406

namespace A266265

/-- `A007955(n+1)*A322672(n+1)` -/
def P16659481947769142406.Spec : Prop :=
  ∀ n, P16659481947769142406.a n = A266265 (n + 1)

end A266265

/-! ## A266265.P2488326037259896894

`A307101(n+1)/A211776(n+1)`
-/

namespace A266265.P2488326037259896894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307101 (n + 1) : ℚ) / (A211776 (n + 1) : ℚ)

end

end A266265.P2488326037259896894

namespace A266265

/-- `A307101(n+1)/A211776(n+1)` -/
def P2488326037259896894.Spec : Prop :=
  ∀ n, P2488326037259896894.a n = (A266265 (n + 1) : ℚ)

end A266265

/-! ## A266265.P12925967538626840946

`A211776(n+1)*A323760(n+1)/A323761(n+1)`
-/

namespace A266265.P12925967538626840946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) * A323760 (n + 1) : ℚ) / (A323761 (n + 1) : ℚ)

end

end A266265.P12925967538626840946

namespace A266265

/-- `A211776(n+1)*A323760(n+1)/A323761(n+1)` -/
def P12925967538626840946.Spec : Prop :=
  ∀ n, P12925967538626840946.a n = (A266265 (n + 1) : ℚ)

end A266265

/-! ## A266265.P216104355716121608

`A324981(n+1)/A007955(n+1)`
-/

namespace A266265.P216104355716121608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324981 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A266265.P216104355716121608

namespace A266265

/-- `A324981(n+1)/A007955(n+1)` -/
def P216104355716121608.Spec : Prop :=
  ∀ n, P216104355716121608.a n = (A266265 (n + 1) : ℚ)

end A266265

/-! ## A266265.P16285923392677916161

`A325030(n+1)/A206032(n+1)`
-/

namespace A266265.P16285923392677916161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (A206032 (n + 1) : ℚ)

end

end A266265.P16285923392677916161

namespace A266265

/-- `A325030(n+1)/A206032(n+1)` -/
def P16285923392677916161.Spec : Prop :=
  ∀ n, P16285923392677916161.a n = (A266265 (n + 1) : ℚ)

end A266265

/-!
# A266266: Primes p such that p-1 = phi(p) = k*phi(p-k) for some number 1 <= k < p-1.

The programs for A266266, there is no canonical definition to state claims against.
-/

/-! ## A266266.P6173004885412412918

`p?[A266267(n+1)]`
-/

namespace A266266.P6173004885412412918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266266.P6173004885412412918

/-! ## A266266.P10881151984594485595

`record[p?[A266267(A025425(n))]]`
-/

namespace A266266.P10881151984594485595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266267 (A025425 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266266.P10881151984594485595

/-! ## A266266.P10034761935777546608

`p?[record[A266267(A106466(n))]]`
-/

namespace A266266.P10034761935777546608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266267 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266266.P10034761935777546608

/-! ## A266266.P17450281985507946276

`p?[record[A266267(A236858(n))]]`
-/

namespace A266266.P17450281985507946276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266267 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266266.P17450281985507946276

/-! ## A266266.P15391773293973098624

`record[A006530(A266267(n+2))]`
-/

namespace A266266.P15391773293973098624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A266267 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266266.P15391773293973098624

/-!
# A266267: Numbers m such that phi(m) = k*phi(m-k) for some number 1 <= k < m - 2.

The programs for A266267, there is no canonical definition to state claims against.
-/

/-! ## A266267.P13154216420717435992

`A196036(A330927(n+1)+1)`
-/

namespace A266267.P13154216420717435992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196036 (A330927 (n + 1) + 1).toNat

end

end A266267.P13154216420717435992

/-! ## A266267.P4415434897536133404

`eq[A008676(A048680(n)), A327778(n)]`
-/

namespace A266267.P4415434897536133404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A048680 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266267.P4415434897536133404

/-!
# A266268: Numbers n such that phi(n) = 3*phi(n-1).

The programs for A266268, there is no canonical definition to state claims against.
-/

/-! ## A266268.P16017017406582422119

`A067143(n+1)+1`
-/

namespace A266268.P16017017406582422119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067143 (n + 1) + 1

end

end A266268.P16017017406582422119

/-! ## A266268.P13492894901609728985

`or(1, A067143(n-log2(1/2)))`
-/

namespace A266268.P13492894901609728985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A067143 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A266268.P13492894901609728985

/-! ## A266268.P7028464067720366629

`xor(A000045(((-1)^n)²), A067143(n-log2(1/2)))`
-/

namespace A266268.P7028464067720366629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 (((-1) ^ n) ^ 2).toNat) (A067143 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A266268.P7028464067720366629

/-! ## A266268.P2750604801224216353

`xor(A033999(n)², A067143(A328399(2*n)))`
-/

namespace A266268.P2750604801224216353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A067143 (A328399 (2 * n)).toNat)

end

end A266268.P2750604801224216353

/-! ## A266268.P13559452479958769882

`xor(A033999(2*n), A067143(A328399(2*n)))`
-/

namespace A266268.P13559452479958769882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 (2 * n)) (A067143 (A328399 (2 * n)).toNat)

end

end A266268.P13559452479958769882

/-!
# A266269: a(n) is the smallest number k such that phi(k) >= n*phi(k-1).

The programs for A266269, there is no canonical definition to state claims against.
-/

/-! ## A266269.P8800502430626654939

`A091439(n+1)+1`
-/

namespace A266269.P8800502430626654939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091439 (n + 1) + 1

end

end A266269.P8800502430626654939

/-! ## A266269.P15092405838332393977

`A034386(A091440(n+1))+1`
-/

namespace A266269.P15092405838332393977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A091440 (n + 1)).toNat + 1

end

end A266269.P15092405838332393977

/-!
# A266278: Number of legal Go positions on a 2 X n board.

The programs for A266278, there is no canonical definition to state claims against.
-/

/-! ## A266278.P14817029901110060900

`A356049(∑[n+1]+2)`
-/

namespace A266278.P14817029901110060900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356049 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A266278.P14817029901110060900

/-! ## A266278.P1678152414727977506

`record[A356049(A286237(n+1)+1)]`
-/

namespace A266278.P1678152414727977506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356049 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266278.P1678152414727977506

/-! ## A266278.P16057516421231320019

`record[root(A356049(n+2), A356045(n+1))]`
-/

namespace A266278.P16057516421231320019
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A356049 (n + 2) : ℝ) ^ (1 / (A356045 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266278.P16057516421231320019

/-! ## A266278.P1356734287308891498

`A356134(∑[n]+2)`
-/

namespace A266278.P1356734287308891498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356134 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A266278.P1356734287308891498

/-! ## A266278.P6231422618962458432

`or(1, A356134(A089071(n+2)))`
-/

namespace A266278.P6231422618962458432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A356134 (A089071 (n + 2)).toNat)

end

end A266278.P6231422618962458432

/-!
# A266279: Nonnegative integers where all occurring digits occur with equal frequency.

The programs for A266279, there is no canonical definition to state claims against.
-/

/-! ## A266279.P14000048869469799308

`A003285(A196222(n))+n`
-/

namespace A266279.P14000048869469799308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A196222 n).toNat + (n : ℤ)

end

end A266279.P14000048869469799308

/-! ## A266279.P16128123815736572860

`A083896(A196222(n)²)+n`
-/

namespace A266279.P16128123815736572860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A196222 n ^ 2).toNat + (n : ℤ)

end

end A266279.P16128123815736572860

/-! ## A266279.P14854607929580926894

`A221469(A196222(n)²)+n`
-/

namespace A266279.P14854607929580926894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (A196222 n ^ 2).toNat + (n : ℤ)

end

end A266279.P14854607929580926894

/-! ## A266279.P11291221664073122636

`lt[A035676(n+1), A214262(n+1)]-n`
-/

namespace A266279.P11291221664073122636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A266279.P11291221664073122636

/-! ## A266279.P2252626892782858952

`A005843(n)+A060277(A196222(n))-n`
-/

namespace A266279.P2252626892782858952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A060277 (A196222 n).toNat - (n : ℤ))

end

end A266279.P2252626892782858952

/-! ## A266279.P13294696946374605938

`A060277(A196222(n))+gcd(n, A052787(n))`
-/

namespace A266279.P13294696946374605938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060277 (A196222 n).toNat + (Int.gcd (n : ℤ) (A052787 n) : ℤ)

end

end A266279.P13294696946374605938

/-! ## A266279.P14591379845600974229

`A196279(A196222(n))+A028242(2*(n+1))`
-/

namespace A266279.P14591379845600974229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196279 (A196222 n).toNat + A028242 (2 * (n + 1))

end

end A266279.P14591379845600974229

/-! ## A266279.P6206804202833534583

`A276502(n+1)+A217928(n+1)-∑{digits}[A045918(n+1), #]+n`
-/

namespace A266279.P6206804202833534583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (n + 1) + A217928 (n + 1) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)

end

end A266279.P6206804202833534583

/-!
# A266282: Triangle read by rows giving successive states of cellular automaton generated by "Rule 13" initiated with a single ON (black) cell.

The programs for A266282, the canonical program `A266282.P9763437976714295326` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266282 has offset 0).

The definition of A266282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266282.P9763437976714295326

`A266978(n)*A267704(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A266282

/-- `A266978(n)*A267704(n)` -/
def P9763437976714295326.Spec : Prop :=
  ∀ n, P9763437976714295326.a n = A266282 n

theorem P9763437976714295326.correct : P9763437976714295326.Spec := by
  intro n
  simp only [A266282]

end A266282

/-! ## A266282.P5055770056553818678

`A266978(n)*A267814(n)`
-/

namespace A266282.P5055770056553818678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266978 n * A267814 n

end

end A266282.P5055770056553818678

namespace A266282

/-- `A266978(n)*A267814(n)` -/
def P5055770056553818678.Spec : Prop :=
  ∀ n, P5055770056553818678.a n = A266282 n

end A266282

/-! ## A266282.P7260586818895214488

`and(A062557(n), A266978(n))`
-/

namespace A266282.P7260586818895214488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062557 n) (A266978 n)

end

end A266282.P7260586818895214488

namespace A266282

/-- `and(A062557(n), A266978(n))` -/
def P7260586818895214488.Spec : Prop :=
  ∀ n, P7260586818895214488.a n = A266282 n

end A266282

/-! ## A266282.P6935290451381807736

`A266840(A020703(n+1)-1)`
-/

namespace A266282.P6935290451381807736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266840 (A020703 (n + 1) - 1).toNat

end

end A266282.P6935290451381807736

namespace A266282

/-- `A266840(A020703(n+1)-1)` -/
def P6935290451381807736.Spec : Prop :=
  ∀ n, P6935290451381807736.a n = A266282 n

end A266282

/-! ## A266282.P3408616175029658977

`and(A207629(n+1), A266978(n))`
-/

namespace A266282.P3408616175029658977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A207629 (n + 1)) (A266978 n)

end

end A266282.P3408616175029658977

namespace A266282

/-- `and(A207629(n+1), A266978(n))` -/
def P3408616175029658977.Spec : Prop :=
  ∀ n, P3408616175029658977.a n = A266282 n

end A266282

/-! ## A266282.P15855769972581210853

`A266840(A020703(n+2))`
-/

namespace A266282.P15855769972581210853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266840 (A020703 (n + 2)).toNat

end

end A266282.P15855769972581210853

namespace A266282

/-- `A266840(A020703(n+2))` -/
def P15855769972581210853.Spec : Prop :=
  ∀ n, P15855769972581210853.a n = A266282 n

end A266282

/-! ## A266282.P8304478315648133599

`A274923(A000034(n+1)+Δ[A274923(n+2)]+1)`
-/

namespace A266282.P8304478315648133599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A000034 (n + 1) + (f1 (n + 1) - f1 n) + 1).toNat

end

end A266282.P8304478315648133599

namespace A266282

/-- `A274923(A000034(n+1)+Δ[A274923(n+2)]+1)` -/
def P8304478315648133599.Spec : Prop :=
  ∀ n, P8304478315648133599.a n = A266282 n

end A266282

/-! ## A266282.P300772185145372169

`A071415(n+3)%2`
-/

namespace A266282.P300772185145372169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071415 (n + 3)) 2

end

end A266282.P300772185145372169

namespace A266282

/-- `A071415(n+3)%2` -/
def P300772185145372169.Spec : Prop :=
  ∀ n, P300772185145372169.a n = A266282 n

end A266282

/-! ## A266282.P12985747571524843887

`A266840(A090925(n+1)+1)`
-/

namespace A266282.P12985747571524843887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266840 (A090925 (n + 1) + 1).toNat

end

end A266282.P12985747571524843887

namespace A266282

/-- `A266840(A090925(n+1)+1)` -/
def P12985747571524843887.Spec : Prop :=
  ∀ n, P12985747571524843887.a n = A266282 n

end A266282

/-! ## A266282.P445464164619675596

`A266840(A090925(n+2))`
-/

namespace A266282.P445464164619675596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266840 (A090925 (n + 2)).toNat

end

end A266282.P445464164619675596

namespace A266282

/-- `A266840(A090925(n+2))` -/
def P445464164619675596.Spec : Prop :=
  ∀ n, P445464164619675596.a n = A266282 n

end A266282

/-!
# A266283: Binary representation of the n-th iteration of the "Rule 13" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266283, there is no canonical definition to state claims against.
-/

/-! ## A266283.P15090062529798948880

`A007088(A266284(n))`
-/

namespace A266283.P15090062529798948880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266284 n).toNat

end

end A266283.P15090062529798948880

/-! ## A266283.P12856301620183959874

`A007088(and(A266980(n), A267816(n)))`
-/

namespace A266283.P12856301620183959874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266980 n) (A267816 n)).toNat

end

end A266283.P12856301620183959874

/-! ## A266283.P9971157041146983116

`A007088(and(-A048578(n), A266980(n)))`
-/

namespace A266283.P9971157041146983116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A048578 n) (A266980 n)).toNat

end

end A266283.P9971157041146983116

/-! ## A266283.P1122427179540049492

`A007088(and(A266980(n+2), A266980(n)))`
-/

namespace A266283.P1122427179540049492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266980 (n + 2)) (A266980 n)).toNat

end

end A266283.P1122427179540049492

/-!
# A266284: Decimal representation of the n-th iteration of the "Rule 13" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266284, the canonical program `A266284.P1267948026619733313` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266284 has offset 0).

The definition of A266284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266284.P9319751785762230729

`xor(A002450(A110654(n)), A266516(n))`
-/

namespace A266284.P9319751785762230729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002450 (A110654 n).toNat) (A266516 n)

end

end A266284.P9319751785762230729

namespace A266284

/-- `xor(A002450(A110654(n)), A266516(n))` -/
def P9319751785762230729.Spec : Prop :=
  ∀ n, P9319751785762230729.a n = A266284 n

end A266284

/-! ## A266284.P1267948026619733313

`A266980(n)-Δ[A266980(A052928(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A266284

/-- `A266980(n)-Δ[A266980(A052928(n))]` -/
def P1267948026619733313.Spec : Prop :=
  ∀ n, P1267948026619733313.a n = A266284 n

theorem P1267948026619733313.correct : P1267948026619733313.Spec := by
  intro n
  simp only [A266284]

end A266284

/-! ## A266284.P3281982174349295678

`and(A266980(n), A267816(n))`
-/

namespace A266284.P3281982174349295678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266980 n) (A267816 n)

end

end A266284.P3281982174349295678

namespace A266284

/-- `and(A266980(n), A267816(n))` -/
def P3281982174349295678.Spec : Prop :=
  ∀ n, P3281982174349295678.a n = A266284 n

end A266284

/-! ## A266284.P9426871457028211446

`and(A266980(n), A288828(2*n+1))`
-/

namespace A266284.P9426871457028211446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266980 n) (A288828 (2 * n + 1))

end

end A266284.P9426871457028211446

namespace A266284

/-- `and(A266980(n), A288828(2*n+1))` -/
def P9426871457028211446.Spec : Prop :=
  ∀ n, P9426871457028211446.a n = A266284 n

end A266284

/-! ## A266284.P11577836117903772137

`or(A266980(n+1), A266980(n))-A266980(n+1)`
-/

namespace A266284.P11577836117903772137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266980 (n + 1)) (A266980 n) - A266980 (n + 1)

end

end A266284.P11577836117903772137

namespace A266284

/-- `or(A266980(n+1), A266980(n))-A266980(n+1)` -/
def P11577836117903772137.Spec : Prop :=
  ∀ n, P11577836117903772137.a n = A266284 n

end A266284

/-! ## A266284.P10973047585253512963

`and(A266980(n+2), A266980(n))`
-/

namespace A266284.P10973047585253512963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266980 (n + 2)) (A266980 n)

end

end A266284.P10973047585253512963

namespace A266284

/-- `and(A266980(n+2), A266980(n))` -/
def P10973047585253512963.Spec : Prop :=
  ∀ n, P10973047585253512963.a n = A266284 n

end A266284

/-!
# A266285: Number of ON (black) cells in the n-th iteration of the "Rule 13" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266285, the canonical program `A266285.P10007645450024047043` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266285 has offset 0).

The definition of A266285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266285.P10007645450024047043

`Δ[gcd(n, floor(n/2))]+n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266285

/-- `Δ[gcd(n, floor(n/2))]+n` -/
def P10007645450024047043.Spec : Prop :=
  ∀ n, P10007645450024047043.a n = A266285 n

theorem P10007645450024047043.correct : P10007645450024047043.Spec := by
  intro n
  simp only [A266285]

end A266285

/-! ## A266285.P2365789318696010840

`floor(n/2)+n^(n%2)`
-/

namespace A266285.P2365789318696010840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (n ^ (n % 2) : ℤ)

end

end A266285.P2365789318696010840

namespace A266285

/-- `floor(n/2)+n^(n%2)` -/
def P2365789318696010840.Spec : Prop :=
  ∀ n, P2365789318696010840.a n = A266285 n

end A266285

/-! ## A266285.P14840638643304452916

`∑[2-xor(1, a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A266285.P14840638643304452916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 - Int.xor 1 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266285.P14840638643304452916

namespace A266285

/-- `∑[2-xor(1, a(n-1))]` -/
def P14840638643304452916.Spec : Prop :=
  ∀ n, P14840638643304452916.a n = A266285 n

end A266285

/-! ## A266285.P12419819491117340169

`Δ[(n-2)*floor((n+2)/2)]`
-/

namespace A266285.P12419819491117340169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ⌊(n + 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266285.P12419819491117340169

namespace A266285

/-- `Δ[(n-2)*floor((n+2)/2)]` -/
def P12419819491117340169.Spec : Prop :=
  ∀ n, P12419819491117340169.a n = A266285 n

end A266285

/-! ## A266285.P9263167785570957336

`∑[∑[ogf((1+x+2x^3)/(1+2x+x^2))]]`
-/

namespace A266285.P9263167785570957336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266285.P9263167785570957336

namespace A266285

/-- `∑[∑[ogf((1+x+2x^3)/(1+2x+x^2))]]` -/
def P9263167785570957336.Spec : Prop :=
  ∀ n, P9263167785570957336.a n = A266285 n

end A266285

/-! ## A266285.P3259982420719126888

`∑[-(n*(-1)^n)]+xor(1, n)`
-/

namespace A266285.P3259982420719126888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.xor 1 n : ℤ)

end

end A266285.P3259982420719126888

namespace A266285

/-- `∑[-(n*(-1)^n)]+xor(1, n)` -/
def P3259982420719126888.Spec : Prop :=
  ∀ n, P3259982420719126888.a n = A266285 n

end A266285

/-! ## A266285.P10791287890170993423

`ogf((1+x+2x^3)/(1-2x^2+x^4))`
-/

namespace A266285.P10791287890170993423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2] [1, 0, -2, 0, 1] n

end

end A266285.P10791287890170993423

namespace A266285

/-- `ogf((1+x+2x^3)/(1-2x^2+x^4))` -/
def P10791287890170993423.Spec : Prop :=
  ∀ n, P10791287890170993423.a n = A266285 n

end A266285

/-! ## A266285.P5338079527615403948

`a(n-2)+2-(-1)^n` with `a(0)=1, a(1)=1`
-/

namespace A266285.P5338079527615403948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 2 - (-1) ^ n

end

end A266285.P5338079527615403948

namespace A266285

/-- `a(n-2)+2-(-1)^n` -/
def P5338079527615403948.Spec : Prop :=
  ∀ n, P5338079527615403948.a n = A266285 n

end A266285

/-! ## A266285.P10669433972955901897

`2-((-1)^n-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A266285.P10669433972955901897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - ((-1) ^ n - a (n - 2))

end

end A266285.P10669433972955901897

namespace A266285

/-- `2-((-1)^n-a(n-2))` -/
def P10669433972955901897.Spec : Prop :=
  ∀ n, P10669433972955901897.a n = A266285 n

end A266285

/-! ## A266285.P1526540859761995158

`or(1, n-1)-a(n-1)+n` with `a(0)=1`
-/

namespace A266285.P1526540859761995158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 ((n : ℤ) - 1) - a (n - 1) + (n : ℤ)

end

end A266285.P1526540859761995158

namespace A266285

/-- `or(1, n-1)-a(n-1)+n` -/
def P1526540859761995158.Spec : Prop :=
  ∀ n, P1526540859761995158.a n = A266285 n

end A266285

/-! ## A266285.P9911444573090477709

`or(1, n-1)-(a(n-1)-n)` with `a(0)=1`
-/

namespace A266285.P9911444573090477709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 ((n : ℤ) - 1) - (a (n - 1) - (n : ℤ))

end

end A266285.P9911444573090477709

namespace A266285

/-- `or(1, n-1)-(a(n-1)-n)` -/
def P9911444573090477709.Spec : Prop :=
  ∀ n, P9911444573090477709.a n = A266285 n

end A266285

/-! ## A266285.P8608471637779344594

`a(n-2)+(2*n+1)%4` with `a(0)=1, a(1)=1`
-/

namespace A266285.P8608471637779344594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (2 * n + 1) % 4

end

end A266285.P8608471637779344594

namespace A266285

/-- `a(n-2)+(2*n+1)%4` -/
def P8608471637779344594.Spec : Prop :=
  ∀ n, (P8608471637779344594.a n : ℤ) = A266285 n

end A266285

/-! ## A266285.P17769009986724242844

`2*and(1, n)+a(n-2)+1` with `a(0)=1, a(1)=1`
-/

namespace A266285.P17769009986724242844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * Nat.land 1 n + (a (n - 2) + 1)

end

end A266285.P17769009986724242844

namespace A266285

/-- `2*and(1, n)+a(n-2)+1` -/
def P17769009986724242844.Spec : Prop :=
  ∀ n, (P17769009986724242844.a n : ℤ) = A266285 n

end A266285

/-! ## A266285.P6144864464945802660

`a(n-2)+gcd(3, (n+1)%2)` with `a(0)=1, a(1)=1`
-/

namespace A266285.P6144864464945802660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.gcd 3 ((n + 1) % 2)

end

end A266285.P6144864464945802660

namespace A266285

/-- `a(n-2)+gcd(3, (n+1)%2)` -/
def P6144864464945802660.Spec : Prop :=
  ∀ n, (P6144864464945802660.a n : ℤ) = A266285 n

end A266285

/-! ## A266285.P13782751007100067512

`2*n-char[2*n]-a(n-1)` with `a(0)=1`
-/

namespace A266285.P13782751007100067512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1)

end

end A266285.P13782751007100067512

namespace A266285

/-- `2*n-char[2*n]-a(n-1)` -/
def P13782751007100067512.Spec : Prop :=
  ∀ n, P13782751007100067512.a n = A266285 n

end A266285

/-! ## A266285.P641713745066393819

`Δ[floor((n+2)/a(n-1))]+n` with `a(0)=1, a(1)=2`
-/

namespace A266285.P641713745066393819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊(n + 2 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A266285.P641713745066393819

namespace A266285

/-- `Δ[floor((n+2)/a(n-1))]+n` -/
def P641713745066393819.Spec : Prop :=
  ∀ n, P641713745066393819.a n = A266285 n

end A266285

/-! ## A266285.P5298047029545448137

`2*n-a(n-1)-and(1, n-1)` with `a(0)=1`
-/

namespace A266285.P5298047029545448137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - a (n - 1) - Int.land 1 ((n : ℤ) - 1)

end

end A266285.P5298047029545448137

namespace A266285

/-- `2*n-a(n-1)-and(1, n-1)` -/
def P5298047029545448137.Spec : Prop :=
  ∀ n, P5298047029545448137.a n = A266285 n

end A266285

/-! ## A266285.P17934691059412536341

`∑[4-a(n-1)]-(a(n-1)+2)` with `a(0)=1`
-/

namespace A266285.P17934691059412536341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (a (n - 1) + 2)

end

end A266285.P17934691059412536341

namespace A266285

/-- `∑[4-a(n-1)]-(a(n-1)+2)` -/
def P17934691059412536341.Spec : Prop :=
  ∀ n, P17934691059412536341.a n = A266285 n

end A266285

/-! ## A266285.P14441085345845417888

`∑[4-a(n-1)]-a(n-1)-2` with `a(0)=1`
-/

namespace A266285.P14441085345845417888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1) - 2

end

end A266285.P14441085345845417888

namespace A266285

/-- `∑[4-a(n-1)]-a(n-1)-2` -/
def P14441085345845417888.Spec : Prop :=
  ∀ n, P14441085345845417888.a n = A266285 n

end A266285

/-! ## A266285.P9315828123237076972

`(1-n)%2-(a(n-1)-n-n)` with `a(0)=1`
-/

namespace A266285.P9315828123237076972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (1 - (n : ℤ)) 2 - (a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A266285.P9315828123237076972

namespace A266285

/-- `(1-n)%2-(a(n-1)-n-n)` -/
def P9315828123237076972.Spec : Prop :=
  ∀ n, P9315828123237076972.a n = A266285 n

end A266285

/-!
# A266286: Number of OFF (white) cells in the n-th iteration of the "Rule 13" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266286, the canonical program `A266286.P9283112343880469714` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266286 has offset 0).

The definition of A266286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266286.P16044009863828089681

`Δ[(n-2)/gcd(2, n)]+n`
-/

namespace A266286.P16044009863828089681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℚ)

end

end A266286.P16044009863828089681

namespace A266286

/-- `Δ[(n-2)/gcd(2, n)]+n` -/
def P16044009863828089681.Spec : Prop :=
  ∀ n, P16044009863828089681.a n = (A266286 n : ℚ)

end A266286

/-! ## A266286.P9283112343880469714

`∑[xor(1, 2-a(n-1))]` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266286

/-- `∑[xor(1, 2-a(n-1))]` -/
def P9283112343880469714.Spec : Prop :=
  ∀ n, P9283112343880469714.a n = A266286 n

theorem P9283112343880469714.correct : P9283112343880469714.Spec := by
  intro n
  simp only [A266286]

end A266286

/-! ## A266286.P3851733719877730318

`or(1, n)-a(n-1)+n` with `a(0)=0`
-/

namespace A266286.P3851733719877730318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.lor 1 n : ℤ) - a (n - 1) + (n : ℤ)

end

end A266286.P3851733719877730318

namespace A266286

/-- `or(1, n)-a(n-1)+n` -/
def P3851733719877730318.Spec : Prop :=
  ∀ n, P3851733719877730318.a n = A266286 n

end A266286

/-! ## A266286.P17624081691498553376

`or(1, n)-(a(n-1)-n)` with `a(0)=0`
-/

namespace A266286.P17624081691498553376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.lor 1 n : ℤ) - (a (n - 1) - (n : ℤ))

end

end A266286.P17624081691498553376

namespace A266286

/-- `or(1, n)-(a(n-1)-n)` -/
def P17624081691498553376.Spec : Prop :=
  ∀ n, P17624081691498553376.a n = A266286 n

end A266286

/-! ## A266286.P5479348361200148125

`Δ[(n-2)*floor((n+3)/2)]`
-/

namespace A266286.P5479348361200148125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ⌊(n + 3 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266286.P5479348361200148125

namespace A266286

/-- `Δ[(n-2)*floor((n+3)/2)]` -/
def P5479348361200148125.Spec : Prop :=
  ∀ n, P5479348361200148125.a n = A266286 n

end A266286

/-! ## A266286.P5695224265457014206

`Δ[lcm(2, xor(n, -2))/2]+n`
-/

namespace A266286.P5695224265457014206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℚ)

end

end A266286.P5695224265457014206

namespace A266286

/-- `Δ[lcm(2, xor(n, -2))/2]+n` -/
def P5695224265457014206.Spec : Prop :=
  ∀ n, P5695224265457014206.a n = (A266286 n : ℚ)

end A266286

/-! ## A266286.P16146440223573699237

`record[xor(1, n²)]%(2*n+1)`
-/

namespace A266286.P16146440223573699237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) % (2 * n + 1)

end

end A266286.P16146440223573699237

namespace A266286

/-- `record[xor(1, n²)]%(2*n+1)` -/
def P16146440223573699237.Spec : Prop :=
  ∀ n, (P16146440223573699237.a n : ℤ) = A266286 n

end A266286

/-! ## A266286.P6629539945759833520

`∑[ogf((x+2x^2)/(1+2x+x^2))]+n`
-/

namespace A266286.P6629539945759833520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A266286.P6629539945759833520

namespace A266286

/-- `∑[ogf((x+2x^2)/(1+2x+x^2))]+n` -/
def P6629539945759833520.Spec : Prop :=
  ∀ n, P6629539945759833520.a n = A266286 n

end A266286

/-! ## A266286.P5790411965171619781

`ogf((2x+3x^2-x^3)/(1-2x^2+x^4))`
-/

namespace A266286.P5790411965171619781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, -1] [1, 0, -2, 0, 1] n

end

end A266286.P5790411965171619781

namespace A266286

/-- `ogf((2x+3x^2-x^3)/(1-2x^2+x^4))` -/
def P5790411965171619781.Spec : Prop :=
  ∀ n, P5790411965171619781.a n = A266286 n

end A266286

/-! ## A266286.P4362940337506728023

`a(n-2)+gcd(3, n%2)` with `a(0)=0, a(1)=2`
-/

namespace A266286.P4362940337506728023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + Nat.gcd 3 (n % 2)

end

end A266286.P4362940337506728023

namespace A266286

/-- `a(n-2)+gcd(3, n%2)` -/
def P4362940337506728023.Spec : Prop :=
  ∀ n, (P4362940337506728023.a n : ℤ) = A266286 n

end A266286

/-! ## A266286.P16144025357374807413

`xor(1, (n+1)²)%(2*n+1)`
-/

namespace A266286.P16144025357374807413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) ^ 2) % (2 * n + 1)

end

end A266286.P16144025357374807413

namespace A266286

/-- `xor(1, (n+1)²)%(2*n+1)` -/
def P16144025357374807413.Spec : Prop :=
  ∀ n, (P16144025357374807413.a n : ℤ) = A266286 n

end A266286

/-! ## A266286.P4649327907940816132

`a(n-2)+(-1)^n+2` with `a(0)=0, a(1)=2`
-/

namespace A266286.P4649327907940816132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + ((-1) ^ n + 2)

end

end A266286.P4649327907940816132

namespace A266286

/-- `a(n-2)+(-1)^n+2` -/
def P4649327907940816132.Spec : Prop :=
  ∀ n, P4649327907940816132.a n = A266286 n

end A266286

/-! ## A266286.P2071126565743414709

`∑[2-(a(n-1)-(-1)^n)]` with `a(0)=0, a(1)=2`
-/

namespace A266286.P2071126565743414709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 - (f1 (n - 1) - (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266286.P2071126565743414709

namespace A266286

/-- `∑[2-(a(n-1)-(-1)^n)]` -/
def P2071126565743414709.Spec : Prop :=
  ∀ n, P2071126565743414709.a n = A266286 n

end A266286

/-! ## A266286.P8319673592139168849

`gcd(4, 2*n)-(1-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A266286.P8319673592139168849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (Nat.gcd 4 (2 * n) : ℤ) - (1 - a (n - 2))

end

end A266286.P8319673592139168849

namespace A266286

/-- `gcd(4, 2*n)-(1-a(n-2))` -/
def P8319673592139168849.Spec : Prop :=
  ∀ n, P8319673592139168849.a n = A266286 n

end A266286

/-! ## A266286.P6208944474853340765

`∑[C(3, a(n-1))]-a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A266286.P6208944474853340765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.choose 3 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A266286.P6208944474853340765

namespace A266286

/-- `∑[C(3, a(n-1))]-a(n-1)` -/
def P6208944474853340765.Spec : Prop :=
  ∀ n, P6208944474853340765.a n = A266286 n

end A266286

/-! ## A266286.P4125810731653766437

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A266286.P4125810731653766437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 3] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A266286.P4125810731653766437

namespace A266286

/-- `2*a(n-2)-a(n-4)` -/
def P4125810731653766437.Spec : Prop :=
  ∀ n, P4125810731653766437.a n = A266286 n

end A266286

/-! ## A266286.P12457146939327036653

`∑[4-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A266286.P12457146939327036653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A266286.P12457146939327036653

namespace A266286

/-- `∑[4-a(n-1)]-a(n-1)` -/
def P12457146939327036653.Spec : Prop :=
  ∀ n, P12457146939327036653.a n = A266286 n

end A266286

/-! ## A266286.P13719665963308398117

`or(2, (n+1)*(n-1))%(2*n+1)`
-/

namespace A266286.P13719665963308398117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 2 ((n + 1 : ℤ) * ((n : ℤ) - 1))) (2 * n + 1 : ℤ)

end

end A266286.P13719665963308398117

namespace A266286

/-- `or(2, (n+1)*(n-1))%(2*n+1)` -/
def P13719665963308398117.Spec : Prop :=
  ∀ n, P13719665963308398117.a n = A266286 n

end A266286

/-! ## A266286.P18040588292552320769

`(n+1)%2-a(n-1)+n+n` with `a(0)=0`
-/

namespace A266286.P18040588292552320769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (((n + 1) % 2 : ℕ) : ℤ) - a (n - 1) + (n : ℤ) + (n : ℤ)

end

end A266286.P18040588292552320769

namespace A266286

/-- `(n+1)%2-a(n-1)+n+n` -/
def P18040588292552320769.Spec : Prop :=
  ∀ n, P18040588292552320769.a n = A266286 n

end A266286

/-! ## A266286.P13561525004838735725

`(n-1)%2-(a(n-1)-n-n)` with `a(0)=0`
-/

namespace A266286.P13561525004838735725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n : ℤ) - 1) 2 - (a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A266286.P13561525004838735725

namespace A266286

/-- `(n-1)%2-(a(n-1)-n-n)` -/
def P13561525004838735725.Spec : Prop :=
  ∀ n, P13561525004838735725.a n = A266286 n

end A266286

/-!
# A266287: Total number of OFF (white) cells after n iterations of the "Rule 13" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266287, the canonical program `A266287.P7852644232802684564` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266287 has offset 0).

The definition of A266287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266287.P7852644232802684564

`ceil(n*or(1, n+2)/2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266287

/-- `ceil(n*or(1, n+2)/2)` -/
def P7852644232802684564.Spec : Prop :=
  ∀ n, P7852644232802684564.a n = A266287 n

theorem P7852644232802684564.correct : P7852644232802684564.Spec := by
  intro n
  simp only [A266287]

end A266287

/-! ## A266287.P9754832029968892338

`xor(1, n+2)*ceil(n/2)`
-/

namespace A266287.P9754832029968892338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 2) : ℤ) * ⌈(n : ℚ) / 2⌉

end

end A266287.P9754832029968892338

namespace A266287

/-- `xor(1, n+2)*ceil(n/2)` -/
def P9754832029968892338.Spec : Prop :=
  ∀ n, P9754832029968892338.a n = A266287 n

end A266287

/-! ## A266287.P8280233528793340122

`round(n*or(1, n+2)/2)`
-/

namespace A266287.P8280233528793340122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((Nat.lor 1 (n + 2) : ℚ) / 2))

end

end A266287.P8280233528793340122

namespace A266287

/-- `round(n*or(1, n+2)/2)` -/
def P8280233528793340122.Spec : Prop :=
  ∀ n, P8280233528793340122.a n = A266287 n

end A266287

/-! ## A266287.P2916911885240979456

`∑[Δ[(n-2)/gcd(2, n)]+n]`
-/

namespace A266287.P2916911885240979456
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P2916911885240979456

namespace A266287

/-- `∑[Δ[(n-2)/gcd(2, n)]+n]` -/
def P2916911885240979456.Spec : Prop :=
  ∀ n, P2916911885240979456.a n = (A266287 n : ℚ)

end A266287

/-! ## A266287.P18005351567575610247

`∑[∑[xor(1, 2-a(n-1))]]` with `a(0)=0, a(1)=2`
-/

namespace A266287.P18005351567575610247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  Int.xor 1 (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P18005351567575610247

namespace A266287

/-- `∑[∑[xor(1, 2-a(n-1))]]` -/
def P18005351567575610247.Spec : Prop :=
  ∀ n, P18005351567575610247.a n = A266287 n

end A266287

/-! ## A266287.P11167353407280343622

`(floor(n/2)+2)*(n-1)+2`
-/

namespace A266287.P11167353407280343622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 2) * ((n : ℤ) - 1) + 2

end

end A266287.P11167353407280343622

namespace A266287

/-- `(floor(n/2)+2)*(n-1)+2` -/
def P11167353407280343622.Spec : Prop :=
  ∀ n, P11167353407280343622.a n = A266287 n

end A266287

/-! ## A266287.P12007295435082376424

`∑[or(1, n)-a(n-1)+n]` with `a(0)=0`
-/

namespace A266287.P12007295435082376424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.lor 1 n : ℤ) - f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P12007295435082376424

namespace A266287

/-- `∑[or(1, n)-a(n-1)+n]` -/
def P12007295435082376424.Spec : Prop :=
  ∀ n, P12007295435082376424.a n = A266287 n

end A266287

/-! ## A266287.P589875370998326848

`∑[ogf((2x+3x^2-x^3)/(1-2x^2+x^4))]`
-/

namespace A266287.P589875370998326848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, -1] [1, 0, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P589875370998326848

namespace A266287

/-- `∑[ogf((2x+3x^2-x^3)/(1-2x^2+x^4))]` -/
def P589875370998326848.Spec : Prop :=
  ∀ n, P589875370998326848.a n = A266287 n

end A266287

/-! ## A266287.P17652587366378188603

`∑[a(n-2)+gcd(3, n%2)]` with `a(0)=0, a(1)=2`
-/

namespace A266287.P17652587366378188603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + Nat.gcd 3 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P17652587366378188603

namespace A266287

/-- `∑[a(n-2)+gcd(3, n%2)]` -/
def P17652587366378188603.Spec : Prop :=
  ∀ n, (P17652587366378188603.a n : ℤ) = A266287 n

end A266287

/-! ## A266287.P4906515644240407139

`∑[xor(1, (n+1)²)%(2*n+1)]`
-/

namespace A266287.P4906515644240407139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) ^ 2) % (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P4906515644240407139

namespace A266287

/-- `∑[xor(1, (n+1)²)%(2*n+1)]` -/
def P4906515644240407139.Spec : Prop :=
  ∀ n, (P4906515644240407139.a n : ℤ) = A266287 n

end A266287

/-! ## A266287.P17468237368550133967

`∑[a(n-2)+(-1)^n+2]` with `a(0)=0, a(1)=2`
-/

namespace A266287.P17468237368550133967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + ((-1) ^ n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P17468237368550133967

namespace A266287

/-- `∑[a(n-2)+(-1)^n+2]` -/
def P17468237368550133967.Spec : Prop :=
  ∀ n, P17468237368550133967.a n = A266287 n

end A266287

/-! ## A266287.P9610457002586116077

`∑[2*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A266287.P9610457002586116077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 3] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P9610457002586116077

namespace A266287

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P9610457002586116077.Spec : Prop :=
  ∀ n, P9610457002586116077.a n = A266287 n

end A266287

/-! ## A266287.P12204436219929690906

`∑[∑[4-a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A266287.P12204436219929690906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P12204436219929690906

namespace A266287

/-- `∑[∑[4-a(n-1)]-a(n-1)]` -/
def P12204436219929690906.Spec : Prop :=
  ∀ n, P12204436219929690906.a n = A266287 n

end A266287

/-! ## A266287.P16869679438376011739

`∑[Δ[or(1, n²)]-∑[2*n]%(2*n+1)]`
-/

namespace A266287.P16869679438376011739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) % (2 * n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P16869679438376011739

namespace A266287

/-- `∑[Δ[or(1, n²)]-∑[2*n]%(2*n+1)]` -/
def P16869679438376011739.Spec : Prop :=
  ∀ n, P16869679438376011739.a n = A266287 n

end A266287

/-! ## A266287.P10195084699811593656

`∑[A266286(n)]`
-/

namespace A266287.P10195084699811593656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P10195084699811593656

namespace A266287

/-- `∑[A266286(n)]` -/
def P10195084699811593656.Spec : Prop :=
  ∀ n, P10195084699811593656.a n = A266287 n

end A266287

/-! ## A266287.P12029281459772292315

`∑[A097140(n)+n]`
-/

namespace A266287.P12029281459772292315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P12029281459772292315

namespace A266287

/-- `∑[A097140(n)+n]` -/
def P12029281459772292315.Spec : Prop :=
  ∀ n, P12029281459772292315.a n = A266287 n

end A266287

/-! ## A266287.P6441653702760471075

`∑[∑[1-A105811(n)]]`
-/

namespace A266287.P6441653702760471075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A105811 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P6441653702760471075

namespace A266287

/-- `∑[∑[1-A105811(n)]]` -/
def P6441653702760471075.Spec : Prop :=
  ∀ n, P6441653702760471075.a n = A266287 n

end A266287

/-! ## A266287.P9102689434601993947

`∑[∑[A097141(n)]+n]`
-/

namespace A266287.P9102689434601993947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P9102689434601993947

namespace A266287

/-- `∑[∑[A097141(n)]+n]` -/
def P9102689434601993947.Spec : Prop :=
  ∀ n, P9102689434601993947.a n = A266287 n

end A266287

/-! ## A266287.P6359696814506474811

`∑[Δ[A029578(n)]+n]`
-/

namespace A266287.P6359696814506474811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266287.P6359696814506474811

namespace A266287

/-- `∑[Δ[A029578(n)]+n]` -/
def P6359696814506474811.Spec : Prop :=
  ∀ n, P6359696814506474811.a n = A266287 n

end A266287

/-! ## A266287.P6853926051047821557

`A083364(n)%A263511(n)`
-/

namespace A266287.P6853926051047821557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083364 n) (A263511 n)

end

end A266287.P6853926051047821557

namespace A266287

/-- `A083364(n)%A263511(n)` -/
def P6853926051047821557.Spec : Prop :=
  ∀ n, P6853926051047821557.a n = A266287 n

end A266287

/-!
# A266288: Expansion of a(q)^2 * (c(q)/3)^3 in powers of q where a(), c() are cubic AGM theta functions.

The programs for A266288, the canonical program `A266288.P2981641528736582152` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266288 has offset 1).

The definition of A266288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266288.P2981641528736582152

`∑{d}[n+1, A002324(#)*A059377((n+1)/#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A266288

/-- `∑{d}[n+1, A002324(#)*A059377((n+1)/#)]` -/
def P2981641528736582152.Spec : Prop :=
  ∀ n, P2981641528736582152.a n = A266288 (n + 1)

theorem P2981641528736582152.correct : P2981641528736582152.Spec := by
  intro n
  simp only [A266288, Nat.add_sub_cancel]

end A266288

/-! ## A266288.P13786125889555750456

`∑{d}[n+1, A106402(#)*A379833((n+1)/#)]`
-/

namespace A266288.P13786125889555750456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A106402 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A266288.P13786125889555750456

namespace A266288

/-- `∑{d}[n+1, A106402(#)*A379833((n+1)/#)]` -/
def P13786125889555750456.Spec : Prop :=
  ∀ n, P13786125889555750456.a n = A266288 (n + 1)

end A266288

/-!
# A266289: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north, west or northeast neighbor modulo n and the upper left element equal to 0.

The programs for A266289, there is no canonical definition to state claims against.
-/

/-! ## A266289.P17186398159627690960

`A266291(∑[n+2])`
-/

namespace A266289.P17186398159627690960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266291 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266289.P17186398159627690960

/-! ## A266289.P17594981708569357111

`A015526(n)*A266291(A000096(n+1))`
-/

namespace A266289.P17594981708569357111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 n * A266291 (A000096 (n + 1)).toNat

end

end A266289.P17594981708569357111

/-! ## A266289.P669379296693778946

`or(A266291(A000096(n+1)), A339060(n))`
-/

namespace A266289.P669379296693778946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266291 (A000096 (n + 1)).toNat) (A339060 n)

end

end A266289.P669379296693778946

/-! ## A266289.P2169904212104755154

`A266291(A000096(n+1))+A000035(2*n)`
-/

namespace A266289.P2169904212104755154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266291 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A266289.P2169904212104755154

/-! ## A266289.P12732263277841842560

`A266291(A000096(n+1))%A074159(n+2)`
-/

namespace A266289.P12732263277841842560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266291 (A000096 (n + 1)).toNat) (A074159 (n + 2))

end

end A266289.P12732263277841842560

/-!
# A266290: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north, west or northeast neighbor modulo n and the upper left element equal to 0.

The programs for A266290, there is no canonical definition to state claims against.
-/

/-! ## A266290.P874624197146679145

`A266291(∑[n+3]+1)`
-/

namespace A266290.P874624197146679145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266291 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266290.P874624197146679145

/-! ## A266290.P6314848812715321002

`A266291(A055998(n+1)+1)-A308979(n)`
-/

namespace A266290.P6314848812715321002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266291 (A055998 (n + 1) + 1).toNat - A308979 n

end

end A266290.P6314848812715321002

/-! ## A266290.P1906767855565092885

`A266291(A034856(n+2))%A266294(n+1)`
-/

namespace A266290.P1906767855565092885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266291 (A034856 (n + 2)).toNat) (A266294 (n + 1))

end

end A266290.P1906767855565092885

/-! ## A266290.P7312836034056405777

`A266291(A034856(n+2))^A014963(A256291(n+1))`
-/

namespace A266290.P7312836034056405777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266291 (A034856 (n + 2)).toNat : ℚ) ^ (A014963 (A256291 (n + 1)).toNat : ℤ)

end

end A266290.P7312836034056405777

/-!
# A266291: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its north, west or northeast neighbor modulo n and the upper left element equal to 0.

The programs for A266291, there is no canonical definition to state claims against.
-/

/-! ## A266291.P2166170370384115796

`A118088(A266861(n+1))`
-/

namespace A266291.P2166170370384115796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 (A266861 (n + 1)).toNat

end

end A266291.P2166170370384115796

/-! ## A266291.P5976313732364557655

`A266878(A331562(A055645(n))+n)`
-/

namespace A266291.P5976313732364557655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (A331562 (A055645 n).toNat + (n : ℤ)).toNat

end

end A266291.P5976313732364557655

/-! ## A266291.P705680178778781586

`A214776(A114327(n)+A077168(n))`
-/

namespace A266291.P705680178778781586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (A114327 n + A077168 n).toNat

end

end A266291.P705680178778781586

/-! ## A266291.P12254002366068397390

`A214776(A038722(n+1)%A110144(2*n))`
-/

namespace A266291.P12254002366068397390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (Int.tmod (A038722 (n + 1)) (A110144 (2 * n))).toNat

end

end A266291.P12254002366068397390

/-! ## A266291.P4468507589914182488

`A024375(A058876(n+1))`
-/

namespace A266291.P4468507589914182488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024375 (A058876 (n + 1)).toNat

end

end A266291.P4468507589914182488

/-!
# A266292: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its north, west or northeast neighbor modulo 3 and the upper left element equal to 0.

The programs for A266292, there is no canonical definition to state claims against.
-/

/-! ## A266292.P10311334578860422424

`A267392(∑[n+2]+4)`
-/

namespace A266292.P10311334578860422424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266292.P10311334578860422424

/-! ## A266292.P1653967786960012085

`A267392(A167614(n+1))+char[22]`
-/

namespace A266292.P1653967786960012085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266292.P1653967786960012085

/-! ## A266292.P14552535940375344464

`record[A103452(n)*A267392(n+4)]`
-/

namespace A266292.P14552535940375344464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A267392 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266292.P14552535940375344464

/-! ## A266292.P8297004765727437722

`record[gcd(A267392(n+1), A293293(n))]`
-/

namespace A266292.P8297004765727437722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267392 (n + 1)) (A293293 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266292.P8297004765727437722

/-! ## A266292.P5586460117792631401

`record[gcd(A073200(n), A267392(n+4))]`
-/

namespace A266292.P5586460117792631401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073200 n) (A267392 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266292.P5586460117792631401

/-!
# A266293: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north, west or northeast neighbor modulo 4 and the upper left element equal to 0.

The programs for A266293, there is no canonical definition to state claims against.
-/

/-! ## A266293.P17034559370511540102

`A266291(A141214(n)+7)`
-/

namespace A266293.P17034559370511540102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266291 (A141214 n + 7).toNat

end

end A266293.P17034559370511540102

/-! ## A266293.P6112626954574036749

`A266291(A052905(n)+9)`
-/

namespace A266293.P6112626954574036749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266291 (A052905 n + 9).toNat

end

end A266293.P6112626954574036749

/-! ## A266293.P7295289374081788645

`A266291(A055999(n)+10)`
-/

namespace A266293.P7295289374081788645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266291 (A055999 n + 10).toNat

end

end A266293.P7295289374081788645

/-! ## A266293.P14226845645079461412

`A266291(eq[5, A066657(n)])`
-/

namespace A266293.P14226845645079461412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266293.P14226845645079461412

/-!
# A266294: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its north, west or northeast neighbor modulo 5 and the upper left element equal to 0.

The programs for A266294, there is no canonical definition to state claims against.
-/

/-! ## A266294.P11076585797321417946

`A266291(A167499(n+3))`
-/

namespace A266294.P11076585797321417946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266291 (A167499 (n + 3)).toNat

end

end A266294.P11076585797321417946

/-! ## A266294.P12166798899689961947

`A266291(A155212(n)+13)`
-/

namespace A266294.P12166798899689961947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266291 (A155212 n + 13).toNat

end

end A266294.P12166798899689961947

/-! ## A266294.P6717531021136595485

`A266291(A056000(n)+15)`
-/

namespace A266294.P6717531021136595485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266291 (A056000 n + 15).toNat

end

end A266294.P6717531021136595485

/-!
# A266295: 2-free tetranacci sequence beginning 1,3,5,7.

The programs for A266295, the canonical program `A266295.P15302427151285831677` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266295 has offset 1).

The definition of A266295 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A266295.P15302427151285831677

`A000265(a(n-1)+a(n-2)+a(n-3)+a(n-4))` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A266295

/-- `A000265(a(n-1)+a(n-2)+a(n-3)+a(n-4))` -/
def P15302427151285831677.Spec : Prop :=
  ∀ n, P15302427151285831677.a n = A266295 (n + 1)

theorem P15302427151285831677.correct : P15302427151285831677.Spec := by
  intro n
  simp only [A266295, Nat.add_sub_cancel]

end A266295

/-!
# A266297: Numbers whose last digit is a square.

The programs for A266297, the canonical program `A266297.P13970392062048302661` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266297 has offset 1).

The definition of A266297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266297.P13970392062048302661

`a(n-4)+10` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266297

/-- `a(n-4)+10` -/
def P13970392062048302661.Spec : Prop :=
  ∀ n, (P13970392062048302661.a n : ℤ) = A266297 (n + 1)

theorem P13970392062048302661.correct : P13970392062048302661.Spec := by
  intro n
  simp only [A266297, Nat.add_sub_cancel]

end A266297

/-! ## A266297.P4543062474562993793

`∑[or(1, a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A266297.P4543062474562993793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5] fun n f1 =>
  Nat.lor 1 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266297.P4543062474562993793

namespace A266297

/-- `∑[or(1, a(n-4))]` -/
def P4543062474562993793.Spec : Prop :=
  ∀ n, (P4543062474562993793.a n : ℤ) = A266297 (n + 1)

end A266297

/-! ## A266297.P7571750456870450095

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A266297.P7571750456870450095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266297.P7571750456870450095

namespace A266297

/-- `∑[floor(a(n-4))]` -/
def P7571750456870450095.Spec : Prop :=
  ∀ n, (P7571750456870450095.a n : ℤ) = A266297 (n + 1)

end A266297

/-! ## A266297.P297618231264274873

`∑[a(n-4)%6]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=1`
-/

namespace A266297.P297618231264274873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5, 1] fun n f1 =>
  f1 (n - 4) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266297.P297618231264274873

namespace A266297

/-- `∑[a(n-4)%6]` -/
def P297618231264274873.Spec : Prop :=
  ∀ n, (P297618231264274873.a n : ℤ) = A266297 (n + 1)

end A266297

/-! ## A266297.P10557533108786762615

`and(3*n, -3)-and(n, -4)/2`
-/

namespace A266297.P10557533108786762615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (3 * n : ℤ) (-3) : ℚ) - (Int.land (n : ℤ) (-4) : ℚ) / 2

end

end A266297.P10557533108786762615

namespace A266297

/-- `and(3*n, -3)-and(n, -4)/2` -/
def P10557533108786762615.Spec : Prop :=
  ∀ n, P10557533108786762615.a n = (A266297 (n + 1) : ℚ)

end A266297

/-! ## A266297.P6141145115000091483

`∑[a(n-4)^a(n-2)]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=1`
-/

namespace A266297.P6141145115000091483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5, 1] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266297.P6141145115000091483

namespace A266297

/-- `∑[a(n-4)^a(n-2)]` -/
def P6141145115000091483.Spec : Prop :=
  ∀ n, (P6141145115000091483.a n : ℤ) = A266297 (n + 1)

end A266297

/-! ## A266297.P18383541372723111073

`2*A047283(n+1)-n`
-/

namespace A266297.P18383541372723111073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047283 (n + 1) - (n : ℤ)

end

end A266297.P18383541372723111073

namespace A266297

/-- `2*A047283(n+1)-n` -/
def P18383541372723111073.Spec : Prop :=
  ∀ n, P18383541372723111073.a n = A266297 (n + 1)

end A266297

/-! ## A266297.P61737271399632745

`2*comp[A047378(n+1)]-n`
-/

namespace A266297.P61737271399632745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047378 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A266297.P61737271399632745

namespace A266297

/-- `2*comp[A047378(n+1)]-n` -/
def P61737271399632745.Spec : Prop :=
  ∀ n, P61737271399632745.a n = A266297 (n + 1)

end A266297

/-! ## A266297.P17941841893503043638

`∑[A006530(a(n-4)!)]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A266297.P17941841893503043638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5] fun n f1 =>
  A006530 (Nat.factorial (f1 (n - 4)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266297.P17941841893503043638

namespace A266297

/-- `∑[A006530(a(n-4)!)]` -/
def P17941841893503043638.Spec : Prop :=
  ∀ n, P17941841893503043638.a n = A266297 (n + 1)

end A266297

/-! ## A266297.P3569980118608777768

`2*∑[A000041(a(n-4))]-n` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A266297.P3569980118608777768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  A000041 (f1 (n - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A266297.P3569980118608777768

namespace A266297

/-- `2*∑[A000041(a(n-4))]-n` -/
def P3569980118608777768.Spec : Prop :=
  ∀ n, P3569980118608777768.a n = A266297 (n + 1)

end A266297

/-! ## A266297.P13029173084932678861

`A187326(A140201(n))+n`
-/

namespace A266297.P13029173084932678861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 (A140201 n).toNat + (n : ℤ)

end

end A266297.P13029173084932678861

namespace A266297

/-- `A187326(A140201(n))+n` -/
def P13029173084932678861.Spec : Prop :=
  ∀ n, P13029173084932678861.a n = A266297 (n + 1)

end A266297

/-! ## A266297.P9447258714413928706

`A112652(n)-A122461(n)`
-/

namespace A266297.P9447258714413928706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n - A122461 n

end

end A266297.P9447258714413928706

namespace A266297

/-- `A112652(n)-A122461(n)` -/
def P9447258714413928706.Spec : Prop :=
  ∀ n, P9447258714413928706.a n = A266297 (n + 1)

end A266297

/-! ## A266297.P15944814291700663816

`A201629(n)+A047269(n+1)`
-/

namespace A266297.P15944814291700663816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n + A047269 (n + 1)

end

end A266297.P15944814291700663816

namespace A266297

/-- `A201629(n)+A047269(n+1)` -/
def P15944814291700663816.Spec : Prop :=
  ∀ n, P15944814291700663816.a n = A266297 (n + 1)

end A266297

/-! ## A266297.P332423084442900577

`A215415(n)+A047403(n+1)`
-/

namespace A266297.P332423084442900577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215415 n + A047403 (n + 1)

end

end A266297.P332423084442900577

namespace A266297

/-- `A215415(n)+A047403(n+1)` -/
def P332423084442900577.Spec : Prop :=
  ∀ n, P332423084442900577.a n = A266297 (n + 1)

end A266297

/-! ## A266297.P998812414479925562

`A112652(n)-2*A002265(n)`
-/

namespace A266297.P998812414479925562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n - 2 * A002265 n

end

end A266297.P998812414479925562

namespace A266297

/-- `A112652(n)-2*A002265(n)` -/
def P998812414479925562.Spec : Prop :=
  ∀ n, P998812414479925562.a n = A266297 (n + 1)

end A266297

/-! ## A266297.P5100636017458108434

`∪[A054967(n+1), A016897(n)]`
-/

namespace A266297.P5100636017458108434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266297.P5100636017458108434

namespace A266297

/-- `∪[A054967(n+1), A016897(n)]` -/
def P5100636017458108434.Spec : Prop :=
  ∀ n, (P5100636017458108434.a n : ℤ) = A266297 (n + 1)

end A266297

/-! ## A266297.P8622401143576210028

`∪[A054967(n+1), A017317(n)]`
-/

namespace A266297.P8622401143576210028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266297.P8622401143576210028

namespace A266297

/-- `∪[A054967(n+1), A017317(n)]` -/
def P8622401143576210028.Spec : Prop :=
  ∀ n, (P8622401143576210028.a n : ℤ) = A266297 (n + 1)

end A266297

/-! ## A266297.P13842343855004966044

`∪[A054967(n+1), A146763(n)]`
-/

namespace A266297.P13842343855004966044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146763 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266297.P13842343855004966044

namespace A266297

/-- `∪[A054967(n+1), A146763(n)]` -/
def P13842343855004966044.Spec : Prop :=
  ∀ n, (P13842343855004966044.a n : ℤ) = A266297 (n + 1)

end A266297

/-! ## A266297.P1611950449822227113

`∪[A197652(n+1), A016897(n)]`
-/

namespace A266297.P1611950449822227113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266297.P1611950449822227113

namespace A266297

/-- `∪[A197652(n+1), A016897(n)]` -/
def P1611950449822227113.Spec : Prop :=
  ∀ n, (P1611950449822227113.a n : ℤ) = A266297 (n + 1)

end A266297

/-! ## A266297.P8848926154042144299

`∪[A090771(n+1), A146763(n)]`
-/

namespace A266297.P8848926154042144299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146763 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266297.P8848926154042144299

namespace A266297

/-- `∪[A090771(n+1), A146763(n)]` -/
def P8848926154042144299.Spec : Prop :=
  ∀ n, (P8848926154042144299.a n : ℤ) = A266297 (n + 1)

end A266297

/-!
# A266298: Triangle read by rows giving successive states of cellular automaton generated by "Rule 14" initiated with a single ON (black) cell.

The programs for A266298, the canonical program `A266298.P6696412190322879374` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266298 has offset 0).

The definition of A266298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266298.P15789527043187018261

`char[∪[n²+1, n²]]`
-/

namespace A266298.P15789527043187018261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A266298.P15789527043187018261

namespace A266298

/-- `char[∪[n²+1, n²]]` -/
def P15789527043187018261.Spec : Prop :=
  ∀ n, (P15789527043187018261.a n : ℤ) = A266298 n

end A266298

/-! ## A266298.P5371583517078364743

`char[n%2+floor(sqrt(n))²]`
-/

namespace A266298.P5371583517078364743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + Nat.sqrt n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A266298.P5371583517078364743

namespace A266298

/-- `char[n%2+floor(sqrt(n))²]` -/
def P5371583517078364743.Spec : Prop :=
  ∀ n, (P5371583517078364743.a n : ℤ) = A266298 n

end A266298

/-! ## A266298.P14899925015849847425

`char[lt[n-floor(sqrt(n))², 2]]`
-/

namespace A266298.P14899925015849847425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A266298.P14899925015849847425

namespace A266298

/-- `char[lt[n-floor(sqrt(n))², 2]]` -/
def P14899925015849847425.Spec : Prop :=
  ∀ n, (P14899925015849847425.a n : ℤ) = A266298 n

end A266298

/-! ## A266298.P15009914951849380644

`char[∑[char[2*n]]²-n]`
-/

namespace A266298.P15009914951849380644
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A266298.P15009914951849380644

namespace A266298

/-- `char[∑[char[2*n]]²-n]` -/
def P15009914951849380644.Spec : Prop :=
  ∀ n, (P15009914951849380644.a n : ℤ) = A266298 n

end A266298

/-! ## A266298.P6696412190322879374

`C(abs((-1)^n), n-floor(sqrt(n))²)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266298

/-- `C(abs((-1)^n), n-floor(sqrt(n))²)` -/
def P6696412190322879374.Spec : Prop :=
  ∀ n, (P6696412190322879374.a n : ℤ) = A266298 n

theorem P6696412190322879374.correct : P6696412190322879374.Spec := by
  intro n
  simp only [A266298]

end A266298

/-! ## A266298.P6805823496870022974

`round(1/A249111(n))`
-/

namespace A266298.P6805823496870022974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A249111 n : ℚ))

end

end A266298.P6805823496870022974

namespace A266298

/-- `round(1/A249111(n))` -/
def P6805823496870022974.Spec : Prop :=
  ∀ n, P6805823496870022974.a n = A266298 n

end A266298

/-! ## A266298.P11400376084995341664

`round(1/A249307(n))`
-/

namespace A266298.P11400376084995341664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A249307 n : ℚ))

end

end A266298.P11400376084995341664

namespace A266298

/-- `round(1/A249307(n))` -/
def P11400376084995341664.Spec : Prop :=
  ∀ n, P11400376084995341664.a n = A266298 n

end A266298

/-! ## A266298.P18208625291084949172

`floor(γ^A308778(n))`
-/

namespace A266298.P18208625291084949172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant ^ (A308778 n : ℤ)⌋

end

end A266298.P18208625291084949172

namespace A266298

/-- `floor(γ^A308778(n))` -/
def P18208625291084949172.Spec : Prop :=
  ∀ n, P18208625291084949172.a n = A266298 n

end A266298

/-! ## A266298.P549838649790489367

`(Δ[A267621(n)]^n)²`
-/

namespace A266298.P549838649790489367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ n) ^ 2

end

end A266298.P549838649790489367

namespace A266298

/-- `(Δ[A267621(n)]^n)²` -/
def P549838649790489367.Spec : Prop :=
  ∀ n, P549838649790489367.a n = A266298 n

end A266298

/-! ## A266298.P1601159989437082556

`round(1/A071797(n+1))`
-/

namespace A266298.P1601159989437082556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A071797 (n + 1) : ℚ))

end

end A266298.P1601159989437082556

namespace A266298

/-- `round(1/A071797(n+1))` -/
def P1601159989437082556.Spec : Prop :=
  ∀ n, P1601159989437082556.a n = A266298 n

end A266298

/-! ## A266298.P9284113730214791017

`char[n²]+char[A133128(n)]`
-/

namespace A266298.P9284113730214791017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A266298.P9284113730214791017

namespace A266298

/-- `char[n²]+char[A133128(n)]` -/
def P9284113730214791017.Spec : Prop :=
  ∀ n, (P9284113730214791017.a n : ℤ) = A266298 n

end A266298

/-! ## A266298.P13914716841444692712

`or(char[n²], char[A002522(n)])`
-/

namespace A266298.P13914716841444692712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A266298.P13914716841444692712

namespace A266298

/-- `or(char[n²], char[A002522(n)])` -/
def P13914716841444692712.Spec : Prop :=
  ∀ n, (P13914716841444692712.a n : ℤ) = A266298 n

end A266298

/-! ## A266298.P8297158278542204534

`(1-A267520(n+1))^n`
-/

namespace A266298.P8297158278542204534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A267520 (n + 1)) ^ n

end

end A266298.P8297158278542204534

namespace A266298

/-- `(1-A267520(n+1))^n` -/
def P8297158278542204534.Spec : Prop :=
  ∀ n, P8297158278542204534.a n = A266298 n

end A266298

/-! ## A266298.P12886803297284067266

`A267006((2*n)%(n+2))`
-/

namespace A266298.P12886803297284067266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267006 (2 * n % (n + 2))

end

end A266298.P12886803297284067266

namespace A266298

/-- `A267006((2*n)%(n+2))` -/
def P12886803297284067266.Spec : Prop :=
  ∀ n, P12886803297284067266.a n = A266298 n

end A266298

/-! ## A266298.P17565146573460090870

`A010052(n-a(n-1))` with `a(0)=1`
-/

namespace A266298.P17565146573460090870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010052 ((n : ℤ) - a (n - 1)).toNat

end

end A266298.P17565146573460090870

namespace A266298

/-- `A010052(n-a(n-1))` -/
def P17565146573460090870.Spec : Prop :=
  ∀ n, P17565146573460090870.a n = A266298 n

end A266298

/-! ## A266298.P16161220108367090345

`2-A169695(n-a(n-1))` with `a(0)=1`
-/

namespace A266298.P16161220108367090345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - A169695 ((n : ℤ) - a (n - 1)).toNat

end

end A266298.P16161220108367090345

namespace A266298

/-- `2-A169695(n-a(n-1))` -/
def P16161220108367090345.Spec : Prop :=
  ∀ n, P16161220108367090345.a n = A266298 n

end A266298

/-! ## A266298.P11269068399381112338

`and(1, A000005(n-a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A266298.P11269068399381112338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.land 1 (A000005 ((n : ℤ) - a (n - 1)).toNat)

end

end A266298.P11269068399381112338

namespace A266298

/-- `and(1, A000005(n-a(n-1)))` -/
def P11269068399381112338.Spec : Prop :=
  ∀ n, P11269068399381112338.a n = A266298 n

end A266298

/-! ## A266298.P4762377874410026881

`A267006(A289207(n))`
-/

namespace A266298.P4762377874410026881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267006 (A289207 n).toNat

end

end A266298.P4762377874410026881

namespace A266298

/-- `A267006(A289207(n))` -/
def P4762377874410026881.Spec : Prop :=
  ∀ n, P4762377874410026881.a n = A266298 n

end A266298

/-! ## A266298.P3908806559435503236

`A154272(A169782(n+1))`
-/

namespace A266298.P3908806559435503236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (A169782 (n + 1)).toNat

end

end A266298.P3908806559435503236

namespace A266298

/-- `A154272(A169782(n+1))` -/
def P3908806559435503236.Spec : Prop :=
  ∀ n, P3908806559435503236.a n = A266298 n

end A266298

/-! ## A266298.P8787858642768278714

`A010052(n-A068527(n))`
-/

namespace A266298.P8787858642768278714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) - A068527 n).toNat

end

end A266298.P8787858642768278714

namespace A266298

/-- `A010052(n-A068527(n))` -/
def P8787858642768278714.Spec : Prop :=
  ∀ n, P8787858642768278714.a n = A266298 n

end A266298

/-!
# A266299: Binary representation of the n-th iteration of the "Rule 14" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266299, the canonical program `A266299.P15328036410869258359` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266299 has offset 0).

The definition of A266299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266299.P15328036410869258359

`100*a(n-1)` with `a(0)=1, a(1)=110`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266299

/-- `100*a(n-1)` -/
def P15328036410869258359.Spec : Prop :=
  ∀ n, (P15328036410869258359.a n : ℤ) = A266299 n

theorem P15328036410869258359.correct : P15328036410869258359.Spec := by
  intro n
  simp only [A266299]

end A266299

/-! ## A266299.P17340513827920747429

`floor(110*100^(n-1))`
-/

namespace A266299.P17340513827920747429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊110 * (100 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A266299.P17340513827920747429

namespace A266299

/-- `floor(110*100^(n-1))` -/
def P17340513827920747429.Spec : Prop :=
  ∀ n, P17340513827920747429.a n = A266299 n

end A266299

/-! ## A266299.P14929232457666228619

`A003953(2*n)`
-/

namespace A266299.P14929232457666228619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 (2 * n)

end

end A266299.P14929232457666228619

namespace A266299

/-- `A003953(2*n)` -/
def P14929232457666228619.Spec : Prop :=
  ∀ n, P14929232457666228619.a n = A266299 n

end A266299

/-! ## A266299.P17136791332066647189

`A280368(2*n)`
-/

namespace A266299.P17136791332066647189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280368 (2 * n)

end

end A266299.P17136791332066647189

namespace A266299

/-- `A280368(2*n)` -/
def P17136791332066647189.Spec : Prop :=
  ∀ n, P17136791332066647189.a n = A266299 n

end A266299

/-! ## A266299.P9559092381290027444

`A282003(2*n)`
-/

namespace A266299.P9559092381290027444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282003 (2 * n)

end

end A266299.P9559092381290027444

namespace A266299

/-- `A282003(2*n)` -/
def P9559092381290027444.Spec : Prop :=
  ∀ n, P9559092381290027444.a n = A266299 n

end A266299

/-! ## A266299.P8270298641446150998

`round(A133383(n)/10)`
-/

namespace A266299.P8270298641446150998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A133383 n : ℚ) / 10)

end

end A266299.P8270298641446150998

namespace A266299

/-- `round(A133383(n)/10)` -/
def P8270298641446150998.Spec : Prop :=
  ∀ n, P8270298641446150998.a n = A266299 n

end A266299

/-! ## A266299.P8588508721065985946

`A281366(8*n+1)`
-/

namespace A266299.P8588508721065985946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281366 (8 * n + 1)

end

end A266299.P8588508721065985946

namespace A266299

/-- `A281366(8*n+1)` -/
def P8588508721065985946.Spec : Prop :=
  ∀ n, P8588508721065985946.a n = A266299 n

end A266299

/-! ## A266299.P6200935261365582750

`record[A280368(abs(3-n))]`
-/

namespace A266299.P6200935261365582750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280368 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266299.P6200935261365582750

namespace A266299

/-- `record[A280368(abs(3-n))]` -/
def P6200935261365582750.Spec : Prop :=
  ∀ n, P6200935261365582750.a n = A266299 n

end A266299

/-! ## A266299.P6093366810663839234

`A164851(n*Δ[n²])`
-/

namespace A266299.P6093366810663839234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164851 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A266299.P6093366810663839234

namespace A266299

/-- `A164851(n*Δ[n²])` -/
def P6093366810663839234.Spec : Prop :=
  ∀ n, P6093366810663839234.a n = A266299 n

end A266299

/-! ## A266299.P9876193891849516446

`A109868(3*n+n+1)`
-/

namespace A266299.P9876193891849516446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109868 (3 * n + (n + 1))

end

end A266299.P9876193891849516446

namespace A266299

/-- `A109868(3*n+n+1)` -/
def P9876193891849516446.Spec : Prop :=
  ∀ n, P9876193891849516446.a n = A266299 n

end A266299

