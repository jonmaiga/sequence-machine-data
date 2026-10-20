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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A199900: Number of -n..n arrays x(0..4) of 5 elements with zero sum, and adjacent elements not both strictly positive and not both strictly negative.

The programs for A199900, the canonical program `A199900.P2997908510760987283` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199900 has offset 1).

The definition of A199900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199900.P2997908510760987283

`11/12*(n+1)^4+49/6*(n+1)^3+193/12*(n+1)²+41/6*(n+1)+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199900

/-- `11/12*(n+1)^4+49/6*(n+1)^3+193/12*(n+1)²+41/6*(n+1)+1` -/
def P2997908510760987283.Spec : Prop :=
  ∀ n, P2997908510760987283.a n = (A199900 (n + 1) : ℚ)

end A199900

/-! ## A199900.P9540839506953591054

`A199898(A167499(n+3))`
-/

namespace A199900.P9540839506953591054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A167499 (n + 3)).toNat

end

end A199900.P9540839506953591054

namespace A199900

/-- `A199898(A167499(n+3))` -/
def P9540839506953591054.Spec : Prop :=
  ∀ n, P9540839506953591054.a n = A199900 (n + 1)

end A199900

/-! ## A199900.P12756675707709675211

`A199898(A155212(n)+13)`
-/

namespace A199900.P12756675707709675211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A155212 n + 13).toNat

end

end A199900.P12756675707709675211

namespace A199900

/-- `A199898(A155212(n)+13)` -/
def P12756675707709675211.Spec : Prop :=
  ∀ n, P12756675707709675211.a n = A199900 (n + 1)

end A199900

/-! ## A199900.P16250440395235831127

`A199898(A056000(n)+15)`
-/

namespace A199900.P16250440395235831127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A056000 n + 15).toNat

end

end A199900.P16250440395235831127

namespace A199900

/-- `A199898(A056000(n)+15)` -/
def P16250440395235831127.Spec : Prop :=
  ∀ n, P16250440395235831127.a n = A199900 (n + 1)

end A199900

/-! ## A199900.P4417132189035593408

`A199898(∑[A020705(n)]+11)`
-/

namespace A199900.P4417132189035593408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A199900.P4417132189035593408

namespace A199900

/-- `A199898(∑[A020705(n)]+11)` -/
def P4417132189035593408.Spec : Prop :=
  ∀ n, P4417132189035593408.a n = A199900 (n + 1)

end A199900

/-!
# A199901: Number of -n..n arrays x(0..5) of 6 elements with zero sum, and adjacent elements not both strictly positive and not both strictly negative.

The programs for A199901, there is no canonical definition to state claims against.
-/

/-! ## A199901.P9688903234105572086

`A199898(A167499(n+4)+1)`
-/

namespace A199901.P9688903234105572086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A167499 (n + 4) + 1).toNat

end

end A199901.P9688903234105572086

/-! ## A199901.P11147313215965276764

`A199898(A167487(n+4)-1)`
-/

namespace A199901.P11147313215965276764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A167487 (n + 4) - 1).toNat

end

end A199901.P11147313215965276764

/-! ## A199901.P8363052344446779351

`A199898(A000217(n+5)+6)`
-/

namespace A199901.P8363052344446779351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A000217 (n + 5) + 6).toNat

end

end A199901.P8363052344446779351

/-! ## A199901.P17116666410583860690

`A199898(Δ[A023551(n+2)]-(2*n+1))`
-/

namespace A199901.P17116666410583860690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A199901.P17116666410583860690

/-! ## A199901.P17431647568386007783

`A199898(A167614(n+1)+A008585(n+5))`
-/

namespace A199901.P17431647568386007783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A167614 (n + 1) + A008585 (n + 5)).toNat

end

end A199901.P17431647568386007783

/-!
# A199902: Number of -n..n arrays x(0..6) of 7 elements with zero sum, and adjacent elements not both strictly positive and not both strictly negative.

The programs for A199902, there is no canonical definition to state claims against.
-/

/-! ## A199902.P13375886460313373380

`A199898(A167487(n+5))`
-/

namespace A199902.P13375886460313373380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A167487 (n + 5)).toNat

end

end A199902.P13375886460313373380

/-! ## A199902.P13159099820527381159

`A199898(A167614(n+5)+4)`
-/

namespace A199902.P13159099820527381159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A167614 (n + 5) + 4).toNat

end

end A199902.P13159099820527381159

/-! ## A199902.P5467072084763898224

`A199898(A000217(n+6)+7)`
-/

namespace A199902.P5467072084763898224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A000217 (n + 6) + 7).toNat

end

end A199902.P5467072084763898224

/-! ## A199902.P5004609511426199455

`A199898(eq[6, A002262(n)]+1)`
-/

namespace A199902.P5004609511426199455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A199902.P5004609511426199455

/-! ## A199902.P12265114615592144697

`A199898(A000124(n+7)-(n+1))`
-/

namespace A199902.P12265114615592144697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A199902.P12265114615592144697

/-!
# A199903: Number of -2..2 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199903, there is no canonical definition to state claims against.
-/

/-! ## A199903.P14265064712169869991

`A199909(∑[n+2])`
-/

namespace A199903.P14265064712169869991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199903.P14265064712169869991

/-! ## A199903.P3300110777601736383

`record[gcd(A055137(n), A199909(n+1))]`
-/

namespace A199903.P3300110777601736383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055137 n) (A199909 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199903.P3300110777601736383

/-! ## A199903.P2625667990950413496

`record[A199909(A000096(A028920(n)))]`
-/

namespace A199903.P2625667990950413496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199903.P2625667990950413496

/-! ## A199903.P2862141997675764615

`record[A199909(A000096(A033930(n)))]`
-/

namespace A199903.P2862141997675764615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000096 (A033930 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199903.P2862141997675764615

/-! ## A199903.P8948301096667338356

`record[A199909(A000096(A023131(n+1)))]`
-/

namespace A199903.P8948301096667338356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000096 (A023131 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199903.P8948301096667338356

/-!
# A199904: Number of -3..3 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199904, there is no canonical definition to state claims against.
-/

/-! ## A199904.P16758710282849070879

`A199909(∑[n+3]+1)`
-/

namespace A199904.P16758710282849070879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199904.P16758710282849070879

/-! ## A199904.P8098542724508369759

`(2*(n+1)-(2*n+1))*A199909(Δ[A008778(n)])`
-/

namespace A199904.P8098542724508369759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - (2 * n + 1 : ℤ)) * A199909 (f1 (n + 1) - f1 n).toNat

end

end A199904.P8098542724508369759

/-! ## A199904.P6844100194346345764

`record[A199909(A034856(A020986(n)))]`
-/

namespace A199904.P6844100194346345764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A034856 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199904.P6844100194346345764

/-! ## A199904.P16250368158621473749

`A199909(Δ[A008778(n)])%A269490(n+1)`
-/

namespace A199904.P16250368158621473749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199909 (f1 (n + 1) - f1 n).toNat) (A269490 (n + 1))

end

end A199904.P16250368158621473749

/-! ## A199904.P5849287977102811592

`record[A199909(A198464(n+1))]`
-/

namespace A199904.P5849287977102811592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199904.P5849287977102811592

/-!
# A199905: Number of -4..4 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199905, there is no canonical definition to state claims against.
-/

/-! ## A199905.P16130153490316643782

`A199909(∑[n+3]+n+4)`
-/

namespace A199905.P16130153490316643782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A199905.P16130153490316643782

/-! ## A199905.P1072240213740778905

`A199909(Δ[A034857(n+1)])%Δ[7^n]`
-/

namespace A199905.P1072240213740778905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199909 (f1 (n + 1) - f1 n).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A199905.P1072240213740778905

/-! ## A199905.P8894521177107028668

`A009001(2*n)²*A199909(Δ[A034857(n+1)])`
-/

namespace A199905.P8894521177107028668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A199909 (f1 (n + 1) - f1 n).toNat

end

end A199905.P8894521177107028668

/-! ## A199905.P6268215540524423336

`A014963(12*(n+1))*A199909(Δ[A034857(n+1)])`
-/

namespace A199905.P6268215540524423336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A199909 (f1 (n + 1) - f1 n).toNat

end

end A199905.P6268215540524423336

/-! ## A199905.P4361950963516405071

`A199909(A055998(n+2))+A000038(A173740(n))`
-/

namespace A199905.P4361950963516405071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A055998 (n + 2)).toNat + A000038 (A173740 n).toNat

end

end A199905.P4361950963516405071

/-!
# A199906: Number of -5..5 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199906, there is no canonical definition to state claims against.
-/

/-! ## A199906.P896275060543938472

`A199909(A046691(n+3))`
-/

namespace A199906.P896275060543938472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A046691 (n + 3)).toNat

end

end A199906.P896275060543938472

/-! ## A199906.P1150561451543103056

`A199909(Δ[A023545(n+1)])`
-/

namespace A199906.P1150561451543103056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (f1 (n + 1) - f1 n).toNat

end

end A199906.P1150561451543103056

/-! ## A199906.P14594769254261701864

`A199909(A055999(n+2)+2)`
-/

namespace A199906.P14594769254261701864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A055999 (n + 2) + 2).toNat

end

end A199906.P14594769254261701864

/-! ## A199906.P4166074664605795948

`A199909(A027379(n+3)-1)`
-/

namespace A199906.P4166074664605795948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A027379 (n + 3) - 1).toNat

end

end A199906.P4166074664605795948

/-! ## A199906.P7391270013848686990

`A199909(Δ[A034857(n+2)]-1)`
-/

namespace A199906.P7391270013848686990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (f1 (n + 1) - f1 n - 1).toNat

end

end A199906.P7391270013848686990

/-!
# A199907: Number of -6..6 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199907, there is no canonical definition to state claims against.
-/

/-! ## A199907.P11376123219109223543

`A199909(A052905(n+3))`
-/

namespace A199907.P11376123219109223543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A052905 (n + 3)).toNat

end

end A199907.P11376123219109223543

/-! ## A199907.P7133928989473676866

`A199909(A046691(n+4)-1)`
-/

namespace A199907.P7133928989473676866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A046691 (n + 4) - 1).toNat

end

end A199907.P7133928989473676866

/-! ## A199907.P13130647798199546423

`A199909(A000124(n+6)-6)`
-/

namespace A199907.P13130647798199546423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000124 (n + 6) - 6).toNat

end

end A199907.P13130647798199546423

/-! ## A199907.P17532721345940893097

`A199909(Δ[A023545(n+2)]-1)`
-/

namespace A199907.P17532721345940893097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (f1 (n + 1) - f1 n - 1).toNat

end

end A199907.P17532721345940893097

/-! ## A199907.P10554401823363676057

`A199909(A000217(n+7)-(n+12))`
-/

namespace A199907.P10554401823363676057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000217 (n + 7) - (n + 12 : ℤ)).toNat

end

end A199907.P10554401823363676057

/-!
# A199908: Number of -7..7 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199908, there is no canonical definition to state claims against.
-/

/-! ## A199908.P4452495237361437461

`A199909(A055999(n+4))`
-/

namespace A199908.P4452495237361437461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A055999 (n + 4)).toNat

end

end A199908.P4452495237361437461

/-! ## A199908.P10575597127867471808

`A199909(A027379(n+5)-3)`
-/

namespace A199908.P10575597127867471808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A027379 (n + 5) - 3).toNat

end

end A199908.P10575597127867471808

/-! ## A199908.P6487998231699127044

`A199909(A000217(n+7)-6)`
-/

namespace A199908.P6487998231699127044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000217 (n + 7) - 6).toNat

end

end A199908.P6487998231699127044

/-! ## A199908.P4957819266188886487

`A199909(A000124(n+7)-7)`
-/

namespace A199908.P4957819266188886487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000124 (n + 7) - 7).toNat

end

end A199908.P4957819266188886487

/-! ## A199908.P2867896061096918972

`A199909(A133263(n+6)+n-1)`
-/

namespace A199908.P2867896061096918972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A199908.P2867896061096918972

/-!
# A199909: T(n,k)=Number of -k..k arrays x(0..n-1) of n elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199909, there is no canonical definition to state claims against.
-/

/-! ## A199909.P9950184807194206522

`A126305(A019538(n+1))*A308500(n)`
-/

namespace A199909.P9950184807194206522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 (A019538 (n + 1)).toNat * A308500 n

end

end A199909.P9950184807194206522

/-! ## A199909.P7822237724808584889

`A076984(A080786(n+1)^A205122(n+1))`
-/

namespace A199909.P7822237724808584889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (SequenceMachineLib.roundAway ((A080786 (n + 1) : ℚ) ^ (A205122 (n + 1) : ℤ))).toNat

end

end A199909.P7822237724808584889

/-!
# A199910: Number of -n..n arrays x(0..2) of 3 elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199910, the canonical program `A199910.P7269308452235231587` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199910 has offset 1).

The definition of A199910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199910.P7269308452235231587

`∑[∑[lcm(6, 1-n%3)]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199910

/-- `∑[∑[lcm(6, 1-n%3)]]` -/
def P7269308452235231587.Spec : Prop :=
  ∀ n, (P7269308452235231587.a n : ℤ) = A199910 (n + 1)

theorem P7269308452235231587.correct : P7269308452235231587.Spec := by
  intro n
  simp only [A199910, Nat.add_sub_cancel]

end A199910

/-! ## A199910.P4663827957439789916

`∑[6*ceil(Δ[n²]/3)]`
-/

namespace A199910.P4663827957439789916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌈((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199910.P4663827957439789916

namespace A199910

/-- `∑[6*ceil(Δ[n²]/3)]` -/
def P4663827957439789916.Spec : Prop :=
  ∀ n, P4663827957439789916.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P6053944716533235696

`6*∑[∑[(1-n)²%3]]`
-/

namespace A199910.P6053944716533235696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - (n : ℤ)) ^ 2) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199910.P6053944716533235696

namespace A199910

/-- `6*∑[∑[(1-n)²%3]]` -/
def P6053944716533235696.Spec : Prop :=
  ∀ n, P6053944716533235696.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P18329619138538345048

`6*∑[∑[1-∑[n]%3]]`
-/

namespace A199910.P18329619138538345048
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f3 j) % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199910.P18329619138538345048

namespace A199910

/-- `6*∑[∑[1-∑[n]%3]]` -/
def P18329619138538345048.Spec : Prop :=
  ∀ n, P18329619138538345048.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P2826520720696464741

`a(n-3)+12*n` with `a(0)=6, a(1)=12, a(2)=24`
-/

namespace A199910.P2826520720696464741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 12, 24] fun n a =>
  a (n - 3) + 12 * n

end

end A199910.P2826520720696464741

namespace A199910

/-- `a(n-3)+12*n` -/
def P2826520720696464741.Spec : Prop :=
  ∀ n, (P2826520720696464741.a n : ℤ) = A199910 (n + 1)

end A199910

/-! ## A199910.P3833223566434768837

`6*ceil((n+3)/(3*acot(n)))`
-/

namespace A199910.P3833223566434768837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌈(n + 3 : ℝ) / (3 * SequenceMachineLib.acot (n : ℝ))⌉

end

end A199910.P3833223566434768837

namespace A199910

/-- `6*ceil((n+3)/(3*acot(n)))` -/
def P3833223566434768837.Spec : Prop :=
  ∀ n, P3833223566434768837.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P15688236066062939011

`6*ceil(2/3*C(n+2, 2))`
-/

namespace A199910.P15688236066062939011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌈(2 : ℚ) / 3 * (Nat.choose (n + 2) 2 : ℚ)⌉

end

end A199910.P15688236066062939011

namespace A199910

/-- `6*ceil(2/3*C(n+2, 2))` -/
def P15688236066062939011.Spec : Prop :=
  ∀ n, P15688236066062939011.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P11497290574188026256

`6*round(2/3*C(n+2, 2))`
-/

namespace A199910.P11497290574188026256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (Nat.choose (n + 2) 2 : ℚ))

end

end A199910.P11497290574188026256

namespace A199910

/-- `6*round(2/3*C(n+2, 2))` -/
def P11497290574188026256.Spec : Prop :=
  ∀ n, P11497290574188026256.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P11669228733327361676

`3*∑[∑[floor(a(n-3))]]` with `a(0)=2, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A199910.P11669228733327361676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199910.P11669228733327361676

namespace A199910

/-- `3*∑[∑[floor(a(n-3))]]` -/
def P11669228733327361676.Spec : Prop :=
  ∀ n, (P11669228733327361676.a n : ℤ) = A199910 (n + 1)

end A199910

/-! ## A199910.P4316650189932875446

`3*∑[∑[ceil(a(n-3))]]` with `a(0)=2, a(1)=0, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A199910.P4316650189932875446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199910.P4316650189932875446

namespace A199910

/-- `3*∑[∑[ceil(a(n-3))]]` -/
def P4316650189932875446.Spec : Prop :=
  ∀ n, (P4316650189932875446.a n : ℤ) = A199910 (n + 1)

end A199910

/-! ## A199910.P10156256587767794179

`6*ceil(cot(3/∑[2*(n+1)]))`
-/

namespace A199910.P10156256587767794179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌈Real.cot (3 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ)⌉

end

end A199910.P10156256587767794179

namespace A199910

/-- `6*ceil(cot(3/∑[2*(n+1)]))` -/
def P10156256587767794179.Spec : Prop :=
  ∀ n, P10156256587767794179.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P15240524282734059667

`6*record[floor(((2-n)²+n)/3)]`
-/

namespace A199910.P15240524282734059667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 - (n : ℤ)) ^ 2 + (n : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199910.P15240524282734059667

namespace A199910

/-- `6*record[floor(((2-n)²+n)/3)]` -/
def P15240524282734059667.Spec : Prop :=
  ∀ n, P15240524282734059667.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P12485303772009994237

`6*floor((record[(n-2)²]-n)/3)`
-/

namespace A199910.P12485303772009994237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ) : ℚ) / 3⌋

end

end A199910.P12485303772009994237

namespace A199910

/-- `6*floor((record[(n-2)²]-n)/3)` -/
def P12485303772009994237.Spec : Prop :=
  ∀ n, P12485303772009994237.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P6974237315006861757

`6*round(record[n²/3-(n-1)])`
-/

namespace A199910.P6974237315006861757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 3 - ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A199910.P6974237315006861757

namespace A199910

/-- `6*round(record[n²/3-(n-1)])` -/
def P6974237315006861757.Spec : Prop :=
  ∀ n, P6974237315006861757.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P110520625468032573

`6*round((n+1)/sin(3/(n+2)))`
-/

namespace A199910.P110520625468032573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.sin (3 / (n + 2 : ℚ) : ℝ))

end

end A199910.P110520625468032573

namespace A199910

/-- `6*round((n+1)/sin(3/(n+2)))` -/
def P110520625468032573.Spec : Prop :=
  ∀ n, P110520625468032573.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P14543913187554247241

`6*floor((n+1)/tanh(3/(n+2)))`
-/

namespace A199910.P14543913187554247241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(n + 1 : ℝ) / Real.tanh (3 / (n + 2 : ℚ) : ℝ)⌋

end

end A199910.P14543913187554247241

namespace A199910

/-- `6*floor((n+1)/tanh(3/(n+2)))` -/
def P14543913187554247241.Spec : Prop :=
  ∀ n, P14543913187554247241.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P7770854283230217552

`2*∑[∑[∑[ogf((3+3x^2)/(1+x+x^2))]]]`
-/

namespace A199910.P7770854283230217552
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 3] [1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199910.P7770854283230217552

namespace A199910

/-- `2*∑[∑[∑[ogf((3+3x^2)/(1+x+x^2))]]]` -/
def P7770854283230217552.Spec : Prop :=
  ∀ n, P7770854283230217552.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P13841250882236196249

`record[6*round((xor(1, n)/2+1)²/3)]`
-/

namespace A199910.P13841250882236196249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.roundAway (((Nat.xor 1 n : ℚ) / 2 + 1) ^ 2 / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199910.P13841250882236196249

namespace A199910

/-- `record[6*round((xor(1, n)/2+1)²/3)]` -/
def P13841250882236196249.Spec : Prop :=
  ∀ n, P13841250882236196249.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P15598255116714821290

`(2*n+1)*(n+3)+gcd(3, n)-n`
-/

namespace A199910.P15598255116714821290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 3) : ℤ) + ((Nat.gcd 3 n : ℤ) - (n : ℤ))

end

end A199910.P15598255116714821290

namespace A199910

/-- `(2*n+1)*(n+3)+gcd(3, n)-n` -/
def P15598255116714821290.Spec : Prop :=
  ∀ n, P15598255116714821290.a n = A199910 (n + 1)

end A199910

/-! ## A199910.P15298249204577189723

`6*A007980(n)`
-/

namespace A199910.P15298249204577189723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007980 n

end

end A199910.P15298249204577189723

namespace A199910

/-- `6*A007980(n)` -/
def P15298249204577189723.Spec : Prop :=
  ∀ n, P15298249204577189723.a n = A199910 (n + 1)

end A199910

/-!
# A199911: Number of -n..n arrays x(0..3) of 4 elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199911, there is no canonical definition to state claims against.
-/

/-! ## A199911.P16569406442838888678

`A199909(A055999(n)+10)`
-/

namespace A199911.P16569406442838888678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A055999 n + 10).toNat

end

end A199911.P16569406442838888678

/-! ## A199911.P3925271149269914107

`A199909(Δ[A008778(n)]+6)`
-/

namespace A199911.P3925271149269914107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (f1 (n + 1) - f1 n + 6).toNat

end

end A199911.P3925271149269914107

/-! ## A199911.P8281354614544842865

`A199909(A167614(n+2)+1)`
-/

namespace A199911.P8281354614544842865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A167614 (n + 2) + 1).toNat

end

end A199911.P8281354614544842865

/-! ## A199911.P1651445577399299231

`A199909(A166136(n+2)-2)`
-/

namespace A199911.P1651445577399299231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A166136 (n + 2) - 2).toNat

end

end A199911.P1651445577399299231

/-! ## A199911.P3759290940203641605

