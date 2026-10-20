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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
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
import Seq.B013.C000
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
import Seq.Opaque.C023

/-!
# A189200: Number of 7Xn binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189200, there is no canonical definition to state claims against.
-/

/-! ## A189200.P11777832142709183196

`A189196(C(n+8, 2)-n)`
-/

namespace A189200.P11777832142709183196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (Nat.choose (n + 8) 2 - n)

end

end A189200.P11777832142709183196

/-! ## A189200.P17085645517646541054

`A189196(A056119(n)+28)`
-/

namespace A189200.P17085645517646541054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A056119 n + 28).toNat

end

end A189200.P17085645517646541054

/-! ## A189200.P12542903139155778821

`A189196(eq[11, A066657(n)])`
-/

namespace A189200.P12542903139155778821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189200.P12542903139155778821

/-! ## A189200.P1974569715799223610

`A189196(eq[8, A131818(n+1)])`
-/

namespace A189200.P1974569715799223610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189200.P1974569715799223610

/-! ## A189200.P17799677756590088267

`A189196(record[A167487(val(n+1, 2)+5)])`
-/

namespace A189200.P17799677756590088267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167487 (SequenceMachineLib.valuation (n + 1) 2 + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189200.P17799677756590088267

/-!
# A189201: Number of 8Xn binary arrays without the pattern 0 0 1 vertically or antidiagonally.

The programs for A189201, there is no canonical definition to state claims against.
-/

/-! ## A189201.P2268554858991813365

`A189196(eq[13, A066657(n)])`
-/

namespace A189201.P2268554858991813365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189201.P2268554858991813365

/-! ## A189201.P7912215345572197617

`A189196(A167614(n+6)+5)`
-/

namespace A189201.P7912215345572197617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A167614 (n + 6) + 5).toNat

end

end A189201.P7912215345572197617

/-! ## A189201.P917852268793061705

`A189196(A133263(n+7)+6)`
-/

namespace A189201.P917852268793061705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A133263 (n + 7) + 6).toNat

end

end A189201.P917852268793061705

/-! ## A189201.P11137830571157259754

`A189196(A055999(n+4)+14)`
-/

namespace A189201.P11137830571157259754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (A055999 (n + 4) + 14).toNat

end

end A189201.P11137830571157259754

/-! ## A189201.P14537233847649696129

`A189196(eq[9, A131818(n+1)])`
-/

namespace A189201.P14537233847649696129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189201.P14537233847649696129

/-!
# A189203: Zero-one sequence based on the sequence n(n+1)(2n+1)/6: a(A000330(k))=a(k); a(v(k))=1-a(k), where v=complement(A000330) and a(1)=0.

The programs for A189203, there is no canonical definition to state claims against.
-/

/-! ## A189203.P9346569454045157776

`char[A189205(n+1)-1]`
-/

namespace A189203.P9346569454045157776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189205 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189203.P9346569454045157776

/-! ## A189203.P13783368272049135773

`char[comp[A189204(n+1)-1]]`
-/

namespace A189203.P13783368272049135773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189204 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189203.P13783368272049135773

/-! ## A189203.P13392991816406245884

`char[A260196(n)+A189205(n+1)]`
-/

namespace A189203.P13392991816406245884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A189205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189203.P13392991816406245884

/-! ## A189203.P16952665210696744863

`A000005((char[A189204(n+1)-1]*A115510(n+1))²+1)%2`
-/

namespace A189203.P16952665210696744863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189204 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A115510 (n + 1)) ^ 2 + 1).toNat) 2

end

end A189203.P16952665210696744863

/-! ## A189203.P15922646889091388017

`(A248397(n+1)*A248418(n+3))%2`
-/

namespace A189203.P15922646889091388017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248397 (n + 1) * A248418 (n + 3)) 2

end

end A189203.P15922646889091388017

/-! ## A189203.P9436424889163464803

`A000035(A017101(n)*A248418(n+3))`
-/

namespace A189203.P9436424889163464803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A017101 n * A248418 (n + 3)).toNat

end

end A189203.P9436424889163464803

/-! ## A189203.P18097924372591446339

`A248397(n+1)%A000034(A248418(n+3))`
-/

namespace A189203.P18097924372591446339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248397 (n + 1)) (A000034 (A248418 (n + 3)).toNat)

end

end A189203.P18097924372591446339

/-! ## A189203.P11581796717397204298

`A248418(n+3)%A000005(A261449(n+1))`
-/

namespace A189203.P11581796717397204298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248418 (n + 3)) (A000005 (A261449 (n + 1)).toNat)

end

end A189203.P11581796717397204298

/-! ## A189203.P4447807049302423385

`and(A014963(A182996(n+1)), A248418(n+3))`
-/

namespace A189203.P4447807049302423385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (A182996 (n + 1)).toNat) (A248418 (n + 3))

end

end A189203.P4447807049302423385

/-! ## A189203.P11699592652013495695

`A000035(xor((2*n)², A248418(n+3)))`
-/

namespace A189203.P11699592652013495695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.xor ((2 * n) ^ 2 : ℤ) (A248418 (n + 3))).toNat

end

end A189203.P11699592652013495695

/-!
# A189204: Positions of 0 in A189203; complement of A189205.

The programs for A189204, there is no canonical definition to state claims against.
-/

/-! ## A189204.P14570289921149872163

`eq[0, A189203(n+1)]+1`
-/

namespace A189204.P14570289921149872163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189204.P14570289921149872163

/-! ## A189204.P9878341569617053379

`record[(1-A189203(n+1))*A000027(n+1)]`
-/

namespace A189204.P9878341569617053379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A189203 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189204.P9878341569617053379

/-! ## A189204.P8228100884501383077

`record[n+1-A008619(n)*A189203(n+1)]`
-/

namespace A189204.P8228100884501383077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008619 n * A189203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189204.P8228100884501383077

/-! ## A189204.P11645556199817617173

`record[n+1-A010062(n)*A189203(n+1)]`
-/

namespace A189204.P11645556199817617173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A010062 n * A189203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189204.P11645556199817617173

/-! ## A189204.P8860506411969754577

`eq[A028310(n)-n, A189203(A028310(n))]`
-/

namespace A189204.P8860506411969754577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189204.P8860506411969754577

/-! ## A189204.P13002550329427939618

`record[A110514(A189203(n+1)+A005843(n))]`
-/

namespace A189204.P13002550329427939618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A189203 (n + 1) + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189204.P13002550329427939618

/-! ## A189204.P7313289579633602351

`eq[A000007(n), A189203(A065033(2*n))]`
-/

namespace A189204.P7313289579633602351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189204.P7313289579633602351

/-! ## A189204.P5258749650582005682

`eq[A000007(n), A189203(A123108(2*n))]`
-/

namespace A189204.P5258749650582005682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189204.P5258749650582005682

/-! ## A189204.P17806741738731747400

`eq[A000038(n), A189203(A123108(2*n))]`
-/

namespace A189204.P17806741738731747400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189204.P17806741738731747400

/-! ## A189204.P10194827079280546690

`record[n+1-A000045(n*A189203(n+1))]`
-/

namespace A189204.P10194827079280546690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000045 ((n : ℤ) * A189203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189204.P10194827079280546690

/-!
# A189205: Positions of 1 in A189203; complement of A189204.

The programs for A189205, there is no canonical definition to state claims against.
-/

/-! ## A189205.P10551118361945835058

`filter[n+1, A189203(#)]`
-/

namespace A189205.P10551118361945835058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189203 (f1 j) = 1) n)

end

end A189205.P10551118361945835058

/-! ## A189205.P14913573147776311308

`eq[1, A189203(n+1)]+1`
-/

namespace A189205.P14913573147776311308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189205.P14913573147776311308

/-! ## A189205.P2274273696704957789

`record[(n+2)*A189203(n+2)]`
-/

namespace A189205.P2274273696704957789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189203 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189205.P2274273696704957789

/-! ## A189205.P1142007171630135059

`eq[1, A189203(A028310(n))]`
-/

namespace A189205.P1142007171630135059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189205.P1142007171630135059

/-! ## A189205.P15897291603640886753

`eq[1, A189203(A000007(n)+n)]`
-/

namespace A189205.P15897291603640886753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189205.P15897291603640886753

/-! ## A189205.P9474510505960828577

`eq[1, A189203(A065033(2*n))]`
-/

namespace A189205.P9474510505960828577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189205.P9474510505960828577

/-! ## A189205.P9680998653386595621

`eq[1, A189203(A123108(2*n))]`
-/

namespace A189205.P9680998653386595621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189205.P9680998653386595621

/-!
# A189206: Zero-one sequence based on the sequence of odd primes: a(A065091(k))=a(k); a(v(k))=1-a(k), where v=A065090 and a(1)=0, a(2)=0.

The programs for A189206, there is no canonical definition to state claims against.
-/

/-! ## A189206.P17379283808434344922

`char[A189208(n+1)-1]`
-/

namespace A189206.P17379283808434344922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189208 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189206.P17379283808434344922

/-! ## A189206.P3905411178707070740

`char[comp[A189207(n+1)-1]]`
-/

namespace A189206.P3905411178707070740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189207 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189206.P3905411178707070740

/-! ## A189206.P17486609349944048682

`C(A083894(n+1), A083894(A096231(n)))`
-/

namespace A189206.P17486609349944048682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083894 (n + 1)).toNat (A083894 (A096231 n).toNat).toNat

end

end A189206.P17486609349944048682

/-! ## A189206.P13170022857549565947

`A010059(A046157(n+1)^A154958(n))`
-/

namespace A189206.P13170022857549565947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (SequenceMachineLib.roundAway ((A046157 (n + 1) : ℚ) ^ (A154958 n : ℤ))).toNat

end

end A189206.P13170022857549565947

/-! ## A189206.P10033382196151541373

`A010059(A046157(n+1)^A008620(n))`
-/

namespace A189206.P10033382196151541373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (SequenceMachineLib.roundAway ((A046157 (n + 1) : ℚ) ^ (A008620 n : ℤ))).toNat

end

end A189206.P10033382196151541373

/-!
# A189207: Positions of 0 in A189206; complement of A189208.

The programs for A189207, there is no canonical definition to state claims against.
-/

/-! ## A189207.P11586528009641143721

`eq[0, A189206(n+1)]+1`
-/

namespace A189207.P11586528009641143721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189207.P11586528009641143721

/-! ## A189207.P5509382959259698540

`A065475(eq[0, A189206(n+1)])`
-/

namespace A189207.P5509382959259698540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189207.P5509382959259698540

/-! ## A189207.P18216118674511536415

`eq[0, A189206(A123108(2*n))]`
-/

namespace A189207.P18216118674511536415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189206 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189207.P18216118674511536415

/-! ## A189207.P10213869664254826744

`A033270(p?[A189206(n+1)+A065091(n+1)])`
-/

namespace A189207.P10213869664254826744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189206 (n + 1) + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189207.P10213869664254826744

/-! ## A189207.P16982721339198956986

`eq[0, A189206(A233583(n+1))]`
-/

namespace A189207.P16982721339198956986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189206 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189207.P16982721339198956986

/-!
# A189208: Positions of 1 in A189206; complement of A189207.

The programs for A189208, there is no canonical definition to state claims against.
-/

/-! ## A189208.P16206381021482690361

`comp[A189207(n+1)-1]+1`
-/

namespace A189208.P16206381021482690361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189207 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189208.P16206381021482690361

/-! ## A189208.P3366873773940708329

`filter[n+1, A189206(#)]`
-/

namespace A189208.P3366873773940708329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189206 (f1 j) = 1) n)

end

end A189208.P3366873773940708329

/-! ## A189208.P4703422464968475608

`eq[1, A189206(n+1)]+1`
-/

namespace A189208.P4703422464968475608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189208.P4703422464968475608

/-! ## A189208.P10710980695183017007

`record[A000027(n+1)*A189206(n+1)]`
-/

namespace A189208.P10710980695183017007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189208.P10710980695183017007

/-! ## A189208.P9633576920973402320

`record[(A005408(n)-n)*A189206(n+1)]`
-/

namespace A189208.P9633576920973402320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ)) * A189206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189208.P9633576920973402320

/-! ## A189208.P16408357164963707482

`record[A020915(n)*A189206(A020915(n))]`
-/

namespace A189208.P16408357164963707482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n * A189206 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189208.P16408357164963707482

/-! ## A189208.P10151259696752543588

`record[A008619(2*n)*A189206(n+1)]`
-/

namespace A189208.P10151259696752543588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189208.P10151259696752543588

/-! ## A189208.P11289992181003140105

`record[A065033(n)*A189206(A065033(n))]`
-/

namespace A189208.P11289992181003140105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A189206 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189208.P11289992181003140105

/-! ## A189208.P8281162808947288150

`record[A063942(3*n)*A189206(n+1)]`
-/

namespace A189208.P8281162808947288150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (3 * n) * A189206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189208.P8281162808947288150

/-! ## A189208.P11711067735306934106

`record[A008611(n)*A189206(A008620(n))]`
-/

namespace A189208.P11711067735306934106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A189206 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189208.P11711067735306934106

/-! ## A189208.P7062142316893893624

`record[A034887(n)*A189206(A034887(n))]`
-/

namespace A189208.P7062142316893893624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n * A189206 (A034887 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189208.P7062142316893893624

/-! ## A189208.P2665536740477678849

`record[A008621(n)*A189206(A008621(n))]`
-/

namespace A189208.P2665536740477678849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A189206 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189208.P2665536740477678849

/-! ## A189208.P17619282308406440400

`A033270(p?[A065091(n+1)*A189206(n+1)])`
-/

namespace A189208.P17619282308406440400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A189206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189208.P17619282308406440400

/-!
# A189209: Zero-one sequence based on the sequence of odd primes: a(A065091(k))=a(k); a(v(k))=1-a(k), where v=A065090 and a(1)=0, a(2)=1.

The programs for A189209, there is no canonical definition to state claims against.
-/

/-! ## A189209.P3419466106531043539

`char[A189211(n+1)-1]`
-/

namespace A189209.P3419466106531043539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189211 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189209.P3419466106531043539

/-! ## A189209.P8459884656148903529

`char[A199969(A189211(n+1))]`
-/

namespace A189209.P8459884656148903529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A189211 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189209.P8459884656148903529

/-! ## A189209.P3480288149299354148

`char[A260196(n)+A189211(n+1)]`
-/

namespace A189209.P3480288149299354148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A189211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189209.P3480288149299354148

/-! ## A189209.P1468514293692294544

`char[Δ[A189211(A152271(n))]]`
-/

namespace A189209.P1468514293692294544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189211 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189209.P1468514293692294544

/-! ## A189209.P6752368398996539211

`char[Δ[A189211(A158416(n))]]`
-/

namespace A189209.P6752368398996539211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189211 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189209.P6752368398996539211

/-!
# A189210: Positions of 0 in A189209; complement of A189211.

The programs for A189210, there is no canonical definition to state claims against.
-/

/-! ## A189210.P2198198000015026824

`eq[0, A189209(n+1)]+1`
-/

namespace A189210.P2198198000015026824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189209 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189210.P2198198000015026824

/-! ## A189210.P17916163222305523902

`A020725(eq[0, A189209(n+1)])`
-/

namespace A189210.P17916163222305523902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189210.P17916163222305523902

/-! ## A189210.P15957518241964784100

`record[A022447(A189211(n+1))+1]`
-/

namespace A189210.P15957518241964784100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (A189211 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189210.P15957518241964784100

/-! ## A189210.P13451988403566391697

`eq[0, A189209(A065033(2*n))]`
-/

namespace A189210.P13451988403566391697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189209 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189210.P13451988403566391697

/-! ## A189210.P3576008157579264895

`A033270(p?[A189209(n+1)+A065091(n+1)])`
-/

namespace A189210.P3576008157579264895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189209 (n + 1) + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189210.P3576008157579264895

/-!
# A189211: Positions of 1 in A189209; complement of A189210.

The programs for A189211, there is no canonical definition to state claims against.
-/

/-! ## A189211.P16154552227872744560

`filter[n+1, A189209(#)]`
-/

namespace A189211.P16154552227872744560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189209 (f1 j) = 1) n)

end

end A189211.P16154552227872744560

/-! ## A189211.P14923027390651454804

`eq[1, A189209(n+1)]+1`
-/

namespace A189211.P14923027390651454804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189209 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189211.P14923027390651454804

/-! ## A189211.P1860162335438799685

`record[(n+1)*A189209(n+2)+1]`
-/

namespace A189211.P1860162335438799685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189209 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189211.P1860162335438799685

/-! ## A189211.P10868019192591656645

`record[A000027(n+1)*A189209(n+1)]`
-/

namespace A189211.P10868019192591656645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189211.P10868019192591656645

/-! ## A189211.P7391764025578094376

`record[gcd(n+1, A189209(n+1)+A005408(n))]`
-/

namespace A189211.P7391764025578094376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A189209 (n + 1) + A005408 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189211.P7391764025578094376

/-! ## A189211.P1159224840593293656

`record[A064317(n)*A189209(A064317(n))]`
-/

namespace A189211.P1159224840593293656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 n * A189209 (A064317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189211.P1159224840593293656

/-! ## A189211.P15281793752192109903

`record[A052938(n)*A189209(A052938(n))]`
-/

namespace A189211.P15281793752192109903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n * A189209 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189211.P15281793752192109903

/-! ## A189211.P4998058143783251561

`record[A008619(2*n)*A189209(n+1)]`
-/

namespace A189211.P4998058143783251561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189211.P4998058143783251561

/-! ## A189211.P1067225715228887499

`record[A029579(2*n)*A189209(n+1)]`
-/

namespace A189211.P1067225715228887499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * n) * A189209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189211.P1067225715228887499

/-! ## A189211.P3543721717335355826

`record[A065033(n)*A189209(A065033(n))]`
-/

namespace A189211.P3543721717335355826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A189209 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189211.P3543721717335355826

/-! ## A189211.P17105410411936134700

`record[A142150(A189209(n+1)+A005408(n))]`
-/

