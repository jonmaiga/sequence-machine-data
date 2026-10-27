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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C012
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A252400: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252400, there is no canonical definition to state claims against.
-/

/-! ## A252400.P8563569758158040763

`A252407(∑[n+1])`
-/

namespace A252400.P8563569758158040763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252400.P8563569758158040763

/-! ## A252400.P9659639604247735469

`A252407(A000217(n+1))+A185284(n)`
-/

namespace A252400.P9659639604247735469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A000217 (n + 1)).toNat + A185284 n

end

end A252400.P9659639604247735469

/-! ## A252400.P15239255590921002635

`A252407(A000217(n+1))*A262681(n)`
-/

namespace A252400.P15239255590921002635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A000217 (n + 1)).toNat * A262681 n

end

end A252400.P15239255590921002635

/-! ## A252400.P9814416045651942079

`lcm(A000038(n)!, A252407(A000217(n+1)))`
-/

namespace A252400.P9814416045651942079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000038 n).toNat : ℤ) (A252407 (A000217 (n + 1)).toNat)

end

end A252400.P9814416045651942079

/-!
# A252401: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252401, there is no canonical definition to state claims against.
-/

/-! ## A252401.P15726269734011115275

`A252407(∑[n+2])`
-/

namespace A252401.P15726269734011115275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252401.P15726269734011115275

/-! ## A252401.P1988392211130724426

`xor(1, xor(1, A252407(A000096(n+1))))`
-/

namespace A252401.P1988392211130724426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A252407 (A000096 (n + 1)).toNat))

end

end A252401.P1988392211130724426

/-! ## A252401.P18019473437858246479

`A020985(n)²*A252407(A000096(n+1))`
-/

namespace A252401.P18019473437858246479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A252407 (A000096 (n + 1)).toNat

end

end A252401.P18019473437858246479

/-! ## A252401.P10825450686776192749

`A014963(A008458(n))*A252407(A000096(n+1))`
-/

namespace A252401.P10825450686776192749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A252407 (A000096 (n + 1)).toNat

end

end A252401.P10825450686776192749

/-! ## A252401.P13337523840383104338

`A014963(A340679(n+1))*A252407(A000096(n+1))`
-/

namespace A252401.P13337523840383104338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A340679 (n + 1)).toNat * A252407 (A000096 (n + 1)).toNat

end

end A252401.P13337523840383104338

/-!
# A252402: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252402, there is no canonical definition to state claims against.
-/

/-! ## A252402.P16323958006168780188

`A252407(∑[n+3]+1)`
-/

namespace A252402.P16323958006168780188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252402.P16323958006168780188

/-!
# A252403: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252403, there is no canonical definition to state claims against.
-/

/-! ## A252403.P4431290998417100519

`A252407(A141214(n+1))`
-/

namespace A252403.P4431290998417100519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A141214 (n + 1)).toNat

end

end A252403.P4431290998417100519

/-! ## A252403.P17305664547922392232

`A252407(A027379(n+2))`
-/

namespace A252403.P17305664547922392232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A027379 (n + 2)).toNat

end

end A252403.P17305664547922392232

/-! ## A252403.P17804686576340549282

`A252407(A055998(n+2))`
-/

namespace A252403.P17804686576340549282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A055998 (n + 2)).toNat

end

end A252403.P17804686576340549282

/-! ## A252403.P11418467720687334271

`A252407(A056000(n)+7)`
-/

namespace A252403.P11418467720687334271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A056000 n + 7).toNat

end

end A252403.P11418467720687334271

/-! ## A252403.P16031377610446508434

`A252407(A046691(n+2)+1)`
-/

namespace A252403.P16031377610446508434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A046691 (n + 2) + 1).toNat

end

end A252403.P16031377610446508434

/-!
# A252404: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252404, there is no canonical definition to state claims against.
-/

/-! ## A252404.P2632261441817620563

`A252407(A046691(n+3))`
-/

namespace A252404.P2632261441817620563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A046691 (n + 3)).toNat

end

end A252404.P2632261441817620563

/-! ## A252404.P3978384736331598057

`A252407(Δ[A023545(n+1)])`
-/

namespace A252404.P3978384736331598057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (f1 (n + 1) - f1 n).toNat

end

end A252404.P3978384736331598057

/-! ## A252404.P535139202984520653

`A252407(A052905(n+2)+1)`
-/

namespace A252404.P535139202984520653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A052905 (n + 2) + 1).toNat

end

end A252404.P535139202984520653

/-! ## A252404.P7778954442239446583

`A252407(Δ[n²]+A055999(n)+10)`
-/

namespace A252404.P7778954442239446583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A055999 n + 10)).toNat

end

end A252404.P7778954442239446583

/-! ## A252404.P4162999299627632456

`A252407(A167614(n+2)+A005843(n+1))`
-/

namespace A252404.P4162999299627632456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A167614 (n + 2) + A005843 (n + 1)).toNat

end

end A252404.P4162999299627632456

/-!
# A252405: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252405, there is no canonical definition to state claims against.
-/

/-! ## A252405.P2635503520835680102

`A252407(A052905(n+3))`
-/

namespace A252405.P2635503520835680102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A052905 (n + 3)).toNat

end

end A252405.P2635503520835680102

/-! ## A252405.P9527152254371887148

`A252407(A000096(n+5)-4)`
-/

namespace A252405.P9527152254371887148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A000096 (n + 5) - 4).toNat

end

end A252405.P9527152254371887148

/-! ## A252405.P5730916387069167388

`A252407(A133263(n+6)-7)`
-/

namespace A252405.P5730916387069167388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A133263 (n + 6) - 7).toNat

end

end A252405.P5730916387069167388

/-! ## A252405.P5393647699671764699

`A252407(Δ[Δ[A006504(n+1)]])`
-/

namespace A252405.P5393647699671764699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (f1 (n + 1) - f1 n).toNat

end

end A252405.P5393647699671764699

/-! ## A252405.P2816548970381251806

`A252407(Δ[A023545(n+2)]-1)`
-/

namespace A252405.P2816548970381251806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (f1 (n + 1) - f1 n - 1).toNat

end

end A252405.P2816548970381251806

/-!
# A252406: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252406, there is no canonical definition to state claims against.
-/

/-! ## A252406.P3712761241062513616

`A252407(A055999(n+4))`
-/

namespace A252406.P3712761241062513616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A055999 (n + 4)).toNat

end

end A252406.P3712761241062513616

/-! ## A252406.P14929156514312627946

`A252407(A055998(n+5)-3)`
-/

namespace A252406.P14929156514312627946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A055998 (n + 5) - 3).toNat

end

end A252406.P14929156514312627946

/-! ## A252406.P10586549789408313444

`A252407(A000096(n+5)+n+2)`
-/

namespace A252406.P10586549789408313444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A252406.P10586549789408313444

/-! ## A252406.P11224841144879231778

`A252407(A000217(n+6)+n+1)`
-/

namespace A252406.P11224841144879231778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A252406.P11224841144879231778

/-! ## A252406.P17453813426476589437

`A252407(A167614(n+4)+A005843(n+2))`
-/

namespace A252406.P17453813426476589437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A167614 (n + 4) + A005843 (n + 2)).toNat

end

end A252406.P17453813426476589437

/-!
# A252408: Number of (1+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252408, there is no canonical definition to state claims against.
-/

/-! ## A252408.P8328531866475248759

`A252407(∑[n]+1)`
-/

namespace A252408.P8328531866475248759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252408.P8328531866475248759

/-! ## A252408.P2790399216504881172

`record[gcd(A002262(n), A252407(n+1))]`
-/

namespace A252408.P2790399216504881172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252407 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252408.P2790399216504881172

/-! ## A252408.P2892723275429914067

`record[A252407(n+1)/A141686(n+1)]`
-/

namespace A252408.P2892723275429914067
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252407 (n + 1) : ℚ) / (A141686 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252408.P2892723275429914067

/-! ## A252408.P3692571018492485837

`record[root(A252407(n+1), A208909(n+1))]`
-/

namespace A252408.P3692571018492485837
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252407 (n + 1) : ℝ) ^ (1 / (A208909 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252408.P3692571018492485837

/-! ## A252408.P481181190638730417

`record[root(A252407(n+1), A209417(n+1))]`
-/

namespace A252408.P481181190638730417
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252407 (n + 1) : ℝ) ^ (1 / (A209417 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252408.P481181190638730417

/-!
# A252409: Number of (2+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252409, there is no canonical definition to state claims against.
-/

/-! ## A252409.P3345178122541784168

`A252407(∑[n+1]+2)`
-/

namespace A252409.P3345178122541784168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252409.P3345178122541784168

/-! ## A252409.P8148387688372179359

`or(A000007(n), A252407(A133263(n+1)))`
-/

namespace A252409.P8148387688372179359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252407 (A133263 (n + 1)).toNat)

end

end A252409.P8148387688372179359

/-! ## A252409.P4541306695328693334

`or(A000038(n)², A252407(A133263(n+1)))`
-/

namespace A252409.P4541306695328693334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n ^ 2) (A252407 (A133263 (n + 1)).toNat)

end

end A252409.P4541306695328693334

/-! ## A252409.P2704599771204362446

`A007318(C(2*(n+1), 2))*A252407(A133263(n+1))`
-/

namespace A252409.P2704599771204362446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (2 * (n + 1)) 2) * A252407 (A133263 (n + 1)).toNat

end

end A252409.P2704599771204362446

/-! ## A252409.P17378611059358055663

`A014963(C(2*(n+1), 2))*A252407(A133263(n+1))`
-/

namespace A252409.P17378611059358055663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (2 * (n + 1)) 2) * A252407 (A133263 (n + 1)).toNat

end

end A252409.P17378611059358055663

/-!
# A252410: Number of (3+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252410, there is no canonical definition to state claims against.
-/

/-! ## A252410.P13658301448095752114

`A252407(∑[n+2]+4)`
-/

namespace A252410.P13658301448095752114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252410.P13658301448095752114

/-! ## A252410.P16934278506030732399

`A252407(A167614(n+1))+A178798(n)`
-/

namespace A252410.P16934278506030732399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A167614 (n + 1)).toNat + A178798 n

end

end A252410.P16934278506030732399

/-! ## A252410.P7331009099709783849

`A252407(A167614(n+1))+A185284(n)`
-/

namespace A252410.P7331009099709783849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A167614 (n + 1)).toNat + A185284 n

end

end A252410.P7331009099709783849

/-! ## A252410.P8673553907623060099

`A252407(A167614(n+1))*A262681(n)`
-/

namespace A252410.P8673553907623060099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A167614 (n + 1)).toNat * A262681 n

end

end A252410.P8673553907623060099

/-! ## A252410.P11875195784781347981

`lcm(A020985(n), A252407(A167614(n+1)))`
-/

namespace A252410.P11875195784781347981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A252407 (A167614 (n + 1)).toNat)

end

end A252410.P11875195784781347981

/-!
# A252411: Number of (4+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252411, there is no canonical definition to state claims against.
-/

/-! ## A252411.P2052884394397414911

`A252407(A141214(n)+7)`
-/

namespace A252411.P2052884394397414911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A141214 n + 7).toNat

end

end A252411.P2052884394397414911

/-! ## A252411.P9026118896983686829

`A252407(A052905(n)+9)`
-/

namespace A252411.P9026118896983686829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A052905 n + 9).toNat

end

end A252411.P9026118896983686829

/-! ## A252411.P435395155869943175

`A252407(A055999(n)+10)`
-/

namespace A252411.P435395155869943175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A055999 n + 10).toNat

end

end A252411.P435395155869943175

/-! ## A252411.P1954707069879692579

`A252407(A167614(n+2)+1)`
-/

namespace A252411.P1954707069879692579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A167614 (n + 2) + 1).toNat

end

end A252411.P1954707069879692579

/-! ## A252411.P5217857261595412305

`A252407(A027379(n+1)+7)`
-/

namespace A252411.P5217857261595412305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A027379 (n + 1) + 7).toNat

end

end A252411.P5217857261595412305

/-!
# A252412: Number of (5+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252412, there is no canonical definition to state claims against.
-/

/-! ## A252412.P6704672173552458545

`A252407(A167499(n+3))`
-/

namespace A252412.P6704672173552458545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A167499 (n + 3)).toNat

end

end A252412.P6704672173552458545

/-! ## A252412.P7829873210337078546

`A252407(A000124(n+4)+4)`
-/

namespace A252412.P7829873210337078546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A000124 (n + 4) + 4).toNat

end

end A252412.P7829873210337078546

/-! ## A252412.P15494817017305090241

`A252407(A000096(n+3)+6)`
-/

namespace A252412.P15494817017305090241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A000096 (n + 3) + 6).toNat

end

end A252412.P15494817017305090241

/-! ## A252412.P13268366895627716292

`A252407(A000217(n+4)+5)`
-/

namespace A252412.P13268366895627716292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A000217 (n + 4) + 5).toNat

end

end A252412.P13268366895627716292

/-! ## A252412.P12078810174335065932

`A252407(eq[5, A002260(n+1)]+1)`
-/

namespace A252412.P12078810174335065932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A252412.P12078810174335065932

/-!
# A252413: Number of (6+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252413, there is no canonical definition to state claims against.
-/

/-! ## A252413.P1656587497117725523

`A252407(A167499(n+4)+1)`
-/

namespace A252413.P1656587497117725523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A167499 (n + 4) + 1).toNat

end

end A252413.P1656587497117725523

/-! ## A252413.P4150156458650466912

`A252407(A000096(n+4)+7)`
-/

namespace A252413.P4150156458650466912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A000096 (n + 4) + 7).toNat

end

end A252413.P4150156458650466912

/-! ## A252413.P585514255410740905

`A252407(A161680(n+6)+6)`
-/

namespace A252413.P585514255410740905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A161680 (n + 6) + 6).toNat

end

end A252413.P585514255410740905

/-! ## A252413.P17608732309045122384

`A252407(A000124(n+6)-(n+1))`
-/

namespace A252413.P17608732309045122384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A252413.P17608732309045122384

/-! ## A252413.P15945523373005945910

`A252407(A167614(n+5)-(n+3))`
-/

namespace A252413.P15945523373005945910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A167614 (n + 5) - (n + 3 : ℤ)).toNat

end

end A252413.P15945523373005945910

/-!
# A252414: Number of (7+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252414, there is no canonical definition to state claims against.
-/

/-! ## A252414.P5015293444496441311

`A252407(A167499(n+5)+2)`
-/

namespace A252414.P5015293444496441311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A167499 (n + 5) + 2).toNat

end

end A252414.P5015293444496441311

/-! ## A252414.P10837196611314691067

`A252407(A167614(n+5)+4)`
-/

namespace A252414.P10837196611314691067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A167614 (n + 5) + 4).toNat

end

end A252414.P10837196611314691067

/-! ## A252414.P2282615477226930235

`A252407(A161680(n+7)+7)`
-/

namespace A252414.P2282615477226930235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A161680 (n + 7) + 7).toNat

end

end A252414.P2282615477226930235

/-! ## A252414.P10593533214680746652

`A252407(eq[8, A002260(n+1)]-(n+7))`
-/

namespace A252414.P10593533214680746652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (n + 7))

end

end A252414.P10593533214680746652

/-! ## A252414.P601319774463142845

`A252407(A034856(n+7)-A005843(n+3))`
-/

namespace A252414.P601319774463142845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A034856 (n + 7) - A005843 (n + 3)).toNat

end

end A252414.P601319774463142845

/-!
# A252415: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 5 6 or 7.

The programs for A252415, there is no canonical definition to state claims against.
-/

/-! ## A252415.P17655624958209402986

`A252423((n+1)²+n²)`
-/

namespace A252415.P17655624958209402986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 ((n + 1) ^ 2 + n ^ 2)

end

end A252415.P17655624958209402986

/-! ## A252415.P5900411538287156429

`record[A003982(n)*A252423(n+1)]`
-/

namespace A252415.P5900411538287156429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252415.P5900411538287156429

/-! ## A252415.P3774989779425457131

`record[gcd(A114327(n), A252423(n+1))]`
-/

namespace A252415.P3774989779425457131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252423 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252415.P3774989779425457131

/-! ## A252415.P5519988947140977815

`lcm(A054977(n), A252423(A001844(n)))`
-/

namespace A252415.P5519988947140977815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A252423 (A001844 n).toNat)

end

end A252415.P5519988947140977815

/-! ## A252415.P14944334825985944316

`or(A000038(n), A252423(A001844(n)))`
-/

namespace A252415.P14944334825985944316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252423 (A001844 n).toNat)

end

end A252415.P14944334825985944316

/-!
# A252416: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 5 6 or 7.

The programs for A252416, there is no canonical definition to state claims against.
-/

/-! ## A252416.P3204721520426323251

`A252423(∑[n]+1)`
-/

namespace A252416.P3204721520426323251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252416.P3204721520426323251

/-! ## A252416.P13410813950848923444

