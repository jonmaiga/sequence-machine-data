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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A219301: Numbers having factorization Product_{i=1..m} p(i)^e(i) such that p(i) + e(i) is the same for each i.

The programs for A219301, there is no canonical definition to state claims against.
-/

/-! ## A219301.P1789099146106659608

`∪[A000961(n+1), A219302(n+1)]`
-/

namespace A219301.P1789099146106659608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A219301.P1789099146106659608

/-! ## A219301.P16357316692435903104

`∪[record[A068794(n+1)], A219302(n+1)]`
-/

namespace A219301.P16357316692435903104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A219301.P16357316692435903104

/-! ## A219301.P1445735421317215403

`∪[A219302(n+1), record[A330691(n+1)]]`
-/

namespace A219301.P1445735421317215403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219302 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A219301.P1445735421317215403

/-! ## A219301.P6991964884918823383

`∪[comp[A074591(n+1)], A219302(n+1)]`
-/

namespace A219301.P6991964884918823383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A219301.P6991964884918823383

/-! ## A219301.P4754927095965678726

`∩[A133813(n+1), A357875(n+1)]`
-/

namespace A219301.P4754927095965678726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219301.P4754927095965678726

/-!
# A219302: Numbers having factorization Product_{i=1..m} p(i)^e(i) such that m > 1 and p(i) + e(i) is the same for each i.

The programs for A219302, there is no canonical definition to state claims against.
-/

/-! ## A219302.P393652676215666068

`∩[A097320(n+1), A219301(n+1)]`
-/

namespace A219302.P393652676215666068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219302.P393652676215666068

/-! ## A219302.P14749287047342742060

`∩[A027854(n+1), A219301(n+1)]`
-/

namespace A219302.P14749287047342742060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219302.P14749287047342742060

/-! ## A219302.P4633938916325528654

`∩[A112769(n+1), A219301(n+1)]`
-/

namespace A219302.P4633938916325528654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219302.P4633938916325528654

/-! ## A219302.P5382074696600037830

`∩[A177425(n+1), A219301(n+1)]`
-/

namespace A219302.P5382074696600037830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219302.P5382074696600037830

/-!
# A219303: Numbers which do not reach zero under the repeated iteration x -> floor(sqrt(x)) * (x - floor(sqrt(x))^2).

The programs for A219303, there is no canonical definition to state claims against.
-/

/-! ## A219303.P4856919170197715575

`∑[A219552(round(sqrt(n²+1)))]+2`
-/

namespace A219303.P4856919170197715575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219552 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A219303.P4856919170197715575

/-!
# A219304: Unchanging value maps: number of n X n binary arrays indicating the locations of corresponding elements unequal to no horizontal or vertical neighbor in a random 0..2 n X n array.

The programs for A219304, there is no canonical definition to state claims against.
-/

/-! ## A219304.P16149045034509206042

`A219310(∑[4*n]+1)`
-/

namespace A219304.P16149045034509206042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219304.P16149045034509206042

/-! ## A219304.P13646411003102410010

`record[A219310(A152271(n²))]`
-/

namespace A219304.P13646411003102410010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219304.P13646411003102410010

/-! ## A219304.P10603856425207498351

`record[A219310(Δ[A235355(n)])]`
-/

namespace A219304.P10603856425207498351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219304.P10603856425207498351

/-! ## A219304.P17666971608270096581

`record[A219310(A330613(n+1))]`
-/

namespace A219304.P17666971608270096581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219304.P17666971608270096581

/-!
# A219305: Unchanging value maps: number of nX3 binary arrays indicating the locations of corresponding elements unequal to no horizontal or vertical neighbor in a random 0..2 nX3 array.

The programs for A219305, there is no canonical definition to state claims against.
-/

/-! ## A219305.P7791024751235933907

`A219310(∑[n+2]+4)`
-/

namespace A219305.P7791024751235933907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219305.P7791024751235933907

/-! ## A219305.P11579152327534377681

`lcm((-1)^n, A219310(A167614(n+1)))`
-/

namespace A219305.P11579152327534377681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A219310 (A167614 (n + 1)).toNat)

end

end A219305.P11579152327534377681

/-! ## A219305.P14461417287811730016

`record[A219310(n+4)/A219142(n+1)]`
-/

namespace A219305.P14461417287811730016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219310 (n + 4) : ℚ) / (A219142 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219305.P14461417287811730016

/-! ## A219305.P15755368537970734728

`A219310(A167614(n+1))+A025469(n)`
-/

namespace A219305.P15755368537970734728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A167614 (n + 1)).toNat + A025469 n

end

end A219305.P15755368537970734728

/-! ## A219305.P716305944060873724

`A219310(A167614(n+1))+A067169(n)`
-/

namespace A219305.P716305944060873724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A167614 (n + 1)).toNat + A067169 (n + 11)

end

end A219305.P716305944060873724

/-!
# A219306: Unchanging value maps: number of nX4 binary arrays indicating the locations of corresponding elements unequal to no horizontal or vertical neighbor in a random 0..2 nX4 array.

The programs for A219306, there is no canonical definition to state claims against.
-/

/-! ## A219306.P2945742048100686991

`A219310(∑[n+3]+7)`
-/

namespace A219306.P2945742048100686991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219306.P2945742048100686991

/-! ## A219306.P10396916611779131085

`A219310(A167614(n+2)+1)/A001222(A190911(n+1))`
-/

namespace A219306.P10396916611779131085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219310 (A167614 (n + 2) + 1).toNat : ℚ) / (A001222 (A190911 (n + 1)).toNat : ℚ)

end

end A219306.P10396916611779131085

/-!
# A219307: Unchanging value maps: number of nX5 binary arrays indicating the locations of corresponding elements unequal to no horizontal or vertical neighbor in a random 0..2 nX5 array.

The programs for A219307, there is no canonical definition to state claims against.
-/

/-! ## A219307.P18044725958184731912

`A219310(A167499(n+3))`
-/

namespace A219307.P18044725958184731912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A167499 (n + 3)).toNat

end

end A219307.P18044725958184731912

/-! ## A219307.P6097157603396803139

`A219310(A155212(n)+13)`
-/

namespace A219307.P6097157603396803139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A155212 n + 13).toNat

end

end A219307.P6097157603396803139

/-! ## A219307.P17519345506985804931

`A219310(A056000(n)+15)`
-/

namespace A219307.P17519345506985804931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A056000 n + 15).toNat

end

end A219307.P17519345506985804931

/-! ## A219307.P5934098744779323368

`A219310(eq[7, A066657(n)])`
-/

namespace A219307.P5934098744779323368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219307.P5934098744779323368

/-! ## A219307.P12323233886962832302

`A219310(A167614(n+3)+2)`
-/

namespace A219307.P12323233886962832302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A167614 (n + 3) + 2).toNat

end

end A219307.P12323233886962832302

/-!
# A219308: Unchanging value maps: number of nX6 binary arrays indicating the locations of corresponding elements unequal to no horizontal or vertical neighbor in a random 0..2 nX6 array.

The programs for A219308, there is no canonical definition to state claims against.
-/

/-! ## A219308.P4337952190594167256

`A219310(A056115(n)+21)`
-/

namespace A219308.P4337952190594167256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A056115 n + 21).toNat

end

end A219308.P4337952190594167256

/-! ## A219308.P3393664426803277871

`A219310(A167499(n+4)+1)`
-/

namespace A219308.P3393664426803277871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A167499 (n + 4) + 1).toNat

end

end A219308.P3393664426803277871

/-! ## A219308.P12830889237115999450

`A219310(A167487(n+4)-1)`
-/

namespace A219308.P12830889237115999450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A167487 (n + 4) - 1).toNat

end

end A219308.P12830889237115999450

/-! ## A219308.P13936001811018094460

`A219310(A112355(n+3)+6)`
-/

namespace A219308.P13936001811018094460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A112355 (n + 3) + 6).toNat

end

end A219308.P13936001811018094460

/-! ## A219308.P15007176232635745783

`A219310(A000124(n+5)+5)`
-/

namespace A219308.P15007176232635745783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A000124 (n + 5) + 5).toNat

end

end A219308.P15007176232635745783

/-!
# A219309: Unchanging value maps: number of n X 7 binary arrays indicating the locations of corresponding elements unequal to no horizontal or vertical neighbor in a random 0..2 n X 7 array.

The programs for A219309, there is no canonical definition to state claims against.
-/

/-! ## A219309.P2842369554997711332

`A219310(A374008(n+1))`
-/

namespace A219309.P2842369554997711332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A374008 (n + 1)).toNat

end

end A219309.P2842369554997711332

/-! ## A219309.P15619173862952931542

`A219310(A055999(n+4))`
-/

namespace A219309.P15619173862952931542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A055999 (n + 4)).toNat

end

end A219309.P15619173862952931542

/-! ## A219309.P7533175461421272490

`A219310(A056119(n)+28)`
-/

namespace A219309.P7533175461421272490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A056119 n + 28).toNat

end

end A219309.P7533175461421272490

/-! ## A219309.P3690030355693991306

`A219310(eq[4, A219347(n)])`
-/

namespace A219309.P3690030355693991306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219309.P3690030355693991306

/-! ## A219309.P14610356110536443094

`A219310(eq[6, A193592(n)])`
-/

namespace A219309.P14610356110536443094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219309.P14610356110536443094

/-!
# A219310: T(n,k)=Unchanging value maps: number of nXk binary arrays indicating the locations of corresponding elements unequal to no horizontal or vertical neighbor in a random 0..2 nXk array.

The programs for A219310, there is no canonical definition to state claims against.
-/

/-! ## A219310.P1007161133854295588

`A218765(n+1)+A088434(A277793(n+1))`
-/

namespace A219310.P1007161133854295588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (n + 1) + A088434 (A277793 (n + 1)).toNat

end

end A219310.P1007161133854295588

/-! ## A219310.P9848778334495237420

`A218765(n+1)+A184955(A055231(n+4))`
-/

namespace A219310.P9848778334495237420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (n + 1) + A184955 (A055231 (n + 4)).toNat

end

end A219310.P9848778334495237420

/-! ## A219310.P2952639043143008546

`A055572(A252820(n+1))`
-/

namespace A219310.P2952639043143008546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A252820 (n + 1)).toNat

end

end A219310.P2952639043143008546

/-! ## A219310.P12368176641887628473

`A132016(A218765(n+1))`
-/

namespace A219310.P12368176641887628473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (A218765 (n + 1)).toNat

end

end A219310.P12368176641887628473

/-! ## A219310.P7509123964907334607

`A236674(A218765(n+1)+1)`
-/

namespace A219310.P7509123964907334607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (A218765 (n + 1) + 1).toNat

end

end A219310.P7509123964907334607

/-!
# A219311: Number T(n,k) of standard Young tableaux for partitions of n into exactly k distinct parts; triangle T(n,k), n>=0, 0<=k<=A003056(n), read by rows.

The programs for A219311, there is no canonical definition to state claims against.
-/

/-! ## A219311.P3333066024768148918

`A082861(A373118(n)²)`
-/

namespace A219311.P3333066024768148918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082861 (A373118 n ^ 2).toNat

end

end A219311.P3333066024768148918

/-! ## A219311.P18140471917263652848

`A277537(floor(log2(A253087(n))))`
-/

namespace A219311.P18140471917263652848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (Nat.log 2 (A253087 n).toNat)

end

end A219311.P18140471917263652848

/-! ## A219311.P16076958957855047113

`A277537(∑[gcd(2, A214570(n+1))])`
-/

namespace A219311.P16076958957855047113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A214570 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219311.P16076958957855047113

/-! ## A219311.P9480494438033244299

`A082861(A373118(n)*A373118(n))`
-/

namespace A219311.P9480494438033244299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082861 (A373118 n * A373118 n).toNat

end

end A219311.P9480494438033244299

/-! ## A219311.P7481300854325969714

`A130259(A351637(n)^A108104(n))`
-/

namespace A219311.P7481300854325969714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (SequenceMachineLib.roundAway ((A351637 n : ℚ) ^ (A108104 n : ℤ))).toNat

end

end A219311.P7481300854325969714

/-!
# A219312: Composition of the binomial transform of Fibonacci numbers and the Catalan transform of Fibonacci numbers.

The programs for A219312, there is no canonical definition to state claims against.
-/

/-! ## A219312.P9004275736602219401

`A262869(A155609(n))+A002620(n)`
-/

namespace A219312.P9004275736602219401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A155609 n).toNat + A002620 n

end

end A219312.P9004275736602219401

/-! ## A219312.P17152555974269652745

`A099266(n+1)-A338883(A238876(2*n))`
-/

namespace A219312.P17152555974269652745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099266 (n + 1) - A338883 (A238876 (2 * n)).toNat

end

end A219312.P17152555974269652745

/-! ## A219312.P1686139161025691643

`A057367(A298118(2*n+3)+A072758(n))`
-/

namespace A219312.P1686139161025691643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A298118 (2 * n + 3) + A072758 n).toNat

end

end A219312.P1686139161025691643

/-!
# A219314: Composition of the inverse binomial transform of Fibonacci numbers and the Catalan transform of Fibonacci numbers.

The programs for A219314, there is no canonical definition to state claims against.
-/

/-! ## A219314.P17361081453312157164

`A188442(n)-a(n-1)` with `a(0)=0`
-/

namespace A219314.P17361081453312157164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A188442 n - a (n - 1)

end

end A219314.P17361081453312157164

/-! ## A219314.P3270581694463191154

`abs(∑[A033999(n)*A188442(n)])`
-/

namespace A219314.P3270581694463191154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A188442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A219314.P3270581694463191154

/-! ## A219314.P7645257341899443483

`∑[A033999(n)*A188442(n)]*A056594(2*n)`
-/

namespace A219314.P7645257341899443483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A188442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A056594 (2 * n)

end

end A219314.P7645257341899443483

/-!
# A219316: Number of standard Young tableaux for partitions of n into exactly 3 distinct parts.

The programs for A219316, there is no canonical definition to state claims against.
-/

/-! ## A219316.P14582652556559334643

`A219311(eq[3, A237451(n+1)])`
-/

namespace A219316.P14582652556559334643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219316.P14582652556559334643

/-!
# A219317: Number of standard Young tableaux for partitions of n into exactly 4 distinct parts.

The programs for A219317, there is no canonical definition to state claims against.
-/

/-! ## A219317.P14262864027206837115

`A219311(eq[4, A237451(n+1)])`
-/

namespace A219317.P14262864027206837115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219317.P14262864027206837115

/-!
# A219318: Number of standard Young tableaux for partitions of n into exactly 5 distinct parts.

The programs for A219318, there is no canonical definition to state claims against.
-/

/-! ## A219318.P15619391873636852746

`A219311(eq[5, A237451(n+1)])`
-/

namespace A219318.P15619391873636852746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219318.P15619391873636852746

/-!
# A219319: Number of standard Young tableaux for partitions of n into exactly 6 distinct parts.

The programs for A219319, there is no canonical definition to state claims against.
-/

/-! ## A219319.P10426229548035627119

`A219311(eq[6, A237451(n+1)])`
-/

namespace A219319.P10426229548035627119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219319.P10426229548035627119

/-!
# A219324: Positive integers n that are equal to the determinant of the circulant matrix formed by the decimal digits of n.

The programs for A219324, there is no canonical definition to state claims against.
-/

/-! ## A219324.P12100717233270620160

`A219327(lt[A034538(n+4), A115353(n)])`
-/

