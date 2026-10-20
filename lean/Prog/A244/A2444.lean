import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
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
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C025

/-!
# A244400: Number of unlabeled rooted trees with n nodes and maximal outdegree (branching factor) 4.

The programs for A244400, there is no canonical definition to state claims against.
-/

/-! ## A244400.P9377262474566347371

`A036718(n+5)-A000598(n+5)`
-/

namespace A244400.P9377262474566347371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036718 (n + 5) - A000598 (n + 5)

end

end A244400.P9377262474566347371

/-! ## A244400.P13233507445916126378

`record[A244372(∑[n]+5)]`
-/

namespace A244400.P13233507445916126378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244400.P13233507445916126378

/-! ## A244400.P2322144625130686580

`A244372(A167499(n+3))`
-/

namespace A244400.P2322144625130686580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167499 (n + 3)).toNat

end

end A244400.P2322144625130686580

/-! ## A244400.P8030713625279021052

`A244372(A167614(n+3)+2)`
-/

namespace A244400.P8030713625279021052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167614 (n + 3) + 2).toNat

end

end A244400.P8030713625279021052

/-! ## A244400.P1753494660457807725

`A244372(A055998(n+2)+8)`
-/

namespace A244400.P1753494660457807725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A055998 (n + 2) + 8).toNat

end

end A244400.P1753494660457807725

/-! ## A244400.P11805362608780809024

`A244372(eq[4, A002262(n)]+1)`
-/

namespace A244400.P11805362608780809024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244400.P11805362608780809024

/-! ## A244400.P11453655476818342472

`A244372(Δ[A008778(n+1)]+7)`
-/

namespace A244400.P11453655476818342472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (f1 (n + 1) - f1 n + 7).toNat

end

end A244400.P11453655476818342472

/-!
# A244401: Number of unlabeled rooted trees with n nodes and maximal outdegree (branching factor) 5.

The programs for A244401, there is no canonical definition to state claims against.
-/

/-! ## A244401.P9779777837740871168

`A036721(n+6)-A036718(n+6)`
-/

namespace A244401.P9779777837740871168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036721 (n + 6) - A036718 (n + 6)

end

end A244401.P9779777837740871168

/-! ## A244401.P6606632834323871353

`A244372(∑[n+5]+16)`
-/

namespace A244401.P6606632834323871353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A244401.P6606632834323871353

/-! ## A244401.P2988981679675687004

`record[A244372(A000124(n)+5)]`
-/

namespace A244401.P2988981679675687004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A000124 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244401.P2988981679675687004

/-! ## A244401.P7341377309058694695

`record[A244372(A000217(n)+6)]`
-/

namespace A244401.P7341377309058694695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A000217 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244401.P7341377309058694695

/-! ## A244401.P17174254107417471606

`record[A054527(n+1)*A244372(n+1)]`
-/

namespace A244401.P17174254107417471606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A244372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244401.P17174254107417471606

/-! ## A244401.P3397330525213034430

`record[A244372(A038722(A052905(n)))]`
-/

namespace A244401.P3397330525213034430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A038722 (A052905 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244401.P3397330525213034430

/-! ## A244401.P4649499986172124006

`record[A244372(A167614(n+1)-A005843(n))]`
-/

namespace A244401.P4649499986172124006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167614 (n + 1) - A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244401.P4649499986172124006

/-!
# A244402: Number of unlabeled rooted trees with n nodes and maximal outdegree (branching factor) 6.

The programs for A244402, there is no canonical definition to state claims against.
-/

/-! ## A244402.P5102277712962743809

`A036722(n+7)-A036721(n+7)`
-/

namespace A244402.P5102277712962743809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036722 (n + 7) - A036721 (n + 7)

end

end A244402.P5102277712962743809

/-! ## A244402.P8561584437863318639

`A244372(A167487(n+5))`
-/

namespace A244402.P8561584437863318639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167487 (n + 5)).toNat

end

end A244402.P8561584437863318639

/-! ## A244402.P4868279207108145112

`A244372(A167499(n+5)+2)`
-/

namespace A244402.P4868279207108145112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167499 (n + 5) + 2).toNat

end

end A244402.P4868279207108145112

/-! ## A244402.P6555203614042842213

`A244372(A077169(n+7)+2)`
-/

namespace A244402.P6555203614042842213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A077169 (n + 7) + 2).toNat

end

end A244402.P6555203614042842213

/-! ## A244402.P10286952860617405052

`A244372(A000217(n+6)+7)`
-/

namespace A244402.P10286952860617405052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A000217 (n + 6) + 7).toNat

end

end A244402.P10286952860617405052

/-! ## A244402.P15549620988268318968

`A244372(Δ[A023551(n+1)]+13)`
-/

namespace A244402.P15549620988268318968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (f1 (n + 1) - f1 n + 13).toNat

end

end A244402.P15549620988268318968

/-! ## A244402.P14230838513253394885

`A244372(A167614(n+9)-A016825(n+7))`
-/

namespace A244402.P14230838513253394885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167614 (n + 9) - A016825 (n + 7)).toNat

end

end A244402.P14230838513253394885

/-!
# A244403: Number of unlabeled rooted trees with n nodes and maximal outdegree (branching factor) 7.

The programs for A244403, there is no canonical definition to state claims against.
-/

/-! ## A244403.P1356016882628044587

`A182378(n+8)-A036722(n+8)`
-/

namespace A244403.P1356016882628044587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182378 (n + 8) - A036722 (n + 8)

end

end A244403.P1356016882628044587

/-! ## A244403.P1235986884707090272

`A244372(A000217(n+7)+8)`
-/

namespace A244403.P1235986884707090272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A000217 (n + 7) + 8).toNat

end

end A244403.P1235986884707090272

/-! ## A244403.P11860202876495355401

`A244372(n+10+A077169(n+7))`
-/

namespace A244403.P11860202876495355401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 ((n + 10 : ℤ) + A077169 (n + 7)).toNat

end

end A244403.P11860202876495355401

/-! ## A244403.P8422362142853439420

`A244372(A133263(n+8)+A001489(n+2))`
-/

namespace A244403.P8422362142853439420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A133263 (n + 8) + A001489 (n + 2)).toNat

end

end A244403.P8422362142853439420

/-! ## A244403.P6915189374678679906

`A244372(A000124(n+9)-A005843(n+5))`
-/

namespace A244403.P6915189374678679906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A000124 (n + 9) - A005843 (n + 5)).toNat

end

end A244403.P6915189374678679906

/-!
# A244404: Number of unlabeled rooted trees with n nodes and maximal outdegree (branching factor) 8.

The programs for A244404, there is no canonical definition to state claims against.
-/

/-! ## A244404.P14780061205392813837

`A292553(n+9)-A182378(n+9)`
-/

namespace A244404.P14780061205392813837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292553 (n + 9) - A182378 (n + 9)

end

end A244404.P14780061205392813837

/-! ## A244404.P15653384970202534319

`A244372(A077169(n+9)+4)`
-/

namespace A244404.P15653384970202534319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A077169 (n + 9) + 4).toNat

end

end A244404.P15653384970202534319

/-! ## A244404.P16169970000090055486

`A244372(A000217(n+8)+9)`
-/

namespace A244404.P16169970000090055486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A000217 (n + 8) + 9).toNat

end

end A244404.P16169970000090055486

/-! ## A244404.P946652826225448056

`A244372(A133263(n+9)+A001489(n+2))`
-/

namespace A244404.P946652826225448056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A133263 (n + 9) + A001489 (n + 2)).toNat

end

end A244404.P946652826225448056

/-! ## A244404.P2293643991476517504

`A244372(A016789(n+9)+A000124(n+5))`
-/

namespace A244404.P2293643991476517504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A016789 (n + 9) + A000124 (n + 5)).toNat

end

end A244404.P2293643991476517504

/-!
# A244405: Number of unlabeled rooted trees with n nodes and maximal outdegree (branching factor) 9.

The programs for A244405, there is no canonical definition to state claims against.
-/

/-! ## A244405.P3970585906917829569

`A292554(n+10)-A292553(n+10)`
-/

namespace A244405.P3970585906917829569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292554 (n + 10) - A292553 (n + 10)

end

end A244405.P3970585906917829569

/-! ## A244405.P3729149518940530161

`A244372(A077169(n+10)+5)`
-/

namespace A244405.P3729149518940530161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A077169 (n + 10) + 5).toNat

end

end A244405.P3729149518940530161

/-! ## A244405.P3766436578721386126

`A244372(A133263(n+9)+8)`
-/

namespace A244405.P3766436578721386126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A133263 (n + 9) + 8).toNat

end

end A244405.P3766436578721386126

/-! ## A244405.P14689148531163528108

`A244372(A167499(n+5)+A016789(n+9))`
-/

namespace A244405.P14689148531163528108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167499 (n + 5) + A016789 (n + 9)).toNat

end

end A244405.P14689148531163528108

/-! ## A244405.P16234180501163704567

`A244372(A055999(n+9)-A016789(n+5))`
-/

namespace A244405.P16234180501163704567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A055999 (n + 9) - A016789 (n + 5)).toNat

end

end A244405.P16234180501163704567

/-!
# A244406: Number of unlabeled rooted trees with n nodes and maximal outdegree (branching factor) 10.

The programs for A244406, there is no canonical definition to state claims against.
-/

/-! ## A244406.P735831749147568177

`A292555(n+11)-A292554(n+11)`
-/

namespace A244406.P735831749147568177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292555 (n + 11) - A292554 (n + 11)

end

end A244406.P735831749147568177

/-! ## A244406.P10667795573274589715

`A244372(eq[19, A066657(n)])`
-/

namespace A244406.P10667795573274589715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244406.P10667795573274589715

/-! ## A244406.P13357774812412093486

`A244372(A077169(n+11)+6)`
-/

namespace A244406.P13357774812412093486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A077169 (n + 11) + 6).toNat

end

end A244406.P13357774812412093486

/-! ## A244406.P8393153725972782973

`A244372(eq[12, A131818(n+1)])`
-/

namespace A244406.P8393153725972782973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244406.P8393153725972782973

/-! ## A244406.P2282295958582004156

`A244372(A167614(n+13)-A016825(n+10))`
-/

namespace A244406.P2282295958582004156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167614 (n + 13) - A016825 (n + 10)).toNat

end

end A244406.P2282295958582004156

/-!
# A244407: Number of unlabeled rooted trees with 2n nodes and maximal outdegree (branching factor) n.

The programs for A244407, there is no canonical definition to state claims against.
-/

/-! ## A244407.P12132533979381922373

`A244410(n)+1-floor(acot(n))`
-/

namespace A244407.P12132533979381922373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244410 n + 1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A244407.P12132533979381922373

/-! ## A244407.P14993799189463016734

`A244410(n)+A057427(n)`
-/

namespace A244407.P14993799189463016734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244410 n + A057427 n

end

end A244407.P14993799189463016734

/-! ## A244407.P4983768627129308590

`A244410(n)-A057428(n)`
-/

namespace A244407.P4983768627129308590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244410 n - A057428 n

end

end A244407.P4983768627129308590

/-! ## A244407.P10547740407515533832

`A244410(n)+char[A331300(n)]`
-/

namespace A244407.P10547740407515533832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244410 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244407.P10547740407515533832

/-! ## A244407.P18038282015877607670

`A323022(2*n+1)+A244410(n)`
-/

namespace A244407.P18038282015877607670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (2 * n + 1) + A244410 n

end

end A244407.P18038282015877607670

/-! ## A244407.P8677434025049874126

`A244410(n)+A162642(A008578(n+1))`
-/

namespace A244407.P8677434025049874126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244410 n + A162642 (A008578 (n + 1)).toNat

end

end A244407.P8677434025049874126

/-! ## A244407.P488872905220389930

`A244372(2*(n+1)²+1)`
-/

namespace A244407.P488872905220389930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (2 * (n + 1) ^ 2 + 1)

end

end A244407.P488872905220389930

/-! ## A244407.P5162792079194840759

`record[A244372(A167614(2*n+1)-n)]`
-/

namespace A244407.P5162792079194840759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167614 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244407.P5162792079194840759

/-!
# A244408: Even numbers 2k such that the smallest prime p satisfying p+q=2k (q prime) is greater than or equal to sqrt(2k).

The programs for A244408, there is no canonical definition to state claims against.
-/

/-! ## A244408.P9759845760160048920

`∩[A273457(n+1), A279040(n+1)]`
-/

namespace A244408.P9759845760160048920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244408.P9759845760160048920

/-! ## A244408.P8917918192787756221

`∩[A273457(n+1), A307542(n+1)]`
-/

namespace A244408.P8917918192787756221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244408.P8917918192787756221

/-! ## A244408.P8489198118780511940

`∩[A305462(n+1), A307542(n+1)]`
-/

namespace A244408.P8489198118780511940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244408.P8489198118780511940

/-! ## A244408.P5957228633326423916

`filter[A307542(n+1), A365261(#)]`
-/

namespace A244408.P5957228633326423916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365261 (f1 j).toNat = 1) n)

end

end A244408.P5957228633326423916

/-! ## A244408.P14912913957578340726

`∩[A084563(n+1), A178549(n+1)]`
-/

namespace A244408.P14912913957578340726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244408.P14912913957578340726

/-!
# A244410: Number of unlabeled rooted trees with 2n+1 nodes and maximal outdegree (branching factor) n.

The programs for A244410, there is no canonical definition to state claims against.
-/

/-! ## A244410.P11530855550535651882

`A244407(n+1)-ceil(sin(n)²)`
-/

namespace A244410.P11530855550535651882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244407 (n + 1) - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A244410.P11530855550535651882

/-! ## A244410.P13678547516572089458

`A244407(n+1)+A057428(n)`
-/

namespace A244410.P13678547516572089458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244407 (n + 1) + A057428 n

end

end A244410.P13678547516572089458

/-! ## A244410.P9079901609280512618

`A244407(n+1)-A057427(n)`
-/

namespace A244410.P9079901609280512618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244407 (n + 1) - A057427 n

end

end A244410.P9079901609280512618

/-! ## A244410.P7108190274284434503

`A244407(n+1)-A019425(2*n)`
-/

namespace A244410.P7108190274284434503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244407 (n + 1) - A019425 (2 * n)

end

end A244410.P7108190274284434503

/-! ## A244410.P7884716136339046392

`ceil(A244407(n+1)-atan(A244405(n)))`
-/

namespace A244410.P7884716136339046392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A244407 (n + 1) : ℝ) - Real.arctan (A244405 (n + 10) : ℝ)⌉

end

end A244410.P7884716136339046392

/-! ## A244410.P1512835663612887910

`ceil(A244407(n+1)-atan(A244406(n)))`
-/

namespace A244410.P1512835663612887910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A244407 (n + 1) : ℝ) - Real.arctan (A244406 (n + 11) : ℝ)⌉

end

end A244410.P1512835663612887910

/-! ## A244410.P5309069222175683180

`ceil(A244407(n+1)-atan(A244400(n+5)))`
-/

namespace A244410.P5309069222175683180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A244407 (n + 1) : ℝ) - Real.arctan (A244400 (n + 5) : ℝ)⌉

end

end A244410.P5309069222175683180

/-! ## A244410.P10499531073881881478

`ceil(A244407(n+1)-atan(A244402(n+7)))`
-/

namespace A244410.P10499531073881881478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A244407 (n + 1) : ℝ) - Real.arctan (A244402 (n + 7) : ℝ)⌉

end

end A244410.P10499531073881881478

/-! ## A244410.P14530304957478725990

`A244407(n+1)-A033264(A001316(n))`
-/

namespace A244410.P14530304957478725990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244407 (n + 1) - A033264 (A001316 n).toNat

end

end A244410.P14530304957478725990

/-! ## A244410.P13436337890021102104

`A244407(n+1)-A008617(A033716(n))`
-/

namespace A244410.P13436337890021102104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244407 (n + 1) - A008617 (A033716 n).toNat

end

end A244410.P13436337890021102104

/-! ## A244410.P16777219079666644178

`A244407(n+1)-A019425(A019425(n))²`
-/

namespace A244410.P16777219079666644178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244407 (n + 1) - A019425 (A019425 n).toNat ^ 2

end

end A244410.P16777219079666644178

/-!
# A244411: Nonprimes n such that the product of its divisors is a palindrome.

The programs for A244411, there is no canonical definition to state claims against.
-/

/-! ## A244411.P7250718936949966906

`filter[A327325(n+1), A005171(#)]`
-/

namespace A244411.P7250718936949966906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A244411.P7250718936949966906

/-! ## A244411.P11064585670849350509

`∩[A018252(n+1), A327325(n+1)]`
-/

namespace A244411.P11064585670849350509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244411.P11064585670849350509

/-! ## A244411.P4657096856158649807

`∩[A141468(n+1), A327325(n+1)]`
-/

namespace A244411.P4657096856158649807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244411.P4657096856158649807

/-! ## A244411.P4280939237744849117

`∩[A233182(n+1), A327325(n+1)]`
-/

namespace A244411.P4280939237744849117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244411.P4280939237744849117

/-! ## A244411.P9853216442674059129

`∩[A240938(n+1), A327325(n+1)]`
-/

namespace A244411.P9853216442674059129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244411.P9853216442674059129

/-!
# A244412: Least even k such that sfdf(k-1) > sfdf(k-3) >= A050376(n), where sfdf(n) is the smallest Fermi-Dirac factor of n (A223490), and k-3 is not the lesser of a pair of Fermi-Dirac twin primes (A229064).

The programs for A244412, there is no canonical definition to state claims against.
-/

/-! ## A244412.P11233212760062739437

`A141104(or(7, A056781(2*n+5)))`
-/

namespace A244412.P11233212760062739437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141104 (Int.lor 7 (A056781 (2 * n + 5))).toNat

end

end A244412.P11233212760062739437

/-!
# A244413: Exponent of highest power of 8 dividing n.

The programs for A244413, the canonical program `A244413.P15140388949722106205` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244413 has offset 1).

The definition of A244413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244413.P16805539506096520747

`val(n+1, 8)`
-/

namespace A244413.P16805539506096520747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 8

end

end A244413.P16805539506096520747

namespace A244413

/-- `val(n+1, 8)` -/
def P16805539506096520747.Spec : Prop :=
  ∀ n, (P16805539506096520747.a n : ℤ) = A244413 (n + 1)

end A244413

/-! ## A244413.P15140388949722106205

`floor(A007814(n+1)/3)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A244413

/-- `floor(A007814(n+1)/3)` -/
def P15140388949722106205.Spec : Prop :=
  ∀ n, P15140388949722106205.a n = A244413 (n + 1)

theorem P15140388949722106205.correct : P15140388949722106205.Spec := by
  intro n
  simp only [A244413, Nat.add_sub_cancel]

end A244413

/-! ## A244413.P8705208022606947493

`floor(floor(log2(xor(n, n+1)))/3)`
-/

namespace A244413.P8705208022606947493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.log 2 (Nat.xor n (n + 1)) : ℚ) / 3⌋

end

end A244413.P8705208022606947493

namespace A244413

/-- `floor(floor(log2(xor(n, n+1)))/3)` -/
def P8705208022606947493.Spec : Prop :=
  ∀ n, P8705208022606947493.a n = A244413 (n + 1)

end A244413

/-! ## A244413.P4453326277073228528

`floor(log2(and(n+1, -(n+1)))/3)`
-/

namespace A244413.P4453326277073228528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) / 3⌋

end

end A244413.P4453326277073228528

namespace A244413

/-- `floor(log2(and(n+1, -(n+1)))/3)` -/
def P4453326277073228528.Spec : Prop :=
  ∀ n, P4453326277073228528.a n = A244413 (n + 1)

end A244413

/-! ## A244413.P12244724130753973245

`floor(∑{e}[or(n, n+1)-n, #]/3)`
-/

namespace A244413.P12244724130753973245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) / 3⌋

end

end A244413.P12244724130753973245

namespace A244413

/-- `floor(∑{e}[or(n, n+1)-n, #]/3)` -/
def P12244724130753973245.Spec : Prop :=
  ∀ n, P12244724130753973245.a n = A244413 (n + 1)

end A244413

/-! ## A244413.P14777046726026039274

`floor(∑{e}[and(n+1, -(n+1)), #]/3)`
-/

namespace A244413.P14777046726026039274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) / 3⌋