`A199909(A000124(n+3)+3)`
-/

namespace A199911.P3759290940203641605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000124 (n + 3) + 3).toNat

end

end A199911.P3759290940203641605

/-!
# A199912: Number of -n..n arrays x(0..4) of 5 elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199912, there is no canonical definition to state claims against.
-/

/-! ## A199912.P2015949330125277512

`A199909(A167499(n+3))`
-/

namespace A199912.P2015949330125277512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A167499 (n + 3)).toNat

end

end A199912.P2015949330125277512

/-! ## A199912.P6768858890293240874

`A199909(A167614(n+3)+2)`
-/

namespace A199912.P6768858890293240874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A167614 (n + 3) + 2).toNat

end

end A199912.P6768858890293240874

/-! ## A199912.P10886571963242069578

`A199909(A000217(n+4)+5)`
-/

namespace A199912.P10886571963242069578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000217 (n + 4) + 5).toNat

end

end A199912.P10886571963242069578

/-! ## A199912.P2931859032405787402

`A199909(A055998(n+2)+8)`
-/

namespace A199912.P2931859032405787402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A055998 (n + 2) + 8).toNat

end

end A199912.P2931859032405787402

/-! ## A199912.P17216010051909746188

`A199909(A052905(n+1)+10)`
-/

namespace A199912.P17216010051909746188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A052905 (n + 1) + 10).toNat

end

end A199912.P17216010051909746188

/-!
# A199913: Number of -n..n arrays x(0..5) of 6 elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199913, there is no canonical definition to state claims against.
-/

/-! ## A199913.P7316664550234923659

`A199909(A166136(n+4))`
-/

namespace A199913.P7316664550234923659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A166136 (n + 4)).toNat

end

end A199913.P7316664550234923659

/-! ## A199913.P12013884452788736744

`A199909(A167499(n+4)+1)`
-/

namespace A199913.P12013884452788736744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A167499 (n + 4) + 1).toNat

end

end A199913.P12013884452788736744

/-! ## A199913.P4436453058842588016

`A199909(A000217(n+5)+6)`
-/

namespace A199913.P4436453058842588016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000217 (n + 5) + 6).toNat

end

end A199913.P4436453058842588016

/-! ## A199913.P12774263038217713163

`A199909(A000124(n+6)-(n+1))`
-/

namespace A199913.P12774263038217713163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A199913.P12774263038217713163

/-! ## A199913.P17144100581974378351

`A199909(A052905(n)+A005843(n+10))`
-/

namespace A199913.P17144100581974378351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A052905 n + A005843 (n + 10)).toNat

end

end A199913.P17144100581974378351

/-!
# A199914: Number of -n..n arrays x(0..6) of 7 elements with zero sum, and adjacent elements not equal modulo three (with -1 modulo 3 = 2).

The programs for A199914, there is no canonical definition to state claims against.
-/

/-! ## A199914.P17574571874175080545

`A199909(A167499(n+5)+2)`
-/

namespace A199914.P17574571874175080545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A167499 (n + 5) + 2).toNat

end

end A199914.P17574571874175080545

/-! ## A199914.P16494582401531473652

`A199909(A000124(n+6)+6)`
-/

namespace A199914.P16494582401531473652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000124 (n + 6) + 6).toNat

end

end A199914.P16494582401531473652

/-! ## A199914.P11071189413728276231

`A199909(A000217(n+6)+7)`
-/

namespace A199914.P11071189413728276231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A000217 (n + 6) + 7).toNat

end

end A199914.P11071189413728276231

/-! ## A199914.P10643276320735855114

`A199909(A052905(n+8)-A016885(n+6))`
-/

namespace A199914.P10643276320735855114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (A052905 (n + 8) - A016885 (n + 6)).toNat

end

end A199914.P10643276320735855114

/-!
# A199916: Triangle T(n,k) = coefficient of x^n in expansion of ((2-2*cos(x))/x)^k = Sum_{n>=k} T(n,k) * x^n * (2*k)!/(n+k)!.

The programs for A199916, there is no canonical definition to state claims against.
-/

/-! ## A199916.P7107860622919855826

`A060081(n)%A167132(A123438(n+1))`
-/

namespace A199916.P7107860622919855826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060081 n) (A167132 (A123438 (n + 1)).toNat)

end

end A199916.P7107860622919855826

/-! ## A199916.P16906930671471819343

`A060081(A184955(A003188(n))+n)`
-/

namespace A199916.P16906930671471819343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060081 (A184955 (A003188 n).toNat + (n : ℤ)).toNat

end

end A199916.P16906930671471819343

/-! ## A199916.P14409592470243196417

`A060081(n)-A184955(A003188(n))`
-/

namespace A199916.P14409592470243196417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060081 n - A184955 (A003188 n).toNat

end

end A199916.P14409592470243196417

/-! ## A199916.P861853338315703548

`A060081(n)^A060523(A060523(n))`
-/

namespace A199916.P861853338315703548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060081 n : ℚ) ^ (A060523 (A060523 n).toNat : ℤ)

end

end A199916.P861853338315703548

/-! ## A199916.P17342986447246109146

`A060081(n)%A120829(A048004(n))`
-/

namespace A199916.P17342986447246109146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060081 n) (A120829 (A048004 n).toNat)

end

end A199916.P17342986447246109146

/-!
# A199918: Expansion of false theta series variation of Euler's pentagonal number series in powers of x.

The programs for A199918, the canonical program `A199918.P12463137671005930238` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199918 has offset 0).

The definition of A199918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199918.P12463137671005930238

`A178902(n)%2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A199918

/-- `A178902(n)%2` -/
def P12463137671005930238.Spec : Prop :=
  ∀ n, P12463137671005930238.a n = A199918 n

theorem P12463137671005930238.correct : P12463137671005930238.Spec := by
  intro n
  simp only [A199918]

end A199918

/-! ## A199918.P17296135157289635167

`(A033999(n)*A080332(n))%2`
-/

namespace A199918.P17296135157289635167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033999 n * A080332 n) 2

end

end A199918.P17296135157289635167

namespace A199918

/-- `(A033999(n)*A080332(n))%2` -/
def P17296135157289635167.Spec : Prop :=
  ∀ n, P17296135157289635167.a n = A199918 n

end A199918

/-! ## A199918.P14913118787839771687

`(A010815(n)*A133079(n))%2`
-/

namespace A199918.P14913118787839771687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010815 n * A133079 n) 2

end

end A199918.P14913118787839771687

namespace A199918

/-- `(A010815(n)*A133079(n))%2` -/
def P14913118787839771687.Spec : Prop :=
  ∀ n, P14913118787839771687.a n = A199918 n

end A199918

/-! ## A199918.P14658342715771851187

`A033999(A342639(3*n))*A121373(n)`
-/

namespace A199918.P14658342715771851187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A342639 (3 * n)).toNat * A121373 n

end

end A199918.P14658342715771851187

namespace A199918

/-- `A033999(A342639(3*n))*A121373(n)` -/
def P14658342715771851187.Spec : Prop :=
  ∀ n, P14658342715771851187.a n = A199918 n

end A199918

/-! ## A199918.P6165581976494289045

`A010815(n)*A117568(A008585(n))`
-/

namespace A199918.P6165581976494289045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A117568 (A008585 n).toNat

end

end A199918.P6165581976494289045

namespace A199918

/-- `A010815(n)*A117568(A008585(n))` -/
def P6165581976494289045.Spec : Prop :=
  ∀ n, P6165581976494289045.a n = A199918 n

end A199918

/-! ## A199918.P5156924715295333573

`A033999(n)*A143062(n)`
-/

namespace A199918.P5156924715295333573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A143062 n

end

end A199918.P5156924715295333573

namespace A199918

/-- `A033999(n)*A143062(n)` -/
def P5156924715295333573.Spec : Prop :=
  ∀ n, P5156924715295333573.a n = A199918 n

end A199918

/-! ## A199918.P16801874658769614951

`A133985(n)*A143062(n)`
-/

namespace A199918.P16801874658769614951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 n * A143062 n

end

end A199918.P16801874658769614951

namespace A199918

/-- `A133985(n)*A143062(n)` -/
def P16801874658769614951.Spec : Prop :=
  ∀ n, P16801874658769614951.a n = A199918 n

end A199918

/-! ## A199918.P2202481168778313094

`A010815(n)*A121373(n)*A143062(n)`
-/

namespace A199918.P2202481168778313094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A121373 n * A143062 n

end

end A199918.P2202481168778313094

namespace A199918

/-- `A010815(n)*A121373(n)*A143062(n)` -/
def P2202481168778313094.Spec : Prop :=
  ∀ n, P2202481168778313094.a n = A199918 n

end A199918

/-! ## A199918.P4001559454602148358

`A010815(A026838(val(n+1, 2)+1))*A143062(n)`
-/

namespace A199918.P4001559454602148358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A026838 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat * A143062 n

end

end A199918.P4001559454602148358

namespace A199918

/-- `A010815(A026838(val(n+1, 2)+1))*A143062(n)` -/
def P4001559454602148358.Spec : Prop :=
  ∀ n, P4001559454602148358.a n = A199918 n

end A199918

/-! ## A199918.P8523443673185384164

`A010815(A000326(n))*A143062(n)`
-/

namespace A199918.P8523443673185384164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A000326 n).toNat * A143062 n

end

end A199918.P8523443673185384164

namespace A199918

/-- `A010815(A000326(n))*A143062(n)` -/
def P8523443673185384164.Spec : Prop :=
  ∀ n, P8523443673185384164.a n = A199918 n

end A199918

/-!
# A199920: Number of ways to write n = p+k with p, p+6, 6k-1 and 6k+1 all prime.

The programs for A199920, there is no canonical definition to state claims against.
-/

/-! ## A199920.P8269341673701519167

`A306433(n)%A258056(A080616(n))`
-/

namespace A199920.P8269341673701519167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306433 n) (A258056 (A080616 n).toNat)

end

end A199920.P8269341673701519167

/-! ## A199920.P14877910610210000951

`and(A064570(A064651(n)), A306433(n))`
-/

namespace A199920.P14877910610210000951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064570 (A064651 n).toNat) (A306433 n)

end

end A199920.P14877910610210000951

/-! ## A199920.P12100180888577969679

`A066520(A117144(n)^A001055(n+1))`
-/

namespace A199920.P12100180888577969679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (SequenceMachineLib.roundAway ((A117144 n : ℚ) ^ (A001055 (n + 1) : ℤ))).toNat

end

end A199920.P12100180888577969679

/-! ## A199920.P2788645590700692508

`A077196(A046156(n+2))%A053262(n)`
-/

namespace A199920.P2788645590700692508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077196 (A046156 (n + 2)).toNat) (A053262 n)

end

end A199920.P2788645590700692508

/-! ## A199920.P1803508853053437492

`and(A306433(n), A325770(A372329(n+1)))`
-/

namespace A199920.P1803508853053437492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A306433 n) (A325770 (A372329 (n + 1)).toNat)

end

end A199920.P1803508853053437492

/-!
# A199922: Table read by rows, T(0,0) = 1 and for n>0, 0<=k<=3^(n-1) T(n,k) = gcd(k,3^(n-1)).

The programs for A199922, there is no canonical definition to state claims against.
-/

/-! ## A199922.P147057512500352391

`gcd(9, A186422(A029988(n+1)))`
-/

namespace A199922.P147057512500352391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A186422 (A029988 (n + 1)).toNat)

end

end A199922.P147057512500352391

/-! ## A199922.P2336846036836083562

`gcd(A140303(n), A336988(3*n+5))`
-/

namespace A199922.P2336846036836083562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140303 n) (A336988 (3 * n + 5))

end

end A199922.P2336846036836083562

/-! ## A199922.P4871181511835523149

`A038500(A038754(n)-A039265(n+1))`
-/

namespace A199922.P4871181511835523149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A038754 n - A039265 (n + 1)).toNat

end

end A199922.P4871181511835523149

/-! ## A199922.P10288033002193907915

`A038500(A038754(n)-A103681(n+1))`
-/

namespace A199922.P10288033002193907915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A038754 n - A103681 (n + 1)).toNat

end

end A199922.P10288033002193907915

/-! ## A199922.P1013157712807123723

`gcd(A081585(A045931(3*n+2)), A284067(n+2))`
-/

namespace A199922.P1013157712807123723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081585 (A045931 (3 * n + 2)).toNat) (A284067 (n + 2))

end

end A199922.P1013157712807123723

/-!
# A199923: a(n) = Sum_{k=0..3^(n-1)} gcd(k,3^(n-1)) for n > 0 and a(0) = 1.

The programs for A199923, the canonical program `A199923.P3869690197191336878` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199923 has offset 0).

The definition of A199923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199923.P9497337048874343343

`ogf((1-4x+5x^2)/(1-6x+9x^2))`
-/

namespace A199923.P9497337048874343343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 5] [1, -6, 9] n

end

end A199923.P9497337048874343343

namespace A199923

/-- `ogf((1-4x+5x^2)/(1-6x+9x^2))` -/
def P9497337048874343343.Spec : Prop :=
  ∀ n, P9497337048874343343.a n = A199923 n

end A199923

/-! ## A199923.P3869690197191336878

`ceil((n+2)*Δ[3^(n-2)])`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199923

/-- `ceil((n+2)*Δ[3^(n-2)])` -/
def P3869690197191336878.Spec : Prop :=
  ∀ n, P3869690197191336878.a n = A199923 n

theorem P3869690197191336878.correct : P3869690197191336878.Spec := by
  intro n
  simp only [A199923]

end A199923

/-! ## A199923.P16083709297406478299

`3*a(n-1)*ratio[n+1]` with `a(0)=1, a(1)=2`
-/

namespace A199923.P16083709297406478299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A199923.P16083709297406478299

namespace A199923

/-- `3*a(n-1)*ratio[n+1]` -/
def P16083709297406478299.Spec : Prop :=
  ∀ n, P16083709297406478299.a n = (A199923 n : ℚ)

end A199923

/-! ## A199923.P17365395841967080931

`(3/(n+1)+3)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A199923.P17365395841967080931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 / (n + 1 : ℚ) + 3) * a (n - 1)

end

end A199923.P17365395841967080931

namespace A199923

/-- `(3/(n+1)+3)*a(n-1)` -/
def P17365395841967080931.Spec : Prop :=
  ∀ n, P17365395841967080931.a n = (A199923 n : ℚ)

end A199923

/-! ## A199923.P15609205495836335825

`A025192(n)+2*A027471(A028310(n))`
-/

namespace A199923.P15609205495836335825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n + 2 * A027471 (A028310 n).toNat

end

end A199923.P15609205495836335825

namespace A199923

/-- `A025192(n)+2*A027471(A028310(n))` -/
def P15609205495836335825.Spec : Prop :=
  ∀ n, P15609205495836335825.a n = A199923 n

end A199923

/-! ## A199923.P12628372017354775139

`round(A120926(n+1)/2)`
-/

namespace A199923.P12628372017354775139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A120926 (n + 1) : ℚ) / 2)

end

end A199923.P12628372017354775139

namespace A199923

/-- `round(A120926(n+1)/2)` -/
def P12628372017354775139.Spec : Prop :=
  ∀ n, P12628372017354775139.a n = A199923 n

end A199923

/-! ## A199923.P12067031075421860999

`ceil((n+2)*4*3^(n-2))/A000032(C(2, n+2))`
-/

namespace A199923.P12067031075421860999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(n + 2 : ℚ) * (4 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))⌉ : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A199923.P12067031075421860999

namespace A199923

/-- `ceil((n+2)*4*3^(n-2))/A000032(C(2, n+2))` -/
def P12067031075421860999.Spec : Prop :=
  ∀ n, P12067031075421860999.a n = (A199923 n : ℚ)

end A199923

/-! ## A199923.P2435687262456424538

`A120926(n+1)/A036453(n+1)`
-/

namespace A199923.P2435687262456424538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120926 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A199923.P2435687262456424538

namespace A199923

/-- `A120926(n+1)/A036453(n+1)` -/
def P2435687262456424538.Spec : Prop :=
  ∀ n, P2435687262456424538.a n = (A199923 n : ℚ)

end A199923

/-! ## A199923.P3318236301292890684

`A167682(n)-2*A027471(n+1)`
-/

namespace A199923.P3318236301292890684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167682 n - 2 * A027471 (n + 1)

end

end A199923.P3318236301292890684

namespace A199923

/-- `A167682(n)-2*A027471(n+1)` -/
def P3318236301292890684.Spec : Prop :=
  ∀ n, P3318236301292890684.a n = A199923 n

end A199923

/-! ## A199923.P4563302892777799728

`gcd(A120926(n+1), A159715(n+2))`
-/

namespace A199923.P4563302892777799728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120926 (n + 1)) (A159715 (n + 2))

end

end A199923.P4563302892777799728

namespace A199923

/-- `gcd(A120926(n+1), A159715(n+2))` -/
def P4563302892777799728.Spec : Prop :=
  ∀ n, (P4563302892777799728.a n : ℤ) = A199923 n

end A199923

/-! ## A199923.P6863015418991222505

`2/A157532(n+1)²*A288834(n+1)`
-/

namespace A199923.P6863015418991222505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A157532 (n + 1) ^ 2 : ℚ) * (A288834 (n + 1) : ℚ)

end

end A199923.P6863015418991222505

namespace A199923

/-- `2/A157532(n+1)²*A288834(n+1)` -/
def P6863015418991222505.Spec : Prop :=
  ∀ n, P6863015418991222505.a n = (A199923 n : ℚ)

end A199923

/-! ## A199923.P15193008881506503605

`A064017(n+1)/A027471(n+2)*A027261(n)`
-/

namespace A199923.P15193008881506503605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064017 (n + 1) : ℚ) / (A027471 (n + 2) : ℚ) * (A027261 n : ℚ)

end

end A199923.P15193008881506503605

namespace A199923

/-- `A064017(n+1)/A027471(n+2)*A027261(n)` -/
def P15193008881506503605.Spec : Prop :=
  ∀ n, P15193008881506503605.a n = (A199923 n : ℚ)

end A199923

/-! ## A199923.P2741033395592613397

`round(cosh(log(ceil(4*(n+2)*3^(n-2)))))`
-/

namespace A199923.P2741033395592613397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (⌈4 * ((n + 2 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))⌉ : ℝ)))

end

end A199923.P2741033395592613397

namespace A199923

/-- `round(cosh(log(ceil(4*(n+2)*3^(n-2)))))` -/
def P2741033395592613397.Spec : Prop :=
  ∀ n, P2741033395592613397.a n = A199923 n

end A199923

/-! ## A199923.P13002141164600075472

`A193731(∑[n]+1)`
-/

namespace A199923.P13002141164600075472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193731 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199923.P13002141164600075472

namespace A199923

/-- `A193731(∑[n]+1)` -/
def P13002141164600075472.Spec : Prop :=
  ∀ n, P13002141164600075472.a n = A199923 n

end A199923

/-! ## A199923.P3592957797237716616

`A209998(A212342(n+1))`
-/

namespace A199923.P3592957797237716616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209998 (A212342 (n + 1)).toNat

end

end A199923.P3592957797237716616

namespace A199923

/-- `A209998(A212342(n+1))` -/
def P3592957797237716616.Spec : Prop :=
  ∀ n, P3592957797237716616.a n = A199923 n

end A199923

/-! ## A199923.P4456307556696752311

`A209998(A347553(n+3))`
-/

namespace A199923.P4456307556696752311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209998 (A347553 (n + 3)).toNat

end

end A199923.P4456307556696752311

namespace A199923

/-- `A209998(A347553(n+3))` -/
def P4456307556696752311.Spec : Prop :=
  ∀ n, P4456307556696752311.a n = A199923 n

end A199923

/-!
# A199925: Number of sequences of n coin flips that win on the last flip, if the sequence of flips ends with (0,0,1,1).

The programs for A199925, the canonical program `A199925.P3948976962439719299` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199925 has offset 1).

The definition of A199925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199925.P3948976962439719299

`a(n-1)+a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=4, a(6)=8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199925

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-5)` -/
def P3948976962439719299.Spec : Prop :=
  ∀ n, P3948976962439719299.a n = A199925 (n + 1)

theorem P3948976962439719299.correct : P3948976962439719299.Spec := by
  intro n
  simp only [A199925, Nat.add_sub_cancel]

end A199925

/-! ## A199925.P6643149381650210814

`∑[A199926(A178915(n+2))]`
-/

namespace A199925.P6643149381650210814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199926 (A178915 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199925.P6643149381650210814

namespace A199925

/-- `∑[A199926(A178915(n+2))]` -/
def P6643149381650210814.Spec : Prop :=
  ∀ n, P6643149381650210814.a n = A199925 (n + 1)

end A199925

/-! ## A199925.P17753284381569105345

`A199594(n+1)-A199926(n+1)`
-/

namespace A199925.P17753284381569105345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199594 (n + 1) - A199926 (n + 1)

end

end A199925.P17753284381569105345

namespace A199925

/-- `A199594(n+1)-A199926(n+1)` -/
def P17753284381569105345.Spec : Prop :=
  ∀ n, P17753284381569105345.a n = A199925 (n + 1)

end A199925

/-! ## A199925.P17351962702617746463

`∑[A199926(n+2)%A199926(n+4)]`
-/

namespace A199925.P17351962702617746463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199926 (n + 2)) (A199926 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199925.P17351962702617746463

namespace A199925

/-- `∑[A199926(n+2)%A199926(n+4)]` -/
def P17351962702617746463.Spec : Prop :=
  ∀ n, P17351962702617746463.a n = A199925 (n + 1)

end A199925

/-! ## A199925.P15073666592141719325

`A164388(n)-(A199926(n+1)+Δ[A164388(n)])`
-/

namespace A199925.P15073666592141719325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164388 n - (A199926 (n + 1) + (f1 (n + 1) - f1 n))

end

end A199925.P15073666592141719325

namespace A199925

/-- `A164388(n)-(A199926(n+1)+Δ[A164388(n)])` -/
def P15073666592141719325.Spec : Prop :=
  ∀ n, P15073666592141719325.a n = A199925 (n + 1)

end A199925

/-! ## A199925.P14060674323725846154

`(A199594(n+1)+A164388(n))%(A199926(n+1)+A164388(n))`
-/

namespace A199925.P14060674323725846154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199594 (n + 1) + A164388 n) (A199926 (n + 1) + A164388 n)

