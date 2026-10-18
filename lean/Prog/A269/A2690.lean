import SequenceMachineLib
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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
import Seq.Opaque.C022

/-!
# A269000: Number of 6Xn binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269000, there is no canonical definition to state claims against.
-/

/-! ## A269000.P10491019932510376252

`A268995(A166136(n+4))`
-/

namespace A269000.P10491019932510376252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A166136 (n + 4)).toNat

end

end A269000.P10491019932510376252

/-! ## A269000.P2508153083597515076

`A268995(A056115(n)+21)`
-/

namespace A269000.P2508153083597515076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A056115 n + 21).toNat

end

end A269000.P2508153083597515076

/-! ## A269000.P15373805121447212479

`A268995(A167499(n+4)+1)`
-/

namespace A269000.P15373805121447212479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A167499 (n + 4) + 1).toNat

end

end A269000.P15373805121447212479

/-! ## A269000.P4320020579099607838

`A268995(A155212(n+1)+14)`
-/

namespace A269000.P4320020579099607838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A155212 (n + 1) + 14).toNat

end

end A269000.P4320020579099607838

/-! ## A269000.P6971669674156812731

`A268995(eq[7, A131818(n+1)])`
-/

namespace A269000.P6971669674156812731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269000.P6971669674156812731

/-!
# A269001: Number of 7Xn binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269001, there is no canonical definition to state claims against.
-/

/-! ## A269001.P2312211683040383794

`A268892(n+1)+A188704(n+1)`
-/

namespace A269001.P2312211683040383794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268892 (n + 1) + A188704 (n + 1)

end

end A269001.P2312211683040383794

/-! ## A269001.P8031475757642701948

`A268995(A056119(n)+28)`
-/

namespace A269001.P8031475757642701948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A056119 n + 28).toNat

end

end A269001.P8031475757642701948

/-! ## A269001.P8656962184170880989

`A268995(eq[11, A066657(n)])`
-/

namespace A269001.P8656962184170880989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269001.P8656962184170880989

/-! ## A269001.P3078539646238329173

`A268995(eq[8, A131818(n+1)])`
-/

namespace A269001.P3078539646238329173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269001.P3078539646238329173

/-! ## A269001.P5288856906805109931

`A268995(A000217(n+8)-8-2*n)`
-/

namespace A269001.P5288856906805109931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A000217 (n + 8) - 8 - (2 * n : ℤ)).toNat

end

end A269001.P5288856906805109931

/-!
# A269003: Numbers having the same parity of numbers of 1's in bases 2 and -2.

The programs for A269003, there is no canonical definition to state claims against.
-/

/-! ## A269003.P3008303394834208886

`eq[4, A106049(2*n)]`
-/

namespace A269003.P3008303394834208886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106049 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269003.P3008303394834208886

/-! ## A269003.P14594061383637158135

`eq[1-a(and(n, n-1)), A269027(n)]` with `a(0)=0`
-/

namespace A269003.P14594061383637158135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P14594061383637158135

/-! ## A269003.P9613447126611934510

`eq[1-a(and(n, n-1)), A027615(n)%2]` with `a(0)=0`
-/

namespace A269003.P9613447126611934510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027615 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P9613447126611934510

/-! ## A269003.P17221282093558065851

`eq[1-a(and(n, n-1)), A338253(n)%2]` with `a(0)=0`
-/

namespace A269003.P17221282093558065851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338253 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P17221282093558065851

/-! ## A269003.P11906302960614390755

`eq[1-a(and(n, n-1)), A284566(3*n)%2]` with `a(0)=0`
-/