namespace A189211.P17105410411936134700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A189209 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189211.P17105410411936134700

/-! ## A189211.P15598559871614960213

`record[A008620(3*n)*A189209(n+1)]`
-/

namespace A189211.P15598559871614960213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * n) * A189209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189211.P15598559871614960213

/-! ## A189211.P8555887390442847148

`record[A008611(n)*A189209(A008620(n))]`
-/

namespace A189211.P8555887390442847148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A189209 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189211.P8555887390442847148

/-! ## A189211.P12247948829034996550

`A033270(p?[A065091(n+1)*A189209(n+1)])`
-/

namespace A189211.P12247948829034996550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A189209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189211.P12247948829034996550

/-!
# A189212: Zero-one sequence based on the hexagonal numbers: a(A000384(k))=a(k); a(v(k))=1-a(k), where v=A183218 and a(1)=0.

The programs for A189212, there is no canonical definition to state claims against.
-/

/-! ## A189212.P4459503693320861098

`char[A189214(n+1)-1]`
-/

namespace A189212.P4459503693320861098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189214 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189212.P4459503693320861098

/-! ## A189212.P4106332550535967049

`char[comp[A189213(n+1)-1]]`
-/

namespace A189212.P4106332550535967049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189213 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189212.P4106332550535967049

/-! ## A189212.P10188086434260056567

`(char[A189213(Δ[n²]-n)-1]-1)²`
-/

namespace A189212.P10188086434260056567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189213 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) ^ 2

end

end A189212.P10188086434260056567

/-! ## A189212.P5549762418061799777

`char[A260196(n)+A189214(n+1)]`
-/

namespace A189212.P5549762418061799777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A189214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189212.P5549762418061799777

/-! ## A189212.P8847113246512492557

`1-char[A189213(Δ[A189836(n)]-n)-1]`
-/

namespace A189212.P8847113246512492557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189213 (f2 (n + 1) - f2 n - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189212.P8847113246512492557

/-!
# A189213: Positions of 0 in A189212; complement of A189214.

The programs for A189213, there is no canonical definition to state claims against.
-/

/-! ## A189213.P1345508304010766100

`eq[0, A189212(n+1)]+1`
-/

namespace A189213.P1345508304010766100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189213.P1345508304010766100

/-! ## A189213.P4933516758191294098

`record[or(-A189212(n+1), A000027(n+1))]`
-/

namespace A189213.P4933516758191294098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A189212 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189213.P4933516758191294098

/-! ## A189213.P2573785205105589516

`record[n+1-A004396(n*A189212(n+1))]`
-/

namespace A189213.P2573785205105589516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004396 ((n : ℤ) * A189212 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189213.P2573785205105589516

/-! ## A189213.P9601942908759110082

`record[n+1-A014255(n)*A189212(n+1)]`
-/

namespace A189213.P9601942908759110082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014255 n * A189212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189213.P9601942908759110082

/-! ## A189213.P3761651632860683593

`eq[A028310(n)-n, A189212(A028310(n))]`
-/

namespace A189213.P3761651632860683593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189212 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189213.P3761651632860683593

/-! ## A189213.P15171533346400182008

`A000720(p?[A189212(n+1)+A000040(n+1)])`
-/

namespace A189213.P15171533346400182008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189212 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189213.P15171533346400182008

/-! ## A189213.P17971319825793424042

`record[or(-A189212(n+1), A008619(2*n))]`
-/

namespace A189213.P17971319825793424042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A189212 (n + 1)) (A008619 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189213.P17971319825793424042

/-! ## A189213.P14751581621573512497

`record[A003602(A189212(n+1)+A005408(n))]`
-/

namespace A189213.P14751581621573512497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A189212 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189213.P14751581621573512497

/-! ## A189213.P5152435408400231429

`record[A008611(A008585(n))-n*A189212(n+1)]`
-/

namespace A189213.P5152435408400231429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A008585 n).toNat - (n : ℤ) * A189212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189213.P5152435408400231429

/-!
# A189214: Positions of 1 in A189212; complement of A189213.

The programs for A189214, there is no canonical definition to state claims against.
-/

/-! ## A189214.P16641645130389872777

`comp[A189213(n+1)-1]+1`
-/

namespace A189214.P16641645130389872777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189213 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189214.P16641645130389872777

/-! ## A189214.P13197732732158315569

`filter[n+1, A189212(#)]`
-/

namespace A189214.P13197732732158315569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189212 (f1 j) = 1) n)

end

end A189214.P13197732732158315569

/-! ## A189214.P15507491962175504340

`eq[1, A189212(n+1)]+1`
-/

namespace A189214.P15507491962175504340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189214.P15507491962175504340

/-! ## A189214.P7047241995302194230

`record[(n+2)*A189212(n+2)]`
-/

namespace A189214.P7047241995302194230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189212 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189214.P7047241995302194230

/-! ## A189214.P15930691738753078949

`eq[1, A189212(A028310(n))]`
-/

namespace A189214.P15930691738753078949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189212 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189214.P15930691738753078949

/-! ## A189214.P14575686410409331806

`A020725(eq[1, A189212(n+1)])`
-/

namespace A189214.P14575686410409331806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189214.P14575686410409331806

/-! ## A189214.P4000275756923687371

`eq[1, A189212(A004277(n)-n)]`
-/

namespace A189214.P4000275756923687371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189212 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189214.P4000275756923687371

/-! ## A189214.P17949455600933286018

`eq[1, A189212(A008574(n)-3*n)]`
-/

namespace A189214.P17949455600933286018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189212 (A008574 n - (3 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189214.P17949455600933286018

/-! ## A189214.P17051333376688443745

`A000720(p?[A000040(n+1)*A189212(n+1)])`
-/

namespace A189214.P17051333376688443745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A189212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189214.P17051333376688443745

/-! ## A189214.P8198068940718416334

`eq[1, A189212(A065033(2*n))]`
-/

namespace A189214.P8198068940718416334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189212 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189214.P8198068940718416334

/-! ## A189214.P13772368758487453953

`eq[1, A189212(A123108(2*n))]`
-/

namespace A189214.P13772368758487453953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189212 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189214.P13772368758487453953

/-!
# A189215: Zero-one sequence based on the sequence (3n): a(A008585(k))=a(k); a(A001651(k))=1-a(k), a(1)=0, a(2)=1.

The programs for A189215, there is no canonical definition to state claims against.
-/

/-! ## A189215.P2672258135787671200

`char[A189288(n+1)-1]`
-/

namespace A189215.P2672258135787671200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189288 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189215.P2672258135787671200

/-! ## A189215.P11471988646985401725

`xor(A117943(n+1), A189222(n+1))`
-/

namespace A189215.P11471988646985401725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A117943 (n + 1)) (A189222 (n + 1))

end

end A189215.P11471988646985401725

/-! ## A189215.P17665100518806134337

`abs(A117943(A000027(n+1))-A189222(n+1))`
-/

namespace A189215.P17665100518806134337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117943 (A000027 (n + 1)).toNat - A189222 (n + 1)|

end

end A189215.P17665100518806134337

/-! ## A189215.P9733330769434825349

`(A189222(A000027(n+1))-A117943(n+1))²`
-/

namespace A189215.P9733330769434825349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189222 (A000027 (n + 1)).toNat - A117943 (n + 1)) ^ 2

end

end A189215.P9733330769434825349

/-! ## A189215.P17924101567463506100

`(A117943(n+1)-A189222(n+1))^A004275(n)`
-/

namespace A189215.P17924101567463506100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117943 (n + 1) - A189222 (n + 1) : ℚ) ^ (A004275 n : ℤ)

end

end A189215.P17924101567463506100

/-! ## A189215.P12080999037788700020

`(A189222(n+1)-A117943(n+1))^A008574(n)`
-/

namespace A189215.P12080999037788700020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189222 (n + 1) - A117943 (n + 1) : ℚ) ^ (A008574 n : ℤ)

end

end A189215.P12080999037788700020

/-!
# A189219: Zero-one sequence based on the octagonal numbers: a(A000567(k))=a(k); a(A183220(k))=1-a(k), a(1)=0.

The programs for A189219, there is no canonical definition to state claims against.
-/

/-! ## A189219.P17935034010530526893

`char[A189221(n+1)-1]`
-/

namespace A189219.P17935034010530526893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189221 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189219.P17935034010530526893

/-! ## A189219.P2898308240614262179

`char[comp[A189220(n+1)-1]]`
-/

namespace A189219.P2898308240614262179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189220 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189219.P2898308240614262179

/-! ## A189219.P6408431337759654058

`char[A023443(A189221(n+1))]`
-/

namespace A189219.P6408431337759654058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189221 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189219.P6408431337759654058

/-! ## A189219.P6703392129926881597

`char[A023443(comp[A189220(n+1)])]`
-/

namespace A189219.P6703392129926881597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189220 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189219.P6703392129926881597

/-! ## A189219.P16493347791602971375

`A029239(Δ[A264119(3*n+1)]+2)`
-/

namespace A189219.P16493347791602971375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264119 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (f1 (n + 1) - f1 n + 2).toNat

end

end A189219.P16493347791602971375

/-!
# A189220: Positions of 0 in A189219; complement of A189221.

The programs for A189220, there is no canonical definition to state claims against.
-/

/-! ## A189220.P2334516306331378474

`comp[A189221(n+1)-1]+1`
-/

namespace A189220.P2334516306331378474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189221 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189220.P2334516306331378474

/-! ## A189220.P14046522929451880388

`eq[0, A189219(n+1)]+1`
-/

namespace A189220.P14046522929451880388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189220.P14046522929451880388

/-! ## A189220.P9454224436053601578

`eq[A000038(n), A189219(A028310(n))]`
-/

namespace A189220.P9454224436053601578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189220.P9454224436053601578

/-! ## A189220.P14184520767635097951

`eq[char[A189221(n+1)], A000007(n)]`
-/

namespace A189220.P14184520767635097951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189221 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A189220.P14184520767635097951

/-! ## A189220.P5159542088280665526

`eq[A000007(n), A189219(A004277(n)-n)]`
-/

namespace A189220.P5159542088280665526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189220.P5159542088280665526

/-! ## A189220.P17724010610276409075

`eq[A000038(n), A189219(A065033(2*n))]`
-/

namespace A189220.P17724010610276409075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189220.P17724010610276409075

/-! ## A189220.P7194474753937663323

`eq[A000007(n), A189219(A123108(2*n))]`
-/

namespace A189220.P7194474753937663323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189220.P7194474753937663323

/-!
# A189221: Positions of 1 in A189219; complement of A189220.

The programs for A189221, there is no canonical definition to state claims against.
-/

/-! ## A189221.P7803137530457744052

`comp[A189220(n+1)-1]+1`
-/

namespace A189221.P7803137530457744052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189220 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189221.P7803137530457744052

/-! ## A189221.P1257206192030296318

`filter[n+1, A189219(#)]`
-/

namespace A189221.P1257206192030296318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189219 (f1 j) = 1) n)

end

end A189221.P1257206192030296318

/-! ## A189221.P7412930324980852017

`eq[1, A189219(n+1)]+1`
-/

namespace A189221.P7412930324980852017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189221.P7412930324980852017

/-! ## A189221.P11361552940722604658

`eq[1, A189219(A028310(n))]`
-/

namespace A189221.P11361552940722604658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189221.P11361552940722604658

/-! ## A189221.P10800336886355795685

`eq[1, A189219(A000007(n)+n)]`
-/

namespace A189221.P10800336886355795685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189221.P10800336886355795685

/-! ## A189221.P6967603913883354224

`eq[1, A189219(A004277(n)-n)]`
-/

namespace A189221.P6967603913883354224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189221.P6967603913883354224

/-! ## A189221.P5019226710245081845

`eq[char[A189220(n+1)], A000007(n)]`
-/

namespace A189221.P5019226710245081845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189220 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A189221.P5019226710245081845

/-! ## A189221.P1489515993113982374

`eq[char[A189220(n+1)], A000038(n)]`
-/

namespace A189221.P1489515993113982374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189220 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A189221.P1489515993113982374

/-! ## A189221.P5231051224664257382

`eq[1, A189219(A065033(2*n))]`
-/

namespace A189221.P5231051224664257382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189221.P5231051224664257382

/-! ## A189221.P8760476053994880383

`eq[1, A189219(A123108(2*n))]`
-/

namespace A189221.P8760476053994880383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189221.P8760476053994880383

/-!
# A189222: Zero-one sequence based on the sequence (3n): a(A008585(k))=a(k); a(A001651(k))=1-a(k), a(1)=0, a(2)=0.

The programs for A189222, there is no canonical definition to state claims against.
-/

/-! ## A189222.P18363121389105745893

`char[A189224(n+1)-1]`
-/

namespace A189222.P18363121389105745893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189224 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189222.P18363121389105745893

/-! ## A189222.P5999878753857403492

`xor(A117943(n+1), A189215(n+1))`
-/

namespace A189222.P5999878753857403492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A117943 (n + 1)) (A189215 (n + 1))

end

end A189222.P5999878753857403492

/-! ## A189222.P2204484504353237757

`abs(A117943(A000027(n+1))-A189215(n+1))`
-/

namespace A189222.P2204484504353237757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117943 (A000027 (n + 1)).toNat - A189215 (n + 1)|

end

end A189222.P2204484504353237757

/-! ## A189222.P1976368360029053734

`(A189215(A000027(n+1))-A117943(n+1))²`
-/

namespace A189222.P1976368360029053734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189215 (A000027 (n + 1)).toNat - A117943 (n + 1)) ^ 2

end

end A189222.P1976368360029053734

/-! ## A189222.P8588052611854921350

`(A117943(n+1)-A189215(n+1))^A004275(n)`
-/

namespace A189222.P8588052611854921350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117943 (n + 1) - A189215 (n + 1) : ℚ) ^ (A004275 n : ℤ)

end

end A189222.P8588052611854921350

/-! ## A189222.P14658445822377927375

`(A189215(n+1)-A117943(n+1))^A008574(n)`
-/

namespace A189222.P14658445822377927375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189215 (n + 1) - A117943 (n + 1) : ℚ) ^ (A008574 n : ℤ)

end

end A189222.P14658445822377927375

/-!
# A189223: Positions of 0 in A189222; complement of A189224.

The programs for A189223, there is no canonical definition to state claims against.
-/

/-! ## A189223.P6843679133692332458

`eq[0, A189222(n+1)]+1`
-/

namespace A189223.P6843679133692332458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189223.P6843679133692332458

/-! ## A189223.P7515914491678415558

`eq[0, A189222(A028310(n))]`
-/

namespace A189223.P7515914491678415558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189223.P7515914491678415558

/-! ## A189223.P1313132985265927506

`eq[0, A189222(A000007(n)+n)]`
-/

namespace A189223.P1313132985265927506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189223.P1313132985265927506

/-! ## A189223.P15079314513575245625

`eq[0, A189222(or(n, A000007(n)))]`
-/

namespace A189223.P15079314513575245625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189223.P15079314513575245625

/-! ## A189223.P13743555565217550721

`eq[A117943(n+1), A189215(n+1)]+1`
-/

namespace A189223.P13743555565217550721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189223.P13743555565217550721

/-! ## A189223.P3009431056125373292

`eq[0, A189222(A008486(n))]`
-/

namespace A189223.P3009431056125373292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189223.P3009431056125373292

/-! ## A189223.P12365068307142933263

`eq[0, A189222(A233583(n+1))]`
-/

namespace A189223.P12365068307142933263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189223.P12365068307142933263

/-!
# A189224: Positions of 1 in A189222; complement of A189223.

The programs for A189224, there is no canonical definition to state claims against.
-/

/-! ## A189224.P2642237332251740014

`filter[n+1, A189222(#)]`
-/

namespace A189224.P2642237332251740014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189222 (f1 j) = 1) n)

end

end A189224.P2642237332251740014

/-! ## A189224.P8588568192676704718

`eq[1, A189222(n+1)]+1`
-/

namespace A189224.P8588568192676704718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189224.P8588568192676704718

/-! ## A189224.P17526019736453212879

`record[A000027(n+1)*A189222(n+1)]`
-/

namespace A189224.P17526019736453212879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189224.P17526019736453212879

/-! ## A189224.P6031586027712250467

`record[A008619(2*n)*A189222(n+1)]`
-/

namespace A189224.P6031586027712250467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189224.P6031586027712250467

/-! ## A189224.P11316098050187490020

`record[(n+1)*A189222(3*(n+1))]`
-/

namespace A189224.P11316098050187490020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189222 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189224.P11316098050187490020

/-! ## A189224.P8545425696713529779

`eq[A057427(n), A189222(A008486(n))]`
-/

namespace A189224.P8545425696713529779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189224.P8545425696713529779

/-!
# A189225: Entries in a 4-dimensional version of Pascal's triangle: quadrinomial coefficients of (a + b + c + d)^r.

The programs for A189225, there is no canonical definition to state claims against.
-/

/-! ## A189225.P9473273161616804134

`A261359(n)/2^A127323(n)`
-/

namespace A189225.P9473273161616804134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261359 n : ℚ) / (2 : ℚ) ^ (A127323 n : ℤ)

end

end A189225.P9473273161616804134

/-!
# A189228: Superabundant numbers (A004394) that are not colossally abundant (A004490).

The programs for A189228, there is no canonical definition to state claims against.
-/

/-! ## A189228.P7090597802829126465

`A338786(n+1)%A161730(n+1)`
-/

namespace A189228.P7090597802829126465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338786 (n + 1)) (A161730 (n + 1))

end

end A189228.P7090597802829126465

/-! ## A189228.P12055537741758204722

`lcm(A209655(n+1), A338786(n+1))`
-/

namespace A189228.P12055537741758204722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A209655 (n + 1)) (A338786 (n + 1))

end

end A189228.P12055537741758204722

/-! ## A189228.P367224364933330694

`A338786(n+1)%A002975(A002061(n))`
-/

namespace A189228.P367224364933330694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338786 (n + 1)) (A002975 (A002061 n).toNat)