end

end A199925.P14060674323725846154

namespace A199925

/-- `(A199594(n+1)+A164388(n))%(A199926(n+1)+A164388(n))` -/
def P14060674323725846154.Spec : Prop :=
  ∀ n, P14060674323725846154.a n = A199925 (n + 1)

end A199925

/-!
# A199926: Number of sequences of n coin flips that win on the last flip, if the sequence of flips ends with (1,1,1,1).

The programs for A199926, the canonical program `A199926.P10577205192085687902` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199926 has offset 1).

The definition of A199926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199926.P10577205192085687902

`a(n-1)+a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199926

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-5)` -/
def P10577205192085687902.Spec : Prop :=
  ∀ n, P10577205192085687902.a n = A199926 (n + 1)

theorem P10577205192085687902.correct : P10577205192085687902.Spec := by
  intro n
  simp only [A199926, Nat.add_sub_cancel]

end A199926

/-! ## A199926.P10307050144127520087

`A199594(n+1)-A199925(n+1)`
-/

namespace A199926.P10307050144127520087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199594 (n + 1) - A199925 (n + 1)

end

end A199926.P10307050144127520087

namespace A199926

/-- `A199594(n+1)-A199925(n+1)` -/
def P10307050144127520087.Spec : Prop :=
  ∀ n, P10307050144127520087.a n = A199926 (n + 1)

end A199926

/-! ## A199926.P13344714859322489337

`A199594(n+1)+A057428(n)*A199925(n+1)`
-/

namespace A199926.P13344714859322489337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199594 (n + 1) + A057428 n * A199925 (n + 1)

end

end A199926.P13344714859322489337

namespace A199926

/-- `A199594(n+1)+A057428(n)*A199925(n+1)` -/
def P13344714859322489337.Spec : Prop :=
  ∀ n, P13344714859322489337.a n = A199926 (n + 1)

end A199926

/-! ## A199926.P3746689595977638930

`A164388(n)-(A199925(n+1)+Δ[A164388(n)])`
-/

namespace A199926.P3746689595977638930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164388 n - (A199925 (n + 1) + (f1 (n + 1) - f1 n))

end

end A199926.P3746689595977638930

namespace A199926

/-- `A164388(n)-(A199925(n+1)+Δ[A164388(n)])` -/
def P3746689595977638930.Spec : Prop :=
  ∀ n, P3746689595977638930.a n = A199926 (n + 1)

end A199926

/-! ## A199926.P4992317376854186667

`A199925(n+4)-Δ[A199925(n+4)]-A199925(n+1)`
-/

namespace A199926.P4992317376854186667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199925 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199925 (n + 4) - (f1 (n + 1) - f1 n) - A199925 (n + 1)

end

end A199926.P4992317376854186667

namespace A199926

/-- `A199925(n+4)-Δ[A199925(n+4)]-A199925(n+1)` -/
def P4992317376854186667.Spec : Prop :=
  ∀ n, P4992317376854186667.a n = A199926 (n + 1)

end A199926

/-! ## A199926.P12067830688592029430

`(A199594(n+1)+A164388(n))%(A199925(n+1)+A164388(n))`
-/

namespace A199926.P12067830688592029430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199594 (n + 1) + A164388 n) (A199925 (n + 1) + A164388 n)

end

end A199926.P12067830688592029430

namespace A199926

/-- `(A199594(n+1)+A164388(n))%(A199925(n+1)+A164388(n))` -/
def P12067830688592029430.Spec : Prop :=
  ∀ n, P12067830688592029430.a n = A199926 (n + 1)

end A199926

/-!
# A199927: Trisection 0 of A199802.

The programs for A199927, the canonical program `A199927.P13812750077016360841` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199927 has offset 0).

The definition of A199927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199927.P8269495451805111397

`ogf((1+2x-x^2)/(1+x+5x^2-x^3+x^4))`
-/

namespace A199927.P8269495451805111397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 1, 5, -1, 1] n

end

end A199927.P8269495451805111397

namespace A199927

/-- `ogf((1+2x-x^2)/(1+x+5x^2-x^3+x^4))` -/
def P8269495451805111397.Spec : Prop :=
  ∀ n, P8269495451805111397.a n = A199927 n

end A199927

/-! ## A199927.P9240853322408589499

`A199928(n)-A199930(n)`
-/

namespace A199927.P9240853322408589499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199928 n - A199930 n

end

end A199927.P9240853322408589499

namespace A199927

/-- `A199928(n)-A199930(n)` -/
def P9240853322408589499.Spec : Prop :=
  ∀ n, P9240853322408589499.a n = A199927 n

end A199927

/-! ## A199927.P14002617784466342458

`A199928(n)-A199803(3*n)`
-/

namespace A199927.P14002617784466342458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199928 n - A199803 (3 * n)

end

end A199927.P14002617784466342458

namespace A199927

/-- `A199928(n)-A199803(3*n)` -/
def P14002617784466342458.Spec : Prop :=
  ∀ n, P14002617784466342458.a n = A199927 n

end A199927

/-! ## A199927.P13812750077016360841

`(-1)^n*A101496(A016789(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A199927

/-- `(-1)^n*A101496(A016789(n))` -/
def P13812750077016360841.Spec : Prop :=
  ∀ n, P13812750077016360841.a n = A199927 n

theorem P13812750077016360841.correct : P13812750077016360841.Spec := by
  intro n
  simp only [A199927]

end A199927

/-! ## A199927.P8784533551929366846

`A199803(A016789(n))-A199930(n)`
-/

namespace A199927.P8784533551929366846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (A016789 n).toNat - A199930 n

end

end A199927.P8784533551929366846

namespace A199927

/-- `A199803(A016789(n))-A199930(n)` -/
def P8784533551929366846.Spec : Prop :=
  ∀ n, P8784533551929366846.a n = A199927 n

end A199927

/-! ## A199927.P12279494557103565933

`A199803(A016777(n)+1)-A199930(n)`
-/

namespace A199927.P12279494557103565933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (A016777 n + 1).toNat - A199930 n

end

end A199927.P12279494557103565933

namespace A199927

/-- `A199803(A016777(n)+1)-A199930(n)` -/
def P12279494557103565933.Spec : Prop :=
  ∀ n, P12279494557103565933.a n = A199927 n

end A199927

/-! ## A199927.P17628752962859362406

`A199928(n)-(A199931(n)+A199929(n))`
-/

namespace A199927.P17628752962859362406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199928 n - (A199931 n + A199929 n)

end

end A199927.P17628752962859362406

namespace A199927

/-- `A199928(n)-(A199931(n)+A199929(n))` -/
def P17628752962859362406.Spec : Prop :=
  ∀ n, P17628752962859362406.a n = A199927 n

end A199927

/-! ## A199927.P871309862196221990

`A199933(n)-(A199931(n)+A199930(n))`
-/

namespace A199927.P871309862196221990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199933 n - (A199931 n + A199930 n)

end

end A199927.P871309862196221990

namespace A199927

/-- `A199933(n)-(A199931(n)+A199930(n))` -/
def P871309862196221990.Spec : Prop :=
  ∀ n, P871309862196221990.a n = A199927 n

end A199927

/-! ## A199927.P9933103593818191556

`A199930(n+1)+A199931(n+1)-A199931(n)`
-/

namespace A199927.P9933103593818191556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199930 (n + 1) + (A199931 (n + 1) - A199931 n)

end

end A199927.P9933103593818191556

namespace A199927

/-- `A199930(n+1)+A199931(n+1)-A199931(n)` -/
def P9933103593818191556.Spec : Prop :=
  ∀ n, P9933103593818191556.a n = A199927 n

end A199927

/-! ## A199927.P8994751978152697383

`A199933(n+1)-(A199930(n+1)+A199929(n))`
-/

namespace A199927.P8994751978152697383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199933 (n + 1) - (A199930 (n + 1) + A199929 n)

end

end A199927.P8994751978152697383

namespace A199927

/-- `A199933(n+1)-(A199930(n+1)+A199929(n))` -/
def P8994751978152697383.Spec : Prop :=
  ∀ n, P8994751978152697383.a n = A199927 n

end A199927

/-! ## A199927.P1459939953558520751

`A199802(3*n)`
-/

namespace A199927.P1459939953558520751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199802 (3 * n)

end

end A199927.P1459939953558520751

namespace A199927

/-- `A199802(3*n)` -/
def P1459939953558520751.Spec : Prop :=
  ∀ n, P1459939953558520751.a n = A199927 n

end A199927

/-! ## A199927.P13397213267081910059

`A199928(n+1)-(A199929(n+1)+A199929(n))`
-/

namespace A199927.P13397213267081910059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199928 (n + 1) - (A199929 (n + 1) + A199929 n)

end

end A199927.P13397213267081910059

namespace A199927

/-- `A199928(n+1)-(A199929(n+1)+A199929(n))` -/
def P13397213267081910059.Spec : Prop :=
  ∀ n, P13397213267081910059.a n = A199927 n

end A199927

/-!
# A199928: Trisection 1 of A199802.

The programs for A199928, the canonical program `A199928.P17595859429423267305` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199928 has offset 0).

The definition of A199928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199928.P13045818821634230545

`ogf((2+x+x^2)/(1+x+5x^2-x^3+x^4))`
-/

namespace A199928.P13045818821634230545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 1] [1, 1, 5, -1, 1] n

end

end A199928.P13045818821634230545

namespace A199928

/-- `ogf((2+x+x^2)/(1+x+5x^2-x^3+x^4))` -/
def P13045818821634230545.Spec : Prop :=
  ∀ n, P13045818821634230545.a n = A199928 n

end A199928

/-! ## A199928.P17595859429423267305

`A199803(3*n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A199928

/-- `A199803(3*n+2)` -/
def P17595859429423267305.Spec : Prop :=
  ∀ n, P17595859429423267305.a n = A199928 n

theorem P17595859429423267305.correct : P17595859429423267305.Spec := by
  intro n
  simp only [A199928]

end A199928

/-! ## A199928.P754872139437659519

`A199930(n)+A199927(n)`
-/

namespace A199928.P754872139437659519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199930 n + A199927 n

end

end A199928.P754872139437659519

namespace A199928

/-- `A199930(n)+A199927(n)` -/
def P754872139437659519.Spec : Prop :=
  ∀ n, P754872139437659519.a n = A199928 n

end A199928

/-! ## A199928.P9148728917080774380

`A199933(n)-A199931(n)`
-/

namespace A199928.P9148728917080774380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199933 n - A199931 n

end

end A199928.P9148728917080774380

namespace A199928

/-- `A199933(n)-A199931(n)` -/
def P9148728917080774380.Spec : Prop :=
  ∀ n, P9148728917080774380.a n = A199928 n

end A199928

/-! ## A199928.P15944443240781532098

`or(char[1], A199803(A016789(n)))`
-/

namespace A199928.P15944443240781532098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A199803 (A016789 n).toNat)

end

end A199928.P15944443240781532098

namespace A199928

/-- `or(char[1], A199803(A016789(n)))` -/
def P15944443240781532098.Spec : Prop :=
  ∀ n, P15944443240781532098.a n = A199928 n

end A199928

/-! ## A199928.P13455823278524130021

`A199930(n+1)-A199933(n+2)`
-/

namespace A199928.P13455823278524130021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199930 (n + 1) - A199933 (n + 2)

end

end A199928.P13455823278524130021

namespace A199928

/-- `A199930(n+1)-A199933(n+2)` -/
def P13455823278524130021.Spec : Prop :=
  ∀ n, P13455823278524130021.a n = A199928 n

end A199928

/-! ## A199928.P4745928676910473803

`(A199933(n)-Δ[A199933(n+1)])/3`
-/

namespace A199928.P4745928676910473803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199933 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199933 n - (f1 (n + 1) - f1 n) : ℚ) / 3

end

end A199928.P4745928676910473803

namespace A199928

/-- `(A199933(n)-Δ[A199933(n+1)])/3` -/
def P4745928676910473803.Spec : Prop :=
  ∀ n, P4745928676910473803.a n = (A199928 n : ℚ)

end A199928

/-! ## A199928.P7617167709341222084

`abs(A033999(n))*A199803(A016789(n))`
-/

namespace A199928.P7617167709341222084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A199803 (A016789 n).toNat

end

end A199928.P7617167709341222084

namespace A199928

/-- `abs(A033999(n))*A199803(A016789(n))` -/
def P7617167709341222084.Spec : Prop :=
  ∀ n, P7617167709341222084.a n = A199928 n

end A199928

/-! ## A199928.P616506817338863655

`A199927(n)+A199931(n)+A199929(n)`
-/

namespace A199928.P616506817338863655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199927 n + (A199931 n + A199929 n)

end

end A199928.P616506817338863655

namespace A199928

/-- `A199927(n)+A199931(n)+A199929(n)` -/
def P616506817338863655.Spec : Prop :=
  ∀ n, P616506817338863655.a n = A199928 n

end A199928

/-! ## A199928.P11457855278546072079

`A199929(n)+A199933(n)-A199930(n)`
-/

namespace A199928.P11457855278546072079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199929 n + (A199933 n - A199930 n)

end

end A199928.P11457855278546072079

namespace A199928

/-- `A199929(n)+A199933(n)-A199930(n)` -/
def P11457855278546072079.Spec : Prop :=
  ∀ n, P11457855278546072079.a n = A199928 n

end A199928

/-! ## A199928.P9292473084148332491

`A199931(n+1)+A199930(n+1)+A199929(n)`
-/

namespace A199928.P9292473084148332491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199931 (n + 1) + (A199930 (n + 1) + A199929 n)

end

end A199928.P9292473084148332491

namespace A199928

/-- `A199931(n+1)+A199930(n+1)+A199929(n)` -/
def P9292473084148332491.Spec : Prop :=
  ∀ n, P9292473084148332491.a n = A199928 n

end A199928

/-! ## A199928.P18342525212227142956

`A199802(3*n+1)`
-/

namespace A199928.P18342525212227142956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199802 (3 * n + 1)

end

end A199928.P18342525212227142956

namespace A199928

/-- `A199802(3*n+1)` -/
def P18342525212227142956.Spec : Prop :=
  ∀ n, P18342525212227142956.a n = A199928 n

end A199928

/-! ## A199928.P13227423173731050765

`A199927(n+1)+A199931(n+1)+A199931(n)`
-/

namespace A199928.P13227423173731050765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199927 (n + 1) + (A199931 (n + 1) + A199931 n)

end

end A199928.P13227423173731050765

namespace A199928

/-- `A199927(n+1)+A199931(n+1)+A199931(n)` -/
def P13227423173731050765.Spec : Prop :=
  ∀ n, P13227423173731050765.a n = A199928 n

end A199928

/-! ## A199928.P9843306324047099074

`A199803(A016789(n))+A002262(C(n, 2))`
-/

namespace A199928.P9843306324047099074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (A016789 n).toNat + A002262 (Nat.choose n 2)

end

end A199928.P9843306324047099074

namespace A199928

/-- `A199803(A016789(n))+A002262(C(n, 2))` -/
def P9843306324047099074.Spec : Prop :=
  ∀ n, P9843306324047099074.a n = A199928 n

end A199928

/-!
# A199929: Trisection 2 of A199802.

The programs for A199929, the canonical program `A199929.P2919813017044911463` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199929 has offset 0).

The definition of A199929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199929.P13394476207808153898

`ogf((2-2x+x^2)/(1+x+5x^2-x^3+x^4))`
-/

namespace A199929.P13394476207808153898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 1] [1, 1, 5, -1, 1] n

end

end A199929.P13394476207808153898

namespace A199929

/-- `ogf((2-2x+x^2)/(1+x+5x^2-x^3+x^4))` -/
def P13394476207808153898.Spec : Prop :=
  ∀ n, P13394476207808153898.a n = A199929 n

end A199929

/-! ## A199929.P131993033775774633

`A199930(n)-A199931(n)`
-/

namespace A199929.P131993033775774633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199930 n - A199931 n

end

end A199929.P131993033775774633

namespace A199929

/-- `A199930(n)-A199931(n)` -/
def P131993033775774633.Spec : Prop :=
  ∀ n, P131993033775774633.a n = A199929 n

end A199929

/-! ## A199929.P7288130491351412112

`A199803(3*n)-A199931(n)`
-/

namespace A199929.P7288130491351412112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (3 * n) - A199931 n

end

end A199929.P7288130491351412112

namespace A199929

/-- `A199803(3*n)-A199931(n)` -/
def P7288130491351412112.Spec : Prop :=
  ∀ n, P7288130491351412112.a n = A199929 n

end A199929

/-! ## A199929.P2919813017044911463

`A199803(3*n)-A199803(3*n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A199929

/-- `A199803(3*n)-A199803(3*n+1)` -/
def P2919813017044911463.Spec : Prop :=
  ∀ n, P2919813017044911463.a n = A199929 n

theorem P2919813017044911463.correct : P2919813017044911463.Spec := by
  intro n
  simp only [A199929]

end A199929

/-! ## A199929.P6029446416610656183

`A199930(n)-A199803(A016777(n))`
-/

namespace A199929.P6029446416610656183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199930 n - A199803 (A016777 n).toNat

end

end A199929.P6029446416610656183

namespace A199929

/-- `A199930(n)-A199803(A016777(n))` -/
def P6029446416610656183.Spec : Prop :=
  ∀ n, P6029446416610656183.a n = A199929 n

end A199929

/-! ## A199929.P15068765959811375046

`A199930(n)-A199803(A016789(n)-1)`
-/

namespace A199929.P15068765959811375046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199930 n - A199803 (A016789 n - 1).toNat

end

end A199929.P15068765959811375046

namespace A199929

/-- `A199930(n)-A199803(A016789(n)-1)` -/
def P15068765959811375046.Spec : Prop :=
  ∀ n, P15068765959811375046.a n = A199929 n

end A199929

/-! ## A199929.P3344156419810103382

`A199928(n)+A199930(n)-A199933(n)`
-/

namespace A199929.P3344156419810103382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199928 n + (A199930 n - A199933 n)

end

end A199929.P3344156419810103382

namespace A199929

/-- `A199928(n)+A199930(n)-A199933(n)` -/
def P3344156419810103382.Spec : Prop :=
  ∀ n, P3344156419810103382.a n = A199929 n

end A199929

/-! ## A199929.P7030535682661025826

`A199928(n)-(A199931(n)+A199927(n))`
-/

namespace A199929.P7030535682661025826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199928 n - (A199931 n + A199927 n)

end

end A199929.P7030535682661025826

namespace A199929

/-- `A199928(n)-(A199931(n)+A199927(n))` -/
def P7030535682661025826.Spec : Prop :=
  ∀ n, P7030535682661025826.a n = A199929 n

end A199929

/-! ## A199929.P14071152359153272144

`A199933(n+1)-(A199930(n+1)+A199927(n))`
-/

namespace A199929.P14071152359153272144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199933 (n + 1) - (A199930 (n + 1) + A199927 n)

end

end A199929.P14071152359153272144

namespace A199929

/-- `A199933(n+1)-(A199930(n+1)+A199927(n))` -/
def P14071152359153272144.Spec : Prop :=
  ∀ n, P14071152359153272144.a n = A199929 n

end A199929

/-! ## A199929.P16221340837502244326

`A199927(n+1)+A199931(n+1)-A199927(n)`
-/

namespace A199929.P16221340837502244326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199927 (n + 1) + (A199931 (n + 1) - A199927 n)

end

end A199929.P16221340837502244326

namespace A199929

/-- `A199927(n+1)+A199931(n+1)-A199927(n)` -/
def P16221340837502244326.Spec : Prop :=
  ∀ n, P16221340837502244326.a n = A199929 n

end A199929

/-! ## A199929.P6326020939919181904

`A199927(n+1)+A199928(n)-A199933(n+1)`
-/

namespace A199929.P6326020939919181904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199927 (n + 1) + (A199928 n - A199933 (n + 1))

end

end A199929.P6326020939919181904

namespace A199929

/-- `A199927(n+1)+A199928(n)-A199933(n+1)` -/
def P6326020939919181904.Spec : Prop :=
  ∀ n, P6326020939919181904.a n = A199929 n

end A199929

/-! ## A199929.P9999557781889310965

`A199802(3*n+2)`
-/

namespace A199929.P9999557781889310965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199802 (3 * n + 2)

end

end A199929.P9999557781889310965

namespace A199929

/-- `A199802(3*n+2)` -/
def P9999557781889310965.Spec : Prop :=
  ∀ n, P9999557781889310965.a n = A199929 n

end A199929

/-!
# A199930: Trisection 0 of A199803.

The programs for A199930, the canonical program `A199930.P7858068792414983377` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199930 has offset 0).

The definition of A199930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199930.P14185802469318311638

`ogf((1-x+2x^2)/(1+x+5x^2-x^3+x^4))`
-/

namespace A199930.P14185802469318311638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, 1, 5, -1, 1] n

end

end A199930.P14185802469318311638

namespace A199930

/-- `ogf((1-x+2x^2)/(1+x+5x^2-x^3+x^4))` -/
def P14185802469318311638.Spec : Prop :=
  ∀ n, P14185802469318311638.a n = A199930 n

end A199930

/-! ## A199930.P7858068792414983377

`A199803(3*n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A199930

/-- `A199803(3*n)` -/
def P7858068792414983377.Spec : Prop :=
  ∀ n, P7858068792414983377.a n = A199930 n

theorem P7858068792414983377.correct : P7858068792414983377.Spec := by
  intro n
  simp only [A199930]

end A199930

/-! ## A199930.P3239776646024221784

`A199803(A008585(n))+A000038(n+1)`
-/

namespace A199930.P3239776646024221784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (A008585 n).toNat + A000038 (n + 1)

end

end A199930.P3239776646024221784

namespace A199930

/-- `A199803(A008585(n))+A000038(n+1)` -/
def P3239776646024221784.Spec : Prop :=
  ∀ n, P3239776646024221784.a n = A199930 n

end A199930

/-! ## A199930.P8230072714203864422

`round(A199803(A008486(n))+2/A008706(n))`
-/

namespace A199930.P8230072714203864422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A199803 (A008486 n).toNat : ℚ) + 2 / (A008706 n : ℚ))