end

end A244413.P14777046726026039274

namespace A244413

/-- `floor(∑{e}[and(n+1, -(n+1)), #]/3)` -/
def P14777046726026039274.Spec : Prop :=
  ∀ n, P14777046726026039274.a n = A244413 (n + 1)

end A244413

/-! ## A244413.P12408266401186917980

`floor(∑{e}[or(n+1, -(n+1)), #]/3)`
-/

namespace A244413.P12408266401186917980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) / 3⌋

end

end A244413.P12408266401186917980

namespace A244413

/-- `floor(∑{e}[or(n+1, -(n+1)), #]/3)` -/
def P12408266401186917980.Spec : Prop :=
  ∀ n, P12408266401186917980.a n = A244413 (n + 1)

end A244413

/-! ## A244413.P4324317144442777841

`Δ[A054897(n)]`
-/

namespace A244413.P4324317144442777841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244413.P4324317144442777841

namespace A244413

/-- `Δ[A054897(n)]` -/
def P4324317144442777841.Spec : Prop :=
  ∀ n, P4324317144442777841.a n = A244413 (n + 1)

end A244413

/-! ## A244413.P5376583378373686755

`A002264(A007814(n+1))`
-/

namespace A244413.P5376583378373686755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A007814 (n + 1)).toNat

end

end A244413.P5376583378373686755

namespace A244413

/-- `A002264(A007814(n+1))` -/
def P5376583378373686755.Spec : Prop :=
  ∀ n, P5376583378373686755.a n = A244413 (n + 1)

end A244413

/-! ## A244413.P10067187839851843271

`dr(val(A252753(n), 8))`
-/

namespace A244413.P10067187839851843271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (A252753 n).toNat 8 : ℤ)

end

end A244413.P10067187839851843271

namespace A244413

/-- `dr(val(A252753(n), 8))` -/
def P10067187839851843271.Spec : Prop :=
  ∀ n, (P10067187839851843271.a n : ℤ) = A244413 (n + 1)

end A244413

/-!
# A244414: Remove highest power of 6 from n.

The programs for A244414, the canonical program `A244414.P9557456514228864545` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244414 has offset 1).

The definition of A244414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244414.P9557456514228864545

`(n+1)/6^val(n+1, 6)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244414

/-- `(n+1)/6^val(n+1, 6)` -/
def P9557456514228864545.Spec : Prop :=
  ∀ n, P9557456514228864545.a n = (A244414 (n + 1) : ℚ)

end A244414

/-! ## A244414.P12393135866553465561

`(n+1)/6^A122841(n+1)`
-/

namespace A244414.P12393135866553465561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (6 : ℚ) ^ (A122841 (n + 1) : ℤ)

end

end A244414.P12393135866553465561

namespace A244414

/-- `(n+1)/6^A122841(n+1)` -/
def P12393135866553465561.Spec : Prop :=
  ∀ n, P12393135866553465561.a n = (A244414 (n + 1) : ℚ)

end A244414

/-! ## A244414.P2166067385509519414

`(n+1)*6^-val(n+1, 6)`
-/

namespace A244414.P2166067385509519414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (6 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 6 : ℤ) : ℤ)

end

end A244414.P2166067385509519414

namespace A244414

/-- `(n+1)*6^-val(n+1, 6)` -/
def P2166067385509519414.Spec : Prop :=
  ∀ n, P2166067385509519414.a n = (A244414 (n + 1) : ℚ)

end A244414

/-! ## A244414.P15256188435204034385

`(n+1)/A234959(n+1)`
-/

namespace A244414.P15256188435204034385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A234959 (n + 1) : ℚ)

end

end A244414.P15256188435204034385

namespace A244414

/-- `(n+1)/A234959(n+1)` -/
def P15256188435204034385.Spec : Prop :=
  ∀ n, P15256188435204034385.a n = (A244414 (n + 1) : ℚ)

end A244414

/-! ## A244414.P2578077897269637691

`gcd(n+1, A373397(n+1))`
-/

namespace A244414.P2578077897269637691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A373397 (n + 1))

end

end A244414.P2578077897269637691

namespace A244414

/-- `gcd(n+1, A373397(n+1))` -/
def P2578077897269637691.Spec : Prop :=
  ∀ n, (P2578077897269637691.a n : ℤ) = A244414 (n + 1)

end A244414

/-! ## A244414.P11804809344223990496

`(n+1)/A000400(val(n+1, 6))`
-/

namespace A244414.P11804809344223990496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000400 (SequenceMachineLib.valuation (n + 1) 6) : ℚ)

end

end A244414.P11804809344223990496

namespace A244414

/-- `(n+1)/A000400(val(n+1, 6))` -/
def P11804809344223990496.Spec : Prop :=
  ∀ n, P11804809344223990496.a n = (A244414 (n + 1) : ℚ)

end A244414

/-! ## A244414.P14051684396322854157

`(n+1)/A214681(A065331(n+1))`
-/

namespace A244414.P14051684396322854157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214681 (A065331 (n + 1)).toNat : ℚ)

end

end A244414.P14051684396322854157

namespace A244414

/-- `(n+1)/A214681(A065331(n+1))` -/
def P14051684396322854157.Spec : Prop :=
  ∀ n, P14051684396322854157.a n = (A244414 (n + 1) : ℚ)

end A244414

/-! ## A244414.P13388432876976682278

`(n+1)/A244416(A318668(n+1))`
-/

namespace A244414.P13388432876976682278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A244416 (A318668 (n + 1)).toNat : ℚ)

end

end A244414.P13388432876976682278

namespace A244414

/-- `(n+1)/A244416(A318668(n+1))` -/
def P13388432876976682278.Spec : Prop :=
  ∀ n, P13388432876976682278.a n = (A244414 (n + 1) : ℚ)

end A244414

/-! ## A244414.P18433676869106730633

`(n+1)/A025610(A322316(A214681(n+1)))`
-/

namespace A244414.P18433676869106730633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A025610 (A322316 (A214681 (n + 1)).toNat).toNat : ℚ)

end

end A244414.P18433676869106730633

namespace A244414

/-- `(n+1)/A025610(A322316(A214681(n+1)))` -/
def P18433676869106730633.Spec : Prop :=
  ∀ n, P18433676869106730633.a n = (A244414 (n + 1) : ℚ)

end A244414

/-! ## A244414.P12046997256926820436

`A030105(A030105(n+1))`
-/

namespace A244414.P12046997256926820436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A030105 (n + 1)).toNat

end

end A244414.P12046997256926820436

namespace A244414

/-- `A030105(A030105(n+1))` -/
def P12046997256926820436.Spec : Prop :=
  ∀ n, P12046997256926820436.a n = A244414 (n + 1)

end A244414

/-! ## A244414.P1251012817231132408

`(n+1)/ratio[A243758(n)]`
-/

namespace A244414.P1251012817231132408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243758 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A244414.P1251012817231132408

namespace A244414

/-- `(n+1)/ratio[A243758(n)]` -/
def P1251012817231132408.Spec : Prop :=
  ∀ n, P1251012817231132408.a n = (A244414 (n + 1) : ℚ)

end A244414

/-! ## A244414.P7469628396036907760

`(n+1)/ratio[6^A054895(n)]`
-/

namespace A244414.P7469628396036907760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A054895 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (f1 (n + 1) / f1 n)

end

end A244414.P7469628396036907760

namespace A244414

/-- `(n+1)/ratio[6^A054895(n)]` -/
def P7469628396036907760.Spec : Prop :=
  ∀ n, P7469628396036907760.a n = (A244414 (n + 1) : ℚ)

end A244414

/-! ## A244414.P15571378820151641181

`(n+1)/A254730(∑[n+2]-1)`
-/

namespace A244414.P15571378820151641181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A254730 (∑ j ∈ Finset.range (n + 1), f1 j - 1) : ℚ)

end

end A244414.P15571378820151641181

namespace A244414

/-- `(n+1)/A254730(∑[n+2]-1)` -/
def P15571378820151641181.Spec : Prop :=
  ∀ n, P15571378820151641181.a n = (A244414 (n + 1) : ℚ)

end A244414

/-!
# A244415: Exponent of 4 appearing in the 4-adic value of 1/n, n >= 1, given in A240226(n).

The programs for A244415, the canonical program `A244415.P7443176824636667809` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244415 has offset 1).

The definition of A244415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244415.P7443176824636667809

`val(2*(n+1), 4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244415

/-- `val(2*(n+1), 4)` -/
def P7443176824636667809.Spec : Prop :=
  ∀ n, (P7443176824636667809.a n : ℤ) = A244415 (n + 1)

theorem P7443176824636667809.correct : P7443176824636667809.Spec := by
  intro n
  simp only [A244415, Nat.add_sub_cancel]

end A244415

/-! ## A244415.P17511159693726633035

`ceil(val(n+1, 2)/2)`
-/

namespace A244415.P17511159693726633035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2⌉

end

end A244415.P17511159693726633035

namespace A244415

/-- `ceil(val(n+1, 2)/2)` -/
def P17511159693726633035.Spec : Prop :=
  ∀ n, P17511159693726633035.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P11612395173651779073

`round(val(n+1, 2)/2)`
-/

namespace A244415.P11612395173651779073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2)

end

end A244415.P11612395173651779073

namespace A244415

/-- `round(val(n+1, 2)/2)` -/
def P11612395173651779073.Spec : Prop :=
  ∀ n, P11612395173651779073.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P1883965282057315242

`dr(val(n+2+n, 4))`
-/

namespace A244415.P1883965282057315242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (n + 2 + n) 4 : ℤ)

end

end A244415.P1883965282057315242

namespace A244415

/-- `dr(val(n+2+n, 4))` -/
def P1883965282057315242.Spec : Prop :=
  ∀ n, (P1883965282057315242.a n : ℤ) = A244415 (n + 1)

end A244415

/-! ## A244415.P12429410859940899618

`round(log2(sqrt(xor(n, n+1))))`
-/

namespace A244415.P12429410859940899618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.sqrt (Nat.xor n (n + 1) : ℝ)))

end

end A244415.P12429410859940899618

namespace A244415

/-- `round(log2(sqrt(xor(n, n+1))))` -/
def P12429410859940899618.Spec : Prop :=
  ∀ n, P12429410859940899618.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P16399445496604941236

`∑{digits}[val(n+2+n, 4), #]`
-/

namespace A244415.P16399445496604941236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2 + n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A244415.P16399445496604941236

namespace A244415

/-- `∑{digits}[val(n+2+n, 4), #]` -/
def P16399445496604941236.Spec : Prop :=
  ∀ n, (P16399445496604941236.a n : ℤ) = A244415 (n + 1)

end A244415

/-! ## A244415.P66285648378673494

`∏{digits}[val(n+2+n, 4), #]`
-/

namespace A244415.P66285648378673494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2 + n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A244415.P66285648378673494

namespace A244415

/-- `∏{digits}[val(n+2+n, 4), #]` -/
def P66285648378673494.Spec : Prop :=
  ∀ n, (P66285648378673494.a n : ℤ) = A244415 (n + 1)

end A244415

/-! ## A244415.P17113722413707486002

`floor((val(n+1, 2)+1)/2)`
-/

namespace A244415.P17113722413707486002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ) / 2⌋

end

end A244415.P17113722413707486002

namespace A244415

/-- `floor((val(n+1, 2)+1)/2)` -/
def P17113722413707486002.Spec : Prop :=
  ∀ n, P17113722413707486002.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P7443865459688695144

`val(n+1, 2)-val(n+1, 4)`
-/

namespace A244415.P7443865459688695144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - (SequenceMachineLib.valuation (n + 1) 4 : ℤ)

end

end A244415.P7443865459688695144

namespace A244415

/-- `val(n+1, 2)-val(n+1, 4)` -/
def P7443865459688695144.Spec : Prop :=
  ∀ n, P7443865459688695144.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P9984804994693654482

`∑{p}[n+3, val(n+2+n, #²)]`
-/

namespace A244415.P9984804994693654482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 2 + n) (p ^ 2)

end

end A244415.P9984804994693654482

namespace A244415

/-- `∑{p}[n+3, val(n+2+n, #²)]` -/
def P9984804994693654482.Spec : Prop :=
  ∀ n, (P9984804994693654482.a n : ℤ) = A244415 (n + 1)

end A244415

/-! ## A244415.P13997341661926837914

`A363228(n+1)-1`
-/

namespace A244415.P13997341661926837914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363228 (n + 1) - 1

end

end A244415.P13997341661926837914

namespace A244415

/-- `A363228(n+1)-1` -/
def P13997341661926837914.Spec : Prop :=
  ∀ n, P13997341661926837914.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P17102827136369885643

`A235127(2*(n+1))`
-/

namespace A244415.P17102827136369885643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (2 * (n + 1))

end

end A244415.P17102827136369885643

namespace A244415

/-- `A235127(2*(n+1))` -/
def P17102827136369885643.Spec : Prop :=
  ∀ n, P17102827136369885643.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P10953565786240289422

`floor(A001511(n+1)/2)`
-/

namespace A244415.P10953565786240289422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001511 (n + 1) : ℚ) / 2⌋

end

end A244415.P10953565786240289422

namespace A244415

/-- `floor(A001511(n+1)/2)` -/
def P10953565786240289422.Spec : Prop :=
  ∀ n, P10953565786240289422.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P12624998573418367

`ceil(A007814(n+1)/2)`
-/

namespace A244415.P12624998573418367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007814 (n + 1) : ℚ) / 2⌉

end

end A244415.P12624998573418367

namespace A244415

/-- `ceil(A007814(n+1)/2)` -/
def P12624998573418367.Spec : Prop :=
  ∀ n, P12624998573418367.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P6081121941594510445

`val(A053143(n+1), 2)/2`
-/

namespace A244415.P6081121941594510445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A053143 (n + 1)).toNat 2 : ℚ) / 2

end

end A244415.P6081121941594510445

namespace A244415

/-- `val(A053143(n+1), 2)/2` -/
def P6081121941594510445.Spec : Prop :=
  ∀ n, P6081121941594510445.a n = (A244415 (n + 1) : ℚ)

end A244415

/-! ## A244415.P15999487354898094795

`A004526(A001511(n+1))`
-/

namespace A244415.P15999487354898094795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001511 (n + 1)).toNat

end

end A244415.P15999487354898094795

namespace A244415

/-- `A004526(A001511(n+1))` -/
def P15999487354898094795.Spec : Prop :=
  ∀ n, P15999487354898094795.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P766902674647614306

`A056595(A006519(n+1))`
-/

namespace A244415.P766902674647614306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (A006519 (n + 1)).toNat

end

end A244415.P766902674647614306

namespace A244415

/-- `A056595(A006519(n+1))` -/
def P766902674647614306.Spec : Prop :=
  ∀ n, P766902674647614306.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P12516358984663380292

`A001822(A079065(n+1))`
-/

namespace A244415.P12516358984663380292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A079065 (n + 1)).toNat

end

end A244415.P12516358984663380292

namespace A244415

/-- `A001822(A079065(n+1))` -/
def P12516358984663380292.Spec : Prop :=
  ∀ n, P12516358984663380292.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P1204043300817796513

`A110654(A007814(n+1))`
-/

namespace A244415.P1204043300817796513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A007814 (n + 1)).toNat

end

end A244415.P1204043300817796513

namespace A244415

/-- `A110654(A007814(n+1))` -/
def P1204043300817796513.Spec : Prop :=
  ∀ n, P1204043300817796513.a n = A244415 (n + 1)

end A244415

/-! ## A244415.P4829338113534937238

`A140106(A085058(n)+1)`
-/

namespace A244415.P4829338113534937238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A085058 n + 1).toNat

end

end A244415.P4829338113534937238

namespace A244415

/-- `A140106(A085058(n)+1)` -/
def P4829338113534937238.Spec : Prop :=
  ∀ n, P4829338113534937238.a n = A244415 (n + 1)

end A244415

/-!
# A244416: 6-adic value of 1/n for n >= 1.

The programs for A244416, the canonical program `A244416.P2063470347313486069` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244416 has offset 1).

The definition of A244416 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244417, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244416.P2063470347313486069

`6^A244417(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A244416

/-- `6^A244417(n+1)` -/
def P2063470347313486069.Spec : Prop :=
  ∀ n, P2063470347313486069.a n = (A244416 (n + 1) : ℚ)

end A244416

/-! ## A244416.P13832331099275313969

`6^(∑{p}[n+7, val(n+1, #)]-val(n+1, 6))`
-/

namespace A244416.P13832331099275313969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 6 : ℤ) : ℤ)

end

end A244416.P13832331099275313969

namespace A244416

/-- `6^(∑{p}[n+7, val(n+1, #)]-val(n+1, 6))` -/
def P13832331099275313969.Spec : Prop :=
  ∀ n, P13832331099275313969.a n = (A244416 (n + 1) : ℚ)

end A244416

/-! ## A244416.P14515670166482926281

`6^log2(lcm(2^val(n+1, 2), 2^val(n+1, 3)))`
-/

namespace A244416.P14515670166482926281
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 : ℝ) ^ (Real.logb 2 (Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (2 ^ SequenceMachineLib.valuation (n + 1) 3) : ℝ))

end

end A244416.P14515670166482926281

namespace A244416

/-- `6^log2(lcm(2^val(n+1, 2), 2^val(n+1, 3)))` -/
def P14515670166482926281.Spec : Prop :=
  ∀ n, P14515670166482926281.a n = (A244416 (n + 1) : ℝ)

end A244416

/-! ## A244416.P13499367789771174493

`6^val(A004286(n+1), 2)`
-/

namespace A244416.P13499367789771174493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ SequenceMachineLib.valuation (A004286 (n + 1)).toNat 2

end

end A244416.P13499367789771174493

namespace A244416

/-- `6^val(A004286(n+1), 2)` -/
def P13499367789771174493.Spec : Prop :=
  ∀ n, (P13499367789771174493.a n : ℤ) = A244416 (n + 1)

end A244416

/-! ## A244416.P821701706497361042

`6^(A169611(n+1)-val(n+1, 6))`
-/

namespace A244416.P821701706497361042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A169611 (n + 1) - (SequenceMachineLib.valuation (n + 1) 6 : ℤ) : ℤ)

end

end A244416.P821701706497361042

namespace A244416

/-- `6^(A169611(n+1)-val(n+1, 6))` -/
def P821701706497361042.Spec : Prop :=
  ∀ n, P821701706497361042.a n = (A244416 (n + 1) : ℚ)

end A244416

/-! ## A244416.P1192480237129067273

`A166642(lcm(2^val(n+1, 2), 2^val(n+1, 3)))`
-/

namespace A244416.P1192480237129067273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166642 (Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (2 ^ SequenceMachineLib.valuation (n + 1) 3))

end

end A244416.P1192480237129067273

namespace A244416

/-- `A166642(lcm(2^val(n+1, 2), 2^val(n+1, 3)))` -/
def P1192480237129067273.Spec : Prop :=
  ∀ n, P1192480237129067273.a n = A244416 (n + 1)

end A244416

/-! ## A244416.P7446916905053474750

`6^(∑{p}[n+7, val(n+1, #)]-A122841(n+1))`
-/

namespace A244416.P7446916905053474750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - A122841 (n + 1) : ℤ)

end

end A244416.P7446916905053474750

namespace A244416