namespace A219324.P12100717233270620160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034538 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219327 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219324.P12100717233270620160

/-! ## A219324.P9959105432714865220

`A219327(A167619(n+1))`
-/

namespace A219324.P9959105432714865220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219327 (A167619 (n + 1)).toNat

end

end A219324.P9959105432714865220

/-! ## A219324.P5445713578156998795

`A219326(record[A225644(n)-A065744(n)])`
-/

namespace A219324.P5445713578156998795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 n - A065744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219324.P5445713578156998795

/-! ## A219324.P6048485412224229410

`A219326(A106000(n+1))`
-/

namespace A219324.P6048485412224229410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219326 (A106000 (n + 1)).toNat

end

end A219324.P6048485412224229410

/-! ## A219324.P3189062606714704541

`∩[A032946(n+1), A219326(n+1)]`
-/

namespace A219324.P3189062606714704541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219324.P3189062606714704541

/-!
# A219326: Positive integers m that are equal to the determinant of the circulant matrix formed by the decimal digits of m in reverse order.

The programs for A219326, there is no canonical definition to state claims against.
-/

/-! ## A219326.P17392164230138055638

`A219327(∑[A185044(n)!])`
-/

namespace A219326.P17392164230138055638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219327 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219326.P17392164230138055638

/-!
# A219327: Positive integers k that are equal to the absolute value of the determinant of the circulant matrix formed by the decimal digits of k.

The programs for A219327, there is no canonical definition to state claims against.
-/

/-! ## A219327.P17711962664774103178

`∪[A219324(n+1), A219326(n+1)]`
-/

namespace A219327.P17711962664774103178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A219327.P17711962664774103178

/-! ## A219327.P11951330021831187918

`eq[n, abs(A177894(A028310(n)))]`
-/

namespace A219327.P11951330021831187918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A177894 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219327.P11951330021831187918

/-! ## A219327.P9995468495027958819

`eq[A028310(n)², A177894(n)²]`
-/

namespace A219327.P9995468495027958819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177894 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219327.P9995468495027958819

/-! ## A219327.P12798473456344993460

`A219326(A076084(n+1))`
-/

namespace A219327.P12798473456344993460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219326 (A076084 (n + 1)).toNat

end

end A219327.P12798473456344993460

/-! ## A219327.P3922679778918739718

`A219326(A151764(n+1))`
-/

namespace A219327.P3922679778918739718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219326 (A151764 (n + 1)).toNat

end

end A219327.P3922679778918739718

/-!
# A219330: Number of random selections (with replacement) needed from a normal population to assure a greater than one-half chance that the selected group contains the top 10th percentile individual, top 1st percentile individual, the 0.1 percentile, 0.01 percentile etc...

The programs for A219330, there is no canonical definition to state claims against.
-/

/-! ## A219330.P9741006528699582564

`floor((A002283(n+1)-1)*log(2))+2`
-/

namespace A219330.P9741006528699582564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002283 (n + 1) - 1 : ℝ) * Real.log (2 : ℝ)⌋ + 2

end

end A219330.P9741006528699582564

/-!
# A219338: Numbers n for which n = (tau(n) - 1)^k with integer k.

The programs for A219338, there is no canonical definition to state claims against.
-/

/-! ## A219338.P13496499387326162231

`A277208(n+2)-1`
-/

namespace A219338.P13496499387326162231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277208 (n + 2) - 1

end

end A219338.P13496499387326162231

/-! ## A219338.P5673845584426437693

`A321800(n)+A277208(n+2)`
-/

namespace A219338.P5673845584426437693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A277208 (n + 2)

end

end A219338.P5673845584426437693

/-! ## A219338.P12596031617186797124

`A305974(A005384(n+1))+A277208(n+2)`
-/

namespace A219338.P12596031617186797124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A005384 (n + 1)).toNat + A277208 (n + 2)

end

end A219338.P12596031617186797124

/-! ## A219338.P3178591750836892774

`A318656(A107692(n+1))+A277208(n+2)`
-/

namespace A219338.P3178591750836892774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (A107692 (n + 1)).toNat + A277208 (n + 2)

end

end A219338.P3178591750836892774

/-! ## A219338.P378537011376706478

`A318656(A270999(n+1))+A277208(n+2)`
-/

namespace A219338.P378537011376706478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (A270999 (n + 1)).toNat + A277208 (n + 2)

end

end A219338.P378537011376706478

/-!
# A219339: Number of standard Young tableaux for partitions of n into distinct parts with largest part floor(sqrt(2*n)+1/2).

The programs for A219339, there is no canonical definition to state claims against.
-/

/-! ## A219339.P3919398884048419318

`A219356(∑[n]-A006463(n))`
-/

namespace A219339.P3919398884048419318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219356 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006463 n).toNat

end

end A219339.P3919398884048419318

/-! ## A219339.P7927066466870400870

`A219356(∑[A122797(n+1)]-A122797(n+1))`
-/

namespace A219339.P7927066466870400870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219356 (∑ j ∈ Finset.range (n + 1), f1 j - A122797 (n + 1)).toNat

end

end A219339.P7927066466870400870

/-! ## A219339.P13284364240434068950

`A219356(eq[1, A219356(n+1)])`
-/

namespace A219339.P13284364240434068950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219339.P13284364240434068950

/-! ## A219339.P16111352036463151377

`A219356(record[n/A219356(n+1)])`
-/

namespace A219339.P16111352036463151377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A219356 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219356 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A219339.P16111352036463151377

/-! ## A219339.P9674121619618064806

`A219356(record[1-A219356(n+1)+n])`
-/

namespace A219339.P9674121619618064806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219356 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219356 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219339.P9674121619618064806

/-!
# A219340: Numbers not multiples of 9 whose digital sum coincides with digital sum of their largest proper divisor.

The programs for A219340, there is no canonical definition to state claims against.
-/

/-! ## A219340.P3093178353393190329

`A332798(eq[A008723(n), A229079(n)]+1)`
-/

namespace A219340.P3093178353393190329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332798 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A219340.P3093178353393190329

/-!
# A219341: Least prime k such that k*2^n + 1 divides 2^k - 1, or 0 if no such prime exists.

The programs for A219341, there is no canonical definition to state claims against.
-/

/-! ## A219341.P1987873155972878725

`A200924(a(n-1))` with `a(0)=2, a(1)=3, a(2)=0, a(3)=11`
-/

namespace A219341.P1987873155972878725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 0, 11] fun n a =>
  A200924 (a (n - 1)).toNat

end

end A219341.P1987873155972878725

/-!
# A219342: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n * A(n^3*x)^n/n! * exp(-n*x*A(n^3*x)).

The programs for A219342, there is no canonical definition to state claims against.
-/

/-! ## A219342.P10911957627006128287

`A277203(∑[2*a(n-3)-a(n-6)])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=2, a(5)=5, a(6)=7`
-/

namespace A219342.P10911957627006128287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3, 2, 5, 7] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219342.P10911957627006128287

/-!
# A219347: Number of partitions of n into distinct parts with smallest possible largest part.

The programs for A219347, there is no canonical definition to state claims against.
-/

/-! ## A219347.P8186317569975672553

`A000009(A193592(n))`
-/

namespace A219347.P8186317569975672553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A193592 n).toNat

end

end A219347.P8186317569975672553

/-! ## A219347.P17805228226108807093

`A000009(A025581(round(n²/(n+1))))`
-/

namespace A219347.P17805228226108807093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A025581 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A219347.P17805228226108807093

/-! ## A219347.P3949159639622872575

`A000009(A000217(A123578(n))-n)`
-/

namespace A219347.P3949159639622872575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000217 (A123578 n).toNat - (n : ℤ)).toNat

end

end A219347.P3949159639622872575

/-! ## A219347.P9947095871195002152

`A000009(A004736(n+1)%A131060(n))`
-/

namespace A219347.P9947095871195002152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Int.tmod (A004736 (n + 1)) (A131060 n)).toNat

end

end A219347.P9947095871195002152

/-! ## A219347.P13696430220151250423

`A000009(gcd(A004736(n+1), A193739(n)))`
-/

namespace A219347.P13696430220151250423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Int.gcd (A004736 (n + 1)) (A193739 n))

end

end A219347.P13696430220151250423

/-! ## A219347.P11542754397081290500

`A000009(A002262(A038722(n+1)))`
-/

namespace A219347.P11542754397081290500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A002262 (A038722 (n + 1)).toNat).toNat

end

end A219347.P11542754397081290500

/-! ## A219347.P17661489055436808614

`A000009((A057555(2*(n+1))-1)%A344527(n+1)+1)`
-/

namespace A219347.P17661489055436808614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Int.tmod (A057555 (2 * (n + 1)) - 1) (A344527 (n + 1)) + 1).toNat

end

end A219347.P17661489055436808614

/-! ## A219347.P3560225991262884444

`A050361(A030130(n+1)+1)`
-/

namespace A219347.P3560225991262884444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A030130 (n + 1) + 1).toNat

end

end A219347.P3560225991262884444

/-!
# A219348: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X n array.

The programs for A219348, there is no canonical definition to state claims against.
-/

/-! ## A219348.P5021491702017199084

`A219354(∑[4*n]+1)`
-/

namespace A219348.P5021491702017199084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219348.P5021491702017199084

/-! ## A219348.P3066012871497511077

`A219354(A001844(n))+char[10]`
-/

namespace A219348.P3066012871497511077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219348.P3066012871497511077

/-! ## A219348.P1236676456067728600

`A347689(n)+A219354(A001844(n))`
-/

namespace A219348.P1236676456067728600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A219354 (A001844 n).toNat

end

end A219348.P1236676456067728600

/-! ## A219348.P3449655463949741775

`A055642(n)*A219354(A001844(n))`
-/

namespace A219348.P3449655463949741775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A219354 (A001844 n).toNat

end

end A219348.P3449655463949741775

/-! ## A219348.P16527040109936031325

`A219354(A001844(n))%A017502(n)`
-/

namespace A219348.P16527040109936031325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219354 (A001844 n).toNat) (A017502 n)

end

end A219348.P16527040109936031325

/-!
# A219349: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X 3 array.

The programs for A219349, the canonical program `A219349.P4350561497736604169` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219349 has offset 1).

The definition of A219349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219349.P4350561497736604169

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=3, a(2)=8, a(3)=15, a(4)=27, a(5)=46, a(6)=76, a(7)=122`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A219349

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4350561497736604169.Spec : Prop :=
  ∀ n, P4350561497736604169.a n = A219349 (n + 1)

theorem P4350561497736604169.correct : P4350561497736604169.Spec := by
  intro n
  simp only [A219349, Nat.add_sub_cancel]

end A219349

/-! ## A219349.P12617381638728386931

`A219354(∑[n+2]+4)`
-/

namespace A219349.P12617381638728386931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219349.P12617381638728386931

namespace A219349

/-- `A219354(∑[n+2]+4)` -/
def P12617381638728386931.Spec : Prop :=
  ∀ n, P12617381638728386931.a n = A219349 (n + 1)

end A219349

/-! ## A219349.P16563557869338532239

`and(-1, A219354(A167614(n+1)))`
-/

namespace A219349.P16563557869338532239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219354 (A167614 (n + 1)).toNat)

end

end A219349.P16563557869338532239

namespace A219349

/-- `and(-1, A219354(A167614(n+1)))` -/
def P16563557869338532239.Spec : Prop :=
  ∀ n, P16563557869338532239.a n = A219349 (n + 1)

end A219349

/-! ## A219349.P4010923853278441266

`A139551(n)*A219354(A167614(n+1))`
-/

namespace A219349.P4010923853278441266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n * A219354 (A167614 (n + 1)).toNat

end

end A219349.P4010923853278441266

namespace A219349

/-- `A139551(n)*A219354(A167614(n+1))` -/
def P4010923853278441266.Spec : Prop :=
  ∀ n, P4010923853278441266.a n = A219349 (n + 1)

end A219349

/-! ## A219349.P8634583514467198045

`∑{d}[A219354(A167614(n+1)), A000010(#)]`
-/

namespace A219349.P8634583514467198045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A219349.P8634583514467198045

namespace A219349

/-- `∑{d}[A219354(A167614(n+1)), A000010(#)]` -/
def P8634583514467198045.Spec : Prop :=
  ∀ n, P8634583514467198045.a n = A219349 (n + 1)

end A219349

/-!
# A219350: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X 4 array.

The programs for A219350, there is no canonical definition to state claims against.
-/

/-! ## A219350.P10605988636138165385

`A219354(∑[n+3]+7)`
-/

namespace A219350.P10605988636138165385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219350.P10605988636138165385

/-! ## A219350.P1816398508021555424

`A219354(A141214(n)+7)+char[20]`
-/

namespace A219350.P1816398508021555424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219350.P1816398508021555424

/-! ## A219350.P4290672468564456385

`A219354(A141214(n)+7)%A000108(n+3)`
-/

namespace A219350.P4290672468564456385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219354 (A141214 n + 7).toNat) (A000108 (n + 3))

end

end A219350.P4290672468564456385

/-! ## A219350.P757167367661394534

`A007318(C(2, n))*A219354(A141214(n)+7)`
-/

namespace A219350.P757167367661394534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A219354 (A141214 n + 7).toNat

end

end A219350.P757167367661394534

/-! ## A219350.P18077915917252100707

`ceil(1/A007318(n))*A219354(A141214(n)+7)`
-/

namespace A219350.P18077915917252100707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A219354 (A141214 n + 7).toNat

end

end A219350.P18077915917252100707

/-!
# A219351: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX5 array.

The programs for A219351, there is no canonical definition to state claims against.
-/

/-! ## A219351.P17919455138259193388

`A219354(A374005(n+1))`
-/

namespace A219351.P17919455138259193388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A374005 (n + 1)).toNat

end

end A219351.P17919455138259193388

/-! ## A219351.P8572894429614367761

`A219354(A167499(n+3))`
-/

namespace A219351.P8572894429614367761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A167499 (n + 3)).toNat

end

end A219351.P8572894429614367761

/-! ## A219351.P6691269710175130024

`A219354(A155212(n)+13)`
-/

namespace A219351.P6691269710175130024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A155212 n + 13).toNat

end

end A219351.P6691269710175130024

/-! ## A219351.P7236803072164363036

`A219354(A056000(n)+15)`
-/

namespace A219351.P7236803072164363036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A056000 n + 15).toNat

end

end A219351.P7236803072164363036

/-! ## A219351.P14179656612834493079

`A219354(eq[7, A066657(n)])`
-/

namespace A219351.P14179656612834493079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219351.P14179656612834493079

/-!
# A219352: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX6 array.

The programs for A219352, there is no canonical definition to state claims against.
-/

/-! ## A219352.P17766194606714415678

`A219354(∑[n+5]+16)`
-/

namespace A219352.P17766194606714415678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A219352.P17766194606714415678

/-! ## A219352.P8084346673878022339

`A219354(A166136(n+4))+char[17]`
-/

namespace A219352.P8084346673878022339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A166136 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219352.P8084346673878022339

/-! ## A219352.P452697230883956028

`A219354(A000217(n+5)+6)+char[20]`
-/

namespace A219352.P452697230883956028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219352.P452697230883956028

/-! ## A219352.P8421330341486072861

`A219354(A166136(n+4))%A000108(n+4)`
-/

namespace A219352.P8421330341486072861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219354 (A166136 (n + 4)).toNat) (A000108 (n + 4))