end

end A199930.P8230072714203864422

namespace A199930

/-- `round(A199803(A008486(n))+2/A008706(n))` -/
def P8230072714203864422.Spec : Prop :=
  ∀ n, P8230072714203864422.a n = A199930 n

end A199930

/-! ## A199930.P3178106994678695102

`round(A199803(A008486(n))+2/A010005(n))`
-/

namespace A199930.P3178106994678695102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A199803 (A008486 n).toNat : ℚ) + 2 / (A010005 n : ℚ))

end

end A199930.P3178106994678695102

namespace A199930

/-- `round(A199803(A008486(n))+2/A010005(n))` -/
def P3178106994678695102.Spec : Prop :=
  ∀ n, P3178106994678695102.a n = A199930 n

end A199930

/-! ## A199930.P15643030757713124771

`A199931(n)+A199929(n)`
-/

namespace A199930.P15643030757713124771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199931 n + A199929 n

end

end A199930.P15643030757713124771

namespace A199930

/-- `A199931(n)+A199929(n)` -/
def P15643030757713124771.Spec : Prop :=
  ∀ n, P15643030757713124771.a n = A199930 n

end A199930

/-! ## A199930.P2011892327118346835

`A199928(n)-A199927(n)`
-/

namespace A199930.P2011892327118346835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199928 n - A199927 n

end

end A199930.P2011892327118346835

namespace A199930

/-- `A199928(n)-A199927(n)` -/
def P2011892327118346835.Spec : Prop :=
  ∀ n, P2011892327118346835.a n = A199930 n

end A199930

/-! ## A199930.P2834332210265200343

`A199929(n)+A199933(n)-A199928(n)`
-/

namespace A199930.P2834332210265200343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199929 n + (A199933 n - A199928 n)

end

end A199930.P2834332210265200343

namespace A199930

/-- `A199929(n)+A199933(n)-A199928(n)` -/
def P2834332210265200343.Spec : Prop :=
  ∀ n, P2834332210265200343.a n = A199930 n

end A199930

/-! ## A199930.P5510995422333658140

`A199933(n)-(A199931(n)+A199927(n))`
-/

namespace A199930.P5510995422333658140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199933 n - (A199931 n + A199927 n)

end

end A199930.P5510995422333658140

namespace A199930

/-- `A199933(n)-(A199931(n)+A199927(n))` -/
def P5510995422333658140.Spec : Prop :=
  ∀ n, P5510995422333658140.a n = A199930 n

end A199930

/-! ## A199930.P10958323486096350144

`A199927(n+1)+A199933(n)-A199933(n+1)`
-/

namespace A199930.P10958323486096350144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199927 (n + 1) + (A199933 n - A199933 (n + 1))

end

end A199930.P10958323486096350144

namespace A199930

/-- `A199927(n+1)+A199933(n)-A199933(n+1)` -/
def P10958323486096350144.Spec : Prop :=
  ∀ n, P10958323486096350144.a n = A199930 n

end A199930

/-!
# A199931: Trisection 1 of A199803.

The programs for A199931, the canonical program `A199931.P16336687389798306724` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199931 has offset 0).

The definition of A199931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199931.P2462697556145605078

`ogf((-1+x+x^2)/(1+x+5x^2-x^3+x^4))`
-/

namespace A199931.P2462697556145605078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 1, 1] [1, 1, 5, -1, 1] n

end

end A199931.P2462697556145605078

namespace A199931

/-- `ogf((-1+x+x^2)/(1+x+5x^2-x^3+x^4))` -/
def P2462697556145605078.Spec : Prop :=
  ∀ n, P2462697556145605078.a n = A199931 n

end A199931

/-! ## A199931.P16336687389798306724

`A199803(3*n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A199931

/-- `A199803(3*n+1)` -/
def P16336687389798306724.Spec : Prop :=
  ∀ n, P16336687389798306724.a n = A199931 n

theorem P16336687389798306724.correct : P16336687389798306724.Spec := by
  intro n
  simp only [A199931]

end A199931

/-! ## A199931.P8756067434962523738

`A199930(n)-A199929(n)`
-/

namespace A199931.P8756067434962523738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199930 n - A199929 n

end

end A199931.P8756067434962523738

namespace A199931

/-- `A199930(n)-A199929(n)` -/
def P8756067434962523738.Spec : Prop :=
  ∀ n, P8756067434962523738.a n = A199931 n

end A199931

/-! ## A199931.P18392914885744695933

`A199933(n)-A199928(n)`
-/

namespace A199931.P18392914885744695933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199933 n - A199928 n

end

end A199931.P18392914885744695933

namespace A199931

/-- `A199933(n)-A199928(n)` -/
def P18392914885744695933.Spec : Prop :=
  ∀ n, P18392914885744695933.a n = A199931 n

end A199931

/-! ## A199931.P12331787085699641369

`A199928(n)-(A199929(n)+A199927(n))`
-/

namespace A199931.P12331787085699641369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199928 n - (A199929 n + A199927 n)

end

end A199931.P12331787085699641369

namespace A199931

/-- `A199928(n)-(A199929(n)+A199927(n))` -/
def P12331787085699641369.Spec : Prop :=
  ∀ n, P12331787085699641369.a n = A199931 n

end A199931

/-! ## A199931.P5147635318876623800

`A199933(n)-(A199930(n)+A199927(n))`
-/

namespace A199931.P5147635318876623800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199933 n - (A199930 n + A199927 n)

end

end A199931.P5147635318876623800

namespace A199931

/-- `A199933(n)-(A199930(n)+A199927(n))` -/
def P5147635318876623800.Spec : Prop :=
  ∀ n, P5147635318876623800.a n = A199931 n

end A199931

/-! ## A199931.P13448748612883337435

`Δ[∑[A199929(n)]-A199928(n)]`
-/

namespace A199931.P13448748612883337435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199929 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A199928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199931.P13448748612883337435

namespace A199931

/-- `Δ[∑[A199929(n)]-A199928(n)]` -/
def P13448748612883337435.Spec : Prop :=
  ∀ n, P13448748612883337435.a n = A199931 n

end A199931

/-! ## A199931.P15708560573408587539

`A199929(n+1)-Δ[A199928(n)]`
-/

namespace A199931.P15708560573408587539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199929 (n + 1) - (f1 (n + 1) - f1 n)

end

end A199931.P15708560573408587539

namespace A199931

/-- `A199929(n+1)-Δ[A199928(n)]` -/
def P15708560573408587539.Spec : Prop :=
  ∀ n, P15708560573408587539.a n = A199931 n

end A199931

/-! ## A199931.P10587452302140981474

`A199929(n+1)+A199928(n)-A199928(n+1)`
-/

namespace A199931.P10587452302140981474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199929 (n + 1) + (A199928 n - A199928 (n + 1))

end

end A199931.P10587452302140981474

namespace A199931

/-- `A199929(n+1)+A199928(n)-A199928(n+1)` -/
def P10587452302140981474.Spec : Prop :=
  ∀ n, P10587452302140981474.a n = A199931 n

end A199931

/-! ## A199931.P10615610722987792622

`A199933(n+1)-(A199927(n+1)+A199927(n))`
-/

namespace A199931.P10615610722987792622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199933 (n + 1) - (A199927 (n + 1) + A199927 n)

end

end A199931.P10615610722987792622

namespace A199931

/-- `A199933(n+1)-(A199927(n+1)+A199927(n))` -/
def P10615610722987792622.Spec : Prop :=
  ∀ n, P10615610722987792622.a n = A199931 n

end A199931

/-!
# A199932: Number of meanders of length n.

The programs for A199932, there is no canonical definition to state claims against.
-/

/-! ## A199932.P2795836807354730433

`A200062(n+1)+2^n`
-/

namespace A199932.P2795836807354730433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200062 (n + 1) + (2 ^ n : ℤ)

end

end A199932.P2795836807354730433

/-! ## A199932.P13048226054423838313

`or(A000079(n), A200062(n+1))`
-/

namespace A199932.P13048226054423838313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A200062 (n + 1))

end

end A199932.P13048226054423838313

/-! ## A199932.P14370374747418937801

`or(∑[A011782(n)], A200062(n+1))`
-/

namespace A199932.P14370374747418937801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A200062 (n + 1))

end

end A199932.P14370374747418937801

/-! ## A199932.P10987059841340499411

`or(Δ[A000051(n)], A200062(n+1))`
-/

namespace A199932.P10987059841340499411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A200062 (n + 1))

end

end A199932.P10987059841340499411

/-! ## A199932.P9105883388426713531

`or(Δ[A000225(n)], A200062(n+1))`
-/

namespace A199932.P9105883388426713531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A200062 (n + 1))

end

end A199932.P9105883388426713531

/-!
# A199933: Trisection 0 of A199744.

The programs for A199933, the canonical program `A199933.P14759041773295632807` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199933 has offset 0).

The definition of A199933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199933.P11030996445987214888

`ogf((1+2x+2x^2)/(1+x+5x^2-x^3+x^4))`
-/

namespace A199933.P11030996445987214888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2] [1, 1, 5, -1, 1] n

end

end A199933.P11030996445987214888

namespace A199933

/-- `ogf((1+2x+2x^2)/(1+x+5x^2-x^3+x^4))` -/
def P11030996445987214888.Spec : Prop :=
  ∀ n, P11030996445987214888.a n = A199933 n

end A199933

/-! ## A199933.P14759041773295632807

`A199744(3*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A199933

/-- `A199744(3*n)` -/
def P14759041773295632807.Spec : Prop :=
  ∀ n, P14759041773295632807.a n = A199933 n

theorem P14759041773295632807.correct : P14759041773295632807.Spec := by
  intro n
  simp only [A199933]

end A199933

/-! ## A199933.P14713667990986939941

`A199931(n)+A199928(n)`
-/

namespace A199933.P14713667990986939941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199931 n + A199928 n

end

end A199933.P14713667990986939941

namespace A199933

/-- `A199931(n)+A199928(n)` -/
def P14713667990986939941.Spec : Prop :=
  ∀ n, P14713667990986939941.a n = A199933 n

end A199933

/-! ## A199933.P17114715360517070785

`A199803(3*n+1)+A199803(3*n+2)`
-/

namespace A199933.P17114715360517070785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (3 * n + 1) + A199803 (3 * n + 2)

end

end A199933.P17114715360517070785

namespace A199933

/-- `A199803(3*n+1)+A199803(3*n+2)` -/
def P17114715360517070785.Spec : Prop :=
  ∀ n, P17114715360517070785.a n = A199933 n

end A199933

/-! ## A199933.P10181507204394741714

`A199927(n)+A199931(n)+A199930(n)`
-/

namespace A199933.P10181507204394741714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199927 n + (A199931 n + A199930 n)

end

end A199933.P10181507204394741714

namespace A199933

/-- `A199927(n)+A199931(n)+A199930(n)` -/
def P10181507204394741714.Spec : Prop :=
  ∀ n, P10181507204394741714.a n = A199933 n

end A199933

/-! ## A199933.P13652875010741876248

`A199928(n)+A199930(n)-A199929(n)`
-/

namespace A199933.P13652875010741876248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199928 n + (A199930 n - A199929 n)

end

end A199933.P13652875010741876248

namespace A199933

/-- `A199928(n)+A199930(n)-A199929(n)` -/
def P13652875010741876248.Spec : Prop :=
  ∀ n, P13652875010741876248.a n = A199933 n

end A199933

/-! ## A199933.P6374145427248728618

`A199930(n+1)+A199931(n+1)+A199930(n)`
-/

namespace A199933.P6374145427248728618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199930 (n + 1) + (A199931 (n + 1) + A199930 n)

end

end A199933.P6374145427248728618

namespace A199933

/-- `A199930(n+1)+A199931(n+1)+A199930(n)` -/
def P6374145427248728618.Spec : Prop :=
  ∀ n, P6374145427248728618.a n = A199933 n

end A199933

/-!
# A199934: Extended d-block elements for Janet table.

The programs for A199934, there is no canonical definition to state claims against.
-/

/-! ## A199934.P5858660463417652414

`∑[gcd(A057460(n+5), A057464(n+1))]`
-/

namespace A199934.P5858660463417652414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057460 (n + 5)) (A057464 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199934.P5858660463417652414

/-! ## A199934.P6272959339224785891

`∑[gcd(A074000(n+5), A292943(2*n+1))]`
-/

namespace A199934.P6272959339224785891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074000 (n + 5)) (A292943 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199934.P6272959339224785891

/-! ## A199934.P883813004188776908

`∑[gcd(comp[2*n+3], A109839(2*n+5))]`
-/

namespace A199934.P883813004188776908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) (A109839 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199934.P883813004188776908

/-! ## A199934.P8937083422164849996

`∑[gcd(A109839(2*n+5), A124395(n+2))]`
-/

namespace A199934.P8937083422164849996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109839 (2 * n + 5)) (A124395 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199934.P8937083422164849996

/-! ## A199934.P13564250100285526633

`A274340(A243891(n+1))+A247758(n+3)`
-/

namespace A199934.P13564250100285526633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274340 (A243891 (n + 1)).toNat + A247758 (n + 3)

end

end A199934.P13564250100285526633

/-!
# A199935: Size (b^3_n) of unit sphere in a certain graph (see Hazama article for precise definition).

The programs for A199935, the canonical program `A199935.P9469126348743973828` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199935 has offset 2).

The definition of A199935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199935.P9469126348743973828

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199935

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)-a(n-5)` -/
def P9469126348743973828.Spec : Prop :=
  ∀ n, P9469126348743973828.a n = A199935 (n + 2)

theorem P9469126348743973828.correct : P9469126348743973828.Spec := by
  intro n
  simp only [A199935, Nat.add_sub_cancel]

end A199935

/-! ## A199935.P5177079447781094877

`abs(A111734(n+2))-1`
-/

namespace A199935.P5177079447781094877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111734 (n + 2)| - 1

end

end A199935.P5177079447781094877

namespace A199935

/-- `abs(A111734(n+2))-1` -/
def P5177079447781094877.Spec : Prop :=
  ∀ n, P5177079447781094877.a n = A199935 (n + 2)

end A199935

/-! ## A199935.P8870454383643348129

`∑[Δ[A000032(n)]-a(n-3)]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A199935.P8870454383643348129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  f2 (n + 1) - f2 n - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199935.P8870454383643348129

namespace A199935

/-- `∑[Δ[A000032(n)]-a(n-3)]` -/
def P8870454383643348129.Spec : Prop :=
  ∀ n, P8870454383643348129.a n = A199935 (n + 2)

end A199935

/-! ## A199935.P11876865708777512561

`∑[A000032(n-1)-a(n-3)]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A199935.P11876865708777512561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  A000032 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199935.P11876865708777512561

namespace A199935

/-- `∑[A000032(n-1)-a(n-3)]` -/
def P11876865708777512561.Spec : Prop :=
  ∀ n, P11876865708777512561.a n = A199935 (n + 2)

end A199935

/-! ## A199935.P13991701237990387345

`A000032(n+1)-(a(n-3)+2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A199935.P13991701237990387345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A000032 (n + 1) - (a (n - 3) + 2)

end

end A199935.P13991701237990387345

namespace A199935

/-- `A000032(n+1)-(a(n-3)+2)` -/
def P13991701237990387345.Spec : Prop :=
  ∀ n, P13991701237990387345.a n = A199935 (n + 2)

end A199935

/-! ## A199935.P10707913037187322074

`A174618(2*n+1)+A130578(n+1)`
-/

namespace A199935.P10707913037187322074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (2 * n + 1) + A130578 (n + 1)

end

end A199935.P10707913037187322074

namespace A199935

/-- `A174618(2*n+1)+A130578(n+1)` -/
def P10707913037187322074.Spec : Prop :=
  ∀ n, P10707913037187322074.a n = A199935 (n + 2)

end A199935

/-! ## A199935.P8840448445514475951

`A130578(n+1)+A005252(n)-A010892(n)`
-/

namespace A199935.P8840448445514475951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130578 (n + 1) + (A005252 n - A010892 n)

end

end A199935.P8840448445514475951

namespace A199935

/-- `A130578(n+1)+A005252(n)-A010892(n)` -/
def P8840448445514475951.Spec : Prop :=
  ∀ n, P8840448445514475951.a n = A199935 (n + 2)

end A199935

/-! ## A199935.P11505400440328988849

`A014217(n+1)+A014217(n)-A108014(n+1)`
-/

namespace A199935.P11505400440328988849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 1) + (A014217 n - A108014 (n + 1))

end

end A199935.P11505400440328988849

namespace A199935

/-- `A014217(n+1)+A014217(n)-A108014(n+1)` -/
def P11505400440328988849.Spec : Prop :=
  ∀ n, P11505400440328988849.a n = A199935 (n + 2)

end A199935

/-! ## A199935.P12872768515736057735

`A130578(n+1)+A130578(n+2)-A000071(n+2)`
-/

namespace A199935.P12872768515736057735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130578 (n + 1) + (A130578 (n + 2) - A000071 (n + 2))

end

end A199935.P12872768515736057735

namespace A199935

/-- `A130578(n+1)+A130578(n+2)-A000071(n+2)` -/
def P12872768515736057735.Spec : Prop :=
  ∀ n, P12872768515736057735.a n = A199935 (n + 2)

end A199935

/-! ## A199935.P18410770680915972076

`A173714(n+1)-(A278718(2*n)+A278718(n+1))`
-/

namespace A199935.P18410770680915972076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (n + 1) - (A278718 (2 * n) + A278718 (n + 1))

end

end A199935.P18410770680915972076

namespace A199935

/-- `A173714(n+1)-(A278718(2*n)+A278718(n+1))` -/
def P18410770680915972076.Spec : Prop :=
  ∀ n, P18410770680915972076.a n = A199935 (n + 2)

end A199935

/-! ## A199935.P10894852480173109597

`A007039(n+2)/2-1`
-/

namespace A199935.P10894852480173109597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007039 (n + 2) : ℚ) / 2 - 1

end

end A199935.P10894852480173109597

namespace A199935

/-- `A007039(n+2)/2-1` -/
def P10894852480173109597.Spec : Prop :=
  ∀ n, P10894852480173109597.a n = (A199935 (n + 2) : ℚ)

end A199935

/-! ## A199935.P18402952494737155736

`∑[Δ[A007039(n+1)]/2]`
-/

namespace A199935.P18402952494737155736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007039 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199935.P18402952494737155736

namespace A199935

/-- `∑[Δ[A007039(n+1)]/2]` -/
def P18402952494737155736.Spec : Prop :=
  ∀ n, P18402952494737155736.a n = (A199935 (n + 2) : ℚ)

end A199935

/-! ## A199935.P17943199981523527928

`(A297661(n+2)-(n+4))/2`
-/

namespace A199935.P17943199981523527928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297661 (n + 2) - (n + 4 : ℤ) : ℚ) / 2

end

end A199935.P17943199981523527928

namespace A199935

/-- `(A297661(n+2)-(n+4))/2` -/
def P17943199981523527928.Spec : Prop :=
  ∀ n, P17943199981523527928.a n = (A199935 (n + 2) : ℚ)

end A199935

/-! ## A199935.P3669154657110920017

`∑[A108014(n)]-A108014(n)`
-/

namespace A199935.P3669154657110920017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A108014 n

end

end A199935.P3669154657110920017

namespace A199935

/-- `∑[A108014(n)]-A108014(n)` -/
def P3669154657110920017.Spec : Prop :=
  ∀ n, P3669154657110920017.a n = A199935 (n + 2)

end A199935

/-! ## A199935.P8913029778988952719

`A033999(2*n+1)+A007039(n+2)/2`
-/

namespace A199935.P8913029778988952719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) : ℚ) + (A007039 (n + 2) : ℚ) / 2

end

end A199935.P8913029778988952719

namespace A199935

/-- `A033999(2*n+1)+A007039(n+2)/2` -/
def P8913029778988952719.Spec : Prop :=
  ∀ n, P8913029778988952719.a n = (A199935 (n + 2) : ℚ)

end A199935

/-! ## A199935.P1292679046196997440

`Δ[A108014(n+2)]-1`
-/

namespace A199935.P1292679046196997440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A199935.P1292679046196997440

namespace A199935

/-- `Δ[A108014(n+2)]-1` -/
def P1292679046196997440.Spec : Prop :=
  ∀ n, P1292679046196997440.a n = A199935 (n + 2)

end A199935

/-!
# A199937: Number of -2..2 arrays x(0..n-1) of n elements with zeroth through n-1st differences all nonzero.

The programs for A199937, there is no canonical definition to state claims against.
-/

/-! ## A199937.P16900223220447323478

`A200159(n+1)+A200032(n+1)`
-/

namespace A199937.P16900223220447323478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200159 (n + 1) + A200032 (n + 1)

end

end A199937.P16900223220447323478

/-! ## A199937.P16395158641360587778

`A199943(∑[n+2])`
-/

namespace A199937.P16395158641360587778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199937.P16395158641360587778

/-! ## A199937.P18048809689369534298

`record[A199943(abs(A201163(n)))]`
-/

namespace A199937.P18048809689369534298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199937.P18048809689369534298

/-! ## A199937.P4942703620922773850

`record[A199943(A101881(n)+1)]`
-/

namespace A199937.P4942703620922773850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199937.P4942703620922773850

/-! ## A199937.P13100802173496129424

`lcm(2, A199943(A000096(n+1)))`
-/

namespace A199937.P13100802173496129424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A199943 (A000096 (n + 1)).toNat)

end

end A199937.P13100802173496129424