/-- `6^(∑{p}[n+7, val(n+1, #)]-A122841(n+1))` -/
def P7446916905053474750.Spec : Prop :=
  ∀ n, P7446916905053474750.a n = (A244416 (n + 1) : ℚ)

end A244416

/-! ## A244416.P9247551138100172096

`A000400(∑{p}[n+7, val(n+1, #)]-val(n+1, 6))`
-/

namespace A244416.P9247551138100172096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p - SequenceMachineLib.valuation (n + 1) 6)

end

end A244416.P9247551138100172096

namespace A244416

/-- `A000400(∑{p}[n+7, val(n+1, #)]-val(n+1, 6))` -/
def P9247551138100172096.Spec : Prop :=
  ∀ n, P9247551138100172096.a n = A244416 (n + 1)

end A244416

/-! ## A244416.P6997696717164761581

`A000400(A244417(n+1))`
-/

namespace A244416.P6997696717164761581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A244417 (n + 1)).toNat

end

end A244416.P6997696717164761581

namespace A244416

/-- `A000400(A244417(n+1))` -/
def P6997696717164761581.Spec : Prop :=
  ∀ n, P6997696717164761581.a n = A244416 (n + 1)

end A244416

/-! ## A244416.P3358147613125124109

`A244957(A065331(n+1))`
-/

namespace A244416.P3358147613125124109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244957 (A065331 (n + 1)).toNat

end

end A244416.P3358147613125124109

namespace A244416

/-- `A244957(A065331(n+1))` -/
def P3358147613125124109.Spec : Prop :=
  ∀ n, P3358147613125124109.a n = A244416 (n + 1)

end A244416

/-! ## A244416.P7983184159907555685

`gcd(A056452(n), A244957(n+1))`
-/

namespace A244416.P7983184159907555685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056452 n) (A244957 (n + 1))

end

end A244416.P7983184159907555685

namespace A244416

/-- `gcd(A056452(n), A244957(n+1))` -/
def P7983184159907555685.Spec : Prop :=
  ∀ n, (P7983184159907555685.a n : ℤ) = A244416 (n + 1)

end A244416

/-!
# A244417: Exponents of 6 in appearing in the 6-adic value of 1/n, n>=1 (A244416).

The programs for A244417, the canonical program `A244417.P18318086271130608872` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244417 has offset 1).

The definition of A244417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244417.P18318086271130608872

`A051903(A065331(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A244417

/-- `A051903(A065331(n+1))` -/
def P18318086271130608872.Spec : Prop :=
  ∀ n, P18318086271130608872.a n = A244417 (n + 1)

theorem P18318086271130608872.correct : P18318086271130608872.Spec := by
  intro n
  simp only [A244417, Nat.add_sub_cancel]

end A244417

/-! ## A244417.P3616290238378952501

`log2(lcm(2^val(n+1, 2), 2^val(n+1, 3)))`
-/

namespace A244417.P3616290238378952501
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (2 ^ SequenceMachineLib.valuation (n + 1) 3) : ℝ)

end

end A244417.P3616290238378952501

namespace A244417

/-- `log2(lcm(2^val(n+1, 2), 2^val(n+1, 3)))` -/
def P3616290238378952501.Spec : Prop :=
  ∀ n, P3616290238378952501.a n = (A244417 (n + 1) : ℝ)

end A244417

/-! ## A244417.P410945020496184735

`val(A004286(n+1), 2)`
-/

namespace A244417.P410945020496184735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004286 (n + 1)).toNat 2

end

end A244417.P410945020496184735

namespace A244417

/-- `val(A004286(n+1), 2)` -/
def P410945020496184735.Spec : Prop :=
  ∀ n, (P410945020496184735.a n : ℤ) = A244417 (n + 1)

end A244417

/-! ## A244417.P8438402499280445507

`val(A244416(n+1), 2)`
-/

namespace A244417.P8438402499280445507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A244416 (n + 1)).toNat 2

end

end A244417.P8438402499280445507

namespace A244417

/-- `val(A244416(n+1), 2)` -/
def P8438402499280445507.Spec : Prop :=
  ∀ n, (P8438402499280445507.a n : ℤ) = A244417 (n + 1)

end A244417

/-! ## A244417.P2675036931337875102

`val(A244957(n+1), 2)`
-/

namespace A244417.P2675036931337875102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A244957 (n + 1)).toNat 2

end

end A244417.P2675036931337875102

namespace A244417

/-- `val(A244957(n+1), 2)` -/
def P2675036931337875102.Spec : Prop :=
  ∀ n, (P2675036931337875102.a n : ℤ) = A244417 (n + 1)

end A244417

/-! ## A244417.P9840933022854734054

`val(n+1, 3)+val(A329900(n+1), 2)`
-/

namespace A244417.P9840933022854734054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3 + SequenceMachineLib.valuation (A329900 (n + 1)).toNat 2

end

end A244417.P9840933022854734054

namespace A244417

/-- `val(n+1, 3)+val(A329900(n+1), 2)` -/
def P9840933022854734054.Spec : Prop :=
  ∀ n, (P9840933022854734054.a n : ℤ) = A244417 (n + 1)

end A244417

/-! ## A244417.P13439557727559929518

`log2(lcm(2^val(n+1, 3), A006519(n+1)))`
-/

namespace A244417.P13439557727559929518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 3 : ℤ) (A006519 (n + 1)) : ℝ)

end

end A244417.P13439557727559929518

namespace A244417

/-- `log2(lcm(2^val(n+1, 3), A006519(n+1)))` -/
def P13439557727559929518.Spec : Prop :=
  ∀ n, P13439557727559929518.a n = (A244417 (n + 1) : ℝ)

end A244417

/-! ## A244417.P3252908156512169666

`A086415(A322026(n+1))`
-/

namespace A244417.P3252908156512169666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086415 (A322026 (n + 1)).toNat

end

end A244417.P3252908156512169666

namespace A244417

/-- `A086415(A322026(n+1))` -/
def P3252908156512169666.Spec : Prop :=
  ∀ n, P3252908156512169666.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P8268141384362933507

`A375536(A072438(n+1))`
-/

namespace A244417.P8268141384362933507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375536 (A072438 (n + 1)).toNat

end

end A244417.P8268141384362933507

namespace A244417

/-- `A375536(A072438(n+1))` -/
def P8268141384362933507.Spec : Prop :=
  ∀ n, P8268141384362933507.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P3221590937206192635

`A375536(A132739(n+1))`
-/

namespace A244417.P3221590937206192635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375536 (A132739 (n + 1)).toNat

end

end A244417.P3221590937206192635

namespace A244417

/-- `A375536(A132739(n+1))` -/
def P3221590937206192635.Spec : Prop :=
  ∀ n, P3221590937206192635.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P16146715314958194579

`A169611(A348990(n+1))`
-/

namespace A244417.P16146715314958194579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A348990 (n + 1)).toNat

end

end A244417.P16146715314958194579

namespace A244417

/-- `A169611(A348990(n+1))` -/
def P16146715314958194579.Spec : Prop :=
  ∀ n, P16146715314958194579.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P10328277046352977000

`A054707(n+1)-A007737(n+1)`
-/

namespace A244417.P10328277046352977000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054707 (n + 1) - A007737 (n + 1)

end

end A244417.P10328277046352977000

namespace A244417

/-- `A054707(n+1)-A007737(n+1)` -/
def P10328277046352977000.Spec : Prop :=
  ∀ n, P10328277046352977000.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P9421865350150689613

`A169611(n+1)-A122841(n+1)`
-/

namespace A244417.P9421865350150689613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) - A122841 (n + 1)

end

end A244417.P9421865350150689613

namespace A244417

/-- `A169611(n+1)-A122841(n+1)` -/
def P9421865350150689613.Spec : Prop :=
  ∀ n, P9421865350150689613.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P17594250365959807461

`A051903((n+1)/A065330(n+1))`
-/

namespace A244417.P17594250365959807461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065330 (n + 1) : ℚ))).toNat

end

end A244417.P17594250365959807461

namespace A244417

/-- `A051903((n+1)/A065330(n+1))` -/
def P17594250365959807461.Spec : Prop :=
  ∀ n, P17594250365959807461.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P3150775010960660404

`A007814(n+1)+A007814(A319627(n+1))`
-/

namespace A244417.P3150775010960660404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (A319627 (n + 1)).toNat

end

end A244417.P3150775010960660404

namespace A244417

/-- `A007814(n+1)+A007814(A319627(n+1))` -/
def P3150775010960660404.Spec : Prop :=
  ∀ n, P3150775010960660404.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P1701251907068212570

`A122841(n+1)+A025636(A322316(n+1))`
-/

namespace A244417.P1701251907068212570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (n + 1) + A025636 (A322316 (n + 1)).toNat

end

end A244417.P1701251907068212570

namespace A244417

/-- `A122841(n+1)+A025636(A322316(n+1))` -/
def P1701251907068212570.Spec : Prop :=
  ∀ n, P1701251907068212570.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P16766516249963592655

`A054707(n+1)-A054707(A065330(n+1))`
-/

namespace A244417.P16766516249963592655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054707 (n + 1) - A054707 (A065330 (n + 1)).toNat

end

end A244417.P16766516249963592655

namespace A244417

/-- `A054707(n+1)-A054707(A065330(n+1))` -/
def P16766516249963592655.Spec : Prop :=
  ∀ n, P16766516249963592655.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P8510623421140554764

`A007814(n+1)+A007949(n+1)-A122841(n+1)`
-/

namespace A244417.P8510623421140554764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A007949 (n + 1) - A122841 (n + 1))

end

end A244417.P8510623421140554764

namespace A244417

/-- `A007814(n+1)+A007949(n+1)-A122841(n+1)` -/
def P8510623421140554764.Spec : Prop :=
  ∀ n, P8510623421140554764.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P9087243059469238679

`A007814(n+1)+A054707(n+1)-A054707(A038502(n+1))`
-/

namespace A244417.P9087243059469238679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A054707 (n + 1) - A054707 (A038502 (n + 1)).toNat)

end

end A244417.P9087243059469238679

namespace A244417

/-- `A007814(n+1)+A054707(n+1)-A054707(A038502(n+1))` -/
def P9087243059469238679.Spec : Prop :=
  ∀ n, P9087243059469238679.a n = A244417 (n + 1)

end A244417

/-! ## A244417.P691170798565143203

`A375536(A064554(n+1))`
-/

namespace A244417.P691170798565143203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375536 (A064554 (n + 1)).toNat

end

end A244417.P691170798565143203

namespace A244417

/-- `A375536(A064554(n+1))` -/
def P691170798565143203.Spec : Prop :=
  ∀ n, P691170798565143203.a n = A244417 (n + 1)

end A244417

/-!
# A244418: Triangle read by rows T(n,m) = n*m +(n-1)*(m-1), for n >= m >= 1.

The programs for A244418, the canonical program `A244418.P1931432828472560221` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244418 has offset 1).

The definition of A244418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244418.P1931432828472560221

`A151890(n)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A244418

/-- `A151890(n)+1` -/
def P1931432828472560221.Spec : Prop :=
  ∀ n, P1931432828472560221.a n = A244418 (n + 1)

theorem P1931432828472560221.correct : P1931432828472560221.Spec := by
  intro n
  simp only [A244418, Nat.add_sub_cancel]

end A244418

/-! ## A244418.P2583326355899901575

`round(A143218(n+1)/2)`
-/

namespace A244418.P2583326355899901575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143218 (n + 1) : ℚ) / 2)

end

end A244418.P2583326355899901575

namespace A244418

/-- `round(A143218(n+1)/2)` -/
def P2583326355899901575.Spec : Prop :=
  ∀ n, P2583326355899901575.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P12550007821496258474

`A330613(A038722(n+1))`
-/

namespace A244418.P12550007821496258474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330613 (A038722 (n + 1)).toNat

end

end A244418.P12550007821496258474

namespace A244418

/-- `A330613(A038722(n+1))` -/
def P12550007821496258474.Spec : Prop :=
  ∀ n, P12550007821496258474.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P13960603067292555722

`A330613(A061579(n)+1)`
-/

namespace A244418.P13960603067292555722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330613 (A061579 n + 1).toNat

end

end A244418.P13960603067292555722

namespace A244418

/-- `A330613(A061579(n)+1)` -/
def P13960603067292555722.Spec : Prop :=
  ∀ n, P13960603067292555722.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P14340492494423086885

`A079904(n)+A075362(n+1)`
-/

namespace A244418.P14340492494423086885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A075362 (n + 1)

end

end A244418.P14340492494423086885

namespace A244418

/-- `A079904(n)+A075362(n+1)` -/
def P14340492494423086885.Spec : Prop :=
  ∀ n, P14340492494423086885.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P6519432281547365149

`A079297(n+1)-A002262(n)`
-/

namespace A244418.P6519432281547365149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079297 (n + 1) - A002262 n

end

end A244418.P6519432281547365149

namespace A244418

/-- `A079297(n+1)-A002262(n)` -/
def P6519432281547365149.Spec : Prop :=
  ∀ n, P6519432281547365149.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P8405398410725596187

`A127780(n+1)-A003056(n)`
-/

namespace A244418.P8405398410725596187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127780 (n + 1) - A003056 n

end

end A244418.P8405398410725596187

namespace A244418

/-- `A127780(n+1)-A003056(n)` -/
def P8405398410725596187.Spec : Prop :=
  ∀ n, P8405398410725596187.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P8530350606007709167

`A101447(n)+2*A143844(n)`
-/

namespace A244418.P8530350606007709167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n + 2 * A143844 n

end

end A244418.P8530350606007709167

namespace A244418

/-- `A101447(n)+2*A143844(n)` -/
def P8530350606007709167.Spec : Prop :=
  ∀ n, P8530350606007709167.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P1214190479097269191

`A176798(n)+n-A091435(n)`
-/

namespace A244418.P1214190479097269191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176798 n + ((n : ℤ) - A091435 n)

end

end A244418.P1214190479097269191

namespace A244418

/-- `A176798(n)+n-A091435(n)` -/
def P1214190479097269191.Spec : Prop :=
  ∀ n, P1214190479097269191.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P2851619225136128945

`A330613(A274094(n+1)²-n)`
-/

namespace A244418.P2851619225136128945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330613 (A274094 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A244418.P2851619225136128945

namespace A244418

/-- `A330613(A274094(n+1)²-n)` -/
def P2851619225136128945.Spec : Prop :=
  ∀ n, P2851619225136128945.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P17915405850220420751

`A101447(n)+2*A002262(n)²`
-/

namespace A244418.P17915405850220420751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n + 2 * A002262 n ^ 2

end

end A244418.P17915405850220420751

namespace A244418

/-- `A101447(n)+2*A002262(n)²` -/
def P17915405850220420751.Spec : Prop :=
  ∀ n, P17915405850220420751.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P9580596965711092736

`A223544(n+1)+A076110(n+1)`
-/

namespace A244418.P9580596965711092736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223544 (n + 1) + A076110 (n + 1)

end

end A244418.P9580596965711092736

namespace A244418

/-- `A223544(n+1)+A076110(n+1)` -/
def P9580596965711092736.Spec : Prop :=
  ∀ n, P9580596965711092736.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P5058381703707824139

`A223544(n+1)+A079904(n)+1`
-/

namespace A244418.P5058381703707824139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223544 (n + 1) + (A079904 n + 1)

end

end A244418.P5058381703707824139

namespace A244418

/-- `A223544(n+1)+A079904(n)+1` -/
def P5058381703707824139.Spec : Prop :=
  ∀ n, P5058381703707824139.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P15738547361894493810

`A154680(n+1)-A131421(n+1)`
-/

namespace A244418.P15738547361894493810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) - A131421 (n + 1)

end

end A244418.P15738547361894493810

namespace A244418

/-- `A154680(n+1)-A131421(n+1)` -/
def P15738547361894493810.Spec : Prop :=
  ∀ n, P15738547361894493810.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P2775240587398075726

`A094727(n+1)+2*A079904(n)`
-/

namespace A244418.P2775240587398075726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + 2 * A079904 n

end

end A244418.P2775240587398075726

namespace A244418

/-- `A094727(n+1)+2*A079904(n)` -/
def P2775240587398075726.Spec : Prop :=
  ∀ n, P2775240587398075726.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P11771977059374214053

`A075362(n+1)+A144204(n+1)+1`
-/

namespace A244418.P11771977059374214053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (A144204 (n + 1) + 1)

end

end A244418.P11771977059374214053

namespace A244418

/-- `A075362(n+1)+A144204(n+1)+1` -/
def P11771977059374214053.Spec : Prop :=
  ∀ n, P11771977059374214053.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P219573837546344323

`A127780(n+1)+1-A002024(n+1)`
-/

namespace A244418.P219573837546344323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127780 (n + 1) + (1 - A002024 (n + 1))

end

end A244418.P219573837546344323

namespace A244418

/-- `A127780(n+1)+1-A002024(n+1)` -/
def P219573837546344323.Spec : Prop :=
  ∀ n, P219573837546344323.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P2943072519090910515

`A154684(n+1)+1-A131421(n+1)`
-/

namespace A244418.P2943072519090910515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + (1 - A131421 (n + 1))

end

end A244418.P2943072519090910515

namespace A244418

/-- `A154684(n+1)+1-A131421(n+1)` -/
def P2943072519090910515.Spec : Prop :=
  ∀ n, P2943072519090910515.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P3859714962828421329

`A182491(n+1)+1-A215630(n+1)`
-/

namespace A244418.P3859714962828421329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182491 (n + 1) + (1 - A215630 (n + 1))

end

end A244418.P3859714962828421329

namespace A244418

/-- `A182491(n+1)+1-A215630(n+1)` -/
def P3859714962828421329.Spec : Prop :=
  ∀ n, P3859714962828421329.a n = A244418 (n + 1)

end A244418

/-! ## A244418.P14698820408397734507

`2*A075362(n+1)-A094727(n+1)`
-/

namespace A244418.P14698820408397734507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075362 (n + 1) - A094727 (n + 1)

end

end A244418.P14698820408397734507

namespace A244418

/-- `2*A075362(n+1)-A094727(n+1)` -/
def P14698820408397734507.Spec : Prop :=
  ∀ n, P14698820408397734507.a n = A244418 (n + 1)

end A244418

/-!
# A244419: Coefficient triangle of polynomials related to the Dirichlet kernel. Rising powers. Riordan triangle ((1+z)/(1+z^2), 2*z/(1+z^2)).

The programs for A244419, there is no canonical definition to state claims against.
-/

/-! ## A244419.P114596035715037221

`A008312(A246694(n)-1)`
-/

namespace A244419.P114596035715037221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008312 (A246694 n - 1).toNat

end

end A244419.P114596035715037221

/-! ## A244419.P2649186139049816235

`A059268(n)*A267482(n)`
-/

namespace A244419.P2649186139049816235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A267482 n

end

end A244419.P2649186139049816235

/-! ## A244419.P7214971665042432412

`2^A002262(n)*A267482(n)`
-/

namespace A244419.P7214971665042432412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A267482 n : ℚ)

end

end A244419.P7214971665042432412

/-! ## A244419.P13407919088134396882

`A143576(A128621(n+1)+1+n)`
-/

namespace A244419.P13407919088134396882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143576 (A128621 (n + 1) + 1 + (n : ℤ)).toNat

end

end A244419.P13407919088134396882

/-! ## A244419.P3060420772548176834

`A057077(A025581(n))*A157751(n)`
-/

namespace A244419.P3060420772548176834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A025581 n).toNat * A157751 n

end

end A244419.P3060420772548176834

/-! ## A244419.P4782456714854684369

`A000079(A002262(n))*A267482(n)`
-/

namespace A244419.P4782456714854684369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A267482 n

end

end A244419.P4782456714854684369

/-! ## A244419.P17007912787539688159

`A003958(A036561(n))*A267482(n)`
-/

namespace A244419.P17007912787539688159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A036561 n).toNat * A267482 n

end