namespace A269003.P11906302960614390755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284566 (3 * n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P11906302960614390755

/-! ## A269003.P1237487576284027456

`eq[A010060(n), A269027(n)]`
-/

namespace A269003.P1237487576284027456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P1237487576284027456

/-! ## A269003.P1520104898571849777

`eq[log2(A001285(n)), A269027(n)]`
-/

namespace A269003.P1520104898571849777
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001285 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A269003.P1520104898571849777

/-! ## A269003.P8243186172151731578

`eq[1, A269027(n)+A010059(n)]`
-/

namespace A269003.P8243186172151731578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n + A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269003.P8243186172151731578

/-! ## A269003.P8166616624344089904

`eq[A254379(2*n), A269027(n)]`
-/

namespace A269003.P8166616624344089904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P8166616624344089904

/-! ## A269003.P16080963053704343875

`eq[A269027(n), A316828(2*n)]`
-/

namespace A269003.P16080963053704343875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P16080963053704343875

/-!
# A269004: a(n) is the sum of the prime factors, with repetition, of the sum of all preceding terms, with initial terms a(1)=1 and a(2)=2.

The programs for A269004, there is no canonical definition to state claims against.
-/

/-! ## A269004.P13848459635362238153

`Δ[A001414(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A269004.P13848459635362238153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A001414 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269004.P13848459635362238153

/-! ## A269004.P9688180469484426707

`Δ[A222416(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A269004.P9688180469484426707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A222416 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269004.P9688180469484426707

/-! ## A269004.P7592439436013412657

`Δ[A075254(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A269004.P7592439436013412657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A075254 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269004.P7592439436013412657

/-! ## A269004.P13522435006053502362

`Δ[A075653(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A269004.P13522435006053502362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A075653 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269004.P13522435006053502362

/-! ## A269004.P9549695078425963257

`Δ[A254340(A023443(a(n-1)))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A269004.P9549695078425963257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  A254340 (A023443 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269004.P9549695078425963257

/-!
# A269005: Number of n X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269005, there is no canonical definition to state claims against.
-/

/-! ## A269005.P15856430430770795516

`A269011((n+1)²+n²)`
-/

namespace A269005.P15856430430770795516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 ((n + 1) ^ 2 + n ^ 2)

end

end A269005.P15856430430770795516

/-! ## A269005.P5757759171252121413

`lcm(2, A269011(A001844(n)))`
-/

namespace A269005.P5757759171252121413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269011 (A001844 n).toNat)

end

end A269005.P5757759171252121413

/-! ## A269005.P10117519634214366546

`record[A003982(n)*A269011(n+1)]`
-/

namespace A269005.P10117519634214366546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269005.P10117519634214366546

/-! ## A269005.P2134259367516682421

`A269011(A001844(n))+A025469(n)`
-/

namespace A269005.P2134259367516682421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A001844 n).toNat + A025469 n

end

end A269005.P2134259367516682421

/-! ## A269005.P8638189931208569347

`A269011(A001844(n))+A185037(n)`
-/

namespace A269005.P8638189931208569347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A001844 n).toNat + A185037 n

end

end A269005.P8638189931208569347

/-!
# A269006: Number of n X 3 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269006, there is no canonical definition to state claims against.
-/

/-! ## A269006.P11532382825130539515

`A269070(n+1)-A228678(n+1)`
-/

namespace A269006.P11532382825130539515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269070 (n + 1) - A228678 (n + 1)

end

end A269006.P11532382825130539515

/-! ## A269006.P16214228819040354494

`A269070(n+1)-A228683(∑[n+3]+1)`
-/

namespace A269006.P16214228819040354494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269070 (n + 1) - A228683 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269006.P16214228819040354494

/-! ## A269006.P1112239846381876145

`A269011(∑[n+3]+1)`
-/

namespace A269006.P1112239846381876145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269006.P1112239846381876145

/-! ## A269006.P10435987838031221501

`lcm(2, A269011(A034856(n+2)))`
-/

namespace A269006.P10435987838031221501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269011 (A034856 (n + 2)).toNat)

end

end A269006.P10435987838031221501

/-! ## A269006.P15473617466279402345

`A269011(A034856(n+2))%A199417(n+1)`
-/

namespace A269006.P15473617466279402345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269011 (A034856 (n + 2)).toNat) (A199417 (n + 1))

end

end A269006.P15473617466279402345

/-!
# A269007: Number of n X 4 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269007, there is no canonical definition to state claims against.
-/

/-! ## A269007.P17724524662500777280

`A269011(A027379(n+2))`
-/

namespace A269007.P17724524662500777280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A027379 (n + 2)).toNat

end

end A269007.P17724524662500777280

/-! ## A269007.P3265416731800263335

`A269011(A055998(n+2))`
-/

namespace A269007.P3265416731800263335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A055998 (n + 2)).toNat

end

end A269007.P3265416731800263335

/-! ## A269007.P6174803480603846641

`A269011(A056000(n)+7)`
-/

namespace A269007.P6174803480603846641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A056000 n + 7).toNat

end

end A269007.P6174803480603846641

/-! ## A269007.P2090759520934424752

`A269011(eq[4, A140996(n)])`
-/

namespace A269007.P2090759520934424752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269007.P2090759520934424752

/-! ## A269007.P9103900889884994098

`A269011(A052905(n+1)+2)`
-/

namespace A269007.P9103900889884994098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A052905 (n + 1) + 2).toNat

end

end A269007.P9103900889884994098

/-!
# A269008: Number of n X 5 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269008, there is no canonical definition to state claims against.
-/

/-! ## A269008.P10594008610468148203

`A269011(Δ[A264443(n)])`
-/

namespace A269008.P10594008610468148203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (f1 (n + 1) - f1 n).toNat

end

end A269008.P10594008610468148203

/-! ## A269008.P8514038730692996129

`A269011(A046691(n+3))`
-/

namespace A269008.P8514038730692996129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A046691 (n + 3)).toNat

end

end A269008.P8514038730692996129

/-! ## A269008.P16422231376349051515

`A269011(eq[4, A193592(n)])`
-/

namespace A269008.P16422231376349051515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269008.P16422231376349051515

/-! ## A269008.P18402961723797434551

`A269011(Δ[A023545(n+1)])`
-/

namespace A269008.P18402961723797434551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (f1 (n + 1) - f1 n).toNat

end

end A269008.P18402961723797434551

/-! ## A269008.P6027253301682864213

`A269011(A166136(n+4)-10)`
-/

namespace A269008.P6027253301682864213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A166136 (n + 4) - 10).toNat

end

end A269008.P6027253301682864213

/-!
# A269009: Number of nX6 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269009, there is no canonical definition to state claims against.
-/

/-! ## A269009.P16792446642342279033

`A269011(A052905(n+3))`
-/

namespace A269009.P16792446642342279033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A052905 (n + 3)).toNat

end

end A269009.P16792446642342279033

/-! ## A269009.P5738059594370809743

`A269011(eq[3, A219347(n)])`
-/

namespace A269009.P5738059594370809743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269009.P5738059594370809743

/-! ## A269009.P18146154182858290946

`A269011(eq[5, A193592(n)])`
-/

namespace A269009.P18146154182858290946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269009.P18146154182858290946

/-! ## A269009.P6170181905163556414

`A269011(eq[8, A258709(n)])`
-/

namespace A269009.P6170181905163556414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269009.P6170181905163556414

/-! ## A269009.P13618035220621506334

`A269011(eq[8, A185782(n+1)])`
-/

namespace A269009.P13618035220621506334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269009.P13618035220621506334

/-!
# A269010: Number of nX7 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269010, there is no canonical definition to state claims against.
-/

/-! ## A269010.P5261324226827770317

`A269011(A055999(n+4))`
-/

namespace A269010.P5261324226827770317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A055999 (n + 4)).toNat

end

end A269010.P5261324226827770317

/-! ## A269010.P7276263110658290610

`A269011(eq[4, A219347(n)])`
-/

namespace A269010.P7276263110658290610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269010.P7276263110658290610

/-! ## A269010.P3881009641745173920

`A269011(eq[6, A193592(n)])`
-/

namespace A269010.P3881009641745173920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269010.P3881009641745173920

/-! ## A269010.P10116406258034600569

`A269011(A052905(n+4)-1)`
-/

namespace A269010.P10116406258034600569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A052905 (n + 4) - 1).toNat

end

end A269010.P10116406258034600569

/-! ## A269010.P6453201910929412801

`A269011(eq[10, A185782(n+1)])`
-/

namespace A269010.P6453201910929412801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269010.P6453201910929412801

/-!
# A269011: T(n,k)=Number of nXk binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269011, there is no canonical definition to state claims against.
-/

/-! ## A269011.P1481068644672124044

`A269075(n+1)-A228683(n+1)`
-/

namespace A269011.P1481068644672124044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (n + 1) - A228683 (n + 1)

end

end A269011.P1481068644672124044

/-! ## A269011.P3891306871513245702

`A056737(A228683(n+1)*A269075(n+1))`
-/

namespace A269011.P3891306871513245702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A228683 (n + 1) * A269075 (n + 1)).toNat

end

end A269011.P3891306871513245702

/-! ## A269011.P6262997407481755138

`A283543(n+1)-(A228683(n+1)+A107846(A001006(n)))`
-/

namespace A269011.P6262997407481755138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - (A228683 (n + 1) + A107846 (A001006 n).toNat)

end

end A269011.P6262997407481755138

/-! ## A269011.P12406485939170659276

`A283543(n+1)-(A228683(n+1)+A044940(A102468(n)))`
-/

namespace A269011.P12406485939170659276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - (A228683 (n + 1) + A044940 (A102468 n).toNat)

end

end A269011.P12406485939170659276

/-!
# A269012: Number of 2 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269012, the canonical program `A269012.P16983890212988660902` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269012 has offset 1).

The definition of A269012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269012.P16983890212988660902

`2*a(n-1)+5*a(n-2)-6*a(n-3)-9*a(n-4)` with `a(0)=0, a(1)=4, a(2)=8, a(3)=36`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A269012

/-- `2*a(n-1)+5*a(n-2)-6*a(n-3)-9*a(n-4)` -/
def P16983890212988660902.Spec : Prop :=
  ∀ n, P16983890212988660902.a n = A269012 (n + 1)

theorem P16983890212988660902.correct : P16983890212988660902.Spec := by
  intro n
  simp only [A269012, Nat.add_sub_cancel]

end A269012

/-! ## A269012.P7199492802843401140

`A269011(∑[n+1]+2)`
-/

namespace A269012.P7199492802843401140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269012.P7199492802843401140

namespace A269012

/-- `A269011(∑[n+1]+2)` -/
def P7199492802843401140.Spec : Prop :=
  ∀ n, P7199492802843401140.a n = A269012 (n + 1)

end A269012

/-! ## A269012.P11146813217894383988

`lcm(2, A269011(A167487(n)-5))`
-/

namespace A269012.P11146813217894383988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269011 (A167487 n - 5).toNat)

end

end A269012.P11146813217894383988

namespace A269012

/-- `lcm(2, A269011(A167487(n)-5))` -/
def P11146813217894383988.Spec : Prop :=
  ∀ n, (P11146813217894383988.a n : ℤ) = A269012 (n + 1)

end A269012

/-! ## A269012.P14581478936750867287

`A269011(C(n+2, 2)+2)%A152429(n)`
-/

namespace A269012.P14581478936750867287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269011 (Nat.choose (n + 2) 2 + 2)) (A152429 n)

end

end A269012.P14581478936750867287

namespace A269012

/-- `A269011(C(n+2, 2)+2)%A152429(n)` -/
def P14581478936750867287.Spec : Prop :=
  ∀ n, P14581478936750867287.a n = A269012 (n + 1)

end A269012

/-!
# A269013: Number of 3 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269013, there is no canonical definition to state claims against.
-/

/-! ## A269013.P14480286369484669328

`A269077(n+1)-A228684(n+1)`
-/

namespace A269013.P14480286369484669328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269077 (n + 1) - A228684 (n + 1)

end

end A269013.P14480286369484669328

/-! ## A269013.P7360892047382021230

`A269077(n+1)-A228683(A167614(n+1))`
-/

namespace A269013.P7360892047382021230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269077 (n + 1) - A228683 (A167614 (n + 1)).toNat

end

end A269013.P7360892047382021230

/-! ## A269013.P8701410318370132829

`A269011(∑[n+2]+4)`
-/

namespace A269013.P8701410318370132829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269013.P8701410318370132829

/-! ## A269013.P14865497437842744116

`A269075(∑[n+2]+4)-A228684(n+1)`
-/

namespace A269013.P14865497437842744116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (∑ j ∈ Finset.range (n + 1), f1 j + 4) - A228684 (n + 1)

end

end A269013.P14865497437842744116

/-! ## A269013.P7824940562630692583

`A054977(n)*A269011(A167614(n+1))`
-/

namespace A269013.P7824940562630692583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A269011 (A167614 (n + 1)).toNat

end

end A269013.P7824940562630692583

/-!
# A269014: Number of 4 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269014, there is no canonical definition to state claims against.
-/

/-! ## A269014.P13103563391247598124

`A269011(A052905(n)+9)`
-/

namespace A269014.P13103563391247598124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A052905 n + 9).toNat

end

end A269014.P13103563391247598124

/-! ## A269014.P14576258255061390966

`A269011(A055999(n)+10)`
-/

namespace A269014.P14576258255061390966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A055999 n + 10).toNat

end

end A269014.P14576258255061390966

/-! ## A269014.P16881489259697451474

`A269011(A167614(n+2)+1)`
-/

namespace A269014.P16881489259697451474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A167614 (n + 2) + 1).toNat

end

end A269014.P16881489259697451474

/-! ## A269014.P4705527014256883921

`A269011(A166136(n+2)-2)`
-/

namespace A269014.P4705527014256883921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A166136 (n + 2) - 2).toNat

end

end A269014.P4705527014256883921

/-! ## A269014.P5180887393674210586

`A269011(A000217(n+3)+4)`
-/

namespace A269014.P5180887393674210586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A000217 (n + 3) + 4).toNat

end

end A269014.P5180887393674210586

/-!
# A269015: Number of 5Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269015, there is no canonical definition to state claims against.
-/

/-! ## A269015.P5498166146247036770

`A269011(A167499(n+3))`
-/

namespace A269015.P5498166146247036770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A167499 (n + 3)).toNat

end

end A269015.P5498166146247036770

/-! ## A269015.P17231297318361183127

`A269011(A155212(n)+13)`
-/

namespace A269015.P17231297318361183127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A155212 n + 13).toNat

end

end A269015.P17231297318361183127

/-! ## A269015.P13679775410520319594

`A269011(A056000(n)+15)`
-/

namespace A269015.P13679775410520319594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A056000 n + 15).toNat

end

end A269015.P13679775410520319594

/-! ## A269015.P3790915334491148513

`A269011(A166136(n+3)-1)`
-/

namespace A269015.P3790915334491148513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A166136 (n + 3) - 1).toNat

end

end A269015.P3790915334491148513

/-! ## A269015.P13765179431789984156

`A269011(A167614(n+3)+2)`
-/

namespace A269015.P13765179431789984156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A167614 (n + 3) + 2).toNat

end

end A269015.P13765179431789984156

/-!
# A269016: Number of 6Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269016, there is no canonical definition to state claims against.
-/

/-! ## A269016.P2808483645354274865

`A269011(A166136(n+4))`
-/

namespace A269016.P2808483645354274865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A166136 (n + 4)).toNat

end

end A269016.P2808483645354274865

/-! ## A269016.P2683370854440259291

`A269011(A056115(n)+21)`
-/

namespace A269016.P2683370854440259291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A056115 n + 21).toNat

end

end A269016.P2683370854440259291

/-! ## A269016.P956404996717489776

`A269011(A167614(n+4)+3)`
-/

namespace A269016.P956404996717489776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A167614 (n + 4) + 3).toNat

end

end A269016.P956404996717489776

/-! ## A269016.P963786377357993470

`A269011(eq[6, A130270(n+1)])`
-/

namespace A269016.P963786377357993470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269016.P963786377357993470

/-! ## A269016.P14229746013344962924

`A269011(eq[7, A131818(n+1)])`
-/

namespace A269016.P14229746013344962924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269016.P14229746013344962924

/-!
# A269017: Number of 7Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269017, there is no canonical definition to state claims against.
-/

/-! ## A269017.P17262526179073078150

`A269011(A167487(n+5))`
-/

namespace A269017.P17262526179073078150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A167487 (n + 5)).toNat

end

end A269017.P17262526179073078150

/-! ## A269017.P7658334134445106332

`A269011(A056119(n)+28)`
-/

namespace A269017.P7658334134445106332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A056119 n + 28).toNat

end

end A269017.P7658334134445106332

/-! ## A269017.P15118261491922500018

`A269011(eq[11, A066657(n)])`
-/

namespace A269017.P15118261491922500018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269017.P15118261491922500018

/-! ## A269017.P17779258432554042051

`A269011(eq[8, A131818(n+1)])`
-/

namespace A269017.P17779258432554042051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269017.P17779258432554042051

/-! ## A269017.P5799882788778783414

`A269011(eq[6, A144328(n+1)]+1)`
-/

namespace A269017.P5799882788778783414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A269017.P5799882788778783414

/-!
# A269018: Primes p of the form 2^k + 2*(-1)^k - 1.

The programs for A269018, there is no canonical definition to state claims against.
-/

/-! ## A269018.P4864541710517681508

`p?[record[Δ[2^n-xor(1, n)]]]`
-/

namespace A269018.P4864541710517681508
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.xor 1 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269018.P4864541710517681508

/-! ## A269018.P8454689964852544570

`p?[record[abs((-2)^n+2)-1]]`
-/

namespace A269018.P8454689964852544570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-2) ^ n + 2| - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269018.P8454689964852544570

/-! ## A269018.P3005366461240413962

`p?[2^n+1-and(4, (n+1)²)]`
-/

namespace A269018.P3005366461240413962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (1 - (Nat.land 4 ((n + 1) ^ 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269018.P3005366461240413962

/-!
# A269019: a(n) = 2^n + 2*(-1)^n - 1.

The programs for A269019, the canonical program `A269019.P9311159951334276451` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269019 has offset 0).

The definition of A269019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+2*(-1)^n-1` (program `A269019.P9311159951334276451`, by `A269019.P9311159951334276451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269019.P9311159951334276451

`2^n+2*(-1)^n-1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A269019

/-- `2^n+2*(-1)^n-1` -/
def P9311159951334276451.Spec : Prop :=
  ∀ n, P9311159951334276451.a n = A269019 n

theorem P9311159951334276451.correct : P9311159951334276451.Spec := by
  intro n
  simp only [A269019]

end A269019

/-! ## A269019.P4962090712075676942

`(2-A225883(n))*A033999(n)`
-/

namespace A269019.P4962090712075676942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A225883 n) * A033999 n

end

end A269019.P4962090712075676942

namespace A269019

/-- `(2-A225883(n))*A033999(n)` -/
def P4962090712075676942.Spec : Prop :=
  ∀ n, P4962090712075676942.a n = A269019 n

end A269019

/-! ## A269019.P15837292143748160977

`Δ[2^n-xor(1, n)]`
-/

namespace A269019.P15837292143748160977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P15837292143748160977

namespace A269019

/-- `Δ[2^n-xor(1, n)]` -/
def P15837292143748160977.Spec : Prop :=
  ∀ n, P15837292143748160977.a n = A269019 n

end A269019

/-! ## A269019.P3734176487220661736

`Δ[xor(n, -2)+2^n]`
-/

namespace A269019.P3734176487220661736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P3734176487220661736

namespace A269019

/-- `Δ[xor(n, -2)+2^n]` -/
def P3734176487220661736.Spec : Prop :=
  ∀ n, P3734176487220661736.a n = A269019 n

end A269019

/-! ## A269019.P4577698679216293405

`Δ[A062510(n)-n]`
-/

namespace A269019.P4577698679216293405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P4577698679216293405

namespace A269019

/-- `Δ[A062510(n)-n]` -/
def P4577698679216293405.Spec : Prop :=
  ∀ n, P4577698679216293405.a n = A269019 n

end A269019

/-! ## A269019.P15877634919857247506

`Δ[xor(n, A000918(n))]`
-/

namespace A269019.P15877634919857247506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A000918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P15877634919857247506

namespace A269019

/-- `Δ[xor(n, A000918(n))]` -/
def P15877634919857247506.Spec : Prop :=
  ∀ n, P15877634919857247506.a n = A269019 n

end A269019

/-! ## A269019.P2404398546141762961

`Δ[xor(n, A000225(n)-1)]`
-/

namespace A269019.P2404398546141762961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A000225 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P2404398546141762961

namespace A269019

/-- `Δ[xor(n, A000225(n)-1)]` -/
def P2404398546141762961.Spec : Prop :=
  ∀ n, P2404398546141762961.a n = A269019 n

end A269019

/-! ## A269019.P12105171041437719775

`Δ[A000295(n)-(-1)^n]`
-/

namespace A269019.P12105171041437719775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P12105171041437719775

namespace A269019

/-- `Δ[A000295(n)-(-1)^n]` -/
def P12105171041437719775.Spec : Prop :=
  ∀ n, P12105171041437719775.a n = A269019 n

end A269019

/-! ## A269019.P15260469541192487935

`Δ[A000325(n)-(-1)^n]`
-/

namespace A269019.P15260469541192487935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P15260469541192487935

namespace A269019

/-- `Δ[A000325(n)-(-1)^n]` -/
def P15260469541192487935.Spec : Prop :=
  ∀ n, P15260469541192487935.a n = A269019 n

end A269019

/-! ## A269019.P11065939581904797352

`Δ[A000051(n)-(xor(1, n)+1)]`
-/

namespace A269019.P11065939581904797352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (Nat.xor 1 n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P11065939581904797352

namespace A269019

/-- `Δ[A000051(n)-(xor(1, n)+1)]` -/
def P11065939581904797352.Spec : Prop :=
  ∀ n, P11065939581904797352.a n = A269019 n

end A269019

/-! ## A269019.P14336790512167219878

`Δ[2^n-(2-A010684(n)+n)]`
-/

namespace A269019.P14336790512167219878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (2 - A010684 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P14336790512167219878

namespace A269019

/-- `Δ[2^n-(2-A010684(n)+n)]` -/
def P14336790512167219878.Spec : Prop :=
  ∀ n, P14336790512167219878.a n = A269019 n

end A269019

/-! ## A269019.P5702217333476023322

`Δ[A010673(n)+A000295(n)]`
-/

namespace A269019.P5702217333476023322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P5702217333476023322

namespace A269019

/-- `Δ[A010673(n)+A000295(n)]` -/
def P5702217333476023322.Spec : Prop :=
  ∀ n, P5702217333476023322.a n = A269019 n

end A269019

/-! ## A269019.P16967177427641208837

`Δ[A000051(n)-A004442(n)]`
-/

namespace A269019.P16967177427641208837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P16967177427641208837

namespace A269019

/-- `Δ[A000051(n)-A004442(n)]` -/
def P16967177427641208837.Spec : Prop :=
  ∀ n, P16967177427641208837.a n = A269019 n

end A269019

/-! ## A269019.P8553067525407352070

`Δ[A000079(n)-A004442(n)]`
-/

namespace A269019.P8553067525407352070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P8553067525407352070

namespace A269019

/-- `Δ[A000079(n)-A004442(n)]` -/
def P8553067525407352070.Spec : Prop :=
  ∀ n, P8553067525407352070.a n = A269019 n

end A269019

/-! ## A269019.P10950960150240418538

`Δ[A000225(n)-A004442(n)]`
-/

namespace A269019.P10950960150240418538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P10950960150240418538

namespace A269019

/-- `Δ[A000225(n)-A004442(n)]` -/
def P10950960150240418538.Spec : Prop :=
  ∀ n, P10950960150240418538.a n = A269019 n

end A269019

/-! ## A269019.P16610997983215786761

`Δ[A000918(n)-A004442(n)]`
-/

namespace A269019.P16610997983215786761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P16610997983215786761

namespace A269019

/-- `Δ[A000918(n)-A004442(n)]` -/
def P16610997983215786761.Spec : Prop :=
  ∀ n, P16610997983215786761.a n = A269019 n

end A269019

/-! ## A269019.P7841119146672106321

`Δ[xor(A057427(n), A132045(n))]`
-/

namespace A269019.P7841119146672106321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A132045 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P7841119146672106321

namespace A269019

/-- `Δ[xor(A057427(n), A132045(n))]` -/
def P7841119146672106321.Spec : Prop :=
  ∀ n, P7841119146672106321.a n = A269019 n

end A269019

/-! ## A269019.P8844787481616097982

`Δ[A000079(n)-A014681(n+1)]`
-/

namespace A269019.P8844787481616097982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A014681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P8844787481616097982

namespace A269019

/-- `Δ[A000079(n)-A014681(n+1)]` -/
def P8844787481616097982.Spec : Prop :=
  ∀ n, P8844787481616097982.a n = A269019 n

end A269019

/-!
# A269020: a(n) = ceiling(n^(1+1/n)).

The programs for A269020, the canonical program `A269020.P13375410208845023554` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269020 has offset 1).

The definition of A269020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)^(1+1/(n+1)))` (program `A269020.P13375410208845023554`, by `A269020.P13375410208845023554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269020.P13375410208845023554

`ceil((n+1)^(1+1/(n+1)))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A269020

/-- `ceil((n+1)^(1+1/(n+1)))` -/
def P13375410208845023554.Spec : Prop :=
  ∀ n, P13375410208845023554.a n = A269020 (n + 1)

theorem P13375410208845023554.correct : P13375410208845023554.Spec := by
  intro n
  simp only [A269020, Nat.add_sub_cancel]

end A269020

/-! ## A269020.P2347034020961705799

`A269024(n+1)+1+n`
-/

namespace A269020.P2347034020961705799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269024 (n + 1) + 1 + (n : ℤ)

end

end A269020.P2347034020961705799

namespace A269020

/-- `A269024(n+1)+1+n` -/
def P2347034020961705799.Spec : Prop :=
  ∀ n, P2347034020961705799.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P2018992849811172209

`A059921(n+1)+(n+2)%(n+1)`
-/

namespace A269020.P2018992849811172209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059921 (n + 1) + (((n + 2) % (n + 1) : ℕ) : ℤ)

end

end A269020.P2018992849811172209

namespace A269020

/-- `A059921(n+1)+(n+2)%(n+1)` -/
def P2018992849811172209.Spec : Prop :=
  ∀ n, P2018992849811172209.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P1396077065966606953

`A059921(n+1)+A057427(n)`
-/

namespace A269020.P1396077065966606953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059921 (n + 1) + A057427 n

end

end A269020.P1396077065966606953

namespace A269020

/-- `A059921(n+1)+A057427(n)` -/
def P1396077065966606953.Spec : Prop :=
  ∀ n, P1396077065966606953.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P2350150123873357370

`A059921(n+1)-A057428(n)`
-/

namespace A269020.P2350150123873357370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059921 (n + 1) - A057428 n

end

end A269020.P2350150123873357370

namespace A269020

/-- `A059921(n+1)-A057428(n)` -/
def P2350150123873357370.Spec : Prop :=
  ∀ n, P2350150123873357370.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P17835104452049842790

`A059921(n+1)+n/A028310(n)`
-/

namespace A269020.P17835104452049842790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059921 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A269020.P17835104452049842790

namespace A269020

/-- `A059921(n+1)+n/A028310(n)` -/
def P17835104452049842790.Spec : Prop :=
  ∀ n, P17835104452049842790.a n = (A269020 (n + 1) : ℚ)

end A269020

/-! ## A269020.P18009443473167268264

`A065475(A059921(n+1))`
-/

namespace A269020.P18009443473167268264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A059921 (n + 1)).toNat

end

end A269020.P18009443473167268264

namespace A269020

/-- `A065475(A059921(n+1))` -/
def P18009443473167268264.Spec : Prop :=
  ∀ n, P18009443473167268264.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P1845632416498356833

`A080342(A184413(n+1))+1+n`
-/

namespace A269020.P1845632416498356833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A184413 (n + 1)).toNat + 1 + (n : ℤ)

end

end A269020.P1845632416498356833

namespace A269020

/-- `A080342(A184413(n+1))+1+n` -/
def P1845632416498356833.Spec : Prop :=
  ∀ n, P1845632416498356833.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P8736436148367847690

`lt[A168485(n+1)²-A061037(n+2), A046610(n+1)]`
-/

namespace A269020.P8736436148367847690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (n + 1) ^ 2 - A061037 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269020.P8736436148367847690

namespace A269020

/-- `lt[A168485(n+1)²-A061037(n+2), A046610(n+1)]` -/
def P8736436148367847690.Spec : Prop :=
  ∀ n, (P8736436148367847690.a n : ℤ) = A269020 (n + 1)

end A269020

/-!
# A269021: Number of permutations of [2n] containing an increasing subsequence of length n.

The programs for A269021, there is no canonical definition to state claims against.
-/

/-! ## A269021.P12065223297103745686

`record[n!^(-1)^n]-A269042(n)`
-/

namespace A269021.P12065223297103745686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A269042 n : ℚ)

end

end A269021.P12065223297103745686

/-! ## A269021.P7534794502536960767

`A010050(n)-A269042(n)`
-/

namespace A269021.P7534794502536960767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 n - A269042 n

end

end A269021.P7534794502536960767

/-! ## A269021.P4810843809790797167

`record[A246072(n)]-A269042(n)`
-/

namespace A269021.P4810843809790797167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A269042 n

end

end A269021.P4810843809790797167

/-! ## A269021.P6877275669929446860

`A000142(2*n)-A269042(n)`
-/

namespace A269021.P6877275669929446860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n) - A269042 n

end

end A269021.P6877275669929446860

/-! ## A269021.P13001342134286727529

`A000079(n)*A000680(n)-A269042(n)`
-/

namespace A269021.P13001342134286727529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000680 n - A269042 n

end

end A269021.P13001342134286727529

/-!
# A269022: Primes p such that sigma(p)/pi(p) is prime.

The programs for A269022, there is no canonical definition to state claims against.
-/

/-! ## A269022.P12757891439437948869

`A052013(lt[A057354(n), A095840(2*n+1)])`
-/

namespace A269022.P12757891439437948869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095840 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052013 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269022.P12757891439437948869

/-! ## A269022.P4405712661474744939

`A052013(A029804(n+2))`
-/

namespace A269022.P4405712661474744939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052013 (A029804 (n + 2)).toNat

end

end A269022.P4405712661474744939

/-! ## A269022.P8460376935230023896

`A052013(∑[A319759(n)!])`
-/

namespace A269022.P8460376935230023896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A319759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052013 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269022.P8460376935230023896

/-! ## A269022.P8324783671139985555

`A052013(A029964(n+1)+1)`
-/

namespace A269022.P8324783671139985555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052013 (A029964 (n + 1) + 1).toNat

end

end A269022.P8324783671139985555

/-!
# A269023: Complement of A269020: numbers not of the form ceiling(n^(1+1/n)).

The programs for A269023, there is no canonical definition to state claims against.
-/

/-! ## A269023.P3416276045880569113

`record[C(A059921(n+2), A269020(n+1))]`
-/

namespace A269023.P3416276045880569113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059921 (n + 2)).toNat (A269020 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269023.P3416276045880569113

/-! ## A269023.P13906639863560914178

`A008683(A001405(3*n+1))+A002426(n+1)`
-/

namespace A269023.P13906639863560914178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001405 (3 * n + 1)).toNat + A002426 (n + 1)

end

end A269023.P13906639863560914178

/-!
# A269024: a(n) = A269020(n) - n.

The programs for A269024, the canonical program `A269024.P12608391171988860494` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269024 has offset 1).

The definition of A269024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A269020(n+1)-(n+1)` (program `A269024.P12608391171988860494`, by `A269024.P12608391171988860494.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269024.P12608391171988860494

`A269020(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269024

/-- `A269020(n+1)-(n+1)` -/
def P12608391171988860494.Spec : Prop :=
  ∀ n, P12608391171988860494.a n = A269024 (n + 1)

theorem P12608391171988860494.correct : P12608391171988860494.Spec := by
  intro n
  simp only [A269024, Nat.add_sub_cancel]

end A269024

/-! ## A269024.P7924963270388257864

`ceil((n+1)^ratio[n+1])-(n+1)`
-/

namespace A269024.P7924963270388257864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌉ - (n + 1 : ℤ)

end

end A269024.P7924963270388257864

namespace A269024

/-- `ceil((n+1)^ratio[n+1])-(n+1)` -/
def P7924963270388257864.Spec : Prop :=
  ∀ n, P7924963270388257864.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P14821055684927037015

`A008554(A269020(n+1)-n)`
-/

namespace A269024.P14821055684927037015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A269020 (n + 1) - (n : ℤ)).toNat

end

end A269024.P14821055684927037015

namespace A269024

/-- `A008554(A269020(n+1)-n)` -/
def P14821055684927037015.Spec : Prop :=
  ∀ n, P14821055684927037015.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P10271835384944977984

`A029730(A269020(n+1)-n)`
-/

namespace A269024.P10271835384944977984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (A269020 (n + 1) - (n : ℤ)).toNat

end

end A269024.P10271835384944977984

namespace A269024

/-- `A029730(A269020(n+1)-n)` -/
def P10271835384944977984.Spec : Prop :=
  ∀ n, P10271835384944977984.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P283757858336722912

`abs(A059921(n+1)-A028310(n))`
-/

namespace A269024.P283757858336722912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059921 (n + 1) - A028310 n|

end

end A269024.P283757858336722912

namespace A269024

/-- `abs(A059921(n+1)-A028310(n))` -/
def P283757858336722912.Spec : Prop :=
  ∀ n, P283757858336722912.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P13024794100246754652

`A008619(A095395(n+1))%(n+1)`
-/

namespace A269024.P13024794100246754652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A095395 (n + 1)).toNat) (n + 1 : ℤ)

end

end A269024.P13024794100246754652

namespace A269024

/-- `A008619(A095395(n+1))%(n+1)` -/
def P13024794100246754652.Spec : Prop :=
  ∀ n, P13024794100246754652.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P16945119250335593419

`(A059921(n+1)-n)*A057427(n)`
-/

namespace A269024.P16945119250335593419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059921 (n + 1) - (n : ℤ)) * A057427 n

end

end A269024.P16945119250335593419

namespace A269024

/-- `(A059921(n+1)-n)*A057427(n)` -/
def P16945119250335593419.Spec : Prop :=
  ∀ n, P16945119250335593419.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P5376271206332649780

`(n-A059921(n+1))*A057428(n)`
-/

namespace A269024.P5376271206332649780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A059921 (n + 1)) * A057428 n

end

end A269024.P5376271206332649780

namespace A269024

/-- `(n-A059921(n+1))*A057428(n)` -/
def P5376271206332649780.Spec : Prop :=
  ∀ n, P5376271206332649780.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P3839894403220743936

`A321802(A059921(n+1)-A028310(n))`
-/

namespace A269024.P3839894403220743936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A059921 (n + 1) - A028310 n).toNat