/-!
# A199938: Number of -3..3 arrays x(0..n-1) of n elements with zeroth through n-1st differences all nonzero.

The programs for A199938, there is no canonical definition to state claims against.
-/

/-! ## A199938.P15404576288571801077

`A200160(n+1)+A200033(n+1)`
-/

namespace A199938.P15404576288571801077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200160 (n + 1) + A200033 (n + 1)

end

end A199938.P15404576288571801077

/-! ## A199938.P16702763795098424880

`A199943(∑[n+3]+1)`
-/

namespace A199938.P16702763795098424880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199938.P16702763795098424880

/-! ## A199938.P4211494413775259988

`record[A199943(A198464(n+1))]`
-/

namespace A199938.P4211494413775259988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199938.P4211494413775259988

/-! ## A199938.P13908164662198495049

`record[A199943(lt[A199943(n+2), n])]`
-/

namespace A199938.P13908164662198495049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199938.P13908164662198495049

/-! ## A199938.P15937168325343801530

`A200160(n+1)+A200038(∑[n+3]+1)`
-/

namespace A199938.P15937168325343801530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200160 (n + 1) + A200038 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199938.P15937168325343801530

/-!
# A199939: Number of -4..4 arrays x(0..n-1) of n elements with zeroth through n-1st differences all nonzero.

The programs for A199939, there is no canonical definition to state claims against.
-/

/-! ## A199939.P10100912495614932995

`A199943(∑[n+4]+3)`
-/

namespace A199939.P10100912495614932995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A199939.P10100912495614932995

/-! ## A199939.P11136342259849670602

`A200161(n+1)+A200034(n+1)`
-/

namespace A199939.P11136342259849670602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200161 (n + 1) + A200034 (n + 1)

end

end A199939.P11136342259849670602

/-! ## A199939.P1749694160518998978

`A200161(n+1)+A200038(∑[n+4]+3)`
-/

namespace A199939.P1749694160518998978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200161 (n + 1) + A200038 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A199939.P1749694160518998978

/-! ## A199939.P6089684669014568068

`A200161(n+1)+and(-1, A200038(A141214(n+1)))`
-/

namespace A199939.P6089684669014568068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200161 (n + 1) + Int.land (-1) (A200038 (A141214 (n + 1)).toNat)

end

end A199939.P6089684669014568068

/-!
# A199940: Number of -5..5 arrays x(0..n-1) of n elements with zeroth through n-1st differences all nonzero.

The programs for A199940, there is no canonical definition to state claims against.
-/

/-! ## A199940.P10547909184302856318

`A199943(Δ[A264443(n)])`
-/

namespace A199940.P10547909184302856318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (f1 (n + 1) - f1 n).toNat

end

end A199940.P10547909184302856318

/-! ## A199940.P15932481141468956740

`A199943(A046691(n+3))`
-/

namespace A199940.P15932481141468956740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A046691 (n + 3)).toNat

end

end A199940.P15932481141468956740

/-! ## A199940.P17068080351596433110

`A199943(A056115(n)+11)`
-/

namespace A199940.P17068080351596433110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A056115 n + 11).toNat

end

end A199940.P17068080351596433110

/-! ## A199940.P7304359779623613682

`A199943(eq[2, A092921(n)])`
-/

namespace A199940.P7304359779623613682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199940.P7304359779623613682

/-! ## A199940.P7840194849250728092

`A199943(eq[3, A152157(n)])`
-/

namespace A199940.P7840194849250728092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199940.P7840194849250728092

/-!
# A199941: Number of -6..6 arrays x(0..n-1) of n elements with zeroth through n-1st differences all nonzero.

The programs for A199941, there is no canonical definition to state claims against.
-/

/-! ## A199941.P1358677357208469467

`A199943(A052905(n+3))`
-/

namespace A199941.P1358677357208469467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A052905 (n + 3)).toNat

end

end A199941.P1358677357208469467

/-! ## A199941.P1215613029693642284

`A199943(A056119(n)+16)`
-/

namespace A199941.P1215613029693642284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A056119 n + 16).toNat

end

end A199941.P1215613029693642284

/-! ## A199941.P2746415184960796470

`A199943(eq[3, A219347(n)])`
-/

namespace A199941.P2746415184960796470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199941.P2746415184960796470

/-! ## A199941.P10430822766028091274

`A199943(eq[5, A193592(n)])`
-/

namespace A199941.P10430822766028091274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199941.P10430822766028091274

/-! ## A199941.P6501264558990396240

`A199943(eq[8, A258709(n)])`
-/

namespace A199941.P6501264558990396240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199941.P6501264558990396240

/-!
# A199942: Number of -7..7 arrays x(0..n-1) of n elements with zeroth through n-1st differences all nonzero.

The programs for A199942, there is no canonical definition to state claims against.
-/

/-! ## A199942.P46036104138825535

`A199943(A055999(n+4))`
-/

namespace A199942.P46036104138825535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A055999 (n + 4)).toNat

end

end A199942.P46036104138825535

/-! ## A199942.P11499845519625017543

`A199943(eq[4, A219347(n)])`
-/

namespace A199942.P11499845519625017543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199942.P11499845519625017543

/-! ## A199942.P4060012859730640946

`A199943(eq[5, A332954(n)])`
-/

namespace A199942.P4060012859730640946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199942.P4060012859730640946

/-! ## A199942.P2004644388005851563

`A199943(eq[6, A193592(n)])`
-/

namespace A199942.P2004644388005851563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199942.P2004644388005851563

/-! ## A199942.P1271931184467150683

`A199943(Δ[A023551(n+2)])`
-/

namespace A199942.P1271931184467150683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (f1 (n + 1) - f1 n).toNat

end

end A199942.P1271931184467150683

/-!
# A199943: T(n,k)=Number of -k..k arrays x(0..n-1) of n elements with zeroth through n-1st differences all nonzero.

The programs for A199943, there is no canonical definition to state claims against.
-/

/-! ## A199943.P4352629093913634446

`A200165(n+1)+A200038(n+1)`
-/

namespace A199943.P4352629093913634446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (n + 1) + A200038 (n + 1)

end

end A199943.P4352629093913634446

/-! ## A199943.P16798174298619063668

`A000005(2*A079474(n+2)²)`
-/

namespace A199943.P16798174298619063668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A079474 (n + 2) ^ 2).toNat

end

end A199943.P16798174298619063668

/-!
# A199944: Number of -n..n arrays x(0..2) of 3 elements with zeroth through 2nd differences all nonzero.

The programs for A199944, the canonical program `A199944.P17663334503313875701` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199944 has offset 1).

The definition of A199944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199944.P17663334503313875701

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=2, a(1)=36, a(2)=142, a(3)=376, a(4)=778`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199944

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P17663334503313875701.Spec : Prop :=
  ∀ n, P17663334503313875701.a n = A199944 (n + 1)

theorem P17663334503313875701.correct : P17663334503313875701.Spec := by
  intro n
  simp only [A199944, Nat.add_sub_cancel]

end A199944

/-! ## A199944.P6908497406142104885

`A275543(n+1)+A016755(n)`
-/

namespace A199944.P6908497406142104885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (n + 1) + A016755 n

end

end A199944.P6908497406142104885

namespace A199944

/-- `A275543(n+1)+A016755(n)` -/
def P6908497406142104885.Spec : Prop :=
  ∀ n, P6908497406142104885.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P15553053376522648049

`A200166(n+1)+A200039(n+1)`
-/

namespace A199944.P15553053376522648049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200166 (n + 1) + A200039 (n + 1)

end

end A199944.P15553053376522648049

namespace A199944

/-- `A200166(n+1)+A200039(n+1)` -/
def P15553053376522648049.Spec : Prop :=
  ∀ n, P15553053376522648049.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P16885868663704626846

`A007310(n+1)+or(1, A079588(n))`
-/

namespace A199944.P16885868663704626846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) + Int.lor 1 (A079588 n)

end

end A199944.P16885868663704626846

namespace A199944

/-- `A007310(n+1)+or(1, A079588(n))` -/
def P16885868663704626846.Spec : Prop :=
  ∀ n, P16885868663704626846.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P10133423239666302550

`∑[A022144(A110654(n))+A010014(n)]`
-/

namespace A199944.P10133423239666302550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A110654 n).toNat + A010014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199944.P10133423239666302550

namespace A199944

/-- `∑[A022144(A110654(n))+A010014(n)]` -/
def P10133423239666302550.Spec : Prop :=
  ∀ n, P10133423239666302550.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P11185397714153946332

`A014681(n)+A103517(n)+A079588(n)`
-/

namespace A199944.P11185397714153946332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n + (A103517 n + A079588 n)

end

end A199944.P11185397714153946332

namespace A199944

/-- `A014681(n)+A103517(n)+A079588(n)` -/
def P11185397714153946332.Spec : Prop :=
  ∀ n, P11185397714153946332.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P2797830791231971475

`xor(1, A081423(2*n+1))+n`
-/

namespace A199944.P2797830791231971475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A081423 (2 * n + 1)) + (n : ℤ)

end

end A199944.P2797830791231971475

namespace A199944

/-- `xor(1, A081423(2*n+1))+n` -/
def P2797830791231971475.Spec : Prop :=
  ∀ n, P2797830791231971475.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P12918712940042139272

`A085786(2*n+1)+xor(1, n+1)`
-/

namespace A199944.P12918712940042139272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085786 (2 * n + 1) + (Nat.xor 1 (n + 1) : ℤ)

end

end A199944.P12918712940042139272

namespace A199944

/-- `A085786(2*n+1)+xor(1, n+1)` -/
def P12918712940042139272.Spec : Prop :=
  ∀ n, P12918712940042139272.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P14549784422654920687

`A098547(Δ[n²])-A275543(n)`
-/

namespace A199944.P14549784422654920687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A275543 n

end

end A199944.P14549784422654920687

namespace A199944

/-- `A098547(Δ[n²])-A275543(n)` -/
def P14549784422654920687.Spec : Prop :=
  ∀ n, P14549784422654920687.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P12046136836023872428

`A130482(2*n+1)+A079588(n)`
-/

namespace A199944.P12046136836023872428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 (2 * n + 1) + A079588 n

end

end A199944.P12046136836023872428

namespace A199944

/-- `A130482(2*n+1)+A079588(n)` -/
def P12046136836023872428.Spec : Prop :=
  ∀ n, P12046136836023872428.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P10392633186799760575

`A275543(n+1)+A000578(2*n+1)`
-/

namespace A199944.P10392633186799760575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (n + 1) + A000578 (2 * n + 1)

end

end A199944.P10392633186799760575

namespace A199944

/-- `A275543(n+1)+A000578(2*n+1)` -/
def P10392633186799760575.Spec : Prop :=
  ∀ n, P10392633186799760575.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P12570752056488006636

`2*(A083364(2*n)+A059841(n+1))`
-/

namespace A199944.P12570752056488006636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083364 (2 * n) + A059841 (n + 1))

end

end A199944.P12570752056488006636

namespace A199944

/-- `2*(A083364(2*n)+A059841(n+1))` -/
def P12570752056488006636.Spec : Prop :=
  ∀ n, P12570752056488006636.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P18082224971298930152

`A003485(2*n+1)+2*(n²+n)*A062545(2*n)`
-/

namespace A199944.P18082224971298930152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (2 * n + 1) + (2 * (n ^ 2 + n) : ℤ) * A062545 (2 * n)

end

end A199944.P18082224971298930152

namespace A199944

/-- `A003485(2*n+1)+2*(n²+n)*A062545(2*n)` -/
def P18082224971298930152.Spec : Prop :=
  ∀ n, P18082224971298930152.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P16634197072966138005

`A079588(n)+A014681(3*n+2)`
-/

namespace A199944.P16634197072966138005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n + A014681 (3 * n + 2)

end

end A199944.P16634197072966138005

namespace A199944

/-- `A079588(n)+A014681(3*n+2)` -/
def P16634197072966138005.Spec : Prop :=
  ∀ n, P16634197072966138005.a n = A199944 (n + 1)

end A199944

/-! ## A199944.P11544102354053531796

`A079588(n)+A000463(A091998(n+1))`
-/

namespace A199944.P11544102354053531796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n + A000463 (A091998 (n + 1)).toNat

end

end A199944.P11544102354053531796

namespace A199944

/-- `A079588(n)+A000463(A091998(n+1))` -/
def P11544102354053531796.Spec : Prop :=
  ∀ n, P11544102354053531796.a n = A199944 (n + 1)

end A199944

/-!
# A199945: Number of -n..n arrays x(0..3) of 4 elements with zeroth through 3rd differences all nonzero.

The programs for A199945, there is no canonical definition to state claims against.
-/

/-! ## A199945.P6203383720696406668

`A200167(n+1)+A200040(n+1)`
-/

namespace A199945.P6203383720696406668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200167 (n + 1) + A200040 (n + 1)

end

end A199945.P6203383720696406668

/-! ## A199945.P702875266994435294

`A199943(∑[n+3]+7)`
-/

namespace A199945.P702875266994435294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A199945.P702875266994435294

/-! ## A199945.P8365800679712145898

`A200167(n+1)+A200038(∑[n+3]+7)`
-/

namespace A199945.P8365800679712145898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200167 (n + 1) + A200038 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A199945.P8365800679712145898

/-! ## A199945.P16430944607913355650

`A200165(A141214(n)+7)+A200040(n+1)`
-/

namespace A199945.P16430944607913355650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (A141214 n + 7).toNat + A200040 (n + 1)

end

end A199945.P16430944607913355650

/-! ## A199945.P4809411910829106586

`A200165(A052905(n)+9)+A200040(n+1)`
-/

namespace A199945.P4809411910829106586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (A052905 n + 9).toNat + A200040 (n + 1)

end

end A199945.P4809411910829106586

/-!
# A199946: Number of -n..n arrays x(0..4) of 5 elements with zeroth through 4th differences all nonzero.

The programs for A199946, there is no canonical definition to state claims against.
-/

/-! ## A199946.P18357082516631528326

`A200168(n+1)+A200041(n+1)`
-/

namespace A199946.P18357082516631528326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200168 (n + 1) + A200041 (n + 1)

end

end A199946.P18357082516631528326

/-! ## A199946.P5856139599711437215

`A199943(C(n+5, 2)+5)`
-/

namespace A199946.P5856139599711437215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (Nat.choose (n + 5) 2 + 5)

end

end A199946.P5856139599711437215

/-! ## A199946.P10364881463803313845

`A199943(A167499(n+3))`
-/

namespace A199946.P10364881463803313845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A167499 (n + 3)).toNat

end

end A199946.P10364881463803313845

/-! ## A199946.P2099529683897063404

`A199943(A155212(n)+13)`
-/

namespace A199946.P2099529683897063404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A155212 n + 13).toNat

end

end A199946.P2099529683897063404

/-! ## A199946.P6794340006368087790

`A199943(A056000(n)+15)`
-/

namespace A199946.P6794340006368087790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A056000 n + 15).toNat

end

end A199946.P6794340006368087790

/-!
# A199947: Number of -n..n arrays x(0..5) of 6 elements with zeroth through 5th differences all nonzero.

The programs for A199947, there is no canonical definition to state claims against.
-/

/-! ## A199947.P11436567624114988251

`A200169(n+1)+A200042(n+1)`
-/

namespace A199947.P11436567624114988251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200169 (n + 1) + A200042 (n + 1)

end

end A199947.P11436567624114988251

/-! ## A199947.P10521712995143068827

`A199943(A056115(n)+21)`
-/

namespace A199947.P10521712995143068827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A056115 n + 21).toNat

end

end A199947.P10521712995143068827

/-! ## A199947.P10522156749872220288

`A199943(A167499(n+4)+1)`
-/

namespace A199947.P10522156749872220288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A167499 (n + 4) + 1).toNat

end

end A199947.P10522156749872220288

/-! ## A199947.P2630496491001195609

`A199943(A167614(n+4)+3)`
-/

namespace A199947.P2630496491001195609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A167614 (n + 4) + 3).toNat

end

end A199947.P2630496491001195609

/-! ## A199947.P3687122924325913472

`A199943(A253145(n+4)+6)`
-/

namespace A199947.P3687122924325913472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A253145 (n + 4) + 6).toNat

end

end A199947.P3687122924325913472

/-!
# A199948: Number of -n..n arrays x(0..6) of 7 elements with zeroth through 6th differences all nonzero.

The programs for A199948, there is no canonical definition to state claims against.
-/

/-! ## A199948.P12196865267878892207

`A200170(n+1)+A200043(n+1)`
-/

namespace A199948.P12196865267878892207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200170 (n + 1) + A200043 (n + 1)

end

end A199948.P12196865267878892207

/-! ## A199948.P975296560578763328

`A199943(A056119(n)+28)`
-/

namespace A199948.P975296560578763328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A056119 n + 28).toNat

end

end A199948.P975296560578763328

/-! ## A199948.P15887809283489483079

`A199943(eq[11, A066657(n)])`
-/

namespace A199948.P15887809283489483079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199948.P15887809283489483079

/-! ## A199948.P8950620463191773648

`A199943(A167614(n+5)+4)`
-/

namespace A199948.P8950620463191773648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A167614 (n + 5) + 4).toNat

end

end A199948.P8950620463191773648

/-! ## A199948.P12158818052615316914

`A199943(A000124(n+6)+6)`
-/

namespace A199948.P12158818052615316914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A000124 (n + 6) + 6).toNat

end

end A199948.P12158818052615316914

/-!
# A199968: a(n) = the smallest non-divisor h of n (1

The programs for A199968, there is no canonical definition to state claims against.
-/

/-! ## A199968.P9328428815619108918

`(A346563(n+1)+1)%(n+2)`
-/

namespace A199968.P9328428815619108918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346563 (n + 1) + 1) (n + 2 : ℤ)

end

end A199968.P9328428815619108918

/-! ## A199968.P7385121606591319983

`A007978(n+1)*A157928(n)`
-/

namespace A199968.P7385121606591319983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (n + 1) * A157928 n

end

end A199968.P7385121606591319983

/-! ## A199968.P8914064169611565745

`A007978(n+1)%A036059(n)`
-/

namespace A199968.P8914064169611565745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007978 (n + 1)) (A036059 n)

end

end A199968.P8914064169611565745

/-! ## A199968.P5522942216952313572

`lcm(A007978(n+1), A107393(n))`
-/

namespace A199968.P5522942216952313572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007978 (n + 1)) (A107393 n)

end

end A199968.P5522942216952313572

/-! ## A199968.P12410847987885274035

`and(A007978(n+1), A178615(n+1))`
-/

namespace A199968.P12410847987885274035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007978 (n + 1)) (A178615 (n + 1))

end

end A199968.P12410847987885274035

/-! ## A199968.P5204501188631739018

`and(A007978(n+1), A283651(n))`
-/

namespace A199968.P5204501188631739018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007978 (n + 1)) (A283651 n)

end

end A199968.P5204501188631739018

/-! ## A199968.P14347037052602069704

`and(A007978(n+1), A284485(n))`
-/

namespace A199968.P14347037052602069704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007978 (n + 1)) (A284485 n)

end

end A199968.P14347037052602069704

/-! ## A199968.P14777247992610887554

`and(A007978(n+1), A047859(n))`
-/

namespace A199968.P14777247992610887554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007978 (n + 1)) (A047859 n)

end

end A199968.P14777247992610887554

/-! ## A199968.P11451624947825069035

`and(A007978(n+1), A195858(n))`
-/

namespace A199968.P11451624947825069035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007978 (n + 1)) (A195858 n)

end

end A199968.P11451624947825069035

/-! ## A199968.P15239047904932458102

`and(A007978(n+1), A335560(n+1))`
-/

namespace A199968.P15239047904932458102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007978 (n + 1)) (A335560 (n + 1))

end

end A199968.P15239047904932458102

/-! ## A199968.P8507880856410401139

`and(A007978(n+1), A267685(n))`
-/

namespace A199968.P8507880856410401139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007978 (n + 1)) (A267685 n)

end

end A199968.P8507880856410401139

/-! ## A199968.P6114659405449991539

`and(A007978(n+1), A267886(n))`
-/

namespace A199968.P6114659405449991539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007978 (n + 1)) (A267886 n)

end

end A199968.P6114659405449991539

/-!
# A199969: a(n) = the greatest non-divisor h of n (1 < h < n), or 0 if no such h exists.

The programs for A199969, the canonical program `A199969.P6738852896646059288` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199969 has offset 1).

The definition of A199969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199969.P6738852896646059288

`n-char[1]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199969

/-- `n-char[1]` -/
def P6738852896646059288.Spec : Prop :=
  ∀ n, P6738852896646059288.a n = A199969 (n + 1)

theorem P6738852896646059288.correct : P6738852896646059288.Spec := by
  intro n
  simp only [A199969, Nat.add_sub_cancel]

end A199969

/-!
# A199970: a(n) = the smallest number m with the smallest non-divisor n such that 1

The programs for A199970, there is no canonical definition to state claims against.
-/

/-! ## A199970.P16633366362474554339

`(C(2, n)+1)*A328449(n)`
-/

namespace A199970.P16633366362474554339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 n + 1 : ℤ) * A328449 n

end

end A199970.P16633366362474554339

/-! ## A199970.P14861822252735827624

`A261143(n)*A328449(n)`
-/

namespace A199970.P14861822252735827624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n * A328449 n

end

end A199970.P14861822252735827624

/-! ## A199970.P8503701239858636941

`lcm(A027684(n), A328449(n))`
-/

namespace A199970.P8503701239858636941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027684 n) (A328449 n)

end

end A199970.P8503701239858636941

/-! ## A199970.P18250482417643831293

`A133620(A000040(n+2))*A328449(n)`
-/

namespace A199970.P18250482417643831293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133620 (A000040 (n + 2)).toNat * A328449 n

end

end A199970.P18250482417643831293

/-! ## A199970.P4238398958584402543

`A328449(n)+and(2, A195307(n+1))`
-/

namespace A199970.P4238398958584402543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328449 n + Int.land 2 (A195307 (n + 1))

end

end A199970.P4238398958584402543