end A244419.P17007912787539688159

/-! ## A244419.P12723823054137060393

`A097807(n)*A228565(A061579(n))`
-/

namespace A244419.P12723823054137060393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A228565 (A061579 n).toNat

end

end A244419.P12723823054137060393

/-! ## A244419.P10154588052106630031

`A036561(A112367(n))*A267482(n)`
-/

namespace A244419.P10154588052106630031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A112367 n).toNat * A267482 n

end

end A244419.P10154588052106630031

/-! ## A244419.P6731108834513059088

`A130321(A061579(n))*A267482(n)`
-/

namespace A244419.P6731108834513059088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A267482 n

end

end A244419.P6731108834513059088

/-!
# A244420: Numerators of coefficient triangle for expansion of x^n in terms of polynomials Todd(k, x) = T(2*k+1, sqrt(x))/sqrt(x) (A084930), with the Chebyshev polynomials of the first kind (type T).

The programs for A244420, there is no canonical definition to state claims against.
-/

/-! ## A244420.P4109234907580208398

`lcm(8, A111418(n))/8`
-/

namespace A244420.P4109234907580208398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 8 (A111418 n) : ℚ) / 8

end

end A244420.P4109234907580208398

/-! ## A244420.P7851139289909861700

`gcd(∏[A099375(n)], A111418(n))`
-/

namespace A244420.P7851139289909861700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A111418 n)

end

end A244420.P7851139289909861700

/-! ## A244420.P13133517863980707256

`gcd(A055634(n+2), A113187(n))`
-/

namespace A244420.P13133517863980707256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055634 (n + 2)) (A113187 n)

end

end A244420.P13133517863980707256

/-! ## A244420.P2676998904533787402

`A111418(n)/gcd(8, A039599(n))`
-/

namespace A244420.P2676998904533787402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111418 n : ℚ) / (Int.gcd 8 (A039599 n) : ℚ)

end

end A244420.P2676998904533787402

/-! ## A244420.P4978453524429986632

`A111418(n)/A006519(A061554(n))`
-/

namespace A244420.P4978453524429986632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111418 n : ℚ) / (A006519 (A061554 n).toNat : ℚ)

end

end A244420.P4978453524429986632

/-! ## A244420.P4327652566291854887

`A319861(A185869(n+1)+A025581(n))`
-/

namespace A244420.P4327652566291854887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319861 (A185869 (n + 1) + A025581 n).toNat

end

end A244420.P4327652566291854887

/-! ## A244420.P757855177239002364

`lcm(A001316(n), A113187(n))/A001316(n)`
-/

namespace A244420.P757855177239002364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001316 n) (A113187 n) : ℚ) / (A001316 n : ℚ)

end

end A244420.P757855177239002364

/-! ## A244420.P15591081235633786899

`A000265(A111418(n))`
-/

namespace A244420.P15591081235633786899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A111418 n).toNat

end

end A244420.P15591081235633786899

/-! ## A244420.P2802889237954197772

`A000265(abs(A113187(n)))`
-/

namespace A244420.P2802889237954197772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 |A113187 n|.toNat

end

end A244420.P2802889237954197772

/-! ## A244420.P15096120878868215183

`gcd(A293172(n), A323499(n+2))`
-/

namespace A244420.P15096120878868215183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A293172 n) (A323499 (n + 2))

end

end A244420.P15096120878868215183

/-!
# A244421: Denominators of coefficient triangle for expansion of x^n in terms of polynomials Todd(k,x) = T(2*k+1, sqrt(x))/sqrt(x) (A084930), with the Chebyshev T-polynomials.

The programs for A244421, there is no canonical definition to state claims against.
-/

/-! ## A244421.P16894107773555864550

`2^val(A273172(n), 2)`
-/

namespace A244421.P16894107773555864550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A273172 n).toNat 2

end

end A244421.P16894107773555864550

/-! ## A244421.P14201183097434043701

`A000079(val(A273172(n), 2))`
-/

namespace A244421.P14201183097434043701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A273172 n).toNat 2)

end

end A244421.P14201183097434043701

/-! ## A244421.P4617276315070762786

`gcd(A000302(n), A273172(n))`
-/

namespace A244421.P4617276315070762786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000302 n) (A273172 n)

end

end A244421.P4617276315070762786

/-! ## A244421.P7993440807437962261

`A000225(val(A273172(n), 2))+1`
-/

namespace A244421.P7993440807437962261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.valuation (A273172 n).toNat 2) + 1

end

end A244421.P7993440807437962261

/-! ## A244421.P4144310679168337712

`A011782(val(A273172(n), 2)+1)`
-/

namespace A244421.P4144310679168337712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.valuation (A273172 n).toNat 2 + 1)

end

end A244421.P4144310679168337712

/-! ## A244421.P4589910471800858366

`A000051(val(A273172(n), 2))-1`
-/

namespace A244421.P4589910471800858366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (SequenceMachineLib.valuation (A273172 n).toNat 2) - 1

end

end A244421.P4589910471800858366

/-! ## A244421.P11435338175753098480

`A011782(val(2*A273172(n), 2))`
-/

namespace A244421.P11435338175753098480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.valuation (2 * A273172 n).toNat 2)

end

end A244421.P11435338175753098480

/-! ## A244421.P4490337379337015145

`gcd(A020707(n)-A273172(n), A020707(n))`
-/

namespace A244421.P4490337379337015145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020707 n - A273172 n) (A020707 n)

end

end A244421.P4490337379337015145

/-! ## A244421.P4460038645755740969

`and(A000035(n)-A273172(n), A273172(n))`
-/

namespace A244421.P4460038645755740969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000035 n - A273172 n) (A273172 n)

end

end A244421.P4460038645755740969

/-! ## A244421.P12380098045143878207

`A262616(A057944(n))/A006519(A061554(n))`
-/

namespace A244421.P12380098045143878207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262616 (A057944 n).toNat : ℚ) / (A006519 (A061554 n).toNat : ℚ)

end

end A244421.P12380098045143878207

/-!
# A244422: Quasi-Riordan triangle ((2-z)/(1-z), -z^2/(1-z)). Row reversed monic Chebyshev T-polynomials without vanishing columns.

The programs for A244422, the canonical program `A244422.P380232244939802474` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244422 has offset 0).

The definition of A244422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244422.P380232244939802474

`A061896(n)*A062157(A002260(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A244422

/-- `A061896(n)*A062157(A002260(n+1))` -/
def P380232244939802474.Spec : Prop :=
  ∀ n, P380232244939802474.a n = A244422 n

theorem P380232244939802474.correct : P380232244939802474.Spec := by
  intro n
  simp only [A244422]

end A244422

/-! ## A244422.P9116639867332891011

`A100218(A061579(n))+A023531(n)`
-/

namespace A244422.P9116639867332891011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 (A061579 n).toNat + A023531 n

end

end A244422.P9116639867332891011

namespace A244422

/-- `A100218(A061579(n))+A023531(n)` -/
def P9116639867332891011.Spec : Prop :=
  ∀ n, P9116639867332891011.a n = A244422 n

end A244422

/-! ## A244422.P387308627408956467

`A100218(A061579(n))+Δ[A003056(n)]`
-/

namespace A244422.P387308627408956467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 (A061579 n).toNat + (f1 (n + 1) - f1 n)

end

end A244422.P387308627408956467

namespace A244422

/-- `A100218(A061579(n))+Δ[A003056(n)]` -/
def P387308627408956467.Spec : Prop :=
  ∀ n, P387308627408956467.a n = A244422 n

end A244422

/-! ## A244422.P10250212720409812982

`A100218(A061579(n))+A010054(n+1)`
-/

namespace A244422.P10250212720409812982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 (A061579 n).toNat + A010054 (n + 1)

end

end A244422.P10250212720409812982

namespace A244422

/-- `A100218(A061579(n))+A010054(n+1)` -/
def P10250212720409812982.Spec : Prop :=
  ∀ n, P10250212720409812982.a n = A244422 n

end A244422

/-! ## A244422.P9328697715032013364

`A100218(A061579(n))+A073424(n+1)`
-/

namespace A244422.P9328697715032013364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 (A061579 n).toNat + A073424 (n + 1)

end

end A244422.P9328697715032013364

namespace A244422

/-- `A100218(A061579(n))+A073424(n+1)` -/
def P9328697715032013364.Spec : Prop :=
  ∀ n, P9328697715032013364.a n = A244422 n

end A244422

/-! ## A244422.P1693397808948426810

`A100218(A061579(n))+A000007(A025581(n))`
-/

namespace A244422.P1693397808948426810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 (A061579 n).toNat + A000007 (A025581 n).toNat

end

end A244422.P1693397808948426810

namespace A244422

/-- `A100218(A061579(n))+A000007(A025581(n))` -/
def P1693397808948426810.Spec : Prop :=
  ∀ n, P1693397808948426810.a n = A244422 n

end A244422

/-! ## A244422.P17891229126175990967

`A008836(A152714(n))*A061896(n)`
-/

namespace A244422.P17891229126175990967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A152714 n).toNat * A061896 n

end

end A244422.P17891229126175990967

namespace A244422

/-- `A008836(A152714(n))*A061896(n)` -/
def P17891229126175990967.Spec : Prop :=
  ∀ n, P17891229126175990967.a n = A244422 n

end A244422

/-! ## A244422.P8358548844623200913

`A008836(A059268(n))*A061896(n)`
-/

namespace A244422.P8358548844623200913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A061896 n

end

end A244422.P8358548844623200913

namespace A244422

/-- `A008836(A059268(n))*A061896(n)` -/
def P8358548844623200913.Spec : Prop :=
  ∀ n, P8358548844623200913.a n = A244422 n

end A244422

/-! ## A244422.P1947988125065341769

`A061896(n)*A155040(n)`
-/

namespace A244422.P1947988125065341769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n * A155040 n

end

end A244422.P1947988125065341769

namespace A244422

/-- `A061896(n)*A155040(n)` -/
def P1947988125065341769.Spec : Prop :=
  ∀ n, P1947988125065341769.a n = A244422 n

end A244422

/-! ## A244422.P12255066314530303671

`A061896(n)*A144383(n+1)`
-/

namespace A244422.P12255066314530303671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n * A144383 (n + 1)

end

end A244422.P12255066314530303671

namespace A244422

/-- `A061896(n)*A144383(n+1)` -/
def P12255066314530303671.Spec : Prop :=
  ∀ n, P12255066314530303671.a n = A244422 n

end A244422

/-!
# A244423: Nonprime palindromes n such that the product of divisors of n is also a palindrome.

The programs for A244423, there is no canonical definition to state claims against.
-/

/-! ## A244423.P14920021253073228033

`∩[A032350(n+1), A324989(n+1)]`
-/

namespace A244423.P14920021253073228033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244423.P14920021253073228033

/-! ## A244423.P214194520918768501

`∩[A032350(n+1), A327325(n+1)]`
-/

namespace A244423.P214194520918768501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244423.P214194520918768501

/-! ## A244423.P1951392764077773029

`filter[A324989(n+1), A005171(#)]`
-/

namespace A244423.P1951392764077773029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A244423.P1951392764077773029

/-! ## A244423.P146667705969150389

`filter[A244411(n+1), A096270(#)]`
-/

namespace A244423.P146667705969150389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A244423.P146667705969150389

/-! ## A244423.P14966598060625491733

`∩[A018252(n+1), A324989(n+1)]`
-/

namespace A244423.P14966598060625491733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244423.P14966598060625491733

/-!
# A244425: Consider the sequence of almost natural numbers (A007376) and arrange it in a table by antidiagonals; sequence gives the main diagonal.

The programs for A244425, there is no canonical definition to state claims against.
-/

/-! ## A244425.P11841390329513395486

`A007376(A001844(n))`
-/

namespace A244425.P11841390329513395486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A001844 n).toNat

end

end A244425.P11841390329513395486

/-! ## A244425.P6558276251006230610

`A007376(∑[4*n]+1)`
-/

namespace A244425.P6558276251006230610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244425.P6558276251006230610

/-! ## A244425.P6105505188433865967

`dr(A007376(n²+(n+1)²))`
-/

namespace A244425.P6105505188433865967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (n ^ 2 + (n + 1) ^ 2))

end

end A244425.P6105505188433865967

/-! ## A244425.P17157353353954519803

`A007376((n+1)²+n²)%10`
-/

namespace A244425.P17157353353954519803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 ((n + 1) ^ 2 + n ^ 2)) 10

end

end A244425.P17157353353954519803

/-! ## A244425.P5509987259312229178

`gcd(A000038(n), A007376((n+1)²+n²))`
-/

namespace A244425.P5509987259312229178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007376 ((n + 1) ^ 2 + n ^ 2))

end

end A244425.P5509987259312229178

/-! ## A244425.P7201402183884440408

`or(A000007(n), A007376((n+1)²+n²))`
-/

namespace A244425.P7201402183884440408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 ((n + 1) ^ 2 + n ^ 2))

end

end A244425.P7201402183884440408

/-! ## A244425.P12634456025221905478

`A127414(∑[n])`
-/

namespace A244425.P12634456025221905478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244425.P12634456025221905478

/-! ## A244425.P4139192164236611121

`A127050(∑[2*n])`
-/

namespace A244425.P4139192164236611121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127050 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244425.P4139192164236611121

/-! ## A244425.P13142510823735381525

`A033307(∑[4*n])`
-/

namespace A244425.P13142510823735381525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244425.P13142510823735381525

/-! ## A244425.P1276279330586585325

`A108712(Δ[n²]²)`
-/

namespace A244425.P1276279330586585325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A244425.P1276279330586585325

/-!
# A244426: Take the sequence of almost-natural numbers (A007376) and reverse successive subsequences of lengths 1,2,3,4,...

The programs for A244426, there is no canonical definition to state claims against.
-/

/-! ## A244426.P16333347230092923364

`A007376(∑[char[∑[n]]]²-n)`
-/

namespace A244426.P16333347230092923364
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A244426.P16333347230092923364

/-! ## A244426.P2682717324252493354

`A033307(∑[2*n]%comp[∑[n]])`
-/

namespace A244426.P2682717324252493354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A244426.P2682717324252493354

/-! ## A244426.P10408479930534032902

`A033307(∑[char[∑[n]]]²-(n+1))`
-/

namespace A244426.P10408479930534032902
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A244426.P10408479930534032902

/-! ## A244426.P4226994186690209714

`A108202(2*(∑[char[∑[n]]]²-n))`
-/

namespace A244426.P4226994186690209714
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A244426.P4226994186690209714

/-! ## A244426.P8540161478775634007

`9-A031310(∑[char[∑[n]]]²-n)`
-/

namespace A244426.P8540161478775634007
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A031310 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A244426.P8540161478775634007

/-! ## A244426.P2123758864705114295

`A065649(∑[char[∑[n]]]²-n)%10`
-/

namespace A244426.P2123758864705114295
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)) 10

end

end A244426.P2123758864705114295

/-! ## A244426.P9948783134236108269

`dr(A033307(A061579(n)))`
-/

namespace A244426.P9948783134236108269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (A061579 n).toNat)

end

end A244426.P9948783134236108269

/-! ## A244426.P3060607490434016520

`dr(A007376(A038722(n+1)))`
-/

namespace A244426.P3060607490434016520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A038722 (n + 1)).toNat)

end

end A244426.P3060607490434016520

/-!
# A244427: Number of unlabeled, connected graphs on n vertices with no subgraph isomorphic to a bull-graph.

The programs for A244427, there is no canonical definition to state claims against.
-/

/-! ## A244427.P16118499772994423081

`A243559(n+1)+char[3]`
-/

namespace A244427.P16118499772994423081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243559 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A244427.P16118499772994423081

/-! ## A244427.P3678056581495500428

`char[3]+A243568(n+1)+char[3]`
-/

namespace A244427.P3678056581495500428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A243568 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A244427.P3678056581495500428

/-! ## A244427.P9436477211878502324

`A243568(n+1)+A005926(n)`
-/

namespace A244427.P9436477211878502324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243568 (n + 1) + A005926 n

end

end A244427.P9436477211878502324

/-! ## A244427.P9920181388979968065

`or(Δ[A053644(n)], A243568(n+1))`
-/

namespace A244427.P9920181388979968065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A243568 (n + 1))

end

end A244427.P9920181388979968065

/-! ## A244427.P9250687402202213472

`C(A243568(n+1), A078315(n+1))`
-/

namespace A244427.P9250687402202213472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A243568 (n + 1)).toNat (A078315 (n + 1)).toNat

end

end A244427.P9250687402202213472

/-!
# A244430: E.g.f.: exp( Sum_{n>=1} Fibonacci(n)*x^n/n ).

The programs for A244430, the canonical program `A244430.P5209083520097368480` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244430 has offset 0).

The definition of A244430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244430.P5209083520097368480

`(n-1)*(n-2)*a(n-2)+n*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244430

/-- `(n-1)*(n-2)*a(n-2)+n*a(n-1)` -/
def P5209083520097368480.Spec : Prop :=
  ∀ n, P5209083520097368480.a n = A244430 n

theorem P5209083520097368480.correct : P5209083520097368480.Spec := by
  intro n
  simp only [A244430]

end A244430

/-! ## A244430.P10927846229545735851

`ceil(A291286(n)/2)`
-/

namespace A244430.P10927846229545735851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A291286 n : ℚ) / 2⌉

end

end A244430.P10927846229545735851

namespace A244430

/-- `ceil(A291286(n)/2)` -/
def P10927846229545735851.Spec : Prop :=
  ∀ n, P10927846229545735851.a n = A244430 n

end A244430

/-! ## A244430.P10320376651723024429

`A291286(A028310(n))/2`
-/

namespace A244430.P10320376651723024429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291286 (A028310 n).toNat : ℚ) / 2

end

end A244430.P10320376651723024429

namespace A244430

/-- `A291286(A028310(n))/2` -/
def P10320376651723024429.Spec : Prop :=
  ∀ n, P10320376651723024429.a n = (A244430 n : ℚ)

end A244430

/-! ## A244430.P16313820093200063162

`A291286(n)/A014963(A244421(n))`
-/

namespace A244430.P16313820093200063162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291286 n : ℚ) / (A014963 (A244421 n).toNat : ℚ)

end

end A244430.P16313820093200063162

namespace A244430

/-- `A291286(n)/A014963(A244421(n))` -/
def P16313820093200063162.Spec : Prop :=
  ∀ n, P16313820093200063162.a n = (A244430 n : ℚ)

end A244430

/-!
# A244432: E.g.f.: exp( Sum_{n>=1} Pell(n)*x^n/n ), where Pell(n) = A000129(n).

The programs for A244432, the canonical program `A244432.P2457034761622075847` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244432 has offset 0).

The definition of A244432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244432.P2457034761622075847

`(2*n-1)*a(n-1)+(n-1)*(n-2)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244432

/-- `(2*n-1)*a(n-1)+(n-1)*(n-2)*a(n-2)` -/
def P2457034761622075847.Spec : Prop :=
  ∀ n, P2457034761622075847.a n = A244432 n

theorem P2457034761622075847.correct : P2457034761622075847.Spec := by
  intro n
  simp only [A244432]

end A244432

/-! ## A244432.P10437157356607779507

`A130823(A288971(n)+A131407(n))`
-/

namespace A244432.P10437157356607779507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A288971 n + A131407 n).toNat

end

end A244432.P10437157356607779507

namespace A244432

/-- `A130823(A288971(n)+A131407(n))` -/
def P10437157356607779507.Spec : Prop :=
  ∀ n, P10437157356607779507.a n = A244432 n

end A244432

/-!
# A244437: E.g.f.: exp( Sum_{n>=1} (1 - exp(-n*x))^n / n ).

The programs for A244437, there is no canonical definition to state claims against.
-/

/-! ## A244437.P2802958094213131812

`A171927(A260146(n))`
-/