`record[A010054(n)*A252423(n+1)]`
-/

namespace A252416.P13410813950848923444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252416.P13410813950848923444

/-! ## A252416.P11829752838422954370

`record[gcd(A002262(n), A252423(n+1))]`
-/

namespace A252416.P11829752838422954370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252423 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252416.P11829752838422954370

/-! ## A252416.P13066850268289928316

`A252423(A000124(n))+A025439(n)`
-/

namespace A252416.P13066850268289928316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A000124 n).toNat + A025439 n

end

end A252416.P13066850268289928316

/-! ## A252416.P16066962080573057290

`A252423(A000124(n))%A252397(n+1)`
-/

namespace A252416.P16066962080573057290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252423 (A000124 n).toNat) (A252397 (n + 1))

end

end A252416.P16066962080573057290

/-!
# A252417: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 5 6 or 7.

The programs for A252417, there is no canonical definition to state claims against.
-/

/-! ## A252417.P2732312774485530086

`A252423(∑[n+1]+2)`
-/

namespace A252417.P2732312774485530086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252417.P2732312774485530086

/-! ## A252417.P15702533202297490427

`lcm(2, A252423(A000096(n)+3))`
-/

namespace A252417.P15702533202297490427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252423 (A000096 n + 3).toNat)

end

end A252417.P15702533202297490427

/-! ## A252417.P888281060580938112

`A252423(A000096(n)+3)+A034461(n+1)`
-/

namespace A252417.P888281060580938112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A000096 n + 3).toNat + A034461 (n + 1)

end

end A252417.P888281060580938112

/-! ## A252417.P10527011666936631811

`A252423(A000096(n)+3)%A069278(n+1)²`
-/

namespace A252417.P10527011666936631811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252423 (A000096 n + 3).toNat) (A069278 (n + 1) ^ 2)

end

end A252417.P10527011666936631811

/-! ## A252417.P10857828314499221557

`A005361(A006530(n+2))*A252423(A000096(n+1))`
-/

namespace A252417.P10857828314499221557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A006530 (n + 2)).toNat * A252423 (A000096 (n + 1)).toNat

end

end A252417.P10857828314499221557

/-!
# A252418: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 2 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 2 5 6 or 7.

The programs for A252418, there is no canonical definition to state claims against.
-/

/-! ## A252418.P17615161174749238876

`A252423(∑[n+2]+4)`
-/

namespace A252418.P17615161174749238876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252418.P17615161174749238876

/-! ## A252418.P17957590981707936299

`A252423(A167614(n+1))%A252419(n+1)`
-/

namespace A252418.P17957590981707936299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252423 (A167614 (n + 1)).toNat) (A252419 (n + 1))

end

end A252418.P17957590981707936299

/-! ## A252418.P3731987290135442043

`(2-A024000(n)-n)*A252423(A167614(n+1))`
-/

namespace A252418.P3731987290135442043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A024000 n - (n : ℤ)) * A252423 (A167614 (n + 1)).toNat

end

end A252418.P3731987290135442043

/-! ## A252418.P7982956177226932629

`A005361(A006530(n+2))*A252423(A167614(n+1))`
-/

namespace A252418.P7982956177226932629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A006530 (n + 2)).toNat * A252423 (A167614 (n + 1)).toNat

end

end A252418.P7982956177226932629

/-! ## A252418.P633188979588523383

`A005361(A006530(n+2))*A252423(A000096(n+1)+4)`
-/

namespace A252418.P633188979588523383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A006530 (n + 2)).toNat * A252423 (A000096 (n + 1) + 4).toNat

end

end A252418.P633188979588523383

/-!
# A252419: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 5 6 or 7.

The programs for A252419, there is no canonical definition to state claims against.
-/

/-! ## A252419.P13424330590136844562

`A252423(∑[n+3]+7)`
-/

namespace A252419.P13424330590136844562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252419.P13424330590136844562

/-! ## A252419.P6796106806256843088

`A252423(A055999(n)+10)%A014130(n+4)`
-/

namespace A252419.P6796106806256843088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252423 (A055999 n + 10).toNat) (A014130 (n + 4))

end

end A252419.P6796106806256843088

/-!
# A252420: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 5 6 or 7.

The programs for A252420, there is no canonical definition to state claims against.
-/

/-! ## A252420.P8377356046754784417

`A252423(A374005(n+1))`
-/

namespace A252420.P8377356046754784417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A374005 (n + 1)).toNat

end

end A252420.P8377356046754784417

/-! ## A252420.P17861667044460495408

`A252423(A167499(n+3))`
-/

namespace A252420.P17861667044460495408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A167499 (n + 3)).toNat

end

end A252420.P17861667044460495408

/-! ## A252420.P16602285080554688266

`A252423(A155212(n)+13)`
-/

namespace A252420.P16602285080554688266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A155212 n + 13).toNat

end

end A252420.P16602285080554688266

/-! ## A252420.P14938775348731206880

`A252423(A167614(n+3)+2)`
-/

namespace A252420.P14938775348731206880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A167614 (n + 3) + 2).toNat

end

end A252420.P14938775348731206880

/-! ## A252420.P5359920083817803084

`A252423(A133263(n+4)+3)`
-/

namespace A252420.P5359920083817803084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A133263 (n + 4) + 3).toNat

end

end A252420.P5359920083817803084

/-!
# A252421: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 5 6 or 7.

The programs for A252421, there is no canonical definition to state claims against.
-/

/-! ## A252421.P28582806221848667

`A252423(A374007(n+1))`
-/

namespace A252421.P28582806221848667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A374007 (n + 1)).toNat

end

end A252421.P28582806221848667

/-! ## A252421.P3813149045321815175

`A252423(A167499(n+4)+1)`
-/

namespace A252421.P3813149045321815175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A167499 (n + 4) + 1).toNat

end

end A252421.P3813149045321815175

/-! ## A252421.P15431283380306004163

`A252423(A000217(n+5)+6)`
-/

namespace A252421.P15431283380306004163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A000217 (n + 5) + 6).toNat

end

end A252421.P15431283380306004163

/-! ## A252421.P5023987509385460090

`A252423(A027379(n+3)+9)`
-/

namespace A252421.P5023987509385460090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A027379 (n + 3) + 9).toNat

end

end A252421.P5023987509385460090

/-! ## A252421.P13056401244884554562

`A252423(A103517(n+8)-A001489(∑[n+3]))`
-/

namespace A252421.P13056401244884554562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A103517 (n + 8) - A001489 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A252421.P13056401244884554562

/-!
# A252422: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 5 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 5 6 or 7.

The programs for A252422, there is no canonical definition to state claims against.
-/

/-! ## A252422.P17091882038901561815

`A252423(A374008(n+1))`
-/

namespace A252422.P17091882038901561815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A374008 (n + 1)).toNat

end

end A252422.P17091882038901561815

/-! ## A252422.P11335869622921730944

`A252423(A167487(n+5))`
-/

namespace A252422.P11335869622921730944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A167487 (n + 5)).toNat

end

end A252422.P11335869622921730944

/-! ## A252422.P15407511433019595119

`A252423(A167499(n+5)+2)`
-/

namespace A252422.P15407511433019595119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A167499 (n + 5) + 2).toNat

end

end A252422.P15407511433019595119

/-! ## A252422.P14132215247873564608

`A252423(A000124(n+6)+6)`
-/

namespace A252422.P14132215247873564608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A000124 (n + 6) + 6).toNat

end

end A252422.P14132215247873564608

/-! ## A252422.P13514669855539619130

`A252423(A000217(n+6)+7)`
-/

namespace A252422.P13514669855539619130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252423 (A000217 (n + 6) + 7).toNat

end

end A252422.P13514669855539619130

/-!
# A252424: Numbers k such that sum of odd divisors of k equals sum of squares of primes dividing k.

The programs for A252424, there is no canonical definition to state claims against.
-/

/-! ## A252424.P12683817944913342623

`eq[A000032(A107760(n)), A283976(n)]`
-/

namespace A252424.P12683817944913342623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A107760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252424.P12683817944913342623

/-! ## A252424.P5570673528876605735

`A014681(eq[A000593(n+1), A005063(n+1)])`
-/

namespace A252424.P5570673528876605735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A252424.P5570673528876605735

/-! ## A252424.P13267888827516374468

`A020725(eq[A000593(n+1), A005063(n+1)])`
-/

namespace A252424.P13267888827516374468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A252424.P13267888827516374468

/-! ## A252424.P13301549653269667570

`18*A153671(A107326(n+1))`
-/

namespace A252424.P13301549653269667570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A153671 (A107326 (n + 1)).toNat

end

end A252424.P13301549653269667570

/-! ## A252424.P14582971667376878674

`9*A263981(A181818(n+1))`
-/

namespace A252424.P14582971667376878674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A263981 (A181818 (n + 1)).toNat

end

end A252424.P14582971667376878674

/-!
# A252425: Number of (n+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252425, there is no canonical definition to state claims against.
-/

/-! ## A252425.P839724086146072848

`A252433((n+1)²+n²)`
-/

namespace A252425.P839724086146072848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 ((n + 1) ^ 2 + n ^ 2)

end

end A252425.P839724086146072848

/-! ## A252425.P15871239796406859511

`record[A003982(n)*A252433(n+1)]`
-/

namespace A252425.P15871239796406859511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252425.P15871239796406859511

/-! ## A252425.P12773511333389059017

`record[root(A252433(n+1), A027420(n))]`
-/

namespace A252425.P12773511333389059017
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252433 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252425.P12773511333389059017

/-! ## A252425.P5248349144830458839

`record[root(A252433(n+1), A143182(n))]`
-/

namespace A252425.P5248349144830458839
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252433 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252425.P5248349144830458839

/-! ## A252425.P14848592033873058011

`record[gcd(A157521(n), A252433(n+1))]`
-/

namespace A252425.P14848592033873058011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157521 n) (A252433 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252425.P14848592033873058011

/-!
# A252426: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252426, there is no canonical definition to state claims against.
-/

/-! ## A252426.P7448713819737735827

`A252433(∑[n+1])`
-/

namespace A252426.P7448713819737735827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252426.P7448713819737735827

/-! ## A252426.P16315790099363741195

`A252433(Δ[A000292(n)])%A017441(n)`
-/

namespace A252426.P16315790099363741195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252433 (f1 (n + 1) - f1 n).toNat) (A017441 n)

end

end A252426.P16315790099363741195

/-! ## A252426.P4204946758591832027

`A252433(Δ[A000292(n)])+A000007(n+1)`
-/

namespace A252426.P4204946758591832027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A252426.P4204946758591832027

/-! ## A252426.P17711628870377244412

`A252433(A000217(n+1))%A252429(n+1)`
-/

namespace A252426.P17711628870377244412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252433 (A000217 (n + 1)).toNat) (A252429 (n + 1))

end

end A252426.P17711628870377244412

/-! ## A252426.P6069672047218409895

`A252433(Δ[A000292(n)])+A008683(24*(n+1)²)`
-/

namespace A252426.P6069672047218409895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (f1 (n + 1) - f1 n).toNat + A008683 (24 * (n + 1) ^ 2)

end

end A252426.P6069672047218409895

/-!
# A252427: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252427, there is no canonical definition to state claims against.
-/

/-! ## A252427.P2224588823075734969

`A252433(∑[n+2])`
-/

namespace A252427.P2224588823075734969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252427.P2224588823075734969

/-! ## A252427.P6892432026705611054

`or(A000007(n), A252433(A000096(n+1)))`
-/

namespace A252427.P6892432026705611054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252433 (A000096 (n + 1)).toNat)

end

end A252427.P6892432026705611054

/-! ## A252427.P3923223256632134293

`A007318(C(n, 2))*A252433(A000096(n+1))`
-/

namespace A252427.P3923223256632134293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A252433 (A000096 (n + 1)).toNat

end

end A252427.P3923223256632134293

/-! ## A252427.P7898254307228102197

`A316341(2*n+3)+A252433(A000096(n+1))`
-/

namespace A252427.P7898254307228102197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (2 * n + 3) + A252433 (A000096 (n + 1)).toNat

end

end A252427.P7898254307228102197

/-! ## A252427.P15711911692093232231

`A000035(A000040(n+2))*A252433(A000096(n+1))`
-/

namespace A252427.P15711911692093232231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000040 (n + 2)).toNat * A252433 (A000096 (n + 1)).toNat

end

end A252427.P15711911692093232231

/-!
# A252428: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252428, there is no canonical definition to state claims against.
-/

/-! ## A252428.P16014017822958751044

`A252433(∑[n+3]+1)`
-/

namespace A252428.P16014017822958751044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252428.P16014017822958751044

/-! ## A252428.P5393825167416478618

`A252433(A034856(n+2))+(2*n)%2`
-/

namespace A252428.P5393825167416478618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A034856 (n + 2)).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A252428.P5393825167416478618

/-! ## A252428.P18423334775334922473

`A252433(A034856(n+2))/A045802(n+1)%2`
-/

namespace A252428.P18423334775334922473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252433 (A034856 (n + 2)).toNat : ℚ) / (Int.tmod (A045802 (n + 1)) 2 : ℚ)

end

end A252428.P18423334775334922473

/-! ## A252428.P10824353866031814110

`A252433(A034856(n+2))+A007326(A001222(n+1)+1)`
-/

namespace A252428.P10824353866031814110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A034856 (n + 2)).toNat + A007326 (A001222 (n + 1) + 1).toNat

end

end A252428.P10824353866031814110

/-!
# A252429: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252429, there is no canonical definition to state claims against.
-/

/-! ## A252429.P7358081959528361262

`A252433(∑[n+4]+3)`
-/

namespace A252429.P7358081959528361262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252429.P7358081959528361262

/-! ## A252429.P14609076333619223483

`or(A000007(n), A252433(A000124(n+4)-4))`
-/

namespace A252429.P14609076333619223483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252433 (A000124 (n + 4) - 4).toNat)

end

end A252429.P14609076333619223483

/-! ## A252429.P17141569876120764302

`A252433(A000217(n+4)-3)+and(2, A000290(n))`
-/

namespace A252429.P17141569876120764302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000217 (n + 4) - 3).toNat + Int.land 2 (A000290 n)

end

end A252429.P17141569876120764302

/-! ## A252429.P10000032080310271472

`A252433(A000124(n+4)-4)+A023531(10*n+1)`
-/

namespace A252429.P10000032080310271472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000124 (n + 4) - 4).toNat + A023531 (10 * n + 1)

end

end A252429.P10000032080310271472

/-! ## A252429.P11106017244339174882

`(A000051(n)-2^n)*A252433(A000217(n+4)-3)`
-/

namespace A252429.P11106017244339174882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000051 n - (2 ^ n : ℤ)) * A252433 (A000217 (n + 4) - 3).toNat

end

end A252429.P11106017244339174882

/-!
# A252430: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252430, there is no canonical definition to state claims against.
-/

/-! ## A252430.P887215997317921532

`A252433(Δ[A264443(n)])`
-/

namespace A252430.P887215997317921532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (f1 (n + 1) - f1 n).toNat

end

end A252430.P887215997317921532

/-! ## A252430.P9709937414141581312

`A252433(A046691(n+3))`
-/

namespace A252430.P9709937414141581312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A046691 (n + 3)).toNat

end

end A252430.P9709937414141581312

/-! ## A252430.P7880461148681822288

`A252433(Δ[A023545(n+1)])`
-/

namespace A252430.P7880461148681822288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (f1 (n + 1) - f1 n).toNat

end

end A252430.P7880461148681822288

/-! ## A252430.P10795071225113545235

`A252433(A000096(n+4)-3)`
-/

namespace A252430.P10795071225113545235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000096 (n + 4) - 3).toNat

end

end A252430.P10795071225113545235

/-! ## A252430.P4386199275157874774

`A252433(A167487(n)+A004767(n))`
-/

namespace A252430.P4386199275157874774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A167487 n + A004767 n).toNat

end

end A252430.P4386199275157874774

/-!
# A252431: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0, 2, 4, 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0, 2, 4, 6 or 7.

The programs for A252431, there is no canonical definition to state claims against.
-/

/-! ## A252431.P13363402443402580695

`A252433(A052905(n+3))`
-/

namespace A252431.P13363402443402580695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A052905 (n + 3)).toNat

end

end A252431.P13363402443402580695

/-! ## A252431.P6348396333894601484

`A252433(A000096(n+5)-4)`
-/

namespace A252431.P6348396333894601484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000096 (n + 5) - 4).toNat

end

end A252431.P6348396333894601484

/-! ## A252431.P16306309758293631593

`A252433(A000124(n+6)-6)`
-/

namespace A252431.P16306309758293631593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000124 (n + 6) - 6).toNat

end

end A252431.P16306309758293631593

/-! ## A252431.P1409730877260647473

`A252433(Δ[A264443(n+1)]-1)`
-/

namespace A252431.P1409730877260647473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (f1 (n + 1) - f1 n - 1).toNat