end

end A219352.P8421330341486072861

/-! ## A219352.P4736433326571721507

`A007318(floor(n/27))*A219354(A166136(n+4))`
-/

namespace A219352.P4736433326571721507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 27⌋.toNat * A219354 (A166136 (n + 4)).toNat

end

end A219352.P4736433326571721507

/-!
# A219353: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX7 array.

The programs for A219353, there is no canonical definition to state claims against.
-/

/-! ## A219353.P12701701766251515540

`A219354(A374008(n+1))`
-/

namespace A219353.P12701701766251515540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A374008 (n + 1)).toNat

end

end A219353.P12701701766251515540

/-! ## A219353.P1670619457952433803

`A219354(eq[11, A066657(n)])`
-/

namespace A219353.P1670619457952433803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219353.P1670619457952433803

/-! ## A219353.P15837933662146180957

`A219354(A000124(n+6)+6)`
-/

namespace A219353.P15837933662146180957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A000124 (n + 6) + 6).toNat

end

end A219353.P15837933662146180957

/-! ## A219353.P447232617264345358

`A219354(A000217(n+6)+7)`
-/

namespace A219353.P447232617264345358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A000217 (n + 6) + 7).toNat

end

end A219353.P447232617264345358

/-! ## A219353.P713438612156023311

`A219354(A027379(n+4)+10)`
-/

namespace A219353.P713438612156023311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219354 (A027379 (n + 4) + 10).toNat

end

end A219353.P713438612156023311

/-!
# A219354: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nXk array.

The programs for A219354, there is no canonical definition to state claims against.
-/

/-! ## A219354.P16374408098214545116

`A122066(A217547(n+1))`
-/

namespace A219354.P16374408098214545116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122066 (A217547 (n + 1)).toNat

end

end A219354.P16374408098214545116

/-! ## A219354.P5260363630254748344

`A020753(lcm(A055652(n), A331886(n)))`
-/

namespace A219354.P5260363630254748344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (Int.lcm (A055652 n) (A331886 n))

end

end A219354.P5260363630254748344

/-! ## A219354.P3364087014444879330

`A131830(n)+A002324(A000041(2*n))`
-/

namespace A219354.P3364087014444879330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 n + A002324 (A000041 (2 * n)).toNat

end

end A219354.P3364087014444879330

/-! ## A219354.P2363152596450879023

`∑{p}[A188508(n+1), A244160(A197433(#))]`
-/

namespace A219354.P2363152596450879023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A244160 (A197433 p).toNat

end

end A219354.P2363152596450879023

/-! ## A219354.P14652651383107921220

`A270393(A219502(n+1))%19-A029954(A007318(n))`
-/

namespace A219354.P14652651383107921220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270393 (A219502 (n + 1)).toNat) 19 - A029954 (A007318 n).toNat

end

end A219354.P14652651383107921220

/-!
# A219355: Size of the edge set of the Generalized Lucas Cube Q_n(111).

The programs for A219355, there is no canonical definition to state claims against.
-/

/-! ## A219355.P15241265649248358033

`n*A003056(A239106(n)+1)`
-/

namespace A219355.P15241265649248358033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003056 (A239106 n + 1).toNat

end

end A219355.P15241265649248358033

/-! ## A219355.P13329284039640188083

`n*A122921(A149936(n))`
-/

namespace A219355.P13329284039640188083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122921 (A149936 n).toNat

end

end A219355.P13329284039640188083

/-! ## A219355.P11110838243385379515

`n*A307707(A071747(n))`
-/

namespace A219355.P11110838243385379515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A307707 (A071747 n).toNat

end

end A219355.P11110838243385379515

/-! ## A219355.P4309096721953827241

`n*A122921(A020992(2*n))`
-/

namespace A219355.P4309096721953827241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122921 (A020992 (2 * n)).toNat

end

end A219355.P4309096721953827241

/-!
# A219358: G.f. satisfies: A(x) = Sum_{n>=0} n! * x^n * A(x)^(n*(n-1)/2).

The programs for A219358, there is no canonical definition to state claims against.
-/

/-! ## A219358.P14455987759361717252

`A057363(A034839(n)+A000670(n))`
-/

namespace A219358.P14455987759361717252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A034839 n + A000670 n).toNat

end

end A219358.P14455987759361717252

/-! ## A219358.P10631179919247609085

`A057363(A096921(n)+A000670(n))`
-/

namespace A219358.P10631179919247609085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A096921 n + A000670 n).toNat

end

end A219358.P10631179919247609085

/-! ## A219358.P8127035174322747283

`A096921(n)+A057363(A052875(n))`
-/

namespace A219358.P8127035174322747283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096921 n + A057363 (A052875 n).toNat

end

end A219358.P8127035174322747283

/-!
# A219359: G.f. satisfies: A(x) = Sum_{n>=0} n! * x^n * A(x)^(n*(n+1)/2).

The programs for A219359, there is no canonical definition to state claims against.
-/

/-! ## A219359.P11130757268533748781

`floor(A272605((n+2)^n+1)/2)`
-/

namespace A219359.P11130757268533748781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A272605 ((n + 2) ^ n + 1) : ℚ) / 2⌋

end

end A219359.P11130757268533748781

/-! ## A219359.P2428117969640364499

`A054071(∑[A004213(n)])`
-/

namespace A219359.P2428117969640364499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219359.P2428117969640364499

/-!
# A219361: Positive integers n such that the ring of integers of Q(sqrt n) is a UFD.

The programs for A219361, there is no canonical definition to state claims against.
-/

/-! ## A219361.P16546211195020382497

`eq[1, A202053(n+1)]+1`
-/

namespace A219361.P16546211195020382497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A219361.P16546211195020382497

/-! ## A219361.P1540145590606964232

`record[A000027(n+1)/A202053(n+1)]`
-/

namespace A219361.P1540145590606964232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A202053 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219361.P1540145590606964232

/-! ## A219361.P2485047832784694755

`record[(n+1)/A001222(2*A202053(n+1))]`
-/

namespace A219361.P2485047832784694755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (2 * A202053 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219361.P2485047832784694755

/-! ## A219361.P1160693413415672413

`record[A028242(2*n)/A202053(n+1)]`
-/

namespace A219361.P1160693413415672413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A202053 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219361.P1160693413415672413

/-! ## A219361.P3607697152804323022

`record[n+1-A255324(A202053(n+1)²²+1)]`
-/

namespace A219361.P3607697152804323022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A255324 ((A202053 (n + 1) ^ 2) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219361.P3607697152804323022

/-! ## A219361.P14339094323219534571

`A202053((n+1)²)+record[n+1-A202053(n+1)²]`
-/

namespace A219361.P14339094323219534571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A202053 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 ((n + 1) ^ 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219361.P14339094323219534571

/-!
# A219362: Numbers k such that the product of divisors of sigma(k) is divisible by the product of divisors of k.

The programs for A219362, there is no canonical definition to state claims against.
-/

/-! ## A219362.P11867599111272103605

`A263928(A073956(n+1))`
-/

namespace A219362.P11867599111272103605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263928 (A073956 (n + 1)).toNat

end

end A219362.P11867599111272103605

/-! ## A219362.P11992265342915026018

`A263928(A203616(n+1)%A263940(n+1))`
-/

namespace A219362.P11992265342915026018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263928 (Int.tmod (A203616 (n + 1)) (A263940 (n + 1))).toNat

end

end A219362.P11992265342915026018

/-! ## A219362.P1300389400178569418

`∩[A263928(A203616(n+1)), A263928(n+1)]`
-/

namespace A219362.P1300389400178569418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263928 (A203616 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219362.P1300389400178569418

/-!
# A219364: Numbers k whose product of divisors is greater than the product of divisors of sigma(k).

The programs for A219364, there is no canonical definition to state claims against.
-/

/-! ## A219364.P15245882425971670197

`A073804(lt[A073798(n+1), A073837(n+1)])`
-/

namespace A219364.P15245882425971670197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073804 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219364.P15245882425971670197

/-!
# A219366: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 n X n array.

The programs for A219366, there is no canonical definition to state claims against.
-/

/-! ## A219366.P7519476520847205654

`A219373(∑[4*n]+1)`
-/

namespace A219366.P7519476520847205654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219366.P7519476520847205654

/-!
# A219367: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 n X 2 array.

The programs for A219367, there is no canonical definition to state claims against.
-/

/-! ## A219367.P10585865084067888007

`A219373(∑[n+1]+2)`
-/

namespace A219367.P10585865084067888007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219367.P10585865084067888007

/-! ## A219367.P17788765131887334996

`record[A219373(n+1)/A156366(n)]`
-/

namespace A219367.P17788765131887334996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219373 (n + 1) : ℚ) / (A156366 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219367.P17788765131887334996

/-! ## A219367.P11775879012984136814

`record[A219373(n+1)/A162975(n)]`
-/

namespace A219367.P11775879012984136814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219373 (n + 1) : ℚ) / (A162975 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219367.P11775879012984136814

/-! ## A219367.P10702392401036148188

`record[gcd(A083861(n), A219373(n+2))]`
-/

namespace A219367.P10702392401036148188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083861 n) (A219373 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219367.P10702392401036148188

/-! ## A219367.P17151717437875706790

`record[A219373(n+3)/A049385(n+1)]`
-/

namespace A219367.P17151717437875706790
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219373 (n + 3) : ℚ) / (A049385 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219367.P17151717437875706790

/-!
# A219368: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX3 array.

The programs for A219368, there is no canonical definition to state claims against.
-/

/-! ## A219368.P10376373077624864044

`A219373(∑[n+2]+4)`
-/

namespace A219368.P10376373077624864044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219368.P10376373077624864044

/-! ## A219368.P927687413404400532

`and(-1, A219373(A167614(n+1)))`
-/

namespace A219368.P927687413404400532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219373 (A167614 (n + 1)).toNat)

end

end A219368.P927687413404400532

/-! ## A219368.P4646557269844719203

`record[A219373(A158823(n+1)+3)]`
-/

namespace A219368.P4646557269844719203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A158823 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219368.P4646557269844719203

/-! ## A219368.P13070908607538973697

`record[A219373(n+4)/A225469(n)]`
-/

namespace A219368.P13070908607538973697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219373 (n + 4) : ℚ) / (A225469 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219368.P13070908607538973697

/-! ## A219368.P15852213137538059757

`A219373(A167614(n+1))+A006927(n)`
-/

namespace A219368.P15852213137538059757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A167614 (n + 1)).toNat + A006927 n

end

end A219368.P15852213137538059757

/-!
# A219369: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX4 array.

The programs for A219369, there is no canonical definition to state claims against.
-/

/-! ## A219369.P16872097638115872979

`A219373(∑[n+3]+7)`
-/

namespace A219369.P16872097638115872979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219369.P16872097638115872979

/-! ## A219369.P10197231274939805908

`A219373(A141214(n+1))+A011731(n)`
-/

namespace A219369.P10197231274939805908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A141214 (n + 1)).toNat + A011731 n

end

end A219369.P10197231274939805908

/-! ## A219369.P16617352351491139271

`A219373(A141214(n+1))+A025437(n)`
-/

namespace A219369.P16617352351491139271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A141214 (n + 1)).toNat + A025437 n

end

end A219369.P16617352351491139271

/-! ## A219369.P13066542118485224359

`A219373(A141214(n+1))+A025438(n)`
-/

namespace A219369.P13066542118485224359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A141214 (n + 1)).toNat + A025438 n

end

end A219369.P13066542118485224359

/-! ## A219369.P14960065550625112806

`A219373(A141214(n+1))+A025439(n)`
-/

namespace A219369.P14960065550625112806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A141214 (n + 1)).toNat + A025439 n

end

end A219369.P14960065550625112806

/-!
# A219370: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX5 array.

The programs for A219370, there is no canonical definition to state claims against.
-/

/-! ## A219370.P503692625385180609

`A219373(A374005(n+1))`
-/

namespace A219370.P503692625385180609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A374005 (n + 1)).toNat

end

end A219370.P503692625385180609

/-! ## A219370.P9760075640164534852

`A219373(A167499(n+3))`
-/

namespace A219370.P9760075640164534852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A167499 (n + 3)).toNat

end

end A219370.P9760075640164534852

/-! ## A219370.P16574889705866568089

`A219373(A155212(n)+13)`
-/

namespace A219370.P16574889705866568089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A155212 n + 13).toNat

end

end A219370.P16574889705866568089

/-! ## A219370.P13050597172871557950

`A219373(A056000(n)+15)`
-/

namespace A219370.P13050597172871557950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A056000 n + 15).toNat

end

end A219370.P13050597172871557950

/-! ## A219370.P13749405580897442018

`A219373(eq[7, A066657(n)])`
-/

namespace A219370.P13749405580897442018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219370.P13749405580897442018

/-!
# A219371: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX6 array.

The programs for A219371, there is no canonical definition to state claims against.
-/

/-! ## A219371.P9649913816104507242

`A219373(A374007(n+1))`
-/

namespace A219371.P9649913816104507242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A374007 (n + 1)).toNat

end

end A219371.P9649913816104507242

/-! ## A219371.P5773490235081433596

`A219373(A052905(n+3))`
-/

namespace A219371.P5773490235081433596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A052905 (n + 3)).toNat

end

end A219371.P5773490235081433596

/-! ## A219371.P17900004331123152161

`A219373(A166136(n+4))`
-/

namespace A219371.P17900004331123152161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A166136 (n + 4)).toNat

end

end A219371.P17900004331123152161

/-!
# A219372: Number of n X 7 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 n X 7 array.

The programs for A219372, there is no canonical definition to state claims against.
-/

/-! ## A219372.P9072049889598332635

`A219373(A374008(n+1))`
-/

namespace A219372.P9072049889598332635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219373 (A374008 (n + 1)).toNat

end

end A219372.P9072049889598332635

/-!
# A219373: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nXk array.

The programs for A219373, there is no canonical definition to state claims against.
-/

/-! ## A219373.P594323514789053086

`A072088(A220931(n+1))`
-/

namespace A219373.P594323514789053086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A220931 (n + 1)).toNat

end

end A219373.P594323514789053086

/-! ## A219373.P17784140700636192171

`A072089(A221828(n+1)+A220204(n+1))`
-/

namespace A219373.P17784140700636192171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A221828 (n + 1) + A220204 (n + 1)).toNat

end

end A219373.P17784140700636192171

/-! ## A219373.P2763855883254479039

`A219828(xor(A052426(n+1), A093057(n+1)))`
-/

namespace A219373.P2763855883254479039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (Int.xor (A052426 (n + 1)) (A093057 (n + 1))).toNat

end

end A219373.P2763855883254479039

/-!
# A219375: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 n X n array.

The programs for A219375, there is no canonical definition to state claims against.
-/

/-! ## A219375.P5736932643879798650

`A219381(∑[4*n]+1)`
-/

namespace A219375.P5736932643879798650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219375.P5736932643879798650

/-! ## A219375.P2203388388797754938

`record[A219381(Δ[A235355(n)])]`
-/

namespace A219375.P2203388388797754938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219375.P2203388388797754938

/-! ## A219375.P14487837453792085234

`record[gcd(A219381(n+1), A323833(n))]`
-/