/-!
# A199972: a(n) = the sum of GCQ_B(n, k) for 1 <= k <= n (see definition in comments).

The programs for A199972, the canonical program `A199972.P11261720317014425141` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199972 has offset 1).

The definition of A199972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199972.P11261720317014425141

`n²-(1-n)%(a(n-2)+1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199972

/-- `n²-(1-n)%(a(n-2)+1)` -/
def P11261720317014425141.Spec : Prop :=
  ∀ n, P11261720317014425141.a n = A199972 (n + 1)

theorem P11261720317014425141.correct : P11261720317014425141.Spec := by
  intro n
  simp only [A199972, Nat.add_sub_cancel]

end A199972

/-! ## A199972.P16444055660470068742

`n²-(1-n)*a(n-1)%2` with `a(0)=0, a(1)=0`
-/

namespace A199972.P16444055660470068742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n ^ 2 : ℤ) - (1 - (n : ℤ)) * Int.tmod (a (n - 1)) 2

end

end A199972.P16444055660470068742

namespace A199972

/-- `n²-(1-n)*a(n-1)%2` -/
def P16444055660470068742.Spec : Prop :=
  ∀ n, P16444055660470068742.a n = A199972 (n + 1)

end A199972

/-! ## A199972.P2371527739281380397

`n²+n-gcd(n, a(n-1)+2)` with `a(0)=0, a(1)=0`
-/

namespace A199972.P2371527739281380397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n ^ 2 + n : ℤ) - (Int.gcd (n : ℤ) (a (n - 1) + 2) : ℤ)

end

end A199972.P2371527739281380397

namespace A199972

/-- `n²+n-gcd(n, a(n-1)+2)` -/
def P2371527739281380397.Spec : Prop :=
  ∀ n, P2371527739281380397.a n = A199972 (n + 1)

end A199972

/-! ## A199972.P11318083666703093748

`∑[2*n]-A000005(gcd(n+1, a(n-1)))` with `a(0)=0`
-/

namespace A199972.P11318083666703093748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000005 (Int.gcd (n + 1 : ℤ) (a (n - 1)))

end

end A199972.P11318083666703093748

namespace A199972

/-- `∑[2*n]-A000005(gcd(n+1, a(n-1)))` -/
def P11318083666703093748.Spec : Prop :=
  ∀ n, P11318083666703093748.a n = A199972 (n + 1)

end A199972

/-! ## A199972.P626754650566928841

`n²+n-A308628(A008706(n))`
-/

namespace A199972.P626754650566928841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A308628 (A008706 n).toNat

end

end A199972.P626754650566928841

namespace A199972

/-- `n²+n-A308628(A008706(n))` -/
def P626754650566928841.Spec : Prop :=
  ∀ n, P626754650566928841.a n = A199972 (n + 1)

end A199972

/-! ## A199972.P2690528672964936188

`A002265(A273443(n)-A273429(n))`
-/

namespace A199972.P2690528672964936188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A273443 n - A273429 n).toNat

end

end A199972.P2690528672964936188

namespace A199972

/-- `A002265(A273443(n)-A273429(n))` -/
def P2690528672964936188.Spec : Prop :=
  ∀ n, P2690528672964936188.a n = A199972 (n + 1)

end A199972

/-!
# A199975: Multiplicative digital root of n-th prime.

The programs for A199975, there is no canonical definition to state claims against.
-/

/-! ## A199975.P5835484954865893985

`A031347(A000040(n+1))`
-/

namespace A199975.P5835484954865893985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A000040 (n + 1)).toNat

end

end A199975.P5835484954865893985

/-! ## A199975.P17414134087274218131

`A031347(A053666(n+1))`
-/

namespace A199975.P17414134087274218131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A053666 (n + 1)).toNat

end

end A199975.P17414134087274218131

/-! ## A199975.P1257637473560561430

`A031347(p?[comp[n²]])`
-/

namespace A199975.P1257637473560561430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A199975.P1257637473560561430

/-! ## A199975.P13283257195293758974

`A231817(p?[comp[n²]])`
-/

namespace A199975.P13283257195293758974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231817 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A199975.P13283257195293758974

/-! ## A199975.P15324875038936504769

`A031347(A004087(n+1))`
-/

namespace A199975.P15324875038936504769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A004087 (n + 1)).toNat

end

end A199975.P15324875038936504769

/-! ## A199975.P907432117683522221

`A031347(A028906(n+1))`
-/

namespace A199975.P907432117683522221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A028906 (n + 1)).toNat

end

end A199975.P907432117683522221

/-! ## A199975.P4910339315002497941

`A031347(A008578(n+2))`
-/

namespace A199975.P4910339315002497941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A008578 (n + 2)).toNat

end

end A199975.P4910339315002497941

/-! ## A199975.P14887965054957265554

`A031347(A182986(n+2))`
-/

namespace A199975.P14887965054957265554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A182986 (n + 2)).toNat

end

end A199975.P14887965054957265554

/-! ## A199975.P16677985259395143785

`A031347(lt[A107393(n), 0])`
-/

namespace A199975.P16677985259395143785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A199975.P16677985259395143785

/-! ## A199975.P1554394296346397569

`A031347(record[A006530(n+2)])`
-/

namespace A199975.P1554394296346397569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199975.P1554394296346397569

/-! ## A199975.P631798342624807614

`A031347(record[A014963(n+2)])`
-/

namespace A199975.P631798342624807614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199975.P631798342624807614

/-! ## A199975.P1286443638580621137

`A031347(record[A020639(n+2)])`
-/

namespace A199975.P1286443638580621137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199975.P1286443638580621137

/-! ## A199975.P2042346978049990984

`A231817(record[A006530(n+2)])`
-/

namespace A199975.P2042346978049990984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231817 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199975.P2042346978049990984

/-! ## A199975.P9702971179377651440

`A231817(record[A020639(n+2)])`
-/

namespace A199975.P9702971179377651440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231817 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199975.P9702971179377651440

/-! ## A199975.P13577934821512094519

`A031347(A073846(2*(n+1)))`
-/

namespace A199975.P13577934821512094519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A073846 (2 * (n + 1))).toNat

end

end A199975.P13577934821512094519

/-! ## A199975.P2992527393556080604

`A031347(eq[1, A001222(n+1)]+1)`
-/

namespace A199975.P2992527393556080604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A199975.P2992527393556080604

/-! ## A199975.P15327991347083587788

`A031347(eq[1, A010051(n+1)]+1)`
-/

namespace A199975.P15327991347083587788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A199975.P15327991347083587788

/-! ## A199975.P16214944667199065728

`A031347(eq[2, A000005(n+1)]+1)`
-/

namespace A199975.P16214944667199065728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A199975.P16214944667199065728

/-! ## A199975.P12582205841418429248

`A031347(A101989(n+1))`
-/

namespace A199975.P12582205841418429248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A101989 (n + 1)).toNat

end

end A199975.P12582205841418429248

/-! ## A199975.P10999742617314067932

`A031347(A039790(n+1))`
-/

namespace A199975.P10999742617314067932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A039790 (n + 1)).toNat

end

end A199975.P10999742617314067932

/-!
# A199976: Multiplicative digital root of n-th nonprime number.

The programs for A199976, there is no canonical definition to state claims against.
-/

/-! ## A199976.P1804037163358375074

`A031347(A018252(n+1))`
-/

namespace A199976.P1804037163358375074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A018252 (n + 1)).toNat

end

end A199976.P1804037163358375074

/-! ## A199976.P13979583553589042910

`A031347(A165957(n+1))`
-/

namespace A199976.P13979583553589042910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A165957 (n + 1)).toNat

end

end A199976.P13979583553589042910

/-! ## A199976.P6695990250668519134

`A031347(Δ[A051349(n)])`
-/

namespace A199976.P6695990250668519134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (f1 (n + 1) - f1 n).toNat

end

end A199976.P6695990250668519134

/-! ## A199976.P11652013797709407079

`A031347(A141468(n+2))`
-/

namespace A199976.P11652013797709407079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A141468 (n + 2)).toNat

end

end A199976.P11652013797709407079

/-! ## A199976.P3818101895283438868

`A031347(sqrt(A062312(n+1)))`
-/

namespace A199976.P3818101895283438868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ))).toNat

end

end A199976.P3818101895283438868

/-! ## A199976.P15328020911481002991

`A031347(record[A191558(n+1)])`
-/

namespace A199976.P15328020911481002991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199976.P15328020911481002991

/-! ## A199976.P3291973448777744560

`A031347(record[A288469(n+1)])`
-/

namespace A199976.P3291973448777744560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199976.P3291973448777744560

/-! ## A199976.P12302621595970369861

`A031347(A176100(n+2)/2)`
-/

namespace A199976.P12302621595970369861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (SequenceMachineLib.roundAway ((A176100 (n + 2) : ℚ) / 2)).toNat

end

end A199976.P12302621595970369861

/-! ## A199976.P11701081876113537179

`A031347(eq[n, gcd(n, A339579(n+1))])`
-/

namespace A199976.P11701081876113537179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A339579 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A199976.P11701081876113537179

/-! ## A199976.P7544634280784540943

`A031347(A051349(n+1)-A051349(n))`
-/

namespace A199976.P7544634280784540943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A051349 (n + 1) - A051349 n).toNat

end

end A199976.P7544634280784540943

/-! ## A199976.P15608776326249959818

`A031347(eq[n*A339579(n+1), A339579(n+1)])`
-/

namespace A199976.P15608776326249959818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A199976.P15608776326249959818

/-! ## A199976.P17033975106791740223

`A031347(A073846(2*n+1))`
-/

namespace A199976.P17033975106791740223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A073846 (2 * n + 1)).toNat

end

end A199976.P17033975106791740223

/-!
# A199977: Primes whose multiplicative digital root is 0.

The programs for A199977, there is no canonical definition to state claims against.
-/

/-! ## A199977.P15405292008544430743

`A065091(eq[0, A199975(n+1)])`
-/

namespace A199977.P15405292008544430743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199977.P15405292008544430743

/-! ## A199977.P5750945335155836095

`p?[A034048(n+1)]`
-/

namespace A199977.P5750945335155836095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199977.P5750945335155836095

/-! ## A199977.P3682437640498138878

`∩[A000040(n+1), A034048(n+1)]`
-/

namespace A199977.P3682437640498138878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P3682437640498138878

/-! ## A199977.P742370679120045590

`∩[A004139(n+1), A034048(n+1)]`
-/

namespace A199977.P742370679120045590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P742370679120045590

/-! ## A199977.P9230914462027147930

`∩[A006005(n+1), A034048(n+1)]`
-/

namespace A199977.P9230914462027147930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P9230914462027147930

/-! ## A199977.P16668863973925945294

`∩[A008578(n+1), A034048(n+1)]`
-/

namespace A199977.P16668863973925945294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P16668863973925945294

/-! ## A199977.P9280410920904457065

`∩[A033946(n+1), A034048(n+1)]`
-/

namespace A199977.P9280410920904457065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P9280410920904457065

/-! ## A199977.P7094137445427399850

`∩[A034048(n+1), A045319(n+1)]`
-/

namespace A199977.P7094137445427399850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P7094137445427399850

/-! ## A199977.P11191487581573358799

`∩[A034048(n+1), A045344(n+1)]`
-/

namespace A199977.P11191487581573358799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P11191487581573358799

/-! ## A199977.P8563739564504934713

`∩[A034048(n+1), A046022(n+1)]`
-/

namespace A199977.P8563739564504934713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P8563739564504934713

/-! ## A199977.P4027378709505578171

`∩[A034048(n+1), A051948(n+1)]`
-/

namespace A199977.P4027378709505578171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P4027378709505578171

/-! ## A199977.P2896873124691759153

`∩[A034048(n+1), A053813(n+1)]`
-/

namespace A199977.P2896873124691759153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P2896873124691759153

/-! ## A199977.P12857624410850005443

`∩[A034048(n+1), A065091(n+1)]`
-/

namespace A199977.P12857624410850005443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P12857624410850005443

/-! ## A199977.P16828148837855168621

`∩[A034048(n+1), A065396(n+1)]`
-/

namespace A199977.P16828148837855168621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P16828148837855168621

/-! ## A199977.P10901847073976643165

`∩[A034048(n+1), A067126(n+1)]`
-/

namespace A199977.P10901847073976643165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P10901847073976643165

/-! ## A199977.P14101156064272305095

`∩[A034048(n+1), A071621(n+1)]`
-/

namespace A199977.P14101156064272305095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P14101156064272305095

/-! ## A199977.P8100969729206234755

`∩[A034048(n+1), A161346(n+1)]`
-/

namespace A199977.P8100969729206234755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P8100969729206234755

/-! ## A199977.P12022840621248197821

`∩[A161428(n+1), A034048(n+1)]`
-/

namespace A199977.P12022840621248197821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P12022840621248197821

/-! ## A199977.P17215678072411602693

`∩[A034048(n+1), A193339(n+1)]`
-/

namespace A199977.P17215678072411602693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199977.P17215678072411602693

/-! ## A199977.P12137014907318396525

`p?[lt[A031347(n), 1]]`
-/

namespace A199977.P12137014907318396525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A199977.P12137014907318396525

/-!
# A199978: Nonprime numbers whose multiplicative digital root is 0.

The programs for A199978, there is no canonical definition to state claims against.
-/

/-! ## A199978.P6098248734291982229

`filter[A034048(n+2), A005171(#)]`
-/

namespace A199978.P6098248734291982229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A199978.P6098248734291982229

/-! ## A199978.P7976696100936270970

`filter[A034048(n+2), A066247(#)]`
-/

namespace A199978.P7976696100936270970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A199978.P7976696100936270970

/-! ## A199978.P15383329697256546293

`∩[A002808(n+1), A034048(n+1)]`
-/

namespace A199978.P15383329697256546293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199978.P15383329697256546293

/-! ## A199978.P15626826604634389278

`∩[A018252(n+1), A034048(n+1)]`
-/

namespace A199978.P15626826604634389278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199978.P15626826604634389278

/-! ## A199978.P8477995097769927695

`∩[A034048(n+1), A176423(n+1)]`
-/

namespace A199978.P8477995097769927695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199978.P8477995097769927695

/-! ## A199978.P9419815963314342907

`A002808(eq[0, A199976(n+1)])`
-/

namespace A199978.P9419815963314342907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199978.P9419815963314342907

/-! ## A199978.P7927207868921723387

`A056653(eq[0, A199976(n+1)])`
-/

namespace A199978.P7927207868921723387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199978.P7927207868921723387

/-! ## A199978.P5486667138552991903

`A002808(lt[A199976(n+1), 1])`
-/

namespace A199978.P5486667138552991903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199976 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A199978.P5486667138552991903

/-! ## A199978.P18091588142255412444

`A056653(lt[A199976(n+1), 1])`
-/

namespace A199978.P18091588142255412444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199976 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A199978.P18091588142255412444

/-! ## A199978.P12148690181082769122

`∩[A034048(n+1), A056653(n+1)]`
-/

namespace A199978.P12148690181082769122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199978.P12148690181082769122

/-! ## A199978.P13824068930691679426

`∩[A034048(n+1), A065090(n+1)]`
-/

namespace A199978.P13824068930691679426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199978.P13824068930691679426

/-! ## A199978.P15936482755017220251

`∩[A034048(n+1), A171581(n+1)]`
-/

namespace A199978.P15936482755017220251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199978.P15936482755017220251

/-! ## A199978.P10974539264214377051

`lt[A031347(n), A107393(n)]`
-/

namespace A199978.P10974539264214377051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A199978.P10974539264214377051

/-! ## A199978.P16556455046640763666

`record[A191558(A034048(n+2))]`
-/

namespace A199978.P16556455046640763666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A034048 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199978.P16556455046640763666

/-!
# A199979: Nonprime numbers whose multiplicative digital root is 1.

The programs for A199979, there is no canonical definition to state claims against.
-/

/-! ## A199979.P2924691434379201346

`A000042(A179005(n+2))`
-/

namespace A199979.P2924691434379201346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A179005 (n + 2)).toNat

end

end A199979.P2924691434379201346

/-! ## A199979.P10163257024284991633

`record[A000042(n+1)%A036229(n+1)]`
-/

namespace A199979.P10163257024284991633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A036229 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199979.P10163257024284991633

/-! ## A199979.P1814653034592562526

`record[A002275(n+1)%A036229(n+1)]`
-/

namespace A199979.P1814653034592562526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002275 (n + 1)) (A036229 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199979.P1814653034592562526

/-!
# A199980: Primes whose multiplicative digital root is 2.

The programs for A199980, there is no canonical definition to state claims against.
-/

/-! ## A199980.P1295261102910262943

`p?[A034049(n+1)]`
-/

namespace A199980.P1295261102910262943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199980.P1295261102910262943

/-! ## A199980.P11998866808521246519

`∩[A034049(n+1), A117159(n+1)]`
-/

namespace A199980.P11998866808521246519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P11998866808521246519

/-! ## A199980.P14796828525622280394

`∩[A034049(n+1), A386323(n+1)]`
-/

namespace A199980.P14796828525622280394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P14796828525622280394

/-! ## A199980.P11221494314234487377

`∩[A034049(n+1), A038613(n+1)]`
-/

namespace A199980.P11221494314234487377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P11221494314234487377

/-! ## A199980.P1001403962603084125

`∩[A034049(n+1), A038618(n+1)]`
-/

namespace A199980.P1001403962603084125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P1001403962603084125

/-! ## A199980.P11634115521054891566

`record[A020639(A034049(n+4))]`
-/

namespace A199980.P11634115521054891566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034049 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199980.P11634115521054891566

/-! ## A199980.P12058261914075765614

`filter[A034049(n+1), A010051(#)]`
-/

namespace A199980.P12058261914075765614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A199980.P12058261914075765614

/-! ## A199980.P13058561329125518934

`A000040(eq[2, A199975(n+1)]+1)`
-/

namespace A199980.P13058561329125518934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A199980.P13058561329125518934

/-! ## A199980.P15158762020915308598

`A008578(eq[2, A199975(n+1)]+2)`
-/

namespace A199980.P15158762020915308598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A199980.P15158762020915308598

/-! ## A199980.P13470176154916748717

`∩[A000040(n+1), A034049(n+1)]`
-/

namespace A199980.P13470176154916748717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P13470176154916748717

/-! ## A199980.P1244031414944328494

`∩[A008578(n+1), A034049(n+1)]`
-/

namespace A199980.P1244031414944328494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P1244031414944328494

/-! ## A199980.P850811508729347601

`∩[A034049(n+1), A045319(n+1)]`
-/

namespace A199980.P850811508729347601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P850811508729347601

/-! ## A199980.P3404118055363058872

`∩[A034049(n+1), A045344(n+1)]`
-/

namespace A199980.P3404118055363058872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P3404118055363058872

/-! ## A199980.P14610211808424816146

`∩[A034049(n+1), A046022(n+1)]`
-/

namespace A199980.P14610211808424816146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P14610211808424816146

/-! ## A199980.P151194004723718478

`∩[A034049(n+1), A051948(n+1)]`
-/

namespace A199980.P151194004723718478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P151194004723718478

/-! ## A199980.P18307605304283033775

`∩[A034049(n+1), A062972(n+1)]`
-/

namespace A199980.P18307605304283033775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P18307605304283033775

/-! ## A199980.P13768481671194384993

`∩[A034049(n+1), A066050(n+1)]`
-/

namespace A199980.P13768481671194384993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P13768481671194384993

/-! ## A199980.P12922302244471800780

`∩[A034049(n+1), A067126(n+1)]`
-/

namespace A199980.P12922302244471800780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P12922302244471800780

/-! ## A199980.P9635494044270233032

`∩[A034049(n+1), A067133(n+1)]`
-/

namespace A199980.P9635494044270233032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P9635494044270233032

/-! ## A199980.P2772709295535412707

`∩[A034049(n+1), A097605(n+1)]`
-/

namespace A199980.P2772709295535412707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199980.P2772709295535412707

/-!
# A199981: Composite numbers whose multiplicative digital root is 2.

The programs for A199981, there is no canonical definition to state claims against.
-/

/-! ## A199981.P7325952966955480441

`filter[A034049(n+1), A005171(#)]`
-/

namespace A199981.P7325952966955480441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A199981.P7325952966955480441

/-! ## A199981.P2642143902370157919

`filter[A034049(n+1), A066247(#)]`
-/

namespace A199981.P2642143902370157919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A199981.P2642143902370157919

/-! ## A199981.P4554150447657108158

`filter[A034049(n+1), A202238(#)]`
-/

namespace A199981.P4554150447657108158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A199981.P4554150447657108158

/-! ## A199981.P10687465059449272250

`∩[A002808(n+1), A034049(n+1)]`
-/

namespace A199981.P10687465059449272250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199981.P10687465059449272250

/-! ## A199981.P4764985272732940277

`∩[A018252(n+1), A034049(n+1)]`
-/

namespace A199981.P4764985272732940277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199981.P4764985272732940277

/-! ## A199981.P6565003311740363705

`∩[A034049(n+1), A141468(n+1)]`
-/

namespace A199981.P6565003311740363705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199981.P6565003311740363705

/-! ## A199981.P621484462745921144

`∩[A034049(n+1), A259315(n+1)]`
-/

namespace A199981.P621484462745921144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199981.P621484462745921144

/-! ## A199981.P6076844514149419680

`∩[A034049(n+1), A062973(n+1)]`
-/

namespace A199981.P6076844514149419680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199981.P6076844514149419680

/-! ## A199981.P9927024931046893342

`∩[A034049(n+1), A343311(n+1)]`
-/

namespace A199981.P9927024931046893342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199981.P9927024931046893342

/-! ## A199981.P11617686334976723889

`∩[A034049(n+1), A387319(n+1)]`
-/

namespace A199981.P11617686334976723889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199981.P11617686334976723889

/-! ## A199981.P14066349279413322869

`A002808(eq[2, A199976(n+1)])`
-/

namespace A199981.P14066349279413322869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199981.P14066349279413322869

/-! ## A199981.P5899868038203619636

`A056653(eq[2, A199976(n+1)])`
-/

namespace A199981.P5899868038203619636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199981.P5899868038203619636

/-! ## A199981.P9030631058361718107

`∩[A034049(n+1), A056653(n+1)]`
-/

namespace A199981.P9030631058361718107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199981.P9030631058361718107

/-! ## A199981.P15927450964827060878

`∩[A034049(n+1), A176423(n+1)]`
-/

namespace A199981.P15927450964827060878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199981.P15927450964827060878

/-! ## A199981.P17663365211792371901

`eq[2, A055671(n)+A031347(n)]`
-/

namespace A199981.P17663365211792371901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n + A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199981.P17663365211792371901

/-! ## A199981.P15909156183719708091

`eq[2, A055672(n)+A031347(n)]`
-/

namespace A199981.P15909156183719708091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n + A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199981.P15909156183719708091

/-! ## A199981.P8794898415260672430

`lt[(2-A031347(n))², A107393(n)]`
-/

namespace A199981.P8794898415260672430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A031347 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A199981.P8794898415260672430

/-! ## A199981.P13396830771129424588

`eq[2, A031347(A191558(n+1))]+1`
-/

namespace A199981.P13396830771129424588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A191558 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A199981.P13396830771129424588

/-!
# A199982: Composite numbers with digital product = 3.

The programs for A199982, there is no canonical definition to state claims against.
-/

/-! ## A199982.P4311017572662613648

`filter[A034050(n+1), A005171(#)]`
-/

namespace A199982.P4311017572662613648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A199982.P4311017572662613648

/-!
# A199983: Primes whose multiplicative digital root is 4.

The programs for A199983, the canonical program `A199983.P4289186587475358336` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199983 has offset 1).