end

end A269024.P3839894403220743936

namespace A269024

/-- `A321802(A059921(n+1)-A028310(n))` -/
def P3839894403220743936.Spec : Prop :=
  ∀ n, P3839894403220743936.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P743315842826192235

`A072643(A000045(A072643(n²)))`
-/

namespace A269024.P743315842826192235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A000045 (A072643 (n ^ 2)).toNat).toNat

end

end A269024.P743315842826192235

namespace A269024

/-- `A072643(A000045(A072643(n²)))` -/
def P743315842826192235.Spec : Prop :=
  ∀ n, P743315842826192235.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P1409347780405520657

`floor(log(A007969(2*n+1)))`
-/

namespace A269024.P1409347780405520657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A007969 (2 * n + 1) : ℝ)⌋

end

end A269024.P1409347780405520657

namespace A269024

/-- `floor(log(A007969(2*n+1)))` -/
def P1409347780405520657.Spec : Prop :=
  ∀ n, P1409347780405520657.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P5000386998816667355

`A080342(A184413(n+1))`
-/

namespace A269024.P5000386998816667355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A184413 (n + 1)).toNat

end

end A269024.P5000386998816667355

namespace A269024

/-- `A080342(A184413(n+1))` -/
def P5000386998816667355.Spec : Prop :=
  ∀ n, P5000386998816667355.a n = A269024 (n + 1)

end A269024

/-!
# A269025: a(n) = Sum_{k = 0..n} 60^k.

The programs for A269025, the canonical program `A269025.P12239771421361614475` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269025 has offset 0).

The definition of A269025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269025.P12239771421361614475

`60^n+floor(60^n/59)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A269025

/-- `60^n+floor(60^n/59)` -/
def P12239771421361614475.Spec : Prop :=
  ∀ n, P12239771421361614475.a n = A269025 n

theorem P12239771421361614475.correct : P12239771421361614475.Spec := by
  intro n
  simp only [A269025]

end A269025

/-! ## A269025.P8796625987112892475

`or(5, 60*a(n-1))` with `a(0)=1`
-/

namespace A269025.P8796625987112892475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 5 (60 * a (n - 1))

end

end A269025.P8796625987112892475

namespace A269025

/-- `or(5, 60*a(n-1))` -/
def P8796625987112892475.Spec : Prop :=
  ∀ n, (P8796625987112892475.a n : ℤ) = A269025 n

end A269025

/-! ## A269025.P3032219562067695114

`∑[6*10*a(n-1)]` with `a(0)=1`
-/

namespace A269025.P3032219562067695114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269025.P3032219562067695114

namespace A269025

/-- `∑[6*10*a(n-1)]` -/
def P3032219562067695114.Spec : Prop :=
  ∀ n, (P3032219562067695114.a n : ℤ) = A269025 n

end A269025

/-! ## A269025.P18193239642650621079

`xor(1, 6*10*a(n-1))` with `a(0)=1`
-/

namespace A269025.P18193239642650621079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (6 * (10 * a (n - 1)))

end

end A269025.P18193239642650621079

namespace A269025

/-- `xor(1, 6*10*a(n-1))` -/
def P18193239642650621079.Spec : Prop :=
  ∀ n, (P18193239642650621079.a n : ℤ) = A269025 n

end A269025

/-! ## A269025.P15992733494406557994

`∑[A159991(n)]`
-/

namespace A269025.P15992733494406557994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269025.P15992733494406557994

namespace A269025

/-- `∑[A159991(n)]` -/
def P15992733494406557994.Spec : Prop :=
  ∀ n, P15992733494406557994.a n = A269025 n

end A269025

/-! ## A269025.P6327030793036024349

`∑[A281863(2*n)]`
-/

namespace A269025.P6327030793036024349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281863 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269025.P6327030793036024349

namespace A269025

/-- `∑[A281863(2*n)]` -/
def P6327030793036024349.Spec : Prop :=
  ∀ n, P6327030793036024349.a n = A269025 n

end A269025

/-! ## A269025.P14723263613265663353

`∑[A040870(n)^n]`
-/

namespace A269025.P14723263613265663353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269025.P14723263613265663353

namespace A269025

/-- `∑[A040870(n)^n]` -/
def P14723263613265663353.Spec : Prop :=
  ∀ n, P14723263613265663353.a n = A269025 n

end A269025

/-!
# A269027: Parity of the number of 1's in A039724(n).

The programs for A269027, the canonical program `A269027.P11463476603679121488` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269027 has offset 0).

The definition of A269027 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269027.P11463476603679121488

`A010060(A005351(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A269027

/-- `A010060(A005351(n))` -/
def P11463476603679121488.Spec : Prop :=
  ∀ n, P11463476603679121488.a n = A269027 n

theorem P11463476603679121488.correct : P11463476603679121488.Spec := by
  intro n
  simp only [A269027]

end A269027

/-! ## A269027.P2014804823482445298

`∑[gcd(2, val(xor(n, 2*n)+6, 2))-1]%2`
-/

namespace A269027.P2014804823482445298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (SequenceMachineLib.valuation (Nat.xor n (2 * n) + 6) 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A269027.P2014804823482445298

namespace A269027

/-- `∑[gcd(2, val(xor(n, 2*n)+6, 2))-1]%2` -/
def P2014804823482445298.Spec : Prop :=
  ∀ n, P2014804823482445298.a n = A269027 n

end A269027

/-! ## A269027.P5901913075355964135

`A027615(n)%2`
-/

namespace A269027.P5901913075355964135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027615 n) 2

end

end A269027.P5901913075355964135

namespace A269027

/-- `A027615(n)%2` -/
def P5901913075355964135.Spec : Prop :=
  ∀ n, P5901913075355964135.a n = A269027 n

end A269027

/-! ## A269027.P14464329994909619132

`∑[A098725(n)]%2`
-/

namespace A269027.P14464329994909619132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A269027.P14464329994909619132

namespace A269027

/-- `∑[A098725(n)]%2` -/
def P14464329994909619132.Spec : Prop :=
  ∀ n, P14464329994909619132.a n = A269027 n

end A269027

/-! ## A269027.P14434895995540117894

`A000035(A027615(n))`
-/

namespace A269027.P14434895995540117894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A027615 n).toNat

end

end A269027.P14434895995540117894

namespace A269027

/-- `A000035(A027615(n))` -/
def P14434895995540117894.Spec : Prop :=
  ∀ n, P14434895995540117894.a n = A269027 n

end A269027

/-! ## A269027.P12746529354710067611

`A096268(A027615(n)²)`
-/

namespace A269027.P12746529354710067611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A027615 n ^ 2).toNat

end

end A269027.P12746529354710067611

namespace A269027

/-- `A096268(A027615(n)²)` -/
def P12746529354710067611.Spec : Prop :=
  ∀ n, P12746529354710067611.a n = A269027 n

end A269027

/-! ## A269027.P17745778948202724745

`A098725(A027615(n)²)`
-/

namespace A269027.P17745778948202724745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A027615 n ^ 2).toNat

end

end A269027.P17745778948202724745

namespace A269027

/-- `A098725(A027615(n)²)` -/
def P17745778948202724745.Spec : Prop :=
  ∀ n, P17745778948202724745.a n = A269027 n

end A269027

/-! ## A269027.P11365338956683189300

`A059841(A072894(n+1))`
-/

namespace A269027.P11365338956683189300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A072894 (n + 1)).toNat

end

end A269027.P11365338956683189300

namespace A269027

/-- `A059841(A072894(n+1))` -/
def P11365338956683189300.Spec : Prop :=
  ∀ n, P11365338956683189300.a n = A269027 n

end A269027

/-! ## A269027.P6994837837728091356

`and(A008349(n), A027615(n))`
-/

namespace A269027.P6994837837728091356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A027615 n)

end

end A269027.P6994837837728091356

namespace A269027

/-- `and(A008349(n), A027615(n))` -/
def P6994837837728091356.Spec : Prop :=
  ∀ n, P6994837837728091356.a n = A269027 n

end A269027

/-! ## A269027.P173736159416749281

`and(A008362(n), A027615(n))`
-/

namespace A269027.P173736159416749281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A027615 n)

end

end A269027.P173736159416749281

namespace A269027

/-- `and(A008362(n), A027615(n))` -/
def P173736159416749281.Spec : Prop :=
  ∀ n, P173736159416749281.a n = A269027 n

end A269027

/-! ## A269027.P16791558116942174320

`and(A008417(n), A027615(n))`
-/

namespace A269027.P16791558116942174320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A027615 n)

end

end A269027.P16791558116942174320

namespace A269027

/-- `and(A008417(n), A027615(n))` -/
def P16791558116942174320.Spec : Prop :=
  ∀ n, P16791558116942174320.a n = A269027 n

end A269027

/-! ## A269027.P6734490619954161823

`and(A008514(n), A027615(n))`
-/

namespace A269027.P6734490619954161823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A027615 n)

end

end A269027.P6734490619954161823

namespace A269027

/-- `and(A008514(n), A027615(n))` -/
def P6734490619954161823.Spec : Prop :=
  ∀ n, P6734490619954161823.a n = A269027 n

end A269027

/-! ## A269027.P17060482128439270618

`and(A016760(n), A027615(n))`
-/

namespace A269027.P17060482128439270618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A027615 n)

end

end A269027.P17060482128439270618

namespace A269027

/-- `and(A016760(n), A027615(n))` -/
def P17060482128439270618.Spec : Prop :=
  ∀ n, P17060482128439270618.a n = A269027 n

end A269027

/-! ## A269027.P14436872295122976643

`and(A016820(n), A027615(n))`
-/

namespace A269027.P14436872295122976643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A027615 n)

end

end A269027.P14436872295122976643

namespace A269027

/-- `and(A016820(n), A027615(n))` -/
def P14436872295122976643.Spec : Prop :=
  ∀ n, P14436872295122976643.a n = A269027 n

end A269027

/-! ## A269027.P7137662169254945322

`and(A027615(n), A282997(n+1))`
-/

namespace A269027.P7137662169254945322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027615 n) (A282997 (n + 1))

end

end A269027.P7137662169254945322

namespace A269027

/-- `and(A027615(n), A282997(n+1))` -/
def P7137662169254945322.Spec : Prop :=
  ∀ n, P7137662169254945322.a n = A269027 n

end A269027

/-! ## A269027.P17139934793642742231

`A096268(A027615(n)*A027615(n))`
-/

namespace A269027.P17139934793642742231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A027615 n * A027615 n).toNat

end

end A269027.P17139934793642742231

namespace A269027

/-- `A096268(A027615(n)*A027615(n))` -/
def P17139934793642742231.Spec : Prop :=
  ∀ n, P17139934793642742231.a n = A269027 n

end A269027

/-! ## A269027.P15805624819866675391

`A098725(A027615(n)*A027615(n))`
-/

namespace A269027.P15805624819866675391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A027615 n * A027615 n).toNat

end

end A269027.P15805624819866675391

namespace A269027

/-- `A098725(A027615(n)*A027615(n))` -/
def P15805624819866675391.Spec : Prop :=
  ∀ n, P15805624819866675391.a n = A269027 n

end A269027

/-! ## A269027.P3589484484442546763

`A338253(n)%2`
-/

namespace A269027.P3589484484442546763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338253 n) 2

end

end A269027.P3589484484442546763

namespace A269027

/-- `A338253(n)%2` -/
def P3589484484442546763.Spec : Prop :=
  ∀ n, P3589484484442546763.a n = A269027 n

end A269027

/-! ## A269027.P16850345142697646847

`A000035(A338253(n))`
-/

namespace A269027.P16850345142697646847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A338253 n).toNat

end

end A269027.P16850345142697646847

namespace A269027

/-- `A000035(A338253(n))` -/
def P16850345142697646847.Spec : Prop :=
  ∀ n, P16850345142697646847.a n = A269027 n

end A269027

/-! ## A269027.P18351634839095488263

`and(1, A005599(2*n)/2)`
-/

namespace A269027.P18351634839095488263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((A005599 (2 * n) : ℚ) / 2))

end

end A269027.P18351634839095488263

namespace A269027

/-- `and(1, A005599(2*n)/2)` -/
def P18351634839095488263.Spec : Prop :=
  ∀ n, P18351634839095488263.a n = A269027 n

end A269027

/-!
# A269028: a(n) = 40*a(n - 1) - a(n - 2) for n>1, a(0) = 1, a(1) = 1.

The programs for A269028, the canonical program `A269028.P15140228179202886568` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269028 has offset 0).

The definition of A269028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `40*a(n-1)-a(n-2)` (program `A269028.P15140228179202886568`, by `A269028.P15140228179202886568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269028.P15140228179202886568

`40*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A269028

/-- `40*a(n-1)-a(n-2)` -/
def P15140228179202886568.Spec : Prop :=
  ∀ n, P15140228179202886568.a n = A269028 n

theorem P15140228179202886568.correct : P15140228179202886568.Spec := by
  intro n
  simp only [A269028]

end A269028

/-! ## A269028.P3168270013336361903

`A041759(A004275(n))`
-/

namespace A269028.P3168270013336361903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041759 (A004275 n).toNat

end

end A269028.P3168270013336361903

namespace A269028

/-- `A041759(A004275(n))` -/
def P3168270013336361903.Spec : Prop :=
  ∀ n, P3168270013336361903.a n = A269028 n

end A269028

/-! ## A269028.P1260923628934167

`A041759(xor(1, A004273(n)))`
-/

namespace A269028.P1260923628934167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041759 (Int.xor 1 (A004273 n)).toNat

end

end A269028.P1260923628934167

namespace A269028

/-- `A041759(xor(1, A004273(n)))` -/
def P1260923628934167.Spec : Prop :=
  ∀ n, P1260923628934167.a n = A269028 n

end A269028

/-! ## A269028.P2353443501566821315

`A041759(eq[1, A093178(n)])`
-/

namespace A269028.P2353443501566821315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269028.P2353443501566821315

namespace A269028

/-- `A041759(eq[1, A093178(n)])` -/
def P2353443501566821315.Spec : Prop :=
  ∀ n, P2353443501566821315.a n = A269028 n

end A269028

/-! ## A269028.P5440049459083300154

`A041759(2*(A004273(n)-n))`
-/

namespace A269028.P5440049459083300154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041759 (2 * (A004273 n - (n : ℤ))).toNat

end

end A269028.P5440049459083300154

namespace A269028

/-- `A041759(2*(A004273(n)-n))` -/
def P5440049459083300154.Spec : Prop :=
  ∀ n, P5440049459083300154.a n = A269028 n

end A269028

/-! ## A269028.P4324726185567137885

`A041759(eq[A007814(n+1), A063524(n)])`
-/

namespace A269028.P4324726185567137885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041759 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A269028.P4324726185567137885

namespace A269028

/-- `A041759(eq[A007814(n+1), A063524(n)])` -/
def P4324726185567137885.Spec : Prop :=
  ∀ n, P4324726185567137885.a n = A269028 n

end A269028

/-! ## A269028.P1853180598847745921

`A041759(eq[n*A007814(n+1), A007814(n+1)])`
-/

namespace A269028.P1853180598847745921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041759 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A269028.P1853180598847745921

namespace A269028

/-- `A041759(eq[n*A007814(n+1), A007814(n+1)])` -/
def P1853180598847745921.Spec : Prop :=
  ∀ n, P1853180598847745921.a n = A269028 n

end A269028

/-!
# A269029: Number of n X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269029, there is no canonical definition to state claims against.
-/

/-! ## A269029.P12232992304651354381

`6*A229528(n+1)`
-/

namespace A269029.P12232992304651354381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229528 (n + 1)

end

end A269029.P12232992304651354381

/-! ## A269029.P15059993426656387241

`A269035(∑[4*n]+1)`
-/

namespace A269029.P15059993426656387241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269029.P15059993426656387241

/-! ## A269029.P11879770041943240206

`6*A229534(A001844(n))`
-/

namespace A269029.P11879770041943240206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229534 (A001844 n).toNat

end

end A269029.P11879770041943240206

/-! ## A269029.P14810614197456202069

`record[A269035(A330613(n+1))]`
-/

namespace A269029.P14810614197456202069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269029.P14810614197456202069

/-! ## A269029.P4266527514543382641

`record[A003982(n)*A269035(n+1)]`
-/

namespace A269029.P4266527514543382641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269029.P4266527514543382641

/-!
# A269030: Number of n X 3 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269030, there is no canonical definition to state claims against.
-/

/-! ## A269030.P14278632458920449659

`6*A229529(n+1)`
-/

namespace A269030.P14278632458920449659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229529 (n + 1)

end

end A269030.P14278632458920449659

/-! ## A269030.P7653448792410226394

`A269035(∑[n+3]+1)`
-/

namespace A269030.P7653448792410226394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269030.P7653448792410226394

/-! ## A269030.P180287926924128147

`6*A229534(∑[n+3]+1)`
-/

namespace A269030.P180287926924128147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269030.P180287926924128147

/-! ## A269030.P6594975774187029262

`lcm(2, A269035(A034856(n+2)))`
-/

namespace A269030.P6594975774187029262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269035 (A034856 (n + 2)).toNat)