namespace A219375.P14487837453792085234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219381 (n + 1)) (A323833 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219375.P14487837453792085234

/-!
# A219376: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX3 array.

The programs for A219376, there is no canonical definition to state claims against.
-/

/-! ## A219376.P10066704844966557690

`A219381(∑[n+3]+1)`
-/

namespace A219376.P10066704844966557690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219376.P10066704844966557690

/-! ## A219376.P3606901167706447851

`record[A219381(A198464(n+1))]`
-/

namespace A219376.P3606901167706447851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219376.P3606901167706447851

/-! ## A219376.P17822134068844456018

`A219381(A034856(n+2))*A322320(n+1)`
-/

namespace A219376.P17822134068844456018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A034856 (n + 2)).toNat * A322320 (n + 1)

end

end A219376.P17822134068844456018

/-!
# A219377: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX4 array.

The programs for A219377, there is no canonical definition to state claims against.
-/

/-! ## A219377.P14607014095234444660

`A219381(∑[n+4]+3)`
-/

namespace A219377.P14607014095234444660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219377.P14607014095234444660

/-! ## A219377.P15740919266781708302

`A219381(A141214(n+1))+A185245(n)`
-/

namespace A219377.P15740919266781708302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A141214 (n + 1)).toNat + A185245 n

end

end A219377.P15740919266781708302

/-! ## A219377.P1545090981205673356

`A219381(A141214(n+1))+A185284(n)`
-/

namespace A219377.P1545090981205673356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A141214 (n + 1)).toNat + A185284 n

end

end A219377.P1545090981205673356

/-!
# A219378: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX5 array.

The programs for A219378, there is no canonical definition to state claims against.
-/

/-! ## A219378.P3534484315448530548

`A219381(Δ[A264443(n)])`
-/

namespace A219378.P3534484315448530548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (f1 (n + 1) - f1 n).toNat

end

end A219378.P3534484315448530548

/-! ## A219378.P13555866237086692404

`A219381(A056115(n)+11)`
-/

namespace A219378.P13555866237086692404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A056115 n + 11).toNat

end

end A219378.P13555866237086692404

/-! ## A219378.P8864527481930795449

`A219381(eq[4, A193592(n)])`
-/

namespace A219378.P8864527481930795449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219378.P8864527481930795449

/-! ## A219378.P9198597752147799290

`A219381(Δ[A023545(n+1)])`
-/

namespace A219378.P9198597752147799290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (f1 (n + 1) - f1 n).toNat

end

end A219378.P9198597752147799290

/-! ## A219378.P4886359564493886405

`A219381(A155212(n+1)+4)`
-/

namespace A219378.P4886359564493886405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A155212 (n + 1) + 4).toNat

end

end A219378.P4886359564493886405

/-!
# A219379: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX6 array.

The programs for A219379, there is no canonical definition to state claims against.
-/

/-! ## A219379.P2741347464797268202

`A219381(A052905(n+3))`
-/

namespace A219379.P2741347464797268202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A052905 (n + 3)).toNat

end

end A219379.P2741347464797268202

/-! ## A219379.P14359291785781376016

`A219381(A056119(n)+16)`
-/

namespace A219379.P14359291785781376016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A056119 n + 16).toNat

end

end A219379.P14359291785781376016

/-! ## A219379.P952857542607286696

`A219381(eq[3, A219347(n)])`
-/

namespace A219379.P952857542607286696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219379.P952857542607286696

/-! ## A219379.P9762229964846378053

`A219381(eq[5, A193592(n)])`
-/

namespace A219379.P9762229964846378053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219379.P9762229964846378053

/-!
# A219380: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX7 array.

The programs for A219380, there is no canonical definition to state claims against.
-/

/-! ## A219380.P1751632431616306668

`A219381(A055999(n+4))`
-/

namespace A219380.P1751632431616306668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A055999 (n + 4)).toNat

end

end A219380.P1751632431616306668

/-! ## A219380.P1542244462390864740

`A219381(eq[4, A219347(n)])`
-/

namespace A219380.P1542244462390864740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219380.P1542244462390864740

/-! ## A219380.P4316277825139733671

`A219381(eq[6, A193592(n)])`
-/

namespace A219380.P4316277825139733671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219380.P4316277825139733671

/-!
# A219382: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 2 X n array.

The programs for A219382, the canonical program `A219382.P11930171981713289880` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219382 has offset 1).