The definition of A199983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199983.P4289186587475358336

`p?[A034051(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A199983

/-- `p?[A034051(n+1)]` -/
def P4289186587475358336.Spec : Prop :=
  ∀ n, P4289186587475358336.a n = A199983 (n + 1)

theorem P4289186587475358336.correct : P4289186587475358336.Spec := by
  intro n
  simp only [A199983, Nat.add_sub_cancel]

end A199983

/-! ## A199983.P12615280303111945708

`p?[record[A034051(A292266(n))]]`
-/

namespace A199983.P12615280303111945708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199983.P12615280303111945708

namespace A199983

/-- `p?[record[A034051(A292266(n))]]` -/
def P12615280303111945708.Spec : Prop :=
  ∀ n, P12615280303111945708.a n = A199983 (n + 1)

end A199983

/-! ## A199983.P9180432009152226809

`∩[A034051(n+1), A386323(n+1)]`
-/

namespace A199983.P9180432009152226809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P9180432009152226809

namespace A199983

/-- `∩[A034051(n+1), A386323(n+1)]` -/
def P9180432009152226809.Spec : Prop :=
  ∀ n, (P9180432009152226809.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P292768286687006180

`∩[A034051(n+1), A038613(n+1)]`
-/

namespace A199983.P292768286687006180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P292768286687006180

namespace A199983

/-- `∩[A034051(n+1), A038613(n+1)]` -/
def P292768286687006180.Spec : Prop :=
  ∀ n, (P292768286687006180.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P17197924589686227686

`∩[A034051(n+1), A038618(n+1)]`
-/

namespace A199983.P17197924589686227686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P17197924589686227686

namespace A199983

/-- `∩[A034051(n+1), A038618(n+1)]` -/
def P17197924589686227686.Spec : Prop :=
  ∀ n, (P17197924589686227686.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P2126035228716485437

`filter[A034051(n+1), A010051(#)]`
-/

namespace A199983.P2126035228716485437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A199983.P2126035228716485437

namespace A199983

/-- `filter[A034051(n+1), A010051(#)]` -/
def P2126035228716485437.Spec : Prop :=
  ∀ n, P2126035228716485437.a n = A199983 (n + 1)

end A199983

/-! ## A199983.P3836155997064528314

`filter[A034051(n+2), A355937(#)]`
-/

namespace A199983.P3836155997064528314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A199983.P3836155997064528314

namespace A199983

/-- `filter[A034051(n+2), A355937(#)]` -/
def P3836155997064528314.Spec : Prop :=
  ∀ n, P3836155997064528314.a n = A199983 (n + 1)

end A199983

/-! ## A199983.P10139778659887339721

`∩[A000040(n+1), A034051(n+1)]`
-/

namespace A199983.P10139778659887339721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P10139778659887339721

namespace A199983

/-- `∩[A000040(n+1), A034051(n+1)]` -/
def P10139778659887339721.Spec : Prop :=
  ∀ n, (P10139778659887339721.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P15134545990118844276

`∩[A004139(n+1), A034051(n+1)]`
-/

namespace A199983.P15134545990118844276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P15134545990118844276

namespace A199983

/-- `∩[A004139(n+1), A034051(n+1)]` -/
def P15134545990118844276.Spec : Prop :=
  ∀ n, (P15134545990118844276.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P6763285191255506490

`∩[A006005(n+1), A034051(n+1)]`
-/

namespace A199983.P6763285191255506490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P6763285191255506490

namespace A199983

/-- `∩[A006005(n+1), A034051(n+1)]` -/
def P6763285191255506490.Spec : Prop :=
  ∀ n, (P6763285191255506490.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P5419829656402406085

`∩[A008578(n+1), A034051(n+1)]`
-/

namespace A199983.P5419829656402406085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P5419829656402406085

namespace A199983

/-- `∩[A008578(n+1), A034051(n+1)]` -/
def P5419829656402406085.Spec : Prop :=
  ∀ n, (P5419829656402406085.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P7031778453866270408

`∩[A033946(n+1), A034051(n+1)]`
-/

namespace A199983.P7031778453866270408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P7031778453866270408

namespace A199983

/-- `∩[A033946(n+1), A034051(n+1)]` -/
def P7031778453866270408.Spec : Prop :=
  ∀ n, (P7031778453866270408.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P17662015227014164039

`∩[A034051(n+1), A045319(n+1)]`
-/

namespace A199983.P17662015227014164039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P17662015227014164039

namespace A199983

/-- `∩[A034051(n+1), A045319(n+1)]` -/
def P17662015227014164039.Spec : Prop :=
  ∀ n, (P17662015227014164039.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P8708986878252692764

`∩[A034051(n+1), A045344(n+1)]`
-/

namespace A199983.P8708986878252692764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P8708986878252692764

namespace A199983

/-- `∩[A034051(n+1), A045344(n+1)]` -/
def P8708986878252692764.Spec : Prop :=
  ∀ n, (P8708986878252692764.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P10875283534009004329

`∩[A034051(n+1), A050150(n+1)]`
-/

namespace A199983.P10875283534009004329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P10875283534009004329

namespace A199983

/-- `∩[A034051(n+1), A050150(n+1)]` -/
def P10875283534009004329.Spec : Prop :=
  ∀ n, (P10875283534009004329.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P1642744421526735709

`∩[A034051(n+1), A053813(n+1)]`
-/

namespace A199983.P1642744421526735709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P1642744421526735709

namespace A199983

/-- `∩[A034051(n+1), A053813(n+1)]` -/
def P1642744421526735709.Spec : Prop :=
  ∀ n, (P1642744421526735709.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P1894437821159636659

`∩[A034051(n+1), A060634(n+1)]`
-/

namespace A199983.P1894437821159636659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P1894437821159636659

namespace A199983

/-- `∩[A034051(n+1), A060634(n+1)]` -/
def P1894437821159636659.Spec : Prop :=
  ∀ n, (P1894437821159636659.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P3834642897834092094

`∩[A034051(n+1), A062090(n+1)]`
-/

namespace A199983.P3834642897834092094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P3834642897834092094

namespace A199983

/-- `∩[A034051(n+1), A062090(n+1)]` -/
def P3834642897834092094.Spec : Prop :=
  ∀ n, (P3834642897834092094.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P13035209517280428300

`∩[A034051(n+1), A065091(n+1)]`
-/

namespace A199983.P13035209517280428300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P13035209517280428300

namespace A199983

/-- `∩[A034051(n+1), A065091(n+1)]` -/
def P13035209517280428300.Spec : Prop :=
  ∀ n, (P13035209517280428300.a n : ℤ) = A199983 (n + 1)

end A199983

/-! ## A199983.P1823073687918527735

`∩[A034051(n+1), A065396(n+1)]`
-/

namespace A199983.P1823073687918527735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199983.P1823073687918527735

namespace A199983

/-- `∩[A034051(n+1), A065396(n+1)]` -/
def P1823073687918527735.Spec : Prop :=
  ∀ n, (P1823073687918527735.a n : ℤ) = A199983 (n + 1)

end A199983

/-!
# A199984: Composite numbers whose multiplicative digital root is 4.

The programs for A199984, the canonical program `A199984.P4081988040001390195` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199984 has offset 1).

The definition of A199984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199984.P4081988040001390195

`filter[A034051(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A199984

/-- `filter[A034051(n+1), A005171(#)]` -/
def P4081988040001390195.Spec : Prop :=
  ∀ n, P4081988040001390195.a n = A199984 (n + 1)

theorem P4081988040001390195.correct : P4081988040001390195.Spec := by
  intro n
  simp only [A199984, Nat.add_sub_cancel]

end A199984

/-! ## A199984.P10983840753035073731

`filter[A034051(n+1), A066247(#)]`
-/

namespace A199984.P10983840753035073731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A199984.P10983840753035073731

namespace A199984

/-- `filter[A034051(n+1), A066247(#)]` -/
def P10983840753035073731.Spec : Prop :=
  ∀ n, P10983840753035073731.a n = A199984 (n + 1)

end A199984

/-! ## A199984.P16390173118458136516

`∩[A002808(n+1), A034051(n+1)]`
-/

namespace A199984.P16390173118458136516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199984.P16390173118458136516

namespace A199984

/-- `∩[A002808(n+1), A034051(n+1)]` -/
def P16390173118458136516.Spec : Prop :=
  ∀ n, (P16390173118458136516.a n : ℤ) = A199984 (n + 1)

end A199984

/-! ## A199984.P18094288822217465924

`∩[A018252(n+1), A034051(n+1)]`
-/

namespace A199984.P18094288822217465924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199984.P18094288822217465924

namespace A199984

/-- `∩[A018252(n+1), A034051(n+1)]` -/
def P18094288822217465924.Spec : Prop :=
  ∀ n, (P18094288822217465924.a n : ℤ) = A199984 (n + 1)

end A199984

/-! ## A199984.P5614552321542078186

`∩[A034051(n+1), A141468(n+1)]`
-/

namespace A199984.P5614552321542078186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199984.P5614552321542078186

namespace A199984

/-- `∩[A034051(n+1), A141468(n+1)]` -/
def P5614552321542078186.Spec : Prop :=
  ∀ n, (P5614552321542078186.a n : ℤ) = A199984 (n + 1)

end A199984

/-! ## A199984.P4379642518731691946

`∩[A034051(n+1), A259315(n+1)]`
-/

namespace A199984.P4379642518731691946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199984.P4379642518731691946

namespace A199984

/-- `∩[A034051(n+1), A259315(n+1)]` -/
def P4379642518731691946.Spec : Prop :=
  ∀ n, (P4379642518731691946.a n : ℤ) = A199984 (n + 1)

end A199984

/-! ## A199984.P4623281227834151355

`A002808(eq[4, A199976(n+1)])`
-/

namespace A199984.P4623281227834151355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199984.P4623281227834151355

namespace A199984

/-- `A002808(eq[4, A199976(n+1)])` -/
def P4623281227834151355.Spec : Prop :=
  ∀ n, P4623281227834151355.a n = A199984 (n + 1)

end A199984

/-! ## A199984.P157589609347965440

`∩[A034051(n+1), A065090(n+1)]`
-/

namespace A199984.P157589609347965440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199984.P157589609347965440

namespace A199984

/-- `∩[A034051(n+1), A065090(n+1)]` -/
def P157589609347965440.Spec : Prop :=
  ∀ n, (P157589609347965440.a n : ℤ) = A199984 (n + 1)

end A199984

/-! ## A199984.P1447796648768692987

`∩[A034051(n+1), A171581(n+1)]`
-/

namespace A199984.P1447796648768692987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199984.P1447796648768692987

namespace A199984

/-- `∩[A034051(n+1), A171581(n+1)]` -/
def P1447796648768692987.Spec : Prop :=
  ∀ n, (P1447796648768692987.a n : ℤ) = A199984 (n + 1)

end A199984

/-! ## A199984.P13604665851160718194

`∩[A034051(n+1), A173905(n+1)]`
-/

namespace A199984.P13604665851160718194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199984.P13604665851160718194

namespace A199984

/-- `∩[A034051(n+1), A173905(n+1)]` -/
def P13604665851160718194.Spec : Prop :=
  ∀ n, (P13604665851160718194.a n : ℤ) = A199984 (n + 1)

end A199984

/-! ## A199984.P4303038633328787958

`record[A191558(A034051(n+1))]`
-/

namespace A199984.P4303038633328787958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A034051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199984.P4303038633328787958

namespace A199984

/-- `record[A191558(A034051(n+1))]` -/
def P4303038633328787958.Spec : Prop :=
  ∀ n, P4303038633328787958.a n = A199984 (n + 1)

end A199984

/-! ## A199984.P16423367577280366545

`eq[4, A055672(n)+A031347(n)]`
-/

namespace A199984.P16423367577280366545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n + A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199984.P16423367577280366545

namespace A199984

/-- `eq[4, A055672(n)+A031347(n)]` -/
def P16423367577280366545.Spec : Prop :=
  ∀ n, (P16423367577280366545.a n : ℤ) = A199984 (n + 1)

end A199984

/-! ## A199984.P8920236837470794946

`eq[(A055671(n)+2)², A031347(n)]`
-/

namespace A199984.P8920236837470794946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055671 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199984.P8920236837470794946

namespace A199984

/-- `eq[(A055671(n)+2)², A031347(n)]` -/
def P8920236837470794946.Spec : Prop :=
  ∀ n, (P8920236837470794946.a n : ℤ) = A199984 (n + 1)

end A199984

/-!
# A199985: Numbers with digital product = 5.

The programs for A199985, the canonical program `A199985.P15200555582612975294` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199985 has offset 1).

The definition of A199985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199985.P15200555582612975294

`2*A034050(n+1)-A131664(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A199985

/-- `2*A034050(n+1)-A131664(n+1)` -/
def P15200555582612975294.Spec : Prop :=
  ∀ n, P15200555582612975294.a n = A199985 (n + 1)

theorem P15200555582612975294.correct : P15200555582612975294.Spec := by
  intro n
  simp only [A199985, Nat.add_sub_cancel]

end A199985

/-! ## A199985.P15520225168914901660

`A034050(n+1)+2*A011557(A002262(n))`
-/

namespace A199985.P15520225168914901660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034050 (n + 1) + 2 * A011557 (A002262 n).toNat

end

end A199985.P15520225168914901660

namespace A199985

/-- `A034050(n+1)+2*A011557(A002262(n))` -/
def P15520225168914901660.Spec : Prop :=
  ∀ n, P15520225168914901660.a n = A199985 (n + 1)

end A199985

/-! ## A199985.P12978721446632958014

`(A034054(n+1)+A034050(n+1))/2`
-/

namespace A199985.P12978721446632958014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034054 (n + 1) + A034050 (n + 1) : ℚ) / 2

end

end A199985.P12978721446632958014

namespace A199985

/-- `(A034054(n+1)+A034050(n+1))/2` -/
def P12978721446632958014.Spec : Prop :=
  ∀ n, P12978721446632958014.a n = (A199985 (n + 1) : ℚ)

end A199985

/-! ## A199985.P2330274154888346670

`A034050(n+1)+2*A007088(A059268(n))`
-/

namespace A199985.P2330274154888346670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034050 (n + 1) + 2 * A007088 (A059268 n).toNat

end

end A199985.P2330274154888346670

namespace A199985

/-- `A034050(n+1)+2*A007088(A059268(n))` -/
def P2330274154888346670.Spec : Prop :=
  ∀ n, P2330274154888346670.a n = A199985 (n + 1)

end A199985

/-! ## A199985.P4874589333470034329

`A276037(A099628(n+1))`
-/

namespace A199985.P4874589333470034329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (A099628 (n + 1)).toNat

end

end A199985.P4874589333470034329

namespace A199985

/-- `A276037(A099628(n+1))` -/
def P4874589333470034329.Spec : Prop :=
  ∀ n, P4874589333470034329.a n = A199985 (n + 1)

end A199985

/-! ## A199985.P7953716489464508297

`A276037(record[A038558(n+1)])`
-/

namespace A199985.P7953716489464508297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199985.P7953716489464508297

namespace A199985

/-- `A276037(record[A038558(n+1)])` -/
def P7953716489464508297.Spec : Prop :=
  ∀ n, P7953716489464508297.a n = A199985 (n + 1)

end A199985

/-! ## A199985.P11634157476476047382

`A276037(A018900(n+1)-1)`
-/

namespace A199985.P11634157476476047382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (A018900 (n + 1) - 1).toNat

end

end A199985.P11634157476476047382

namespace A199985

/-- `A276037(A018900(n+1)-1)` -/
def P11634157476476047382.Spec : Prop :=
  ∀ n, P11634157476476047382.a n = A199985 (n + 1)

end A199985

/-! ## A199985.P1569049029511386217

`A276037(record[A006068(A004755(n+1))])`
-/

namespace A199985.P1569049029511386217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A004755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199985.P1569049029511386217

namespace A199985

/-- `A276037(record[A006068(A004755(n+1))])` -/
def P1569049029511386217.Spec : Prop :=
  ∀ n, P1569049029511386217.a n = A199985 (n + 1)

end A199985

/-!
# A199986: Numbers with digital product = 2.

The programs for A199986, the canonical program `A199986.P499890319884036768` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199986 has offset 1).

The definition of A199986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199986.P499890319884036768

`record[A071762(A061579(n+1))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A199986

/-- `record[A071762(A061579(n+1))]` -/
def P499890319884036768.Spec : Prop :=
  ∀ n, P499890319884036768.a n = A199986 (n + 1)

theorem P499890319884036768.correct : P499890319884036768.Spec := by
  intro n
  simp only [A199986, Nat.add_sub_cancel]

end A199986

/-! ## A199986.P12404882036392572897

`(A131664(n+1)+A034050(n+1))/2`
-/

namespace A199986.P12404882036392572897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131664 (n + 1) + A034050 (n + 1) : ℚ) / 2

end

end A199986.P12404882036392572897

namespace A199986

/-- `(A131664(n+1)+A034050(n+1))/2` -/
def P12404882036392572897.Spec : Prop :=
  ∀ n, P12404882036392572897.a n = (A199986 (n + 1) : ℚ)

end A199986

/-! ## A199986.P15211678335383780062

`A131664(n+1)+A011557(A002262(n))`
-/

namespace A199986.P15211678335383780062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (n + 1) + A011557 (A002262 n).toNat

end

end A199986.P15211678335383780062

namespace A199986

/-- `A131664(n+1)+A011557(A002262(n))` -/
def P15211678335383780062.Spec : Prop :=
  ∀ n, P15211678335383780062.a n = A199986 (n + 1)

end A199986

/-! ## A199986.P16142774004744441011

`A034050(n+1)-A011557(A002262(n))`
-/

namespace A199986.P16142774004744441011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034050 (n + 1) - A011557 (A002262 n).toNat

end

end A199986.P16142774004744441011

namespace A199986

/-- `A034050(n+1)-A011557(A002262(n))` -/
def P16142774004744441011.Spec : Prop :=
  ∀ n, P16142774004744441011.a n = A199986 (n + 1)

end A199986

/-! ## A199986.P9743140724567353676

`A071762(A038722(n+1)+A002024(n+1))`
-/

namespace A199986.P9743140724567353676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A199986.P9743140724567353676

namespace A199986

/-- `A071762(A038722(n+1)+A002024(n+1))` -/
def P9743140724567353676.Spec : Prop :=
  ∀ n, P9743140724567353676.a n = A199986 (n + 1)

end A199986

/-! ## A199986.P15805919494338943572

`A034050(n+1)-A007088(A059268(n))`
-/

namespace A199986.P15805919494338943572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034050 (n + 1) - A007088 (A059268 n).toNat

end

end A199986.P15805919494338943572

namespace A199986

/-- `A034050(n+1)-A007088(A059268(n))` -/
def P15805919494338943572.Spec : Prop :=
  ∀ n, P15805919494338943572.a n = A199986 (n + 1)

end A199986

/-! ## A199986.P14881430093270895617

`A007931(A099628(n+1))`
-/

namespace A199986.P14881430093270895617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A099628 (n + 1)).toNat

end

end A199986.P14881430093270895617

namespace A199986

/-- `A007931(A099628(n+1))` -/
def P14881430093270895617.Spec : Prop :=
  ∀ n, P14881430093270895617.a n = A199986 (n + 1)

end A199986

/-! ## A199986.P13970367924626521064

`A007931(record[A038558(n+1)])`
-/

namespace A199986.P13970367924626521064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199986.P13970367924626521064

namespace A199986

/-- `A007931(record[A038558(n+1)])` -/
def P13970367924626521064.Spec : Prop :=
  ∀ n, P13970367924626521064.a n = A199986 (n + 1)

end A199986

/-! ## A199986.P6105419082413939929

`A007931(eq[2, A000120(n+1)])`
-/

namespace A199986.P6105419082413939929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199986.P6105419082413939929

namespace A199986

/-- `A007931(eq[2, A000120(n+1)])` -/
def P6105419082413939929.Spec : Prop :=
  ∀ n, P6105419082413939929.a n = A199986 (n + 1)

end A199986

/-! ## A199986.P2400119152525191685

`A007931(eq[2, A273126(n+1)])`
-/

namespace A199986.P2400119152525191685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199986.P2400119152525191685

namespace A199986

/-- `A007931(eq[2, A273126(n+1)])` -/
def P2400119152525191685.Spec : Prop :=
  ∀ n, P2400119152525191685.a n = A199986 (n + 1)

end A199986

/-!
# A199987: Numbers with digital product = 4.

The programs for A199987, there is no canonical definition to state claims against.
-/

/-! ## A199987.P5398417550156288165

`∩[A034051(n+1), A050627(n+1)]`
-/

namespace A199987.P5398417550156288165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199987.P5398417550156288165

/-! ## A199987.P3579404137535928429

`∩[A034051(n+1), A090274(n+1)]`
-/

namespace A199987.P3579404137535928429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199987.P3579404137535928429

/-! ## A199987.P307126512557946549

`∩[A028846(n+1), A034051(n+1)]`
-/

namespace A199987.P307126512557946549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199987.P307126512557946549

/-! ## A199987.P158859332599485221

`A007091(eq[4, A309956(n)])`
-/

namespace A199987.P158859332599485221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199987.P158859332599485221

/-! ## A199987.P1485389150036903550

`∩[A028846(n+1), A051806(n+1)]`
-/

namespace A199987.P1485389150036903550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199987.P1485389150036903550

/-! ## A199987.P6957081772309741711

`∩[A034051(n+1), A050626(n+1)]`
-/

namespace A199987.P6957081772309741711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199987.P6957081772309741711

/-! ## A199987.P7265958557615258259

`∩[A050627(n+1), A051806(n+1)]`
-/

namespace A199987.P7265958557615258259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199987.P7265958557615258259

/-! ## A199987.P12756628839804817629

`∩[A051806(n+1), A083114(n+1)]`
-/

namespace A199987.P12756628839804817629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199987.P12756628839804817629

/-! ## A199987.P10738711537967641490

`∩[A051806(n+1), A090274(n+1)]`
-/

namespace A199987.P10738711537967641490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199987.P10738711537967641490

/-! ## A199987.P5340426701959202615

`∩[A034051(n+1), A245017(n+1)]`
-/

namespace A199987.P5340426701959202615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199987.P5340426701959202615

/-!
# A199988: Numbers whose product of digits is 6.

The programs for A199988, there is no canonical definition to state claims against.
-/

/-! ## A199988.P18348525338011439386

`∩[A245383(n+1), A276038(n+1)]`
-/

namespace A199988.P18348525338011439386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199988.P18348525338011439386

/-! ## A199988.P8644168943226336939

`∩[A034053(n+1), A276038(n+1)]`
-/

namespace A199988.P8644168943226336939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199988.P8644168943226336939

/-! ## A199988.P2859812266942747136

`∩[A089377(n+1), A276038(n+1)]`
-/

namespace A199988.P2859812266942747136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199988.P2859812266942747136

/-! ## A199988.P17716645600668341337

`∩[A051808(n+1), A276038(n+1)]`
-/

namespace A199988.P17716645600668341337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199988.P17716645600668341337

/-! ## A199988.P17622983003937811872

`∩[A244607(n+1), A276038(n+1)]`
-/

namespace A199988.P17622983003937811872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199988.P17622983003937811872

/-!
# A199989: Numbers with digital product = 8.

The programs for A199989, the canonical program `A199989.P7343172023949467702` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199989 has offset 1).

The definition of A199989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199989.P5380113253095076281

`∩[A028890(n+1), A034055(n+1)]`
-/

namespace A199989.P5380113253095076281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199989.P5380113253095076281

namespace A199989

/-- `∩[A028890(n+1), A034055(n+1)]` -/
def P5380113253095076281.Spec : Prop :=
  ∀ n, (P5380113253095076281.a n : ℤ) = A199989 (n + 1)

end A199989

/-! ## A199989.P7343172023949467702

`∩[A028846(n+1), A081989(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A199989

/-- `∩[A028846(n+1), A081989(n+1)]` -/
def P7343172023949467702.Spec : Prop :=
  ∀ n, (P7343172023949467702.a n : ℤ) = A199989 (n + 1)

theorem P7343172023949467702.correct : P7343172023949467702.Spec := by
  intro n
  simp only [A199989, Nat.add_sub_cancel]

end A199989

/-! ## A199989.P10258642892005021483

`∩[A062372(n+1), A081989(n+1)]`
-/

namespace A199989.P10258642892005021483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199989.P10258642892005021483

namespace A199989

/-- `∩[A062372(n+1), A081989(n+1)]` -/
def P10258642892005021483.Spec : Prop :=
  ∀ n, (P10258642892005021483.a n : ℤ) = A199989 (n + 1)

end A199989

/-! ## A199989.P12002541934243901341

`∩[A081989(n+1), A284324(n+1)]`
-/

namespace A199989.P12002541934243901341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199989.P12002541934243901341

namespace A199989

/-- `∩[A081989(n+1), A284324(n+1)]` -/
def P12002541934243901341.Spec : Prop :=
  ∀ n, (P12002541934243901341.a n : ℤ) = A199989 (n + 1)

end A199989

/-! ## A199989.P11821558747838182901

`∩[A028890(n+1), A051810(n+1)]`
-/

namespace A199989.P11821558747838182901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199989.P11821558747838182901

namespace A199989

/-- `∩[A028890(n+1), A051810(n+1)]` -/
def P11821558747838182901.Spec : Prop :=
  ∀ n, (P11821558747838182901.a n : ℤ) = A199989 (n + 1)

end A199989

/-! ## A199989.P13889692831211513866

`∩[A062372(n+1), A244607(n+1)]`
-/

namespace A199989.P13889692831211513866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199989.P13889692831211513866

namespace A199989

/-- `∩[A062372(n+1), A244607(n+1)]` -/
def P13889692831211513866.Spec : Prop :=
  ∀ n, (P13889692831211513866.a n : ℤ) = A199989 (n + 1)

end A199989

/-! ## A199989.P16187281156468682407

`∩[A244607(n+1), A284324(n+1)]`
-/

namespace A199989.P16187281156468682407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199989.P16187281156468682407

namespace A199989

/-- `∩[A244607(n+1), A284324(n+1)]` -/
def P16187281156468682407.Spec : Prop :=
  ∀ n, (P16187281156468682407.a n : ℤ) = A199989 (n + 1)

end A199989

/-!
# A199990: Numbers with digital product = 10.

The programs for A199990, there is no canonical definition to state claims against.
-/

/-! ## A199990.P11641730006195559243

`∩[A245383(n+1), A328560(n+1)]`
-/

namespace A199990.P11641730006195559243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199990.P11641730006195559243

/-! ## A199990.P12117591620883541295

`∩[A039412(n+1), A245383(n+1)]`
-/

namespace A199990.P12117591620883541295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199990.P12117591620883541295

/-! ## A199990.P8985105287637958454

`A007093(eq[10, A309958(n)])`
-/

namespace A199990.P8985105287637958454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199990.P8985105287637958454

/-! ## A199990.P5912681662973222969

`∩[A043509(n+1), A328560(n+1)]`
-/

namespace A199990.P5912681662973222969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199990.P5912681662973222969

/-! ## A199990.P5511367818875921364

`eq[10, abs(A187844(n))]`
-/

namespace A199990.P5511367818875921364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199990.P5511367818875921364

/-!
# A199991: Nonprime numbers whose multiplicative persistence is 1.

The programs for A199991, there is no canonical definition to state claims against.
-/

/-! ## A199991.P438011757645013408

`filter[A046510(n+1), A005171(#)]`
-/

namespace A199991.P438011757645013408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A199991.P438011757645013408

/-! ## A199991.P3103341543412513171

`filter[A046510(n+1), A066247(#)]`
-/

namespace A199991.P3103341543412513171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A199991.P3103341543412513171

/-! ## A199991.P9680327146727601407

`∩[A002808(n+1), A046510(n+1)]`
-/

namespace A199991.P9680327146727601407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199991.P9680327146727601407

/-! ## A199991.P509043234296900494

`∩[A018252(n+1), A046510(n+1)]`
-/

namespace A199991.P509043234296900494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199991.P509043234296900494

/-! ## A199991.P5967542581749960036

`∩[A046510(n+1), A141468(n+1)]`
-/

namespace A199991.P5967542581749960036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199991.P5967542581749960036

/-! ## A199991.P9083462106854251685

`∩[A046510(n+1), A056653(n+1)]`
-/

namespace A199991.P9083462106854251685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199991.P9083462106854251685

/-! ## A199991.P1511504422554627398

`∩[A046510(n+1), A065090(n+1)]`
-/

namespace A199991.P1511504422554627398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199991.P1511504422554627398

/-! ## A199991.P16906291330317638115

`∩[A046510(n+1), A171581(n+1)]`
-/

namespace A199991.P16906291330317638115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199991.P16906291330317638115

/-! ## A199991.P5302880718141346622

`∩[A046510(n+1), A173905(n+1)]`
-/

namespace A199991.P5302880718141346622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199991.P5302880718141346622

/-! ## A199991.P18009623578657294082

`∩[A046510(n+1), A176423(n+1)]`
-/

namespace A199991.P18009623578657294082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199991.P18009623578657294082

/-! ## A199991.P3298418701774386166

`∩[A046510(n+1), A343311(n+1)]`
-/

namespace A199991.P3298418701774386166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199991.P3298418701774386166

/-! ## A199991.P1736906866501928956

`record[A005451(A046510(n+1))]`
-/

namespace A199991.P1736906866501928956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A046510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199991.P1736906866501928956

/-! ## A199991.P15611915753196378542

`eq[1, A055671(n)+A031346(n)]`
-/

namespace A199991.P15611915753196378542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n + A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199991.P15611915753196378542

/-! ## A199991.P6843788379703127359

`eq[A055672(n)+1, A031346(n)]`
-/

namespace A199991.P6843788379703127359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199991.P6843788379703127359

/-! ## A199991.P17970103112579972551

`eq[gcd(n, A051699(n)), A031346(n)]`
-/

namespace A199991.P17970103112579972551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A051699 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199991.P17970103112579972551

/-! ## A199991.P3030968466324864507

`eq[A031346(n), A089026(A060000(n+1))]`
-/

namespace A199991.P3030968466324864507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199991.P3030968466324864507

/-!
# A199992: Composite numbers whose multiplicative persistence is 2.

The programs for A199992, there is no canonical definition to state claims against.
-/

/-! ## A199992.P14975418097625506058

`filter[A046511(n+1), A005171(#)]`
-/

namespace A199992.P14975418097625506058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A199992.P14975418097625506058

/-! ## A199992.P14740346761971002307

`filter[A046511(n+1), A066247(#)]`
-/

namespace A199992.P14740346761971002307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A199992.P14740346761971002307

/-! ## A199992.P10944522844847148322

`∩[A002808(n+1), A046511(n+1)]`
-/

namespace A199992.P10944522844847148322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199992.P10944522844847148322

/-! ## A199992.P785738106758793507

`∩[A018252(n+1), A046511(n+1)]`
-/

namespace A199992.P785738106758793507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199992.P785738106758793507

/-! ## A199992.P1089476186492979223

`∩[A046511(n+1), A141468(n+1)]`
-/

namespace A199992.P1089476186492979223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199992.P1089476186492979223

/-! ## A199992.P10507557082229932379

`∩[A046511(n+1), A259315(n+1)]`
-/

namespace A199992.P10507557082229932379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199992.P10507557082229932379

/-! ## A199992.P18119007283491479226

`∩[A046511(n+1), A062973(n+1)]`
-/

namespace A199992.P18119007283491479226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199992.P18119007283491479226

/-! ## A199992.P4821112167748294036

`∩[A046511(n+1), A176423(n+1)]`
-/

namespace A199992.P4821112167748294036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199992.P4821112167748294036

/-! ## A199992.P14000418975506322988

`∩[A046511(n+1), A056653(n+1)]`
-/

namespace A199992.P14000418975506322988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199992.P14000418975506322988

/-! ## A199992.P7972005984916441179

`∩[A046511(n+1), A065090(n+1)]`
-/

namespace A199992.P7972005984916441179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199992.P7972005984916441179

/-! ## A199992.P6184451865922817577

`∩[A046511(n+1), A171581(n+1)]`
-/

namespace A199992.P6184451865922817577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199992.P6184451865922817577

/-! ## A199992.P6887321526917931150

`∩[A046511(n+1), A173905(n+1)]`
-/

namespace A199992.P6887321526917931150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199992.P6887321526917931150

/-! ## A199992.P8757516112855136516

`eq[2, A055671(n)+A031346(n)]`
-/

namespace A199992.P8757516112855136516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n + A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199992.P8757516112855136516

/-! ## A199992.P16209215999499177632

`eq[2, A055672(n)+A031346(n)]`
-/

namespace A199992.P16209215999499177632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n + A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199992.P16209215999499177632

/-! ## A199992.P4561002300384560608

`eq[A007918(A055672(n)), A031346(n)]`
-/

namespace A199992.P4561002300384560608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A055672 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199992.P4561002300384560608

/-! ## A199992.P3463149998001315515

`eq[A089026(A060000(n+1))+1, A031346(n)]`
-/

namespace A199992.P3463149998001315515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A060000 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199992.P3463149998001315515

/-! ## A199992.P4741451740807837122

`eq[A016789(A055671(n)/2), A031346(n)]`
-/

namespace A199992.P4741451740807837122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (SequenceMachineLib.roundAway ((A055671 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199992.P4741451740807837122

/-! ## A199992.P6685931905595049686

`eq[A016789(A055671(n)), A031346(n)]`
-/

namespace A199992.P6685931905595049686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A055671 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199992.P6685931905595049686

/-!
# A199993: Composite numbers whose multiplicative persistence is 3.

The programs for A199993, there is no canonical definition to state claims against.
-/

/-! ## A199993.P14920980655189706610

`filter[A046512(n+1), A005171(#)]`
-/

namespace A199993.P14920980655189706610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A199993.P14920980655189706610

/-! ## A199993.P7661854157823143506

`filter[A046512(n+1), A066247(#)]`
-/

namespace A199993.P7661854157823143506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A199993.P7661854157823143506

/-! ## A199993.P5363078261998195391

`∩[A002808(n+1), A046512(n+1)]`
-/

namespace A199993.P5363078261998195391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P5363078261998195391

/-! ## A199993.P11766873212565005050

`∩[A018252(n+1), A046512(n+1)]`
-/

namespace A199993.P11766873212565005050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P11766873212565005050

/-! ## A199993.P16628286140359231930

`∩[A046512(n+1), A141468(n+1)]`
-/

namespace A199993.P16628286140359231930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P16628286140359231930

/-! ## A199993.P10007078053986057885

`∩[A046512(n+1), A259315(n+1)]`
-/

namespace A199993.P10007078053986057885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P10007078053986057885

/-! ## A199993.P155982823443339650

`∩[A046512(n+1), A062973(n+1)]`
-/

namespace A199993.P155982823443339650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P155982823443339650

/-! ## A199993.P17050912805666372335

`∩[A046512(n+1), A343311(n+1)]`
-/

namespace A199993.P17050912805666372335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P17050912805666372335

/-! ## A199993.P342118840130078152

`∩[A046512(n+1), A387319(n+1)]`
-/

namespace A199993.P342118840130078152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P342118840130078152

/-! ## A199993.P12936438978249312269

`∩[A046512(n+1), A056653(n+1)]`
-/

namespace A199993.P12936438978249312269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P12936438978249312269

/-! ## A199993.P7046148504896447345

`∩[A046512(n+1), A176423(n+1)]`
-/

namespace A199993.P7046148504896447345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P7046148504896447345

/-! ## A199993.P10856593868512872131

`∩[A046512(n+1), A065090(n+1)]`
-/

namespace A199993.P10856593868512872131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P10856593868512872131

/-! ## A199993.P1062811831152973984

`∩[A046512(n+1), A171581(n+1)]`
-/

namespace A199993.P1062811831152973984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P1062811831152973984

/-! ## A199993.P9175955658390865753

`∩[A046512(n+1), A173905(n+1)]`
-/

namespace A199993.P9175955658390865753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P9175955658390865753

/-! ## A199993.P10621241170363231969

`∩[A046512(n+1), A111774(n+1)]`
-/

namespace A199993.P10621241170363231969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199993.P10621241170363231969

/-!
# A199994: Composite numbers whose multiplicative persistence is 4.

The programs for A199994, there is no canonical definition to state claims against.
-/

/-! ## A199994.P9538663645741642972

`filter[A046513(n+1), A005171(#)]`
-/

namespace A199994.P9538663645741642972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A199994.P9538663645741642972

/-! ## A199994.P1729137897441617994

`filter[A046513(n+1), A066247(#)]`
-/

namespace A199994.P1729137897441617994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A199994.P1729137897441617994

/-! ## A199994.P1502333357233773179

`filter[A046513(n+1), A202238(#)]`
-/

namespace A199994.P1502333357233773179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A199994.P1502333357233773179

/-! ## A199994.P6919580757113298022

`∩[A046513(n+1), A259315(n+1)]`
-/

namespace A199994.P6919580757113298022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199994.P6919580757113298022

/-! ## A199994.P3935946953647366946

`record[A005451(A046513(n+1))]`
-/

namespace A199994.P3935946953647366946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A046513 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199994.P3935946953647366946

/-! ## A199994.P17496402426562717940

`A026239(record[A026239(A046513(n+1))])`
-/

namespace A199994.P17496402426562717940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A046513 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199994.P17496402426562717940

/-! ## A199994.P13981668068931858914

`A026239(p?[A026239(A046513(n+1))])`
-/

namespace A199994.P13981668068931858914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A046513 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A199994.P13981668068931858914

/-!
# A199995: Composite numbers whose multiplicative persistence is 5.

The programs for A199995, there is no canonical definition to state claims against.
-/

/-! ## A199995.P9940667559152021710

`filter[A046514(n+1), A005171(#)]`
-/

namespace A199995.P9940667559152021710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A199995.P9940667559152021710

/-! ## A199995.P15895400096859155866

`filter[A046514(n+1), A066247(#)]`
-/

namespace A199995.P15895400096859155866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A199995.P15895400096859155866

/-! ## A199995.P5367808806303269965

`filter[A046514(n+1), A202238(#)]`
-/

namespace A199995.P5367808806303269965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A199995.P5367808806303269965

/-! ## A199995.P9654001729432674934

`record[A048671(A046514(n+1))]`
-/

namespace A199995.P9654001729432674934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A046514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199995.P9654001729432674934

/-! ## A199995.P4512381128020662588

`filter[A046514(n+1), A143731(#)]`
-/

namespace A199995.P4512381128020662588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A199995.P4512381128020662588

/-! ## A199995.P18172245111198767264

`filter[A046514(n+1), A395053(#)]`
-/

namespace A199995.P18172245111198767264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395053 (f1 j).toNat = 1) n)

end

end A199995.P18172245111198767264

/-!
# A199996: Composite numbers whose multiplicative persistence is 6.

The programs for A199996, there is no canonical definition to state claims against.
-/

/-! ## A199996.P106961542659055975

`filter[A046515(n+1), A005171(#)]`
-/

namespace A199996.P106961542659055975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A199996.P106961542659055975

/-! ## A199996.P9036559623502866844

`filter[A046515(n+1), A066247(#)]`
-/

namespace A199996.P9036559623502866844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A199996.P9036559623502866844

/-! ## A199996.P610993215287762973

`filter[A046515(n+1), A202238(#)]`
-/

namespace A199996.P610993215287762973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A199996.P610993215287762973

/-! ## A199996.P882013543531983219

`filter[A046515(n+1), A174898(#)]`
-/

namespace A199996.P882013543531983219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A199996.P882013543531983219

/-! ## A199996.P3422613492981973054

`record[A046515(n+1)-A003001(A193581(n))]`
-/

namespace A199996.P3422613492981973054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046515 (n + 1) - A003001 (A193581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199996.P3422613492981973054

/-!
# A199997: Composite numbers whose multiplicative persistence is 7.

The programs for A199997, there is no canonical definition to state claims against.
-/

/-! ## A199997.P3607144362264492546

`A046516(A246091(n+1)%A059801(n+1))`
-/

namespace A199997.P3607144362264492546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046516 (Int.tmod (A246091 (n + 1)) (A059801 (n + 1))).toNat

end

end A199997.P3607144362264492546

/-!
# A199998: Composite numbers whose multiplicative persistence is 8.

The programs for A199998, there is no canonical definition to state claims against.
-/

/-! ## A199998.P8204338933150036406

`record[gcd(A027190(n+1), A046517(n+1))]`
-/

namespace A199998.P8204338933150036406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027190 (n + 1)) (A046517 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199998.P8204338933150036406

/-! ## A199998.P4464403625690241906

`A046517(∑[A348029(n+1)!])`
-/

namespace A199998.P4464403625690241906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A348029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046517 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199998.P4464403625690241906

/-! ## A199998.P11763740763900818721

`A046517(∑[A006337(3*n+5)^A008955(n)])`
-/

namespace A199998.P11763740763900818721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006337 (3 * n + 5) : ℚ) ^ (A008955 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046517 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A199998.P11763740763900818721

/-!
# A199999: Composite numbers whose multiplicative persistence is 9.

The programs for A199999, there is no canonical definition to state claims against.
-/

/-! ## A199999.P2386524204324610907

`A046518(A062399(n)+A004218(n+4))`
-/

namespace A199999.P2386524204324610907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046518 (A062399 n + A004218 (n + 4)).toNat

end

end A199999.P2386524204324610907

/-! ## A199999.P733251637425400515

`A046518(A087051(n)+A004218(n+4))`
-/

namespace A199999.P733251637425400515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046518 (A087051 n + A004218 (n + 4)).toNat

end

end A199999.P733251637425400515

/-! ## A199999.P14099845207134834233

`record[A046518(A124010(3*n+5))]`
-/

namespace A199999.P14099845207134834233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046518 (A124010 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199999.P14099845207134834233

/-! ## A199999.P5825254421910859851

`A185274((3-n)²)+A046518(n+1)`
-/

namespace A199999.P5825254421910859851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185274 ((3 - (n : ℤ)) ^ 2).toNat + A046518 (n + 1)

end

end A199999.P5825254421910859851