end

end A252431.P1409730877260647473

/-! ## A252431.P14475142545177403617

`A252433(Δ[A023545(n+2)]-1)`
-/

namespace A252431.P14475142545177403617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (f1 (n + 1) - f1 n - 1).toNat

end

end A252431.P14475142545177403617

/-!
# A252432: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252432, there is no canonical definition to state claims against.
-/

/-! ## A252432.P17353627342707385142

`A252433(A055999(n+4))`
-/

namespace A252432.P17353627342707385142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A055999 (n + 4)).toNat

end

end A252432.P17353627342707385142

/-! ## A252432.P2147267383590193008

`A252433(Δ[A026054(n+4)])`
-/

namespace A252432.P2147267383590193008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (f1 (n + 1) - f1 n).toNat

end

end A252432.P2147267383590193008

/-! ## A252432.P15178683479217805645

`A252433(A046691(n+5)-2)`
-/

namespace A252432.P15178683479217805645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A046691 (n + 5) - 2).toNat

end

end A252432.P15178683479217805645

/-! ## A252432.P2440278383085984788

`A252433(A000217(n+7)-6)`
-/

namespace A252432.P2440278383085984788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000217 (n + 7) - 6).toNat

end

end A252432.P2440278383085984788

/-! ## A252432.P10167425064367450893

`A252433(A000124(n+7)-7)`
-/

namespace A252432.P10167425064367450893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000124 (n + 7) - 7).toNat

end

end A252432.P10167425064367450893

/-!
# A252434: Number of (1+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252434, there is no canonical definition to state claims against.
-/

/-! ## A252434.P15181765742685917036

`A252433(∑[n]+1)`
-/

namespace A252434.P15181765742685917036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252434.P15181765742685917036

/-! ## A252434.P3969262535009839590

`record[A252433(n+1)/A008518(n)]`
-/

namespace A252434.P3969262535009839590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252433 (n + 1) : ℚ) / (A008518 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252434.P3969262535009839590

/-! ## A252434.P16809971231202832920

`record[A252433(n+1)/A008292(n+1)]`
-/

namespace A252434.P16809971231202832920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252433 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252434.P16809971231202832920

/-! ## A252434.P9756127183623927267

`record[A252433(n+1)/A008517(n+1)]`
-/

namespace A252434.P9756127183623927267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252433 (n + 1) : ℚ) / (A008517 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252434.P9756127183623927267

/-! ## A252434.P7157375822521952084

`or(A000007(n), A252433(A000124(n)))`
-/

namespace A252434.P7157375822521952084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252433 (A000124 n).toNat)

end

end A252434.P7157375822521952084

/-!
# A252435: Number of (2+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252435, there is no canonical definition to state claims against.
-/

/-! ## A252435.P6609034335932320067

`A252433(∑[n+1]+2)`
-/

namespace A252435.P6609034335932320067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252435.P6609034335932320067

/-! ## A252435.P16930749175627679125

`A252433(A133263(n+1))+char[47]`
-/

namespace A252435.P16930749175627679125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252435.P16930749175627679125

/-! ## A252435.P13931470740777153924

`A252433(A000124(n+1)+1)+and(2, n²)`
-/

namespace A252435.P13931470740777153924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000124 (n + 1) + 1).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A252435.P13931470740777153924

/-! ## A252435.P8530650102401110336

`A000032(gcd(n, n+1))*A252433(A133263(n+1))`
-/

namespace A252435.P8530650102401110336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.gcd n (n + 1)) * A252433 (A133263 (n + 1)).toNat

end

end A252435.P8530650102401110336

/-! ## A252435.P3322744532336314282

`A014963(6*(n+1))*A252433(A000124(n+1)+1)`
-/

namespace A252435.P3322744532336314282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A252433 (A000124 (n + 1) + 1).toNat

end

end A252435.P3322744532336314282

/-!
# A252436: Number of (3+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252436, there is no canonical definition to state claims against.
-/

/-! ## A252436.P12379954916458261633

`A252433(∑[n+2]+4)`
-/

namespace A252436.P12379954916458261633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252436.P12379954916458261633

/-! ## A252436.P15375575958750760389

`gcd(2, or(1, n))*A252433(A167614(n+1))`
-/

namespace A252436.P15375575958750760389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (Nat.lor 1 n) : ℤ) * A252433 (A167614 (n + 1)).toNat

end

end A252436.P15375575958750760389

/-! ## A252436.P6095026780909242772

`lcm(A054977(n), A252433(A167614(n+1)))`
-/

namespace A252436.P6095026780909242772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A252433 (A167614 (n + 1)).toNat)

end

end A252436.P6095026780909242772

/-! ## A252436.P7629673304851206512

`A001511(Δ[n²])*A252433(A034856(n+1)+5)`
-/

namespace A252436.P7629673304851206512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A252433 (A034856 (n + 1) + 5).toNat

end

end A252436.P7629673304851206512

/-! ## A252436.P9515246962557545476

`A007318((n²+n)/2)*A252433(A034856(n+1)+5)`
-/

namespace A252436.P9515246962557545476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat * A252433 (A034856 (n + 1) + 5).toNat

end

end A252436.P9515246962557545476

/-!
# A252437: Number of (4+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252437, there is no canonical definition to state claims against.
-/

/-! ## A252437.P17310030540230068114

`A252433(∑[n+3]+7)`
-/

namespace A252437.P17310030540230068114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252437.P17310030540230068114

/-!
# A252438: Number of (5+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252438, there is no canonical definition to state claims against.
-/

/-! ## A252438.P7491249320437069132

`A252433(A167499(n+3))`
-/

namespace A252438.P7491249320437069132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A167499 (n + 3)).toNat

end

end A252438.P7491249320437069132

/-! ## A252438.P2977770663159493057

`A252433(A133263(n+4)+3)`
-/

namespace A252438.P2977770663159493057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A133263 (n + 4) + 3).toNat

end

end A252438.P2977770663159493057

/-! ## A252438.P5958405609409511608

`A252433(A000217(n+4)+5)`
-/

namespace A252438.P5958405609409511608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000217 (n + 4) + 5).toNat

end

end A252438.P5958405609409511608

/-! ## A252438.P3847858022594919345

`A252433(A052905(n+1)+10)`
-/

namespace A252438.P3847858022594919345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A052905 (n + 1) + 10).toNat

end

end A252438.P3847858022594919345

/-! ## A252438.P4170497137412854802

`A252433(A000096(n+4)-(n-1))`
-/

namespace A252438.P4170497137412854802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A252438.P4170497137412854802

/-!
# A252439: Number of (6+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252439, there is no canonical definition to state claims against.
-/

/-! ## A252439.P14262753703033890913

`A252433(A166136(n+4))`
-/

namespace A252439.P14262753703033890913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A166136 (n + 4)).toNat

end

end A252439.P14262753703033890913

/-! ## A252439.P15629450786325879380

`A252433(A167614(n+4)+3)`
-/

namespace A252439.P15629450786325879380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A167614 (n + 4) + 3).toNat

end

end A252439.P15629450786325879380

/-! ## A252439.P12157120408040388831

`A252433(A000124(n+5)+5)`
-/

namespace A252439.P12157120408040388831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000124 (n + 5) + 5).toNat

end

end A252439.P12157120408040388831

/-! ## A252439.P9480952592387641352

`A252433(A000096(n+4)+7)`
-/

namespace A252439.P9480952592387641352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000096 (n + 4) + 7).toNat

end

end A252439.P9480952592387641352

/-! ## A252439.P3428841221027177229

`A252433(A000217(n+5)+6)`
-/

namespace A252439.P3428841221027177229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000217 (n + 5) + 6).toNat

end

end A252439.P3428841221027177229

/-!
# A252440: Number of (7+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252440, there is no canonical definition to state claims against.
-/

/-! ## A252440.P18351589916800102796

`A252433(A167487(n+5))`
-/

namespace A252440.P18351589916800102796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A167487 (n + 5)).toNat

end

end A252440.P18351589916800102796

/-! ## A252440.P11380671538045791636

`A252433(A000217(n+6)+7)`
-/

namespace A252440.P11380671538045791636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000217 (n + 6) + 7).toNat

end

end A252440.P11380671538045791636

/-! ## A252440.P2616386255712961443

`A252433(A179865(n+7)+7)`
-/

namespace A252440.P2616386255712961443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A179865 (n + 7) + 7).toNat

end

end A252440.P2616386255712961443

/-! ## A252440.P3309433603188594182

`A252433(A000124(n+5)+n+12)`
-/

namespace A252440.P3309433603188594182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A000124 (n + 5) + (n : ℤ) + 12).toNat

end

end A252440.P3309433603188594182

/-! ## A252440.P6901852244476929101

`A252433(A055999(n+5)-A004277(n+1))`
-/

namespace A252440.P6901852244476929101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252433 (A055999 (n + 5) - A004277 (n + 1)).toNat

end

end A252440.P6901852244476929101

/-!
# A252441: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 3.

The programs for A252441, there is no canonical definition to state claims against.
-/

/-! ## A252441.P16498990323380355868

`A251830(n+1)/2`
-/

namespace A252441.P16498990323380355868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251830 (n + 1) : ℚ) / 2

end

end A252441.P16498990323380355868

/-! ## A252441.P894305689415449284

`floor(A251830(-xor(n, -1))/2)`
-/

namespace A252441.P894305689415449284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251830 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌋

end

end A252441.P894305689415449284

/-! ## A252441.P4022236768699098370

`A252447(∑[n]+1)`
-/

namespace A252441.P4022236768699098370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252441.P4022236768699098370

/-! ## A252441.P29098756620909111

`A251836(∑[abs(1-n)]+n)/2`
-/

namespace A252441.P29098756620909111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251836 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat : ℚ) / 2

end

end A252441.P29098756620909111

/-! ## A252441.P10513028556010087805

`record[A010054(n)*A252447(n+1)]`
-/

namespace A252441.P10513028556010087805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252441.P10513028556010087805

/-!
# A252442: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 3.

The programs for A252442, there is no canonical definition to state claims against.
-/

/-! ## A252442.P13773841809050216145

`A251831(n+1)/2`
-/

namespace A252442.P13773841809050216145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251831 (n + 1) : ℚ) / 2

end

end A252442.P13773841809050216145

/-! ## A252442.P15326218505415386370

`A252447(∑[n+1]+2)`
-/

namespace A252442.P15326218505415386370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252442.P15326218505415386370

/-! ## A252442.P681410101437715210

`record[A010054(n)*A252447(n+2)]`
-/

namespace A252442.P681410101437715210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252447 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252442.P681410101437715210

/-! ## A252442.P4330748083185807044

`A251836(abs(A057428(n))+∑[n+1]+1)/2`
-/

namespace A252442.P4330748083185807044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251836 (|A057428 n| + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat : ℚ) / 2

end

end A252442.P4330748083185807044

/-! ## A252442.P7752844051633524091

`A251836(∑[n+2])/2`
-/

namespace A252442.P7752844051633524091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251836 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A252442.P7752844051633524091

/-!
# A252443: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 3.

The programs for A252443, there is no canonical definition to state claims against.
-/

/-! ## A252443.P11335581412725127173

`A251832(n+1)/2`
-/

namespace A252443.P11335581412725127173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251832 (n + 1) : ℚ) / 2

end

end A252443.P11335581412725127173

/-! ## A252443.P4190606615489165532

`A252447(∑[n+2]+4)`
-/

namespace A252443.P4190606615489165532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252443.P4190606615489165532

/-! ## A252443.P1199655008823466822

`A251836(A167614(n+1))/2`
-/

namespace A252443.P1199655008823466822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251836 (A167614 (n + 1)).toNat : ℚ) / 2

end

end A252443.P1199655008823466822

/-! ## A252443.P1779304421592055173

`A251836(A166136(n+1)-3)/2`
-/

namespace A252443.P1779304421592055173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251836 (A166136 (n + 1) - 3).toNat : ℚ) / 2

end

end A252443.P1779304421592055173

/-! ## A252443.P1020865136325515701

`A252447(A167614(n+1))+A185284(n)`
-/

namespace A252443.P1020865136325515701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (A167614 (n + 1)).toNat + A185284 n

end

end A252443.P1020865136325515701

/-!
# A252444: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 3.

The programs for A252444, there is no canonical definition to state claims against.
-/

/-! ## A252444.P16957714540178924429

`A251833(n+1)/2`
-/

namespace A252444.P16957714540178924429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251833 (n + 1) : ℚ) / 2

end

end A252444.P16957714540178924429

/-! ## A252444.P9241904219830350352

`A252447(A374004(n+1))`
-/

namespace A252444.P9241904219830350352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (A374004 (n + 1)).toNat

end

end A252444.P9241904219830350352

/-! ## A252444.P3798476526526010004

`A252447(A052905(n)+9)`
-/

namespace A252444.P3798476526526010004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (A052905 n + 9).toNat

end

end A252444.P3798476526526010004

/-! ## A252444.P2549412444119143459

`A252447(A055999(n)+10)`
-/

namespace A252444.P2549412444119143459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (A055999 n + 10).toNat

end

end A252444.P2549412444119143459

/-! ## A252444.P5256433629148282555

`A252447(A167614(n+2)+1)`
-/

namespace A252444.P5256433629148282555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (A167614 (n + 2) + 1).toNat

end

end A252444.P5256433629148282555

/-!
# A252445: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 3.

The programs for A252445, there is no canonical definition to state claims against.
-/

/-! ## A252445.P12355784811002933600

`A251834(n+1)/2`
-/

namespace A252445.P12355784811002933600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251834 (n + 1) : ℚ) / 2

end

end A252445.P12355784811002933600

/-! ## A252445.P17206449878050863750

`A252447(A374005(n+1))`
-/

namespace A252445.P17206449878050863750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (A374005 (n + 1)).toNat

end

end A252445.P17206449878050863750

/-! ## A252445.P15774050855956334917

`A252447(eq[6, A131818(n+1)])`
-/

namespace A252445.P15774050855956334917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252445.P15774050855956334917

/-! ## A252445.P11599993643872464126

`A252447(eq[4, A193592(n)])`
-/

namespace A252445.P11599993643872464126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252445.P11599993643872464126

/-! ## A252445.P15725451823786414463

`A252447(Δ[A023545(n+1)])`
-/

namespace A252445.P15725451823786414463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (f1 (n + 1) - f1 n).toNat

end

end A252445.P15725451823786414463

/-!
# A252446: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 3.

The programs for A252446, there is no canonical definition to state claims against.
-/

/-! ## A252446.P13667449776241094861

`A251835(n+1)/2`
-/

namespace A252446.P13667449776241094861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251835 (n + 1) : ℚ) / 2

end

end A252446.P13667449776241094861

/-! ## A252446.P10587698877593482517

`A252447(A374007(n+1))`
-/

namespace A252446.P10587698877593482517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (A374007 (n + 1)).toNat

end

end A252446.P10587698877593482517

/-! ## A252446.P12733310913876739532

`A252447(eq[7, A131818(n+1)])`
-/

namespace A252446.P12733310913876739532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252446.P12733310913876739532

/-! ## A252446.P13595145653059893140

`A252447(A000124(n+6)-(n+1))`
-/

namespace A252446.P13595145653059893140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A252446.P13595145653059893140

/-! ## A252446.P8187882403229517484

`A252447(eq[3, A219347(n)])`
-/

namespace A252446.P8187882403229517484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252446.P8187882403229517484

/-!
# A252447: T(n,k)=Number of (n+2)X(k+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 3.

The programs for A252447, there is no canonical definition to state claims against.
-/

/-! ## A252447.P2027269311642662993

`A251836(n+1)/2`
-/

namespace A252447.P2027269311642662993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251836 (n + 1) : ℚ) / 2

end

end A252447.P2027269311642662993

/-! ## A252447.P606655978623956778

`2^A008683(A002146(n))*A251836(n+1)`
-/

namespace A252447.P606655978623956778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002146 n).toNat : ℤ) * (A251836 (n + 1) : ℚ)

end

end A252447.P606655978623956778

/-! ## A252447.P7227237686772457822

`2^A008683(A154385(n+5))*A251836(n+1)`
-/

namespace A252447.P7227237686772457822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A154385 (n + 5)).toNat : ℤ) * (A251836 (n + 1) : ℚ)

end

end A252447.P7227237686772457822

/-! ## A252447.P508691586902559607

`2^A008683(A007318(C(2, n²))+1)*A251836(n+1)`
-/

namespace A252447.P508691586902559607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A007318 (Nat.choose 2 (n ^ 2)) + 1).toNat : ℤ) * (A251836 (n + 1) : ℚ)

end

end A252447.P508691586902559607

/-! ## A252447.P17385981080798202546

`2^A008683(A002148(n))*A251836(n+1)`
-/

namespace A252447.P17385981080798202546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ) * (A251836 (n + 1) : ℚ)

end

end A252447.P17385981080798202546