end

end A189228.P367224364933330694

/-! ## A189228.P4405911025502583154

`A338786(n+1)+A010815(A003375(n+1))`
-/

namespace A189228.P4405911025502583154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338786 (n + 1) + A010815 (A003375 (n + 1)).toNat

end

end A189228.P4405911025502583154

/-! ## A189228.P6570344037346835317

`A338786(n+1)+A000007(A128676(n+1))`
-/

namespace A189228.P6570344037346835317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338786 (n + 1) + A000007 (A128676 (n + 1)).toNat

end

end A189228.P6570344037346835317

/-!
# A189230: Complementary Catalan triangle read by rows.

The programs for A189230, there is no canonical definition to state claims against.
-/

/-! ## A189230.P6727228817400684201

`A189231(n)-A053121(n)`
-/

namespace A189230.P6727228817400684201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189231 n - A053121 n

end

end A189230.P6727228817400684201

/-! ## A189230.P10916637865272047702

`C(A189231(n), A111959(n)+1)`
-/

namespace A189230.P10916637865272047702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A189231 n).toNat (A111959 n + 1).toNat

end

end A189230.P10916637865272047702

/-! ## A189230.P13701379732827854560

`and(1, A025581(n))*A189231(n)`
-/

namespace A189230.P13701379732827854560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A025581 n) * A189231 n

end

end A189230.P13701379732827854560

/-! ## A189230.P3269159454508479078

`A002262(n+1)*A108044(n+1)`
-/

namespace A189230.P3269159454508479078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) * A108044 (n + 1)

end

end A189230.P3269159454508479078

/-! ## A189230.P6737625808586706606

`(1-A128174(n+1))*A189231(n)`
-/

namespace A189230.P6737625808586706606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A128174 (n + 1)) * A189231 n

end

end A189230.P6737625808586706606

/-! ## A189230.P7977641284609917935

`A004875(n+1)%2*A189231(n)`
-/

namespace A189230.P7977641284609917935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004875 (n + 1)) 2 * A189231 n

end

end A189230.P7977641284609917935

/-! ## A189230.P4571160690987908872

`A245869(n+1)%2*A189231(n)`
-/

namespace A189230.P4571160690987908872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245869 (n + 1)) 2 * A189231 n

end

end A189230.P4571160690987908872

/-! ## A189230.P1056006056959925592

`(A130321(n)-1)%3*A189231(n)`
-/

namespace A189230.P1056006056959925592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130321 n - 1) 3 * A189231 n

end

end A189230.P1056006056959925592

/-! ## A189230.P16136787722842622615

`A189231(n)-A052173(A061579(n))`
-/

namespace A189230.P16136787722842622615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189231 n - A052173 (A061579 n).toNat

end

end A189230.P16136787722842622615

/-! ## A189230.P341952374190035131

`A000035(A025581(n))*A189231(n)`
-/

namespace A189230.P341952374190035131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A025581 n).toNat * A189231 n

end

end A189230.P341952374190035131

/-!
# A189231: Extended Catalan triangle read by rows.

The programs for A189231, there is no canonical definition to state claims against.
-/

/-! ## A189231.P4925189051553154939

`A189230(n)+A053121(n)`
-/

namespace A189231.P4925189051553154939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189230 n + A053121 n

end

end A189231.P4925189051553154939

/-! ## A189231.P17293763342474863550

`gcd(A053121(n-char[1]), A189230(n))`
-/

namespace A189231.P17293763342474863550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053121 (n - (if ∃ j, f1 j = n then 1 else 0))) (A189230 n)

end

end A189231.P17293763342474863550

/-! ## A189231.P15352904053074833304

`or(A053121(n-char[3]), A189230(n))`
-/

namespace A189231.P15352904053074833304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053121 (n - (if ∃ j, f1 j = n then 1 else 0))) (A189230 n)

end

end A189231.P15352904053074833304

/-! ## A189231.P6498835244508133341

`xor(A053121(2*n-n), A189230(n))`
-/

namespace A189231.P6498835244508133341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053121 (2 * n - n)) (A189230 n)

end

end A189231.P6498835244508133341

/-! ## A189231.P1824838462202328255

`A189230(n)+A052173(A061579(n))`
-/

namespace A189231.P1824838462202328255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189230 n + A052173 (A061579 n).toNat

end

end A189231.P1824838462202328255

/-! ## A189231.P5665796373630334966

`A000027(gcd(A053121(n), A189230(n)))`
-/

namespace A189231.P5665796373630334966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A053121 n) (A189230 n))

end

end A189231.P5665796373630334966

/-! ## A189231.P8905774067077311675

`A000027(or(A053121(n), A189230(n)))`
-/

namespace A189231.P8905774067077311675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor (A053121 n) (A189230 n)).toNat

end

end A189231.P8905774067077311675

/-! ## A189231.P7426141381067279710

`A000027(xor(A053121(n), A189230(n)))`
-/

namespace A189231.P7426141381067279710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor (A053121 n) (A189230 n)).toNat

end

end A189231.P7426141381067279710

/-! ## A189231.P1576385550018791562

`or(A189230(n)%A000712(n), A053121(n))`
-/

namespace A189231.P1576385550018791562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A189230 n) (A000712 n)) (A053121 n)

end

end A189231.P1576385550018791562

/-! ## A189231.P10942096934920555021

`xor(A053121(n), A189230(n))^A000038(n)!`
-/

namespace A189231.P10942096934920555021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053121 n) (A189230 n) ^ Nat.factorial (A000038 n).toNat

end

end A189231.P10942096934920555021

/-!
# A189232: Triangle read by rows: Number of crossing set partitions of {1,2,...,n} into k blocks.

The programs for A189232, there is no canonical definition to state claims against.
-/

/-! ## A189232.P14699963058473394224

`A008277(n+1)-A001263(n+1)`
-/

namespace A189232.P14699963058473394224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A001263 (n + 1)

end

end A189232.P14699963058473394224

/-! ## A189232.P722919634281635102

`A048993(comp[∑[n]])-A001263(n+1)`
-/

namespace A189232.P722919634281635102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A001263 (n + 1)

end

end A189232.P722919634281635102

/-! ## A189232.P3710900059188422903

`A008277(n+1)-A090181(comp[∑[n]])`
-/

namespace A189232.P3710900059188422903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A090181 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A189232.P3710900059188422903

/-! ## A189232.P2054257870550204699

`A008277(n+1)-sqrt(A174158(n+1))`
-/

namespace A189232.P2054257870550204699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℝ) - Real.sqrt (A174158 (n + 1) : ℝ)

end

end A189232.P2054257870550204699

/-! ## A189232.P16101863124103162173

`A008277(n+1)-ceil(A174124(n)/2)`
-/

namespace A189232.P16101863124103162173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - ⌈(A174124 n : ℚ) / 2⌉

end

end A189232.P16101863124103162173

/-! ## A189232.P14957549869949796885

`A008277(n+1)-ceil(A132787(n+1)/2)`
-/

namespace A189232.P14957549869949796885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - ⌈(A132787 (n + 1) : ℚ) / 2⌉

end

end A189232.P14957549869949796885

/-! ## A189232.P1791651268698950762

`A285012(comp[A061885(n)])-A001263(n+1)`
-/

namespace A189232.P1791651268698950762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A001263 (n + 1)

end

end A189232.P1791651268698950762

/-! ## A189232.P13949222116964279393

`A008278(A038722(n+1))-A001263(n+1)`
-/

namespace A189232.P13949222116964279393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A038722 (n + 1)).toNat - A001263 (n + 1)

end

end A189232.P13949222116964279393

/-! ## A189232.P13875959950735336743

`A008278(A061579(n)+1)-A001263(n+1)`
-/

namespace A189232.P13875959950735336743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A061579 n + 1).toNat - A001263 (n + 1)

end

end A189232.P13875959950735336743

/-! ## A189232.P16287764520523560191

`A285012(A064801(n+1))-A001263(n+1)`
-/

namespace A189232.P16287764520523560191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (A064801 (n + 1)).toNat - A001263 (n + 1)

end

end A189232.P16287764520523560191

/-!
# A189233: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals upwards, where the e.g.f. of column k is exp(k*(e^x-1)).

The programs for A189233, there is no canonical definition to state claims against.
-/

/-! ## A189233.P4504254752233045339

`A292860(A061579(n))`
-/

namespace A189233.P4504254752233045339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A061579 n).toNat

end

end A189233.P4504254752233045339

/-! ## A189233.P18432597327390159840

`A292860(A038722(n+1)-1)`
-/

namespace A189233.P18432597327390159840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A038722 (n + 1) - 1).toNat

end

end A189233.P18432597327390159840

/-! ## A189233.P2584259867206541432

`A292860(A002024(n+1)²-(n+1))`
-/

namespace A189233.P2584259867206541432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A189233.P2584259867206541432

/-! ## A189233.P18219300572519565350

`A292860(A002024(n+2)*A002024(n+1)-(n+1))`
-/

namespace A189233.P18219300572519565350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A002024 (n + 2) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A189233.P18219300572519565350

/-! ## A189233.P15807047943565346820

`A292860(A038722(n+2))`
-/

namespace A189233.P15807047943565346820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A038722 (n + 2)).toNat

end

end A189233.P15807047943565346820

/-!
# A189234: Expansion of (5-4*x-12*x^2+6*x^3+3*x^4)/(1-x-4*x^2+3*x^3+3*x^4-x^5).

The programs for A189234, the canonical program `A189234.P35060978083416643` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189234 has offset 0).

The definition of A189234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-4x-12x^2+6x^3+3x^4)/(1-x-4x^2+3x^3+3x^4-x^5))` (program `A189234.P35060978083416643`, by `A189234.P35060978083416643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189234.P35060978083416643

`ogf((5-4x-12x^2+6x^3+3x^4)/(1-x-4x^2+3x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189234

/-- `ogf((5-4x-12x^2+6x^3+3x^4)/(1-x-4x^2+3x^3+3x^4-x^5))` -/
def P35060978083416643.Spec : Prop :=
  ∀ n, P35060978083416643.a n = A189234 n

theorem P35060978083416643.correct : P35060978083416643.Spec := by
  intro n
  simp only [A189234]

end A189234

/-! ## A189234.P11046485697246762072

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=5, a(1)=1, a(2)=9, a(3)=4, a(4)=25`
-/

namespace A189234.P11046485697246762072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9, 4, 25] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 3 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A189234.P11046485697246762072

namespace A189234

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P11046485697246762072.Spec : Prop :=
  ∀ n, P11046485697246762072.a n = A189234 n

end A189234

/-! ## A189234.P539501752833186466

`abs(A094650(n))`
-/

namespace A189234.P539501752833186466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094650 n|

end

end A189234.P539501752833186466

namespace A189234

/-- `abs(A094650(n))` -/
def P539501752833186466.Spec : Prop :=
  ∀ n, P539501752833186466.a n = A189234 n

end A189234

/-! ## A189234.P3068665142247021117

`A033999(n)*A094650(n)`
-/

namespace A189234.P3068665142247021117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A094650 n

end

end A189234.P3068665142247021117

namespace A189234

/-- `A033999(n)*A094650(n)` -/
def P3068665142247021117.Spec : Prop :=
  ∀ n, P3068665142247021117.a n = A189234 n

end A189234

/-! ## A189234.P11218252481560707559

`lcm(A020985(n), A094650(n))`
-/

namespace A189234.P11218252481560707559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A094650 n)

end

end A189234.P11218252481560707559

namespace A189234

/-- `lcm(A020985(n), A094650(n))` -/
def P11218252481560707559.Spec : Prop :=
  ∀ n, (P11218252481560707559.a n : ℤ) = A189234 n

end A189234

/-! ## A189234.P11325268269071462490

`gcd(5*A000007(n), A094650(n))`
-/

namespace A189234.P11325268269071462490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * A000007 n) (A094650 n)

end

end A189234.P11325268269071462490

namespace A189234

/-- `gcd(5*A000007(n), A094650(n))` -/
def P11325268269071462490.Spec : Prop :=
  ∀ n, (P11325268269071462490.a n : ℤ) = A189234 n

end A189234

/-! ## A189234.P9598483543633248307

`A094648(n)/A096975(n)*A094650(n)`
-/

namespace A189234.P9598483543633248307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094648 n : ℚ) / (A096975 n : ℚ) * (A094650 n : ℚ)

end

end A189234.P9598483543633248307

namespace A189234

/-- `A094648(n)/A096975(n)*A094650(n)` -/
def P9598483543633248307.Spec : Prop :=
  ∀ n, P9598483543633248307.a n = (A189234 n : ℚ)

end A189234

/-!
# A189235: Expansion of (5-16*x+6*x^2+10*x^3-2*x^4)/(1-4*x+2*x^2+5*x^3-2*x^4-x^5).

The programs for A189235, the canonical program `A189235.P4522329838476919476` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189235 has offset 0).

The definition of A189235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-16x+6x^2+10x^3-2x^4)/(1-4x+2x^2+5x^3-2x^4-x^5))` (program `A189235.P4522329838476919476`, by `A189235.P4522329838476919476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189235.P4522329838476919476

`ogf((5-16x+6x^2+10x^3-2x^4)/(1-4x+2x^2+5x^3-2x^4-x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189235

/-- `ogf((5-16x+6x^2+10x^3-2x^4)/(1-4x+2x^2+5x^3-2x^4-x^5))` -/
def P4522329838476919476.Spec : Prop :=
  ∀ n, P4522329838476919476.a n = A189235 n

theorem P4522329838476919476.correct : P4522329838476919476.Spec := by
  intro n
  simp only [A189235]

end A189235

/-! ## A189235.P12163071871059405038

`4*a(n-1)-2*a(n-2)-5*a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=5, a(1)=4, a(2)=12, a(3)=25, a(4)=64`
-/

namespace A189235.P12163071871059405038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 4, 12, 25, 64] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 5 * a (n - 3) + 2 * a (n - 4) + a (n - 5)

end

end A189235.P12163071871059405038

namespace A189235

/-- `4*a(n-1)-2*a(n-2)-5*a(n-3)+2*a(n-4)+a(n-5)` -/
def P12163071871059405038.Spec : Prop :=
  ∀ n, P12163071871059405038.a n = A189235 n

end A189235

/-! ## A189235.P6602152569025295090

`A062883(A028310(n))+A000007(n)`
-/

namespace A189235.P6602152569025295090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062883 (A028310 n).toNat + A000007 n

end

end A189235.P6602152569025295090

namespace A189235

/-- `A062883(A028310(n))+A000007(n)` -/
def P6602152569025295090.Spec : Prop :=
  ∀ n, P6602152569025295090.a n = A189235 n

end A189235

/-! ## A189235.P4709720910082913018

`A263013(n+2)+A062883(A028310(n))`
-/

namespace A189235.P4709720910082913018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 (n + 2) + A062883 (A028310 n).toNat

end

end A189235.P4709720910082913018

namespace A189235

/-- `A263013(n+2)+A062883(A028310(n))` -/
def P4709720910082913018.Spec : Prop :=
  ∀ n, P4709720910082913018.a n = A189235 n

end A189235

/-! ## A189235.P15463477666613026666

`A062883(A000007(n)+n)+A000007(n)`
-/

namespace A189235.P15463477666613026666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062883 (A000007 n + (n : ℤ)).toNat + A000007 n

end

end A189235.P15463477666613026666

namespace A189235

/-- `A062883(A000007(n)+n)+A000007(n)` -/
def P15463477666613026666.Spec : Prop :=
  ∀ n, P15463477666613026666.a n = A189235 n

end A189235

/-! ## A189235.P7181644978292427602

`A062883(A028310(n))+char[A258275(n+1)]`
-/

namespace A189235.P7181644978292427602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258275 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062883 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189235.P7181644978292427602

namespace A189235

/-- `A062883(A028310(n))+char[A258275(n+1)]` -/
def P7181644978292427602.Spec : Prop :=
  ∀ n, P7181644978292427602.a n = A189235 n

end A189235

/-! ## A189235.P16330306409498282632

`A062883(A028310(n))+A000035(A004277(n))`
-/

namespace A189235.P16330306409498282632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062883 (A028310 n).toNat + A000035 (A004277 n).toNat

end

end A189235.P16330306409498282632

namespace A189235

/-- `A062883(A028310(n))+A000035(A004277(n))` -/
def P16330306409498282632.Spec : Prop :=
  ∀ n, P16330306409498282632.a n = A189235 n

end A189235

/-! ## A189235.P9233279379328211482

`A062883(A028310(n))+A005369(n²)`
-/

namespace A189235.P9233279379328211482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062883 (A028310 n).toNat + A005369 (n ^ 2)

end

end A189235.P9233279379328211482

namespace A189235

/-- `A062883(A028310(n))+A005369(n²)` -/
def P9233279379328211482.Spec : Prop :=
  ∀ n, P9233279379328211482.a n = A189235 n

end A189235

/-!
# A189236: Expansion of (5-8*x-15*x^2+4*x^3+4*x^4)/(1-2*x-5*x^2+2*x^3+4*x^4+x^5).

The programs for A189236, the canonical program `A189236.P17367799190801555403` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189236 has offset 0).

The definition of A189236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-8x-15x^2+4x^3+4x^4)/(1-2x-5x^2+2x^3+4x^4+x^5))` (program `A189236.P17367799190801555403`, by `A189236.P17367799190801555403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189236.P17367799190801555403

`ogf((5-8x-15x^2+4x^3+4x^4)/(1-2x-5x^2+2x^3+4x^4+x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189236

/-- `ogf((5-8x-15x^2+4x^3+4x^4)/(1-2x-5x^2+2x^3+4x^4+x^5))` -/
def P17367799190801555403.Spec : Prop :=
  ∀ n, P17367799190801555403.a n = A189236 n

theorem P17367799190801555403.correct : P17367799190801555403.Spec := by
  intro n
  simp only [A189236]

end A189236

/-! ## A189236.P10358910145025686799

`2*a(n-1)+5*a(n-2)-2*a(n-3)-4*a(n-4)-a(n-5)` with `a(0)=5, a(1)=2, a(2)=14, a(3)=32, a(4)=114`
-/

namespace A189236.P10358910145025686799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2, 14, 32, 114] fun n a =>
  2 * a (n - 1) + 5 * a (n - 2) - 2 * a (n - 3) - 4 * a (n - 4) - a (n - 5)

end

end A189236.P10358910145025686799

namespace A189236

/-- `2*a(n-1)+5*a(n-2)-2*a(n-3)-4*a(n-4)-a(n-5)` -/
def P10358910145025686799.Spec : Prop :=
  ∀ n, P10358910145025686799.a n = A189236 n

end A189236

/-!
# A189237: Expansion of (5-12*x-9*x^2+8*x^3+x^4)/(1-3*x-3*x^2+4*x^3+x^4-x^5).

The programs for A189237, the canonical program `A189237.P17127798248541498017` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189237 has offset 0).

The definition of A189237 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-12x-9x^2+8x^3+x^4)/(1-3x-3x^2+4x^3+x^4-x^5))` (program `A189237.P17127798248541498017`, by `A189237.P17127798248541498017.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189237.P17127798248541498017