end

end A269030.P6594975774187029262

/-! ## A269030.P5279749097038530769

`A269035(A034856(n+2))%A269055(n+1)`
-/

namespace A269030.P5279749097038530769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269035 (A034856 (n + 2)).toNat) (A269055 (n + 1))

end

end A269030.P5279749097038530769

/-!
# A269031: Number of n X 4 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269031, there is no canonical definition to state claims against.
-/

/-! ## A269031.P6220414311641273728

`6*A229530(n+1)`
-/

namespace A269031.P6220414311641273728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229530 (n + 1)

end

end A269031.P6220414311641273728

/-! ## A269031.P17521113315281513748

`A269048(n+1)-A223373(n+1)`
-/

namespace A269031.P17521113315281513748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269048 (n + 1) - A223373 (n + 1)

end

end A269031.P17521113315281513748

/-! ## A269031.P2876515014115580191

`A269048(n+1)-A232920(A141214(n+1))`
-/

namespace A269031.P2876515014115580191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269048 (n + 1) - A232920 (A141214 (n + 1)).toNat

end

end A269031.P2876515014115580191

/-! ## A269031.P8156695363449647641

`A269048(n+1)-A232920(A055998(n+2))`
-/

namespace A269031.P8156695363449647641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269048 (n + 1) - A232920 (A055998 (n + 2)).toNat

end

end A269031.P8156695363449647641

/-! ## A269031.P4994436756616379554

`A269035(∑[n+3]+4+n)`
-/

namespace A269031.P4994436756616379554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (∑ j ∈ Finset.range (n + 1), f1 j + 4 + n)

end

end A269031.P4994436756616379554

/-!
# A269032: Number of nX5 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269032, there is no canonical definition to state claims against.
-/

/-! ## A269032.P11570800992888671341

`6*A229531(n+1)`
-/

namespace A269032.P11570800992888671341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229531 (n + 1)

end

end A269032.P11570800992888671341

/-! ## A269032.P2412247556747854906

`A269035(Δ[A264443(n)])`
-/

namespace A269032.P2412247556747854906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (f1 (n + 1) - f1 n).toNat

end

end A269032.P2412247556747854906

/-! ## A269032.P2882027539124168046

`A269035(A056115(n)+11)`
-/

namespace A269032.P2882027539124168046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A056115 n + 11).toNat

end

end A269032.P2882027539124168046

/-! ## A269032.P17532747790180730425

`A269035(Δ[A023545(n+1)])`
-/

namespace A269032.P17532747790180730425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (f1 (n + 1) - f1 n).toNat

end

end A269032.P17532747790180730425

/-! ## A269032.P12499870950070451670

`A269035(A052905(n+2)+1)`
-/

namespace A269032.P12499870950070451670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A052905 (n + 2) + 1).toNat

end

end A269032.P12499870950070451670

/-!
# A269033: Number of nX6 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269033, there is no canonical definition to state claims against.
-/

/-! ## A269033.P3214221752125472571

`6*A229532(n+1)`
-/

namespace A269033.P3214221752125472571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229532 (n + 1)

end

end A269033.P3214221752125472571

/-! ## A269033.P18040907052030132221

`A269035(A052905(n+3))`
-/

namespace A269033.P18040907052030132221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A052905 (n + 3)).toNat

end

end A269033.P18040907052030132221

/-! ## A269033.P4894927184415088959

`A269035(A056119(n)+16)`
-/

namespace A269033.P4894927184415088959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A056119 n + 16).toNat

end

end A269033.P4894927184415088959

/-! ## A269033.P12534533393791130482

`A269035(eq[8, A258709(n)])`
-/

namespace A269033.P12534533393791130482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269033.P12534533393791130482

/-! ## A269033.P3485388343213882503

`A269035(A000124(n+6)-6)`
-/

namespace A269033.P3485388343213882503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A000124 (n + 6) - 6).toNat

end

end A269033.P3485388343213882503

/-!
# A269034: Number of nX7 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269034, there is no canonical definition to state claims against.
-/

/-! ## A269034.P124005991386298559

`6*A229533(n+1)`
-/

namespace A269034.P124005991386298559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229533 (n + 1)

end

end A269034.P124005991386298559

/-! ## A269034.P10528913041952394038

`A269035(A055999(n+4))`
-/

namespace A269034.P10528913041952394038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A055999 (n + 4)).toNat

end

end A269034.P10528913041952394038

/-! ## A269034.P12430567926144691974

`A269035(eq[6, A193592(n)])`
-/

namespace A269034.P12430567926144691974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269034.P12430567926144691974

/-! ## A269034.P9486980341052712705

`A269035(Δ[A026054(n+4)])`
-/

namespace A269034.P9486980341052712705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (f1 (n + 1) - f1 n).toNat

end

end A269034.P9486980341052712705

/-! ## A269034.P11916018240518729467

`A269035(A055998(n+5)-3)`
-/

namespace A269034.P11916018240518729467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A055998 (n + 5) - 3).toNat

end

end A269034.P11916018240518729467

/-!
# A269035: T(n,k)=Number of nXk 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269035, there is no canonical definition to state claims against.
-/

/-! ## A269035.P12700500898668020291

`A229534(n+1)*A267884(n)`
-/

namespace A269035.P12700500898668020291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (n + 1) * A267884 n

end

end A269035.P12700500898668020291

/-! ## A269035.P12502408232533589351

`A269052(n+1)-A232920(n+1)`
-/

namespace A269035.P12502408232533589351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A232920 (n + 1)

end

end A269035.P12502408232533589351

/-! ## A269035.P11551786384610961287

`gcd(6, A269052(n+1))*A229534(n+1)`
-/

namespace A269035.P11551786384610961287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (A269052 (n + 1)) : ℤ) * A229534 (n + 1)

end

end A269035.P11551786384610961287

/-! ## A269035.P14734784364710980640

`A040006(A004526(n))*A229534(n+1)`
-/

namespace A269035.P14734784364710980640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A004526 n).toNat * A229534 (n + 1)

end

end A269035.P14734784364710980640

/-! ## A269035.P11165852653845346964

`A040006(A008612(n))*A229534(n+1)`
-/

namespace A269035.P11165852653845346964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A008612 n).toNat * A229534 (n + 1)

end

end A269035.P11165852653845346964

/-! ## A269035.P2944018703231417802

`A040006(A028242(n))*A229534(n+1)`
-/

namespace A269035.P2944018703231417802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A028242 n).toNat * A229534 (n + 1)

end

end A269035.P2944018703231417802

/-! ## A269035.P8699284514203985602

`A040006(A294061(n+1))*A229534(n+1)`
-/

namespace A269035.P8699284514203985602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A294061 (n + 1)).toNat * A229534 (n + 1)

end

end A269035.P8699284514203985602

/-! ## A269035.P14233454385773728911

`A040006(A303603(n+1))*A229534(n+1)`
-/

namespace A269035.P14233454385773728911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A303603 (n + 1)).toNat * A229534 (n + 1)

end

end A269035.P14233454385773728911

/-! ## A269035.P14505142787648889395

`A040006(n-A010872(n))*A229534(n+1)`
-/

namespace A269035.P14505142787648889395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 ((n : ℤ) - A010872 n).toNat * A229534 (n + 1)

end

end A269035.P14505142787648889395

/-! ## A269035.P2913398531435451651

`A229534(n+1)*A266251(A266249(2*n+1))`
-/

namespace A269035.P2913398531435451651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (n + 1) * A266251 (A266249 (2 * n + 1)).toNat

end

end A269035.P2913398531435451651

/-! ## A269035.P880945809787344448

`A040006(A007590(n))*A229534(n+1)`
-/

namespace A269035.P880945809787344448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A007590 n).toNat * A229534 (n + 1)

end

end A269035.P880945809787344448

/-! ## A269035.P11394089435239688214

`A040006(n²-n)*A229534(n+1)`
-/

namespace A269035.P11394089435239688214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (n ^ 2 - n) * A229534 (n + 1)

end

end A269035.P11394089435239688214

/-!
# A269036: Number of 2 X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269036, the canonical program `A269036.P11597247794785147094` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269036 has offset 1).

The definition of A269036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269036.P11597247794785147094

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=24, a(2)=48, a(3)=216`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A269036

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P11597247794785147094.Spec : Prop :=
  ∀ n, P11597247794785147094.a n = A269036 (n + 1)

theorem P11597247794785147094.correct : P11597247794785147094.Spec := by
  intro n
  simp only [A269036, Nat.add_sub_cancel]

end A269036

/-! ## A269036.P3928020134606922049

`6*A229535(n+1)`
-/

namespace A269036.P3928020134606922049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229535 (n + 1)

end

end A269036.P3928020134606922049

namespace A269036

/-- `6*A229535(n+1)` -/
def P3928020134606922049.Spec : Prop :=
  ∀ n, P3928020134606922049.a n = A269036 (n + 1)

end A269036

/-! ## A269036.P8732912341386163075

`Δ[A008458(n)*A293007(n)]`
-/

namespace A269036.P8732912341386163075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269036.P8732912341386163075

namespace A269036

/-- `Δ[A008458(n)*A293007(n)]` -/
def P8732912341386163075.Spec : Prop :=
  ∀ n, P8732912341386163075.a n = A269036 (n + 1)

end A269036

/-! ## A269036.P4592250995067730352

`Δ[A008588(n)*A293007(n)]`
-/

namespace A269036.P4592250995067730352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n * A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269036.P4592250995067730352

namespace A269036

/-- `Δ[A008588(n)*A293007(n)]` -/
def P4592250995067730352.Spec : Prop :=
  ∀ n, P4592250995067730352.a n = A269036 (n + 1)

end A269036

/-! ## A269036.P14576472887462182033

`Δ[A008588(n)*A028860(n+1)]`
-/

namespace A269036.P14576472887462182033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n * A028860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269036.P14576472887462182033

namespace A269036

/-- `Δ[A008588(n)*A028860(n+1)]` -/
def P14576472887462182033.Spec : Prop :=
  ∀ n, P14576472887462182033.a n = A269036 (n + 1)

end A269036

/-! ## A269036.P6623026896162938986

`A269053(n+1)-A232921(n+1)`
-/

namespace A269036.P6623026896162938986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269053 (n + 1) - A232921 (n + 1)

end

end A269036.P6623026896162938986

namespace A269036

/-- `A269053(n+1)-A232921(n+1)` -/
def P6623026896162938986.Spec : Prop :=
  ∀ n, P6623026896162938986.a n = A269036 (n + 1)

end A269036

/-!
# A269037: Number of 3 X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269037, there is no canonical definition to state claims against.
-/

/-! ## A269037.P9438472991931552230

`6*A229536(n+1)`
-/

namespace A269037.P9438472991931552230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229536 (n + 1)

end

end A269037.P9438472991931552230

/-! ## A269037.P2902238734726343373

`A269035(∑[n+2]+4)`
-/

namespace A269037.P2902238734726343373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269037.P2902238734726343373

/-! ## A269037.P14859971146938672809

`6*A229534(A167614(n+1))`
-/

namespace A269037.P14859971146938672809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229534 (A167614 (n + 1)).toNat

end

end A269037.P14859971146938672809

/-! ## A269037.P12297521845471872675

`A269035(A167614(n+1))+A025439(n)`
-/

namespace A269037.P12297521845471872675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A167614 (n + 1)).toNat + A025439 n

end

end A269037.P12297521845471872675

/-! ## A269037.P1330910217023363595

`A057427(n)*A269035(A167614(n+1))`
-/

namespace A269037.P1330910217023363595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A269035 (A167614 (n + 1)).toNat

end

end A269037.P1330910217023363595

/-!
# A269038: Number of 4Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269038, there is no canonical definition to state claims against.
-/

/-! ## A269038.P15763774712858560840

`6*A229537(n+1)`
-/

namespace A269038.P15763774712858560840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229537 (n + 1)

end

end A269038.P15763774712858560840

/-! ## A269038.P14252801141801278911

`A269035(A141214(n)+7)`
-/

namespace A269038.P14252801141801278911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A141214 n + 7).toNat

end

end A269038.P14252801141801278911

/-! ## A269038.P12126750817015536864

`A269035(A052905(n)+9)`
-/

namespace A269038.P12126750817015536864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A052905 n + 9).toNat

end

end A269038.P12126750817015536864

/-! ## A269038.P5103609061150111516

`A269035(A055999(n)+10)`
-/

namespace A269038.P5103609061150111516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A055999 n + 10).toNat

end

end A269038.P5103609061150111516

/-! ## A269038.P9021770655218255692

`A269035(A167614(n+2)+1)`
-/

namespace A269038.P9021770655218255692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A167614 (n + 2) + 1).toNat

end

end A269038.P9021770655218255692

/-!
# A269039: Number of 5Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269039, there is no canonical definition to state claims against.
-/

/-! ## A269039.P1597190840012374905

`6*A229538(n+1)`
-/

namespace A269039.P1597190840012374905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229538 (n + 1)

end

end A269039.P1597190840012374905

/-! ## A269039.P269517508991171435

`A269056(n+1)-A232924(n+1)`
-/

namespace A269039.P269517508991171435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269056 (n + 1) - A232924 (n + 1)

end

end A269039.P269517508991171435

/-! ## A269039.P5334095066564071263

`A269035(A167499(n+3))`
-/

namespace A269039.P5334095066564071263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A167499 (n + 3)).toNat

end

end A269039.P5334095066564071263

/-! ## A269039.P8265648535526700490

`A269035(A155212(n)+13)`
-/

namespace A269039.P8265648535526700490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A155212 n + 13).toNat

end

end A269039.P8265648535526700490

/-! ## A269039.P6801128026440795283

`A269035(A056000(n)+15)`
-/

namespace A269039.P6801128026440795283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A056000 n + 15).toNat

end

end A269039.P6801128026440795283

/-!
# A269040: Number of 6 X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269040, there is no canonical definition to state claims against.
-/

/-! ## A269040.P16392882700840998750

`6*A229539(n+1)`
-/

namespace A269040.P16392882700840998750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229539 (n + 1)

end

end A269040.P16392882700840998750

/-! ## A269040.P6782118134775450149

`A269057(n+1)-A232925(n+1)`
-/

namespace A269040.P6782118134775450149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269057 (n + 1) - A232925 (n + 1)

end

end A269040.P6782118134775450149

/-! ## A269040.P1697759958937197079

`A269035(C(n+7, 2)-n)`
-/

namespace A269040.P1697759958937197079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (Nat.choose (n + 7) 2 - n)

end

end A269040.P1697759958937197079

/-! ## A269040.P2045086028916064006

`A269035(A056115(n)+21)`
-/

namespace A269040.P2045086028916064006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A056115 n + 21).toNat

end

end A269040.P2045086028916064006

/-! ## A269040.P11144449946154342765

`A269035(A167499(n+4)+1)`
-/

namespace A269040.P11144449946154342765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A167499 (n + 4) + 1).toNat

end

end A269040.P11144449946154342765

/-!
# A269041: Number of 7Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269041, there is no canonical definition to state claims against.
-/

/-! ## A269041.P2692776336278039353

`6*A229540(n+1)`
-/

namespace A269041.P2692776336278039353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229540 (n + 1)

end

end A269041.P2692776336278039353

/-! ## A269041.P2432350481176965522

`A269058(n+1)-A232926(n+1)`
-/

namespace A269041.P2432350481176965522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269058 (n + 1) - A232926 (n + 1)

end

end A269041.P2432350481176965522

/-! ## A269041.P14330662008070723005

`A269035(A167487(n+5))`
-/

namespace A269041.P14330662008070723005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A167487 (n + 5)).toNat

end

end A269041.P14330662008070723005

/-! ## A269041.P16077082189090283710

`A269035(eq[11, A066657(n)])`
-/

namespace A269041.P16077082189090283710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269041.P16077082189090283710

/-! ## A269041.P8942929909566293778

`A269035(A000124(n+6)+6)`
-/

namespace A269041.P8942929909566293778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A000124 (n + 6) + 6).toNat

end

end A269041.P8942929909566293778

/-!
# A269042: Number of permutations of [2n] avoiding the pattern 12...n.

The programs for A269042, there is no canonical definition to state claims against.
-/

/-! ## A269042.P9110190159602468251

`A010050(n)-A269021(n)`
-/

namespace A269042.P9110190159602468251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 n - A269021 n

end

end A269042.P9110190159602468251

/-! ## A269042.P9665347195474997533

`A005843(n)!-A269021(n)`
-/

namespace A269042.P9665347195474997533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A005843 n).toNat : ℤ) - A269021 n

end

end A269042.P9665347195474997533

/-! ## A269042.P6003159197022362563

`record[A246072(n)]-A269021(n)`
-/

namespace A269042.P6003159197022362563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A269021 n

end

end A269042.P6003159197022362563

/-! ## A269042.P10206438335544042516

`A000142(2*n)-A269021(n)`
-/

namespace A269042.P10206438335544042516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n) - A269021 n

end

end A269042.P10206438335544042516

/-! ## A269042.P10724267852010335085

`A000079(n)*A000680(n)-A269021(n)`
-/

namespace A269042.P10724267852010335085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000680 n - A269021 n

end

end A269042.P10724267852010335085

/-!
# A269044: a(n) = 13*n + 7.

The programs for A269044, the canonical program `A269044.P7228503288842382504` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269044 has offset 0).

The definition of A269044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n+7` (program `A269044.P7228503288842382504`, by `A269044.P7228503288842382504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269044.P7228503288842382504

`13*n+7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A269044

/-- `13*n+7` -/
def P7228503288842382504.Spec : Prop :=
  ∀ n, (P7228503288842382504.a n : ℤ) = A269044 n

theorem P7228503288842382504.correct : P7228503288842382504.Spec := by
  intro n
  simp only [A269044]

end A269044

/-!
# A269045: Indices k such that A006255(k) != A070229(k); that is, the k-th term of R. L. Graham's sequence is not equal to k + lpf(k).

The programs for A269045, there is no canonical definition to state claims against.
-/

/-! ## A269045.P8572389577284287772

`eq[char[eq[A006255(n+1), A070229(n+1)]+1], A000007(n)]`
-/

namespace A269045.P8572389577284287772
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f5 j) n