/-! ## A252447.P16585469734528836759

`2^A008683(A327348(n+1))*A251836(n+1)`
-/

namespace A252447.P16585469734528836759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A327348 (n + 1)).toNat : ℤ) * (A251836 (n + 1) : ℚ)

end

end A252447.P16585469734528836759

/-! ## A252447.P3859658172445369000

`2^A008683(A130796(n+1))*A251836(n+1)`
-/

namespace A252447.P3859658172445369000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A130796 (n + 1)).toNat : ℤ) * (A251836 (n + 1) : ℚ)

end

end A252447.P3859658172445369000

/-!
# A252448: Inverse permutation to A249990.

The programs for A252448, there is no canonical definition to state claims against.
-/

/-! ## A252448.P18016676163306218168

`A277680(n+2)-1`
-/

namespace A252448.P18016676163306218168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277680 (n + 2) - 1

end

end A252448.P18016676163306218168

/-! ## A252448.P2627859266599486155

`∑[-Δ[-A277680(n+1)]]`
-/

namespace A252448.P2627859266599486155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A277680 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252448.P2627859266599486155

/-! ## A252448.P7216820666496234716

`∑[Δ[A277680(n+1)]%A017497(n)]`
-/

namespace A252448.P7216820666496234716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277680 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017497 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252448.P7216820666496234716

/-! ## A252448.P16610541988849022155

`A023443(A277680(n+2))`
-/

namespace A252448.P16610541988849022155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A277680 (n + 2)).toNat

end

end A252448.P16610541988849022155

/-! ## A252448.P14642026082599082143

`A000720(p?[A008578(A277680(n+1))])`
-/

namespace A252448.P14642026082599082143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A277680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A252448.P14642026082599082143

/-!
# A252449: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252449, there is no canonical definition to state claims against.
-/

/-! ## A252449.P12523167500474710265

`A252457(∑[4*n]+1)`
-/

namespace A252449.P12523167500474710265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252449.P12523167500474710265

/-! ## A252449.P9603802740278306201

`A252457(A001844(n))+A025439(n)`
-/

namespace A252449.P9603802740278306201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A001844 n).toNat + A025439 n

end

end A252449.P9603802740278306201

/-! ## A252449.P12952359344996534877

`A308976(n)+A252457(A001844(n))`
-/

namespace A252449.P12952359344996534877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308976 n + A252457 (A001844 n).toNat

end

end A252449.P12952359344996534877

/-! ## A252449.P6892715386644906703

`lcm(A020985(n), A252457(A001844(n)))`
-/

namespace A252449.P6892715386644906703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A252457 (A001844 n).toNat)

end

end A252449.P6892715386644906703

/-! ## A252449.P11787191331825289171

`or(A000007(n), A252457(A001844(n)))`
-/

namespace A252449.P11787191331825289171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252457 (A001844 n).toNat)

end

end A252449.P11787191331825289171

/-!
# A252450: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252450, there is no canonical definition to state claims against.
-/

/-! ## A252450.P5935401441125665100

`A252457(∑[n]+1)`
-/

namespace A252450.P5935401441125665100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252450.P5935401441125665100

/-! ## A252450.P235069860366342868

`A252457(A000124(n))+A025439(n)`
-/

namespace A252450.P235069860366342868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A000124 n).toNat + A025439 n

end

end A252450.P235069860366342868

/-! ## A252450.P15664900961453059969

`A252457(A000124(n))+A000007(n+1)`
-/

namespace A252450.P15664900961453059969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A000124 n).toNat + A000007 (n + 1)

end

end A252450.P15664900961453059969

/-! ## A252450.P3902283512830824376

`A252457(A000124(n))+A000038(n+1)`
-/

namespace A252450.P3902283512830824376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A000124 n).toNat + A000038 (n + 1)

end

end A252450.P3902283512830824376

/-! ## A252450.P10451645123102728839

`A252457(A008795(2*n))+A025443(n)`
-/

namespace A252450.P10451645123102728839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A008795 (2 * n)).toNat + A025443 n

end

end A252450.P10451645123102728839

/-!
# A252451: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252451, there is no canonical definition to state claims against.
-/

/-! ## A252451.P2310624541114527577

`A252457(∑[n+1]+2)`
-/

namespace A252451.P2310624541114527577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252451.P2310624541114527577

/-! ## A252451.P14188478990046907493

`or(char[2], A252457(A000096(n)+3))`
-/

namespace A252451.P14188478990046907493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252457 (A000096 n + 3).toNat)

end

end A252451.P14188478990046907493

/-! ## A252451.P58121999761937327

`A033999(n)²*A252457(A000096(n)+3)`
-/

namespace A252451.P58121999761937327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A252457 (A000096 n + 3).toNat

end

end A252451.P58121999761937327

/-! ## A252451.P11657601468778835799

`A252457(A000096(n)+3)+A000038(n+1)`
-/

namespace A252451.P11657601468778835799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A000096 n + 3).toNat + A000038 (n + 1)

end

end A252451.P11657601468778835799

/-! ## A252451.P15012144633952893165

`A252457(A000096(n)+3)%A308683(n+1)`
-/

namespace A252451.P15012144633952893165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252457 (A000096 n + 3).toNat) (A308683 (n + 1))

end

end A252451.P15012144633952893165

/-!
# A252452: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252452, there is no canonical definition to state claims against.
-/

/-! ## A252452.P4935999881643992378

`A252457(∑[n+2]+4)`
-/

namespace A252452.P4935999881643992378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252452.P4935999881643992378

/-! ## A252452.P18302971973724907934

`A252457(A167614(n+1))+A185284(n)`
-/

namespace A252452.P18302971973724907934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A167614 (n + 1)).toNat + A185284 n

end

end A252452.P18302971973724907934

/-! ## A252452.P5738337134709113530

`A063435(n)*A252457(A167614(n+1))`
-/

namespace A252452.P5738337134709113530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A252457 (A167614 (n + 1)).toNat

end

end A252452.P5738337134709113530

/-! ## A252452.P4546946056492087660

`A252457(A167614(n+1))%A063433(n)`
-/

namespace A252452.P4546946056492087660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252457 (A167614 (n + 1)).toNat) (A063433 n)

end

end A252452.P4546946056492087660

/-! ## A252452.P5503347988961339912

`lcm(A033999(n), A252457(A167614(n+1)))`
-/

namespace A252452.P5503347988961339912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252457 (A167614 (n + 1)).toNat)

end

end A252452.P5503347988961339912

/-!
# A252453: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252453, there is no canonical definition to state claims against.
-/

/-! ## A252453.P5083922042745094358

`A252457(∑[n+3]+7)`
-/

namespace A252453.P5083922042745094358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252453.P5083922042745094358

/-! ## A252453.P9777042593165864425

`or(A025456(3*n+2), A252457(A055998(n+2)))`
-/

namespace A252453.P9777042593165864425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025456 (3 * n + 2)) (A252457 (A055998 (n + 2)).toNat)

end

end A252453.P9777042593165864425

/-!
# A252454: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252454, there is no canonical definition to state claims against.
-/

/-! ## A252454.P75047180335183892

`A252457(A374005(n+1))`
-/

namespace A252454.P75047180335183892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A374005 (n + 1)).toNat

end

end A252454.P75047180335183892

/-! ## A252454.P12967448869421418356

`A252457(A167499(n+3))`
-/

namespace A252454.P12967448869421418356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A167499 (n + 3)).toNat

end

end A252454.P12967448869421418356

/-! ## A252454.P2578722236786108632

`A252457(A000217(n+4)+5)`
-/

namespace A252454.P2578722236786108632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A000217 (n + 4) + 5).toNat

end

end A252454.P2578722236786108632

/-! ## A252454.P5824750224607139715

`A252457(eq[4, A140996(n)]+8)`
-/

namespace A252454.P5824750224607139715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 8)

end

end A252454.P5824750224607139715

/-! ## A252454.P3218706209481131649

`A252457(Δ[A023545(n+1)])`
-/

namespace A252454.P3218706209481131649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (f1 (n + 1) - f1 n).toNat

end

end A252454.P3218706209481131649

/-!
# A252455: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252455, there is no canonical definition to state claims against.
-/

/-! ## A252455.P9070943020339439218

`A252457(A374007(n+1))`
-/

namespace A252455.P9070943020339439218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A374007 (n + 1)).toNat

end

end A252455.P9070943020339439218

/-! ## A252455.P5057620473715514095

`A252457(A166136(n+4))`
-/

namespace A252455.P5057620473715514095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A166136 (n + 4)).toNat

end

end A252455.P5057620473715514095

/-! ## A252455.P9838775953219604550

`A252457(A167499(n+4)+1)`
-/

namespace A252455.P9838775953219604550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A167499 (n + 4) + 1).toNat

end

end A252455.P9838775953219604550

/-! ## A252455.P11253757729014120427

`A252457(A167487(n+4)-1)`
-/

namespace A252455.P11253757729014120427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A167487 (n + 4) - 1).toNat

end

end A252455.P11253757729014120427

/-! ## A252455.P1395422449788694800

`A252457(A000124(n+5)+5)`
-/

namespace A252455.P1395422449788694800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A000124 (n + 5) + 5).toNat

end

end A252455.P1395422449788694800

/-!
# A252456: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 4 6 or 7.

The programs for A252456, there is no canonical definition to state claims against.
-/

/-! ## A252456.P15045976549862466318

`A252457(A374008(n+1))`
-/

namespace A252456.P15045976549862466318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A374008 (n + 1)).toNat

end

end A252456.P15045976549862466318

/-! ## A252456.P8980405222619230249

`A252457(A167487(n+5))`
-/

namespace A252456.P8980405222619230249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A167487 (n + 5)).toNat

end

end A252456.P8980405222619230249

/-! ## A252456.P14893450968348555586

`A252457(eq[8, A131818(n+1)])`
-/

namespace A252456.P14893450968348555586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252456.P14893450968348555586

/-! ## A252456.P8525370827851815006

`A252457(A055999(n+4))`
-/

namespace A252456.P8525370827851815006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (A055999 (n + 4)).toNat

end

end A252456.P8525370827851815006

/-! ## A252456.P871194669769318332

`A252457(eq[6, A193592(n)])`
-/

namespace A252456.P871194669769318332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252456.P871194669769318332

/-!
# A252458: Fixed points of permutations A249990 and A252448.

The programs for A252458, there is no canonical definition to state claims against.
-/

/-! ## A252458.P15348908456762603867

`eq[n, A249990(A028310(n))]`
-/

namespace A252458.P15348908456762603867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249990 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252458.P15348908456762603867

/-! ## A252458.P2545934214377132454

`eq[A071262(n), A277679(n+1)]`
-/

namespace A252458.P2545934214377132454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252458.P2545934214377132454

/-! ## A252458.P5773010077138217156

`eq[A028253(n+1), A277679(n+1)]`
-/

namespace A252458.P5773010077138217156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252458.P5773010077138217156

/-! ## A252458.P11266687700190981024

`eq[A277679(n+1)%A007062(n+1), n+1]`
-/

namespace A252458.P11266687700190981024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277679 (n + 1)) (A007062 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A252458.P11266687700190981024

/-! ## A252458.P15538893915862418754

`eq[A000040(A277679(n+1)), A006005(n+1)]`
-/

namespace A252458.P15538893915862418754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A277679 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252458.P15538893915862418754

/-!
# A252459: a(n) = Number of iterations of A003961 starting from n which are needed before the result is one of the numbers in A251726. a(1) = 0 by convention.

The programs for A252459, there is no canonical definition to state claims against.
-/

/-! ## A252459.P1654255114567946852

`A006928(A000041(n))*A284256(n+1)`
-/

namespace A252459.P1654255114567946852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A000041 n).toNat * A284256 (n + 1)

end

end A252459.P1654255114567946852

/-! ## A252459.P2261352796738849475

`A351014(A002522(3*n+1)%A243055(n+1)!)`
-/

namespace A252459.P2261352796738849475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.tmod (A002522 (3 * n + 1)) (Nat.factorial (A243055 (n + 1)).toNat : ℤ)).toNat

end

end A252459.P2261352796738849475

/-! ## A252459.P13025418510639548517

`A000120(A051056(n)%A284254(n+1))`
-/

namespace A252459.P13025418510639548517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A051056 n) (A284254 (n + 1))).toNat

end

end A252459.P13025418510639548517

/-! ## A252459.P132525136007932861

`A087011(A284254(n+1)^A066099(n+2))`
-/

namespace A252459.P132525136007932861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (SequenceMachineLib.roundAway ((A284254 (n + 1) : ℚ) ^ (A066099 (n + 2) : ℤ))).toNat

end

end A252459.P132525136007932861

/-! ## A252459.P7576834993185412250

`A005449(A002383(n+1))%A069897(n+1)`
-/

namespace A252459.P7576834993185412250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005449 (A002383 (n + 1)).toNat) (A069897 (n + 1))

end

end A252459.P7576834993185412250

/-!
# A252460: Inverse permutation to A083221 considered as a permutation of natural numbers (with assumption that a(1) = 1).

The programs for A252460, there is no canonical definition to state claims against.
-/

/-! ## A252460.P15684422234154930555

`A249742(A028310(n))+A057427(n)`
-/

namespace A252460.P15684422234154930555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A028310 n).toNat + A057427 n

end

end A252460.P15684422234154930555

/-! ## A252460.P13166778998709232147

`A249742(A028310(n))-A057428(n)`
-/

namespace A252460.P13166778998709232147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A028310 n).toNat - A057428 n

end

end A252460.P13166778998709232147

/-! ## A252460.P11613630407019072639

`A249742(A028310(n))+A001221(A008578(n+1))`
-/

namespace A252460.P11613630407019072639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A028310 n).toNat + A001221 (A008578 (n + 1)).toNat

end

end A252460.P11613630407019072639

/-! ## A252460.P14005616293318686303

`A249742(A028310(n))+A010051(A020639(n+1))`
-/

namespace A252460.P14005616293318686303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A028310 n).toNat + A010051 (A020639 (n + 1)).toNat

end

end A252460.P14005616293318686303

/-! ## A252460.P18006080469317152288

`A249742(A028310(n))+char[A277813(n+1)]`
-/

namespace A252460.P18006080469317152288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277813 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A252460.P18006080469317152288

/-! ## A252460.P15881708741166554097

`A252752(A249818(n+1))`
-/

namespace A252460.P15881708741166554097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252752 (A249818 (n + 1)).toNat

end

end A252460.P15881708741166554097

/-! ## A252460.P14529549431122262441

`A255552(A255553(n+1))`
-/

namespace A252460.P14529549431122262441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255552 (A255553 (n + 1)).toNat

end

end A252460.P14529549431122262441

/-! ## A252460.P4227685999758479548

`A255552(A260436(A255407(n+1)))`
-/

namespace A252460.P4227685999758479548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255552 (A260436 (A255407 (n + 1)).toNat).toNat

end

end A252460.P4227685999758479548

/-! ## A252460.P9657562899856651498

`A255128(A255407(n+1))`
-/

namespace A252460.P9657562899856651498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255128 (A255407 (n + 1)).toNat

end

end A252460.P9657562899856651498

/-!
# A252461: Shift one instance of the smallest prime one step towards smaller primes: a(1) = 1, a(2n) = n, and for odd numbers > 1: a(n) = (n / prime(s)) * prime(s-1), where s = A055396(n), index of the smallest prime dividing n.

The programs for A252461, there is no canonical definition to state claims against.
-/

/-! ## A252461.P17877192085754581441

`A032742(n+1)*A117365(n+1)`
-/

namespace A252461.P17877192085754581441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A117365 (n + 1)

end

end A252461.P17877192085754581441

/-! ## A252461.P2765566808391981020

`A032742(n+1)*A064989(A020639(n+1))`
-/

namespace A252461.P2765566808391981020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A064989 (A020639 (n + 1)).toNat

end

end A252461.P2765566808391981020

/-! ## A252461.P4405783930007336393

`A032742(n+1)*A283463(A020639(n+1)+1)`
-/

namespace A252461.P4405783930007336393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A283463 (A020639 (n + 1) + 1).toNat

end

end A252461.P4405783930007336393

/-! ## A252461.P6047763337464055822

`A032742(n+1)*A064989((n+1)/A032742(n+1))`
-/

namespace A252461.P6047763337464055822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A252461.P6047763337464055822

/-! ## A252461.P553431188950793806

`A117365(n+1)/A117366(n+1)*A285639(n+1)`
-/

namespace A252461.P553431188950793806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117365 (n + 1) : ℚ) / (A117366 (n + 1) : ℚ) * (A285639 (n + 1) : ℚ)

end

end A252461.P553431188950793806

/-! ## A252461.P5676431602579638024

`(n+1-A060681(n+1))*A250470(A020639(n+1))`
-/

namespace A252461.P5676431602579638024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A060681 (n + 1)) * A250470 (A020639 (n + 1)).toNat

end