`ogf((5-12x-9x^2+8x^3+x^4)/(1-3x-3x^2+4x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189237

/-- `ogf((5-12x-9x^2+8x^3+x^4)/(1-3x-3x^2+4x^3+x^4-x^5))` -/
def P17127798248541498017.Spec : Prop :=
  ∀ n, P17127798248541498017.a n = A189237 n

theorem P17127798248541498017.correct : P17127798248541498017.Spec := by
  intro n
  simp only [A189237]

end A189237

/-! ## A189237.P14238376505973895460

`3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=5, a(1)=3, a(2)=15, a(3)=42, a(4)=155`
-/

namespace A189237.P14238376505973895460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 3, 15, 42, 155] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - 4 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A189237.P14238376505973895460

namespace A189237

/-- `3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` -/
def P14238376505973895460.Spec : Prop :=
  ∀ n, P14238376505973895460.a n = A189237 n

end A189237

/-! ## A189237.P8510585698222030866

`A293312(A167499(n+3))`
-/

namespace A189237.P8510585698222030866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293312 (A167499 (n + 3)).toNat

end

end A189237.P8510585698222030866

namespace A189237

/-- `A293312(A167499(n+3))` -/
def P8510585698222030866.Spec : Prop :=
  ∀ n, P8510585698222030866.a n = A189237 n

end A189237

/-!
# A189238: Expansion of e.g.f. x/cos(x)*exp(x/cos(x)).

The programs for A189238, there is no canonical definition to state claims against.
-/

/-! ## A189238.P12788191421795327518

`A119257(comp[abs(1-8*n)]!)`
-/

namespace A189238.P12788191421795327518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (8 * n : ℤ)|

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A189238.P12788191421795327518

/-! ## A189238.P10041989023567431749

`(n+1)*A165597(A001142(n))`
-/

namespace A189238.P10041989023567431749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165597 (A001142 n).toNat

end

end A189238.P10041989023567431749

/-!
# A189239: Expansion of e.g.f. exp(x/cos(x)*exp(x/cos(x))).

The programs for A189239, there is no canonical definition to state claims against.
-/

/-! ## A189239.P18176195897909703864

`A332547(A339511(n²))`
-/

namespace A189239.P18176195897909703864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332547 (A339511 (n ^ 2)).toNat

end

end A189239.P18176195897909703864

/-! ## A189239.P9914328212951868188

`A070098(A086871(n))+1`
-/

namespace A189239.P9914328212951868188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (A086871 n).toNat + 1

end

end A189239.P9914328212951868188

/-!
# A189240: Least number k such that 2*k*n + 1 is a prime dividing 3^n + 1.

The programs for A189240, there is no canonical definition to state claims against.
-/

/-! ## A189240.P14934901237292348544

`floor(A189241(n+2)/(2*(n+2)))`
-/

namespace A189240.P14934901237292348544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A189241 (n + 2) : ℚ) / (2 * (n + 2) : ℚ)⌋

end

end A189240.P14934901237292348544

/-! ## A189240.P1413844692169878808

`A327812(A189241(n+2))`
-/

namespace A189240.P1413844692169878808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327812 (A189241 (n + 2)).toNat

end

end A189240.P1413844692169878808

/-!
# A189241: Smallest prime factor of 3^n+1 having the form 2*k*n+1.

The programs for A189241, there is no canonical definition to state claims against.
-/

/-! ## A189241.P8922279900009893254

`A004271(n+4)*A189240(n+2)+1`
-/

namespace A189241.P8922279900009893254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 4) * A189240 (n + 2) + 1

end

end A189241.P8922279900009893254

/-! ## A189241.P9599291648923293525

`A143663(lt[A286740(n), A047967(n)])`
-/

namespace A189241.P9599291648923293525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286740 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143663 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A189241.P9599291648923293525

/-! ## A189241.P2451895665911521847

`A143663(2*n+4)+A000007(A000219(n))`
-/

namespace A189241.P2451895665911521847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143663 (2 * n + 4) + A000007 (A000219 n).toNat

end

end A189241.P2451895665911521847

/-! ## A189241.P6762061235868796503

`A143663(2*n+4)+A000007(A334866(n))`
-/

namespace A189241.P6762061235868796503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143663 (2 * n + 4) + A000007 (A334866 n).toNat

end

end A189241.P6762061235868796503

/-! ## A189241.P1373482895538345292

`A294936(A332840(n))+A143663(2*n+4)`
-/

namespace A189241.P1373482895538345292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A332840 n).toNat + A143663 (2 * n + 4)

end

end A189241.P1373482895538345292

/-!
# A189242: Numbers n such that 24*n+17 is not prime.

The programs for A189242, the canonical program `A189242.P4695683032726661990` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189242 has offset 1).

The definition of A189242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189242.P4695683032726661990

`comp[A139531(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A189242

/-- `comp[A139531(n+1)]` -/
def P4695683032726661990.Spec : Prop :=
  ∀ n, (P4695683032726661990.a n : ℤ) = A189242 (n + 1)

theorem P4695683032726661990.correct : P4695683032726661990.Spec := by
  intro n
  simp only [A189242, Nat.add_sub_cancel]

end A189242

/-! ## A189242.P10961906264744907342

`record[A101279(A166563(n+1))]`
-/

namespace A189242.P10961906264744907342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A166563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189242.P10961906264744907342

namespace A189242

/-- `record[A101279(A166563(n+1))]` -/
def P10961906264744907342.Spec : Prop :=
  ∀ n, P10961906264744907342.a n = A189242 (n + 1)

end A189242

/-! ## A189242.P17586581353310049004

`A004526(record[A000265(A166563(n+1))])`
-/

namespace A189242.P17586581353310049004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A166563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189242.P17586581353310049004

namespace A189242

/-- `A004526(record[A000265(A166563(n+1))])` -/
def P17586581353310049004.Spec : Prop :=
  ∀ n, P17586581353310049004.a n = A189242 (n + 1)

end A189242

/-! ## A189242.P5325759120892850474

`lt[2, A000005(2*(12*n+8)+1)]`
-/

namespace A189242.P5325759120892850474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (12 * n + 8) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189242.P5325759120892850474

namespace A189242

/-- `lt[2, A000005(2*(12*n+8)+1)]` -/
def P5325759120892850474.Spec : Prop :=
  ∀ n, (P5325759120892850474.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P18022173581841798728

`eq[0, A075743(A004770(n+1))]`
-/

namespace A189242.P18022173581841798728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A004770 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189242.P18022173581841798728

namespace A189242

/-- `eq[0, A075743(A004770(n+1))]` -/
def P18022173581841798728.Spec : Prop :=
  ∀ n, (P18022173581841798728.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P12033023928933955301

`lt[A010051(4*A016957(n)+1), 1]`
-/

namespace A189242.P12033023928933955301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (4 * A016957 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189242.P12033023928933955301

namespace A189242

/-- `lt[A010051(4*A016957(n)+1), 1]` -/
def P12033023928933955301.Spec : Prop :=
  ∀ n, (P12033023928933955301.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P7799643355027207509

`lt[A000010(A017581(2*n+1)), A017545(2*n)]`
-/

namespace A189242.P7799643355027207509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189242.P7799643355027207509

namespace A189242

/-- `lt[A000010(A017581(2*n+1)), A017545(2*n)]` -/
def P7799643355027207509.Spec : Prop :=
  ∀ n, (P7799643355027207509.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P8042196926141193699

`lt[A000010(A017581(2*n+1)), A017581(2*n)]`
-/

namespace A189242.P8042196926141193699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189242.P8042196926141193699

namespace A189242

/-- `lt[A000010(A017581(2*n+1)), A017581(2*n)]` -/
def P8042196926141193699.Spec : Prop :=
  ∀ n, (P8042196926141193699.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P5021256406077941875

`lt[A017605(2*n+1), A000203(A017581(2*n+1))]`
-/

namespace A189242.P5021256406077941875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189242.P5021256406077941875

namespace A189242

/-- `lt[A017605(2*n+1), A000203(A017581(2*n+1))]` -/
def P5021256406077941875.Spec : Prop :=
  ∀ n, (P5021256406077941875.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P1623599081838057193

`lt[A017617(2*n+1), A000203(A017581(2*n+1))]`
-/

namespace A189242.P1623599081838057193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189242.P1623599081838057193

namespace A189242

/-- `lt[A017617(2*n+1), A000203(A017581(2*n+1))]` -/
def P1623599081838057193.Spec : Prop :=
  ∀ n, (P1623599081838057193.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P7415002445637948627

`lt[A017641(2*n+1), A000203(A017581(2*n+1))]`
-/

namespace A189242.P7415002445637948627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189242.P7415002445637948627

namespace A189242

/-- `lt[A017641(2*n+1), A000203(A017581(2*n+1))]` -/
def P7415002445637948627.Spec : Prop :=
  ∀ n, (P7415002445637948627.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P1422599284829204083

`eq[1, A005171(A017581(2*n+1))]`
-/

namespace A189242.P1422599284829204083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A017581 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189242.P1422599284829204083

namespace A189242

/-- `eq[1, A005171(A017581(2*n+1))]` -/
def P1422599284829204083.Spec : Prop :=
  ∀ n, (P1422599284829204083.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P14254737953174313363

`eq[0, A167020(A004767(n))]`
-/

namespace A189242.P14254737953174313363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189242.P14254737953174313363

namespace A189242

/-- `eq[0, A167020(A004767(n))]` -/
def P14254737953174313363.Spec : Prop :=
  ∀ n, (P14254737953174313363.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P3842181567962803224

`lt[2, A016014(A016933(n)+2)]`
-/

namespace A189242.P3842181567962803224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A016933 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189242.P3842181567962803224

namespace A189242

/-- `lt[2, A016014(A016933(n)+2)]` -/
def P3842181567962803224.Spec : Prop :=
  ∀ n, (P3842181567962803224.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P2615921447270047167

`lt[2, A016014(A016777(Δ[n²]))]`
-/

namespace A189242.P2615921447270047167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A016777 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189242.P2615921447270047167

namespace A189242

/-- `lt[2, A016014(A016777(Δ[n²]))]` -/
def P2615921447270047167.Spec : Prop :=
  ∀ n, (P2615921447270047167.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P4180025910824018342

`lt[2, A016014(eq[3, A020639(n+1)]+2)]`
-/

namespace A189242.P4180025910824018342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189242.P4180025910824018342

namespace A189242

/-- `lt[2, A016014(eq[3, A020639(n+1)]+2)]` -/
def P4180025910824018342.Spec : Prop :=
  ∀ n, (P4180025910824018342.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P7240568823652413218

`eq[0, A211173(A017617(n))]`
-/

namespace A189242.P7240568823652413218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 (A017617 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189242.P7240568823652413218

namespace A189242

/-- `eq[0, A211173(A017617(n))]` -/
def P7240568823652413218.Spec : Prop :=
  ∀ n, (P7240568823652413218.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P7569275129172052313

`eq[1, A245509(3*(8*n+5))]`
-/

namespace A189242.P7569275129172052313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245509 (3 * (8 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189242.P7569275129172052313

namespace A189242

/-- `eq[1, A245509(3*(8*n+5))]` -/
def P7569275129172052313.Spec : Prop :=
  ∀ n, (P7569275129172052313.a n : ℤ) = A189242 (n + 1)

end A189242

/-! ## A189242.P9638187210148663298

`lt[A014963(4*(3*Δ[n²]+1)+1), n]`
-/

namespace A189242.P9638187210148663298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * (3 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 1) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A189242.P9638187210148663298

namespace A189242

/-- `lt[A014963(4*(3*Δ[n²]+1)+1), n]` -/
def P9638187210148663298.Spec : Prop :=
  ∀ n, (P9638187210148663298.a n : ℤ) = A189242 (n + 1)

end A189242

/-!
# A189243: Number of ways to dissect a nonsquare rectangle into n rectangles with equal area.

The programs for A189243, there is no canonical definition to state claims against.
-/

/-! ## A189243.P2322462691942500266

`A218470(A182318(n+1))+A099947(n+3)`
-/

namespace A189243.P2322462691942500266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (A182318 (n + 1)).toNat + A099947 (n + 3)

end

end A189243.P2322462691942500266

/-! ## A189243.P15901594576716660054

`A206914(A297330(2*n+5))+A099947(n+3)`
-/

namespace A189243.P15901594576716660054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (A297330 (2 * n + 5)).toNat + A099947 (n + 3)

end

end A189243.P15901594576716660054

/-!
# A189244: The n-th derivative of e^((2-x-x^2)/(1-x-x^2)), evaluated at x=1.

The programs for A189244, there is no canonical definition to state claims against.
-/

/-! ## A189244.P1167474504199789096

`Δ[Δ[A333830(A328434(n))]]`
-/

namespace A189244.P1167474504199789096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333830 (A328434 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189244.P1167474504199789096

/-!
# A189245: T(n,k) = Number of n X k array permutations with each element moved by a city block distance of one.

The programs for A189245, there is no canonical definition to state claims against.
-/

/-! ## A189245.P17505886317047826192

`A099390(n+1)²`
-/

namespace A189245.P17505886317047826192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1) ^ 2

end

end A189245.P17505886317047826192

/-! ## A189245.P2592727422572549742

`A099390(2*(n+1)-(n+1))^2`
-/

namespace A189245.P2592727422572549742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (2 * (n + 1) - (n + 1)) ^ 2

end

end A189245.P2592727422572549742

/-! ## A189245.P13674806534006675497

`A187596(eq[0, A103451(n)])²`
-/

namespace A189245.P13674806534006675497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A189245.P13674806534006675497

/-! ## A189245.P11223483280636861401

`A187596(eq[0, A103452(n)])²`
-/

namespace A189245.P11223483280636861401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A189245.P11223483280636861401

/-! ## A189245.P12403290885587209888

`A187596(lt[1, A187558(n)])²`
-/

namespace A189245.P12403290885587209888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A189245.P12403290885587209888

/-! ## A189245.P4674890801904239357

`A187596(lt[1, A187617(n)])²`
-/

namespace A189245.P4674890801904239357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A189245.P4674890801904239357

/-! ## A189245.P2911977680484155012

`A187596(A003057(n+2)²-n)²`
-/

namespace A189245.P2911977680484155012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat ^ 2

end

end A189245.P2911977680484155012

/-! ## A189245.P13863272479070061705

`A187596(2*A003057(n+2)+n)²`
-/

namespace A189245.P13863272479070061705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (2 * A003057 (n + 2) + (n : ℤ)).toNat ^ 2

end

end A189245.P13863272479070061705

/-! ## A189245.P5659534931546000663

`A099390(char[1]+1+n)*A099390(n+1)`
-/

namespace A189245.P5659534931546000663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) * A099390 (n + 1)

end

end A189245.P5659534931546000663

/-! ## A189245.P16073135235730138898

`A099390(n+1)*A187596(lt[1, A187617(n)])`
-/

namespace A189245.P16073135235730138898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1) * A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A189245.P16073135235730138898

/-! ## A189245.P1041331853732036853

`A099390(n+1)*A198293(A198293(n+1))*A099390(n+1)`
-/

namespace A189245.P1041331853732036853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1) * A198293 (A198293 (n + 1)).toNat * A099390 (n + 1)

end

end A189245.P1041331853732036853

/-!
# A189246: Number of n X n array permutations with each element making zero or one king moves.

The programs for A189246, there is no canonical definition to state claims against.
-/

/-! ## A189246.P10653908498754475901

`A189254((n+1)²+n²)`
-/

namespace A189246.P10653908498754475901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 ((n + 1) ^ 2 + n ^ 2)

end

end A189246.P10653908498754475901

/-!
# A189247: Number of n X 2 array permutations with each element making zero or one king moves.

The programs for A189247, the canonical program `A189247.P14833868611953520832` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189247 has offset 1).

The definition of A189247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189247.P14833868611953520832

`6*a(n-1)+12*a(n-2)-16*a(n-3)` with `a(0)=2, a(1)=24, a(2)=152`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189247

/-- `6*a(n-1)+12*a(n-2)-16*a(n-3)` -/
def P14833868611953520832.Spec : Prop :=
  ∀ n, P14833868611953520832.a n = A189247 (n + 1)

theorem P14833868611953520832.correct : P14833868611953520832.Spec := by
  intro n
  simp only [A189247, Nat.add_sub_cancel]

end A189247

/-! ## A189247.P8848803202436645297

`2^(n+1)*A100191(n+1)`
-/

namespace A189247.P8848803202436645297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A100191 (n + 1)

end

end A189247.P8848803202436645297

namespace A189247

/-- `2^(n+1)*A100191(n+1)` -/
def P8848803202436645297.Spec : Prop :=
  ∀ n, P8848803202436645297.a n = A189247 (n + 1)

end A189247

/-! ## A189247.P17122572666192616846

`2^(n+1)*A123950(n+3)`
-/

namespace A189247.P17122572666192616846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A123950 (n + 3)

end

end A189247.P17122572666192616846

namespace A189247

/-- `2^(n+1)*A123950(n+3)` -/
def P17122572666192616846.Spec : Prop :=
  ∀ n, P17122572666192616846.a n = A189247 (n + 1)

end A189247

/-! ## A189247.P4451417181935336283

`2*A100191(n+1)*A000079(n)`
-/

namespace A189247.P4451417181935336283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100191 (n + 1) * A000079 n

end

end A189247.P4451417181935336283

namespace A189247

/-- `2*A100191(n+1)*A000079(n)` -/
def P4451417181935336283.Spec : Prop :=
  ∀ n, P4451417181935336283.a n = A189247 (n + 1)

end A189247

/-! ## A189247.P15371615981810029848

`A100191(n+1)*A130321(∑[n+1])`
-/

namespace A189247.P15371615981810029848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100191 (n + 1) * A130321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189247.P15371615981810029848

namespace A189247

/-- `A100191(n+1)*A130321(∑[n+1])` -/
def P15371615981810029848.Spec : Prop :=
  ∀ n, P15371615981810029848.a n = A189247 (n + 1)

end A189247

/-! ## A189247.P6544694513812715958

`A100191(n+1)*A332816(A111745(n+1))`
-/

namespace A189247.P6544694513812715958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100191 (n + 1) * A332816 (A111745 (n + 1)).toNat

end

end A189247.P6544694513812715958

namespace A189247

/-- `A100191(n+1)*A332816(A111745(n+1))` -/
def P6544694513812715958.Spec : Prop :=
  ∀ n, P6544694513812715958.a n = A189247 (n + 1)

end A189247

/-! ## A189247.P8785997553789210305

`A100191(n+1)*A227450(∑[n+1])`
-/

namespace A189247.P8785997553789210305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100191 (n + 1) * A227450 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189247.P8785997553789210305

namespace A189247

/-- `A100191(n+1)*A227450(∑[n+1])` -/
def P8785997553789210305.Spec : Prop :=
  ∀ n, P8785997553789210305.a n = A189247 (n + 1)

end A189247

/-!
# A189248: Number of nX3 array permutations with each element making zero or one king moves.

The programs for A189248, there is no canonical definition to state claims against.
-/

/-! ## A189248.P13549694683157190436

`A189254(∑[n+2]+4)`
-/

namespace A189248.P13549694683157190436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189248.P13549694683157190436

/-! ## A189248.P18184863628196774105

`A189254(A167614(n+1))*A304042(n)`
-/

namespace A189248.P18184863628196774105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A167614 (n + 1)).toNat * A304042 n

end

end A189248.P18184863628196774105

/-! ## A189248.P2184096966468632150

`or(A000038(n), A189254(A167614(n+1)))`
-/

namespace A189248.P2184096966468632150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A189254 (A167614 (n + 1)).toNat)

end

end A189248.P2184096966468632150

/-! ## A189248.P16546804678808096728

`A189254(A167614(n+1))+A000038(n+1)`
-/

namespace A189248.P16546804678808096728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A189248.P16546804678808096728

/-! ## A189248.P10652913549871943582

`A189254(A167614(n+1))+A000035(2*n)`
-/

namespace A189248.P10652913549871943582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A189248.P10652913549871943582

/-!
# A189249: Number of n X 4 array permutations with each element making zero or one king moves.

The programs for A189249, there is no canonical definition to state claims against.
-/

/-! ## A189249.P13412471692169246949

`A189254(A374004(n+1))`
-/

namespace A189249.P13412471692169246949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A374004 (n + 1)).toNat

end

end A189249.P13412471692169246949

/-! ## A189249.P2688160161626690944

`A189254(A052905(n)+9)`
-/

namespace A189249.P2688160161626690944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A052905 n + 9).toNat

end

end A189249.P2688160161626690944

/-! ## A189249.P11336668584002121861

`A189254(A055999(n)+10)`
-/

namespace A189249.P11336668584002121861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A055999 n + 10).toNat

end

end A189249.P11336668584002121861

/-! ## A189249.P3424391666420311023

`A189254(A167614(n+2)+1)`
-/

namespace A189249.P3424391666420311023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A167614 (n + 2) + 1).toNat

end

end A189249.P3424391666420311023

/-! ## A189249.P14558551227264942486

`A189254(A141214(n+1))`
-/

namespace A189249.P14558551227264942486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A141214 (n + 1)).toNat

end

end A189249.P14558551227264942486

/-!
# A189250: Number of nX5 array permutations with each element making zero or one king moves.

The programs for A189250, there is no canonical definition to state claims against.
-/

/-! ## A189250.P1680949228091063568

`A189254(A374005(n+1))`
-/

namespace A189250.P1680949228091063568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A374005 (n + 1)).toNat

end

end A189250.P1680949228091063568

/-! ## A189250.P12034590627154232770

`A189254(A056000(n)+15)`
-/

namespace A189250.P12034590627154232770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A056000 n + 15).toNat

end

end A189250.P12034590627154232770

/-! ## A189250.P1343932611007624207

`A189254(A167614(n+3)+2)`
-/

namespace A189250.P1343932611007624207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A167614 (n + 3) + 2).toNat

end

end A189250.P1343932611007624207

/-! ## A189250.P10378451272329342671

`A189254(eq[6, A131818(n+1)])`
-/

namespace A189250.P10378451272329342671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189250.P10378451272329342671

/-! ## A189250.P17263518150136131871

`A189254(eq[6, A185782(n+1)])`
-/

namespace A189250.P17263518150136131871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189250.P17263518150136131871

/-!
# A189251: Number of nX6 array permutations with each element making zero or one king moves.

The programs for A189251, there is no canonical definition to state claims against.
-/

/-! ## A189251.P18237784084120919637

`A189254(A374007(n+1))`
-/

namespace A189251.P18237784084120919637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (A374007 (n + 1)).toNat

end

end A189251.P18237784084120919637

/-! ## A189251.P16542868038289309937

`A189254(eq[7, A131818(n+1)])`
-/

namespace A189251.P16542868038289309937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189251.P16542868038289309937

/-! ## A189251.P2716624287764958631

`A189254(Δ[Δ[A006504(n+1)]])`
-/

namespace A189251.P2716624287764958631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (f1 (n + 1) - f1 n).toNat

end

end A189251.P2716624287764958631

/-!
# A189252: 

The programs for A189252, there is no canonical definition to state claims against.
-/

/-! ## A189252.P16575246542700009644

`A189254(eq[8, A131818(n+1)])`
-/

namespace A189252.P16575246542700009644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189252.P16575246542700009644

/-!
# A189253: 

The programs for A189253, there is no canonical definition to state claims against.
-/

/-! ## A189253.P6552536953771366311

`A189254(eq[9, A131818(n+1)])`
-/

namespace A189253.P6552536953771366311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189253.P6552536953771366311

/-!
# A189254: T(n,k)=Number of nXk array permutations with each element making zero or one king moves.

The programs for A189254, there is no canonical definition to state claims against.
-/

/-! ## A189254.P8714435005646752360

`A300230(A300215(n+1)^A141021(n))`
-/

namespace A189254.P8714435005646752360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300230 (SequenceMachineLib.roundAway ((A300215 (n + 1) : ℚ) ^ (A141021 n : ℤ))).toNat

end

end A189254.P8714435005646752360

/-!
# A189255: Number of permutations p of 1,2,...,n satisfying |p(i+4)-p(i)|<>4 for all 1<=i<=n-4.

The programs for A189255, there is no canonical definition to state claims against.
-/

/-! ## A189255.P14610342379158934139

`A189840(gcd(A036498(2*n+1), A051189(n)))`
-/

namespace A189255.P14610342379158934139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189840 (Int.gcd (A036498 (2 * n + 1)) (A051189 n))

end

end A189255.P14610342379158934139

/-! ## A189255.P824804488612351785

`A218153(n)*A239086(A002846(n+1))`
-/

namespace A189255.P824804488612351785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218153 n * A239086 (A002846 (n + 1)).toNat

end

end A189255.P824804488612351785

/-! ## A189255.P477945000897218235

`A214028(A008480(2*n+3)*A162653(n))`
-/

namespace A189255.P477945000897218235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (A008480 (2 * n + 3) * A162653 n).toNat

end

end A189255.P477945000897218235

/-!
# A189256: Number of permutations p of 1,2,...,n satisfying |p(i+5)-p(i)|<>5 for all 1<=i<=n-5.

The programs for A189256, there is no canonical definition to state claims against.
-/

/-! ## A189256.P15579050030936481732

`A255914(A018080(n))`
-/

namespace A189256.P15579050030936481732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255914 (A018080 n).toNat

end

end A189256.P15579050030936481732

/-! ## A189256.P14672642368259889929

`A344469(A232464(n))`
-/

namespace A189256.P14672642368259889929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344469 (A232464 n).toNat

end

end A189256.P14672642368259889929

/-! ## A189256.P4715066243285320198

`A344469(A003241(n+1))`
-/

namespace A189256.P4715066243285320198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344469 (A003241 (n + 1)).toNat

end

end A189256.P4715066243285320198

/-!
# A189257: Number of n X n binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189257, there is no canonical definition to state claims against.
-/

/-! ## A189257.P545156359350807531

`A189264(∑[4*n]+1)`
-/

namespace A189257.P545156359350807531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189257.P545156359350807531

/-! ## A189257.P14039218256555133428

`record[A189264(n+1)*A214505(n)]`
-/

namespace A189257.P14039218256555133428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189257.P14039218256555133428

/-! ## A189257.P2666648552234001427

`record[gcd(A114327(n), A189264(n+1))]`
-/

namespace A189257.P2666648552234001427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A189264 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189257.P2666648552234001427

/-! ## A189257.P14085925804027010583

`A189264(A001844(n))/A007318(∑[n])`
-/

namespace A189257.P14085925804027010583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189264 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A189257.P14085925804027010583

/-! ## A189257.P14812085044040646571

`A189264(A001844(n))+A008683(12*(n+1))`
-/

namespace A189257.P14812085044040646571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A001844 n).toNat + A008683 (12 * (n + 1))

end

end A189257.P14812085044040646571

/-!
# A189258: Number of n X 3 binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189258, there is no canonical definition to state claims against.
-/

/-! ## A189258.P519192100009625372

`A189264(∑[n+3]+1)`
-/

namespace A189258.P519192100009625372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189258.P519192100009625372

/-! ## A189258.P1487530639192048986

`record[A189264(A198464(n+1))]`
-/

namespace A189258.P1487530639192048986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189258.P1487530639192048986

/-! ## A189258.P13821192705527126219

`A189264(A052905(n)+3)%A189067(n+1)`
-/

namespace A189258.P13821192705527126219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189264 (A052905 n + 3).toNat) (A189067 (n + 1))

end

end A189258.P13821192705527126219

/-! ## A189258.P987212949148353882

`A189264(A034856(n+2))%A221426(n+2)`
-/

namespace A189258.P987212949148353882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189264 (A034856 (n + 2)).toNat) (A221426 (n + 2))

end

end A189258.P987212949148353882

/-!
# A189259: Number of nX4 binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189259, there is no canonical definition to state claims against.
-/

/-! ## A189259.P376083545654606343

`A189264(A141214(n+1))`
-/

namespace A189259.P376083545654606343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A141214 (n + 1)).toNat

end

end A189259.P376083545654606343

/-! ## A189259.P8064363687021771698

`A189264(A055998(n+2))`
-/

namespace A189259.P8064363687021771698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A055998 (n + 2)).toNat

end

end A189259.P8064363687021771698

/-! ## A189259.P2008469158658335214

`A189264(A056000(n)+7)`
-/

namespace A189259.P2008469158658335214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A056000 n + 7).toNat