namespace A244437.P2802958094213131812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171927 (A260146 n).toNat

end

end A244437.P2802958094213131812

/-!
# A244439: Numbers n such that phi(n)*sigma(n) = phi(n+1)*sigma(n+1).

The programs for A244439, there is no canonical definition to state claims against.
-/

/-! ## A244439.P3447544456012045038

`A140790(n+1)-1`
-/

namespace A244439.P3447544456012045038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140790 (n + 1) - 1

end

end A244439.P3447544456012045038

/-! ## A244439.P18352369413067206286

`A260196(n+2)+A140790(n+1)`
-/

namespace A244439.P18352369413067206286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A140790 (n + 1)

end

end A244439.P18352369413067206286

/-! ## A244439.P8865791050829437624

`A287056(gcd(n, n+1))+A140790(n+1)`
-/

namespace A244439.P8865791050829437624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287056 (Nat.gcd n (n + 1)) + A140790 (n + 1)

end

end A244439.P8865791050829437624

/-! ## A244439.P3062528673490219783

`A287056(A002636(n))+A140790(n+1)`
-/

namespace A244439.P3062528673490219783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287056 (A002636 n).toNat + A140790 (n + 1)

end

end A244439.P3062528673490219783

/-! ## A244439.P17614808706000780011

`abs(A140790(n+1)+A008683(A002148(n)))`
-/

namespace A244439.P17614808706000780011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140790 (n + 1) + A008683 (A002148 n).toNat|

end

end A244439.P17614808706000780011

/-! ## A244439.P17986811497294981169

`xor(-A140790(n+1), A008683(A060395(n)))`
-/

namespace A244439.P17986811497294981169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A140790 (n + 1)) (A008683 (A060395 n).toNat)

end

end A244439.P17986811497294981169

/-! ## A244439.P10160180382709619270

`xor(-A140790(n+1), A089263(A004767(n)))`
-/

namespace A244439.P10160180382709619270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A140790 (n + 1)) (A089263 (A004767 n).toNat)

end

end A244439.P10160180382709619270

/-! ## A244439.P7612088636550402739

`A259506(A069288(n+1))+A140790(n+1)`
-/

namespace A244439.P7612088636550402739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259506 (A069288 (n + 1)).toNat + A140790 (n + 1)

end

end A244439.P7612088636550402739

/-! ## A244439.P891242310587639008

`A349920(A000040(n+1))+A140790(n+1)`
-/

namespace A244439.P891242310587639008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A000040 (n + 1)).toNat + A140790 (n + 1)

end

end A244439.P891242310587639008

/-! ## A244439.P3251552072109623587

`A259506(A259506(n)+2)+A140790(n+1)`
-/

namespace A244439.P3251552072109623587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259506 (A259506 n + 2).toNat + A140790 (n + 1)

end

end A244439.P3251552072109623587

/-!
# A244443: Smallest integer m > 1 such that m!^(m + n) divides (m^2)!.

The programs for A244443, there is no canonical definition to state claims against.
-/

/-! ## A244443.P1641699402201123221

`A331626(A116820(n+2))`
-/

namespace A244443.P1641699402201123221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331626 (A116820 (n + 2)).toNat

end

end A244443.P1641699402201123221

/-!
# A244445: a(n) = ceiling(A002386(n+1)/A002386(n)).

The programs for A244445, there is no canonical definition to state claims against.
-/

/-! ## A244445.P10432219970858958861

`ceil(A002386(n+2)/A002386(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244445.P10432219970858958861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002386 (n + 2) : ℚ) / (A002386 (n + 1) : ℚ)⌉

end

end A244445.P10432219970858958861

/-! ## A244445.P8614938270858436155

`ceil(ratio[A002386(n+1)])`
-/

namespace A244445.P8614938270858436155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A244445.P8614938270858436155

/-! ## A244445.P7857789155134014283

`ceil(ratio[A000101(n+1)-A005250(n+1)])`
-/

namespace A244445.P7857789155134014283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 1) - A005250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A244445.P7857789155134014283

/-! ## A244445.P3093986136314395645

`ceil(ratio[A114058(n+1)])`
-/

namespace A244445.P3093986136314395645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A244445.P3093986136314395645

/-! ## A244445.P16601717304321324788

`floor(A114058(n+2)/A114058(n+1))+1`
-/

namespace A244445.P16601717304321324788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114058 (n + 2) : ℚ) / (A114058 (n + 1) : ℚ)⌋ + 1

end

end A244445.P16601717304321324788

/-! ## A244445.P262815114341336317

`ceil(ratio[A000230(floor(A005250(n+1)/2))])`
-/

namespace A244445.P262815114341336317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ⌊(A005250 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A244445.P262815114341336317

/-!
# A244450: 

The programs for A244450, there is no canonical definition to state claims against.
-/

/-! ## A244450.P16040461084580945093

`10^(10*n)`
-/

namespace A244450.P16040461084580945093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (10 * n)

end

end A244450.P16040461084580945093

/-!
# A244451: E.g.f.: exp( Sum_{n>=1} Fibonacci(2*n)*x^n/n ).

The programs for A244451, there is no canonical definition to state claims against.
-/

/-! ## A244451.P16793102062623733163

`A276155(∑[A389844(n)])`
-/

namespace A244451.P16793102062623733163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276155 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244451.P16793102062623733163

/-! ## A244451.P2463761597313040318

`A000311(n+1)+and(n, A213076(n+2))`
-/

namespace A244451.P2463761597313040318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 (n + 1) + Int.land (n : ℤ) (A213076 (n + 2))

end

end A244451.P2463761597313040318

/-!
# A244452: Primes p such that p^2-2 and p^2+4 are also prime (i.e., initial members of prime triples (p, p^2-2, p^2+4)).

The programs for A244452, there is no canonical definition to state claims against.
-/

/-! ## A244452.P3972985002861400572

`∩[A062324(n+1), A062326(n+1)]`
-/

namespace A244452.P3972985002861400572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244452.P3972985002861400572

/-! ## A244452.P13817549063161387821

`∩[A007591(n+1), A062326(n+1)]`
-/

namespace A244452.P13817549063161387821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244452.P13817549063161387821

/-! ## A244452.P17773410287627392892

`∩[A028870(n+1), A062324(n+1)]`
-/

namespace A244452.P17773410287627392892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244452.P17773410287627392892

/-! ## A244452.P11079351701446532032

`p?[∩[A007591(n+1), A028870(n+1)]]`
-/

namespace A244452.P11079351701446532032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A244452.P11079351701446532032

/-! ## A244452.P14021801993450826670

`∩[A062326(n+1), A006530(A129119(n+1))]`
-/

namespace A244452.P14021801993450826670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A129119 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244452.P14021801993450826670

/-!
# A244453: Prime factors of 2^A054723(n)-1, ordered by increasing n, then by increasing size of the factors.

The programs for A244453, there is no canonical definition to state claims against.
-/

/-! ## A244453.P11912172199968187406

`p?[A089162(n+1)%A001003(n)]`
-/

namespace A244453.P11912172199968187406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089162 (n + 1)) (A001003 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244453.P11912172199968187406

/-! ## A244453.P14105025076251299159

`p?[A089162(n+3)%A089137(n+1)]`
-/

namespace A244453.P14105025076251299159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089162 (n + 3)) (A089137 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244453.P14105025076251299159

/-! ## A244453.P15817094427436816201

`p?[A089162(n+4)%A136005(n+2)]`
-/

namespace A244453.P15817094427436816201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089162 (n + 4)) (A136005 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244453.P15817094427436816201

/-!
# A244454: Number T(n,k) of unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals k; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows.

The programs for A244454, there is no canonical definition to state claims against.
-/

/-! ## A244454.P6758178355787415487

`A325678(A244530(n+1))+A161680(A245151(n+1))`
-/

namespace A244454.P6758178355787415487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A244530 (n + 1)).toNat + A161680 (A245151 (n + 1)).toNat

end

end A244454.P6758178355787415487

/-! ## A244454.P4864812842716766650

`A103298(xor(A277031(n), A283666(n+1)))`
-/

namespace A244454.P4864812842716766650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (Int.xor (A277031 n) (A283666 (n + 1))).toNat

end

end A244454.P4864812842716766650

/-! ## A244454.P10476191151631476667

`A238123(n)-A127321(A283666(n+1)²)`
-/

namespace A244454.P10476191151631476667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 n - A127321 (A283666 (n + 1) ^ 2).toNat

end

end A244454.P10476191151631476667

/-! ## A244454.P835985338814257675

`A238123(n)-A023556(A283666(n+1)!)`
-/

namespace A244454.P835985338814257675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 n - A023556 (Nat.factorial (A283666 (n + 1)).toNat)

end

end A244454.P835985338814257675

/-! ## A244454.P15194010229476505610

`A325678(A242451(n)²)`
-/

namespace A244454.P15194010229476505610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A242451 n ^ 2).toNat

end

end A244454.P15194010229476505610

/-!
# A244455: Number of unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 1.

The programs for A244455, there is no canonical definition to state claims against.
-/

/-! ## A244455.P13478183137206097225

`A000081(n+2)-A001678(n+3)`
-/

namespace A244455.P13478183137206097225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 2) - A001678 (n + 3)

end

end A244455.P13478183137206097225

/-! ## A244455.P17611506111544627321

`A244454(∑[n+1]+2)`
-/

namespace A244455.P17611506111544627321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244455.P17611506111544627321

/-! ## A244455.P12825399925362350033

`record[A244454(n+1)+A007318(n)]-(n+1)`
-/

namespace A244455.P12825399925362350033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (n + 1) + A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A244455.P12825399925362350033

/-! ## A244455.P7284290373293970464

`lcm(A033999(n), A244454(A133263(n+1)))`
-/

namespace A244455.P7284290373293970464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A244454 (A133263 (n + 1)).toNat)

end

end A244455.P7284290373293970464

/-! ## A244455.P16707922793229556322

`or(A000007(n), A244454(A133263(n+1)))`
-/

namespace A244455.P16707922793229556322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A244454 (A133263 (n + 1)).toNat)

end

end A244455.P16707922793229556322

/-! ## A244455.P12194771904735781480

`A000034(2*n)*A244454(A133263(n+1))`
-/

namespace A244455.P12194771904735781480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A244454 (A133263 (n + 1)).toNat

end

end A244455.P12194771904735781480

/-! ## A244455.P11359149224682353639

`A014963(8*n+10)*A244454(A133263(n+1))`
-/

namespace A244455.P11359149224682353639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 10) * A244454 (A133263 (n + 1)).toNat

end

end A244455.P11359149224682353639

/-! ## A244455.P11406184187773009231

`A171890(A253641(n))*A244454(A133263(n+1))`
-/

namespace A244455.P11406184187773009231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171890 (A253641 n).toNat * A244454 (A133263 (n + 1)).toNat

end

end A244455.P11406184187773009231

/-! ## A244455.P12630613121071078866

`A244454(A133263(n+1))+A008683(A043223(n+1))`
-/

namespace A244455.P12630613121071078866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A133263 (n + 1)).toNat + A008683 (A043223 (n + 1)).toNat

end

end A244455.P12630613121071078866

/-! ## A244455.P13409760855769563888

`A244454(A133263(n+1))+A008683(A133466(n+1))`
-/

namespace A244455.P13409760855769563888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A133263 (n + 1)).toNat + A008683 (A133466 (n + 1)).toNat

end

end A244455.P13409760855769563888

/-! ## A244455.P18017121596533343311

`A244454(A133263(n+1))+A008683(A195085(n+1))`
-/

namespace A244455.P18017121596533343311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A133263 (n + 1)).toNat + A008683 (A195085 (n + 1)).toNat

end

end A244455.P18017121596533343311

/-! ## A244455.P3104012808320509054

`A244454(A133263(n+1))+A008683(A335437(n+1))`
-/

namespace A244455.P3104012808320509054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A133263 (n + 1)).toNat + A008683 (A335437 (n + 1)).toNat

end

end A244455.P3104012808320509054

/-! ## A244455.P9623341890374364548

`A244454(A133263(n+1))+A000007(A055999(n+3))`
-/

namespace A244455.P9623341890374364548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A133263 (n + 1)).toNat + A000007 (A055999 (n + 3)).toNat

end

end A244455.P9623341890374364548

/-!
# A244456: Number of unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 2.

The programs for A244456, there is no canonical definition to state claims against.
-/

/-! ## A244456.P7477967993691054890

`A244454(∑[n+2]+4)`
-/

namespace A244456.P7477967993691054890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A244456.P7477967993691054890

/-! ## A244456.P11066088198443910760

`A244454(A167614(n+1))%A041068(n)`
-/

namespace A244456.P11066088198443910760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244454 (A167614 (n + 1)).toNat) (A041068 n)

end

end A244456.P11066088198443910760

/-! ## A244456.P2538088684840774484

`gcd(A000038(n), A244454(A167614(n+1)))`
-/

namespace A244456.P2538088684840774484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A244454 (A167614 (n + 1)).toNat)

end

end A244456.P2538088684840774484

/-! ## A244456.P8152796728746395874

`or(A000007(n), A244454(A167614(n+1)))`
-/

namespace A244456.P8152796728746395874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A244454 (A167614 (n + 1)).toNat)

end

end A244456.P8152796728746395874

/-! ## A244456.P13701961090107490642

`lcm(A033999(n), A244454(A167499(n)+n))`
-/

namespace A244456.P13701961090107490642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A244454 (A167499 n + (n : ℤ)).toNat)

end

end A244456.P13701961090107490642

/-! ## A244456.P774428473540235482

`A244454(A046691(n)+7)^A057428(n)²`
-/

namespace A244456.P774428473540235482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244454 (A046691 n + 7).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A244456.P774428473540235482

/-! ## A244456.P4721476182321686609

`A244454(A167614(n+1))+A046660(A020639(n+1))`
-/

namespace A244456.P4721476182321686609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 1)).toNat + A046660 (A020639 (n + 1)).toNat

end

end A244456.P4721476182321686609

/-! ## A244456.P4097707526378107192

`A244454(A167614(n+1))+A105523(A059654(n+1))`
-/

namespace A244456.P4097707526378107192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 1)).toNat + A105523 (A059654 (n + 1)).toNat

end

end A244456.P4097707526378107192

/-! ## A244456.P13655016620936343730

`A244454(A167614(n+1))*A319101(A059268(n))`
-/

namespace A244456.P13655016620936343730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 1)).toNat * A319101 (A059268 n).toNat

end

end A244456.P13655016620936343730

/-!
# A244457: Number of unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 3.

The programs for A244457, there is no canonical definition to state claims against.
-/

/-! ## A244457.P12289087571881367097

`A244454(n+8+∑[n+2])`
-/

namespace A244457.P12289087571881367097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (n + 8 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244457.P12289087571881367097

/-! ## A244457.P14330252959175168536

`and(A126646(n), A244454(A055999(n)+10))`
-/

namespace A244457.P14330252959175168536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A244454 (A055999 n + 10).toNat)

end

end A244457.P14330252959175168536

/-! ## A244457.P167582152543907325

`A244454(A167614(n+2)+1)+A000007(n+1)`
-/

namespace A244457.P167582152543907325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 2) + 1).toNat + A000007 (n + 1)

end

end A244457.P167582152543907325

/-! ## A244457.P17065462988485556079

`A244454(A167614(n+2)+1)+A008683(4*(n+1))`
-/

namespace A244457.P17065462988485556079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 2) + 1).toNat + A008683 (4 * (n + 1))

end

end A244457.P17065462988485556079

/-! ## A244457.P4038275494882763311

`A244454(A167614(n+2)+1)+A046660(A020639(n+1))`
-/

namespace A244457.P4038275494882763311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 2) + 1).toNat + A046660 (A020639 (n + 1)).toNat

end

end A244457.P4038275494882763311

/-! ## A244457.P5724804232642051476

`A244454(A167614(n+2)+1)%A000747(n)`
-/

namespace A244457.P5724804232642051476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244454 (A167614 (n + 2) + 1).toNat) (A000747 n)

end

end A244457.P5724804232642051476

/-!
# A244458: Number of unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 4.

The programs for A244458, there is no canonical definition to state claims against.
-/

/-! ## A244458.P14055350457260223266

`A244454(A167499(n+3))`
-/

namespace A244458.P14055350457260223266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167499 (n + 3)).toNat

end

end A244458.P14055350457260223266

/-! ## A244458.P588560345901253094

`A244454(A166136(n+3)-1)`
-/

namespace A244458.P588560345901253094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A166136 (n + 3) - 1).toNat

end

end A244458.P588560345901253094

/-! ## A244458.P17506424384056515745

`A244454(A167614(n+3)+2)`
-/

namespace A244458.P17506424384056515745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 3) + 2).toNat

end

end A244458.P17506424384056515745

/-! ## A244458.P5962848630043776714

`A244454(A000124(n+4)+4)`
-/

namespace A244458.P5962848630043776714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000124 (n + 4) + 4).toNat

end

end A244458.P5962848630043776714

/-! ## A244458.P10386658732107369949

`A244454(A000217(n+4)+5)`
-/

namespace A244458.P10386658732107369949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000217 (n + 4) + 5).toNat

end

end A244458.P10386658732107369949

/-! ## A244458.P16014112620724307438

`A244454(A046691(n+2)+9)`
-/

namespace A244458.P16014112620724307438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A046691 (n + 2) + 9).toNat

end

end A244458.P16014112620724307438

/-!
# A244459: Number of unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 5.

The programs for A244459, there is no canonical definition to state claims against.
-/

/-! ## A244459.P6621115581970095627

`A244454(A166136(n+4))`
-/

namespace A244459.P6621115581970095627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A166136 (n + 4)).toNat

end

end A244459.P6621115581970095627

/-! ## A244459.P4256197020986470059

`A244454(A167614(n+4)+3)`
-/

namespace A244459.P4256197020986470059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 4) + 3).toNat

end

end A244459.P4256197020986470059

/-! ## A244459.P4998666949222760418

`A244454(A000096(n+4)+7)`
-/

namespace A244459.P4998666949222760418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000096 (n + 4) + 7).toNat

end

end A244459.P4998666949222760418

/-! ## A244459.P5152896904892897225

`A244454(A000217(n+5)+6)`
-/

namespace A244459.P5152896904892897225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000217 (n + 5) + 6).toNat

end

end A244459.P5152896904892897225

/-! ## A244459.P17290738523110420609

`A244454(A052905(n+2)+11)`
-/

namespace A244459.P17290738523110420609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A052905 (n + 2) + 11).toNat

end

end A244459.P17290738523110420609

/-! ## A244459.P14293245673508950435

`A244454(A055999(n+2)+12)`
-/

namespace A244459.P14293245673508950435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A055999 (n + 2) + 12).toNat

end

end A244459.P14293245673508950435

/-! ## A244459.P8266138707118131671

`A244454(A183905(n+5)-A016777(n+1))`
-/

namespace A244459.P8266138707118131671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A183905 (n + 5) - A016777 (n + 1)).toNat

end

end A244459.P8266138707118131671

/-!
# A244460: Number of unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 6.

The programs for A244460, there is no canonical definition to state claims against.
-/

/-! ## A244460.P3190493805275435973

`A244454(A167487(n+5))`
-/

namespace A244460.P3190493805275435973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167487 (n + 5)).toNat

end

end A244460.P3190493805275435973

/-! ## A244460.P4105598698288733994

`A244454(A167499(n+5)+2)`
-/

namespace A244460.P4105598698288733994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167499 (n + 5) + 2).toNat

end

end A244460.P4105598698288733994

/-! ## A244460.P6866891199225877840

`A244454(A000124(n+6)+6)`
-/

namespace A244460.P6866891199225877840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000124 (n + 6) + 6).toNat

end

end A244460.P6866891199225877840

/-! ## A244460.P2672702979009930307

`A244454(A000217(n+6)+7)`
-/

namespace A244460.P2672702979009930307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000217 (n + 6) + 7).toNat

end

end A244460.P2672702979009930307

/-! ## A244460.P8804516573150697080

`A244454(A161680(n+7)+7)`
-/

namespace A244460.P8804516573150697080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A161680 (n + 7) + 7).toNat

end

end A244460.P8804516573150697080

/-! ## A244460.P17007611962008450201

`A244454(A167614(n+6)-(n+3))`
-/

namespace A244460.P17007611962008450201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A244460.P17007611962008450201

/-!
# A244461: Number of unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 7.

The programs for A244461, there is no canonical definition to state claims against.
-/

/-! ## A244461.P6764635404143464302

`A244454(A000217(n+7)+8)`
-/

namespace A244461.P6764635404143464302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000217 (n + 7) + 8).toNat

end

end A244461.P6764635404143464302

/-! ## A244461.P9640884047575934788

`A244454(A000096(n+7)-n+1)`
-/

namespace A244461.P9640884047575934788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000096 (n + 7) - (n : ℤ) + 1).toNat

end

end A244461.P9640884047575934788

/-! ## A244461.P14518269142092015435

`A244454(A000124(n+8)-(n+1))`
-/

namespace A244461.P14518269142092015435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A244461.P14518269142092015435

/-! ## A244461.P17485061796825032129

`A244454(A167614(n+7)-(n+3))`
-/

namespace A244461.P17485061796825032129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 7) - (n + 3 : ℤ)).toNat

end

end A244461.P17485061796825032129

/-! ## A244461.P8224982490769055694

`A244454(A055998(n+7)-6-2*n)`
-/

namespace A244461.P8224982490769055694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A055998 (n + 7) - 6 - (2 * n : ℤ)).toNat

end

end A244461.P8224982490769055694

/-!
# A244462: Number of unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 8.

The programs for A244462, there is no canonical definition to state claims against.
-/

/-! ## A244462.P2963079243853423935

`A244454(A167487(n+7)+2)`
-/

namespace A244462.P2963079243853423935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167487 (n + 7) + 2).toNat

end

end A244462.P2963079243853423935

/-! ## A244462.P5624513099438517891

`A244454(A000124(n+8)+8)`
-/

namespace A244462.P5624513099438517891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000124 (n + 8) + 8).toNat

end

end A244462.P5624513099438517891

/-! ## A244462.P13999966924136523389

`A244454(A000217(n+8)+9)`
-/

namespace A244462.P13999966924136523389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000217 (n + 8) + 9).toNat

end

end A244462.P13999966924136523389

/-! ## A244462.P9906691685984223790

`A244454(A167614(n+8)-(n+3))`
-/

namespace A244462.P9906691685984223790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 8) - (n + 3 : ℤ)).toNat

end

end A244462.P9906691685984223790

/-! ## A244462.P4640851927987754139

`A244454(A183905(n+8)-A016777(n+3))`
-/

namespace A244462.P4640851927987754139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A183905 (n + 8) - A016777 (n + 3)).toNat

end

end A244462.P4640851927987754139

/-!
# A244463: Number of unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 9.

The programs for A244463, there is no canonical definition to state claims against.
-/

/-! ## A244463.P17462567086891606424

`A244454(A166136(n+8)+4)`
-/

namespace A244463.P17462567086891606424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A166136 (n + 8) + 4).toNat

end

end A244463.P17462567086891606424

/-! ## A244463.P13085163720726567665

`A244454(A000124(n+9)+9)`
-/

namespace A244463.P13085163720726567665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000124 (n + 9) + 9).toNat

end

end A244463.P13085163720726567665

/-! ## A244463.P11914881035349044378

`A244454(A000217(n+9)+10)`
-/

namespace A244463.P11914881035349044378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000217 (n + 9) + 10).toNat

end

end A244463.P11914881035349044378

/-! ## A244463.P10719484744632396951

`A244454(A167614(n+9)-(n+3))`
-/

namespace A244463.P10719484744632396951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167614 (n + 9) - (n + 3 : ℤ)).toNat

end

end A244463.P10719484744632396951

/-! ## A244463.P540590350914889773

`A244454(A167499(n+9)-(n+5))`
-/

namespace A244463.P540590350914889773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167499 (n + 9) - (n + 5 : ℤ)).toNat

end

end A244463.P540590350914889773

/-!
# A244464: Number of unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 10.

The programs for A244464, there is no canonical definition to state claims against.
-/

/-! ## A244464.P2264853268823482741

`A244454(A167499(n+9)+6)`
-/

namespace A244464.P2264853268823482741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A167499 (n + 9) + 6).toNat

end

end A244464.P2264853268823482741

/-! ## A244464.P192581756021365064

`A244454(A000124(n+10)+10)`
-/

namespace A244464.P192581756021365064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000124 (n + 10) + 10).toNat

end

end A244464.P192581756021365064

/-! ## A244464.P16739575513191624215

`A244454(eq[12, A131818(n+1)])`
-/

namespace A244464.P16739575513191624215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244464.P16739575513191624215

/-! ## A244464.P16651055109598184602

`A244454(A000217(n+11)-n)`
-/

namespace A244464.P16651055109598184602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (A000217 (n + 11) - (n : ℤ)).toNat

end

end A244464.P16651055109598184602

/-!
# A244465: Expansion of f(-x^3, -x^5) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A244465, the canonical program `A244465.P2424451479601373234` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244465 has offset 0).

The definition of A244465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244465.P2424451479601373234

`(-1)^n*A214264(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244465

/-- `(-1)^n*A214264(n)` -/
def P2424451479601373234.Spec : Prop :=
  ∀ n, P2424451479601373234.a n = A244465 n

theorem P2424451479601373234.correct : P2424451479601373234.Spec := by
  intro n
  simp only [A244465]

end A244465

/-! ## A244465.P11711106836309992314

`(-A073423(2*n))^n`
-/

namespace A244465.P11711106836309992314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A073423 (2 * n)) ^ n