end A252461.P5676431602579638024

/-! ## A252461.P14546330818907016428

`(n+1-A060681(n+1))*A250470((n+1)/A032742(n+1))`
-/

namespace A252461.P14546330818907016428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A060681 (n + 1)) * A250470 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A252461.P14546330818907016428

/-! ## A252461.P4749444610426251610

`(n+1-A060681(n+1))*A250470((n+1)/gcd(n+1, A060681(n+1)))`
-/

namespace A252461.P4749444610426251610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A060681 (n + 1)) * A250470 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)) : ℚ))).toNat

end

end A252461.P4749444610426251610

/-! ## A252461.P10412340700437303463

`lcm(A020639(A253554(n+1)), A032742(n+1))`
-/

namespace A252461.P10412340700437303463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A253554 (n + 1)).toNat) (A032742 (n + 1))

end

end A252461.P10412340700437303463

/-! ## A252461.P3266017109902014520

`A064989(A020639(n+1))*A283463(A266646(n+1))`
-/

namespace A252461.P3266017109902014520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A020639 (n + 1)).toNat * A283463 (A266646 (n + 1)).toNat

end

end A252461.P3266017109902014520

/-! ## A252461.P13119189790780140065

`A064989(A020639(n+1)*A003961(n+1))/A020639(n+1)`
-/

namespace A252461.P13119189790780140065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A020639 (n + 1) * A003961 (n + 1)).toNat : ℚ) / (A020639 (n + 1) : ℚ)

end

end A252461.P13119189790780140065

/-!
# A252462: Shift one instance of the largest prime one step towards smaller primes: a(1) = 1, a(2^n) = 2^(n-1), and for other numbers: a(n) = (n / prime(g)) * prime(g-1), where g = A061395(n), index of the greatest prime dividing n.

The programs for A252462, the canonical program `A252462.P2403835879463174722` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252462 has offset 1).

The definition of A252462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A052126, A252735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252462.P2403835879463174722

`A008578(1+A252735(n+1))*A052126(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A252462

/-- `A008578(1+A252735(n+1))*A052126(n+1)` -/
def P2403835879463174722.Spec : Prop :=
  ∀ n, P2403835879463174722.a n = A252462 (n + 1)

theorem P2403835879463174722.correct : P2403835879463174722.Spec := by
  intro n
  simp only [A252462, Nat.add_sub_cancel]

end A252462

/-! ## A252462.P8295364008109361781

`A233511(gcd(n+1, A153152(n)))`
-/

namespace A252462.P8295364008109361781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233511 (Int.gcd (n + 1 : ℤ) (A153152 n))

end

end A252462.P8295364008109361781

namespace A252462

/-- `A233511(gcd(n+1, A153152(n)))` -/
def P8295364008109361781.Spec : Prop :=
  ∀ n, P8295364008109361781.a n = A252462 (n + 1)

end A252462

/-! ## A252462.P10085335088013898424

`A052126(n+1)*A117364(n+1)`
-/

namespace A252462.P10085335088013898424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A117364 (n + 1)

end

end A252462.P10085335088013898424

namespace A252462

/-- `A052126(n+1)*A117364(n+1)` -/
def P10085335088013898424.Spec : Prop :=
  ∀ n, P10085335088013898424.a n = A252462 (n + 1)

end A252462

/-! ## A252462.P15774712312678016703

`A052126(n+1)*A064989(A006530(n+1))`
-/

namespace A252462.P15774712312678016703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A064989 (A006530 (n + 1)).toNat

end

end A252462.P15774712312678016703

namespace A252462

/-- `A052126(n+1)*A064989(A006530(n+1))` -/
def P15774712312678016703.Spec : Prop :=
  ∀ n, P15774712312678016703.a n = A252462 (n + 1)

end A252462

/-! ## A252462.P11063029777299184414

`A052126(n+1)*A064989((n+1)/A052126(n+1))`
-/

namespace A252462.P11063029777299184414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A252462.P11063029777299184414

namespace A252462

/-- `A052126(n+1)*A064989((n+1)/A052126(n+1))` -/
def P11063029777299184414.Spec : Prop :=
  ∀ n, P11063029777299184414.a n = A252462 (n + 1)

end A252462

/-! ## A252462.P761383552266430080

`A052126(n+1)*A252463((n+1)/A052126(n+1))`
-/

namespace A252462.P761383552266430080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A252462.P761383552266430080

namespace A252462

/-- `A052126(n+1)*A252463((n+1)/A052126(n+1))` -/
def P761383552266430080.Spec : Prop :=
  ∀ n, P761383552266430080.a n = A252462 (n + 1)

end A252462

/-! ## A252462.P15537755668108242175

`(n+1)/A006530(n+1)*A283463(A006530(n+1)+1)`
-/

namespace A252462.P15537755668108242175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A283463 (A006530 (n + 1) + 1).toNat : ℚ)

end

end A252462.P15537755668108242175

namespace A252462

/-- `(n+1)/A006530(n+1)*A283463(A006530(n+1)+1)` -/
def P15537755668108242175.Spec : Prop :=
  ∀ n, P15537755668108242175.a n = (A252462 (n + 1) : ℚ)

end A252462

/-! ## A252462.P11932945094966326136

`A233511(A153152(2*n+1)-A153152(n))`
-/

namespace A252462.P11932945094966326136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233511 (A153152 (2 * n + 1) - A153152 n).toNat

end

end A252462.P11932945094966326136

namespace A252462

/-- `A233511(A153152(2*n+1)-A153152(n))` -/
def P11932945094966326136.Spec : Prop :=
  ∀ n, P11932945094966326136.a n = A252462 (n + 1)

end A252462

/-! ## A252462.P8156451147305431540

`gcd(A003418(n), A233511(n+1))`
-/

namespace A252462.P8156451147305431540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A233511 (n + 1))

end

end A252462.P8156451147305431540

namespace A252462

/-- `gcd(A003418(n), A233511(n+1))` -/
def P8156451147305431540.Spec : Prop :=
  ∀ n, (P8156451147305431540.a n : ℤ) = A252462 (n + 1)

end A252462

/-!
# A252463: Hybrid shift: a(1) = 1, a(2n) = n, a(2n+1) = A064989(2n+1); shift the even numbers one bit right, shift the prime factorization of odd numbers one step towards smaller primes.

The programs for A252463, the canonical program `A252463.P9404790189412916411` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252463 has offset 1).

The definition of A252463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252463.P6781301061751077018

`∑{d}[n+1, A348045(#)]`
-/

namespace A252463.P6781301061751077018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A348045 d

end

end A252463.P6781301061751077018

namespace A252463

/-- `∑{d}[n+1, A348045(#)]` -/
def P6781301061751077018.Spec : Prop :=
  ∀ n, P6781301061751077018.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P3621501000752171482

`∑{d}[n+1, #*A349437((n+1)/#)]`
-/

namespace A252463.P3621501000752171482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A252463.P3621501000752171482

namespace A252463

/-- `∑{d}[n+1, #*A349437((n+1)/#)]` -/
def P3621501000752171482.Spec : Prop :=
  ∀ n, P3621501000752171482.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P18311004960611613926

`A349349(n+1)-A349348(n+1)`
-/

namespace A252463.P18311004960611613926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349349 (n + 1) - A349348 (n + 1)

end

end A252463.P18311004960611613926

namespace A252463

/-- `A349349(n+1)-A349348(n+1)` -/
def P18311004960611613926.Spec : Prop :=
  ∀ n, P18311004960611613926.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P9404790189412916411

`A243502(A152271(n+1))/2*A152271(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A252463

/-- `A243502(A152271(n+1))/2*A152271(n)` -/
def P9404790189412916411.Spec : Prop :=
  ∀ n, P9404790189412916411.a n = (A252463 (n + 1) : ℚ)

end A252463

/-! ## A252463.P12481804119193107504

`A285727(A051755(n+2))`
-/

namespace A252463.P12481804119193107504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (A051755 (n + 2)).toNat

end

end A252463.P12481804119193107504

namespace A252463

/-- `A285727(A051755(n+2))` -/
def P12481804119193107504.Spec : Prop :=
  ∀ n, P12481804119193107504.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P4483597926416142418

`A285727(2*(n+1))+A063524(n+1)`
-/

namespace A252463.P4483597926416142418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (2 * (n + 1)) + A063524 (n + 1)

end

end A252463.P4483597926416142418

namespace A252463

/-- `A285727(2*(n+1))+A063524(n+1)` -/
def P4483597926416142418.Spec : Prop :=
  ∀ n, P4483597926416142418.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P3378935155813194694

`A285727(2*(n+1))-A159075(n+1)`
-/

namespace A252463.P3378935155813194694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (2 * (n + 1)) - A159075 (n + 1)

end

end A252463.P3378935155813194694

namespace A252463

/-- `A285727(2*(n+1))-A159075(n+1)` -/
def P3378935155813194694.Spec : Prop :=
  ∀ n, P3378935155813194694.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P1303422835374011455

`A285727(2*(n+1))+A285701(2*(n+1))`
-/

namespace A252463.P1303422835374011455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (2 * (n + 1)) + A285701 (2 * (n + 1))

end

end A252463.P1303422835374011455

namespace A252463

/-- `A285727(2*(n+1))+A285701(2*(n+1))` -/
def P1303422835374011455.Spec : Prop :=
  ∀ n, P1303422835374011455.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P16388016120644501050

`A285727(2*(n+1))+A159075(2*n+1)²`
-/

namespace A252463.P16388016120644501050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (2 * (n + 1)) + A159075 (2 * n + 1) ^ 2

end

end A252463.P16388016120644501050

namespace A252463

/-- `A285727(2*(n+1))+A159075(2*n+1)²` -/
def P16388016120644501050.Spec : Prop :=
  ∀ n, P16388016120644501050.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P11897355835307534881

`A285727(2*(n+1))+A159075(2*n+1)*A159075(n+1)`
-/

namespace A252463.P11897355835307534881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (2 * (n + 1)) + A159075 (2 * n + 1) * A159075 (n + 1)

end

end A252463.P11897355835307534881

namespace A252463

/-- `A285727(2*(n+1))+A159075(2*n+1)*A159075(n+1)` -/
def P11897355835307534881.Spec : Prop :=
  ∀ n, P11897355835307534881.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P8974986500416146690

`A246277(2*lcm(2, n+1)-(n+1))`
-/

namespace A252463.P8974986500416146690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (2 * Nat.lcm 2 (n + 1) - (n + 1))

end

end A252463.P8974986500416146690

namespace A252463

/-- `A246277(2*lcm(2, n+1)-(n+1))` -/
def P8974986500416146690.Spec : Prop :=
  ∀ n, P8974986500416146690.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P7571913595695312249

`A246277(A347365(n+1))`
-/

namespace A252463.P7571913595695312249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A347365 (n + 1)).toNat

end

end A252463.P7571913595695312249

namespace A252463

/-- `A246277(A347365(n+1))` -/
def P7571913595695312249.Spec : Prop :=
  ∀ n, P7571913595695312249.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P12928649131428595182

`A246277(Δ[A042948(n+1)]*(n+1))`
-/

namespace A252463.P12928649131428595182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 ((f1 (n + 1) - f1 n) * (n + 1 : ℤ)).toNat

end

end A252463.P12928649131428595182

namespace A252463

/-- `A246277(Δ[A042948(n+1)]*(n+1))` -/
def P12928649131428595182.Spec : Prop :=
  ∀ n, P12928649131428595182.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P6135743766852147485

`ceil(A249817(3*(n+1))/6)`
-/

namespace A252463.P6135743766852147485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A249817 (3 * (n + 1)) : ℚ) / 6⌉

end

end A252463.P6135743766852147485

namespace A252463

/-- `ceil(A249817(3*(n+1))/6)` -/
def P6135743766852147485.Spec : Prop :=
  ∀ n, P6135743766852147485.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P9595961675707167480

`A285727((gcd(2, n)+1)*(n+1))`
-/

namespace A252463.P9595961675707167480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 ((Nat.gcd 2 n + 1) * (n + 1))

end

end A252463.P9595961675707167480

namespace A252463

/-- `A285727((gcd(2, n)+1)*(n+1))` -/
def P9595961675707167480.Spec : Prop :=
  ∀ n, P9595961675707167480.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P1254310230803469967

`A285727((3-n%2)*(n+1))`
-/

namespace A252463.P1254310230803469967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 ((3 - ((n % 2 : ℕ) : ℤ)) * (n + 1 : ℤ)).toNat

end

end A252463.P1254310230803469967

namespace A252463

/-- `A285727((3-n%2)*(n+1))` -/
def P1254310230803469967.Spec : Prop :=
  ∀ n, P1254310230803469967.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P7218402117387897915

`A285727((3-and(1, n))*(n+1))`
-/

namespace A252463.P7218402117387897915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 ((3 - (Nat.land 1 n : ℤ)) * (n + 1 : ℤ)).toNat

end

end A252463.P7218402117387897915

namespace A252463

/-- `A285727((3-and(1, n))*(n+1))` -/
def P7218402117387897915.Spec : Prop :=
  ∀ n, P7218402117387897915.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P4549607018409390839

`A285727(((n+1)%2+2)*(n+1))`
-/

namespace A252463.P4549607018409390839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (((n + 1) % 2 + 2) * (n + 1))

end

end A252463.P4549607018409390839

namespace A252463

/-- `A285727(((n+1)%2+2)*(n+1))` -/
def P4549607018409390839.Spec : Prop :=
  ∀ n, P4549607018409390839.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P6572927595721432235

`A285727(A106833(n+1))`
-/

namespace A252463.P6572927595721432235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (A106833 (n + 1)).toNat

end

end A252463.P6572927595721432235

namespace A252463

/-- `A285727(A106833(n+1))` -/
def P6572927595721432235.Spec : Prop :=
  ∀ n, P6572927595721432235.a n = A252463 (n + 1)

end A252463

/-! ## A252463.P15339247898571995149

`A302024(A300840(A302023(n+1)))`
-/

namespace A252463.P15339247898571995149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (A300840 (A302023 (n + 1)).toNat).toNat

end

end A252463.P15339247898571995149

namespace A252463

/-- `A302024(A300840(A302023(n+1)))` -/
def P15339247898571995149.Spec : Prop :=
  ∀ n, P15339247898571995149.a n = A252463 (n + 1)

end A252463

/-!
# A252464: a(1) = 0, a(2n) = 1 + a(n), a(2n+1) = 1 + a(A064989(2n+1)); also binary width of terms of A156552 and A243071.

The programs for A252464, the canonical program `A252464.P11274602121942962009` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252464 has offset 1).

The definition of A252464 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, A252736, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252464.P11046314576713963799

`A325134(n+1)-1`
-/

namespace A252464.P11046314576713963799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325134 (n + 1) - 1

end

end A252464.P11046314576713963799

namespace A252464

/-- `A325134(n+1)-1` -/
def P11046314576713963799.Spec : Prop :=
  ∀ n, P11046314576713963799.a n = A252464 (n + 1)

theorem P11046314576713963799.correct : P11046314576713963799.Spec := by
  intro n
  simp only [A252464, Nat.add_sub_cancel, A252464.P11046314576713963799.a, A252464.P11274602121942962009.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A325134, A325134.P8946370293622767949.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A252464

/-! ## A252464.P3254356038760733171

`1+a(A252463(n+1)-1)` with `a(0)=0`
-/

namespace A252464.P3254356038760733171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A252463 (n + 1) - 1).toNat

end

end A252464.P3254356038760733171

namespace A252464

/-- `1+a(A252463(n+1)-1)` -/
def P3254356038760733171.Spec : Prop :=
  ∀ n, (P3254356038760733171.a n : ℤ) = A252464 (n + 1)

end A252464

/-! ## A252464.P11403884406666443911

`1+a(A253553(n+1)-1)` with `a(0)=0`
-/

namespace A252464.P11403884406666443911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A253553 (n + 1) - 1).toNat

end

end A252464.P11403884406666443911

namespace A252464

/-- `1+a(A253553(n+1)-1)` -/
def P11403884406666443911.Spec : Prop :=
  ∀ n, (P11403884406666443911.a n : ℤ) = A252464 (n + 1)

end A252464

/-! ## A252464.P1282219519073511601

`A001222(n+1)+A252735(n+1)`
-/

namespace A252464.P1282219519073511601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A252735 (n + 1)

end

end A252464.P1282219519073511601

namespace A252464

/-- `A001222(n+1)+A252735(n+1)` -/
def P1282219519073511601.Spec : Prop :=
  ∀ n, P1282219519073511601.a n = A252464 (n + 1)

end A252464

/-! ## A252464.P10725251347169381000

`A001221(n+1)+A297167(n+1)`
-/

namespace A252464.P10725251347169381000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A297167 (n + 1)

end

end A252464.P10725251347169381000

namespace A252464

/-- `A001221(n+1)+A297167(n+1)` -/
def P10725251347169381000.Spec : Prop :=
  ∀ n, P10725251347169381000.a n = A252464 (n + 1)

end A252464

/-! ## A252464.P11274602121942962009

`A061395(n+1)+A252736(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A252464

/-- `A061395(n+1)+A252736(n+1)` -/
def P11274602121942962009.Spec : Prop :=
  ∀ n, P11274602121942962009.a n = A252464 (n + 1)

theorem P11274602121942962009.correct : P11274602121942962009.Spec := by
  intro n
  simp only [A252464, Nat.add_sub_cancel]

end A252464

/-! ## A252464.P10721402021952575972

`A297113(n+1)+A297155(n+1)`
-/

namespace A252464.P10721402021952575972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) + A297155 (n + 1)

end

end A252464.P10721402021952575972

namespace A252464

/-- `A297113(n+1)+A297155(n+1)` -/
def P10721402021952575972.Spec : Prop :=
  ∀ n, P10721402021952575972.a n = A252464 (n + 1)

end A252464

/-! ## A252464.P326313552588520675

`A056239(A325351(n+1))`
-/

namespace A252464.P326313552588520675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A325351 (n + 1)).toNat

end

end A252464.P326313552588520675

namespace A252464

/-- `A056239(A325351(n+1))` -/
def P326313552588520675.Spec : Prop :=
  ∀ n, P326313552588520675.a n = A252464 (n + 1)

end A252464

/-! ## A252464.P12739736332600296503

`A332894(A108548(n+1))`
-/

namespace A252464.P12739736332600296503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (A108548 (n + 1)).toNat

end

end A252464.P12739736332600296503

namespace A252464

/-- `A332894(A108548(n+1))` -/
def P12739736332600296503.Spec : Prop :=
  ∀ n, P12739736332600296503.a n = A252464 (n + 1)

end A252464

/-! ## A252464.P4338720349181396428

`A347381(n+1)+A347380(n+1)`
-/

namespace A252464.P4338720349181396428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1) + A347380 (n + 1)