end

end A189259.P2008469158658335214

/-! ## A189259.P6561372015935855688

`A189264(eq[3, A193592(n)])`
-/

namespace A189259.P6561372015935855688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189259.P6561372015935855688

/-! ## A189259.P5542721905214158214

`A189264(A052905(n+1)+2)`
-/

namespace A189259.P5542721905214158214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A052905 (n + 1) + 2).toNat

end

end A189259.P5542721905214158214

/-!
# A189260: Number of nX5 binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189260, there is no canonical definition to state claims against.
-/

/-! ## A189260.P11576880483102786194

`A189264(A046691(n+3))`
-/

namespace A189260.P11576880483102786194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A046691 (n + 3)).toNat

end

end A189260.P11576880483102786194

/-! ## A189260.P853238362410827798

`A189264(A056115(n)+11)`
-/

namespace A189260.P853238362410827798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A056115 n + 11).toNat

end

end A189260.P853238362410827798

/-! ## A189260.P6619504957571234415

`A189264(eq[4, A193592(n)])`
-/

namespace A189260.P6619504957571234415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189260.P6619504957571234415

/-! ## A189260.P15972621928054523639

`A189264(Δ[A023545(n+1)])`
-/

namespace A189260.P15972621928054523639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (f1 (n + 1) - f1 n).toNat

end

end A189260.P15972621928054523639

/-! ## A189260.P4781108945992898818

`A189264(A246172(n+1)+10)`
-/

namespace A189260.P4781108945992898818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A246172 (n + 1) + 10).toNat

end

end A189260.P4781108945992898818

/-!
# A189261: Number of nX6 binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189261, there is no canonical definition to state claims against.
-/

/-! ## A189261.P10746891922466694756

`A189264(A052905(n+3))`
-/

namespace A189261.P10746891922466694756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A052905 (n + 3)).toNat

end

end A189261.P10746891922466694756

/-! ## A189261.P776002647407102976

`A189264(eq[3, A219347(n)])`
-/

namespace A189261.P776002647407102976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189261.P776002647407102976

/-! ## A189261.P9118581566732547523

`A189264(eq[5, A193592(n)])`
-/

namespace A189261.P9118581566732547523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189261.P9118581566732547523

/-! ## A189261.P10730479217296910256

`A189264(eq[8, A258709(n)])`
-/

namespace A189261.P10730479217296910256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189261.P10730479217296910256

/-! ## A189261.P5797326172982017901

`A189264(Δ[A023545(n+2)]-1)`
-/

namespace A189261.P5797326172982017901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (f1 (n + 1) - f1 n - 1).toNat

end

end A189261.P5797326172982017901

/-!
# A189262: Number of nX7 binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189262, there is no canonical definition to state claims against.
-/

/-! ## A189262.P8296672721537917722

`A189264(A055999(n+4))`
-/

namespace A189262.P8296672721537917722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A055999 (n + 4)).toNat

end

end A189262.P8296672721537917722

/-! ## A189262.P14693739151685099018

`A189264(eq[4, A219347(n)])`
-/

namespace A189262.P14693739151685099018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189262.P14693739151685099018

/-! ## A189262.P17507934306767983880

`A189264(eq[6, A193592(n)])`
-/

namespace A189262.P17507934306767983880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189262.P17507934306767983880

/-! ## A189262.P12737991830622930405

`A189264(eq[32, A057728(n+1)])`
-/

namespace A189262.P12737991830622930405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189262.P12737991830622930405

/-! ## A189262.P4393359729875021058

`A189264(A166136(n+4)+A005408(n))`
-/

namespace A189262.P4393359729875021058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A166136 (n + 4) + A005408 n).toNat

end

end A189262.P4393359729875021058

/-!
# A189263: Number of nX8 binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189263, there is no canonical definition to state claims against.
-/

/-! ## A189263.P4677020294769552093

`A189264(eq[5, A219347(n)])`
-/

namespace A189263.P4677020294769552093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189263.P4677020294769552093

/-! ## A189263.P2357980885345830058

`A189264(eq[7, A193592(n)])`
-/

namespace A189263.P2357980885345830058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189263.P2357980885345830058

/-! ## A189263.P1427681903580571603

`A189264(A052905(n+5)-2)`
-/

namespace A189263.P1427681903580571603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A052905 (n + 5) - 2).toNat

end

end A189263.P1427681903580571603

/-! ## A189263.P12466562838847474486

`A189264(eq[12, A185782(n+1)])`
-/

namespace A189263.P12466562838847474486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189263.P12466562838847474486

/-! ## A189263.P9076538403137696872

`A189264(eq[64, A057728(n+1)])`
-/

namespace A189263.P9076538403137696872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189263.P9076538403137696872

/-!
# A189264: T(n,k)=Number of nXk binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189264, there is no canonical definition to state claims against.
-/

/-! ## A189264.P14633990311266582131

`A188992(n+1)-A332442(A299135(n+1))`
-/

namespace A189264.P14633990311266582131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (n + 1) - A332442 (A299135 (n + 1)).toNat

end

end A189264.P14633990311266582131

/-!
# A189265: Number of 3Xn binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189265, there is no canonical definition to state claims against.
-/

/-! ## A189265.P4048938991666190445

`A189264(∑[n+2]+4)`
-/

namespace A189265.P4048938991666190445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189265.P4048938991666190445

/-! ## A189265.P1193510283570128506

`A277165(n)+A189264(A167614(n+1))`
-/

namespace A189265.P1193510283570128506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 n + A189264 (A167614 (n + 1)).toNat

end

end A189265.P1193510283570128506

/-! ## A189265.P5918471358096934418

`A015720(n)*A189264(A167614(n+1))`
-/

namespace A189265.P5918471358096934418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015720 n * A189264 (A167614 (n + 1)).toNat

end

end A189265.P5918471358096934418

/-! ## A189265.P3639467694537581913

`A189264(A167614(n+1))*A280865(n)`
-/

namespace A189265.P3639467694537581913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A167614 (n + 1)).toNat * A280865 n

end

end A189265.P3639467694537581913

/-! ## A189265.P7356931266348072414

`lcm(A033999(n), A189264(A167614(n+1)))`
-/

namespace A189265.P7356931266348072414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A189264 (A167614 (n + 1)).toNat)

end

end A189265.P7356931266348072414