The definition of A219382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219382.P11930171981713289880

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=6, a(1)=7, a(2)=14, a(3)=25, a(4)=40, a(5)=66, a(6)=103, a(7)=157, a(8)=234, a(9)=341`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A219382

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11930171981713289880.Spec : Prop :=
  ∀ n, P11930171981713289880.a n = A219382 (n + 1)

theorem P11930171981713289880.correct : P11930171981713289880.Spec := by
  intro n
  simp only [A219382, Nat.add_sub_cancel]

end A219382

/-! ## A219382.P14383113772512668962

`A219381(∑[n+1]+2)`
-/

namespace A219382.P14383113772512668962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219382.P14383113772512668962

namespace A219382

/-- `A219381(∑[n+1]+2)` -/
def P14383113772512668962.Spec : Prop :=
  ∀ n, P14383113772512668962.a n = A219382 (n + 1)

end A219382

/-! ## A219382.P17785292704332781290

`record[A219381(A129502(n+1)+2)]`
-/

namespace A219382.P17785292704332781290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A129502 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219382.P17785292704332781290

namespace A219382

/-- `record[A219381(A129502(n+1)+2)]` -/
def P17785292704332781290.Spec : Prop :=
  ∀ n, P17785292704332781290.a n = A219382 (n + 1)

end A219382

/-! ## A219382.P5746033768024212629

`record[gcd(A002262(n+1), A219381(n+3))]`
-/

namespace A219382.P5746033768024212629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1)) (A219381 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219382.P5746033768024212629

namespace A219382

/-- `record[gcd(A002262(n+1), A219381(n+3))]` -/
def P5746033768024212629.Spec : Prop :=
  ∀ n, (P5746033768024212629.a n : ℤ) = A219382 (n + 1)

end A219382

/-! ## A219382.P17394312560130820153

`A219381(A133263(n+1))%A001018(n+1)`
-/

namespace A219382.P17394312560130820153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219381 (A133263 (n + 1)).toNat) (A001018 (n + 1))

end

end A219382.P17394312560130820153

namespace A219382

/-- `A219381(A133263(n+1))%A001018(n+1)` -/
def P17394312560130820153.Spec : Prop :=
  ∀ n, P17394312560130820153.a n = A219382 (n + 1)

end A219382

/-!
# A219383: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 3Xn array.

The programs for A219383, there is no canonical definition to state claims against.
-/

/-! ## A219383.P9888888818659741968

`A219381(∑[n+2]+4)`
-/

namespace A219383.P9888888818659741968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219383.P9888888818659741968

/-! ## A219383.P1261421945816686179

`and(-1, A219381(A167614(n+1)))`
-/

namespace A219383.P1261421945816686179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219381 (A167614 (n + 1)).toNat)

end

end A219383.P1261421945816686179

/-! ## A219383.P15460989098424360993

`A219381(A167614(n+1))+A011731(n)`
-/

namespace A219383.P15460989098424360993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A167614 (n + 1)).toNat + A011731 n

end

end A219383.P15460989098424360993

/-! ## A219383.P8788769372025982725

`A219381(A167614(n+1))+A185245(n)`
-/

namespace A219383.P8788769372025982725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A167614 (n + 1)).toNat + A185245 n

end

end A219383.P8788769372025982725

/-! ## A219383.P13104850866683215694

`A219381(A167614(n+1))+A185284(n)`
-/

namespace A219383.P13104850866683215694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A167614 (n + 1)).toNat + A185284 n

end

end A219383.P13104850866683215694

/-!
# A219384: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 4Xn array.

The programs for A219384, there is no canonical definition to state claims against.
-/

/-! ## A219384.P12903938975237196356

`A219381(A141214(n)+7)`
-/

namespace A219384.P12903938975237196356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A141214 n + 7).toNat

end

end A219384.P12903938975237196356

/-! ## A219384.P1305472264046018057

`A219381(A052905(n)+9)`
-/

namespace A219384.P1305472264046018057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A052905 n + 9).toNat

end

end A219384.P1305472264046018057

/-! ## A219384.P9402546323202763450

`A219381(A055999(n)+10)`
-/

namespace A219384.P9402546323202763450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A055999 n + 10).toNat

end

end A219384.P9402546323202763450

/-! ## A219384.P12290431542141960799

`A219381(eq[5, A066657(n)])`
-/

namespace A219384.P12290431542141960799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219384.P12290431542141960799

/-! ## A219384.P4107457394878016497

`A219381(A167614(n+2)+1)`
-/

namespace A219384.P4107457394878016497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A167614 (n + 2) + 1).toNat

end

end A219384.P4107457394878016497

/-!
# A219385: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 5Xn array.

The programs for A219385, there is no canonical definition to state claims against.
-/

/-! ## A219385.P246877777293769841

`A219381(A167499(n+3))`
-/

namespace A219385.P246877777293769841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A167499 (n + 3)).toNat

end

end A219385.P246877777293769841

/-! ## A219385.P341262244260438030

`A219381(A155212(n)+13)`
-/

namespace A219385.P341262244260438030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A155212 n + 13).toNat

end

end A219385.P341262244260438030

/-! ## A219385.P7522742896466648091

`A219381(A056000(n)+15)`
-/

namespace A219385.P7522742896466648091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A056000 n + 15).toNat

end

end A219385.P7522742896466648091

/-! ## A219385.P181797095509158053

`A219381(eq[7, A066657(n)])`
-/

namespace A219385.P181797095509158053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219385.P181797095509158053

/-! ## A219385.P16996993971885063019

`A219381(A167614(n+3)+2)`
-/

namespace A219385.P16996993971885063019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A167614 (n + 3) + 2).toNat

end

end A219385.P16996993971885063019

/-!
# A219386: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 6Xn array.

The programs for A219386, there is no canonical definition to state claims against.
-/

/-! ## A219386.P7414809447602399242

`A219381(A056115(n)+21)`
-/

namespace A219386.P7414809447602399242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A056115 n + 21).toNat

end

end A219386.P7414809447602399242

/-! ## A219386.P6096937214275326301

`A219381(A167499(n+4)+1)`
-/

namespace A219386.P6096937214275326301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A167499 (n + 4) + 1).toNat

end

end A219386.P6096937214275326301

/-! ## A219386.P15943366248859480103

`A219381(A167614(n+4)+3)`
-/

namespace A219386.P15943366248859480103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A167614 (n + 4) + 3).toNat

end

end A219386.P15943366248859480103

/-! ## A219386.P6290882324008118379

`A219381(A000096(n+4)+7)`
-/

namespace A219386.P6290882324008118379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A000096 (n + 4) + 7).toNat

end

end A219386.P6290882324008118379

/-!
# A219387: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 7Xn array.

The programs for A219387, there is no canonical definition to state claims against.
-/

/-! ## A219387.P306335482010871218

`A219381(A056119(n)+28)`
-/

namespace A219387.P306335482010871218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A056119 n + 28).toNat

end

end A219387.P306335482010871218

/-! ## A219387.P8942071172168026862

`A219381(eq[11, A066657(n)])`
-/

namespace A219387.P8942071172168026862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219387.P8942071172168026862

/-! ## A219387.P18187711493939013053

`A219381(A168106(n)-n)`
-/

namespace A219387.P18187711493939013053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219381 (A168106 n - (n : ℤ)).toNat

end

end A219387.P18187711493939013053

/-!
# A219389: Numbers k such that 13*k+1 is a square.

The programs for A219389, the canonical program `A219389.P8139600210026434129` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219389 has offset 1).

The definition of A219389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219389.P8139600210026434129

`(A175886(n+1)²-1)/13`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A219389

/-- `(A175886(n+1)²-1)/13` -/
def P8139600210026434129.Spec : Prop :=
  ∀ n, P8139600210026434129.a n = (A219389 (n + 1) : ℚ)

end A219389

/-! ## A219389.P13636990618721048446

`∑[n*(10^and(1, n)+1)]`
-/

namespace A219389.P13636990618721048446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (10 ^ Nat.land 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219389.P13636990618721048446

namespace A219389

/-- `∑[n*(10^and(1, n)+1)]` -/
def P13636990618721048446.Spec : Prop :=
  ∀ n, (P13636990618721048446.a n : ℤ) = A219389 (n + 1)

end A219389

/-! ## A219389.P14245651240023798239

`∑[n*∑[-a(n-1)]]` with `a(0)=2, a(1)=9`
-/

namespace A219389.P14245651240023798239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219389.P14245651240023798239

namespace A219389

/-- `∑[n*∑[-a(n-1)]]` -/
def P14245651240023798239.Spec : Prop :=
  ∀ n, P14245651240023798239.a n = A219389 (n + 1)

end A219389

/-! ## A219389.P15912695808571003945

`(3*round(n/2))²+n²+n`
-/

namespace A219389.P15912695808571003945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.roundAway ((n : ℚ) / 2)) ^ 2 + (n ^ 2 + n : ℤ)

end

end A219389.P15912695808571003945

namespace A219389

/-- `(3*round(n/2))²+n²+n` -/
def P15912695808571003945.Spec : Prop :=
  ∀ n, P15912695808571003945.a n = A219389 (n + 1)

end A219389

/-! ## A219389.P5680331940396756049

`∑[n*(A010691(n)+1)]`
-/

namespace A219389.P5680331940396756049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010691 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219389.P5680331940396756049

namespace A219389

/-- `∑[n*(A010691(n)+1)]` -/
def P5680331940396756049.Spec : Prop :=
  ∀ n, P5680331940396756049.a n = A219389 (n + 1)

end A219389

/-! ## A219389.P2923601275980673196

`∑[n*(A010680(n)+2)]`
-/

namespace A219389.P2923601275980673196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010680 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219389.P2923601275980673196

namespace A219389

/-- `∑[n*(A010680(n)+2)]` -/
def P2923601275980673196.Spec : Prop :=
  ∀ n, P2923601275980673196.a n = A219389 (n + 1)

end A219389

/-! ## A219389.P6249444743037344874

`∑[n*and(11, A280193(n))]`
-/

namespace A219389.P6249444743037344874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 11 (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219389.P6249444743037344874

namespace A219389

/-- `∑[n*and(11, A280193(n))]` -/
def P6249444743037344874.Spec : Prop :=
  ∀ n, P6249444743037344874.a n = A219389 (n + 1)

end A219389

/-! ## A219389.P2364467066961055755

`∑[abs(n-3*n*A010685(n))]`
-/

namespace A219389.P2364467066961055755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 3 * ((n : ℤ) * A010685 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219389.P2364467066961055755

namespace A219389

/-- `∑[abs(n-3*n*A010685(n))]` -/
def P2364467066961055755.Spec : Prop :=
  ∀ n, P2364467066961055755.a n = A219389 (n + 1)

end A219389

/-! ## A219389.P1371881704726626705

`∑[9*n*and(1, n)*A166486(n)+2*n]`
-/

namespace A219389.P1371881704726626705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n * Nat.land 1 n) : ℤ) * A166486 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219389.P1371881704726626705

namespace A219389

/-- `∑[9*n*and(1, n)*A166486(n)+2*n]` -/
def P1371881704726626705.Spec : Prop :=
  ∀ n, P1371881704726626705.a n = A219389 (n + 1)

end A219389

/-! ## A219389.P11687322715042115847

`(A219392(n+1)+A002378(n))/2`
-/

namespace A219389.P11687322715042115847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219392 (n + 1) + A002378 n : ℚ) / 2

end

end A219389.P11687322715042115847

namespace A219389

/-- `(A219392(n+1)+A002378(n))/2` -/
def P11687322715042115847.Spec : Prop :=
  ∀ n, P11687322715042115847.a n = (A219389 (n + 1) : ℚ)

end A219389

/-! ## A219389.P4851609122805101796

`(A219393(n+1)+A001082(n+1))/2`
-/

namespace A219389.P4851609122805101796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219393 (n + 1) + A001082 (n + 1) : ℚ) / 2

end

end A219389.P4851609122805101796

namespace A219389

/-- `(A219393(n+1)+A001082(n+1))/2` -/
def P4851609122805101796.Spec : Prop :=
  ∀ n, P4851609122805101796.a n = (A219389 (n + 1) : ℚ)

end A219389

/-! ## A219389.P8297281667880713482

`(A113802(n+1)-A110654(n))*A110654(n)`
-/

namespace A219389.P8297281667880713482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113802 (n + 1) - A110654 n) * A110654 n

end

end A219389.P8297281667880713482

namespace A219389

/-- `(A113802(n+1)-A110654(n))*A110654(n)` -/
def P8297281667880713482.Spec : Prop :=
  ∀ n, P8297281667880713482.a n = A219389 (n + 1)

end A219389

/-!
# A219390: Numbers k such that 14*k+1 is a square.

The programs for A219390, the canonical program `A219390.P17150077939141016358` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219390 has offset 1).

The definition of A219390 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219191, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219390.P17150077939141016358

`2*A219191(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A219390

/-- `2*A219191(n+1)` -/
def P17150077939141016358.Spec : Prop :=
  ∀ n, P17150077939141016358.a n = A219390 (n + 1)

theorem P17150077939141016358.correct : P17150077939141016358.Spec := by
  intro n
  simp only [A219390, Nat.add_sub_cancel]

end A219390

/-! ## A219390.P1892732852713943258

`∑[2*n*6^(n%2)]`
-/

namespace A219390.P1892732852713943258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * 6 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219390.P1892732852713943258

namespace A219390

/-- `∑[2*n*6^(n%2)]` -/
def P1892732852713943258.Spec : Prop :=
  ∀ n, (P1892732852713943258.a n : ℤ) = A219390 (n + 1)

end A219390

/-! ## A219390.P18391512932547535069

`4*∑[n*(5/gcd(2, n)-2)]`
-/

namespace A219390.P18391512932547535069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (5 / (Nat.gcd 2 n : ℚ) - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219390.P18391512932547535069

namespace A219390

/-- `4*∑[n*(5/gcd(2, n)-2)]` -/
def P18391512932547535069.Spec : Prop :=
  ∀ n, P18391512932547535069.a n = (A219390 (n + 1) : ℚ)

end A219390

/-! ## A219390.P8657754348609020726

`∑[2*n*((2*n+1)%4)!]`
-/

namespace A219390.P8657754348609020726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.factorial ((2 * n + 1) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219390.P8657754348609020726

namespace A219390

/-- `∑[2*n*((2*n+1)%4)!]` -/
def P8657754348609020726.Spec : Prop :=
  ∀ n, (P8657754348609020726.a n : ℤ) = A219390 (n + 1)

end A219390

/-! ## A219390.P1081302937656509219

`∑[2*n*(2*and(1, n)+1)!]`
-/

namespace A219390.P1081302937656509219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.factorial (2 * Nat.land 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219390.P1081302937656509219

namespace A219390

/-- `∑[2*n*(2*and(1, n)+1)!]` -/
def P1081302937656509219.Spec : Prop :=
  ∀ n, (P1081302937656509219.a n : ℤ) = A219390 (n + 1)

end A219390

/-! ## A219390.P9852762573395620949

`3*∑[2*lcm(2, n)]+1-or(1, n)²`
-/

namespace A219390.P9852762573395620949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℕ) : ℤ) - (Nat.lor 1 n ^ 2 : ℤ)

end

end A219390.P9852762573395620949

namespace A219390

/-- `3*∑[2*lcm(2, n)]+1-or(1, n)²` -/
def P9852762573395620949.Spec : Prop :=
  ∀ n, P9852762573395620949.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P14780939888891044127

`4*A057570(n+1)`
-/

namespace A219390.P14780939888891044127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A057570 (n + 1)

end

end A219390.P14780939888891044127

namespace A219390

/-- `4*A057570(n+1)` -/
def P14780939888891044127.Spec : Prop :=
  ∀ n, P14780939888891044127.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P1777933197897156429

`∑[2*lcm(2, A347365(n))]`
-/

namespace A219390.P1777933197897156429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm 2 (A347365 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219390.P1777933197897156429

namespace A219390

/-- `∑[2*lcm(2, A347365(n))]` -/
def P1777933197897156429.Spec : Prop :=
  ∀ n, (P1777933197897156429.a n : ℤ) = A219390 (n + 1)

end A219390

/-! ## A219390.P9009530350737471632

`∑[n*A040035(n+1)]`
-/

namespace A219390.P9009530350737471632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219390.P9009530350737471632

namespace A219390

/-- `∑[n*A040035(n+1)]` -/
def P9009530350737471632.Spec : Prop :=
  ∀ n, P9009530350737471632.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P757973894414532146

`∑[n*(A266327(n)+1)]`
-/

namespace A219390.P757973894414532146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266327 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219390.P757973894414532146

namespace A219390

/-- `∑[n*(A266327(n)+1)]` -/
def P757973894414532146.Spec : Prop :=
  ∀ n, P757973894414532146.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P17145469224329096308

`∑[n*(A010681(n)+2)]`
-/

namespace A219390.P17145469224329096308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010681 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219390.P17145469224329096308

namespace A219390

/-- `∑[n*(A010681(n)+2)]` -/
def P17145469224329096308.Spec : Prop :=
  ∀ n, P17145469224329096308.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P15619430457711076607

`∑[2*n*A010687(n)]`
-/

namespace A219390.P15619430457711076607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A010687 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219390.P15619430457711076607

namespace A219390

/-- `∑[2*n*A010687(n)]` -/
def P15619430457711076607.Spec : Prop :=
  ∀ n, P15619430457711076607.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P15567690033386131459

`2*(A132355(n+1)-∑[n])`
-/

namespace A219390.P15567690033386131459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A132355 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A219390.P15567690033386131459

namespace A219390

/-- `2*(A132355(n+1)-∑[n])` -/
def P15567690033386131459.Spec : Prop :=
  ∀ n, P15567690033386131459.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P12768477785239160798

`∑[2*n*A040011(n+1)]`
-/

namespace A219390.P12768477785239160798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A040011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219390.P12768477785239160798

namespace A219390

/-- `∑[2*n*A040011(n+1)]` -/
def P12768477785239160798.Spec : Prop :=
  ∀ n, P12768477785239160798.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P1738491562288314038

`∑[2*n*abs(2-A010689(n))]`
-/

namespace A219390.P1738491562288314038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * |2 - A010689 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219390.P1738491562288314038

namespace A219390

/-- `∑[2*n*abs(2-A010689(n))]` -/
def P1738491562288314038.Spec : Prop :=
  ∀ n, P1738491562288314038.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P9166210756364919001

`2*∑[n*(A038507(Δ[or(1, n)]+1)-1)]`
-/

namespace A219390.P9166210756364919001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A038507 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219390.P9166210756364919001

namespace A219390

/-- `2*∑[n*(A038507(Δ[or(1, n)]+1)-1)]` -/
def P9166210756364919001.Spec : Prop :=
  ∀ n, P9166210756364919001.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P15122427701260613980

`A152741(n)-A316724(n)`
-/

namespace A219390.P15122427701260613980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152741 n - A316724 n

end

end A219390.P15122427701260613980

namespace A219390

/-- `A152741(n)-A316724(n)` -/
def P15122427701260613980.Spec : Prop :=
  ∀ n, P15122427701260613980.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P10278690064786389377

`A394829(n)+A219190(n+1)`
-/

namespace A219390.P10278690064786389377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394829 n + A219190 (n + 1)

end

end A219390.P10278690064786389377

namespace A219390

/-- `A394829(n)+A219190(n+1)` -/
def P10278690064786389377.Spec : Prop :=
  ∀ n, P10278690064786389377.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P13719878047401878560

`A222964(n+1)-A303814(n)`
-/

namespace A219390.P13719878047401878560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222964 (n + 1) - A303814 n

end

end A219390.P13719878047401878560

namespace A219390

/-- `A222964(n+1)-A303814(n)` -/
def P13719878047401878560.Spec : Prop :=
  ∀ n, P13719878047401878560.a n = A219390 (n + 1)

end A219390

/-! ## A219390.P835460498656080008

`A110654(n)*A113802(n+1)`
-/

namespace A219390.P835460498656080008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n * A113802 (n + 1)

end

end A219390.P835460498656080008

namespace A219390

/-- `A110654(n)*A113802(n+1)` -/
def P835460498656080008.Spec : Prop :=
  ∀ n, P835460498656080008.a n = A219390 (n + 1)

end A219390

/-!
# A219391: Numbers k such that 21*k + 1 is a square.

The programs for A219391, the canonical program `A219391.P9876836619374613419` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219391 has offset 1).

The definition of A219391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219391.P9876836619374613419

`∑[lcm(2, n)]+A057353(n+1)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A219391

/-- `∑[lcm(2, n)]+A057353(n+1)²` -/
def P9876836619374613419.Spec : Prop :=
  ∀ n, P9876836619374613419.a n = A219391 (n + 1)

theorem P9876836619374613419.correct : P9876836619374613419.Spec := by
  intro n
  simp only [A219391, Nat.add_sub_cancel]

end A219391

/-! ## A219391.P3603793677398260373

`A001318(n)+2*A093722(n+1)`
-/

namespace A219391.P3603793677398260373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + 2 * A093722 (n + 1)

end

end A219391.P3603793677398260373

namespace A219391

/-- `A001318(n)+2*A093722(n+1)` -/
def P3603793677398260373.Spec : Prop :=
  ∀ n, P3603793677398260373.a n = A219391 (n + 1)

end A219391

/-! ## A219391.P10516324049039422313

`A152749(n)+A057353(n+1)*A057353(n+1)`
-/

namespace A219391.P10516324049039422313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n + A057353 (n + 1) * A057353 (n + 1)

end

end A219391.P10516324049039422313

namespace A219391

/-- `A152749(n)+A057353(n+1)*A057353(n+1)` -/
def P10516324049039422313.Spec : Prop :=
  ∀ n, P10516324049039422313.a n = A219391 (n + 1)

end A219391

/-! ## A219391.P10802390699656371335

`A154293(n+1)+A152749(n)-A152749(A004526(n))`
-/

namespace A219391.P10802390699656371335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154293 (n + 1) + (A152749 n - A152749 (A004526 n).toNat)

end

end A219391.P10802390699656371335

namespace A219391

/-- `A154293(n+1)+A152749(n)-A152749(A004526(n))` -/
def P10802390699656371335.Spec : Prop :=
  ∀ n, P10802390699656371335.a n = A219391 (n + 1)

end A219391

/-! ## A219391.P11778554304262520397

`2*A001318(A007494(n))-A001318(n)`
-/

namespace A219391.P11778554304262520397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001318 (A007494 n).toNat - A001318 n

end

end A219391.P11778554304262520397

namespace A219391

/-- `2*A001318(A007494(n))-A001318(n)` -/
def P11778554304262520397.Spec : Prop :=
  ∀ n, P11778554304262520397.a n = A219391 (n + 1)

end A219391

/-! ## A219391.P17002455747628123878

`A152749(A007494(n))-A152749(n)/2`
-/

namespace A219391.P17002455747628123878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152749 (A007494 n).toNat : ℚ) - (A152749 n : ℚ) / 2

end

end A219391.P17002455747628123878

namespace A219391

/-- `A152749(A007494(n))-A152749(n)/2` -/
def P17002455747628123878.Spec : Prop :=
  ∀ n, P17002455747628123878.a n = (A219391 (n + 1) : ℚ)

end A219391

/-! ## A219391.P2833391835228082803

`A272104(2*n+1)+A057353(n+1)²`
-/

namespace A219391.P2833391835228082803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272104 (2 * n + 1) + A057353 (n + 1) ^ 2

end

end A219391.P2833391835228082803

namespace A219391

/-- `A272104(2*n+1)+A057353(n+1)²` -/
def P2833391835228082803.Spec : Prop :=
  ∀ n, P2833391835228082803.a n = A219391 (n + 1)

end A219391

/-! ## A219391.P3414071032471159468

`A381847(A001651(n+2))`
-/

namespace A219391.P3414071032471159468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381847 (A001651 (n + 2)).toNat

end

end A219391.P3414071032471159468

namespace A219391

/-- `A381847(A001651(n+2))` -/
def P3414071032471159468.Spec : Prop :=
  ∀ n, P3414071032471159468.a n = A219391 (n + 1)

end A219391

/-! ## A219391.P9449869662636942232

`A381847(A097482(n+2))`
-/

namespace A219391.P9449869662636942232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381847 (A097482 (n + 2)).toNat

end

end A219391.P9449869662636942232

namespace A219391

/-- `A381847(A097482(n+2))` -/
def P9449869662636942232.Spec : Prop :=
  ∀ n, P9449869662636942232.a n = A219391 (n + 1)

end A219391

/-! ## A219391.P15123803182028150802

`A381847(A004526(n+1)+n+2)`
-/

namespace A219391.P15123803182028150802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381847 (A004526 (n + 1) + (n + 2 : ℤ)).toNat

end

end A219391.P15123803182028150802

namespace A219391

/-- `A381847(A004526(n+1)+n+2)` -/
def P15123803182028150802.Spec : Prop :=
  ∀ n, P15123803182028150802.a n = A219391 (n + 1)

end A219391

/-! ## A219391.P13453456969889175546

`A381847(A123108(n+1)+n+2)`
-/

namespace A219391.P13453456969889175546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381847 (A123108 (n + 1) + (n + 2 : ℤ)).toNat

end

end A219391.P13453456969889175546

namespace A219391

/-- `A381847(A123108(n+1)+n+2)` -/
def P13453456969889175546.Spec : Prop :=
  ∀ n, P13453456969889175546.a n = A219391 (n + 1)

end A219391

/-!
# A219392: Numbers k such that 22*k+1 is a square.

The programs for A219392, the canonical program `A219392.P16181210442543853843` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219392 has offset 1).

The definition of A219392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219392.P16181210442543853843

`∑[(9*n%2+1)*2*n]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A219392

/-- `∑[(9*n%2+1)*2*n]` -/
def P16181210442543853843.Spec : Prop :=
  ∀ n, (P16181210442543853843.a n : ℤ) = A219392 (n + 1)

theorem P16181210442543853843.correct : P16181210442543853843.Spec := by
  intro n
  simp only [A219392, Nat.add_sub_cancel]

end A219392

/-! ## A219392.P13249473829026464825

`∑[2*n*A010691(n)]`
-/

namespace A219392.P13249473829026464825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A010691 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219392.P13249473829026464825

namespace A219392

/-- `∑[2*n*A010691(n)]` -/
def P13249473829026464825.Spec : Prop :=
  ∀ n, P13249473829026464825.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P10202468399670280661

`2*(A219389(n+1)-∑[n])`
-/

namespace A219392.P10202468399670280661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A219389 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A219392.P10202468399670280661

namespace A219392

/-- `2*(A219389(n+1)-∑[n])` -/
def P10202468399670280661.Spec : Prop :=
  ∀ n, P10202468399670280661.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P1347133697640019344

`∑[2*n*A040029(n+1)]`
-/

namespace A219392.P1347133697640019344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A040029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219392.P1347133697640019344

namespace A219392

/-- `∑[2*n*A040029(n+1)]` -/
def P1347133697640019344.Spec : Prop :=
  ∀ n, P1347133697640019344.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P12350352105282028358

`(gcd(2, n+1)²+5*n)²-A106390(n+1)`
-/

namespace A219392.P12350352105282028358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 (n + 1) ^ 2 + 5 * n) ^ 2 : ℤ) - A106390 (n + 1)