end

end A252464.P4338720349181396428

namespace A252464

/-- `A347381(n+1)+A347380(n+1)` -/
def P4338720349181396428.Spec : Prop :=
  ∀ n, P4338720349181396428.a n = A252464 (n + 1)

end A252464

/-! ## A252464.P11825117967519652523

`A364570(n+1)+A364569(n+1)`
-/

namespace A252464.P11825117967519652523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364570 (n + 1) + A364569 (n + 1)

end

end A252464.P11825117967519652523

namespace A252464

/-- `A364570(n+1)+A364569(n+1)` -/
def P11825117967519652523.Spec : Prop :=
  ∀ n, P11825117967519652523.a n = A252464 (n + 1)

end A252464

/-! ## A252464.P10249603405624312932

`A364955(n+1)+A364954(n+1)`
-/

namespace A252464.P10249603405624312932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364955 (n + 1) + A364954 (n + 1)

end

end A252464.P10249603405624312932

namespace A252464

/-- `A364955(n+1)+A364954(n+1)` -/
def P10249603405624312932.Spec : Prop :=
  ∀ n, P10249603405624312932.a n = A252464 (n + 1)

end A252464

/-! ## A252464.P18007590650537844694

`A056239(n+1)-A325135(n+1)`
-/

namespace A252464.P18007590650537844694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A325135 (n + 1)

end

end A252464.P18007590650537844694

namespace A252464

/-- `A056239(n+1)-A325135(n+1)` -/
def P18007590650537844694.Spec : Prop :=
  ∀ n, P18007590650537844694.a n = A252464 (n + 1)

theorem P18007590650537844694.correct : P18007590650537844694.Spec := by
  intro n
  simp only [A252464, Nat.add_sub_cancel, A252464.P18007590650537844694.a, A252464.P11274602121942962009.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A325135, A325135.P723858522553438036.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A252464

/-! ## A252464.P4424266640285254552

`A243503(n+1)-A326844(n+1)`
-/

namespace A252464.P4424266640285254552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1) - A326844 (n + 1)

end

end A252464.P4424266640285254552

namespace A252464

/-- `A243503(n+1)-A326844(n+1)` -/
def P4424266640285254552.Spec : Prop :=
  ∀ n, P4424266640285254552.a n = A252464 (n + 1)

end A252464

/-! ## A252464.P9805648599949076349

`A324863(n+1)-A324870(n+1)`
-/

namespace A252464.P9805648599949076349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (n + 1) - A324870 (n + 1)

end

end A252464.P9805648599949076349

namespace A252464

/-- `A324863(n+1)-A324870(n+1)` -/
def P9805648599949076349.Spec : Prop :=
  ∀ n, P9805648599949076349.a n = A252464 (n + 1)

end A252464

/-! ## A252464.P1442779798234097535

`A243055(2*(n+1))+A001222(n+1)`
-/

namespace A252464.P1442779798234097535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (2 * (n + 1)) + A001222 (n + 1)

end

end A252464.P1442779798234097535

namespace A252464

/-- `A243055(2*(n+1))+A001222(n+1)` -/
def P1442779798234097535.Spec : Prop :=
  ∀ n, P1442779798234097535.a n = A252464 (n + 1)

end A252464

/-! ## A252464.P6235071098371114143

`ceil(log2(A075160(n+1)))`
-/

namespace A252464.P6235071098371114143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A075160 (n + 1) : ℝ)⌉

end

end A252464.P6235071098371114143

namespace A252464

/-- `ceil(log2(A075160(n+1)))` -/
def P6235071098371114143.Spec : Prop :=
  ∀ n, P6235071098371114143.a n = A252464 (n + 1)

end A252464

/-!
# A252465: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252465, there is no canonical definition to state claims against.
-/

/-! ## A252465.P15826294563509158337

`A252473(∑[4*n]+1)`
-/

namespace A252465.P15826294563509158337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252465.P15826294563509158337

/-! ## A252465.P10450414715263300423

`record[A003982(n)*A252473(n+1)]`
-/

namespace A252465.P10450414715263300423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252465.P10450414715263300423

/-! ## A252465.P4990352287358536763

`record[gcd(A037012(n), A252473(n+1))]`
-/

namespace A252465.P4990352287358536763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A252473 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252465.P4990352287358536763

/-! ## A252465.P5577460528235995534

`A007318(C(n+2, 2))*A252473(A001844(n))`
-/

namespace A252465.P5577460528235995534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A252473 (A001844 n).toNat

end

end A252465.P5577460528235995534

/-!
# A252466: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252466, there is no canonical definition to state claims against.
-/

/-! ## A252466.P4484798040889785299

`A252473(∑[n]+1)`
-/

namespace A252466.P4484798040889785299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252466.P4484798040889785299

/-! ## A252466.P1004969323808327516

`record[A010054(n)*A252473(n+1)]`
-/

namespace A252466.P1004969323808327516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252466.P1004969323808327516

/-! ## A252466.P4198078215326114470

`record[gcd(A002262(n), A252473(n+1))]`
-/

namespace A252466.P4198078215326114470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252473 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252466.P4198078215326114470

/-! ## A252466.P16149711703429660766

`record[lcm(A143433(n), A252473(n+1))]`
-/

namespace A252466.P16149711703429660766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143433 n) (A252473 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252466.P16149711703429660766

/-! ## A252466.P8243950481323205806

`A252473(A000124(n))+A000007(n+1)`
-/

namespace A252466.P8243950481323205806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A000124 n).toNat + A000007 (n + 1)

end

end A252466.P8243950481323205806

/-!
# A252467: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252467, there is no canonical definition to state claims against.
-/

/-! ## A252467.P564030675782805741

`A252473(∑[n+1]+2)`
-/

namespace A252467.P564030675782805741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252467.P564030675782805741

/-! ## A252467.P13433519544988908045

`A252473(A252460(2*(n+2)))%A252437(n+1)`
-/

namespace A252467.P13433519544988908045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252473 (A252460 (2 * (n + 2))).toNat) (A252437 (n + 1))

end

end A252467.P13433519544988908045

/-! ## A252467.P9156682627784835104

`A252473(A000096(n+1))%A351597(3*n+5)`
-/

namespace A252467.P9156682627784835104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252473 (A000096 (n + 1)).toNat) (A351597 (3 * n + 5))

end

end A252467.P9156682627784835104

/-!
# A252468: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252468, there is no canonical definition to state claims against.
-/

/-! ## A252468.P2260669137853020128

`A252473(∑[n+2]+4)`
-/

namespace A252468.P2260669137853020128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252468.P2260669137853020128

/-! ## A252468.P14816084246243541249

`or(1, A252473(A167614(n+1)))`
-/

namespace A252468.P14816084246243541249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252473 (A167614 (n + 1)).toNat)

end

end A252468.P14816084246243541249

/-! ## A252468.P3276386547909641495

`A016068(n)*A252473(A167614(n+1))`
-/

namespace A252468.P3276386547909641495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 n * A252473 (A167614 (n + 1)).toNat

end

end A252468.P3276386547909641495

/-! ## A252468.P12293344241298979826

`lcm(A033999(n), A252473(A167614(n+1)))`
-/

namespace A252468.P12293344241298979826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252473 (A167614 (n + 1)).toNat)

end

end A252468.P12293344241298979826

/-! ## A252468.P6420715990609912732

`A252473(A167614(n+1))/A016068(n+1)`
-/

namespace A252468.P6420715990609912732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252473 (A167614 (n + 1)).toNat : ℚ) / (A016068 (n + 1) : ℚ)

end

end A252468.P6420715990609912732

/-!
# A252469: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252469, there is no canonical definition to state claims against.
-/

/-! ## A252469.P18044321891923021067

`A252473(A374004(n+1))`
-/

namespace A252469.P18044321891923021067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A374004 (n + 1)).toNat

end

end A252469.P18044321891923021067

/-! ## A252469.P4385080328623113325

`A252473(A141214(n)+7)`
-/

namespace A252469.P4385080328623113325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A141214 n + 7).toNat

end

end A252469.P4385080328623113325

/-! ## A252469.P17237081671071454141

`A252473(A055999(n)+10)`
-/

namespace A252469.P17237081671071454141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A055999 n + 10).toNat

end

end A252469.P17237081671071454141

/-! ## A252469.P15732793945614994447

`A252473(A167614(n+2)+1)`
-/

namespace A252469.P15732793945614994447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A167614 (n + 2) + 1).toNat

end

end A252469.P15732793945614994447

/-! ## A252469.P12990639978651243740

`A252473(A052905(n+2)-2*n)`
-/

namespace A252469.P12990639978651243740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A052905 (n + 2) - (2 * n : ℤ)).toNat

end

end A252469.P12990639978651243740

/-!
# A252470: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252470, there is no canonical definition to state claims against.
-/

/-! ## A252470.P10823113446206918494

`A252473(A374005(n+1))`
-/

namespace A252470.P10823113446206918494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A374005 (n + 1)).toNat

end

end A252470.P10823113446206918494

/-! ## A252470.P17034051622264324672

`A252473(A167499(n+3))`
-/

namespace A252470.P17034051622264324672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A167499 (n + 3)).toNat

end

end A252470.P17034051622264324672

/-! ## A252470.P12535123931296051534

`A252473(A056000(n)+15)`
-/

namespace A252470.P12535123931296051534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A056000 n + 15).toNat

end

end A252470.P12535123931296051534

/-! ## A252470.P18336158019489849236

`A252473(A167614(n+3)+2)`
-/

namespace A252470.P18336158019489849236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A167614 (n + 3) + 2).toNat

end

end A252470.P18336158019489849236

/-! ## A252470.P13877965892575538745

`A252473(A000124(n+4)+4)`
-/

namespace A252470.P13877965892575538745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A000124 (n + 4) + 4).toNat

end

end A252470.P13877965892575538745

/-!
# A252471: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252471, there is no canonical definition to state claims against.
-/

/-! ## A252471.P9188354101459951439

`A252473(A374007(n+1))`
-/

namespace A252471.P9188354101459951439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A374007 (n + 1)).toNat

end

end A252471.P9188354101459951439

/-! ## A252471.P3395110713372219467

`A252473(A000217(n+5)+6)`
-/

namespace A252471.P3395110713372219467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A000217 (n + 5) + 6).toNat

end

end A252471.P3395110713372219467

/-! ## A252471.P17573741239790815098

`A252473(A055998(n+3)+9)`
-/

namespace A252471.P17573741239790815098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A055998 (n + 3) + 9).toNat

end

end A252471.P17573741239790815098

/-! ## A252471.P4352796144634572018

`A252473(A161680(n+6)+6)`
-/

namespace A252471.P4352796144634572018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A161680 (n + 6) + 6).toNat

end

end A252471.P4352796144634572018

/-! ## A252471.P3140485555640599479

`A252473(A046691(n+3)+10)`
-/

namespace A252471.P3140485555640599479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A046691 (n + 3) + 10).toNat

end

end A252471.P3140485555640599479

/-!
# A252472: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252472, there is no canonical definition to state claims against.
-/

/-! ## A252472.P16200862611080144249

`A252473(A374008(n+1))`
-/

namespace A252472.P16200862611080144249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A374008 (n + 1)).toNat

end

end A252472.P16200862611080144249

/-! ## A252472.P15146699014744596393

`A252473(A055999(n+4))`
-/

namespace A252472.P15146699014744596393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (A055999 (n + 4)).toNat

end

end A252472.P15146699014744596393

/-! ## A252472.P15710956369563119813

`A252473(eq[4, A219347(n)])`
-/

namespace A252472.P15710956369563119813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252472.P15710956369563119813

/-! ## A252472.P16966193079407195434

`A252473(eq[6, A193592(n)])`
-/

namespace A252472.P16966193079407195434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252472.P16966193079407195434

/-! ## A252472.P8891963189773371035

`A252473(eq[10, A185782(n+1)])`
-/

namespace A252472.P8891963189773371035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252472.P8891963189773371035

/-!
# A252474: Record values in A246785.

The programs for A252474, there is no canonical definition to state claims against.
-/

/-! ## A252474.P10865202670141737335

`eq[1, A322075(A103801(n+1))]`
-/