/-!
# A189266: Number of 4Xn binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189266, there is no canonical definition to state claims against.
-/

/-! ## A189266.P15012096063486822466

`A189264(A141214(n)+7)`
-/

namespace A189266.P15012096063486822466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A141214 n + 7).toNat

end

end A189266.P15012096063486822466

/-! ## A189266.P5453671025415661248

`A189264(A052905(n)+9)`
-/

namespace A189266.P5453671025415661248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A052905 n + 9).toNat

end

end A189266.P5453671025415661248

/-! ## A189266.P2409086220438561377

`A189264(A055999(n)+10)`
-/

namespace A189266.P2409086220438561377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A055999 n + 10).toNat

end

end A189266.P2409086220438561377

/-! ## A189266.P5382847386785629016

`record[A189264(A167499(n)-1)]`
-/

namespace A189266.P5382847386785629016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189266.P5382847386785629016

/-! ## A189266.P6177317337639697091

`A189264(A167614(n+2)+1)`
-/

namespace A189266.P6177317337639697091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A167614 (n + 2) + 1).toNat

end

end A189266.P6177317337639697091

/-!
# A189267: Number of 5Xn binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189267, there is no canonical definition to state claims against.
-/

/-! ## A189267.P15084467279993984664

`A189264(A167499(n+3))`
-/

namespace A189267.P15084467279993984664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A167499 (n + 3)).toNat

end

end A189267.P15084467279993984664

/-! ## A189267.P8440505499159836593

`A189264(A155212(n)+13)`
-/

namespace A189267.P8440505499159836593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A155212 n + 13).toNat

end

end A189267.P8440505499159836593

/-! ## A189267.P388278638709152653

`A189264(A056000(n)+15)`
-/

namespace A189267.P388278638709152653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A056000 n + 15).toNat

end

end A189267.P388278638709152653

/-! ## A189267.P4797924102058349237

`A189264(eq[6, A131818(n+1)])`
-/

namespace A189267.P4797924102058349237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189267.P4797924102058349237

/-! ## A189267.P6172893616301377398

`A189264(eq[7, A099375(n)]+9)`
-/

namespace A189267.P6172893616301377398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 9)

end

end A189267.P6172893616301377398

/-!
# A189268: Number of 6 X n binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189268, there is no canonical definition to state claims against.
-/

/-! ## A189268.P8728615255780767255

`A189264(A166136(n+4))`
-/

namespace A189268.P8728615255780767255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A166136 (n + 4)).toNat

end

end A189268.P8728615255780767255

/-! ## A189268.P9671956724290546001

`A189264(A056115(n)+21)`
-/

namespace A189268.P9671956724290546001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A056115 n + 21).toNat

end

end A189268.P9671956724290546001

/-! ## A189268.P239720351405017115

`A189264(A046691(n+3)+10)`
-/

namespace A189268.P239720351405017115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A046691 (n + 3) + 10).toNat

end

end A189268.P239720351405017115

/-! ## A189268.P6762384112289791031

`A189264(A246172(n+1)+20)`
-/

namespace A189268.P6762384112289791031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A246172 (n + 1) + 20).toNat

end

end A189268.P6762384112289791031

/-! ## A189268.P10938589461064493347

`A189264(eq[5, A002262(n)]+1)`
-/

namespace A189268.P10938589461064493347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A189268.P10938589461064493347

/-!
# A189269: Number of 7Xn binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189269, there is no canonical definition to state claims against.
-/

/-! ## A189269.P7973343152901193038

`A189264(A056119(n)+28)`
-/

namespace A189269.P7973343152901193038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A056119 n + 28).toNat

end

end A189269.P7973343152901193038

/-! ## A189269.P8988226739467882135

`A189264(eq[11, A066657(n)])`
-/

namespace A189269.P8988226739467882135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189269.P8988226739467882135

/-! ## A189269.P8304023517123927195

`A189264(A000124(n+6)+6)`
-/

namespace A189269.P8304023517123927195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A000124 (n + 6) + 6).toNat

end

end A189269.P8304023517123927195

/-! ## A189269.P15387879266626848280

`A189264(A000217(n+6)+7)`
-/

namespace A189269.P15387879266626848280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A000217 (n + 6) + 7).toNat

end

end A189269.P15387879266626848280

/-! ## A189269.P16630696066772778869

`A189264(eq[8, A131818(n+1)])`
-/

namespace A189269.P16630696066772778869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189269.P16630696066772778869

/-!
# A189270: Number of 8Xn binary arrays without the pattern 0 0 1 diagonally, antidiagonally or horizontally.

The programs for A189270, there is no canonical definition to state claims against.
-/

/-! ## A189270.P17063858082649353316

`A189264(eq[13, A066657(n)])`
-/

namespace A189270.P17063858082649353316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189270.P17063858082649353316

/-! ## A189270.P6501648060539719962

`A189264(A167614(n+6)+5)`
-/

namespace A189270.P6501648060539719962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A167614 (n + 6) + 5).toNat

end

end A189270.P6501648060539719962

/-! ## A189270.P6925317038168826047

`A189264(eq[9, A131818(n+1)])`
-/

namespace A189270.P6925317038168826047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189270.P6925317038168826047

/-! ## A189270.P8389020488858973731

`A189264(A133263(n+8)-(n+2))`
-/

namespace A189270.P8389020488858973731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A133263 (n + 8) - (n + 2 : ℤ)).toNat

end

end A189270.P8389020488858973731

/-!
# A189273: Number of n X n array permutations with each element not moved or moved diagonally or antidiagonally by one.

The programs for A189273, there is no canonical definition to state claims against.
-/

/-! ## A189273.P3449020852328047909

`A189280(∑[4*n]+1)`
-/

namespace A189273.P3449020852328047909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189273.P3449020852328047909

/-! ## A189273.P13744891589048493438

`record[gcd(A049581(n), A189280(n+1))]`
-/

namespace A189273.P13744891589048493438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A189280 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189273.P13744891589048493438

/-! ## A189273.P17288552325141048437

`record[A189280(n+1)/A205545(n+1)]`
-/

namespace A189273.P17288552325141048437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189280 (n + 1) : ℚ) / (A205545 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189273.P17288552325141048437

/-! ## A189273.P5372944652958001626

`A189280(A001844(n))+A178798(n)`
-/

namespace A189273.P5372944652958001626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A001844 n).toNat + A178798 n

end

end A189273.P5372944652958001626

/-! ## A189273.P6068947210673419208

`A326630(n)+A189280(A001844(n))`
-/

namespace A189273.P6068947210673419208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326630 n + A189280 (A001844 n).toNat

end

end A189273.P6068947210673419208

/-!
# A189274: Number of nX3 array permutations with each element not moved or moved diagonally or antidiagonally by one.

The programs for A189274, the canonical program `A189274.P13427021945377934568` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189274 has offset 1).

The definition of A189274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189274.P13742847344536970003

`ogf((1+4x)/(1-5x))`
-/

namespace A189274.P13742847344536970003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -5] n

end

end A189274.P13742847344536970003

namespace A189274

/-- `ogf((1+4x)/(1-5x))` -/
def P13742847344536970003.Spec : Prop :=
  ∀ n, P13742847344536970003.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P13427021945377934568

`5*a(n-1)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189274

/-- `5*a(n-1)` -/
def P13427021945377934568.Spec : Prop :=
  ∀ n, (P13427021945377934568.a n : ℤ) = A189274 (n + 1)

theorem P13427021945377934568.correct : P13427021945377934568.Spec := by
  intro n
  simp only [A189274, Nat.add_sub_cancel]

end A189274

/-! ## A189274.P4858586437981964074

`floor(9*5^(n-1))`
-/

namespace A189274.P4858586437981964074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A189274.P4858586437981964074

namespace A189274

/-- `floor(9*5^(n-1))` -/
def P4858586437981964074.Spec : Prop :=
  ∀ n, P4858586437981964074.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P5902916326078578181

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=9, a(2)=5`
-/

namespace A189274.P5902916326078578181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A189274.P5902916326078578181

namespace A189274

/-- `abs(∏[-a(n-1)])` -/
def P5902916326078578181.Spec : Prop :=
  ∀ n, P5902916326078578181.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P6122207137963489333

`a(n-1)/(1-4/5)` with `a(0)=1, a(1)=9`
-/

namespace A189274.P6122207137963489333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A189274.P6122207137963489333

namespace A189274

/-- `a(n-1)/(1-4/5)` -/
def P6122207137963489333.Spec : Prop :=
  ∀ n, P6122207137963489333.a n = (A189274 (n + 1) : ℚ)

end A189274

/-! ## A189274.P1495256532653862310

`lcm(5^(n-1), a(n-1))` with `a(0)=1, a(1)=9`
-/

namespace A189274.P1495256532653862310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A189274.P1495256532653862310

namespace A189274

/-- `lcm(5^(n-1), a(n-1))` -/
def P1495256532653862310.Spec : Prop :=
  ∀ n, (P1495256532653862310.a n : ℤ) = A189274 (n + 1)

end A189274

/-! ## A189274.P16210166372802159415

`Δ[A005053(n)]-A005053(n)`
-/

namespace A189274.P16210166372802159415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005053 n

end

end A189274.P16210166372802159415

namespace A189274

/-- `Δ[A005053(n)]-A005053(n)` -/
def P16210166372802159415.Spec : Prop :=
  ∀ n, P16210166372802159415.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P9973876214666114802

`A026581(n)%4*A005053(n)`
-/

namespace A189274.P9973876214666114802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026581 n) 4 * A005053 n

end

end A189274.P9973876214666114802

namespace A189274

/-- `A026581(n)%4*A005053(n)` -/
def P9973876214666114802.Spec : Prop :=
  ∀ n, P9973876214666114802.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P14957991974505885925

`A099902(n)%4*A005053(n)`
-/

namespace A189274.P14957991974505885925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099902 n) 4 * A005053 n

end

end A189274.P14957991974505885925

namespace A189274

/-- `A099902(n)%4*A005053(n)` -/
def P14957991974505885925.Spec : Prop :=
  ∀ n, P14957991974505885925.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P1256426840784358804

`A005053(n+1)-2*A005053(n)`
-/

namespace A189274.P1256426840784358804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005053 (n + 1) - 2 * A005053 n

end

end A189274.P1256426840784358804

namespace A189274

/-- `A005053(n+1)-2*A005053(n)` -/
def P1256426840784358804.Spec : Prop :=
  ∀ n, P1256426840784358804.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P16862289432850038364

`A157532(n+1)/2*A003948(n)`
-/

namespace A189274.P16862289432850038364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157532 (n + 1) : ℚ) / 2 * (A003948 n : ℚ)

end

end A189274.P16862289432850038364

namespace A189274

/-- `A157532(n+1)/2*A003948(n)` -/
def P16862289432850038364.Spec : Prop :=
  ∀ n, P16862289432850038364.a n = (A189274 (n + 1) : ℚ)

end A189274

/-! ## A189274.P14511165442420767668

`record[dr(A118510(n+1))*A074872(n+1)]`
-/

namespace A189274.P14511165442420767668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A118510 (n + 1)) : ℤ) * A074872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189274.P14511165442420767668

namespace A189274

/-- `record[dr(A118510(n+1))*A074872(n+1)]` -/
def P14511165442420767668.Spec : Prop :=
  ∀ n, P14511165442420767668.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P14664495792226541222

`A003948(n)/A005054(n)*A003948(n)`
-/

namespace A189274.P14664495792226541222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003948 n : ℚ) / (A005054 n : ℚ) * (A003948 n : ℚ)

end

end A189274.P14664495792226541222

namespace A189274

/-- `A003948(n)/A005054(n)*A003948(n)` -/
def P14664495792226541222.Spec : Prop :=
  ∀ n, P14664495792226541222.a n = (A189274 (n + 1) : ℚ)

end A189274

/-! ## A189274.P7591646907139270843

`A005053(n/A028310(n))*A005053(n)`
-/

namespace A189274.P7591646907139270843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005053 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat * A005053 n

end

end A189274.P7591646907139270843

namespace A189274

/-- `A005053(n/A028310(n))*A005053(n)` -/
def P7591646907139270843.Spec : Prop :=
  ∀ n, P7591646907139270843.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P16448053797482902373

`A000351(n)+A005054(n)%A000351(n)`
-/

namespace A189274.P16448053797482902373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + Int.tmod (A005054 n) (A000351 n)

end

end A189274.P16448053797482902373

namespace A189274

/-- `A000351(n)+A005054(n)%A000351(n)` -/
def P16448053797482902373.Spec : Prop :=
  ∀ n, P16448053797482902373.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P6663854132839464147

`A057651(n)+A199213(n)%A003948(n)`
-/

namespace A189274.P6663854132839464147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + Int.tmod (A199213 n) (A003948 n)

end

end A189274.P6663854132839464147

namespace A189274

/-- `A057651(n)+A199213(n)%A003948(n)` -/
def P6663854132839464147.Spec : Prop :=
  ∀ n, P6663854132839464147.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P16673703651671201478

`A005054(n)+A198763(n)%A057651(n)`
-/

namespace A189274.P16673703651671201478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n + Int.tmod (A198763 n) (A057651 n)

end

end A189274.P16673703651671201478

namespace A189274

/-- `A005054(n)+A198763(n)%A057651(n)` -/
def P16673703651671201478.Spec : Prop :=
  ∀ n, P16673703651671201478.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P10742058595936315990

`A005054(n)+A198762(n)%A081655(n)`
-/

namespace A189274.P10742058595936315990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n + Int.tmod (A198762 n) (A081655 n)

end

end A189274.P10742058595936315990

namespace A189274

/-- `A005054(n)+A198762(n)%A081655(n)` -/
def P10742058595936315990.Spec : Prop :=
  ∀ n, P10742058595936315990.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P9423528926050016889

`A083065(n)+A198769(n)%A003948(n)`
-/

namespace A189274.P9423528926050016889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083065 n + Int.tmod (A198769 n) (A003948 n)

end

end A189274.P9423528926050016889

namespace A189274

/-- `A083065(n)+A198769(n)%A003948(n)` -/
def P9423528926050016889.Spec : Prop :=
  ∀ n, P9423528926050016889.a n = A189274 (n + 1)

end A189274

/-! ## A189274.P10007393829231118691

`A081655(n)-A024049(n)%A005054(n)`
-/

namespace A189274.P10007393829231118691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081655 n - Int.tmod (A024049 n) (A005054 n)

end

end A189274.P10007393829231118691

namespace A189274

/-- `A081655(n)-A024049(n)%A005054(n)` -/
def P10007393829231118691.Spec : Prop :=
  ∀ n, P10007393829231118691.a n = A189274 (n + 1)

end A189274

/-!
# A189275: Number of nX4 array permutations with each element not moved or moved diagonally or antidiagonally by one.

The programs for A189275, there is no canonical definition to state claims against.
-/

/-! ## A189275.P12753967441094047467

`A189280(A374004(n+1))`
-/

namespace A189275.P12753967441094047467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A374004 (n + 1)).toNat

end

end A189275.P12753967441094047467

/-! ## A189275.P2134079301881235766

`A189280(A141214(n)+7)`
-/

namespace A189275.P2134079301881235766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A141214 n + 7).toNat

end

end A189275.P2134079301881235766

/-! ## A189275.P10367584398040728718

`A189280(A052905(n)+9)`
-/

namespace A189275.P10367584398040728718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A052905 n + 9).toNat

end

end A189275.P10367584398040728718

/-! ## A189275.P3708273958194795752

`A189280(A167614(n+2)+1)`
-/

namespace A189275.P3708273958194795752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A167614 (n + 2) + 1).toNat

end

end A189275.P3708273958194795752

/-! ## A189275.P6159162489125737724

`A189280(A000217(2*(n+1)+1-n)+4)`
-/

namespace A189275.P6159162489125737724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A000217 (2 * (n + 1) + 1 - n) + 4).toNat

end

end A189275.P6159162489125737724

/-!
# A189276: Number of nX5 array permutations with each element not moved or moved diagonally or antidiagonally by one.

The programs for A189276, there is no canonical definition to state claims against.
-/

/-! ## A189276.P8725026968067159474

`A189280(A374005(n+1))`
-/

namespace A189276.P8725026968067159474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A374005 (n + 1)).toNat

end

end A189276.P8725026968067159474

/-! ## A189276.P5884320024617238644

`A189280(A155212(n)+13)`
-/

namespace A189276.P5884320024617238644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A155212 n + 13).toNat

end

end A189276.P5884320024617238644

/-! ## A189276.P6373973697447835949

`A189280(A056000(n)+15)`
-/

namespace A189276.P6373973697447835949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A056000 n + 15).toNat

end

end A189276.P6373973697447835949

/-! ## A189276.P7056995388254862112

`A189280(eq[7, A066657(n)])`
-/

namespace A189276.P7056995388254862112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189276.P7056995388254862112

/-! ## A189276.P1818355735570224210

`A189280(eq[6, A131818(n+1)])`
-/

namespace A189276.P1818355735570224210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189276.P1818355735570224210

/-!
# A189277: Number of nX6 array permutations with each element not moved or moved diagonally or antidiagonally by one.

The programs for A189277, there is no canonical definition to state claims against.
-/

/-! ## A189277.P10096731739985062458

`A189280(A374007(n+1))`
-/

namespace A189277.P10096731739985062458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A374007 (n + 1)).toNat

end

end A189277.P10096731739985062458

/-! ## A189277.P5550464032114079960

`A189280(eq[7, A131818(n+1)])`
-/

namespace A189277.P5550464032114079960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189277.P5550464032114079960

/-! ## A189277.P4180655375420360061

`A189280(eq[3, A219347(n)])`
-/

namespace A189277.P4180655375420360061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189277.P4180655375420360061

/-! ## A189277.P6033659465463440352

`A189280(eq[5, A193592(n)])`
-/

namespace A189277.P6033659465463440352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189277.P6033659465463440352

/-! ## A189277.P7852886147717973886

`A189280(eq[16, A057728(n+1)])`
-/