end

end A244465.P11711106836309992314

namespace A244465

/-- `(-A073423(2*n))^n` -/
def P11711106836309992314.Spec : Prop :=
  ∀ n, P11711106836309992314.a n = A244465 n

end A244465

/-! ## A244465.P10966250431711040293

`(-1)^n*char[A074378(n)]`
-/

namespace A244465.P10966250431711040293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244465.P10966250431711040293

namespace A244465

/-- `(-1)^n*char[A074378(n)]` -/
def P10966250431711040293.Spec : Prop :=
  ∀ n, P10966250431711040293.a n = A244465 n

end A244465

/-! ## A244465.P13774034872742912573

`A000035(A246862(n)+n)-A000035(n)`
-/

namespace A244465.P13774034872742912573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A246862 n + (n : ℤ)).toNat - A000035 n

end

end A244465.P13774034872742912573

namespace A244465

/-- `A000035(A246862(n)+n)-A000035(n)` -/
def P13774034872742912573.Spec : Prop :=
  ∀ n, P13774034872742912573.a n = A244465 n

end A244465

/-! ## A244465.P7421480584864767297

`A008683(A002260(2*n+1)²*gcd(3, A010690(n)))`
-/

namespace A244465.P7421480584864767297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (2 * n + 1) ^ 2 * (Int.gcd 3 (A010690 n) : ℤ)).toNat

end

end A244465.P7421480584864767297

namespace A244465

/-- `A008683(A002260(2*n+1)²*gcd(3, A010690(n)))` -/
def P7421480584864767297.Spec : Prop :=
  ∀ n, P7421480584864767297.a n = A244465 n

end A244465

/-! ## A244465.P13998129991183434899

`xor(n, A010054(2*n))-n`
-/

namespace A244465.P13998129991183434899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A010054 (2 * n)) - (n : ℤ)

end

end A244465.P13998129991183434899

namespace A244465

/-- `xor(n, A010054(2*n))-n` -/
def P13998129991183434899.Spec : Prop :=
  ∀ n, P13998129991183434899.a n = A244465 n

end A244465

/-! ## A244465.P2943206562267049309

`A010054(2*n)*A033999(n)`
-/

namespace A244465.P2943206562267049309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n) * A033999 n

end

end A244465.P2943206562267049309

namespace A244465

/-- `A010054(2*n)*A033999(n)` -/
def P2943206562267049309.Spec : Prop :=
  ∀ n, P2943206562267049309.a n = A244465 n

end A244465

/-! ## A244465.P15790119416100845439

`A010054(2*n)*A057079(n)`
-/

namespace A244465.P15790119416100845439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n) * A057079 n

end

end A244465.P15790119416100845439

namespace A244465

/-- `A010054(2*n)*A057079(n)` -/
def P15790119416100845439.Spec : Prop :=
  ∀ n, P15790119416100845439.a n = A244465 n

end A244465

/-! ## A244465.P9171579594393576571

`A010054(2*n)*A130151(n)`
-/

namespace A244465.P9171579594393576571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n) * A130151 n

end

end A244465.P9171579594393576571

namespace A244465

/-- `A010054(2*n)*A130151(n)` -/
def P9171579594393576571.Spec : Prop :=
  ∀ n, P9171579594393576571.a n = A244465 n

end A244465

/-! ## A244465.P301271794923307055

`A010054(2*n)*A062157(n+1)`
-/

namespace A244465.P301271794923307055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n) * A062157 (n + 1)

end

end A244465.P301271794923307055

namespace A244465

/-- `A010054(2*n)*A062157(n+1)` -/
def P301271794923307055.Spec : Prop :=
  ∀ n, P301271794923307055.a n = A244465 n

end A244465

/-! ## A244465.P9770237854620179899

`A010054(2*n)*A253414(2*n)`
-/

namespace A244465.P9770237854620179899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n) * A253414 (2 * n)

end

end A244465.P9770237854620179899

namespace A244465

/-- `A010054(2*n)*A253414(2*n)` -/
def P9770237854620179899.Spec : Prop :=
  ∀ n, P9770237854620179899.a n = A244465 n

end A244465

/-! ## A244465.P9351412724171810546

`(1-A035214(2*n))*A033999(n+1)`
-/

namespace A244465.P9351412724171810546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035214 (2 * n)) * A033999 (n + 1)

end

end A244465.P9351412724171810546

namespace A244465

/-- `(1-A035214(2*n))*A033999(n+1)` -/
def P9351412724171810546.Spec : Prop :=
  ∀ n, P9351412724171810546.a n = A244465 n

end A244465

/-! ## A244465.P8069481934932603416

`A258260((2*n+1)*A010054(2*n))`
-/

namespace A244465.P8069481934932603416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258260 ((2 * n + 1 : ℤ) * A010054 (2 * n)).toNat

end

end A244465.P8069481934932603416

namespace A244465

/-- `A258260((2*n+1)*A010054(2*n))` -/
def P8069481934932603416.Spec : Prop :=
  ∀ n, P8069481934932603416.a n = A244465 n

end A244465

/-! ## A244465.P2475316758791269019

`(A035214(2*n)-1)*A009001(2*n)`
-/

namespace A244465.P2475316758791269019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035214 (2 * n) - 1) * A009001 (2 * n)

end

end A244465.P2475316758791269019

namespace A244465

/-- `(A035214(2*n)-1)*A009001(2*n)` -/
def P2475316758791269019.Spec : Prop :=
  ∀ n, P2475316758791269019.a n = A244465 n

end A244465

/-! ## A244465.P3895007320936421555

`A143433(2*n)`
-/

namespace A244465.P3895007320936421555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 (2 * n)

end

end A244465.P3895007320936421555

namespace A244465

/-- `A143433(2*n)` -/
def P3895007320936421555.Spec : Prop :=
  ∀ n, P3895007320936421555.a n = A244465 n

end A244465

/-! ## A244465.P14541693834717206013

`A143434(2*n)`
-/

namespace A244465.P14541693834717206013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 (2 * n)

end

end A244465.P14541693834717206013

namespace A244465

/-- `A143434(2*n)` -/
def P14541693834717206013.Spec : Prop :=
  ∀ n, P14541693834717206013.a n = A244465 n

end A244465

/-! ## A244465.P167298559078973820

`A057079(n)*A106459(2*n)`
-/

namespace A244465.P167298559078973820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A106459 (2 * n)

end

end A244465.P167298559078973820

namespace A244465

/-- `A057079(n)*A106459(2*n)` -/
def P167298559078973820.Spec : Prop :=
  ∀ n, P167298559078973820.a n = A244465 n

end A244465

/-! ## A244465.P5052013750974230396

`A101455(A010054(2*n)+2*n)`
-/

namespace A244465.P5052013750974230396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A010054 (2 * n) + (2 * n : ℤ)).toNat

end

end A244465.P5052013750974230396

namespace A244465

/-- `A101455(A010054(2*n)+2*n)` -/
def P5052013750974230396.Spec : Prop :=
  ∀ n, P5052013750974230396.a n = A244465 n

end A244465

/-! ## A244465.P1273508130267970843

`A185276(A010054(2*n)+2*n)`
-/

namespace A244465.P1273508130267970843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185276 (A010054 (2 * n) + (2 * n : ℤ)).toNat

end

end A244465.P1273508130267970843

namespace A244465

/-- `A185276(A010054(2*n)+2*n)` -/
def P1273508130267970843.Spec : Prop :=
  ∀ n, P1273508130267970843.a n = A244465 n

end A244465

/-! ## A244465.P16944609283782145709

`A010054(2*n)*A056594(2*n)`
-/

namespace A244465.P16944609283782145709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n) * A056594 (2 * n)

end

end A244465.P16944609283782145709

namespace A244465

/-- `A010054(2*n)*A056594(2*n)` -/
def P16944609283782145709.Spec : Prop :=
  ∀ n, P16944609283782145709.a n = A244465 n

end A244465

/-!
# A244466: Nonprimes n such that mu(phi(n)) = 1.

The programs for A244466, the canonical program `A244466.P1490577025563346596` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244466 has offset 1).

The definition of A244466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244466.P1490577025563346596

`record[A056653(n+1)^A008683(A073256(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A244466

/-- `record[A056653(n+1)^A008683(A073256(n+1))]` -/
def P1490577025563346596.Spec : Prop :=
  ∀ n, P1490577025563346596.a n = (A244466 (n + 1) : ℚ)

end A244466

/-!
# A244468: E.g.f.: Sum_{n>=0} Series_Reversion( x/exp(n*x) )^n / n!.

The programs for A244468, there is no canonical definition to state claims against.
-/

/-! ## A244468.P3669507226849444911

`A324968(ceil(3^(n-1)))`
-/

namespace A244468.P3669507226849444911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324968 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A244468.P3669507226849444911

/-!
# A244469: a(0) = 0, thereafter, a(n) = 2^(2*n-1)*( binomial((3*n-1)/2,n) - binomial(3*n/2, n)/3 ).

The programs for A244469, there is no canonical definition to state claims against.
-/

/-! ## A244469.P1780399125717107610

`A244039(n)%A348618(n)`
-/

namespace A244469.P1780399125717107610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244039 n) (A348618 n)

end

end A244469.P1780399125717107610

/-! ## A244469.P10328198403079928857

`(A091527(n)-A348618(n))/2`
-/

namespace A244469.P10328198403079928857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 n - A348618 n : ℚ) / 2

end

end A244469.P10328198403079928857

/-! ## A244469.P3110901254396099715

`((A244038(n)+A091527(n))/2)%A348618(n)`
-/

namespace A244469.P3110901254396099715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A244038 n + A091527 n : ℚ) / 2)) (A348618 n)

end

end A244469.P3110901254396099715

/-! ## A244469.P8890287523614535995

`A348618(n)-A110441(A001105(n))`
-/

namespace A244469.P8890287523614535995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348618 n - A110441 (A001105 n).toNat

end

end A244469.P8890287523614535995

/-! ## A244469.P5061237030130144804

`A209413(A064225(n))%A348618(n)`
-/

namespace A244469.P5061237030130144804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209413 (A064225 n).toNat) (A348618 n)

end

end A244469.P5061237030130144804

/-!
# A244470: Maximal term in row n of sequence A240388 when regarded as a triangle.

The programs for A244470, the canonical program `A244470.P11919571335424378788` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244470 has offset 2).

The definition of A244470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244470.P11919571335424378788

`4*a(n-3)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=6, a(5)=9, a(6)=17, a(7)=25, a(8)=40`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244470

/-- `4*a(n-3)+a(n-6)` -/
def P11919571335424378788.Spec : Prop :=
  ∀ n, (P11919571335424378788.a n : ℤ) = A244470 (n + 2)

theorem P11919571335424378788.correct : P11919571335424378788.Spec := by
  intro n
  simp only [A244470, Nat.add_sub_cancel]

end A244470

/-! ## A244470.P7434315738966252697

`A345921(A229194(n+1))`
-/

namespace A244470.P7434315738966252697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345921 (A229194 (n + 1)).toNat

end

end A244470.P7434315738966252697

namespace A244470

/-- `A345921(A229194(n+1))` -/
def P7434315738966252697.Spec : Prop :=
  ∀ n, P7434315738966252697.a n = A244470 (n + 2)

end A244470

/-! ## A244470.P2161018334476280984

`A284013(n)+A097247(A204858(n))`
-/

namespace A244470.P2161018334476280984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284013 n + A097247 (A204858 n).toNat

end

end A244470.P2161018334476280984

namespace A244470

/-- `A284013(n)+A097247(A204858(n))` -/
def P2161018334476280984.Spec : Prop :=
  ∀ n, P2161018334476280984.a n = A244470 (n + 2)

end A244470

/-! ## A244470.P9599615837964700247

`A345921(A274199(n)+A059076(n))`
-/

namespace A244470.P9599615837964700247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345921 (A274199 n + A059076 n).toNat

end

end A244470.P9599615837964700247

namespace A244470

/-- `A345921(A274199(n)+A059076(n))` -/
def P9599615837964700247.Spec : Prop :=
  ∀ n, P9599615837964700247.a n = A244470 (n + 2)

end A244470

/-! ## A244470.P14845173064974918359

`A064876(A238707(n)+A072827(n+1))`
-/

namespace A244470.P14845173064974918359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A238707 n + A072827 (n + 1)).toNat

end

end A244470.P14845173064974918359

namespace A244470

/-- `A064876(A238707(n)+A072827(n+1))` -/
def P14845173064974918359.Spec : Prop :=
  ∀ n, P14845173064974918359.a n = A244470 (n + 2)

end A244470

/-!
# A244472: 2nd-largest term in n-th row of Stern's diatomic triangle A002487.

The programs for A244472, the canonical program `A244472.P5886913330211217155` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244472 has offset 1).

The definition of A244472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244472.P5886913330211217155

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244472

/-- `a(n-1)+a(n-2)` -/
def P5886913330211217155.Spec : Prop :=
  ∀ n, (P5886913330211217155.a n : ℤ) = A244472 (n + 1)

theorem P5886913330211217155.correct : P5886913330211217155.Spec := by
  intro n
  simp only [A244472, Nat.add_sub_cancel]

end A244472

/-! ## A244472.P17906289734691824162

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=12, a(5)=19`
-/

namespace A244472.P17906289734691824162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7, 12, 19] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A244472.P17906289734691824162

namespace A244472

/-- `2*a(n-1)-a(n-3)` -/
def P17906289734691824162.Spec : Prop :=
  ∀ n, P17906289734691824162.a n = A244472 (n + 1)

end A244472

/-! ## A244472.P6294955098920500283

`(A013655(n)-char[2])%A013655(n+1)`
-/

namespace A244472.P6294955098920500283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013655 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A013655 (n + 1))

end

end A244472.P6294955098920500283

namespace A244472

/-- `(A013655(n)-char[2])%A013655(n+1)` -/
def P6294955098920500283.Spec : Prop :=
  ∀ n, P6294955098920500283.a n = A244472 (n + 1)

end A244472

/-! ## A244472.P1764076442468542532

`Δ[floor(A001060(n)+3/(n+1))]`
-/