end

end A219392.P12350352105282028358

namespace A219392

/-- `(gcd(2, n+1)²+5*n)²-A106390(n+1)` -/
def P12350352105282028358.Spec : Prop :=
  ∀ n, P12350352105282028358.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P6111955230333503187

`n*Δ[A195149(n)]-A195149(n)`
-/

namespace A219392.P6111955230333503187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A195149 n

end

end A219392.P6111955230333503187

namespace A219392

/-- `n*Δ[A195149(n)]-A195149(n)` -/
def P6111955230333503187.Spec : Prop :=
  ∀ n, P6111955230333503187.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P15942597005414677632

`A157716(n+1)+A036498(n+1)`
-/

namespace A219392.P15942597005414677632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157716 (n + 1) + A036498 (n + 1)

end

end A219392.P15942597005414677632

namespace A219392

/-- `A157716(n+1)+A036498(n+1)` -/
def P15942597005414677632.Spec : Prop :=
  ∀ n, P15942597005414677632.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P68011324258527589

`A273372(n+1)-A106390(n+1)`
-/

namespace A219392.P68011324258527589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273372 (n + 1) - A106390 (n + 1)

end

end A219392.P68011324258527589

namespace A219392

/-- `A273372(n+1)-A106390(n+1)` -/
def P68011324258527589.Spec : Prop :=
  ∀ n, P68011324258527589.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P8235017136331720299

`2*A219389(n+1)-A002378(n)`
-/

namespace A219392.P8235017136331720299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219389 (n + 1) - A002378 n

end

end A219392.P8235017136331720299

namespace A219392

/-- `2*A219389(n+1)-A002378(n)` -/
def P8235017136331720299.Spec : Prop :=
  ∀ n, P8235017136331720299.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P3953591492132490526

`A168273(n+1)²+2*A152749(n)`
-/

namespace A219392.P3953591492132490526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (n + 1) ^ 2 + 2 * A152749 n

end

end A219392.P3953591492132490526

namespace A219392

/-- `A168273(n+1)²+2*A152749(n)` -/
def P3953591492132490526.Spec : Prop :=
  ∀ n, P3953591492132490526.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P5808963353725204609

`(A219394(n+1)+A219258(n+1))/2`
-/

namespace A219392.P5808963353725204609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219394 (n + 1) + A219258 (n + 1) : ℚ) / 2

end

end A219392.P5808963353725204609

namespace A219392

/-- `(A219394(n+1)+A219258(n+1))/2` -/
def P5808963353725204609.Spec : Prop :=
  ∀ n, P5808963353725204609.a n = (A219392 (n + 1) : ℚ)

end A219392

/-! ## A219392.P5279229951280375442

`(A219396(n+1)+A219259(n+1))/2`
-/

namespace A219392.P5279229951280375442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219396 (n + 1) + A219259 (n + 1) : ℚ) / 2

end

end A219392.P5279229951280375442

namespace A219392

/-- `(A219396(n+1)+A219259(n+1))/2` -/
def P5279229951280375442.Spec : Prop :=
  ∀ n, P5279229951280375442.a n = (A219392 (n + 1) : ℚ)

end A219392

/-! ## A219392.P10023153473652989611

`A001082(n+1)+A219393(n+1)-A002378(n)`
-/

namespace A219392.P10023153473652989611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) + (A219393 (n + 1) - A002378 n)

end

end A219392.P10023153473652989611

namespace A219392

/-- `A001082(n+1)+A219393(n+1)-A002378(n)` -/
def P10023153473652989611.Spec : Prop :=
  ∀ n, P10023153473652989611.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P9141230353230486265

`A219259(n+1)+A132356(n)-A219389(n+1)`
-/

namespace A219392.P9141230353230486265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (n + 1) + (A132356 n - A219389 (n + 1))

end

end A219392.P9141230353230486265

namespace A219392

/-- `A219259(n+1)+A132356(n)-A219389(n+1)` -/
def P9141230353230486265.Spec : Prop :=
  ∀ n, P9141230353230486265.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P16076565467980797656

`A219393(n+1)+A132356(n)-A219257(n+1)`
-/

namespace A219392.P16076565467980797656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219393 (n + 1) + (A132356 n - A219257 (n + 1))

end

end A219392.P16076565467980797656

namespace A219392

/-- `A219393(n+1)+A132356(n)-A219257(n+1)` -/
def P16076565467980797656.Spec : Prop :=
  ∀ n, P16076565467980797656.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P9820348651567041491

`A219389(n+1)+A219396(n+1)-A132356(n)`
-/

namespace A219392.P9820348651567041491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219389 (n + 1) + (A219396 (n + 1) - A132356 n)

end

end A219392.P9820348651567041491

namespace A219392

/-- `A219389(n+1)+A219396(n+1)-A132356(n)` -/
def P9820348651567041491.Spec : Prop :=
  ∀ n, P9820348651567041491.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P5397901329452083266

`A219395(n+1)+A394829(n)-A219190(n+1)`
-/

namespace A219392.P5397901329452083266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219395 (n + 1) + (A394829 n - A219190 (n + 1))

end

end A219392.P5397901329452083266

namespace A219392

/-- `A219395(n+1)+A394829(n)-A219190(n+1)` -/
def P5397901329452083266.Spec : Prop :=
  ∀ n, P5397901329452083266.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P6659323282859893951

`A219257(n+1)+A219390(n+1)-A001082(n+1)`
-/

namespace A219392.P6659323282859893951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A219390 (n + 1) - A001082 (n + 1))

end

end A219392.P6659323282859893951

namespace A219392

/-- `A219257(n+1)+A219390(n+1)-A001082(n+1)` -/
def P6659323282859893951.Spec : Prop :=
  ∀ n, P6659323282859893951.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P14721969160944881721

`A217441(n+1)+A219389(n+1)-A219394(n+1)`
-/

namespace A219392.P14721969160944881721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217441 (n + 1) + (A219389 (n + 1) - A219394 (n + 1))

end

end A219392.P14721969160944881721

namespace A219392

/-- `A217441(n+1)+A219389(n+1)-A219394(n+1)` -/
def P14721969160944881721.Spec : Prop :=
  ∀ n, P14721969160944881721.a n = A219392 (n + 1)

end A219392

/-! ## A219392.P1818536981636761121

`A219389(n+1)+A219393(n+1)-A219390(n+1)`
-/

namespace A219392.P1818536981636761121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219389 (n + 1) + (A219393 (n + 1) - A219390 (n + 1))

end

end A219392.P1818536981636761121

namespace A219392

/-- `A219389(n+1)+A219393(n+1)-A219390(n+1)` -/
def P1818536981636761121.Spec : Prop :=
  ∀ n, P1818536981636761121.a n = A219392 (n + 1)

end A219392

/-!
# A219393: Numbers k such that 23*k+1 is a square.

The programs for A219393, the canonical program `A219393.P3373675219773431637` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219393 has offset 1).

The definition of A219393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219393.P3373675219773431637

`n²+A244631(A110654(n))+n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A219393

/-- `n²+A244631(A110654(n))+n` -/
def P3373675219773431637.Spec : Prop :=
  ∀ n, P3373675219773431637.a n = A219393 (n + 1)

theorem P3373675219773431637.correct : P3373675219773431637.Spec := by
  intro n
  simp only [A219393, Nat.add_sub_cancel]

end A219393

/-! ## A219393.P17346949518738252416

`A219191(n+1)+A157716(n+1)`
-/

namespace A219393.P17346949518738252416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219191 (n + 1) + A157716 (n + 1)

end

end A219393.P17346949518738252416

namespace A219393

/-- `A219191(n+1)+A157716(n+1)` -/
def P17346949518738252416.Spec : Prop :=
  ∀ n, P17346949518738252416.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P1217434312511048128

`A157716(n+1)+2*A057570(n+1)`
-/

namespace A219393.P1217434312511048128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157716 (n + 1) + 2 * A057570 (n + 1)

end

end A219393.P1217434312511048128

namespace A219393

/-- `A157716(n+1)+2*A057570(n+1)` -/
def P1217434312511048128.Spec : Prop :=
  ∀ n, P1217434312511048128.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P15917594088791877399

`2*A219390(n+1)-A036666(n+1)`
-/

namespace A219393.P15917594088791877399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219390 (n + 1) - A036666 (n + 1)

end

end A219393.P15917594088791877399

namespace A219393

/-- `2*A219390(n+1)-A036666(n+1)` -/
def P15917594088791877399.Spec : Prop :=
  ∀ n, P15917594088791877399.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P3578533700214064815

`2*A219394(n+1)-A219257(n+1)`
-/

namespace A219393.P3578533700214064815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219394 (n + 1) - A219257 (n + 1)

end

end A219393.P3578533700214064815

namespace A219393

/-- `2*A219394(n+1)-A219257(n+1)` -/
def P3578533700214064815.Spec : Prop :=
  ∀ n, P3578533700214064815.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P15822962138432259506

`A091998(n+1)²-A175885(n+1)²`
-/

namespace A219393.P15822962138432259506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1) ^ 2 - A175885 (n + 1) ^ 2

end

end A219393.P15822962138432259506

namespace A219393

/-- `A091998(n+1)²-A175885(n+1)²` -/
def P15822962138432259506.Spec : Prop :=
  ∀ n, P15822962138432259506.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P12189645091497435248

`A219394(n+1)+A132356(n)-A002378(n)`
-/

namespace A219393.P12189645091497435248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219394 (n + 1) + (A132356 n - A002378 n)

end

end A219393.P12189645091497435248

namespace A219393

/-- `A219394(n+1)+A132356(n)-A002378(n)` -/
def P12189645091497435248.Spec : Prop :=
  ∀ n, P12189645091497435248.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P7813577495800768958

`A219392(n+1)+A002378(n)-A001082(n+1)`
-/

namespace A219393.P7813577495800768958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219392 (n + 1) + (A002378 n - A001082 (n + 1))

end

end A219393.P7813577495800768958

namespace A219393

/-- `A219392(n+1)+A002378(n)-A001082(n+1)` -/
def P7813577495800768958.Spec : Prop :=
  ∀ n, P7813577495800768958.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P16872372872049499293

`A217441(n+1)+A132356(n)-A219389(n+1)`
-/

namespace A219393.P16872372872049499293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217441 (n + 1) + (A132356 n - A219389 (n + 1))

end

end A219393.P16872372872049499293

namespace A219393

/-- `A217441(n+1)+A132356(n)-A219389(n+1)` -/
def P16872372872049499293.Spec : Prop :=
  ∀ n, P16872372872049499293.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P17161683912247967907

`A219258(n+1)+A132354(n)-A219257(n+1)`
-/

namespace A219393.P17161683912247967907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219258 (n + 1) + (A132354 n - A219257 (n + 1))

end

end A219393.P17161683912247967907

namespace A219393

/-- `A219258(n+1)+A132354(n)-A219257(n+1)` -/
def P17161683912247967907.Spec : Prop :=
  ∀ n, P17161683912247967907.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P17290994260769206792

`A219257(n+1)+A219392(n+1)-A132356(n)`
-/

namespace A219393.P17290994260769206792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A219392 (n + 1) - A132356 n)

end

end A219393.P17290994260769206792

namespace A219393

/-- `A219257(n+1)+A219392(n+1)-A132356(n)` -/
def P17290994260769206792.Spec : Prop :=
  ∀ n, P17290994260769206792.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P6765855462418071913

`A219396(n+1)+A394829(n)-A219190(n+1)`
-/

namespace A219393.P6765855462418071913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219396 (n + 1) + (A394829 n - A219190 (n + 1))

end

end A219393.P6765855462418071913

namespace A219393

/-- `A219396(n+1)+A394829(n)-A219190(n+1)` -/
def P6765855462418071913.Spec : Prop :=
  ∀ n, P6765855462418071913.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P14393021319824001004

`A219257(n+1)+A219394(n+1)-A036666(n+1)`
-/

namespace A219393.P14393021319824001004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A219394 (n + 1) - A036666 (n + 1))

end

end A219393.P14393021319824001004

namespace A219393

/-- `A219257(n+1)+A219394(n+1)-A036666(n+1)` -/
def P14393021319824001004.Spec : Prop :=
  ∀ n, P14393021319824001004.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P2293726292772672449

`A219257(n+1)+A219259(n+1)-A219389(n+1)`
-/

namespace A219393.P2293726292772672449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A219259 (n + 1) - A219389 (n + 1))

end

end A219393.P2293726292772672449

namespace A219393

/-- `A219257(n+1)+A219259(n+1)-A219389(n+1)` -/
def P2293726292772672449.Spec : Prop :=
  ∀ n, P2293726292772672449.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P13480259180195613544

`A219258(n+1)+A219389(n+1)-A219394(n+1)`
-/

namespace A219393.P13480259180195613544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219258 (n + 1) + (A219389 (n + 1) - A219394 (n + 1))

end

end A219393.P13480259180195613544

namespace A219393

/-- `A219258(n+1)+A219389(n+1)-A219394(n+1)` -/
def P13480259180195613544.Spec : Prop :=
  ∀ n, P13480259180195613544.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P17057456262691462490

`A219259(n+1)+A219394(n+1)-A219396(n+1)`
-/

namespace A219393.P17057456262691462490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (n + 1) + (A219394 (n + 1) - A219396 (n + 1))

end

end A219393.P17057456262691462490

namespace A219393

/-- `A219259(n+1)+A219394(n+1)-A219396(n+1)` -/
def P17057456262691462490.Spec : Prop :=
  ∀ n, P17057456262691462490.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P11124594815587375992

`A219392(n+1)+A219395(n+1)-A219394(n+1)`
-/

namespace A219393.P11124594815587375992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219392 (n + 1) + (A219395 (n + 1) - A219394 (n + 1))

end

end A219393.P11124594815587375992

namespace A219393

/-- `A219392(n+1)+A219395(n+1)-A219394(n+1)` -/
def P11124594815587375992.Spec : Prop :=
  ∀ n, P11124594815587375992.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P11719615520690635584

`A219392(n+1)+A219396(n+1)-A219395(n+1)`
-/

namespace A219393.P11719615520690635584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219392 (n + 1) + (A219396 (n + 1) - A219395 (n + 1))

end

end A219393.P11719615520690635584

namespace A219393

/-- `A219392(n+1)+A219396(n+1)-A219395(n+1)` -/
def P11719615520690635584.Spec : Prop :=
  ∀ n, P11719615520690635584.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P2274022682584973138

`A219394(n+1)+A219396(n+1)-A219389(n+1)`
-/

namespace A219393.P2274022682584973138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219394 (n + 1) + (A219396 (n + 1) - A219389 (n + 1))

end

end A219393.P2274022682584973138

namespace A219393

/-- `A219394(n+1)+A219396(n+1)-A219389(n+1)` -/
def P2274022682584973138.Spec : Prop :=
  ∀ n, P2274022682584973138.a n = A219393 (n + 1)

end A219393

/-! ## A219393.P4898716656693299278

`A219395(n+1)+A219395(n+1)-A219389(n+1)`
-/

namespace A219393.P4898716656693299278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219395 (n + 1) + (A219395 (n + 1) - A219389 (n + 1))

end

end A219393.P4898716656693299278

namespace A219393

/-- `A219395(n+1)+A219395(n+1)-A219389(n+1)` -/
def P4898716656693299278.Spec : Prop :=
  ∀ n, P4898716656693299278.a n = A219393 (n + 1)

end A219393

/-!
# A219394: Numbers k such that 17*k+1 is a square.

The programs for A219394, the canonical program `A219394.P2433257764744241428` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219394 has offset 1).

The definition of A219394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219394.P2433257764744241428

`A157716(n+1)+A110660(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A219394

/-- `A157716(n+1)+A110660(n)` -/
def P2433257764744241428.Spec : Prop :=
  ∀ n, P2433257764744241428.a n = A219394 (n + 1)

theorem P2433257764744241428.correct : P2433257764744241428.Spec := by
  intro n
  simp only [A219394, Nat.add_sub_cancel]

end A219394

/-! ## A219394.P8084841210120540955

`A394829(n)+A154260(n+1)`
-/

namespace A219394.P8084841210120540955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394829 n + A154260 (n + 1)

end

end A219394.P8084841210120540955

namespace A219394

/-- `A394829(n)+A154260(n+1)` -/
def P8084841210120540955.Spec : Prop :=
  ∀ n, P8084841210120540955.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P10387993148633126727

`2*A132356(n)-A001082(n+1)`
-/

namespace A219394.P10387993148633126727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132356 n - A001082 (n + 1)

end

end A219394.P10387993148633126727

namespace A219394

/-- `2*A132356(n)-A001082(n+1)` -/
def P10387993148633126727.Spec : Prop :=
  ∀ n, P10387993148633126727.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P14661744192047504904

`(A219258(n+1)+A132354(n))/2`
-/

namespace A219394.P14661744192047504904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219258 (n + 1) + A132354 n : ℚ) / 2