namespace A189277.P7852886147717973886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189277.P7852886147717973886

/-!
# A189278: Number of nX7 array permutations with each element not moved or moved diagonally or antidiagonally by one.

The programs for A189278, there is no canonical definition to state claims against.
-/

/-! ## A189278.P10606033626558771408

`A189280(A374008(n+1))`
-/

namespace A189278.P10606033626558771408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A374008 (n + 1)).toNat

end

end A189278.P10606033626558771408

/-! ## A189278.P7980849876851076972

`A189280(eq[11, A066657(n)])`
-/

namespace A189278.P7980849876851076972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189278.P7980849876851076972

/-! ## A189278.P10286443391253896057

`A189280(A000096(n+5)+8)`
-/

namespace A189278.P10286443391253896057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A000096 (n + 5) + 8).toNat

end

end A189278.P10286443391253896057

/-! ## A189278.P3108253827954134454

`A189280(eq[8, A131818(n+1)])`
-/

namespace A189278.P3108253827954134454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189278.P3108253827954134454

/-! ## A189278.P5290190255726178240

`A189280(eq[4, A219347(n)])`
-/

namespace A189278.P5290190255726178240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189278.P5290190255726178240

/-!
# A189279: Number of n X 8 array permutations with each element not moved or moved diagonally or antidiagonally by one.

The programs for A189279, there is no canonical definition to state claims against.
-/

/-! ## A189279.P7758962887267429602

`A189280(A374009(n+1))`
-/

namespace A189279.P7758962887267429602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A374009 (n + 1)).toNat

end

end A189279.P7758962887267429602

/-! ## A189279.P9320881625868601220

`A189280(eq[13, A066657(n)])`
-/

namespace A189279.P9320881625868601220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189279.P9320881625868601220

/-! ## A189279.P13313792771359341246

`A189280(eq[9, A131818(n+1)])`
-/

namespace A189279.P13313792771359341246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189279.P13313792771359341246

/-! ## A189279.P8584826753317836105

`A189280(A051936(n+9)-2*n)`
-/

namespace A189279.P8584826753317836105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (A051936 (n + 9) - (2 * n : ℤ)).toNat

end

end A189279.P8584826753317836105

/-! ## A189279.P10431817473745468271

`A189280(eq[5, A219347(n)])`
-/

namespace A189279.P10431817473745468271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189279.P10431817473745468271

/-!
# A189280: T(n,k) = number of n X k array permutations with each element not moved or moved diagonally or antidiagonally by one.

The programs for A189280, there is no canonical definition to state claims against.
-/

/-! ## A189280.P14462114142592151701

`A122350(A128545(n)²)`
-/

namespace A189280.P14462114142592151701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (A128545 n ^ 2).toNat

end

end A189280.P14462114142592151701

/-! ## A189280.P10749434601469842208

`A127380(A128545(n)²)`
-/

namespace A189280.P10749434601469842208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127380 (A128545 n ^ 2).toNat

end

end A189280.P10749434601469842208

/-! ## A189280.P10903635087461712376

`A196218(A086645(n))%A157726(n)`
-/

namespace A189280.P10903635087461712376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196218 (A086645 n).toNat) (A157726 n)

end

end A189280.P10903635087461712376

/-! ## A189280.P4094525797754243296

`A220681(n+1)+A124762(A220681(n+1))`
-/

namespace A189280.P4094525797754243296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (n + 1) + A124762 (A220681 (n + 1)).toNat

end

end A189280.P4094525797754243296

/-!
# A189281: Number of permutations p of 1,2,...,n satisfying p(i+2) - p(i) <> 2 for all 1 <= i <= n-2.

The programs for A189281, there is no canonical definition to state claims against.
-/

/-! ## A189281.P18428485146117483425

`xor(floor(n-atan(n)), A247908(n!))`
-/

namespace A189281.P18428485146117483425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ (A247908 (Nat.factorial n))

end

end A189281.P18428485146117483425

/-! ## A189281.P8834832073500235424

`A276798(A061981(n)+A003713(n))`
-/

namespace A189281.P8834832073500235424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A061981 n + A003713 n).toNat

end

end A189281.P8834832073500235424

/-! ## A189281.P655872014896179828

`A328439(n)+A077267(A364478(n))`
-/

namespace A189281.P655872014896179828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328439 n + A077267 (A364478 n).toNat

end

end A189281.P655872014896179828

/-!
# A189282: Number of permutations p of 1,2,...,n satisfying p(i+3)-p(i)<>3 for all 1<=i<=n-3.

The programs for A189282, there is no canonical definition to state claims against.
-/

/-! ## A189282.P11910635743930662578

`∑[∑[A171181(n!)]]+1`
-/

namespace A189282.P11910635743930662578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A189282.P11910635743930662578

/-! ## A189282.P1632867915056976255

`∑[A110657(∑[2*n!]-1)]`
-/

namespace A189282.P1632867915056976255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189282.P1632867915056976255

/-! ## A189282.P9062531623789984148

`A003602(∑[∑[2*n!]])-n`
-/

namespace A189282.P9062531623789984148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A189282.P9062531623789984148

/-!
# A189283: Number of permutations p of 1,2,...,n satisfying p(i+4)-p(i)<>4 for all 1<=i<=n-4.

The programs for A189283, there is no canonical definition to state claims against.
-/

/-! ## A189283.P17425435412402286495

`A189846(A008479(3^n))`
-/

namespace A189283.P17425435412402286495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189846 (A008479 (3 ^ n)).toNat

end

end A189283.P17425435412402286495

/-! ## A189283.P6678943819670916380

`A189846(n^A175078(n+1))`
-/

namespace A189283.P6678943819670916380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189846 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A175078 (n + 1) : ℤ))).toNat

end

end A189283.P6678943819670916380

/-! ## A189283.P7549706237698537971

`A189846(n^A276825(n+1))`
-/

namespace A189283.P7549706237698537971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189846 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A276825 (n + 1) : ℤ))).toNat

end

end A189283.P7549706237698537971

/-! ## A189283.P14928639460560484029

`A189846(C(n, A276825(n+1)))`
-/

namespace A189283.P14928639460560484029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189846 (Nat.choose n (A276825 (n + 1)).toNat)

end

end A189283.P14928639460560484029

/-! ## A189283.P12894987457155271107

`A189846(A249733(n)^n+n)`
-/

namespace A189283.P12894987457155271107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189846 (A249733 n ^ n + (n : ℤ)).toNat

end

end A189283.P12894987457155271107

/-!
# A189284: Number of permutations p of 1,2,...,n satisfying p(i+5)-p(i)<>5 for all 1<=i<=n-5.

The programs for A189284, there is no canonical definition to state claims against.
-/

/-! ## A189284.P2028980820461769808

`A189847(A151937(n)+n)`
-/

namespace A189284.P2028980820461769808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189847 (A151937 n + (n : ℤ)).toNat

end

end A189284.P2028980820461769808

/-! ## A189284.P7868849547085742948

`A189847(n^A055640(n))`
-/

namespace A189284.P7868849547085742948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189847 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A189284.P7868849547085742948

/-! ## A189284.P8699955539544749741

`A189847(n^A214949(n))`
-/

namespace A189284.P8699955539544749741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189847 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A214949 n : ℤ))).toNat

end

end A189284.P8699955539544749741

/-! ## A189284.P7123202470655371108

`A189847(C(n, A055640(n)))`
-/

namespace A189284.P7123202470655371108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189847 (Nat.choose n (A055640 n).toNat)

end

end A189284.P7123202470655371108

/-! ## A189284.P273997787667423710

`A189847(C(n, A214949(n)))`
-/

namespace A189284.P273997787667423710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189847 (Nat.choose n (A214949 n).toNat)

end

end A189284.P273997787667423710

/-!
# A189285: Number of permutations p of [n] satisfying p(i+6)-p(i)<>6 for all 1<=i<=n-6.

The programs for A189285, there is no canonical definition to state claims against.
-/

/-! ## A189285.P5874694572880131422

`A189848(round(sqrt(n²+1))^A046581(n+1))`
-/

namespace A189285.P5874694572880131422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189848 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ) ^ (A046581 (n + 1) : ℤ))).toNat

end

end A189285.P5874694572880131422

/-! ## A189285.P6258641054752506992

`A189848(A028310(n*A152830(n)))`
-/

namespace A189285.P6258641054752506992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189848 (A028310 ((n : ℤ) * A152830 n).toNat).toNat

end

end A189285.P6258641054752506992

/-! ## A189285.P3652457694314126317

`A189848(A028310(n)^A152830(n))`
-/

namespace A189285.P3652457694314126317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189848 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A152830 n : ℤ))).toNat

end

end A189285.P3652457694314126317

/-! ## A189285.P8073644983482412605

`A189848(A028310(lcm(n, A152828(n))))`
-/

namespace A189285.P8073644983482412605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189848 (A028310 (Int.lcm (n : ℤ) (A152828 n))).toNat

end

end A189285.P8073644983482412605

/-! ## A189285.P11282712430268227096

`A189848(lcm(A028310(n), A152830(n)))`
-/

namespace A189285.P11282712430268227096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189848 (Int.lcm (A028310 n) (A152830 n))

end

end A189285.P11282712430268227096

/-!
# A189287: Positions of 0 in A189215; complement of A189288.

The programs for A189287, there is no canonical definition to state claims against.
-/

/-! ## A189287.P2207110225695319881

`eq[0, A189215(n+1)]+1`
-/

namespace A189287.P2207110225695319881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189287.P2207110225695319881

/-! ## A189287.P13989002101848483107

`eq[0, A189215(A028310(n))]`
-/

namespace A189287.P13989002101848483107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189287.P13989002101848483107

/-! ## A189287.P3468464380052709697

`eq[0, A189215(A000007(n)+n)]`
-/

namespace A189287.P3468464380052709697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189287.P3468464380052709697

/-! ## A189287.P10144166249568817446

`eq[0, A189215(xor(n, A000007(n)))]`
-/

namespace A189287.P10144166249568817446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189287.P10144166249568817446

/-! ## A189287.P11736560658366792193

`eq[A117943(n+1), A189222(n+1)]+1`
-/

namespace A189287.P11736560658366792193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189287.P11736560658366792193

/-! ## A189287.P8105559654420619363

`eq[0, A189215(A065033(2*n))]`
-/

namespace A189287.P8105559654420619363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189287.P8105559654420619363

/-!
# A189288: Positions of 1 in A189215; complement of A189287.

The programs for A189288, there is no canonical definition to state claims against.
-/

/-! ## A189288.P14654089262342499268

`filter[n+1, A189215(#)]`
-/

namespace A189288.P14654089262342499268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189215 (f1 j) = 1) n)

end

end A189288.P14654089262342499268

/-! ## A189288.P17432639345027831880

`eq[1, A189215(n+1)]+1`
-/

namespace A189288.P17432639345027831880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189288.P17432639345027831880

/-! ## A189288.P6331100560876945966

`eq[1, A189215(A000038(n)+n)]`
-/

namespace A189288.P6331100560876945966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189288.P6331100560876945966

/-! ## A189288.P13225883891518286927

`eq[1, A189215(or(n, A000038(n)))]`
-/

namespace A189288.P13225883891518286927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189288.P13225883891518286927

/-! ## A189288.P15610018041019285898

`record[(n+1)*A189215(A000027(n+1))]`
-/

namespace A189288.P15610018041019285898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189215 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189288.P15610018041019285898

/-! ## A189288.P2753560005686343903

`record[(1-A001489(n))*A189215(n+1)]`
-/

namespace A189288.P2753560005686343903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n) * A189215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189288.P2753560005686343903

/-! ## A189288.P11964835055018504463

`record[(A005408(n)-n)*A189215(n+1)]`
-/

namespace A189288.P11964835055018504463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ)) * A189215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189288.P11964835055018504463

/-! ## A189288.P17162797431304511018

`record[A000027(n+1)/(2-A189215(n+1))]`
-/

namespace A189288.P17162797431304511018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (2 - A189215 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189288.P17162797431304511018

/-! ## A189288.P14209492927697267701

`record[A052938(n)*A189215(A052938(n))]`
-/

namespace A189288.P14209492927697267701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n * A189215 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189288.P14209492927697267701

/-! ## A189288.P4952024709396937571

`record[A008619(2*n)*A189215(n+1)]`
-/

namespace A189288.P4952024709396937571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189288.P4952024709396937571

/-! ## A189288.P5570310482660675365

`record[A065033(n)*A189215(A065033(n))]`
-/

namespace A189288.P5570310482660675365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A189215 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189288.P5570310482660675365

/-! ## A189288.P11901871959414320001

`record[A008611(n)*A189215(A008620(n))]`
-/

namespace A189288.P11901871959414320001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A189215 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189288.P11901871959414320001

/-! ## A189288.P11122304831676141410

`record[A126759(n)*A189215(A126759(n))]`
-/

namespace A189288.P11122304831676141410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n * A189215 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189288.P11122304831676141410

/-! ## A189288.P17684021386450178614

`record[A008621(n)*A189215(A008621(n))]`
-/

namespace A189288.P17684021386450178614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A189215 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189288.P17684021386450178614

/-!
# A189289: Zero-one sequence based on the sequence (4n): a(A008586(k))=a(k); a(A042968(k))=1-a(k), a(1)=0, a(2)=0, a(3)=0.

The programs for A189289, there is no canonical definition to state claims against.
-/

/-! ## A189289.P12667353593912028607

`char[A189291(n+1)-1]`
-/

namespace A189289.P12667353593912028607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189291 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189289.P12667353593912028607

/-! ## A189289.P6817621920192955275

`char[comp[A189290(n+1)-1]]`
-/

namespace A189289.P6817621920192955275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189290 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189289.P6817621920192955275

/-! ## A189289.P9276121452904871723

`A189292(n+1)+A189295(n+1)-A189298(n+1)`
-/

namespace A189289.P9276121452904871723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189292 (n + 1) + (A189295 (n + 1) - A189298 (n + 1))

end

end A189289.P9276121452904871723

/-! ## A189289.P10751257286609935450

`A010054(char[A189290(n+1)-1]*A046092(n))`
-/

namespace A189289.P10751257286609935450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189290 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A046092 n).toNat

end

end A189289.P10751257286609935450

/-! ## A189289.P11959479142043210210

`A095190(A215810(n+1)*A215810(n+5))`
-/

namespace A189289.P11959479142043210210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (A215810 (n + 1) * A215810 (n + 5)).toNat

end

end A189289.P11959479142043210210

/-!
# A189290: Positions of 0 in A189289, complement of A189291.

The programs for A189290, there is no canonical definition to state claims against.
-/

/-! ## A189290.P622993487543322190

`eq[0, A189289(n+1)]+1`
-/

namespace A189290.P622993487543322190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189290.P622993487543322190

/-! ## A189290.P10215747578834998232

`eq[0, A189289(A028310(n))]`
-/

namespace A189290.P10215747578834998232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189289 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189290.P10215747578834998232

/-! ## A189290.P4497677204490525701

`A114637(eq[0, A189289(n+1)])`
-/

namespace A189290.P4497677204490525701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189290.P4497677204490525701

/-! ## A189290.P5672979738897704163

`A153152(eq[0, A189289(n+1)])`
-/

namespace A189290.P5672979738897704163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189290.P5672979738897704163

/-! ## A189290.P710682619696177728

`eq[char[A189291(n+1)], A000007(n)]`
-/

namespace A189290.P710682619696177728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189291 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A189290.P710682619696177728

/-! ## A189290.P10598642276290070785

`eq[char[A189291(n+1)], A000038(n)]`
-/

namespace A189290.P10598642276290070785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189291 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A189290.P10598642276290070785

/-! ## A189290.P1735655508219605513

`eq[0, A189289(A233583(n+1))]`
-/

namespace A189290.P1735655508219605513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189289 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189290.P1735655508219605513

/-!
# A189291: Positions of 1 in A189289; complement of A189290.

The programs for A189291, there is no canonical definition to state claims against.
-/

/-! ## A189291.P197692983152688365

`comp[A189290(n+1)-1]+1`
-/

namespace A189291.P197692983152688365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189290 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189291.P197692983152688365

/-! ## A189291.P6606377253731591722

`filter[n+1, A189289(#)]`
-/

namespace A189291.P6606377253731591722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189289 (f1 j) = 1) n)

end

end A189291.P6606377253731591722

/-! ## A189291.P5308326029436050122

`lt[0, A189289(n+1)]+1`
-/

namespace A189291.P5308326029436050122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189291.P5308326029436050122

/-! ## A189291.P494546666959560704

`record[A000027(n+1)*A189289(n+1)]`
-/

namespace A189291.P494546666959560704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P494546666959560704

/-! ## A189291.P2507975020424631758

`record[(1-A001489(n))*A189289(n+1)]`
-/

namespace A189291.P2507975020424631758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n) * A189289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P2507975020424631758

/-! ## A189291.P8149483641484512203

`record[gcd(n+1, A189289(n+1)+A005408(n))]`
-/

namespace A189291.P8149483641484512203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A189289 (n + 1) + A005408 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P8149483641484512203

/-! ## A189291.P17150139690605113078

`eq[n, A028310(n)*A189289(A028310(n))]`
-/

namespace A189291.P17150139690605113078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A189289 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189291.P17150139690605113078

/-! ## A189291.P12750677462386372269

`record[A005378(n)*A189289(A005378(n))]`
-/