namespace A244472.P1764076442468542532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001060 n : ℚ) + 3 / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244472.P1764076442468542532

namespace A244472

/-- `Δ[floor(A001060(n)+3/(n+1))]` -/
def P1764076442468542532.Spec : Prop :=
  ∀ n, P1764076442468542532.a n = A244472 (n + 1)

end A244472

/-! ## A244472.P6267430737194259607

`A001060(n+1)%(A001060(n)+char[2])`
-/

namespace A244472.P6267430737194259607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001060 (n + 1)) (A001060 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A244472.P6267430737194259607

namespace A244472

/-- `A001060(n+1)%(A001060(n)+char[2])` -/
def P6267430737194259607.Spec : Prop :=
  ∀ n, P6267430737194259607.a n = A244472 (n + 1)

end A244472

/-! ## A244472.P13756311796862592660

`and(A013655(n), A233868(n+1))`
-/

namespace A244472.P13756311796862592660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013655 n) (A233868 (n + 1))

end

end A244472.P13756311796862592660

namespace A244472

/-- `and(A013655(n), A233868(n+1))` -/
def P13756311796862592660.Spec : Prop :=
  ∀ n, P13756311796862592660.a n = A244472 (n + 1)

end A244472

/-! ## A244472.P17393754231832071069

`A193922(eq[1, A057979(n)]+∑[n])`
-/

namespace A244472.P17393754231832071069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + ∑ j ∈ Finset.range (n + 1), f3 j)

end

end A244472.P17393754231832071069

namespace A244472

/-- `A193922(eq[1, A057979(n)]+∑[n])` -/
def P17393754231832071069.Spec : Prop :=
  ∀ n, P17393754231832071069.a n = A244472 (n + 1)

end A244472

/-!
# A244473: 3rd-largest term in n-th row of Stern's diatomic triangle A002487.

The programs for A244473, the canonical program `A244473.P16768123626010102230` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244473 has offset 2).

The definition of A244473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244473.P16768123626010102230

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=11, a(4)=18, a(5)=30, a(6)=49, a(7)=80`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244473

/-- `a(n-1)+a(n-2)` -/
def P16768123626010102230.Spec : Prop :=
  ∀ n, (P16768123626010102230.a n : ℤ) = A244473 (n + 2)

theorem P16768123626010102230.correct : P16768123626010102230.Spec := by
  intro n
  simp only [A244473, Nat.add_sub_cancel]

end A244473

/-! ## A244473.P98461716360570269

`record[A049997(n+3)%A049874(n+7)]`
-/

namespace A244473.P98461716360570269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049997 (n + 3)) (A049874 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244473.P98461716360570269

namespace A244473

/-- `record[A049997(n+3)%A049874(n+7)]` -/
def P98461716360570269.Spec : Prop :=
  ∀ n, P98461716360570269.a n = A244473 (n + 2)

end A244473

/-! ## A244473.P10754374311894770584

`A001060(n)-A131534(A270831(3*(n+1)))`
-/

namespace A244473.P10754374311894770584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n - A131534 (A270831 (3 * (n + 1))).toNat

end

end A244473.P10754374311894770584

namespace A244473

/-- `A001060(n)-A131534(A270831(3*(n+1)))` -/
def P10754374311894770584.Spec : Prop :=
  ∀ n, P10754374311894770584.a n = A244473 (n + 2)

end A244473

/-! ## A244473.P7780889848970392631

`A022318(n)-A014707(A000032(2*n+3))`
-/

namespace A244473.P7780889848970392631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n - A014707 (A000032 (2 * n + 3)).toNat

end

end A244473.P7780889848970392631

namespace A244473

/-- `A022318(n)-A014707(A000032(2*n+3))` -/
def P7780889848970392631.Spec : Prop :=
  ∀ n, P7780889848970392631.a n = A244473 (n + 2)

end A244473

/-! ## A244473.P15875270203847991138

`A194295(or(A093126(n+1), A317849(n+1)))`
-/

namespace A244473.P15875270203847991138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194295 (Int.lor (A093126 (n + 1)) (A317849 (n + 1))).toNat

end

end A244473.P15875270203847991138

namespace A244473

/-- `A194295(or(A093126(n+1), A317849(n+1)))` -/
def P15875270203847991138.Spec : Prop :=
  ∀ n, P15875270203847991138.a n = A244473 (n + 2)

end A244473

/-!
# A244474: 4th-largest term in n-th row of Stern's diatomic triangle A002487.

The programs for A244474, there is no canonical definition to state claims against.
-/

/-! ## A244474.P15316698550003388112

`A168496(A168445(n+1))+A015128(n)`
-/

namespace A244474.P15316698550003388112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168496 (A168445 (n + 1)).toNat + A015128 n

end

end A244474.P15316698550003388112

/-! ## A244474.P14254351107234230357

`A193922(A000045(n))+A093513(A255062(n+1))`
-/

namespace A244474.P14254351107234230357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (A000045 n).toNat + A093513 (A255062 (n + 1)).toNat

end

end A244474.P14254351107234230357

/-! ## A244474.P11614347299328358572

`A193922(A000045(n))+A093513(A307543(n+1))`
-/

namespace A244474.P11614347299328358572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (A000045 n).toNat + A093513 (A307543 (n + 1)).toNat

end

end A244474.P11614347299328358572

/-! ## A244474.P17601792147130551955

`A288003(A000045(n+1))+A093513(A255062(n+1))`
-/

namespace A244474.P17601792147130551955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A000045 (n + 1)).toNat + A093513 (A255062 (n + 1)).toNat

end

end A244474.P17601792147130551955

/-!
# A244475: 5th-largest term in the n-th row of Stern's diatomic triangle A002487.

The programs for A244475, there is no canonical definition to state claims against.
-/

/-! ## A244475.P1297827191188148577

`A093513(A255062(n+1))`
-/

namespace A244475.P1297827191188148577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093513 (A255062 (n + 1)).toNat

end

end A244475.P1297827191188148577

/-! ## A244475.P13578837148381157682

`A093513(A307543(n+1))`
-/

namespace A244475.P13578837148381157682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093513 (A307543 (n + 1)).toNat

end

end A244475.P13578837148381157682

/-! ## A244475.P4364218101862251778

`A093513(ceil(sqrt(A087206(n))))`
-/

namespace A244475.P4364218101862251778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093513 ⌈Real.sqrt (A087206 n : ℝ)⌉.toNat

end

end A244475.P4364218101862251778

/-! ## A244475.P18123027841822747372

`A093513(record[A255062(∑[(-1)^(n%3)])])`
-/

namespace A244475.P18123027841822747372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244475.P18123027841822747372

/-!
# A244476: 6th-largest term in n-th row of Stern's diatomic triangle A002487.

The programs for A244476, there is no canonical definition to state claims against.
-/

/-! ## A244476.P13677068288583746707

`Δ[A194439(2*n+5)+or(1, -n)%2]`
-/

namespace A244476.P13677068288583746707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (2 * n + 5) + Int.tmod (Int.lor 1 (-(n : ℤ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244476.P13677068288583746707

/-! ## A244476.P3516728305100953670

`record[Δ[A286531(A014113(n))]]`
-/

namespace A244476.P3516728305100953670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 (A014113 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244476.P3516728305100953670

/-! ## A244476.P4194487888618861679

`Δ[A194439(A004273(n)+6)]`
-/

namespace A244476.P4194487888618861679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (A004273 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244476.P4194487888618861679

/-!
# A244477: a(1)=3, a(2)=2, a(3)=1; thereafter a(n) = a(n-a(n-1)) + a(n-a(n-2)).

The programs for A244477, the canonical program `A244477.P8495364704452810431` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244477 has offset 1).

The definition of A244477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A244477.P8495364704452810431`, by `A244477.P8495364704452810431.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244477.P12629307451031891824

`2*a(n-3)-a(n-6)` with `a(0)=3, a(1)=2, a(2)=1, a(3)=3, a(4)=5, a(5)=4`
-/

namespace A244477.P12629307451031891824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1, 3, 5, 4] fun n a =>
  2 * a (n - 3) - a (n - 6)

end

end A244477.P12629307451031891824

namespace A244477

/-- `2*a(n-3)-a(n-6)` -/
def P12629307451031891824.Spec : Prop :=
  ∀ n, P12629307451031891824.a n = A244477 (n + 1)

end A244477

/-! ## A244477.P8495364704452810431

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=3, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244477

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P8495364704452810431.Spec : Prop :=
  ∀ n, (P8495364704452810431.a n : ℤ) = A244477 (n + 1)

theorem P8495364704452810431.correct : P8495364704452810431.Spec := by
  intro n
  simp only [A244477, Nat.add_sub_cancel]

end A244477

/-! ## A244477.P14299446701750285570

`n+1-a(n-1)%a(a(n-1)%n)` with `a(0)=3`
-/

namespace A244477.P14299446701750285570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n + 1 : ℤ) - Int.tmod (a (n - 1)) (a (Int.tmod (a (n - 1)) (n : ℤ)).toNat)

end

end A244477.P14299446701750285570

namespace A244477

/-- `n+1-a(n-1)%a(a(n-1)%n)` -/
def P14299446701750285570.Spec : Prop :=
  ∀ n, P14299446701750285570.a n = A244477 (n + 1)

end A244477

/-! ## A244477.P9174083824068215959

`A130508(a(n-3))+2` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A244477.P9174083824068215959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n a =>
  A130508 (a (n - 3)).toNat + 2

end

end A244477.P9174083824068215959

namespace A244477

/-- `A130508(a(n-3))+2` -/
def P9174083824068215959.Spec : Prop :=
  ∀ n, P9174083824068215959.a n = A244477 (n + 1)

end A244477

/-! ## A244477.P11055750459434673647

`n+1-A091684(a(n-2)-1)` with `a(0)=3, a(1)=2`
-/

namespace A244477.P11055750459434673647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  (n + 1 : ℤ) - A091684 (a (n - 2) - 1).toNat

end

end A244477.P11055750459434673647

namespace A244477

/-- `n+1-A091684(a(n-2)-1)` -/
def P11055750459434673647.Spec : Prop :=
  ∀ n, P11055750459434673647.a n = A244477 (n + 1)

end A244477

/-! ## A244477.P7643344953888480895

`A279318(A091684(n))`
-/

namespace A244477.P7643344953888480895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279318 (A091684 n).toNat

end

end A244477.P7643344953888480895

namespace A244477

/-- `A279318(A091684(n))` -/
def P7643344953888480895.Spec : Prop :=
  ∀ n, P7643344953888480895.a n = A244477 (n + 1)

end A244477

/-! ## A244477.P17767323183886050233

`A113655(A091684(n)+1)`
-/

namespace A244477.P17767323183886050233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (A091684 n + 1).toNat

end

end A244477.P17767323183886050233

namespace A244477

/-- `A113655(A091684(n)+1)` -/
def P17767323183886050233.Spec : Prop :=
  ∀ n, P17767323183886050233.a n = A244477 (n + 1)

end A244477

/-! ## A244477.P2409030544722542570

`gcd(A033596(n), A064429(n))`
-/

namespace A244477.P2409030544722542570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033596 n) (A064429 n)

end

end A244477.P2409030544722542570

namespace A244477

/-- `gcd(A033596(n), A064429(n))` -/
def P2409030544722542570.Spec : Prop :=
  ∀ n, (P2409030544722542570.a n : ℤ) = A244477 (n + 1)

end A244477

/-! ## A244477.P6735551989355762114

`gcd(A000212(n), A279318(n))`
-/

namespace A244477.P6735551989355762114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000212 n) (A279318 n)

end

end A244477.P6735551989355762114

namespace A244477

/-- `gcd(A000212(n), A279318(n))` -/
def P6735551989355762114.Spec : Prop :=
  ∀ n, (P6735551989355762114.a n : ℤ) = A244477 (n + 1)

end A244477

/-! ## A244477.P3305473743121075958

`A304621(3*n+1)/3`
-/

namespace A244477.P3305473743121075958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304621 (3 * n + 1) : ℚ) / 3

end

end A244477.P3305473743121075958

namespace A244477

/-- `A304621(3*n+1)/3` -/
def P3305473743121075958.Spec : Prop :=
  ∀ n, P3305473743121075958.a n = (A244477 (n + 1) : ℚ)

end A244477

/-!
# A244478: a(0)=2, a(1)=0, a(2)=2; thereafter a(n) = a(n-1-a(n-1))+a(n-2-a(n-2)) unless a(n-1) <= n-1 or a(n-2) <= n-2 in which case the sequence terminates.

The programs for A244478, the canonical program `A244478.P12748745636280526068` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244478 has offset 0).

The definition of A244478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1-a(n-1))+a(n-2-a(n-2))` (program `A244478.P12748745636280526068`, by `A244478.P12748745636280526068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244478.P12748745636280526068

`a(n-1-a(n-1))+a(n-2-a(n-2))` with `a(0)=2, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244478

/-- `a(n-1-a(n-1))+a(n-2-a(n-2))` -/
def P12748745636280526068.Spec : Prop :=
  ∀ n, (P12748745636280526068.a n : ℤ) = A244478 n

theorem P12748745636280526068.correct : P12748745636280526068.Spec := by
  intro n
  simp only [A244478]

end A244478

/-! ## A244478.P2180762110878844091

`2*A244479(n)`
-/

namespace A244478.P2180762110878844091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244479 n

end

end A244478.P2180762110878844091

namespace A244478

/-- `2*A244479(n)` -/
def P2180762110878844091.Spec : Prop :=
  ∀ n, P2180762110878844091.a n = A244478 n

end A244478

/-! ## A244478.P6259852117696337114

`2*A006949(n)-a(n-1)` with `a(0)=2`
-/

namespace A244478.P6259852117696337114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A006949 n - a (n - 1)

end

end A244478.P6259852117696337114

namespace A244478

/-- `2*A006949(n)-a(n-1)` -/
def P6259852117696337114.Spec : Prop :=
  ∀ n, P6259852117696337114.a n = A244478 n

end A244478

/-! ## A244478.P4891567147089657314

`A005843(A244479(n))`
-/

namespace A244478.P4891567147089657314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A244479 n).toNat

end

end A244478.P4891567147089657314

namespace A244478

/-- `A005843(A244479(n))` -/
def P4891567147089657314.Spec : Prop :=
  ∀ n, P4891567147089657314.a n = A244478 n

end A244478

/-! ## A244478.P2262203911889563816

`A006949(n+1)-Δ[A244479(n)]`
-/

namespace A244478.P2262203911889563816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (n + 1) - (f1 (n + 1) - f1 n)

end

end A244478.P2262203911889563816

namespace A244478

/-- `A006949(n+1)-Δ[A244479(n)]` -/
def P2262203911889563816.Spec : Prop :=
  ∀ n, P2262203911889563816.a n = A244478 n

end A244478

/-! ## A244478.P13745990712450389304

`A244479(A002378(n)/(n+1))+A244479(n)`
-/

namespace A244478.P13745990712450389304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (SequenceMachineLib.roundAway ((A002378 n : ℚ) / (n + 1 : ℚ))).toNat + A244479 n

end

end A244478.P13745990712450389304

namespace A244478

/-- `A244479(A002378(n)/(n+1))+A244479(n)` -/
def P13745990712450389304.Spec : Prop :=
  ∀ n, P13745990712450389304.a n = A244478 n

end A244478

/-! ## A244478.P2057722587571427722

`A006949(n+1)+A244479(n)-A244479(n+1)`
-/

namespace A244478.P2057722587571427722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (n + 1) + (A244479 n - A244479 (n + 1))

end

end A244478.P2057722587571427722

namespace A244478

/-- `A006949(n+1)+A244479(n)-A244479(n+1)` -/
def P2057722587571427722.Spec : Prop :=
  ∀ n, P2057722587571427722.a n = A244478 n

end A244478

/-! ## A244478.P13160285049657978631

`A005408(A244479(n)+n)-A005408(n)`
-/

namespace A244478.P13160285049657978631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A244479 n + (n : ℤ)).toNat - A005408 n

end

end A244478.P13160285049657978631

namespace A244478

/-- `A005408(A244479(n)+n)-A005408(n)` -/
def P13160285049657978631.Spec : Prop :=
  ∀ n, P13160285049657978631.a n = A244478 n

end A244478

/-!
# A244479: A244478(n)/2.

The programs for A244479, the canonical program `A244479.P847924530899818169` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244479 has offset 0).

The definition of A244479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244479.P847924530899818169

`A244478(n)/2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A244479

/-- `A244478(n)/2` -/
def P847924530899818169.Spec : Prop :=
  ∀ n, P847924530899818169.a n = (A244479 n : ℚ)

end A244479

/-! ## A244479.P8744442127257527847

`A006949(n)-a(n-1)` with `a(0)=1`
-/

namespace A244479.P8744442127257527847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006949 n - a (n - 1)

end

end A244479.P8744442127257527847

namespace A244479

/-- `A006949(n)-a(n-1)` -/
def P8744442127257527847.Spec : Prop :=
  ∀ n, P8744442127257527847.a n = A244479 n

end A244479

/-! ## A244479.P11983861263514411503

`A120522(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A244479.P11983861263514411503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A120522 n + a (n - 2)

end

end A244479.P11983861263514411503

namespace A244479

/-- `A120522(n)+a(n-2)` -/
def P11983861263514411503.Spec : Prop :=
  ∀ n, P11983861263514411503.a n = A244479 n

end A244479

/-! ## A244479.P17791110145852201347

`A001281(A244478(n))`
-/

namespace A244479.P17791110145852201347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A244478 n).toNat

end

end A244479.P17791110145852201347

namespace A244479

/-- `A001281(A244478(n))` -/
def P17791110145852201347.Spec : Prop :=
  ∀ n, P17791110145852201347.a n = A244479 n

end A244479

/-! ## A244479.P2645526420765108392

`A004526(A244478(n)+1)`
-/

namespace A244479.P2645526420765108392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A244478 n + 1).toNat

end

end A244479.P2645526420765108392

namespace A244479

/-- `A004526(A244478(n)+1)` -/
def P2645526420765108392.Spec : Prop :=
  ∀ n, P2645526420765108392.a n = A244479 n

end A244479

/-! ## A244479.P3056975418646103688

`A028242(A244478(n)+1)`
-/

namespace A244479.P3056975418646103688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A244478 n + 1).toNat

end

end A244479.P3056975418646103688

namespace A244479

/-- `A028242(A244478(n)+1)` -/
def P3056975418646103688.Spec : Prop :=
  ∀ n, P3056975418646103688.a n = A244479 n

end A244479

/-! ## A244479.P11164972553517666930

`A004526(A244478(2*n-n))`
-/

namespace A244479.P11164972553517666930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A244478 (2 * n - n)).toNat

end

end A244479.P11164972553517666930

namespace A244479

/-- `A004526(A244478(2*n-n))` -/
def P11164972553517666930.Spec : Prop :=
  ∀ n, P11164972553517666930.a n = A244479 n

end A244479

/-! ## A244479.P1292467504136906617

`A110654(A006949(n)-Δ[A006949(n+1)])`
-/

namespace A244479.P1292467504136906617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A006949 n - (f1 (n + 1) - f1 n)).toNat

end

end A244479.P1292467504136906617

namespace A244479

/-- `A110654(A006949(n)-Δ[A006949(n+1)])` -/
def P1292467504136906617.Spec : Prop :=
  ∀ n, P1292467504136906617.a n = A244479 n

end A244479

/-!
# A244480: Zeroth trisection of A240808.

The programs for A244480, there is no canonical definition to state claims against.
-/

/-! ## A244480.P16934977718042503749

`A240808(3*n)`
-/

namespace A244480.P16934977718042503749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (3 * n)

end

end A244480.P16934977718042503749

/-! ## A244480.P3016265256196434066

`and(-1, A240808(A005843(n)+n))`
-/