end

end A219394.P14661744192047504904

namespace A219394

/-- `(A219258(n+1)+A132354(n))/2` -/
def P14661744192047504904.Spec : Prop :=
  ∀ n, P14661744192047504904.a n = (A219394 (n + 1) : ℚ)

end A219394

/-! ## A219394.P13179587371930746754

`A036498(n+1)+A219392(n+1)/2`
-/

namespace A219394.P13179587371930746754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036498 (n + 1) : ℚ) + (A219392 (n + 1) : ℚ) / 2

end

end A219394.P13179587371930746754

namespace A219394

/-- `A036498(n+1)+A219392(n+1)/2` -/
def P13179587371930746754.Spec : Prop :=
  ∀ n, P13179587371930746754.a n = (A219394 (n + 1) : ℚ)

end A219394

/-! ## A219394.P1802268135212151086

`2*A219257(n+1)-A036666(n+1)`
-/

namespace A219394.P1802268135212151086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219257 (n + 1) - A036666 (n + 1)

end

end A219394.P1802268135212151086

namespace A219394

/-- `2*A219257(n+1)-A036666(n+1)` -/
def P1802268135212151086.Spec : Prop :=
  ∀ n, P1802268135212151086.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P1641901855218556749

`2*A219390(n+1)-A219257(n+1)`
-/

namespace A219394.P1641901855218556749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219390 (n + 1) - A219257 (n + 1)

end

end A219394.P1641901855218556749

namespace A219394

/-- `2*A219390(n+1)-A219257(n+1)` -/
def P1641901855218556749.Spec : Prop :=
  ∀ n, P1641901855218556749.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P18092954392912900186

`(A219393(n+1)+A219257(n+1))/2`
-/

namespace A219394.P18092954392912900186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219393 (n + 1) + A219257 (n + 1) : ℚ) / 2

end

end A219394.P18092954392912900186

namespace A219394

/-- `(A219393(n+1)+A219257(n+1))/2` -/
def P18092954392912900186.Spec : Prop :=
  ∀ n, P18092954392912900186.a n = (A219394 (n + 1) : ℚ)

end A219394

/-! ## A219394.P9370645521424583906

`2*A219395(n+1)-A219396(n+1)`
-/

namespace A219394.P9370645521424583906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219395 (n + 1) - A219396 (n + 1)

end

end A219394.P9370645521424583906

namespace A219394

/-- `2*A219395(n+1)-A219396(n+1)` -/
def P9370645521424583906.Spec : Prop :=
  ∀ n, P9370645521424583906.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P17620278292653191574

`A056020(n+1)²-A047522(n+1)²`
-/

namespace A219394.P17620278292653191574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1) ^ 2 - A047522 (n + 1) ^ 2

end

end A219394.P17620278292653191574

namespace A219394

/-- `A056020(n+1)²-A047522(n+1)²` -/
def P17620278292653191574.Spec : Prop :=
  ∀ n, P17620278292653191574.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P7485464438194237554

`A219257(n+1)+A132356(n)-A002378(n)`
-/

namespace A219394.P7485464438194237554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A132356 n - A002378 n)

end

end A219394.P7485464438194237554

namespace A219394

/-- `A219257(n+1)+A132356(n)-A002378(n)` -/
def P7485464438194237554.Spec : Prop :=
  ∀ n, P7485464438194237554.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P3775545970902275170

`A219393(n+1)+A002378(n)-A132356(n)`
-/

namespace A219394.P3775545970902275170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219393 (n + 1) + (A002378 n - A132356 n)

end

end A219394.P3775545970902275170

namespace A219394

/-- `A219393(n+1)+A002378(n)-A132356(n)` -/
def P3775545970902275170.Spec : Prop :=
  ∀ n, P3775545970902275170.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P13013885111077489678

`A219392(n+1)+A074378(n)-A394829(n)`
-/

namespace A219394.P13013885111077489678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219392 (n + 1) + (A074378 n - A394829 n)

end

end A219394.P13013885111077489678

namespace A219394

/-- `A219392(n+1)+A074378(n)-A394829(n)` -/
def P13013885111077489678.Spec : Prop :=
  ∀ n, P13013885111077489678.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P6226193208968484864

`A219257(n+1)+A394829(n)-A152749(n)`
-/

namespace A219394.P6226193208968484864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A394829 n - A152749 n)

end

end A219394.P6226193208968484864

namespace A219394

/-- `A219257(n+1)+A394829(n)-A152749(n)` -/
def P6226193208968484864.Spec : Prop :=
  ∀ n, P6226193208968484864.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P13571074828243615401

`A014494(n)+(A299645(n+1)-A014494(n))²`
-/

namespace A219394.P13571074828243615401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n + (A299645 (n + 1) - A014494 n) ^ 2

end

end A219394.P13571074828243615401

namespace A219394

/-- `A014494(n)+(A299645(n+1)-A014494(n))²` -/
def P13571074828243615401.Spec : Prop :=
  ∀ n, P13571074828243615401.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P8279477303957228843

`A001082(n+1)+A219395(n+1)-A002378(n)`
-/

namespace A219394.P8279477303957228843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) + (A219395 (n + 1) - A002378 n)

end

end A219394.P8279477303957228843

namespace A219394

/-- `A001082(n+1)+A219395(n+1)-A002378(n)` -/
def P8279477303957228843.Spec : Prop :=
  ∀ n, P8279477303957228843.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P2282779537685166595

`A219259(n+1)+A132356(n)-A219395(n+1)`
-/

namespace A219394.P2282779537685166595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (n + 1) + (A132356 n - A219395 (n + 1))

end

end A219394.P2282779537685166595

namespace A219394

/-- `A219259(n+1)+A132356(n)-A219395(n+1)` -/
def P2282779537685166595.Spec : Prop :=
  ∀ n, P2282779537685166595.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P16757481923653642816

`A219395(n+1)+A132356(n)-A219257(n+1)`
-/

namespace A219394.P16757481923653642816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219395 (n + 1) + (A132356 n - A219257 (n + 1))

end

end A219394.P16757481923653642816

namespace A219394

/-- `A219395(n+1)+A132356(n)-A219257(n+1)` -/
def P16757481923653642816.Spec : Prop :=
  ∀ n, P16757481923653642816.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P15734781180018120876

`A219389(n+1)+A219390(n+1)-A132356(n)`
-/

namespace A219394.P15734781180018120876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219389 (n + 1) + (A219390 (n + 1) - A132356 n)

end

end A219394.P15734781180018120876

namespace A219394

/-- `A219389(n+1)+A219390(n+1)-A132356(n)` -/
def P15734781180018120876.Spec : Prop :=
  ∀ n, P15734781180018120876.a n = A219394 (n + 1)

end A219394

/-! ## A219394.P5016122530380484623

`A219389(n+1)+A394829(n)-A219190(n+1)`
-/

namespace A219394.P5016122530380484623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219389 (n + 1) + (A394829 n - A219190 (n + 1))

end

end A219394.P5016122530380484623

namespace A219394

/-- `A219389(n+1)+A394829(n)-A219190(n+1)` -/
def P5016122530380484623.Spec : Prop :=
  ∀ n, P5016122530380484623.a n = A219394 (n + 1)

end A219394

/-!
# A219395: Numbers k such that 18*k+1 is a square.

The programs for A219395, the canonical program `A219395.P1764141279713498357` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219395 has offset 1).

The definition of A219395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219395.P17764868784006436437

`∑[n*2^4^(n%2)]`
-/

namespace A219395.P17764868784006436437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ 4 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219395.P17764868784006436437

namespace A219395

/-- `∑[n*2^4^(n%2)]` -/
def P17764868784006436437.Spec : Prop :=
  ∀ n, (P17764868784006436437.a n : ℤ) = A219395 (n + 1)

end A219395

/-! ## A219395.P12129762465695876990

`∑[n*2^gcd(2, n+1)²]`
-/

namespace A219395.P12129762465695876990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ Nat.gcd 2 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219395.P12129762465695876990

namespace A219395

/-- `∑[n*2^gcd(2, n+1)²]` -/
def P12129762465695876990.Spec : Prop :=
  ∀ n, (P12129762465695876990.a n : ℤ) = A219395 (n + 1)

end A219395

/-! ## A219395.P1764141279713498357