namespace A189291.P12750677462386372269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n * A189289 (A005378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P12750677462386372269

/-! ## A189291.P4607346857876363880

`record[A008619(n)*A189289(A008619(n))]`
-/

namespace A189291.P4607346857876363880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A189289 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P4607346857876363880

/-! ## A189291.P11351772648774144731

`record[A080513(n)*A189289(A080513(n))]`
-/

namespace A189291.P11351772648774144731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n * A189289 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P11351772648774144731

/-! ## A189291.P6726835324573566266

`record[A260437(A189289(n+1)+A005408(n))]`
-/

namespace A189291.P6726835324573566266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (A189289 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P6726835324573566266

/-! ## A189291.P14511899420086110728

`record[A065033(n)*A189289(A065033(n))]`
-/

namespace A189291.P14511899420086110728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A189289 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P14511899420086110728

/-! ## A189291.P4192405488776595165

`A001057(record[A005408(n)*A189289(n+1)])`
-/

namespace A189291.P4192405488776595165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A189289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189291.P4192405488776595165

/-! ## A189291.P5773894716149597424

`record[-A001057(A189289(n+1)+A005408(n))]`
-/

namespace A189291.P5773894716149597424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A189289 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P5773894716149597424

/-! ## A189291.P2498490441428623667

`record[A008611(n)*A189289(A008620(n))]`
-/

namespace A189291.P2498490441428623667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A189289 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P2498490441428623667

/-! ## A189291.P13383890790849485607

`record[A034887(n)*A189289(A034887(n))]`
-/

namespace A189291.P13383890790849485607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n * A189289 (A034887 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P13383890790849485607

/-! ## A189291.P3261622173591507198

`record[A008621(n)*A189289(A008621(n))]`
-/

namespace A189291.P3261622173591507198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A189289 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189291.P3261622173591507198

/-!
# A189292: Zero-one sequence based on the sequence (4n): a(A008586(k))=a(k); a(A042968(k))=1-a(k), a(1)=0, a(2)=0, a(3)=1.

The programs for A189292, there is no canonical definition to state claims against.
-/

/-! ## A189292.P9196184137097433755

`char[A189294(n+1)-1]`
-/

namespace A189292.P9196184137097433755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189294 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189292.P9196184137097433755

/-! ## A189292.P9611950382236392631

`1-char[A189293(n+1)-1]`
-/

namespace A189292.P9611950382236392631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189293 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189292.P9611950382236392631

/-! ## A189292.P6201979282469033147

`char[record[A189294(A344180(n))-1]]`
-/

namespace A189292.P6201979282469033147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189294 (A344180 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189292.P6201979282469033147

/-! ## A189292.P5644258893711508825

`abs(1-char[A189293(A028310(n))-1])`
-/

namespace A189292.P5644258893711508825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189293 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)|

end

end A189292.P5644258893711508825

/-! ## A189292.P6695782417838614507

`A189289(n+1)+A189298(n+1)-A189295(n+1)`
-/

namespace A189292.P6695782417838614507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189289 (n + 1) + (A189298 (n + 1) - A189295 (n + 1))

end

end A189292.P6695782417838614507

/-!
# A189293: Positions of 0 in A189292; complement of A189294.

The programs for A189293, there is no canonical definition to state claims against.
-/

/-! ## A189293.P13503791331025261063

`eq[0, A189292(n+1)]+1`
-/

namespace A189293.P13503791331025261063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189292 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189293.P13503791331025261063

/-! ## A189293.P8807068474328214849

`eq[0, A189292(A028310(n))]`
-/

namespace A189293.P8807068474328214849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189292 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189293.P8807068474328214849

/-! ## A189293.P18137086802106125595

`A114637(eq[0, A189292(n+1)])`
-/

namespace A189293.P18137086802106125595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189293.P18137086802106125595

/-! ## A189293.P3716784705646872110

`A153152(eq[0, A189292(n+1)])`
-/

namespace A189293.P3716784705646872110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189293.P3716784705646872110

/-! ## A189293.P10462150252479600818

`eq[char[A189294(n+1)], A000038(n)]`
-/

namespace A189293.P10462150252479600818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189294 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A189293.P10462150252479600818

/-! ## A189293.P14328980333209152356

`eq[0, A189292(A123108(2*n))]`
-/

namespace A189293.P14328980333209152356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189292 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189293.P14328980333209152356

/-! ## A189293.P6068964522105374169

`eq[0, A189292(A008574(n))]`
-/

namespace A189293.P6068964522105374169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189292 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189293.P6068964522105374169

/-! ## A189293.P3458884867463692418

`eq[0, A189292(A233583(n+1))]`
-/

namespace A189293.P3458884867463692418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189292 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189293.P3458884867463692418

/-!
# A189294: Positions of 1 in A189292; complement of A189293.

The programs for A189294, there is no canonical definition to state claims against.
-/

/-! ## A189294.P10907818064454396219

`filter[n+1, A189292(#)]`
-/

namespace A189294.P10907818064454396219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189292 (f1 j) = 1) n)

end

end A189294.P10907818064454396219

/-! ## A189294.P15927625214146859113

`eq[1, A189292(n+1)]+1`
-/

namespace A189294.P15927625214146859113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189292 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189294.P15927625214146859113

/-! ## A189294.P11011550136825255677

`lt[abs(n-A189292(A028310(n))), n]`
-/

namespace A189294.P11011550136825255677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A189292 (A028310 n).toNat|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189294.P11011550136825255677

/-! ## A189294.P17888723744998412973

`record[A000027(n+1)*A189292(n+1)]`
-/

namespace A189294.P17888723744998412973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P17888723744998412973

/-! ## A189294.P15539844260926505529

`record[A005378(n)*A189292(A005378(n))]`
-/

namespace A189294.P15539844260926505529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n * A189292 (A005378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P15539844260926505529

/-! ## A189294.P3243743164834867630

`record[A008619(2*n)*A189292(n+1)]`
-/

namespace A189294.P3243743164834867630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P3243743164834867630

/-! ## A189294.P1628143386070717742

`record[A028242(2*n)*A189292(n+1)]`
-/

namespace A189294.P1628143386070717742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) * A189292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P1628143386070717742

/-! ## A189294.P17771970996487603866

`record[(A004442(2*n)-n)*A189292(n+1)]`
-/

namespace A189294.P17771970996487603866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 (2 * n) - (n : ℤ)) * A189292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P17771970996487603866

/-! ## A189294.P6738667361059573035

`record[A052938(n)*A189292(A052938(n))]`
-/

namespace A189294.P6738667361059573035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n * A189292 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P6738667361059573035

/-! ## A189294.P14619111076222058543

`record[A065033(n)*A189292(A065033(n))]`
-/

namespace A189294.P14619111076222058543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A189292 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P14619111076222058543

/-! ## A189294.P12084031379800639067

`record[A080513(n)*A189292(A080513(n))]`
-/

namespace A189294.P12084031379800639067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n * A189292 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P12084031379800639067

/-! ## A189294.P17077534745584898241

`record[A008611(n)*A189292(A008620(n))]`
-/

namespace A189294.P17077534745584898241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A189292 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P17077534745584898241

/-! ## A189294.P4331899335295208523

`record[A117910(n)*A189292(A117910(n))]`
-/

namespace A189294.P4331899335295208523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n * A189292 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P4331899335295208523

/-! ## A189294.P9505563013429741568

`record[A034887(n)*A189292(A034887(n))]`
-/

namespace A189294.P9505563013429741568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n * A189292 (A034887 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P9505563013429741568

/-! ## A189294.P6184627552468402356

`record[A008621(n)*A189292(A008621(n))]`
-/

namespace A189294.P6184627552468402356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A189292 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189294.P6184627552468402356

/-!
# A189295: Zero-one sequence based on the sequence (4n): a(A008586(k))=a(k); a(A042968(k))=1-a(k), a(1)=0, a(2)=1, a(3)=0.

The programs for A189295, there is no canonical definition to state claims against.
-/

/-! ## A189295.P2887630973250257207

`char[A189297(n+1)-1]`
-/

namespace A189295.P2887630973250257207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189297 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189295.P2887630973250257207

/-! ## A189295.P14491868356159115422

`1-char[A189296(n+1)-1]`
-/

namespace A189295.P14491868356159115422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189296 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189295.P14491868356159115422

/-! ## A189295.P10321018238473451433

`abs(char[A189296(A028310(n))-1]-1)`
-/

namespace A189295.P10321018238473451433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189296 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1|

end

end A189295.P10321018238473451433

/-! ## A189295.P11890817531384542019

`A189289(n+1)+A189298(n+1)-A189292(n+1)`
-/

namespace A189295.P11890817531384542019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189289 (n + 1) + (A189298 (n + 1) - A189292 (n + 1))

end

end A189295.P11890817531384542019

/-! ## A189295.P10930417703559307170

`char[A023443(A189297(n+1))]`
-/

namespace A189295.P10930417703559307170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189297 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189295.P10930417703559307170

/-!
# A189296: Positions of 0 in A189295; complement of A189297.

The programs for A189296, there is no canonical definition to state claims against.
-/

/-! ## A189296.P6989816679517944612

`eq[0, A189295(n+1)]+1`
-/

namespace A189296.P6989816679517944612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189295 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189296.P6989816679517944612

/-! ## A189296.P9400412959921742000

`eq[0, A189295(A028310(n))]`
-/

namespace A189296.P9400412959921742000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189295 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189296.P9400412959921742000

/-! ## A189296.P6325407510561424635

`A020725(eq[0, A189295(n+1)])`
-/

namespace A189296.P6325407510561424635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189296.P6325407510561424635

/-! ## A189296.P14147996755775050924

`lt[A000010(n+1)*A189295(n+1), 1]+1`
-/

namespace A189296.P14147996755775050924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A189295 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189296.P14147996755775050924

/-! ## A189296.P2744999415604821953

`lt[A000040(n+1)*A189295(n+1), 1]+1`
-/

namespace A189296.P2744999415604821953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A189295 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189296.P2744999415604821953

/-! ## A189296.P11317863284375248401

`lt[A002034(n+1)*A189295(n+1), 1]+1`
-/

namespace A189296.P11317863284375248401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) * A189295 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189296.P11317863284375248401

/-! ## A189296.P8026375541176700934

`lt[A055201(n+1)*A189295(n+1), 1]+1`
-/

namespace A189296.P8026375541176700934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055201 (n + 1) * A189295 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189296.P8026375541176700934

/-! ## A189296.P11921456816561759783

`lt[A056166(n+1)*A189295(n+1), 1]+1`
-/

namespace A189296.P11921456816561759783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1) * A189295 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189296.P11921456816561759783

/-! ## A189296.P17951926550869447807

`lt[A056992(n+1)*A189295(n+1), 1]+1`
-/

namespace A189296.P17951926550869447807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056992 (n + 1) * A189295 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189296.P17951926550869447807

/-! ## A189296.P14481494814733265506

`lt[A077396(n+1)*A189295(n+1), 1]+1`
-/

namespace A189296.P14481494814733265506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077396 (n + 1) * A189295 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189296.P14481494814733265506

/-! ## A189296.P1653375527110013442

`lt[A137921(n+1)*A189295(n+1), 1]+1`
-/

namespace A189296.P1653375527110013442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (n + 1) * A189295 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189296.P1653375527110013442

/-! ## A189296.P13869440236215498963

`lt[A189295(n+1)*A305392(n+1), 1]+1`
-/

namespace A189296.P13869440236215498963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189295 (n + 1) * A305392 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189296.P13869440236215498963

/-! ## A189296.P12578406791661787780

`lt[A189295(n+1)*A228949(n+2), 1]+1`
-/

namespace A189296.P12578406791661787780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189295 (n + 1) * A228949 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189296.P12578406791661787780

/-! ## A189296.P4130788511736829293

`(lt[A189295(n+1), 1]+1)%A091454(n+1)`
-/

namespace A189296.P4130788511736829293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189295 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) (A091454 (n + 1))

end

end A189296.P4130788511736829293

/-! ## A189296.P302756528811751615

`eq[0, A189295(A000007(n)+n)]`
-/

namespace A189296.P302756528811751615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189295 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189296.P302756528811751615

/-! ## A189296.P11299699438818124900

`eq[0, A189295(A065033(2*n))]`
-/

namespace A189296.P11299699438818124900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189295 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189296.P11299699438818124900

/-! ## A189296.P13968139564528325022

`eq[0, A189295(A123108(2*n))]`
-/

namespace A189296.P13968139564528325022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189295 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189296.P13968139564528325022

/-! ## A189296.P8550061282305656841

`eq[0, A189295(A008574(n))]`
-/

namespace A189296.P8550061282305656841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189295 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189296.P8550061282305656841

/-!
# A189297: Positions of 1 in A189295; complement of A189286.

The programs for A189297, there is no canonical definition to state claims against.
-/

/-! ## A189297.P5758498989858999513

`filter[n+1, A189295(#)]`
-/

namespace A189297.P5758498989858999513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189295 (f1 j) = 1) n)

end

end A189297.P5758498989858999513

/-! ## A189297.P3980076134250481423

`eq[1, A189295(n+1)]+1`
-/

namespace A189297.P3980076134250481423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189295 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189297.P3980076134250481423

/-! ## A189297.P2128442446089830571

`record[A000027(n+1)*A189295(n+1)]`
-/

namespace A189297.P2128442446089830571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189297.P2128442446089830571

/-! ## A189297.P9314825239217954858

`record[A005843(n)*A189295(n+1)-(n-1)]`
-/

namespace A189297.P9314825239217954858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A189295 (n + 1) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189297.P9314825239217954858

/-! ## A189297.P14759997998617218538

`eq[n, A028310(n)*A189295(A028310(n))]`
-/

namespace A189297.P14759997998617218538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A189295 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189297.P14759997998617218538

/-! ## A189297.P2559299158014124753

`record[A008619(2*n)*A189295(n+1)]`
-/

namespace A189297.P2559299158014124753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189297.P2559299158014124753

/-! ## A189297.P18200183323189625792

`record[A052938(n)*A189295(A052938(n))]`
-/

namespace A189297.P18200183323189625792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n * A189295 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189297.P18200183323189625792

/-! ## A189297.P3483818880902369911

`record[A080513(n)*A189295(A080513(n))]`
-/

namespace A189297.P3483818880902369911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n * A189295 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189297.P3483818880902369911

/-! ## A189297.P13090045341815677715

`record[A029579(2*n)*A189295(n+1)]`
-/

namespace A189297.P13090045341815677715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * n) * A189295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189297.P13090045341815677715

/-! ## A189297.P15583899636824721570

`record[A065033(n)*A189295(A065033(n))]`
-/

namespace A189297.P15583899636824721570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A189295 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189297.P15583899636824721570

/-! ## A189297.P14146151123103076836

`A028242(record[A005843(n)*A189295(n+1)])`
-/

namespace A189297.P14146151123103076836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A189295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189297.P14146151123103076836

/-! ## A189297.P3823372204071693862

`record[A008611(3*n)*A189295(n+1)]`
-/

namespace A189297.P3823372204071693862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) * A189295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189297.P3823372204071693862

/-! ## A189297.P2059236009478974449

`record[A008620(3*n)*A189295(n+1)]`
-/

namespace A189297.P2059236009478974449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * n) * A189295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189297.P2059236009478974449

/-! ## A189297.P4854259936703288614

`record[A034887(n)*A189295(A034887(n))]`
-/

namespace A189297.P4854259936703288614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n * A189295 (A034887 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189297.P4854259936703288614

/-! ## A189297.P769865216441241346

`record[A008621(n)*A189295(A008621(n))]`
-/

namespace A189297.P769865216441241346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A189295 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189297.P769865216441241346

/-!
# A189298: Zero-one sequence based on the sequence (4n): a(A008586(k))=a(k); a(A042968(k))=1-a(k), a(1)=0, a(2)=1, a(3)=1.

The programs for A189298, there is no canonical definition to state claims against.
-/

/-! ## A189298.P6370090227890642091

`char[A189300(n+1)-1]`
-/

namespace A189298.P6370090227890642091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189300 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189298.P6370090227890642091

/-! ## A189298.P8989258962291830008

`char[comp[A189299(n+1)-1]]`
-/

namespace A189298.P8989258962291830008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189299 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189298.P8989258962291830008

/-! ## A189298.P9536236917311375477

`(1-char[A189299(Δ[n²]-n)-1])^3`
-/

namespace A189298.P9536236917311375477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189299 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 3

end

end A189298.P9536236917311375477

/-! ## A189298.P2830771131007389095

`A189292(n+1)+A189295(n+1)-A189289(n+1)`
-/

namespace A189298.P2830771131007389095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189292 (n + 1) + (A189295 (n + 1) - A189289 (n + 1))

end

end A189298.P2830771131007389095

/-! ## A189298.P10452196245897738832

`char[A023443(A189300(n+1))]`
-/

namespace A189298.P10452196245897738832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189300 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189298.P10452196245897738832

/-!
# A189299: Positions of 0 in A189298; complement of A189300.

The programs for A189299, there is no canonical definition to state claims against.
-/

/-! ## A189299.P13943593293881539949

`eq[0, A189298(n+1)]+1`
-/

namespace A189299.P13943593293881539949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189299.P13943593293881539949

/-! ## A189299.P15949272993631652878

`eq[0, A189298(A028310(n))]`
-/

namespace A189299.P15949272993631652878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189298 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189299.P15949272993631652878

/-! ## A189299.P3802732269419464210

`A020725(eq[0, A189298(n+1)])`
-/

namespace A189299.P3802732269419464210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189299.P3802732269419464210

/-! ## A189299.P11759794674064406016

`eq[0, A189298(A000007(n)+n)]`
-/

namespace A189299.P11759794674064406016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189298 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189299.P11759794674064406016

/-! ## A189299.P15068319878180124709

`eq[0, A189298(A008574(n))]`
-/

namespace A189299.P15068319878180124709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189298 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189299.P15068319878180124709

/-! ## A189299.P4616389094846939874

`eq[0, A189298(A134478(∑[n]))]`
-/

namespace A189299.P4616389094846939874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189298 (A134478 (∑ j ∈ Finset.range (n + 1), f3 j)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189299.P4616389094846939874

/-! ## A189299.P8507490937061511864

`eq[0, A189298(A193739(∑[n]))]`
-/

namespace A189299.P8507490937061511864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189298 (A193739 (∑ j ∈ Finset.range (n + 1), f3 j)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189299.P8507490937061511864

/-! ## A189299.P8719670430953974888

`eq[0, A189298(A137735(n²))]`
-/

namespace A189299.P8719670430953974888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189298 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189299.P8719670430953974888