end

end A269045.P8572389577284287772

/-! ## A269045.P9986821677696838483

`lt[A006530(n+1), A068568(n+1)]+1`
-/

namespace A269045.P9986821677696838483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A269045.P9986821677696838483

/-! ## A269045.P4862704318138219361

`lt[A006530(A028310(n)), A068568(n)]`
-/

namespace A269045.P4862704318138219361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269045.P4862704318138219361

/-! ## A269045.P3544192480124645374

`lt[A006530(A233583(n+1)), A068568(n)]`
-/

namespace A269045.P3544192480124645374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269045.P3544192480124645374

/-! ## A269045.P12422663155069260778

`record[gcd(A008611(n), A102456(n))]`
-/

namespace A269045.P12422663155069260778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008611 n) (A102456 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269045.P12422663155069260778

/-!
# A269046: Number of n X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269046, there is no canonical definition to state claims against.
-/

/-! ## A269046.P8048065384160247786

`A269052(∑[4*n]+1)`
-/

namespace A269046.P8048065384160247786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269046.P8048065384160247786

/-! ## A269046.P9937140388460643638

`lcm(3, A269052(A001844(n)))`
-/

namespace A269046.P9937140388460643638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A269052 (A001844 n).toNat)

end

end A269046.P9937140388460643638

/-! ## A269046.P16683642880467988771

`record[A269052(A330613(n+1))]`
-/

namespace A269046.P16683642880467988771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269046.P16683642880467988771

/-! ## A269046.P8989982927575661140

`record[A003982(n)*A269052(n+1)]`
-/

namespace A269046.P8989982927575661140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269046.P8989982927575661140

/-! ## A269046.P9014649065350259666

`A269052(A001844(n))+A185284(n)`
-/

namespace A269046.P9014649065350259666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A001844 n).toNat + A185284 n

end

end A269046.P9014649065350259666

/-!
# A269047: Number of n X 3 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269047, there is no canonical definition to state claims against.
-/

/-! ## A269047.P1176396735345248416

`A269052(∑[n+3]+1)`
-/

namespace A269047.P1176396735345248416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269047.P1176396735345248416

/-! ## A269047.P7303663816315089359

`lcm(2, A269052(A034856(n+2)))`
-/

namespace A269047.P7303663816315089359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269052 (A034856 (n + 2)).toNat)

end

end A269047.P7303663816315089359

/-! ## A269047.P7427688388316106512

`abs(A269052(A055998(n+1)+1)-n)+n`
-/

namespace A269047.P7427688388316106512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A269052 (A055998 (n + 1) + 1).toNat - (n : ℤ)| + (n : ℤ)

end

end A269047.P7427688388316106512

/-! ## A269047.P9015174972239239969

`A269052(A034856(n+2))%A269055(n+1)`
-/

namespace A269047.P9015174972239239969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269052 (A034856 (n + 2)).toNat) (A269055 (n + 1))

end

end A269047.P9015174972239239969

/-!
# A269048: Number of n X 4 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269048, there is no canonical definition to state claims against.
-/

/-! ## A269048.P10214764849750222702

`A269031(n+1)+A223373(n+1)`
-/

namespace A269048.P10214764849750222702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269031 (n + 1) + A223373 (n + 1)

end

end A269048.P10214764849750222702

/-! ## A269048.P8864814135398010548

`A269052(A141214(n+1))`
-/

namespace A269048.P8864814135398010548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A141214 (n + 1)).toNat

end

end A269048.P8864814135398010548

/-! ## A269048.P6456057578183439137

`A269052(A055998(n+2))`
-/

namespace A269048.P6456057578183439137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A055998 (n + 2)).toNat

end

end A269048.P6456057578183439137

/-! ## A269048.P11742098489054883122

`A269052(A155212(n)+5)`
-/

namespace A269048.P11742098489054883122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A155212 n + 5).toNat

end

end A269048.P11742098489054883122

/-! ## A269048.P13977479719204774720

`A269052(A056000(n)+7)`
-/

namespace A269048.P13977479719204774720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A056000 n + 7).toNat

end

end A269048.P13977479719204774720

/-!
# A269049: Number of nX5 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269049, there is no canonical definition to state claims against.
-/

/-! ## A269049.P13502446065601176523

`A269032(n+1)+A232920(Δ[A023545(n+1)])`
-/

namespace A269049.P13502446065601176523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269032 (n + 1) + A232920 (f1 (n + 1) - f1 n).toNat

end

end A269049.P13502446065601176523

/-! ## A269049.P5809344168778146190

`A269052(Δ[A264443(n)])`
-/

namespace A269049.P5809344168778146190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (f1 (n + 1) - f1 n).toNat

end

end A269049.P5809344168778146190

/-! ## A269049.P18035577648987960983

`A269052(eq[4, A193592(n)])`
-/

namespace A269049.P18035577648987960983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269049.P18035577648987960983

/-! ## A269049.P14538013572910842075

`A269052(Δ[A023545(n+1)])`
-/

namespace A269049.P14538013572910842075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (f1 (n + 1) - f1 n).toNat

end

end A269049.P14538013572910842075

/-! ## A269049.P13222899317107752114

`A269052(A052905(n+2)+1)`
-/

namespace A269049.P13222899317107752114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A052905 (n + 2) + 1).toNat

end

end A269049.P13222899317107752114

/-!
# A269050: Number of n X 6 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269050, there is no canonical definition to state claims against.
-/

/-! ## A269050.P2416227597394391272

`A269052(A052905(n+3))`
-/

namespace A269050.P2416227597394391272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A052905 (n + 3)).toNat

end

end A269050.P2416227597394391272

/-! ## A269050.P15550946549821863134

`A269052(A056119(n)+16)`
-/

namespace A269050.P15550946549821863134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A056119 n + 16).toNat

end

end A269050.P15550946549821863134

/-! ## A269050.P2465134741226856268

`A269052(eq[3, A219347(n)])`
-/

namespace A269050.P2465134741226856268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269050.P2465134741226856268

/-! ## A269050.P6015202992192675167

`A269052(eq[5, A193592(n)])`
-/

namespace A269050.P6015202992192675167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269050.P6015202992192675167

/-! ## A269050.P12606770480040027870

`A269052(Δ[Δ[A006504(n+1)]])`
-/

namespace A269050.P12606770480040027870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (f1 (n + 1) - f1 n).toNat

end

end A269050.P12606770480040027870

/-!
# A269051: Number of nX7 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269051, there is no canonical definition to state claims against.
-/

/-! ## A269051.P9223711964815085644

`A269034(n+1)+A232919(n+1)`
-/

namespace A269051.P9223711964815085644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269034 (n + 1) + A232919 (n + 1)

end

end A269051.P9223711964815085644

/-! ## A269051.P9199950396471318987

`A269052(A055999(n+4))`
-/

namespace A269051.P9199950396471318987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A055999 (n + 4)).toNat

end

end A269051.P9199950396471318987

/-! ## A269051.P11107255779055170634

`A269052(eq[4, A219347(n)])`
-/

namespace A269051.P11107255779055170634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269051.P11107255779055170634

/-! ## A269051.P5737475422728653430

`A269052(eq[6, A193592(n)])`
-/

namespace A269051.P5737475422728653430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269051.P5737475422728653430

/-! ## A269051.P17084788587160368149

`A269052(A046691(n+5)-2)`
-/

namespace A269051.P17084788587160368149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A046691 (n + 5) - 2).toNat

end

end A269051.P17084788587160368149

/-!
# A269052: T(n,k)=Number of nXk 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269052, there is no canonical definition to state claims against.
-/

/-! ## A269052.P17349166718150279030

`A269035(n+1)+A232920(n+1)`
-/

namespace A269052.P17349166718150279030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (n + 1) + A232920 (n + 1)

end

end A269052.P17349166718150279030

/-! ## A269052.P441695123271668599

`A232920(n+1)+A229534(n+1)*A267884(n)`
-/

namespace A269052.P441695123271668599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A229534 (n + 1) * A267884 n

end

end A269052.P441695123271668599

/-! ## A269052.P2398351719485186399

`A232920(n+1)+A040006(A004526(n))*A229534(n+1)`
-/

namespace A269052.P2398351719485186399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (A004526 n).toNat * A229534 (n + 1)

end

end A269052.P2398351719485186399

/-! ## A269052.P1436066950799930401

`A232920(n+1)+A040006(A008612(n))*A229534(n+1)`
-/

namespace A269052.P1436066950799930401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (A008612 n).toNat * A229534 (n + 1)

end

end A269052.P1436066950799930401

/-! ## A269052.P7407050839583774972

`A232920(n+1)+A040006(A028242(n))*A229534(n+1)`
-/

namespace A269052.P7407050839583774972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (A028242 n).toNat * A229534 (n + 1)

end

end A269052.P7407050839583774972

/-! ## A269052.P2506864542393088154

`A232920(n+1)+A040006(A294061(n+1))*A229534(n+1)`
-/

namespace A269052.P2506864542393088154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (A294061 (n + 1)).toNat * A229534 (n + 1)

end

end A269052.P2506864542393088154

/-! ## A269052.P17417131850621348304

`A232920(n+1)+A040006(n-A010872(n))*A229534(n+1)`
-/

namespace A269052.P17417131850621348304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 ((n : ℤ) - A010872 n).toNat * A229534 (n + 1)

end

end A269052.P17417131850621348304

/-! ## A269052.P14207053323767312712

`A232920(n+1)+A229534(n+1)*A266251(A266249(2*n+1))`
-/

namespace A269052.P14207053323767312712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A229534 (n + 1) * A266251 (A266249 (2 * n + 1)).toNat

end

end A269052.P14207053323767312712

/-! ## A269052.P11845246336497607410

`A232920(n+1)+gcd(6, A167667(n))*A229534(n+1)`
-/

namespace A269052.P11845246336497607410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + (Int.gcd 6 (A167667 n) : ℤ) * A229534 (n + 1)

end

end A269052.P11845246336497607410

/-! ## A269052.P9810980237656174051

`A232920(n+1)+A040006(A007590(n))*A229534(n+1)`
-/

namespace A269052.P9810980237656174051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (A007590 n).toNat * A229534 (n + 1)

end

end A269052.P9810980237656174051

/-! ## A269052.P14680147442607347878

`A232920(n+1)+A040006(n²-n)*A229534(n+1)`
-/

namespace A269052.P14680147442607347878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (n ^ 2 - n) * A229534 (n + 1)

end

end A269052.P14680147442607347878

/-!
# A269053: Number of 2 X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269053, the canonical program `A269053.P12181308701025121849` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269053 has offset 1).