`∑[2*n*gcd(8, 1-n²)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A219395

/-- `∑[2*n*gcd(8, 1-n²)]` -/
def P1764141279713498357.Spec : Prop :=
  ∀ n, (P1764141279713498357.a n : ℤ) = A219395 (n + 1)

theorem P1764141279713498357.correct : P1764141279713498357.Spec := by
  intro n
  simp only [A219395, Nat.add_sub_cancel]

end A219395

/-! ## A219395.P12336097953627896626

`∑[n*4^2^-(-1)^n]`
-/

namespace A219395.P12336097953627896626
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (4 : ℝ) ^ ((2 : ℚ) ^ (-((-1) ^ n) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219395.P12336097953627896626

namespace A219395

/-- `∑[n*4^2^-(-1)^n]` -/
def P12336097953627896626.Spec : Prop :=
  ∀ n, P12336097953627896626.a n = (A219395 (n + 1) : ℝ)

end A219395

/-! ## A219395.P3610210832527124250

`2*A394829(n)`
-/

namespace A219395.P3610210832527124250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A394829 n

end

end A219395.P3610210832527124250

namespace A219395

/-- `2*A394829(n)` -/
def P3610210832527124250.Spec : Prop :=
  ∀ n, P3610210832527124250.a n = A219395 (n + 1)

end A219395

/-! ## A219395.P10526318398038251278

`A157716(n+1)+∑[n]`
-/

namespace A219395.P10526318398038251278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157716 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A219395.P10526318398038251278

namespace A219395

/-- `A157716(n+1)+∑[n]` -/
def P10526318398038251278.Spec : Prop :=
  ∀ n, P10526318398038251278.a n = A219395 (n + 1)

end A219395

/-! ## A219395.P5792399358565987916

`A298037(n)-A157142(n)`
-/

namespace A219395.P5792399358565987916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 n - A157142 n

end

end A219395.P5792399358565987916

namespace A219395

/-- `A298037(n)-A157142(n)` -/
def P5792399358565987916.Spec : Prop :=
  ∀ n, P5792399358565987916.a n = A219395 (n + 1)

end A219395

/-! ## A219395.P9432020920225255333

`n*Δ[A195147(n)]-A195147(n)`
-/

namespace A219395.P9432020920225255333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A195147 n

end

end A219395.P9432020920225255333

namespace A219395

/-- `n*Δ[A195147(n)]-A195147(n)` -/
def P9432020920225255333.Spec : Prop :=
  ∀ n, P9432020920225255333.a n = A219395 (n + 1)

end A219395

/-! ## A219395.P7906768437260163371

`2*(A219257(n+1)-A000217(n))`
-/

namespace A219395.P7906768437260163371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A219257 (n + 1) - A000217 n)

end

end A219395.P7906768437260163371

namespace A219395

/-- `2*(A219257(n+1)-A000217(n))` -/
def P7906768437260163371.Spec : Prop :=
  ∀ n, P7906768437260163371.a n = A219395 (n + 1)

end A219395

/-! ## A219395.P9357683749470877724

`2*A219257(n+1)-A002378(n)`
-/

namespace A219395.P9357683749470877724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219257 (n + 1) - A002378 n

end

end A219395.P9357683749470877724

namespace A219395

/-- `2*A219257(n+1)-A002378(n)` -/
def P9357683749470877724.Spec : Prop :=
  ∀ n, P9357683749470877724.a n = A219395 (n + 1)

end A219395

/-! ## A219395.P4491754470564056746

`(A217441(n+1)+A132356(n))/2`
-/

namespace A219395.P4491754470564056746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217441 (n + 1) + A132356 n : ℚ) / 2

end

end A219395.P4491754470564056746

namespace A219395

/-- `(A217441(n+1)+A132356(n))/2` -/
def P4491754470564056746.Spec : Prop :=
  ∀ n, P4491754470564056746.a n = (A219395 (n + 1) : ℚ)

end A219395

/-! ## A219395.P15059383857173652222

`2*A219390(n+1)-A132356(n)`
-/

namespace A219395.P15059383857173652222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219390 (n + 1) - A132356 n

end

end A219395.P15059383857173652222

namespace A219395

/-- `2*A219390(n+1)-A132356(n)` -/
def P15059383857173652222.Spec : Prop :=
  ∀ n, P15059383857173652222.a n = A219395 (n + 1)

end A219395

/-! ## A219395.P11183681241529124023

`(A014601(n)-n)*A056020(n+1)`
-/

namespace A219395.P11183681241529124023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014601 n - (n : ℤ)) * A056020 (n + 1)

end

end A219395.P11183681241529124023

namespace A219395

/-- `(A014601(n)-n)*A056020(n+1)` -/
def P11183681241529124023.Spec : Prop :=
  ∀ n, P11183681241529124023.a n = A219395 (n + 1)

end A219395

/-! ## A219395.P4279796513949072601

`(A219259(n+1)+A219257(n+1))/2`
-/

namespace A219395.P4279796513949072601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219259 (n + 1) + A219257 (n + 1) : ℚ) / 2

end

end A219395.P4279796513949072601

namespace A219395

/-- `(A219259(n+1)+A219257(n+1))/2` -/
def P4279796513949072601.Spec : Prop :=
  ∀ n, P4279796513949072601.a n = (A219395 (n + 1) : ℚ)

end A219395

/-! ## A219395.P9049542313322591237

`(A219393(n+1)+A219389(n+1))/2`
-/

namespace A219395.P9049542313322591237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219393 (n + 1) + A219389 (n + 1) : ℚ) / 2

end

end A219395.P9049542313322591237

namespace A219395

/-- `(A219393(n+1)+A219389(n+1))/2` -/
def P9049542313322591237.Spec : Prop :=
  ∀ n, P9049542313322591237.a n = (A219395 (n + 1) : ℚ)

end A219395

/-! ## A219395.P6618210196468543574

`(A219396(n+1)+A219394(n+1))/2`
-/

namespace A219395.P6618210196468543574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219396 (n + 1) + A219394 (n + 1) : ℚ) / 2

end

end A219395.P6618210196468543574

namespace A219395

/-- `(A219396(n+1)+A219394(n+1))/2` -/
def P6618210196468543574.Spec : Prop :=
  ∀ n, P6618210196468543574.a n = (A219395 (n + 1) : ℚ)

end A219395

/-! ## A219395.P1598345120166752207

`A132355(n+1)+A016766(n-A004526(n))`
-/

namespace A219395.P1598345120166752207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132355 (n + 1) + A016766 ((n : ℤ) - A004526 n).toNat

end

end A219395.P1598345120166752207

namespace A219395

/-- `A132355(n+1)+A016766(n-A004526(n))` -/
def P1598345120166752207.Spec : Prop :=
  ∀ n, P1598345120166752207.a n = A219395 (n + 1)

end A219395

/-! ## A219395.P1179297740102791489

`A036666(n+1)+A219394(n+1)-A002378(n)`
-/

namespace A219395.P1179297740102791489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1) + (A219394 (n + 1) - A002378 n)

end

end A219395.P1179297740102791489

namespace A219395

/-- `A036666(n+1)+A219394(n+1)-A002378(n)` -/
def P1179297740102791489.Spec : Prop :=
  ∀ n, P1179297740102791489.a n = A219395 (n + 1)

end A219395

/-! ## A219395.P4784592579104958224

`A219396(n+1)+A002378(n)-A036666(n+1)`
-/

namespace A219395.P4784592579104958224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219396 (n + 1) + (A002378 n - A036666 (n + 1))

end

end A219395.P4784592579104958224

namespace A219395

/-- `A219396(n+1)+A002378(n)-A036666(n+1)` -/
def P4784592579104958224.Spec : Prop :=
  ∀ n, P4784592579104958224.a n = A219395 (n + 1)

end A219395

/-! ## A219395.P9725896347549900097

`A219258(n+1)+A002378(n)-A219389(n+1)`
-/

namespace A219395.P9725896347549900097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219258 (n + 1) + (A002378 n - A219389 (n + 1))

end

end A219395.P9725896347549900097

namespace A219395

/-- `A219258(n+1)+A002378(n)-A219389(n+1)` -/
def P9725896347549900097.Spec : Prop :=
  ∀ n, P9725896347549900097.a n = A219395 (n + 1)

end A219395

/-!
# A219396: Numbers k such that 19*k+1 is a square.

The programs for A219396, the canonical program `A219396.P4988743678884669320` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219396 has offset 1).

The definition of A219396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219396.P4988743678884669320

`∑[n*(gcd(2, n+1)^4+1)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A219396

/-- `∑[n*(gcd(2, n+1)^4+1)]` -/
def P4988743678884669320.Spec : Prop :=
  ∀ n, (P4988743678884669320.a n : ℤ) = A219396 (n + 1)

theorem P4988743678884669320.correct : P4988743678884669320.Spec := by
  intro n
  simp only [A219396, Nat.add_sub_cancel]

end A219396

/-! ## A219396.P4519801190895887989

`∑[n*(gcd(4, (n+1)²)²+1)]`
-/

namespace A219396.P4519801190895887989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 4 ((n + 1) ^ 2) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219396.P4519801190895887989

namespace A219396

/-- `∑[n*(gcd(4, (n+1)²)²+1)]` -/
def P4519801190895887989.Spec : Prop :=
  ∀ n, (P4519801190895887989.a n : ℤ) = A219396 (n + 1)

end A219396

/-! ## A219396.P8059501140561911185

`A157716(n+1)+A152749(n)`
-/

namespace A219396.P8059501140561911185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157716 (n + 1) + A152749 n

end

end A219396.P8059501140561911185

namespace A219396

/-- `A157716(n+1)+A152749(n)` -/
def P8059501140561911185.Spec : Prop :=
  ∀ n, P8059501140561911185.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P2677465398741764292

`∑[n*(A040240(n)-A040211(n))]`
-/

namespace A219396.P2677465398741764292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A040240 n - A040211 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219396.P2677465398741764292

namespace A219396

/-- `∑[n*(A040240(n)-A040211(n))]` -/
def P2677465398741764292.Spec : Prop :=
  ∀ n, P2677465398741764292.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P17811108438595917978

`A273372(n+1)-A061099(n+1)`
-/

namespace A219396.P17811108438595917978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273372 (n + 1) - A061099 (n + 1)

end

end A219396.P17811108438595917978

namespace A219396

/-- `A273372(n+1)-A061099(n+1)` -/
def P17811108438595917978.Spec : Prop :=
  ∀ n, P17811108438595917978.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P9889658165969125819

`A157716(n+1)+2*A001318(n)`
-/

namespace A219396.P9889658165969125819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157716 (n + 1) + 2 * A001318 n

end

end A219396.P9889658165969125819

namespace A219396

/-- `A157716(n+1)+2*A001318(n)` -/
def P9889658165969125819.Spec : Prop :=
  ∀ n, P9889658165969125819.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P9425432731271867512

`A132356(n)+(A047208(n+1)-n)²`
-/

namespace A219396.P9425432731271867512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n + (A047208 (n + 1) - (n : ℤ)) ^ 2

end

end A219396.P9425432731271867512

namespace A219396

/-- `A132356(n)+(A047208(n+1)-n)²` -/
def P9425432731271867512.Spec : Prop :=
  ∀ n, P9425432731271867512.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P9027341780816734141

`2*A219257(n+1)-A001082(n+1)`
-/

namespace A219396.P9027341780816734141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219257 (n + 1) - A001082 (n + 1)

end

end A219396.P9027341780816734141

namespace A219396

/-- `2*A219257(n+1)-A001082(n+1)` -/
def P9027341780816734141.Spec : Prop :=
  ∀ n, P9027341780816734141.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P5074711480458960148

`(A219258(n+1)+A219257(n+1))/2`
-/

namespace A219396.P5074711480458960148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219258 (n + 1) + A219257 (n + 1) : ℚ) / 2

end

end A219396.P5074711480458960148

namespace A219396

/-- `(A219258(n+1)+A219257(n+1))/2` -/
def P5074711480458960148.Spec : Prop :=
  ∀ n, P5074711480458960148.a n = (A219396 (n + 1) : ℚ)

end A219396

/-! ## A219396.P9895929991122264591

`2*A219392(n+1)-A219259(n+1)`
-/

namespace A219396.P9895929991122264591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219392 (n + 1) - A219259 (n + 1)

end

end A219396.P9895929991122264591

namespace A219396

/-- `2*A219392(n+1)-A219259(n+1)` -/
def P9895929991122264591.Spec : Prop :=
  ∀ n, P9895929991122264591.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P4636906782025204934

`2*A219393(n+1)-A219258(n+1)`
-/

namespace A219396.P4636906782025204934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219393 (n + 1) - A219258 (n + 1)

end

end A219396.P4636906782025204934

namespace A219396

/-- `2*A219393(n+1)-A219258(n+1)` -/
def P4636906782025204934.Spec : Prop :=
  ∀ n, P4636906782025204934.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P17339659848187663856

`(A219389(n+1)+A219259(n+1))/2`
-/

namespace A219396.P17339659848187663856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219389 (n + 1) + A219259 (n + 1) : ℚ) / 2

end

end A219396.P17339659848187663856

namespace A219396

/-- `(A219389(n+1)+A219259(n+1))/2` -/
def P17339659848187663856.Spec : Prop :=
  ∀ n, P17339659848187663856.a n = (A219396 (n + 1) : ℚ)

end A219396

/-! ## A219396.P8022274664295457064

`2*A219395(n+1)-A219394(n+1)`
-/

namespace A219396.P8022274664295457064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219395 (n + 1) - A219394 (n + 1)

end

end A219396.P8022274664295457064

namespace A219396

/-- `2*A219395(n+1)-A219394(n+1)` -/
def P8022274664295457064.Spec : Prop :=
  ∀ n, P8022274664295457064.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P8191438695691589395

`A090771(n+1)²-A056020(n+1)²`
-/

namespace A219396.P8191438695691589395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) ^ 2 - A056020 (n + 1) ^ 2

end

end A219396.P8191438695691589395

namespace A219396

/-- `A090771(n+1)²-A056020(n+1)²` -/
def P8191438695691589395.Spec : Prop :=
  ∀ n, P8191438695691589395.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P8958752197352166057

`A219389(n+1)+A132356(n)-A002378(n)`
-/

namespace A219396.P8958752197352166057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219389 (n + 1) + (A132356 n - A002378 n)

end

end A219396.P8958752197352166057

namespace A219396

/-- `A219389(n+1)+A132356(n)-A002378(n)` -/
def P8958752197352166057.Spec : Prop :=
  ∀ n, P8958752197352166057.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P17319643249276772786

`A219395(n+1)+A002378(n)-A001082(n+1)`
-/

namespace A219396.P17319643249276772786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219395 (n + 1) + (A002378 n - A001082 (n + 1))

end

end A219396.P17319643249276772786

namespace A219396

/-- `A219395(n+1)+A002378(n)-A001082(n+1)` -/
def P17319643249276772786.Spec : Prop :=
  ∀ n, P17319643249276772786.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P11139667128603585416

`A219390(n+1)+A132356(n)-A036666(n+1)`
-/

namespace A219396.P11139667128603585416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219390 (n + 1) + (A132356 n - A036666 (n + 1))

end

end A219396.P11139667128603585416

namespace A219396

/-- `A219390(n+1)+A132356(n)-A036666(n+1)` -/
def P11139667128603585416.Spec : Prop :=
  ∀ n, P11139667128603585416.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P14070687964469348206

`A219191(n+1)+A219390(n+1)-A000217(n)`
-/

namespace A219396.P14070687964469348206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219191 (n + 1) + (A219390 (n + 1) - A000217 n)

end

end A219396.P14070687964469348206

namespace A219396

/-- `A219191(n+1)+A219390(n+1)-A000217(n)` -/
def P14070687964469348206.Spec : Prop :=
  ∀ n, P14070687964469348206.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P10663944430585544543

`A217441(n+1)+A132356(n)-A219394(n+1)`
-/

namespace A219396.P10663944430585544543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217441 (n + 1) + (A132356 n - A219394 (n + 1))

end

end A219396.P10663944430585544543

namespace A219396

/-- `A217441(n+1)+A132356(n)-A219394(n+1)` -/
def P10663944430585544543.Spec : Prop :=
  ∀ n, P10663944430585544543.a n = A219396 (n + 1)

end A219396

/-! ## A219396.P10393146371629518571

`A219257(n+1)+A219395(n+1)-A132356(n)`
-/

namespace A219396.P10393146371629518571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A219395 (n + 1) - A132356 n)

end

end A219396.P10393146371629518571

namespace A219396

/-- `A219257(n+1)+A219395(n+1)-A132356(n)` -/
def P10393146371629518571.Spec : Prop :=
  ∀ n, P10393146371629518571.a n = A219396 (n + 1)

end A219396

/-!
# A219397: Unchanging value maps: number of n X n binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..1 n X n array.

The programs for A219397, there is no canonical definition to state claims against.
-/

/-! ## A219397.P6578061754252247000

`A219403(∑[4*n]+1)`
-/

namespace A219397.P6578061754252247000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219397.P6578061754252247000

/-! ## A219397.P4436415519845720802

`record[(1-abs(round(sqrt(2*(n+1)))²-(2*n+1)))*A219403(n+1)]`
-/

namespace A219397.P4436415519845720802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|) * A219403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219397.P4436415519845720802

/-! ## A219397.P6664423846640781949

`record[A219403(A330613(n+1))]`
-/

namespace A219397.P6664423846640781949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219397.P6664423846640781949

/-! ## A219397.P18393313507767337448

`A219403(A001844(n))+char[10]`
-/

namespace A219397.P18393313507767337448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219397.P18393313507767337448

/-! ## A219397.P5787011967520199878

`record[A219403(Δ[A079824(n+1)])]`
-/

namespace A219397.P5787011967520199878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219397.P5787011967520199878

/-!
# A219398: Unchanging value maps: number of n X 3 binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..1 n X 3 array.

The programs for A219398, there is no canonical definition to state claims against.
-/

/-! ## A219398.P11414288721049494790

`A219403(∑[n+2]+4)`
-/

namespace A219398.P11414288721049494790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219398.P11414288721049494790

/-! ## A219398.P13464744805793426551

`A219403(A000217(n+2)+3)+char[20]`
-/

namespace A219398.P13464744805793426551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219398.P13464744805793426551

/-! ## A219398.P17147231697263513169

`(A219403(A055998(n)+6)^sqrt(1/4))²`
-/

namespace A219398.P17147231697263513169
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A219403 (A055998 n + 6).toNat : ℝ) ^ (Real.sqrt ((1 : ℚ) / 4 : ℝ))) ^ 2

end

end A219398.P17147231697263513169

/-! ## A219398.P10513624471337643512

`A219403(A167614(n+1))+A025443(n)`
-/

namespace A219398.P10513624471337643512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A167614 (n + 1)).toNat + A025443 n

end

end A219398.P10513624471337643512

/-! ## A219398.P726124161227424957

`A219403(A167614(n+1))+A178798(n)`
-/

namespace A219398.P726124161227424957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A167614 (n + 1)).toNat + A178798 n

end

end A219398.P726124161227424957

/-!
# A219399: Unchanging value maps: number of nX4 binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..1 nX4 array.

The programs for A219399, there is no canonical definition to state claims against.
-/

/-! ## A219399.P1928940457823985681

`A219403(∑[n+3]+7)`
-/

namespace A219399.P1928940457823985681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219399.P1928940457823985681

/-! ## A219399.P12508078343629711654

`or(1, A219403(A141214(n)+7))`
-/

namespace A219399.P12508078343629711654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219403 (A141214 n + 7).toNat)

end

end A219399.P12508078343629711654

/-! ## A219399.P14177319870699829356

`or(1, A219403(A055999(n)+10))`
-/

namespace A219399.P14177319870699829356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219403 (A055999 n + 10).toNat)

end

end A219399.P14177319870699829356

/-! ## A219399.P8876408861917404060

`or(1, A219403(A167614(n+2)+1))`
-/

namespace A219399.P8876408861917404060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219403 (A167614 (n + 2) + 1).toNat)

end

end A219399.P8876408861917404060

/-! ## A219399.P13758309750252348966

`or(1, A219403(A034856(n+2)+6))`
-/

namespace A219399.P13758309750252348966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219403 (A034856 (n + 2) + 6).toNat)

end

end A219399.P13758309750252348966