namespace A252474.P10865202670141737335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322075 (A103801 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252474.P10865202670141737335

/-! ## A252474.P9258175671578808642

`∑[gcd(A325825(2*n+1), A342309(2*n+1))]`
-/

namespace A252474.P9258175671578808642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325825 (2 * n + 1)) (A342309 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252474.P9258175671578808642

/-! ## A252474.P16117744878794774941

`lt[A110569(A086810(n)), A244477(n+3)]`
-/

namespace A252474.P16117744878794774941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110569 (A086810 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A252474.P16117744878794774941

/-! ## A252474.P10256122182477006342

`lt[A051344(A344333(n+1)), A067538(2*n+5)]`
-/

namespace A252474.P10256122182477006342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 (A344333 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067538 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A252474.P10256122182477006342

/-!
# A252475: Indices of record values in A246793.

The programs for A252475, there is no canonical definition to state claims against.
-/

/-! ## A252475.P17011695299025533796

`A246787(n+1)+A246786(n+1)`
-/

namespace A252475.P17011695299025533796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246787 (n + 1) + A246786 (n + 1)

end

end A252475.P17011695299025533796

/-! ## A252475.P7973919961808450746

`A246787(n+1)+lt[2, Δ[A246810(n+1)²]]+1`
-/

namespace A252475.P7973919961808450746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246787 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A252475.P7973919961808450746

/-! ## A252475.P17109708539608866076

`A246786(n+1)+record[A246810(n+1)%A246810(n+2)]`
-/

namespace A252475.P17109708539608866076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246810 (n + 1)) (A246810 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246786 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252475.P17109708539608866076

/-! ## A252475.P14243743996156205451

`A246787(n+1)+lt[A246810(n+1), A246810(n+2)]+1`
-/

namespace A252475.P14243743996156205451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246787 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 : ℤ)

end

end A252475.P14243743996156205451

/-! ## A252475.P5812841440791252936

`A246810(A246786(n+1))+A246786(A000027(n+1))`
-/

namespace A252475.P5812841440791252936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (A246786 (n + 1)).toNat + A246786 (A000027 (n + 1)).toNat

end

end A252475.P5812841440791252936

/-!
# A252477: Integer part of 1/(sqrt(prime(n+1))-sqrt(prime(n))).

The programs for A252477, the canonical program `A252477.P7231859735119608919` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252477 has offset 1).

The definition of A252477 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079636, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252477.P7231859735119608919

`A079636(n+1)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A252477

/-- `A079636(n+1)-1` -/
def P7231859735119608919.Spec : Prop :=
  ∀ n, P7231859735119608919.a n = A252477 (n + 1)

theorem P7231859735119608919.correct : P7231859735119608919.Spec := by
  intro n
  simp only [A252477, Nat.add_sub_cancel]

end A252477

/-! ## A252477.P6276491918675671935

`floor(2/Δ[sqrt(A001749(n+1))])`
-/

namespace A252477.P6276491918675671935
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001749 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (f1 (n + 1) - f1 n)⌋

end

end A252477.P6276491918675671935

namespace A252477

/-- `floor(2/Δ[sqrt(A001749(n+1))])` -/
def P6276491918675671935.Spec : Prop :=
  ∀ n, P6276491918675671935.a n = A252477 (n + 1)

end A252477

/-! ## A252477.P5091587882363525803

`floor(1/Δ[sqrt(A000040(n+1))])`
-/

namespace A252477.P5091587882363525803
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋

end

end A252477.P5091587882363525803

namespace A252477

/-- `floor(1/Δ[sqrt(A000040(n+1))])` -/
def P5091587882363525803.Spec : Prop :=
  ∀ n, P5091587882363525803.a n = A252477 (n + 1)

end A252477

/-! ## A252477.P11178571994919515096

`floor(1/Δ[sqrt(A040976(n+1)+2)])`
-/

namespace A252477.P11178571994919515096
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A040976 (n + 1) + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋

end

end A252477.P11178571994919515096

namespace A252477

/-- `floor(1/Δ[sqrt(A040976(n+1)+2)])` -/
def P11178571994919515096.Spec : Prop :=
  ∀ n, P11178571994919515096.a n = A252477 (n + 1)

end A252477

/-! ## A252477.P9945010075972175440

`floor(1/Δ[sqrt(A008578(n+2))])`
-/

namespace A252477.P9945010075972175440
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008578 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋

end

end A252477.P9945010075972175440

namespace A252477

/-- `floor(1/Δ[sqrt(A008578(n+2))])` -/
def P9945010075972175440.Spec : Prop :=
  ∀ n, P9945010075972175440.a n = A252477 (n + 1)

end A252477

/-! ## A252477.P15242760895456486914

`floor(1/Δ[sqrt(A067747(2*n+1))])`
-/

namespace A252477.P15242760895456486914
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067747 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋

end

end A252477.P15242760895456486914

namespace A252477

/-- `floor(1/Δ[sqrt(A067747(2*n+1))])` -/
def P15242760895456486914.Spec : Prop :=
  ∀ n, P15242760895456486914.a n = A252477 (n + 1)

end A252477

/-! ## A252477.P244388591044321561

`ceil(1/Δ[sqrt(A000040(n+1))])-A158388(8*n+3)`
-/

namespace A252477.P244388591044321561
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (f1 (n + 1) - f1 n)⌉ - A158388 (8 * n + 3)

end

end A252477.P244388591044321561

namespace A252477

/-- `ceil(1/Δ[sqrt(A000040(n+1))])-A158388(8*n+3)` -/
def P244388591044321561.Spec : Prop :=
  ∀ n, P244388591044321561.a n = A252477 (n + 1)

end A252477

/-! ## A252477.P3973167228576082213

`ceil(1/Δ[sqrt(A000040(n+1))])-A057979(10*n+16)`
-/

namespace A252477.P3973167228576082213
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (f1 (n + 1) - f1 n)⌉ - A057979 (10 * n + 16)

end

end A252477.P3973167228576082213

namespace A252477

/-- `ceil(1/Δ[sqrt(A000040(n+1))])-A057979(10*n+16)` -/
def P3973167228576082213.Spec : Prop :=
  ∀ n, P3973167228576082213.a n = A252477 (n + 1)

end A252477

/-! ## A252477.P11839721504514251676

`A072828(n+1)%A079636(n+1)`
-/

namespace A252477.P11839721504514251676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A079636 (n + 1))

end

end A252477.P11839721504514251676

namespace A252477

/-- `A072828(n+1)%A079636(n+1)` -/
def P11839721504514251676.Spec : Prop :=
  ∀ n, P11839721504514251676.a n = A252477 (n + 1)

end A252477

/-!
# A252478: Products of a semiprime times a larger prime.

The programs for A252478, there is no canonical definition to state claims against.
-/

/-! ## A252478.P3420436180639856788

`filter[A063762(n+1), A101605(#)]`
-/

namespace A252478.P3420436180639856788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A252478.P3420436180639856788

/-! ## A252478.P16227692628096920657

`filter[A063763(n+1), A101605(#)]`
-/

namespace A252478.P16227692628096920657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A252478.P16227692628096920657

/-! ## A252478.P17055613953549379484

`filter[A014612(n+1), A341591(#)]`
-/

namespace A252478.P17055613953549379484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A252478.P17055613953549379484

/-! ## A252478.P18390012522481103171

`filter[A014612(n+1), A341642(#)]`
-/

namespace A252478.P18390012522481103171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A252478.P18390012522481103171

/-! ## A252478.P12480749245989331325

`filter[A272533(n+1), A101605(#)]`
-/

namespace A252478.P12480749245989331325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A252478.P12480749245989331325

/-! ## A252478.P3366264183968698514

`filter[A063762(n+1), A358753(#)]`
-/

namespace A252478.P3366264183968698514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A252478.P3366264183968698514

/-! ## A252478.P6452988192654493419

`filter[A063763(n+1), A358753(#)]`
-/

namespace A252478.P6452988192654493419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A252478.P6452988192654493419

/-! ## A252478.P6188922820636312412

`filter[A063762(n+1), A373975(#)]`
-/

namespace A252478.P6188922820636312412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A252478.P6188922820636312412

/-! ## A252478.P8430363685216163843

`filter[A063763(n+1), A373975(#)]`
-/

namespace A252478.P8430363685216163843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A252478.P8430363685216163843

/-! ## A252478.P1935225720426943994

`filter[A145784(n+1), A341591(#)]`
-/

namespace A252478.P1935225720426943994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A252478.P1935225720426943994

/-!
# A252479: The number of planar partitions of n with adjacent parts differing by no more than 1.

The programs for A252479, there is no canonical definition to state claims against.
-/

/-! ## A252479.P3318262566054700589

`A352826(A274174(n))`
-/

namespace A252479.P3318262566054700589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352826 (A274174 n).toNat

end

end A252479.P3318262566054700589

/-! ## A252479.P9179387996687743728

`A171948(A270995(n))+round((n+3)²/12)`
-/

namespace A252479.P9179387996687743728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171948 (A270995 n).toNat + SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

end

end A252479.P9179387996687743728

/-! ## A252479.P14618957862014122355

`A244526(A094626(n))+A001911(n)`
-/

namespace A252479.P14618957862014122355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244526 (A094626 n).toNat + A001911 n

end

end A252479.P14618957862014122355

/-! ## A252479.P5554436753440300296

`A000196(A000123(n)*A001970(n))`
-/

namespace A252479.P5554436753440300296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000123 n * A001970 n).toNat

end

end A252479.P5554436753440300296

/-! ## A252479.P935201933337981973

`A352826(A089259(n)-A373264(n+1))`
-/

namespace A252479.P935201933337981973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352826 (A089259 n - A373264 (n + 1)).toNat

end

end A252479.P935201933337981973

/-!
# A252480: Numbers whose decimal representation has at least one '0' digit in a position other than the final digit.

The programs for A252480, the canonical program `A252480.P15877996964888360874` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252480 has offset 1).

The definition of A252480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7721 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252480.P15877996964888360874

`∩[A011540(n+1)-1, A011540(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A252480

/-- `∩[A011540(n+1)-1, A011540(n+1)]` -/
def P15877996964888360874.Spec : Prop :=
  ∀ n, (P15877996964888360874.a n : ℤ) = A252480 (n + 1)

theorem P15877996964888360874.correct : P15877996964888360874.Spec := by
  intro n
  simp only [A252480, Nat.add_sub_cancel]

end A252480

/-! ## A252480.P9654534057216442439

`eq[A187844(n+1), A187844(n)]`
-/

namespace A252480.P9654534057216442439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252480.P9654534057216442439

namespace A252480

/-- `eq[A187844(n+1), A187844(n)]` -/
def P9654534057216442439.Spec : Prop :=
  ∀ n, (P9654534057216442439.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P7003987901645236253

`eq[0, A007954(or(1, n))]`
-/

namespace A252480.P7003987901645236253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252480.P7003987901645236253

namespace A252480

/-- `eq[0, A007954(or(1, n))]` -/
def P7003987901645236253.Spec : Prop :=
  ∀ n, (P7003987901645236253.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P242246080688171758

`eq[0, A004430(A109613(n))]`
-/

namespace A252480.P242246080688171758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252480.P242246080688171758

namespace A252480

/-- `eq[0, A004430(A109613(n))]` -/
def P242246080688171758.Spec : Prop :=
  ∀ n, (P242246080688171758.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P5217283872938256456

`eq[A007954(n+1), A007954(n)]`
-/

namespace A252480.P5217283872938256456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252480.P5217283872938256456

namespace A252480

/-- `eq[A007954(n+1), A007954(n)]` -/
def P5217283872938256456.Spec : Prop :=
  ∀ n, (P5217283872938256456.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P9824184630752843984

`eq[A054054(n+1), A098736(n)]`
-/

namespace A252480.P9824184630752843984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252480.P9824184630752843984

namespace A252480

/-- `eq[A054054(n+1), A098736(n)]` -/
def P9824184630752843984.Spec : Prop :=
  ∀ n, (P9824184630752843984.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P3795318810576338644

`eq[A054054(n), A115300(n+1)]`
-/

namespace A252480.P3795318810576338644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252480.P3795318810576338644

namespace A252480

/-- `eq[A054054(n), A115300(n+1)]` -/
def P3795318810576338644.Spec : Prop :=
  ∀ n, (P3795318810576338644.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P11588233703991925199

`eq[A098736(n), A115300(n+1)]`
-/

namespace A252480.P11588233703991925199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252480.P11588233703991925199

namespace A252480

/-- `eq[A098736(n), A115300(n+1)]` -/
def P11588233703991925199.Spec : Prop :=
  ∀ n, (P11588233703991925199.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P5026164982249166305

`eq[A115300(n+1), A168046(n)]`
-/

namespace A252480.P5026164982249166305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252480.P5026164982249166305

namespace A252480

/-- `eq[A115300(n+1), A168046(n)]` -/
def P5026164982249166305.Spec : Prop :=
  ∀ n, (P5026164982249166305.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P13947433810435263644

`lt[A004428(n+1), A217096(n)]`
-/

namespace A252480.P13947433810435263644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A252480.P13947433810435263644

namespace A252480

/-- `lt[A004428(n+1), A217096(n)]` -/
def P13947433810435263644.Spec : Prop :=
  ∀ n, (P13947433810435263644.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P13369595954416480176

`lt[A321243(n), A217096(n+1)]`
-/

namespace A252480.P13369595954416480176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A252480.P13369595954416480176

namespace A252480

/-- `lt[A321243(n), A217096(n+1)]` -/
def P13369595954416480176.Spec : Prop :=
  ∀ n, (P13369595954416480176.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P6764829047016482442

`eq[A098736(xor(1, n)), A098736(n)]`
-/

namespace A252480.P6764829047016482442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 (Nat.xor 1 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252480.P6764829047016482442

namespace A252480

/-- `eq[A098736(xor(1, n)), A098736(n)]` -/
def P6764829047016482442.Spec : Prop :=
  ∀ n, (P6764829047016482442.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P1957067746620704299

`eq[A321243(A004442(n)), A321243(n)]`
-/

namespace A252480.P1957067746620704299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (A004442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252480.P1957067746620704299

namespace A252480

/-- `eq[A321243(A004442(n)), A321243(n)]` -/
def P1957067746620704299.Spec : Prop :=
  ∀ n, (P1957067746620704299.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P3335272286978964807

`eq[A324161(A004442(n)), A324161(n)]`
-/

namespace A252480.P3335272286978964807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 (A004442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252480.P3335272286978964807

namespace A252480

/-- `eq[A324161(A004442(n)), A324161(n)]` -/
def P3335272286978964807.Spec : Prop :=
  ∀ n, (P3335272286978964807.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P9204618933996327676

`∩[A011540(n+1), A023443(A011540(n+1))]`
-/

namespace A252480.P9204618933996327676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A011540 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252480.P9204618933996327676

namespace A252480

/-- `∩[A011540(n+1), A023443(A011540(n+1))]` -/
def P9204618933996327676.Spec : Prop :=
  ∀ n, (P9204618933996327676.a n : ℤ) = A252480 (n + 1)

end A252480

/-! ## A252480.P11760248546244550188

`eq[A052429(n+1)*A168046(n+1), A054054(n)]`
-/

namespace A252480.P11760248546244550188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052429 (n + 1) * A168046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252480.P11760248546244550188

namespace A252480

/-- `eq[A052429(n+1)*A168046(n+1), A054054(n)]` -/
def P11760248546244550188.Spec : Prop :=
  ∀ n, (P11760248546244550188.a n : ℤ) = A252480 (n + 1)

end A252480

/-!
# A252481: Numbers whose set of digits is simply connected to 1.

The programs for A252481, there is no canonical definition to state claims against.
-/

/-! ## A252481.P7051946712052111133

`lt[A086066(n), A261794(n)²]`
-/

namespace A252481.P7051946712052111133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A252481.P7051946712052111133

/-! ## A252481.P12378926861492086569

`∩[A011531(n+1), A134336(n+1)]`
-/

namespace A252481.P12378926861492086569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252481.P12378926861492086569

/-! ## A252481.P7968109677658007841

`eq[A043562(A004185(n)), A054055(n)]`
-/

namespace A252481.P7968109677658007841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A004185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252481.P7968109677658007841

/-! ## A252481.P14924839617294538984

`lt[A086066(n), (10-A116667(A055120(n)))²]`
-/

namespace A252481.P14924839617294538984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 - A116667 (A055120 n).toNat) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A252481.P14924839617294538984

/-! ## A252481.P5229886329331198560

`lt[A086066(n), A067898(10*n)²]`
-/

namespace A252481.P5229886329331198560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (10 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A252481.P5229886329331198560

/-!
# A252488: Binary sequence starting with 1 and with run lengths given by the ruler sequence A001511.

The programs for A252488, there is no canonical definition to state claims against.
-/

/-! ## A252488.P15839771337690185265

`char[val(n!, 2)+3*n]`
-/

namespace A252488.P15839771337690185265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial n) 2 + 3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A252488.P15839771337690185265

/-! ## A252488.P15532877491460346397

`char[a(n-1)+val(n, 2)+3]` with `a(0)=0`
-/

namespace A252488.P15532877491460346397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (SequenceMachineLib.valuation n 2 + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A252488.P15532877491460346397

/-! ## A252488.P3651744221821466550

`char[4*n-val(C(2*n, n), 2)]`
-/

namespace A252488.P3651744221821466550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (SequenceMachineLib.valuation (Nat.choose (2 * n) n) 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A252488.P3651744221821466550

/-! ## A252488.P9503708532504352617

`char[∑[val(n*Δ[n^3]+1, 2)]]`
-/

namespace A252488.P9503708532504352617
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) + 1).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A252488.P9503708532504352617

/-! ## A252488.P6369688490385103375

`∑[char[a(floor(n/2))+n]]%2` with `a(0)=0`
-/

namespace A252488.P6369688490385103375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A252488.P6369688490385103375

/-! ## A252488.P3521481797036105340

`char[∑[a(∑[n]%n)+1]-2]` with `a(0)=2`
-/

namespace A252488.P3521481797036105340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 ((∑ j ∈ Finset.range (n + 1), f3 j) % n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A252488.P3521481797036105340

/-! ## A252488.P13214064295383440452

`char[∑[∑{e}[and(n, -n), #]]+3*n]`
-/

namespace A252488.P13214064295383440452
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A252488.P13214064295383440452

/-!
# A252489: Index of the largest prime which divides n*(n+1).

The programs for A252489, the canonical program `A252489.P16159693838999936675` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252489 has offset 1).

The definition of A252489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252489.P10517298016175077197

`A000720(A074399(n+1))`
-/

namespace A252489.P10517298016175077197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A074399 (n + 1)).toNat

end

end A252489.P10517298016175077197

namespace A252489

/-- `A000720(A074399(n+1))` -/
def P10517298016175077197.Spec : Prop :=
  ∀ n, P10517298016175077197.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P11240017832614773527

`A003963(A069902(n+1))`
-/

namespace A252489.P11240017832614773527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A069902 (n + 1)).toNat

end

end A252489.P11240017832614773527

namespace A252489

/-- `A003963(A069902(n+1))` -/
def P11240017832614773527.Spec : Prop :=
  ∀ n, P11240017832614773527.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P17791169006636784927

`A061395(2*A074399(n+1))`
-/

namespace A252489.P17791169006636784927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A074399 (n + 1)).toNat

end

end A252489.P17791169006636784927

namespace A252489

/-- `A061395(2*A074399(n+1))` -/
def P17791169006636784927.Spec : Prop :=
  ∀ n, P17791169006636784927.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P16159693838999936675