The definition of A269053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269053.P12181308701025121849

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=9, a(1)=42, a(2)=102, a(3)=360`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A269053

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P12181308701025121849.Spec : Prop :=
  ∀ n, P12181308701025121849.a n = A269053 (n + 1)

theorem P12181308701025121849.correct : P12181308701025121849.Spec := by
  intro n
  simp only [A269053, Nat.add_sub_cancel]

end A269053

/-! ## A269053.P1235045161268083412

`A269036(n+1)+A232921(n+1)`
-/

namespace A269053.P1235045161268083412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269036 (n + 1) + A232921 (n + 1)

end

end A269053.P1235045161268083412

namespace A269053

/-- `A269036(n+1)+A232921(n+1)` -/
def P1235045161268083412.Spec : Prop :=
  ∀ n, P1235045161268083412.a n = A269053 (n + 1)

end A269053

/-! ## A269053.P17547123191870936998

`A232921(n+1)+6*A229535(n+1)`
-/

namespace A269053.P17547123191870936998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232921 (n + 1) + 6 * A229535 (n + 1)

end

end A269053.P17547123191870936998

namespace A269053

/-- `A232921(n+1)+6*A229535(n+1)` -/
def P17547123191870936998.Spec : Prop :=
  ∀ n, P17547123191870936998.a n = A269053 (n + 1)

end A269053

/-! ## A269053.P2446290127005839149

`A269036(n+1)+A040072(n)*A155020(n)`
-/

namespace A269053.P2446290127005839149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269036 (n + 1) + A040072 n * A155020 n

end

end A269053.P2446290127005839149

namespace A269053

/-- `A269036(n+1)+A040072(n)*A155020(n)` -/
def P2446290127005839149.Spec : Prop :=
  ∀ n, P2446290127005839149.a n = A269053 (n + 1)

end A269053

/-! ## A269053.P3220736029968250338

`A232921(n+1)+Δ[A008458(n)*A293007(n)]`
-/

namespace A269053.P3220736029968250338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232921 (n + 1) + (f1 (n + 1) - f1 n)

end

end A269053.P3220736029968250338

namespace A269053

/-- `A232921(n+1)+Δ[A008458(n)*A293007(n)]` -/
def P3220736029968250338.Spec : Prop :=
  ∀ n, P3220736029968250338.a n = A269053 (n + 1)

end A269053

/-! ## A269053.P14859152779726012048

`A232921(n+1)+Δ[A008588(n)*A293007(n)]`
-/

namespace A269053.P14859152779726012048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n * A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232921 (n + 1) + (f1 (n + 1) - f1 n)

end

end A269053.P14859152779726012048

namespace A269053

/-- `A232921(n+1)+Δ[A008588(n)*A293007(n)]` -/
def P14859152779726012048.Spec : Prop :=
  ∀ n, P14859152779726012048.a n = A269053 (n + 1)

end A269053

/-!
# A269054: Number of 3 X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269054, there is no canonical definition to state claims against.
-/

/-! ## A269054.P16165861731754942575

`A269037(n+1)+A232922(n+1)`
-/

namespace A269054.P16165861731754942575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269037 (n + 1) + A232922 (n + 1)

end

end A269054.P16165861731754942575

/-! ## A269054.P7639441501050567775

`A269037(n+1)+A232920(A167614(n+1))`
-/

namespace A269054.P7639441501050567775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269037 (n + 1) + A232920 (A167614 (n + 1)).toNat

end

end A269054.P7639441501050567775

/-! ## A269054.P8462547254676313789

`A269052(∑[n+2]+4)`
-/

namespace A269054.P8462547254676313789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269054.P8462547254676313789

/-! ## A269054.P9187687104991003939

`lcm(3, A269052(A167614(n+1)))`
-/

namespace A269054.P9187687104991003939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A269052 (A167614 (n + 1)).toNat)

end

end A269054.P9187687104991003939

/-! ## A269054.P11098531952442458949

`or(A000007(n), A269052(A167614(n+1)))`
-/

namespace A269054.P11098531952442458949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A269052 (A167614 (n + 1)).toNat)

end

end A269054.P11098531952442458949

/-!
# A269055: Number of 4Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269055, there is no canonical definition to state claims against.
-/

/-! ## A269055.P6315273574242979776

`A269052(A141214(n)+7)`
-/

namespace A269055.P6315273574242979776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A141214 n + 7).toNat

end

end A269055.P6315273574242979776

/-! ## A269055.P11435274347182932356

`A269052(A052905(n)+9)`
-/

namespace A269055.P11435274347182932356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A052905 n + 9).toNat

end

end A269055.P11435274347182932356

/-! ## A269055.P5583760763157317818

`A269052(A055999(n)+10)`
-/

namespace A269055.P5583760763157317818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A055999 n + 10).toNat

end

end A269055.P5583760763157317818

/-! ## A269055.P9248832236040257020

`A269052(A167614(n+2)+1)`
-/

namespace A269055.P9248832236040257020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A167614 (n + 2) + 1).toNat

end

end A269055.P9248832236040257020

/-! ## A269055.P3217094848559655348

`A269052(A034856(n+2)+6)`
-/

namespace A269055.P3217094848559655348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A034856 (n + 2) + 6).toNat

end

end A269055.P3217094848559655348

/-!
# A269056: Number of 5Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269056, there is no canonical definition to state claims against.
-/

/-! ## A269056.P18200468815282447922

`A269039(n+1)+A232924(n+1)`
-/

namespace A269056.P18200468815282447922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269039 (n + 1) + A232924 (n + 1)

end

end A269056.P18200468815282447922

/-! ## A269056.P6457909752722337664

`A269052(A167499(n+3))`
-/

namespace A269056.P6457909752722337664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A167499 (n + 3)).toNat

end

end A269056.P6457909752722337664

/-! ## A269056.P7984077733976125745

`A269052(A056000(n)+15)`
-/

namespace A269056.P7984077733976125745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A056000 n + 15).toNat

end

end A269056.P7984077733976125745

/-! ## A269056.P11289761348359023810

`A269052(eq[6, A131818(n+1)])`
-/

namespace A269056.P11289761348359023810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269056.P11289761348359023810

/-! ## A269056.P1782952702768426784

`A269052(A052905(n+2)-n+5)`
-/

namespace A269056.P1782952702768426784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A052905 (n + 2) - (n : ℤ) + 5).toNat

end

end A269056.P1782952702768426784

/-!
# A269057: Number of 6Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269057, there is no canonical definition to state claims against.
-/

/-! ## A269057.P4452418399743590168

`A269040(n+1)+A232925(n+1)`
-/

namespace A269057.P4452418399743590168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269040 (n + 1) + A232925 (n + 1)

end

end A269057.P4452418399743590168

/-! ## A269057.P18123838687200597454

`A232925(n+1)+6*A229539(n+1)`
-/

namespace A269057.P18123838687200597454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232925 (n + 1) + 6 * A229539 (n + 1)

end

end A269057.P18123838687200597454

/-! ## A269057.P10385693512501186

`A269040(n+1)+A232920(A056115(n)+21)`
-/

namespace A269057.P10385693512501186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269040 (n + 1) + A232920 (A056115 n + 21).toNat

end

end A269057.P10385693512501186

/-! ## A269057.P16468997944004248677

`A269040(n+1)+A232920(eq[7, A131818(n+1)])`
-/

namespace A269057.P16468997944004248677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269040 (n + 1) + A232920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269057.P16468997944004248677

/-! ## A269057.P3166328935744971783

`A269040(n+1)+A232920(Δ[A023545(n+1)]+10)`
-/

namespace A269057.P3166328935744971783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269040 (n + 1) + A232920 (f1 (n + 1) - f1 n + 10).toNat

end

end A269057.P3166328935744971783

/-!
# A269058: Number of 7Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269058, there is no canonical definition to state claims against.
-/

/-! ## A269058.P1605839378477420788

`A269041(n+1)+A232926(n+1)`
-/

namespace A269058.P1605839378477420788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269041 (n + 1) + A232926 (n + 1)

end

end A269058.P1605839378477420788

/-! ## A269058.P1005350794366393836

`A232926(n+1)+6*A229540(n+1)`
-/

namespace A269058.P1005350794366393836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232926 (n + 1) + 6 * A229540 (n + 1)

end

end A269058.P1005350794366393836

/-! ## A269058.P14707880961199958947

`A269052(A167487(n+5))`
-/

namespace A269058.P14707880961199958947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A167487 (n + 5)).toNat

end

end A269058.P14707880961199958947

/-! ## A269058.P5653961678534124503

`A269052(eq[11, A066657(n)])`
-/

namespace A269058.P5653961678534124503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269058.P5653961678534124503

/-! ## A269058.P3773794176768454018

`A269052(eq[8, A131818(n+1)])`
-/

namespace A269058.P3773794176768454018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269058.P3773794176768454018

/-!
# A269059: Construct a hollow square of 1's of side n and fill its interior with 0's to create a stack of n binary numbers. Express the sum of the stack in decimal.

The programs for A269059, the canonical program `A269059.P2094528503455587302` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269059 has offset 1).

The definition of A269059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269059.P2094528503455587302

`A069229(n)+A068156(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269059

/-- `A069229(n)+A068156(n)` -/
def P2094528503455587302.Spec : Prop :=
  ∀ n, P2094528503455587302.a n = A269059 (n + 1)

theorem P2094528503455587302.correct : P2094528503455587302.Spec := by
  intro n
  simp only [A269059, Nat.add_sub_cancel]

end A269059

/-! ## A269059.P16212580054754033187

`A004273(n)+∑[A047859(n)]`
-/

namespace A269059.P16212580054754033187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269059.P16212580054754033187

namespace A269059

/-- `A004273(n)+∑[A047859(n)]` -/
def P16212580054754033187.Spec : Prop :=
  ∀ n, P16212580054754033187.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P4870837333016043152

`A053221(n+1)+A004273(n)`
-/

namespace A269059.P4870837333016043152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053221 (n + 1) + A004273 n

end

end A269059.P4870837333016043152

namespace A269059

/-- `A053221(n+1)+A004273(n)` -/
def P4870837333016043152.Spec : Prop :=
  ∀ n, P4870837333016043152.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P17546568056256593488

`A260006(n)+A081494(n+1)`
-/

namespace A269059.P17546568056256593488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260006 n + A081494 (n + 1)

end

end A269059.P17546568056256593488

namespace A269059

/-- `A260006(n)+A081494(n+1)` -/
def P17546568056256593488.Spec : Prop :=
  ∀ n, P17546568056256593488.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P5011226994145045103

`A004277(n)+(n+3)*A000225(n)`
-/

namespace A269059.P5011226994145045103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (n + 3 : ℤ) * A000225 n

end

end A269059.P5011226994145045103

namespace A269059

/-- `A004277(n)+(n+3)*A000225(n)` -/
def P5011226994145045103.Spec : Prop :=
  ∀ n, P5011226994145045103.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P507504917605601259

`A004273(n)+∑[∑[A045891(n+1)]]`
-/

namespace A269059.P507504917605601259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269059.P507504917605601259

namespace A269059

/-- `A004273(n)+∑[∑[A045891(n+1)]]` -/
def P507504917605601259.Spec : Prop :=
  ∀ n, P507504917605601259.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P17901233755471121643

`A000295(n+1)+A004273(n)+A001787(n+1)`
-/

namespace A269059.P17901233755471121643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 1) + (A004273 n + A001787 (n + 1))

end

end A269059.P17901233755471121643

namespace A269059

/-- `A000295(n+1)+A004273(n)+A001787(n+1)` -/
def P17901233755471121643.Spec : Prop :=
  ∀ n, P17901233755471121643.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P13846805395995980478

`Δ[A135854(n)]-4+n`
-/

namespace A269059.P13846805395995980478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4 + (n : ℤ)

end

end A269059.P13846805395995980478

namespace A269059

/-- `Δ[A135854(n)]-4+n` -/
def P13846805395995980478.Spec : Prop :=
  ∀ n, P13846805395995980478.a n = A269059 (n + 1)

end A269059

/-!
# A269060: Magic sums of 3 X 3 semimagic squares composed of positive triangular numbers.

The programs for A269060, there is no canonical definition to state claims against.
-/

/-! ## A269060.P9762339461947616720

`A265197(lt[A049600(2*(n+1)), A176538(n+4)])`
-/

namespace A269060.P9762339461947616720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176538 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265197 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269060.P9762339461947616720

/-! ## A269060.P14232220343075561949

`A265197(comp[3*(2-n)])`
-/

namespace A269060.P14232220343075561949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 - (n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265197 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A269060.P14232220343075561949

/-!
# A269061: Magic sums of 3 X 3 semimagic squares composed of positive squares.

The programs for A269061, there is no canonical definition to state claims against.
-/

/-! ## A269061.P9771664558991425407

`A265198(∪[A265238(n+1), A265187(n+2)])`
-/

namespace A269061.P9771664558991425407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265198 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A269061.P9771664558991425407

/-! ## A269061.P1427866827103091962

`A265198(∪[A265230(n+1), A265187(n+2)])`
-/

namespace A269061.P1427866827103091962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265198 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A269061.P1427866827103091962

/-! ## A269061.P3596271587815074635

`A265198(∪[A265171(n+1), A265187(n+3)])`
-/

namespace A269061.P3596271587815074635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265198 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A269061.P3596271587815074635

/-! ## A269061.P5635478975889323526

`A265198(A265187(n+2)*A287383(n))`
-/

namespace A269061.P5635478975889323526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265198 (A265187 (n + 2) * A287383 n).toNat

end

end A269061.P5635478975889323526

/-!
# A269065: Irregular triangle read by rows: row n lists divisors of n-th composite number.

The programs for A269065, there is no canonical definition to state claims against.
-/

/-! ## A269065.P9884750504307261771

`A027750(lt[5, A182631(3*n+4)])`
-/

namespace A269065.P9884750504307261771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182631 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A269065.P9884750504307261771

/-! ## A269065.P11685032125218146758

`A094560(A347113(3*n+5)+A163876(n+1))`
-/

namespace A269065.P11685032125218146758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094560 (A347113 (3 * n + 5) + A163876 (n + 1)).toNat

end

end A269065.P11685032125218146758

/-! ## A269065.P1878979664859639110

`A081532(n+4)%A032741(A005179(n+5))`
-/

namespace A269065.P1878979664859639110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081532 (n + 4)) (A032741 (A005179 (n + 5)).toNat)

end

end A269065.P1878979664859639110

/-! ## A269065.P6004911306026994782

`A161901(lt[A191703(n+5), A343342(2*n+1)])`
-/

namespace A269065.P6004911306026994782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191703 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343342 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161901 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269065.P6004911306026994782

/-! ## A269065.P12082501586926312047

`A040001(A006882(n))*A158416(A065033(n+2))`
-/

namespace A269065.P12082501586926312047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A006882 n).toNat * A158416 (A065033 (n + 2)).toNat

end

end A269065.P12082501586926312047

/-!
# A269068: a(n+2) = a(n+1) + L(n+1)*a(n), where L = Lucas number (A000032) and a(0) = a(1) = 1.

The programs for A269068, there is no canonical definition to state claims against.
-/

/-! ## A269068.P8191054034391290156

`a(n-1)+a(n-2)*Δ[A000032(n)]` with `a(0)=1, a(1)=1`
-/

namespace A269068.P8191054034391290156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * (f1 (n + 1) - f1 n)

end

end A269068.P8191054034391290156

/-! ## A269068.P17215035284996503026