namespace A244480.P3016265256196434066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A240808 (A005843 n + (n : ℤ)).toNat)

end

end A244480.P3016265256196434066

/-! ## A244480.P5294698768398576535

`A240808(A008486(n))+C(2, n+2)`
-/

namespace A244480.P5294698768398576535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A008486 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A244480.P5294698768398576535

/-! ## A244480.P16286789345847339196

`A240808(A008486(n))+A000007(n)`
-/

namespace A244480.P16286789345847339196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A008486 n).toNat + A000007 n

end

end A244480.P16286789345847339196

/-! ## A244480.P7817466988110576556

`A240808(A008585(n))%A017053(n)`
-/

namespace A244480.P7817466988110576556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240808 (A008585 n).toNat) (A017053 n)

end

end A244480.P7817466988110576556

/-! ## A244480.P6628286692274857601

`A240808(A008486(n))+A057428(n)+1`
-/

namespace A244480.P6628286692274857601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A008486 n).toNat + (A057428 n + 1)

end

end A244480.P6628286692274857601

/-! ## A244480.P15737576767056079657

`gcd(A000038(n), A240808(A005843(n)+n))`
-/

namespace A244480.P15737576767056079657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A240808 (A005843 n + (n : ℤ)).toNat)

end

end A244480.P15737576767056079657

/-! ## A244480.P16933137555130221662

`∑{d}[A240808(A005843(n)+n), A000010(#)]`
-/

namespace A244480.P16933137555130221662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A005843 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A244480.P16933137555130221662

/-! ## A244480.P1802195997686399950

`∏{d}[A240808(A005843(n)+n), A014963(#)]`
-/

namespace A244480.P1802195997686399950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A005843 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A244480.P1802195997686399950

/-! ## A244480.P3091401921067899188

`A240808(A008486(n))+A008683((n+1)²)`
-/

namespace A244480.P3091401921067899188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A008486 n).toNat + A008683 ((n + 1) ^ 2)

end

end A244480.P3091401921067899188

/-!
# A244481: First trisection of A240808.

The programs for A244481, there is no canonical definition to state claims against.
-/

/-! ## A244481.P18078190436592380604

`A240808(3*n+1)`
-/

namespace A244481.P18078190436592380604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (3 * n + 1)

end

end A244481.P18078190436592380604

/-! ## A244481.P16095661113404706227

`or(char[1], A240808(Δ[n²]+n))`
-/

namespace A244481.P16095661113404706227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240808 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)).toNat)

end

end A244481.P16095661113404706227

/-! ## A244481.P7076600590884848366

`A240808(A016777(n))%96`
-/

namespace A244481.P7076600590884848366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240808 (A016777 n).toNat) 96

end

end A244481.P7076600590884848366

/-! ## A244481.P617723798242436521

`A240808(Δ[n²]+n)%A000040(n+1)`
-/

namespace A244481.P617723798242436521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240808 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat) (A000040 (n + 1))

end

end A244481.P617723798242436521

/-! ## A244481.P15347166549809160976

`A240808(Δ[n²]+n)^A000010(C(2, n)!)`
-/

namespace A244481.P15347166549809160976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240808 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℚ) ^ (A000010 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A244481.P15347166549809160976

/-! ## A244481.P13343304027830740038

`A240808(Δ[n²]+n)^A005117(gcd(n, n+1))`
-/

namespace A244481.P13343304027830740038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240808 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℚ) ^ (A005117 (Nat.gcd n (n + 1)) : ℤ)

end

end A244481.P13343304027830740038

/-! ## A244481.P9190673944886378557

`A240808(Δ[n²]+n)+floor(A001221(n+1)/9)`
-/

namespace A244481.P9190673944886378557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat + ⌊(A001221 (n + 1) : ℚ) / 9⌋

end

end A244481.P9190673944886378557

/-! ## A244481.P9674087819672019051

`∑{d}[A240808(A016777(n)), A000010(#)]`
-/

namespace A244481.P9674087819672019051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A244481.P9674087819672019051

/-! ## A244481.P10816204480865651132

`A240808(A016777(n))+C(2, A000203(n+2))`
-/

namespace A244481.P10816204480865651132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A016777 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A244481.P10816204480865651132

/-! ## A244481.P9711568884113198554

`floor(A240808(A016777(n))+A000040(n+1)^-1)`
-/

namespace A244481.P9711568884113198554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A240808 (A016777 n).toNat : ℚ) + (A000040 (n + 1) : ℚ) ^ (-1 : ℤ)⌋

end

end A244481.P9711568884113198554

/-!
# A244482: Second trisection of A240808.

The programs for A244482, there is no canonical definition to state claims against.
-/

/-! ## A244482.P8306701016141398172

`A240808(3*n+2)`
-/

namespace A244482.P8306701016141398172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (3 * n + 2)

end

end A244482.P8306701016141398172

/-! ## A244482.P8000664566796465901

`lcm(3, A240808(A016789(n)))`
-/

namespace A244482.P8000664566796465901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A240808 (A016789 n).toNat)

end

end A244482.P8000664566796465901

/-! ## A244482.P14953865219187144518

`A240808(A016789(n))%A000145(n)`
-/

namespace A244482.P14953865219187144518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240808 (A016789 n).toNat) (A000145 n)

end

end A244482.P14953865219187144518

/-! ## A244482.P18134149498386878257

`∑{d}[A240808(A016789(n)), A000010(#)]`
-/

namespace A244482.P18134149498386878257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A244482.P18134149498386878257

/-! ## A244482.P18415844498788704039

`A010054(∑[n])*A240808(A016789(n))`
-/

namespace A244482.P18415844498788704039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j) * A240808 (A016789 n).toNat

end

end A244482.P18415844498788704039

/-! ## A244482.P10684021241731948192

`A240808(A016789(n))+A000007(n+1)`
-/

namespace A244482.P10684021241731948192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A016789 n).toNat + A000007 (n + 1)

end

end A244482.P10684021241731948192

/-! ## A244482.P5030428651310367605

`A007318(C(2, n))*A240808(A016789(n))`
-/

namespace A244482.P5030428651310367605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A240808 (A016789 n).toNat

end

end A244482.P5030428651310367605

/-! ## A244482.P16950450865352897912

`A000108(n*char[1])*A240808(A016789(n))`
-/

namespace A244482.P16950450865352897912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n * (if ∃ j, f1 j = n then 1 else 0)) * A240808 (A016789 n).toNat

end

end A244482.P16950450865352897912

/-! ## A244482.P14110821468610394274

`A240808(A016789(n))/A000108(gcd(n, n+1))`
-/

namespace A244482.P14110821468610394274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240808 (A016789 n).toNat : ℚ) / (A000108 (Nat.gcd n (n + 1)) : ℚ)

end

end A244482.P14110821468610394274

/-! ## A244482.P16878371067103006813

`∑{d}[A240808(A005843(n+1)+n), A000010(#)]`
-/

namespace A244482.P16878371067103006813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 (A005843 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A244482.P16878371067103006813

/-!
# A244483: a(0)=3, a(1)=1, a(2)=0; thereafter a(n) = a(n-1-a(n-1))+a(n-2-a(n-2)) unless a(n-1) <= n-1 or a(n-2) <= n-2 in which case the sequence terminates.

The programs for A244483, the canonical program `A244483.P1341152745490394283` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244483 has offset 0).

The definition of A244483 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1-a(n-1))+a(n-2-a(n-2))` (program `A244483.P1341152745490394283`, by `A244483.P1341152745490394283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244483.P1341152745490394283

`a(n-1-a(n-1))+a(n-2-a(n-2))` with `a(0)=3, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244483

/-- `a(n-1-a(n-1))+a(n-2-a(n-2))` -/
def P1341152745490394283.Spec : Prop :=
  ∀ n, (P1341152745490394283.a n : ℤ) = A244483 n

theorem P1341152745490394283.correct : P1341152745490394283.Spec := by
  intro n
  simp only [A244483]

end A244483

/-!
# A244485: Saturated two-layer networks on n channels.

The programs for A244485, there is no canonical definition to state claims against.
-/

/-! ## A244485.P6624218738059521706

`∑[A161207(C(A000041(n), 2)+1)]`
-/

namespace A244485.P6624218738059521706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (Nat.choose (A000041 n).toNat 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244485.P6624218738059521706

/-!
# A244488: G.f.: (1+x^2+3*x^3+4*x^4+4*x^5+4*x^6+3*x^7+x^8+x^10)/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^5)).

The programs for A244488, there is no canonical definition to state claims against.
-/

/-! ## A244488.P17518207652058630144

`A122047(n)+A003849(A115455(n))`
-/

namespace A244488.P17518207652058630144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122047 n + A003849 (A115455 n).toNat

end

end A244488.P17518207652058630144

/-! ## A244488.P6040855619116927481

`A000123(n)-A001221(A051945(n))`
-/

namespace A244488.P6040855619116927481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n - A001221 (A051945 n).toNat

end

end A244488.P6040855619116927481

/-! ## A244488.P16518045573228829551

`A001973(n)-A001221(A083100(n))`
-/

namespace A244488.P16518045573228829551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 n - A001221 (A083100 n).toNat

end

end A244488.P16518045573228829551

/-! ## A244488.P16476874447367922493

`A221167(A060528(n+1))+A033442(n)`
-/

namespace A244488.P16476874447367922493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221167 (A060528 (n + 1)).toNat + A033442 n

end

end A244488.P16476874447367922493

/-! ## A244488.P6561154924856137875

`A064097(A173110(n))+A000931(2*n)`
-/

namespace A244488.P6561154924856137875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A173110 n).toNat + A000931 (2 * n)

end

end A244488.P6561154924856137875

/-!
# A244489: Triangle read by rows: T(n,k) = Sum_{j=k..n} binomial(n,j)*Stirling_2(j,k)*Bell(n-j), where Bell(n) = A000110(n), for n >= 1, 0 <= k <= n-1.

The programs for A244489, there is no canonical definition to state claims against.
-/

/-! ## A244489.P16247935145240644142

`A049020(comp[∑[n-1]])`
-/

namespace A244489.P16247935145240644142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A244489.P16247935145240644142

/-! ## A244489.P10821595691590184405

`or(char[2], A049020(A007401(n+1)))`
-/

namespace A244489.P10821595691590184405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A049020 (A007401 (n + 1)).toNat)

end

end A244489.P10821595691590184405

/-! ## A244489.P1611149368283373675

`A049020(comp[C(n, 2)-1])%A251829(n+1)`
-/

namespace A244489.P1611149368283373675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049020 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A251829 (n + 1))

end

end A244489.P1611149368283373675

/-! ## A244489.P3895007321248633295

`gcd(A000038(n), A049020(A007401(n+1)))`
-/

namespace A244489.P3895007321248633295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A049020 (A007401 (n + 1)).toNat)

end

end A244489.P3895007321248633295

/-! ## A244489.P14729065000931566308

`lcm(A049020(A007401(n+1)), A097807(n))`
-/

namespace A244489.P14729065000931566308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049020 (A007401 (n + 1)).toNat) (A097807 n)

end

end A244489.P14729065000931566308

/-! ## A244489.P7432743832307596482

`abs(A033999(n)*A049020(A007401(n+1)))`
-/

namespace A244489.P7432743832307596482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A049020 (A007401 (n + 1)).toNat|

end

end A244489.P7432743832307596482

/-! ## A244489.P4725279202705448349

`A007318(∑[n])*A049020(A007401(n+1))`
-/

namespace A244489.P4725279202705448349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A049020 (A007401 (n + 1)).toNat

end

end A244489.P4725279202705448349

/-! ## A244489.P1597496720404777495

`A049020(A007401(n+1))%∑[A000032(n)]`
-/

namespace A244489.P1597496720404777495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049020 (A007401 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244489.P1597496720404777495

/-! ## A244489.P7483196065445107358

`A049020(A007401(n+1))/A007318(C(2, n))`
-/

namespace A244489.P7483196065445107358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049020 (A007401 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A244489.P7483196065445107358

/-! ## A244489.P6883684894998398538

`A049020(A007401(n+1))+val(A000040(n+10), 2)`
-/

namespace A244489.P6883684894998398538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (A007401 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 10)).toNat 2 : ℤ)

end

end A244489.P6883684894998398538

/-!
# A244490: Triangle read by rows: T(n,k) (0 <= k <= n) = Sum_{i=0..[k/2]} (-1)^i*binomial(k,2*i)*(2*i-1)!!*n^(k-2*i).

The programs for A244490, there is no canonical definition to state claims against.
-/

/-! ## A244490.P1506608578108706412

`A334014(comp[∑[n-1]])`
-/

namespace A244490.P1506608578108706412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A244490.P1506608578108706412

/-! ## A244490.P12308317255379954590

`or(char[1], A334014(A007401(n+1)))`
-/

namespace A244490.P12308317255379954590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A334014 (A007401 (n + 1)).toNat)

end

end A244490.P12308317255379954590

/-! ## A244490.P3239190592403045602

`A334014(A007401(n+1))^A178334(n)`
-/

namespace A244490.P3239190592403045602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334014 (A007401 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A244490.P3239190592403045602

/-! ## A244490.P10745897526484518839

`gcd(A000038(n), A334014(A007401(n+1)))`
-/

namespace A244490.P10745897526484518839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A334014 (A007401 (n + 1)).toNat)

end

end A244490.P10745897526484518839

/-! ## A244490.P11981884354148772335

`char[A006370(n)]*A334014(A007401(n+1))`
-/

namespace A244490.P11981884354148772335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A334014 (A007401 (n + 1)).toNat

end

end A244490.P11981884354148772335

/-! ## A244490.P15860784602489233819

`A334014(A007401(n+1))%∑[A000032(n)]`
-/

namespace A244490.P15860784602489233819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334014 (A007401 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244490.P15860784602489233819

/-! ## A244490.P17641768526105344568

`A334014(A007401(n+1))+A000007(n+3)`
-/

namespace A244490.P17641768526105344568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (A007401 (n + 1)).toNat + A000007 (n + 3)

end

end A244490.P17641768526105344568

/-! ## A244490.P6775176081833037664

`A007318(C(2, n))*A334014(A007401(n+1))`
-/

namespace A244490.P6775176081833037664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A334014 (A007401 (n + 1)).toNat

end

end A244490.P6775176081833037664

/-! ## A244490.P5302277123861300245

`A334014(A007401(n+1))+A008683(4*(n+1))`
-/

namespace A244490.P5302277123861300245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (A007401 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A244490.P5302277123861300245

/-! ## A244490.P11102505723239905731

`A014963(9*n+6)*A334014(A007401(n+1))`
-/

namespace A244490.P11102505723239905731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A334014 (A007401 (n + 1)).toNat

end

end A244490.P11102505723239905731

/-!
# A244491: Number of minimal idempotent generating sets for the singular part P_n \ S_n of the partition monoid P_n.

The programs for A244491, there is no canonical definition to state claims against.
-/

/-! ## A244491.P3586044799447462008

`A028310(A081209(n)-A099306(n))`
-/

namespace A244491.P3586044799447462008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A081209 n - A099306 n).toNat

end

end A244491.P3586044799447462008

/-! ## A244491.P2468167746565685967

`A028310(xor(A081209(n), A099306(n)))`
-/

namespace A244491.P2468167746565685967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A081209 n) (A099306 n)).toNat

end

end A244491.P2468167746565685967

/-!
# A244492: Triangle read by rows: T(n,k) (n>=2, 0 <= k <= n-2) = n!/(2^i*i!*k!), where k=n-2i (or 0 for entries with wrong parity).

The programs for A244492, there is no canonical definition to state claims against.
-/

/-! ## A244492.P14029006292929197187

`A099174(comp[∑[n]]+∑[char[∑[n]]])`
-/

namespace A244492.P14029006292929197187
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
  A099174 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f3 j)

end

end A244492.P14029006292929197187

/-! ## A244492.P18030143720705909185

`abs(A066325(lt[n, A122832(n)]))`
-/

namespace A244492.P18030143720705909185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)|

end

end A244492.P18030143720705909185

/-! ## A244492.P2314761664487668256

`A049403(A209293(n+1)+A002024(n+1))`
-/

namespace A244492.P2314761664487668256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049403 (A209293 (n + 1) + A002024 (n + 1)).toNat

end

end A244492.P2314761664487668256

/-!
# A244497: Number of magic labelings of the prism graph I X C_5 with magic sum n.

The programs for A244497, the canonical program `A244497.P10835936318056941169` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244497 has offset 0).

The definition of A244497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244497.P10835936318056941169

`A085463(n+1)-A011888(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A244497

/-- `A085463(n+1)-A011888(n)` -/
def P10835936318056941169.Spec : Prop :=
  ∀ n, P10835936318056941169.a n = A244497 n

theorem P10835936318056941169.correct : P10835936318056941169.Spec := by
  intro n
  simp only [A244497]

end A244497

/-! ## A244497.P18217739492011404053

`∑[∑[A173196(n)+A005898(n)]]`
-/

namespace A244497.P18217739492011404053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + A005898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244497.P18217739492011404053

namespace A244497

/-- `∑[∑[A173196(n)+A005898(n)]]` -/
def P18217739492011404053.Spec : Prop :=
  ∀ n, P18217739492011404053.a n = A244497 n

end A244497

/-! ## A244497.P10723157672579918125

`∑[∑[(A007202(n)+A005894(n))/2]]`
-/

namespace A244497.P10723157672579918125
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007202 n + A005894 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244497.P10723157672579918125

namespace A244497

/-- `∑[∑[(A007202(n)+A005894(n))/2]]` -/
def P10723157672579918125.Spec : Prop :=
  ∀ n, P10723157672579918125.a n = (A244497 n : ℚ)

end A244497

/-! ## A244497.P11594103303759900889

`A244869(n)+A271662(n)-A244882(n)`
-/

namespace A244497.P11594103303759900889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 n + (A271662 n - A244882 n)

end

end A244497.P11594103303759900889

namespace A244497

/-- `A244869(n)+A271662(n)-A244882(n)` -/
def P11594103303759900889.Spec : Prop :=
  ∀ n, P11594103303759900889.a n = A244497 n

end A244497

/-! ## A244497.P14715117774172922303

`A085462(n+1)+A244869(n)-A085463(n+1)`
-/

namespace A244497.P14715117774172922303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) + (A244869 n - A085463 (n + 1))

end

end A244497.P14715117774172922303

namespace A244497

/-- `A085462(n+1)+A244869(n)-A085463(n+1)` -/
def P14715117774172922303.Spec : Prop :=
  ∀ n, P14715117774172922303.a n = A244497 n

end A244497

/-! ## A244497.P5465264021610212009

`A000914(n)+∑[A172123(n+1)+A001752(n)]`
-/

namespace A244497.P5465264021610212009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172123 (n + 1) + A001752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000914 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244497.P5465264021610212009

namespace A244497

/-- `A000914(n)+∑[A172123(n+1)+A001752(n)]` -/
def P5465264021610212009.Spec : Prop :=
  ∀ n, P5465264021610212009.a n = A244497 n

end A244497

/-! ## A244497.P15185358188638577907

`∑[A000217((n+1)²)+∑[A173196(n)]]`
-/

namespace A244497.P15185358188638577907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n + 1) ^ 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244497.P15185358188638577907

namespace A244497

/-- `∑[A000217((n+1)²)+∑[A173196(n)]]` -/
def P15185358188638577907.Spec : Prop :=
  ∀ n, P15185358188638577907.a n = A244497 n

end A244497

/-! ## A244497.P17661931891580786665

`∑[∑[∑[A056021(n²+1)]+n]]`
-/

namespace A244497.P17661931891580786665
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244497.P17661931891580786665

namespace A244497

/-- `∑[∑[∑[A056021(n²+1)]+n]]` -/
def P17661931891580786665.Spec : Prop :=
  ∀ n, P17661931891580786665.a n = A244497 n

end A244497