`A061395(A087429(n+1)+1+n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A252489

/-- `A061395(A087429(n+1)+1+n)` -/
def P16159693838999936675.Spec : Prop :=
  ∀ n, P16159693838999936675.a n = A252489 (n + 1)

theorem P16159693838999936675.correct : P16159693838999936675.Spec := by
  intro n
  simp only [A252489, Nat.add_sub_cancel]

end A252489

/-! ## A252489.P9687194702285708963

`A391449(n+1)+A059957(n+1)`
-/

namespace A252489.P9687194702285708963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391449 (n + 1) + A059957 (n + 1)

end

end A252489.P9687194702285708963

namespace A252489

/-- `A391449(n+1)+A059957(n+1)` -/
def P9687194702285708963.Spec : Prop :=
  ∀ n, P9687194702285708963.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P6595563385633450697

`A056239(A074399(n+1)%(n+4))`
-/

namespace A252489.P6595563385633450697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A074399 (n + 1)) (n + 4 : ℤ)).toNat

end

end A252489.P6595563385633450697

namespace A252489

/-- `A056239(A074399(n+1)%(n+4))` -/
def P6595563385633450697.Spec : Prop :=
  ∀ n, P6595563385633450697.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P65736432432341976

`A156061(lcm(A074399(n+1), A087960(n)))`
-/

namespace A252489.P65736432432341976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (Int.lcm (A074399 (n + 1)) (A087960 n))

end

end A252489.P65736432432341976

namespace A252489

/-- `A156061(lcm(A074399(n+1), A087960(n)))` -/
def P65736432432341976.Spec : Prop :=
  ∀ n, P65736432432341976.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P1013738724612428580

`A344616(A074399(n+1))%A001358(n+1)`
-/

namespace A252489.P1013738724612428580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344616 (A074399 (n + 1)).toNat) (A001358 (n + 1))

end

end A252489.P1013738724612428580

namespace A252489

/-- `A344616(A074399(n+1))%A001358(n+1)` -/
def P1013738724612428580.Spec : Prop :=
  ∀ n, P1013738724612428580.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P16369098859226033728

`A156061(2*A074399(n+1))`
-/

namespace A252489.P16369098859226033728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A074399 (n + 1)).toNat

end

end A252489.P16369098859226033728

namespace A252489

/-- `A156061(2*A074399(n+1))` -/
def P16369098859226033728.Spec : Prop :=
  ∀ n, P16369098859226033728.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P9791726494529215937

`A156061(lcm(2, A074399(n+1)))`
-/

namespace A252489.P9791726494529215937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (Int.lcm 2 (A074399 (n + 1)))

end

end A252489.P9791726494529215937

namespace A252489

/-- `A156061(lcm(2, A074399(n+1)))` -/
def P9791726494529215937.Spec : Prop :=
  ∀ n, P9791726494529215937.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P9656485933589859937

`A061395(A245486(n+1))`
-/

namespace A252489.P9656485933589859937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A245486 (n + 1)).toNat

end

end A252489.P9656485933589859937

namespace A252489

/-- `A061395(A245486(n+1))` -/
def P9656485933589859937.Spec : Prop :=
  ∀ n, P9656485933589859937.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P5004640367225105859

`A061395(A006530(n+1)*A006530(n+2))`
-/

namespace A252489.P5004640367225105859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A006530 (n + 1) * A006530 (n + 2)).toNat

end

end A252489.P5004640367225105859

namespace A252489

/-- `A061395(A006530(n+1)*A006530(n+2))` -/
def P5004640367225105859.Spec : Prop :=
  ∀ n, P5004640367225105859.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P17095819427310915129

`A061395(A345941(2*(n+1))*A345941(n+2))`
-/

namespace A252489.P17095819427310915129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A345941 (2 * (n + 1)) * A345941 (n + 2)).toNat

end

end A252489.P17095819427310915129

namespace A252489

/-- `A061395(A345941(2*(n+1))*A345941(n+2))` -/
def P17095819427310915129.Spec : Prop :=
  ∀ n, P17095819427310915129.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P5972698156805818772

`A139169(A006530(A139131(n+1)))`
-/

namespace A252489.P5972698156805818772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (A006530 (A139131 (n + 1)).toNat).toNat

end

end A252489.P5972698156805818772

namespace A252489

/-- `A139169(A006530(A139131(n+1)))` -/
def P5972698156805818772.Spec : Prop :=
  ∀ n, P5972698156805818772.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P3456909033842748504

`A061395(∑[lcm(n, a(n-1))+1])` with `a(0)=2, a(1)=1`
-/

namespace A252489.P3456909033842748504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  Nat.lcm n (f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252489.P3456909033842748504

namespace A252489

/-- `A061395(∑[lcm(n, a(n-1))+1])` -/
def P3456909033842748504.Spec : Prop :=
  ∀ n, P3456909033842748504.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P15656829100309700242

`A003963(A006530(∑[n+1]))`
-/

namespace A252489.P15656829100309700242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A252489.P15656829100309700242

namespace A252489

/-- `A003963(A006530(∑[n+1]))` -/
def P15656829100309700242.Spec : Prop :=
  ∀ n, P15656829100309700242.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P8747525548779815118

`A061395(A060798(n+2)/2)`
-/

namespace A252489.P8747525548779815118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A060798 (n + 2) : ℚ) / 2)).toNat

end

end A252489.P8747525548779815118

namespace A252489

/-- `A061395(A060798(n+2)/2)` -/
def P8747525548779815118.Spec : Prop :=
  ∀ n, P8747525548779815118.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P15964760012160691433

`A000720(A006530(∑[n+1])+1)`
-/

namespace A252489.P15964760012160691433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A252489.P15964760012160691433

namespace A252489

/-- `A000720(A006530(∑[n+1])+1)` -/
def P15964760012160691433.Spec : Prop :=
  ∀ n, P15964760012160691433.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P16718075570702579720

`A058933(A006530(∑[n]+1+n))`
-/

namespace A252489.P16718075570702579720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1 + n)).toNat

end

end A252489.P16718075570702579720

namespace A252489

/-- `A058933(A006530(∑[n]+1+n))` -/
def P16718075570702579720.Spec : Prop :=
  ∀ n, P16718075570702579720.a n = A252489 (n + 1)

end A252489

/-! ## A252489.P10280192694277062171

`A061395(A078636(n+1))`
-/

namespace A252489.P10280192694277062171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A078636 (n + 1)).toNat

end

end A252489.P10280192694277062171

namespace A252489

/-- `A061395(A078636(n+1))` -/
def P10280192694277062171.Spec : Prop :=
  ∀ n, P10280192694277062171.a n = A252489 (n + 1)

end A252489

/-!
# A252490: Numbers whose set of digits is simply connected, with 9 and 0 considered as neighbors.

The programs for A252490, there is no canonical definition to state claims against.
-/

/-! ## A252490.P14518092817299903716

`lt[A108782(A151949(n)²), A226134(n)]`
-/

namespace A252490.P14518092817299903716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A151949 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A252490.P14518092817299903716

/-! ## A252490.P8594670833800292304

`A376425(n+2)+A010815(A090609(n+1))`
-/

namespace A252490.P8594670833800292304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 2) + A010815 (A090609 (n + 1)).toNat

end

end A252490.P8594670833800292304

/-! ## A252490.P6041687330685202650

`A376425(n+2)%A092126(A136082(n+1))`
-/

namespace A252490.P6041687330685202650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376425 (n + 2)) (A092126 (A136082 (n + 1)).toNat)

end

end A252490.P6041687330685202650

/-! ## A252490.P17696054897217416931

`A376425(n+2)+A010815(A349176(2*n+3))`
-/

namespace A252490.P17696054897217416931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 2) + A010815 (A349176 (2 * n + 3)).toNat

end

end A252490.P17696054897217416931

/-! ## A252490.P14917086921768854078

`A216455(A376425(n+2))`
-/

namespace A252490.P14917086921768854078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A376425 (n + 2)).toNat

end

end A252490.P14917086921768854078

/-!
# A252491: 

The programs for A252491, there is no canonical definition to state claims against.
-/

/-! ## A252491.P13547184523367766244

`(n+1)*A000042((n+1)²)/A000027(A000461(n+1))`
-/

namespace A252491.P13547184523367766244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000042 ((n + 1) ^ 2) : ℚ) / (A000027 (A000461 (n + 1)).toNat : ℚ)

end

end A252491.P13547184523367766244

/-!
# A252492: The largest prime factor of n*(n+1) equals 17. (Related to the abc conjecture.)

The programs for A252492, there is no canonical definition to state claims against.
-/

/-! ## A252492.P17853746044005893123

`A145605(n+69)`
-/

namespace A252492.P17853746044005893123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145605 (n + 69)

end

end A252492.P17853746044005893123

/-! ## A252492.P9425567840063379093

`eq[7, A252489(A028310(n))]`
-/

namespace A252492.P9425567840063379093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252492.P9425567840063379093

/-! ## A252492.P11059954089057009831

`A020725(eq[7, A252489(n+1)])`
-/

namespace A252492.P11059954089057009831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252492.P11059954089057009831

/-! ## A252492.P11471911708270627874

`A020725(eq[17, A074399(n+1)])`
-/

namespace A252492.P11471911708270627874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252492.P11471911708270627874

/-! ## A252492.P17491696264395673968

`record[A057979(A181452(n+2))]`
-/

namespace A252492.P17491696264395673968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A181452 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252492.P17491696264395673968

/-!
# A252493: Numbers n such that n(n+1) is 13-smooth. (Related to the abc conjecture.)

The programs for A252493, there is no canonical definition to state claims against.
-/

/-! ## A252493.P6346733180726961802

`A138180(n+79)`
-/

namespace A252493.P6346733180726961802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138180 (n + 79)

end

end A252493.P6346733180726961802

/-! ## A252493.P16598852196959693037

`A080197(eq[1, Δ[A080197(n+1)]]+1)`
-/

namespace A252493.P16598852196959693037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A252493.P16598852196959693037

/-! ## A252493.P10157546386913784071

`∩[A080197(n+1), A080197(n+2)-1]`
-/

namespace A252493.P10157546386913784071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252493.P10157546386913784071

/-! ## A252493.P16820804820861425223

`∩[A080197(n+1), A023443(A080197(n+2))]`
-/

namespace A252493.P16820804820861425223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080197 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252493.P16820804820861425223

/-! ## A252493.P6861597330005405484

`eq[A074399(n+1), A080197(A074399(n+1))]+1`
-/

namespace A252493.P6861597330005405484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (A074399 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A252493.P6861597330005405484

/-! ## A252493.P13458927893596408705

`lt[A006530(∑[n+1]), 17]+1`
-/

namespace A252493.P13458927893596408705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A252493.P13458927893596408705

/-! ## A252493.P10142188709502926482

`lt[A006530(C(n+2, 2))/3, 5]+1`
-/

namespace A252493.P10142188709502926482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (Nat.choose (n + 2) 2) : ℚ) / 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A252493.P10142188709502926482

/-!
# A252494: Numbers n such that all prime factors of n and n+1 are <= 11. (Related to the abc conjecture.)

The programs for A252494, there is no canonical definition to state claims against.
-/

/-! ## A252494.P7585435520237441114

`A138180(n+39)`
-/

namespace A252494.P7585435520237441114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138180 (n + 39)

end

end A252494.P7585435520237441114

/-! ## A252494.P7940628025326600408

`A003964(A393773(n+1))`
-/

namespace A252494.P7940628025326600408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A393773 (n + 1)).toNat

end

end A252494.P7940628025326600408

/-! ## A252494.P16538313718810284724

`A393773(A274055(n+1))`
-/

namespace A252494.P16538313718810284724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393773 (A274055 (n + 1)).toNat

end

end A252494.P16538313718810284724

/-! ## A252494.P10908522021163243634

`A393773(A366188(n+1))`
-/

namespace A252494.P10908522021163243634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393773 (A366188 (n + 1)).toNat

end

end A252494.P10908522021163243634

/-! ## A252494.P11337272804603113892

`A393773(A002837(n+2))`
-/

namespace A252494.P11337272804603113892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393773 (A002837 (n + 2)).toNat

end

end A252494.P11337272804603113892

/-!
# A252496: Numbers k such that arctan(1/k) = arctan(1/x) - arctan(1/y) for some integers 0<x<y<k.

The programs for A252496, there is no canonical definition to state claims against.
-/

/-! ## A252496.P14668172016058998983

`lt[A259036(n), 2*n]`
-/

namespace A252496.P14668172016058998983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A252496.P14668172016058998983

/-! ## A252496.P9090416594646954579

`lt[A259036(n)+n, A008585(n)]`
-/

namespace A252496.P9090416594646954579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A252496.P9090416594646954579

/-! ## A252496.P11413196563437671526

`A000027(lt[A259036(n)-n, n])`
-/

namespace A252496.P11413196563437671526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A252496.P11413196563437671526

/-! ## A252496.P11724263133743838522

`A028310(lt[A259036(n)-n, n])`
-/

namespace A252496.P11724263133743838522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A252496.P11724263133743838522

/-! ## A252496.P1070538782904128955

`lt[A259036(n)+char[1], A004277(n)]`
-/

namespace A252496.P1070538782904128955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A252496.P1070538782904128955

/-! ## A252496.P9160438438365716306

`A000027(lt[A259036(n), A004277(n)])`
-/

namespace A252496.P9160438438365716306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A252496.P9160438438365716306

/-! ## A252496.P4833453178482136556

`A028310(lt[A259036(n), A004277(n)])`
-/

namespace A252496.P4833453178482136556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A252496.P4833453178482136556

/-! ## A252496.P4923576336970684245

`A008585(lt[A259036(n), A004277(n)])/3`
-/

namespace A252496.P4923576336970684245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 3

end

end A252496.P4923576336970684245

/-! ## A252496.P11795506086666517182

`lt[A259036(n), A004277(n)]/A000041(C(n, n²))`
-/

namespace A252496.P11795506086666517182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / (A000041 (Nat.choose n (n ^ 2)) : ℚ)

end

end A252496.P11795506086666517182

/-! ## A252496.P12261083627869247140

`lt[A259036(n), A004277(n)]%(A000040(n+1)+1)²`
-/

namespace A252496.P12261083627869247140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) ((A000040 (n + 1) + 1) ^ 2)

end

end A252496.P12261083627869247140

/-! ## A252496.P16625751419763045597

`A269027(A268272(n+1))+lt[A259036(n), A004277(n)]`
-/

namespace A252496.P16625751419763045597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 (A268272 (n + 1)).toNat + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A252496.P16625751419763045597

/-!
# A252497: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 5.

The programs for A252497, there is no canonical definition to state claims against.
-/

/-! ## A252497.P8370438080147851155

`A252500(∑[n]+1)`
-/

namespace A252497.P8370438080147851155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252497.P8370438080147851155

/-! ## A252497.P16885181130348030860

`record[A252500(A276954(n+1))]`
-/

namespace A252497.P16885181130348030860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252500 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252497.P16885181130348030860

/-! ## A252497.P2357149630771845950

`record[A252500(A252460(n+2)-1)]`
-/

namespace A252497.P2357149630771845950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252500 (A252460 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252497.P2357149630771845950

/-! ## A252497.P13799968520608766874

`record[root(A252500(n+1), A079213(n))]`
-/

namespace A252497.P13799968520608766874
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252500 (n + 1) : ℝ) ^ (1 / (A079213 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252497.P13799968520608766874

/-! ## A252497.P478525665992394972

`record[root(A252500(n+1), A112492(n))]`
-/

namespace A252497.P478525665992394972
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252500 (n + 1) : ℝ) ^ (1 / (A112492 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252497.P478525665992394972

/-!
# A252498: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 5.

The programs for A252498, there is no canonical definition to state claims against.
-/

/-! ## A252498.P1405784949651020441

`A252500(∑[n+1]+2)`
-/

namespace A252498.P1405784949651020441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252500 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252498.P1405784949651020441

/-! ## A252498.P13074219455451529374

`record[root(A252500(n+2), A252501(n))]`
-/

namespace A252498.P13074219455451529374
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252500 (n + 2) : ℝ) ^ (1 / (A252501 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252498.P13074219455451529374

/-! ## A252498.P1143098735982135981

`record[A252500(A252460(2*n+1)+1)]`
-/

namespace A252498.P1143098735982135981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252500 (A252460 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252498.P1143098735982135981

/-! ## A252498.P5975949809344367335

`record[A252500(A133263(val(n+1, 2)+1))]`
-/

namespace A252498.P5975949809344367335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252500 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252498.P5975949809344367335

/-!
# A252499: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 5.

The programs for A252499, there is no canonical definition to state claims against.
-/

/-! ## A252499.P9830662772544401926

`A252500(A167614(n+1))`
-/

namespace A252499.P9830662772544401926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252500 (A167614 (n + 1)).toNat

end

end A252499.P9830662772544401926

/-! ## A252499.P13519201244307457951

`A252500(∑[n+3]+1)`
-/

namespace A252499.P13519201244307457951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252499.P13519201244307457951