`a(n-1)+a(n-2)*A000032(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A269068.P17215035284996503026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * A000032 (n - 1)

end

end A269068.P17215035284996503026

/-! ## A269068.P1741325216067601265

`A349523(A089976(n))`
-/

namespace A269068.P1741325216067601265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349523 (A089976 n).toNat

end

end A269068.P1741325216067601265

/-!
# A269069: Number of n X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269069, there is no canonical definition to state claims against.
-/

/-! ## A269069.P13644419372719447582

`A269075((n+1)²+n²)`
-/

namespace A269069.P13644419372719447582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 ((n + 1) ^ 2 + n ^ 2)

end

end A269069.P13644419372719447582

/-! ## A269069.P1680983184698969164

`lcm(A015343(n), A269075(A001844(n)))`
-/

namespace A269069.P1680983184698969164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015343 n) (A269075 (A001844 n).toNat)

end

end A269069.P1680983184698969164

/-! ## A269069.P17178158524354711015

`or(A084904(n), A269075(A001844(n)))`
-/

namespace A269069.P17178158524354711015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084904 n) (A269075 (A001844 n).toNat)

end

end A269069.P17178158524354711015

/-! ## A269069.P16477747741372933026

`or(A107846(n), A269075(A001844(n)))`
-/

namespace A269069.P16477747741372933026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 n) (A269075 (A001844 n).toNat)

end

end A269069.P16477747741372933026

/-! ## A269069.P9705027874487594747

`char[A004502(n)]*A269075(A001844(n))`
-/

namespace A269069.P9705027874487594747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A269075 (A001844 n).toNat

end

end A269069.P9705027874487594747

/-!
# A269070: Number of n X 3 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269070, there is no canonical definition to state claims against.
-/

/-! ## A269070.P3592519436729749623

`A269006(n+1)+A228678(n+1)`
-/

namespace A269070.P3592519436729749623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269006 (n + 1) + A228678 (n + 1)

end

end A269070.P3592519436729749623

/-! ## A269070.P6397309767773616584

`A269075(∑[n+3]+1)`
-/

namespace A269070.P6397309767773616584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269070.P6397309767773616584

/-! ## A269070.P9531739085616021987

`or(1, A269075(A034856(n+2)))`
-/

namespace A269070.P9531739085616021987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269075 (A034856 (n + 2)).toNat)

end

end A269070.P9531739085616021987

/-! ## A269070.P17738763076740437556

`lcm(A033999(n), A269075(A034856(n+2)))`
-/

namespace A269070.P17738763076740437556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A269075 (A034856 (n + 2)).toNat)

end

end A269070.P17738763076740437556

/-! ## A269070.P2422138154730480213

`A033999(2*n)*A269075(A034856(n+2))`
-/

namespace A269070.P2422138154730480213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A269075 (A034856 (n + 2)).toNat

end

end A269070.P2422138154730480213

/-!
# A269071: Number of n X 4 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269071, there is no canonical definition to state claims against.
-/

/-! ## A269071.P2027917112696342100

`A269075(A027379(n+2))`
-/

namespace A269071.P2027917112696342100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A027379 (n + 2)).toNat

end

end A269071.P2027917112696342100

/-! ## A269071.P6598169406113370053

`A269075(A055998(n+2))`
-/

namespace A269071.P6598169406113370053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A055998 (n + 2)).toNat

end

end A269071.P6598169406113370053

/-! ## A269071.P583923711409344152

`A269075(A056000(n)+7)`
-/

namespace A269071.P583923711409344152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A056000 n + 7).toNat

end

end A269071.P583923711409344152

/-! ## A269071.P4961444692541733381

`A269075(eq[4, A209434(n)])`
-/

namespace A269071.P4961444692541733381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269071.P4961444692541733381

/-! ## A269071.P9022744061695011714

`A269075(A052905(n+1)+2)`
-/

namespace A269071.P9022744061695011714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A052905 (n + 1) + 2).toNat

end

end A269071.P9022744061695011714

/-!
# A269072: Number of nX5 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269072, there is no canonical definition to state claims against.
-/

/-! ## A269072.P16353061281316597497

`A269075(Δ[A264443(n)])`
-/

namespace A269072.P16353061281316597497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (f1 (n + 1) - f1 n).toNat

end

end A269072.P16353061281316597497

/-! ## A269072.P4818249866294045935

`A269075(A046691(n+3))`
-/

namespace A269072.P4818249866294045935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A046691 (n + 3)).toNat

end

end A269072.P4818249866294045935

/-! ## A269072.P1865549594434828853

`A269075(eq[4, A193592(n)])`
-/

namespace A269072.P1865549594434828853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269072.P1865549594434828853

/-! ## A269072.P6338037928700626840

`A269075(eq[8, A140996(n)])`
-/

namespace A269072.P6338037928700626840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269072.P6338037928700626840

/-! ## A269072.P16070207753261475191

`A269075(Δ[A023545(n+1)])`
-/

namespace A269072.P16070207753261475191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (f1 (n + 1) - f1 n).toNat

end

end A269072.P16070207753261475191

/-!
# A269073: Number of nX6 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269073, there is no canonical definition to state claims against.
-/

/-! ## A269073.P15199054928397469919

`A269075(A052905(n+3))`
-/

namespace A269073.P15199054928397469919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A052905 (n + 3)).toNat

end

end A269073.P15199054928397469919

/-! ## A269073.P2753107633956907536

`A269075(eq[3, A219347(n)])`
-/

namespace A269073.P2753107633956907536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269073.P2753107633956907536

/-! ## A269073.P8578428811482003188

`A269075(eq[5, A193592(n)])`
-/

namespace A269073.P8578428811482003188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269073.P8578428811482003188

/-! ## A269073.P4959846212681038497

`A269075(eq[8, A258709(n)])`
-/

namespace A269073.P4959846212681038497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269073.P4959846212681038497

/-! ## A269073.P11237070071009469417

`A269075(A055999(n+3)+1)`
-/

namespace A269073.P11237070071009469417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A055999 (n + 3) + 1).toNat

end

end A269073.P11237070071009469417

/-!
# A269074: Number of nX7 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269074, there is no canonical definition to state claims against.
-/

/-! ## A269074.P2497852400126300208

`A269075(A055999(n+4))`
-/

namespace A269074.P2497852400126300208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A055999 (n + 4)).toNat

end

end A269074.P2497852400126300208

/-! ## A269074.P11847268474135218714

`A269075(eq[4, A219347(n)])`
-/

namespace A269074.P11847268474135218714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269074.P11847268474135218714

/-! ## A269074.P5631044844872408706

`A269075(eq[6, A193592(n)])`
-/

namespace A269074.P5631044844872408706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269074.P5631044844872408706

/-! ## A269074.P590155954406803328

`A269075(A056000(n+3)+4)`
-/

namespace A269074.P590155954406803328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A056000 (n + 3) + 4).toNat

end

end A269074.P590155954406803328

/-! ## A269074.P7031751961430165460

`A269075(eq[10, A185782(n+1)])`
-/

namespace A269074.P7031751961430165460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269074.P7031751961430165460

/-!
# A269075: T(n,k)=Number of nXk binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269075, there is no canonical definition to state claims against.
-/

/-! ## A269075.P210402919531395244

`A269011(n+1)+A228683(n+1)`
-/

namespace A269075.P210402919531395244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (n + 1) + A228683 (n + 1)

end

end A269075.P210402919531395244

/-! ## A269075.P3279864416988255706

`A283543(n+1)-A107846(A001006(n))`
-/

namespace A269075.P3279864416988255706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - A107846 (A001006 n).toNat

end

end A269075.P3279864416988255706

/-! ## A269075.P1829050232675694440

`A283543(n+1)-A044940(A102468(n))`
-/

namespace A269075.P1829050232675694440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - A044940 (A102468 n).toNat

end

end A269075.P1829050232675694440

/-!
# A269076: Number of 2 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269076, the canonical program `A269076.P16139417725698352669` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269076 has offset 1).

The definition of A269076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269076.P16139417725698352669

`2*a(n-1)+5*a(n-2)-6*a(n-3)-9*a(n-4)` with `a(0)=4, a(1)=11, a(2)=27, a(3)=76`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A269076

/-- `2*a(n-1)+5*a(n-2)-6*a(n-3)-9*a(n-4)` -/
def P16139417725698352669.Spec : Prop :=
  ∀ n, P16139417725698352669.a n = A269076 (n + 1)

theorem P16139417725698352669.correct : P16139417725698352669.Spec := by
  intro n
  simp only [A269076, Nat.add_sub_cancel]

end A269076

/-! ## A269076.P3921858919756153978

`A269075(∑[n+1]+2)`
-/

namespace A269076.P3921858919756153978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269076.P3921858919756153978

namespace A269076

/-- `A269075(∑[n+1]+2)` -/
def P3921858919756153978.Spec : Prop :=
  ∀ n, P3921858919756153978.a n = A269076 (n + 1)

end A269076

/-! ## A269076.P15490727051439045626

`A269075(A133263(n+1))+A000007(n+1)`
-/

namespace A269076.P15490727051439045626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A269076.P15490727051439045626

namespace A269076

/-- `A269075(A133263(n+1))+A000007(n+1)` -/
def P15490727051439045626.Spec : Prop :=
  ∀ n, P15490727051439045626.a n = A269076 (n + 1)

end A269076

/-! ## A269076.P6283256026958995807

`record[A269075(A004736(n+1)+A020639(n+2))]`
-/

namespace A269076.P6283256026958995807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A004736 (n + 1) + A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269076.P6283256026958995807

namespace A269076

/-- `record[A269075(A004736(n+1)+A020639(n+2))]` -/
def P6283256026958995807.Spec : Prop :=
  ∀ n, P6283256026958995807.a n = A269076 (n + 1)

end A269076

/-! ## A269076.P18324874458329867438

`-A008683(A007918(n))*A269075(A133263(n+1))`
-/

namespace A269076.P18324874458329867438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008683 (A007918 n).toNat * A269075 (A133263 (n + 1)).toNat)

end

end A269076.P18324874458329867438

namespace A269076

/-- `-A008683(A007918(n))*A269075(A133263(n+1))` -/
def P18324874458329867438.Spec : Prop :=
  ∀ n, P18324874458329867438.a n = A269076 (n + 1)

end A269076

/-!
# A269077: Number of 3 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269077, there is no canonical definition to state claims against.
-/

/-! ## A269077.P11552380146082181965

`A269013(n+1)+A228684(n+1)`
-/

namespace A269077.P11552380146082181965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269013 (n + 1) + A228684 (n + 1)

end

end A269077.P11552380146082181965

/-! ## A269077.P8403415732949584878

`A269075(∑[n+2]+4)`
-/

namespace A269077.P8403415732949584878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269077.P8403415732949584878

/-! ## A269077.P12604874664735534102

`lcm(A033999(n), A269075(A167614(n+1)))`
-/

namespace A269077.P12604874664735534102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A269075 (A167614 (n + 1)).toNat)

end

end A269077.P12604874664735534102

/-! ## A269077.P12831568924960125800

`A269075(A167614(n+1))+A000007(n+1)`
-/

namespace A269077.P12831568924960125800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A269077.P12831568924960125800

/-! ## A269077.P11369435722390924253

`A014963(A006039(n+1))*A269075(A167614(n+1))`
-/

namespace A269077.P11369435722390924253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006039 (n + 1)).toNat * A269075 (A167614 (n + 1)).toNat

end

end A269077.P11369435722390924253

/-!
# A269078: Number of 4 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269078, there is no canonical definition to state claims against.
-/

/-! ## A269078.P5597338945714140415

`A269075(A052905(n)+9)`
-/

namespace A269078.P5597338945714140415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A052905 n + 9).toNat

end

end A269078.P5597338945714140415

/-! ## A269078.P12728151265578674213

`A269075(A055999(n)+10)`
-/

namespace A269078.P12728151265578674213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A055999 n + 10).toNat

end

end A269078.P12728151265578674213

/-! ## A269078.P10429840772916210347

`A269075(A167614(n+2)+1)`
-/

namespace A269078.P10429840772916210347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A167614 (n + 2) + 1).toNat

end

end A269078.P10429840772916210347

/-! ## A269078.P11117200926491422439

`A269075(A166136(n+2)-2)`
-/

namespace A269078.P11117200926491422439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A166136 (n + 2) - 2).toNat

end

end A269078.P11117200926491422439

/-! ## A269078.P13078538185114943223

`A269075(A167487(n+2)-3)`
-/

namespace A269078.P13078538185114943223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A167487 (n + 2) - 3).toNat

end

end A269078.P13078538185114943223

/-!
# A269079: Number of 5Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269079, there is no canonical definition to state claims against.
-/

/-! ## A269079.P12299831747112180896

`A269015(n+1)+A228683(A167499(n+3))`
-/

namespace A269079.P12299831747112180896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269015 (n + 1) + A228683 (A167499 (n + 3)).toNat

end

end A269079.P12299831747112180896

/-! ## A269079.P3020264465318308706

`A269075(A167499(n+3))`
-/

namespace A269079.P3020264465318308706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A167499 (n + 3)).toNat

end

end A269079.P3020264465318308706

/-! ## A269079.P13145609669534999765

`A269075(A155212(n)+13)`
-/

namespace A269079.P13145609669534999765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A155212 n + 13).toNat

end

end A269079.P13145609669534999765

/-! ## A269079.P2626739362301566993

`A269075(A056000(n)+15)`
-/

namespace A269079.P2626739362301566993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A056000 n + 15).toNat

end

end A269079.P2626739362301566993

/-! ## A269079.P7021484716477101710

`A269075(A052905(n+1)+10)`
-/

namespace A269079.P7021484716477101710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A052905 (n + 1) + 10).toNat

end

end A269079.P7021484716477101710

/-!
# A269080: Number of 6Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269080, there is no canonical definition to state claims against.
-/

/-! ## A269080.P1331275145801116945

`A269075(A166136(n+4))`
-/

namespace A269080.P1331275145801116945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A166136 (n + 4)).toNat

end

end A269080.P1331275145801116945

/-! ## A269080.P4494256229681429866

`A269075(A056115(n)+21)`
-/

namespace A269080.P4494256229681429866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A056115 n + 21).toNat

end

end A269080.P4494256229681429866

/-! ## A269080.P3087667053832091397

`A269075(A000217(n+5)+6)`
-/

namespace A269080.P3087667053832091397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A000217 (n + 5) + 6).toNat

end

end A269080.P3087667053832091397

/-! ## A269080.P8109627167742849398

`A269075(A155212(n+1)+14)`
-/

namespace A269080.P8109627167742849398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A155212 (n + 1) + 14).toNat

end

end A269080.P8109627167742849398

/-! ## A269080.P8202957030639307096

`A269075(eq[7, A131818(n+1)])`
-/

namespace A269080.P8202957030639307096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269080.P8202957030639307096

/-!
# A269081: Number of 7Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269081, there is no canonical definition to state claims against.
-/

/-! ## A269081.P2880927668857066061

`A269075(A167487(n+5))`
-/

namespace A269081.P2880927668857066061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A167487 (n + 5)).toNat

end

end A269081.P2880927668857066061

/-! ## A269081.P7616606013839038099

`A269075(A056119(n)+28)`
-/

namespace A269081.P7616606013839038099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A056119 n + 28).toNat

end

end A269081.P7616606013839038099

/-! ## A269081.P3786346057454091245

`A269075(eq[11, A066657(n)])`
-/

namespace A269081.P3786346057454091245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269081.P3786346057454091245

/-! ## A269081.P18161036750812679791

`A269075(A166136(n+5)+1)`
-/

namespace A269081.P18161036750812679791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A166136 (n + 5) + 1).toNat

end

end A269081.P18161036750812679791

/-! ## A269081.P6534557428824396101

`A269075(eq[8, A131818(n+1)])`
-/

namespace A269081.P6534557428824396101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269081.P6534557428824396101

/-!
# A269082: Number of n X n binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269082, there is no canonical definition to state claims against.
-/

/-! ## A269082.P12237027372013122488

`A269089((n+1)²+n²)`
-/

namespace A269082.P12237027372013122488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 ((n + 1) ^ 2 + n ^ 2)

end

end A269082.P12237027372013122488

/-! ## A269082.P4657807358930633140

`record[gcd(A157521(n), A269089(n+1))]`
-/

namespace A269082.P4657807358930633140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157521 n) (A269089 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269082.P4657807358930633140

/-! ## A269082.P2842112766131706942

`record[A077606(n+1)*A269089(n+1)]`
-/

namespace A269082.P2842112766131706942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A269089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269082.P2842112766131706942

/-! ## A269082.P13879079020249288464

`record[root(A269089(n+1), A089913(n+1))]`
-/

namespace A269082.P13879079020249288464
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269089 (n + 1) : ℝ) ^ (1 / (A089913 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269082.P13879079020249288464

/-! ## A269082.P11974615460126274826

`gcd(A000038(n), A269089(A001844(n)))`
-/

namespace A269082.P11974615460126274826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269089 (A001844 n).toNat)

end

end A269082.P11974615460126274826

/-!
# A269083: Number of n X 2 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269083, there is no canonical definition to state claims against.
-/

/-! ## A269083.P11514585767774617325

`A269089(∑[n+1]+2)`
-/

namespace A269083.P11514585767774617325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269083.P11514585767774617325

/-! ## A269083.P1870080856451853992

`A269089(A133263(n+1))%(4*8^n)²`
-/

namespace A269083.P1870080856451853992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269089 (A133263 (n + 1)).toNat) ((4 * 8 ^ n) ^ 2 : ℤ)

end

end A269083.P1870080856451853992

/-! ## A269083.P749646180480867221

`record[A269089(A133263(A008611(n)))]`
-/

namespace A269083.P749646180480867221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269083.P749646180480867221

/-! ## A269083.P13306507755907794817

`A269089(A133263(n+1))+A000007(n+1)`
-/

namespace A269083.P13306507755907794817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A269083.P13306507755907794817

/-! ## A269083.P1181079431892870133

`A269089(A133263(n+1))+A000035(2*n)`
-/

namespace A269083.P1181079431892870133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A269083.P1181079431892870133

/-!
# A269084: Number of n X 3 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269084, there is no canonical definition to state claims against.
-/

/-! ## A269084.P1381480198697034180

`A269089(∑[n+2]+4)`
-/

namespace A269084.P1381480198697034180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269084.P1381480198697034180

/-! ## A269084.P10269863185804147333

`A269089(A167614(n+1))%A199316(n)`
-/

namespace A269084.P10269863185804147333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269089 (A167614 (n + 1)).toNat) (A199316 n)

end

end A269084.P10269863185804147333

/-! ## A269084.P15394572052598523482

`lcm(A033999(n), A269089(A167614(n+1)))`
-/

namespace A269084.P15394572052598523482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A269089 (A167614 (n + 1)).toNat)

end

end A269084.P15394572052598523482

/-! ## A269084.P10889561955890873784

`or(A000007(n), A269089(A167614(n+1)))`
-/

namespace A269084.P10889561955890873784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A269089 (A167614 (n + 1)).toNat)

end

end A269084.P10889561955890873784

/-! ## A269084.P17953626672320444512

`A269089(A167614(n+1))+A000007(n+1)`
-/

namespace A269084.P17953626672320444512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A269084.P17953626672320444512

/-!
# A269085: Number of nX4 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269085, there is no canonical definition to state claims against.
-/

/-! ## A269085.P8317195752837233346

`A269089(A374004(n+1))`
-/

namespace A269085.P8317195752837233346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A374004 (n + 1)).toNat

end

end A269085.P8317195752837233346

/-! ## A269085.P1276300397875438684

`A269089(A052905(n)+9)`
-/

namespace A269085.P1276300397875438684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A052905 n + 9).toNat

end

end A269085.P1276300397875438684

/-! ## A269085.P3460356355423252793

`A269089(A055999(n)+10)`
-/

namespace A269085.P3460356355423252793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A055999 n + 10).toNat

end

end A269085.P3460356355423252793

/-! ## A269085.P16541925134449180123

`A269089(A167614(n+2)+1)`
-/

namespace A269085.P16541925134449180123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A167614 (n + 2) + 1).toNat

end

end A269085.P16541925134449180123

/-! ## A269085.P14278565570153776290

`A269089(A167499(n+2)-1)`
-/

namespace A269085.P14278565570153776290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A167499 (n + 2) - 1).toNat

end

end A269085.P14278565570153776290

/-!
# A269086: Number of nX5 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269086, there is no canonical definition to state claims against.
-/

/-! ## A269086.P6388724141812553965

`A269089(A374005(n+1))`
-/

namespace A269086.P6388724141812553965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A374005 (n + 1)).toNat

end

end A269086.P6388724141812553965

/-! ## A269086.P17393354411069733318

`A269089(A167499(n+3))`
-/

namespace A269086.P17393354411069733318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A167499 (n + 3)).toNat

end

end A269086.P17393354411069733318

/-! ## A269086.P8173338392164923608

`A269089(A155212(n)+13)`
-/

namespace A269086.P8173338392164923608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A155212 n + 13).toNat

end

end A269086.P8173338392164923608

/-! ## A269086.P17743455447926201530

`A269089(A000217(n+4)+5)`
-/

namespace A269086.P17743455447926201530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A000217 (n + 4) + 5).toNat

end

end A269086.P17743455447926201530

/-! ## A269086.P15070723193462914748

`A269089(A046691(n+2)+9)`
-/

namespace A269086.P15070723193462914748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A046691 (n + 2) + 9).toNat

end

end A269086.P15070723193462914748

/-!
# A269087: Number of nX6 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269087, there is no canonical definition to state claims against.
-/

/-! ## A269087.P3763627696520189858

`A269089(A374007(n+1))`
-/

namespace A269087.P3763627696520189858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A374007 (n + 1)).toNat

end

end A269087.P3763627696520189858

/-! ## A269087.P2188790706182954249

`A269089(A052905(n+3))`
-/

namespace A269087.P2188790706182954249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A052905 (n + 3)).toNat

end

end A269087.P2188790706182954249

/-! ## A269087.P17400572745800306414

`A269089(A027379(n+4)-2)`
-/

namespace A269087.P17400572745800306414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A027379 (n + 4) - 2).toNat

end

end A269087.P17400572745800306414

/-! ## A269087.P7282328909454087239

`A269089(eq[16, A057728(n+1)])`
-/

namespace A269087.P7282328909454087239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269087.P7282328909454087239

/-! ## A269087.P3059493024132964488

`A269089(Δ[Δ[A006504(n+1)]])`
-/

namespace A269087.P3059493024132964488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (f1 (n + 1) - f1 n).toNat

end

end A269087.P3059493024132964488

/-!
# A269088: Number of nX7 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269088, there is no canonical definition to state claims against.
-/

/-! ## A269088.P2235237966835217602

`A269089(A374008(n+1))`
-/

namespace A269088.P2235237966835217602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A374008 (n + 1)).toNat

end

end A269088.P2235237966835217602

/-! ## A269088.P16837053023126361145

`A269089(eq[8, A131818(n+1)])`
-/

namespace A269088.P16837053023126361145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269088.P16837053023126361145

/-! ## A269088.P17529510525255499083

`A269089(A055999(n+4))`
-/

namespace A269088.P17529510525255499083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A055999 (n + 4)).toNat

end

end A269088.P17529510525255499083

/-! ## A269088.P3397271105366225732

`A269089(eq[6, A193592(n)])`
-/

namespace A269088.P3397271105366225732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269088.P3397271105366225732

/-! ## A269088.P3828851118609987908

`A269089(A056000(n+3)+4)`
-/

namespace A269088.P3828851118609987908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A056000 (n + 3) + 4).toNat

end

end A269088.P3828851118609987908

/-!
# A269089: T(n,k)=Number of nXk binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269089, there is no canonical definition to state claims against.
-/

/-! ## A269089.P16292441839623977648

`A000196(A223379(n+1)-5)`
-/

namespace A269089.P16292441839623977648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A223379 (n + 1) - 5).toNat

end

end A269089.P16292441839623977648

/-! ## A269089.P5474635630446013528

`A137734(A223379(n+1)-A047700(n+1))`
-/

namespace A269089.P5474635630446013528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A223379 (n + 1) - A047700 (n + 1)).toNat

end

end A269089.P5474635630446013528

/-! ## A269089.P9746927885220753880

`A137734(A223379(n+1)-A243078(n+1))`
-/

namespace A269089.P9746927885220753880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A223379 (n + 1) - A243078 (n + 1)).toNat

end

end A269089.P9746927885220753880

/-!
# A269090: Number of n X n 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269090, there is no canonical definition to state claims against.
-/

/-! ## A269090.P12050633315353449218

`A269097(∑[4*n]+1)`
-/

namespace A269090.P12050633315353449218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269090.P12050633315353449218

/-!
# A269091: Number of n X 2 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269091, there is no canonical definition to state claims against.
-/

/-! ## A269091.P514103680950748764

`A269097(∑[n+1]+2)`
-/

namespace A269091.P514103680950748764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269091.P514103680950748764

/-! ## A269091.P12419290512882071850

`record[A269097(n+2)/A008826(n+5)]`
-/

namespace A269091.P12419290512882071850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269097 (n + 2) : ℚ) / (A008826 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269091.P12419290512882071850

/-! ## A269091.P2021090238863297538

`A269214(∑[n+2])`
-/

namespace A269091.P2021090238863297538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269091.P2021090238863297538

/-! ## A269091.P13842864055865168074

`record[A054525(n+3)*A269214(n+2)]`
-/

namespace A269091.P13842864055865168074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 3) * A269214 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269091.P13842864055865168074

/-! ## A269091.P2094365388027634834

`record[A269214(n+2)/A297654(n+3)]`
-/

namespace A269091.P2094365388027634834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269214 (n + 2) : ℚ) / (A297654 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269091.P2094365388027634834

/-!
# A269092: Number of n X 3 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269092, there is no canonical definition to state claims against.
-/

/-! ## A269092.P13356546656772285055

`A269097(∑[n+2]+4)`
-/

namespace A269092.P13356546656772285055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269092.P13356546656772285055

/-! ## A269092.P4411284341023796152

`lcm(2, A269097(A167614(n+1)))`
-/

namespace A269092.P4411284341023796152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269097 (A167614 (n + 1)).toNat)

end

end A269092.P4411284341023796152

/-! ## A269092.P18251175315605849804

`A269097(A167614(n+1))+A034476(n+1)`
-/

namespace A269092.P18251175315605849804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A167614 (n + 1)).toNat + A034476 (n + 1)

end

end A269092.P18251175315605849804

/-! ## A269092.P8569618953483107051

`A269097(A167614(n+1))%A183733(n+1)`
-/

namespace A269092.P8569618953483107051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269097 (A167614 (n + 1)).toNat) (A183733 (n + 1))

end

end A269092.P8569618953483107051

/-! ## A269092.P17529655693654059994

`and(A174971(2*n+1), A269097(A167614(n+1)))`
-/

namespace A269092.P17529655693654059994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174971 (2 * n + 1)) (A269097 (A167614 (n + 1)).toNat)

end

end A269092.P17529655693654059994

/-!
# A269093: Number of nX4 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269093, there is no canonical definition to state claims against.
-/

/-! ## A269093.P7555269209430943090

`A269097(A374004(n+1))`
-/

namespace A269093.P7555269209430943090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A374004 (n + 1)).toNat

end

end A269093.P7555269209430943090

/-! ## A269093.P12440822370025034455

`A269097(A052905(n)+9)`
-/

namespace A269093.P12440822370025034455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A052905 n + 9).toNat

end

end A269093.P12440822370025034455

/-! ## A269093.P18166960287492360085

`A269097(A055999(n)+10)`
-/

namespace A269093.P18166960287492360085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A055999 n + 10).toNat

end

end A269093.P18166960287492360085

/-! ## A269093.P8088433725458804464

`A269097(Δ[A005586(n)]+5)`
-/

namespace A269093.P8088433725458804464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (f1 (n + 1) - f1 n + 5).toNat

end

end A269093.P8088433725458804464

/-! ## A269093.P14183688273522369662

`A269097(Δ[A008778(n)]+6)`
-/

namespace A269093.P14183688273522369662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (f1 (n + 1) - f1 n + 6).toNat

end

end A269093.P14183688273522369662

/-!
# A269094: Number of nX5 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269094, there is no canonical definition to state claims against.
-/

/-! ## A269094.P13468571598222097696

`A269097(A374005(n+1))`
-/

namespace A269094.P13468571598222097696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A374005 (n + 1)).toNat

end

end A269094.P13468571598222097696

/-! ## A269094.P18131208461529383564

`A269097(eq[6, A131818(n+1)])`
-/

namespace A269094.P18131208461529383564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269094.P18131208461529383564

/-! ## A269094.P7161365149950967599

`A269097(Δ[A264443(n)])`
-/

namespace A269094.P7161365149950967599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (f1 (n + 1) - f1 n).toNat

end

end A269094.P7161365149950967599

/-! ## A269094.P1221224982303264148

`A269097(A056115(n)+11)`
-/

namespace A269094.P1221224982303264148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A056115 n + 11).toNat

end

end A269094.P1221224982303264148

/-! ## A269094.P13405535940910464268

`A269097(eq[8, A140996(n)])`
-/

namespace A269094.P13405535940910464268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269094.P13405535940910464268

/-!
# A269095: Number of nX6 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269095, there is no canonical definition to state claims against.
-/

/-! ## A269095.P17629639597132716019

`A269097(A374007(n+1))`
-/

namespace A269095.P17629639597132716019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A374007 (n + 1)).toNat

end

end A269095.P17629639597132716019

/-! ## A269095.P13534451987607438807

`A269097(A166136(n+4))`
-/

namespace A269095.P13534451987607438807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A166136 (n + 4)).toNat

end

end A269095.P13534451987607438807

/-! ## A269095.P6483066224495615698

`A269097(eq[7, A131818(n+1)])`
-/

namespace A269095.P6483066224495615698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269095.P6483066224495615698

/-! ## A269095.P13831660085316049434

`A269097(A052905(n+3))`
-/

namespace A269095.P13831660085316049434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A052905 (n + 3)).toNat

end

end A269095.P13831660085316049434

/-! ## A269095.P12279342784150921213

`A269097(A055999(n+3)+1)`
-/

namespace A269095.P12279342784150921213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A055999 (n + 3) + 1).toNat

end

end A269095.P12279342784150921213

/-!
# A269096: Number of nX7 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269096, there is no canonical definition to state claims against.
-/

/-! ## A269096.P2437467168426333269

`A269097(A374008(n+1))`
-/

namespace A269096.P2437467168426333269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A374008 (n + 1)).toNat

end

end A269096.P2437467168426333269

/-! ## A269096.P5147728282001827413

`A269097(A056119(n)+28)`
-/

namespace A269096.P5147728282001827413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A056119 n + 28).toNat

end

end A269096.P5147728282001827413

/-! ## A269096.P3453646490327095314

`A269097(eq[8, A131818(n+1)])`
-/

namespace A269096.P3453646490327095314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269096.P3453646490327095314

/-! ## A269096.P13365090552974823707

`A269097(A055999(n+4))`
-/

namespace A269096.P13365090552974823707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A055999 (n + 4)).toNat

end

end A269096.P13365090552974823707

/-! ## A269096.P4527165322326901977

`A269097(eq[6, A193592(n)])`
-/

namespace A269096.P4527165322326901977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269096.P4527165322326901977

/-!
# A269097: T(n,k) = Number of n X k 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269097, there is no canonical definition to state claims against.
-/

/-! ## A269097.P15991351436150521980

`A269109(n+1)-4*A222444(n+1)`
-/

namespace A269097.P15991351436150521980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (n + 1) - 4 * A222444 (n + 1)

end

end A269097.P15991351436150521980

/-! ## A269097.P16364067662404917371

`A269109(n+1)-4*(2*A233018(n+1)-1)`
-/

namespace A269097.P16364067662404917371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (n + 1) - 4 * (2 * A233018 (n + 1) - 1)

end

end A269097.P16364067662404917371

/-! ## A269097.P11455063781742682130

`A269109(n+1)-A008574(A222444(n+1))`
-/

namespace A269097.P11455063781742682130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (n + 1) - A008574 (A222444 (n + 1)).toNat

end

end A269097.P11455063781742682130

/-! ## A269097.P16614004795289448917

`A001281(A028326(n)*A269186(n+1))`
-/

namespace A269097.P16614004795289448917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A028326 n * A269186 (n + 1)).toNat

end

end A269097.P16614004795289448917

/-! ## A269097.P9238380003152387168

`A007318(n)*A269186(A062399(n)+1)`
-/

namespace A269097.P9238380003152387168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A269186 (A062399 n + 1).toNat

end

end A269097.P9238380003152387168

/-!
# A269098: Expansion of (1 + 2*x + 3*x^2 + x^3 + x^5)/(1 - x^3)^2.

The programs for A269098, the canonical program `A269098.P12766708134586936198` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269098 has offset 0).

The definition of A269098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269098.P12766708134586936198

`gcd(3, n+1)+a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A269098

/-- `gcd(3, n+1)+a(n-3)+1` -/
def P12766708134586936198.Spec : Prop :=
  ∀ n, (P12766708134586936198.a n : ℤ) = A269098 n

theorem P12766708134586936198.correct : P12766708134586936198.Spec := by
  intro n
  simp only [A269098]

end A269098

/-! ## A269098.P2402399796384539852

`a(n-3)+(-1)^a(n-1)+3` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A269098.P2402399796384539852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) + ((-1 : ℝ) ^ (a (n - 1)) + 3)

end

end A269098.P2402399796384539852

namespace A269098

/-- `a(n-3)+(-1)^a(n-1)+3` -/
def P2402399796384539852.Spec : Prop :=
  ∀ n, P2402399796384539852.a n = (A269098 n : ℝ)

end A269098

/-! ## A269098.P17981942811923909023

`gcd(2, a(n-1))*A004396(n)+1` with `a(0)=1`
-/

namespace A269098.P17981942811923909023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.gcd 2 (a (n - 1)) : ℤ) * A004396 n + 1

end

end A269098.P17981942811923909023

namespace A269098

/-- `gcd(2, a(n-1))*A004396(n)+1` -/
def P17981942811923909023.Spec : Prop :=
  ∀ n, P17981942811923909023.a n = A269098 n

end A269098

/-! ## A269098.P14113402292910307779

`A332057(A080782(n+1))`
-/

namespace A269098.P14113402292910307779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332057 (A080782 (n + 1)).toNat

end

end A269098.P14113402292910307779

namespace A269098

/-- `A332057(A080782(n+1))` -/
def P14113402292910307779.Spec : Prop :=
  ∀ n, P14113402292910307779.a n = A269098 n

end A269098

/-! ## A269098.P2616727765891276989

`lcm(A004396(n), A132367(n))+1`
-/

namespace A269098.P2616727765891276989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004396 n) (A132367 n) + 1

end

end A269098.P2616727765891276989

namespace A269098

/-- `lcm(A004396(n), A132367(n))+1` -/
def P2616727765891276989.Spec : Prop :=
  ∀ n, (P2616727765891276989.a n : ℤ) = A269098 n

end A269098

/-! ## A269098.P9472430631181813744

`A226023(n)+1-A004396(n)²`
-/

namespace A269098.P9472430631181813744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 n + (1 - A004396 n ^ 2)

end

end A269098.P9472430631181813744

namespace A269098

/-- `A226023(n)+1-A004396(n)²` -/
def P9472430631181813744.Spec : Prop :=
  ∀ n, P9472430631181813744.a n = A269098 n

end A269098

/-! ## A269098.P4489601130010282446

`A226122(n-A011655(n))+A011655(n)`
-/

namespace A269098.P4489601130010282446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226122 ((n : ℤ) - A011655 n).toNat + A011655 n

end

end A269098.P4489601130010282446

namespace A269098

/-- `A226122(n-A011655(n))+A011655(n)` -/
def P4489601130010282446.Spec : Prop :=
  ∀ n, P4489601130010282446.a n = A269098 n

end A269098

/-! ## A269098.P11743864108436673715

`A087278(n+1)-A002264(n)²`
-/

namespace A269098.P11743864108436673715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 (n + 1) - A002264 n ^ 2

end

end A269098.P11743864108436673715

namespace A269098

/-- `A087278(n+1)-A002264(n)²` -/
def P11743864108436673715.Spec : Prop :=
  ∀ n, P11743864108436673715.a n = A269098 n

end A269098

/-! ## A269098.P7572676687167951812

`A133310(n)+A000447(n+1)%(n+1)`
-/

namespace A269098.P7572676687167951812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n + Int.tmod (A000447 (n + 1)) (n + 1 : ℤ)

end

end A269098.P7572676687167951812

namespace A269098

/-- `A133310(n)+A000447(n+1)%(n+1)` -/
def P7572676687167951812.Spec : Prop :=
  ∀ n, P7572676687167951812.a n = A269098 n

end A269098

/-! ## A269098.P13142742206815135766

`A186731(n+1)+A186731(n+1)-A049347(n+1)`
-/

namespace A269098.P13142742206815135766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (n + 1) + (A186731 (n + 1) - A049347 (n + 1))

end

end A269098.P13142742206815135766

namespace A269098

/-- `A186731(n+1)+A186731(n+1)-A049347(n+1)` -/
def P13142742206815135766.Spec : Prop :=
  ∀ n, P13142742206815135766.a n = A269098 n

end A269098

/-! ## A269098.P11218490234502919196

`A005131(n+2)+A004396(n)`
-/

namespace A269098.P11218490234502919196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (n + 2) + A004396 n

end

end A269098.P11218490234502919196

namespace A269098

/-- `A005131(n+2)+A004396(n)` -/
def P11218490234502919196.Spec : Prop :=
  ∀ n, P11218490234502919196.a n = A269098 n

end A269098

/-! ## A269098.P7070019130620043718

`A029579(ceil(4*n/3))`
-/

namespace A269098.P7070019130620043718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 ⌈4 * ((n : ℚ) / 3)⌉.toNat

end

end A269098.P7070019130620043718

namespace A269098

/-- `A029579(ceil(4*n/3))` -/
def P7070019130620043718.Spec : Prop :=
  ∀ n, P7070019130620043718.a n = A269098 n

end A269098

/-! ## A269098.P12550515002563473045

`A176743(A131452(n))`
-/

namespace A269098.P12550515002563473045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176743 (A131452 n).toNat

end

end A269098.P12550515002563473045

namespace A269098

/-- `A176743(A131452(n))` -/
def P12550515002563473045.Spec : Prop :=
  ∀ n, P12550515002563473045.a n = A269098 n

end A269098

/-! ## A269098.P13869752304824717393

`A026741(A131452(n)+2)`
-/

namespace A269098.P13869752304824717393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A131452 n + 2).toNat

end

end A269098.P13869752304824717393

namespace A269098

/-- `A026741(A131452(n)+2)` -/
def P13869752304824717393.Spec : Prop :=
  ∀ n, P13869752304824717393.a n = A269098 n

end A269098

/-! ## A269098.P13041357493079117030

`A029579(A004772(n+1))%(2*A000040(n+1))`
-/

namespace A269098.P13041357493079117030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029579 (A004772 (n + 1)).toNat) (2 * A000040 (n + 1))

end

end A269098.P13041357493079117030

namespace A269098

/-- `A029579(A004772(n+1))%(2*A000040(n+1))` -/
def P13041357493079117030.Spec : Prop :=
  ∀ n, P13041357493079117030.a n = A269098 n

end A269098

/-! ## A269098.P15706669132412633268

`A042965(n+2)-A057979(A042965(n+2))`
-/

namespace A269098.P15706669132412633268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2) - A057979 (A042965 (n + 2)).toNat

end

end A269098.P15706669132412633268

namespace A269098

/-- `A042965(n+2)-A057979(A042965(n+2))` -/
def P15706669132412633268.Spec : Prop :=
  ∀ n, P15706669132412633268.a n = A269098 n

end A269098

/-! ## A269098.P250880654340041585

`A160413(A318500(2*(n+1)))%A318500(2*(n+1))`
-/

namespace A269098.P250880654340041585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160413 (A318500 (2 * (n + 1))).toNat) (A318500 (2 * (n + 1)))

end

end A269098.P250880654340041585

namespace A269098

/-- `A160413(A318500(2*(n+1)))%A318500(2*(n+1))` -/
def P250880654340041585.Spec : Prop :=
  ∀ n, P250880654340041585.a n = A269098 n

end A269098

/-! ## A269098.P7959036459205644226

`A029578(A131452(n+3))-1`
-/

namespace A269098.P7959036459205644226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A131452 (n + 3)).toNat - 1

end

end A269098.P7959036459205644226

namespace A269098

/-- `A029578(A131452(n+3))-1` -/
def P7959036459205644226.Spec : Prop :=
  ∀ n, P7959036459205644226.a n = A269098 n

end A269098

/-! ## A269098.P5145352796602625965

`A004396(A222257(n)+1)`
-/

namespace A269098.P5145352796602625965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A222257 n + 1).toNat

end

end A269098.P5145352796602625965

namespace A269098

/-- `A004396(A222257(n)+1)` -/
def P5145352796602625965.Spec : Prop :=
  ∀ n, P5145352796602625965.a n = A269098 n

end A269098

/-! ## A269098.P11176305790924195382

`A222257(n)-A002264(A222257(n)-1)`
-/

namespace A269098.P11176305790924195382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 n - A002264 (A222257 n - 1).toNat

end

end A269098.P11176305790924195382

namespace A269098

/-- `A222257(n)-A002264(A222257(n)-1)` -/
def P11176305790924195382.Spec : Prop :=
  ∀ n, P11176305790924195382.a n = A269098 n

end A269098

/-!
# A269099: Numbers n with the property that if there is a number j with prime(n+i) + prime(n-i) = j for some i, then there are least two choices for i that give this value of j.

The programs for A269099, there is no canonical definition to state claims against.
-/

/-! ## A269099.P7384599355224127549

`lt[1, A178670(n+1)]+1`
-/

namespace A269099.P7384599355224127549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A269099.P7384599355224127549

/-! ## A269099.P10755914980137740790

`lt[1, A178670(A028310(n))]`
-/

namespace A269099.P10755914980137740790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A269099.P10755914980137740790

/-! ## A269099.P5877613674708497691

`lt[1, A178670(A000007(n)+n)]`
-/

namespace A269099.P5877613674708497691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A269099.P5877613674708497691

/-! ## A269099.P16674686621695425762

`eq[3, 3%A000040(A178670(n+1)+1)]+1`
-/

namespace A269099.P16674686621695425762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A000040 (A178670 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269099.P16674686621695425762

/-! ## A269099.P16217363556222676149

`lt[1, A178670(A233583(n+1))]`
-/

namespace A269099.P16217363556222676149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A269099.P16217363556222676149

