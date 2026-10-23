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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

/-!
# A337800: Numbers of the form (2^i)*(3^j) or (2^i)*(5^j).

The programs for A337800, there is no canonical definition to state claims against.
-/

/-! ## A337800.P1664907886882690699

`∪[A003592(n+1), ∑[A061987(n)]]`
-/

namespace A337800.P1664907886882690699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337800.P1664907886882690699

/-! ## A337800.P12085159039017888543

`∪[A003592(n+1), Δ[A259823(n)]]`
-/

namespace A337800.P12085159039017888543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337800.P12085159039017888543

/-! ## A337800.P17658151061473447089

`∪[A003586(n+1), A003592(n+1)]`
-/

namespace A337800.P17658151061473447089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337800.P17658151061473447089

/-! ## A337800.P9085110885522659208

`∪[A003592(n+1), A065119(n+1)]`
-/

namespace A337800.P9085110885522659208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337800.P9085110885522659208

/-! ## A337800.P455179506560020708

`∪[A003586(n+1), A086761(n+1)]`
-/

namespace A337800.P455179506560020708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337800.P455179506560020708

/-! ## A337800.P12619112665031131130

`∪[A158911(n+1)+1, ∑[A061987(n)]]`
-/

namespace A337800.P12619112665031131130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337800.P12619112665031131130

/-! ## A337800.P11180730334929470582

`∪[A003592(n+1), A055600(n+1)-1]`
-/

namespace A337800.P11180730334929470582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337800.P11180730334929470582

/-! ## A337800.P477247451449891010

`∪[A003586(n+1), A164768(n)+a(n-1)]` with `a(0)=1`
-/

namespace A337800.P477247451449891010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A164768 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337800.P477247451449891010

/-! ## A337800.P13288850461229657442

`∪[A065119(n+1), A164768(n)+a(n-1)]` with `a(0)=1`
-/

namespace A337800.P13288850461229657442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A164768 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337800.P13288850461229657442

/-! ## A337800.P13086261507774704378

`∩[A051037(n+1), A302593(n+1)]`
-/

namespace A337800.P13086261507774704378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337800.P13086261507774704378

/-! ## A337800.P8679421967525526017

`∩[A257997(n+1), A302593(n+1)]`
-/

namespace A337800.P8679421967525526017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337800.P8679421967525526017

/-! ## A337800.P1348975486116163686

`filter[A051037(n+1), A340363(#)]`
-/

namespace A337800.P1348975486116163686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A337800.P1348975486116163686

/-! ## A337800.P13086097639922163313

`filter[A097752(n+1), A340363(#)]`
-/

namespace A337800.P13086097639922163313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A337800.P13086097639922163313

/-! ## A337800.P2884296399750380371

`filter[A257997(n+1), A340363(#)]`
-/

namespace A337800.P2884296399750380371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A337800.P2884296399750380371

/-! ## A337800.P16067093283624171960

`record[A273943(A257997(n+1))]`
-/

namespace A337800.P16067093283624171960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A257997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337800.P16067093283624171960

/-! ## A337800.P12952137356335719977

`lt[A318884(n+1), 6]+1`
-/

namespace A337800.P12952137356335719977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A337800.P12952137356335719977

/-! ## A337800.P8202056893965320065

`lt[A000010(A007947(n+1)), 5]+1`
-/

namespace A337800.P8202056893965320065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A337800.P8202056893965320065

/-!
# A337801: Numbers of the form (2^i)*(5^j) or (3^i)*(5^j).

The programs for A337801, there is no canonical definition to state claims against.
-/

/-! ## A337801.P1688801003593177485

`∪[A003592(n+1), A003593(n+1)]`
-/

namespace A337801.P1688801003593177485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337801.P1688801003593177485

/-! ## A337801.P4550475658249633161

`record[A051037(n+1)%lcm(6, A051037(n+1))]`
-/

namespace A337801.P4550475658249633161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051037 (n + 1)) (Int.lcm 6 (A051037 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337801.P4550475658249633161

/-! ## A337801.P3087563832665044669

`filter[A051037(n+1), A097325(#)]`
-/

namespace A337801.P3087563832665044669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A337801.P3087563832665044669

/-! ## A337801.P6637687154734005243

`filter[A257997(n+1), A097325(#)]`
-/

namespace A337801.P6637687154734005243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A337801.P6637687154734005243

/-! ## A337801.P12707486127780973527

`∩[A051037(n+1), A320340(n+1)]`
-/

namespace A337801.P12707486127780973527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337801.P12707486127780973527

/-! ## A337801.P15019075589952757090

`∩[A097752(n+1), A320340(n+1)]`
-/

namespace A337801.P15019075589952757090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337801.P15019075589952757090

/-! ## A337801.P2907682182962336772

`∩[A257997(n+1), A320340(n+1)]`
-/

namespace A337801.P2907682182962336772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337801.P2907682182962336772

/-! ## A337801.P8423202163974329032

`∩[A047253(n+1), A051037(n+1)]`
-/

namespace A337801.P8423202163974329032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337801.P8423202163974329032

/-!
# A337802: Minimum value of the cyclic self-convolution of the first n terms of the characteristic function of primes.

The programs for A337802, there is no canonical definition to state claims against.
-/

/-! ## A337802.P634442549606663957

`char[A338132(n+1)-1]`
-/

namespace A337802.P634442549606663957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338132 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P634442549606663957

/-! ## A337802.P18172151543766043942

`char[A000010(A338132(n+1))]`
-/

namespace A337802.P18172151543766043942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A338132 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P18172151543766043942

/-! ## A337802.P6318397052254409133

`char[A173557(A338132(n+1)²)]`
-/

namespace A337802.P6318397052254409133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A338132 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P6318397052254409133

/-! ## A337802.P17802445195235253427

`char[A003958(p?[A338132(n+1)])]`
-/

namespace A337802.P17802445195235253427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P17802445195235253427

/-! ## A337802.P1173827043496797354

`char[A004442(p?[A338132(n+1)])]`
-/

namespace A337802.P1173827043496797354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P1173827043496797354

/-! ## A337802.P7720809759640602306

`char[A010848(p?[A338132(n+1)])]`
-/

namespace A337802.P7720809759640602306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P7720809759640602306

/-! ## A337802.P2599459532848088962

`char[A014684(p?[A338132(n+1)])]`
-/

namespace A337802.P2599459532848088962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P2599459532848088962

/-! ## A337802.P4725283837150801866

`char[A023443(p?[A338132(n+1)])]`
-/

namespace A337802.P4725283837150801866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P4725283837150801866

/-! ## A337802.P4550252785169007288

`char[A056737(p?[A338132(n+1)])]`
-/

namespace A337802.P4550252785169007288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P4550252785169007288

/-! ## A337802.P13831138525534467764

`char[A094471(p?[A338132(n+1)])]`
-/

namespace A337802.P13831138525534467764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P13831138525534467764

/-! ## A337802.P12871382443283523212

`char[A280701(p?[A338132(n+1)])]`
-/

namespace A337802.P12871382443283523212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280701 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P12871382443283523212

/-! ## A337802.P2244002587192781363

`char[A173557(2*A338132(n+1))]`
-/

namespace A337802.P2244002587192781363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (2 * A338132 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P2244002587192781363

/-! ## A337802.P10377207452630275384

`char[A023443(n*char[A338132(n+1)])]`
-/

namespace A337802.P10377207452630275384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338132 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P10377207452630275384

/-! ## A337802.P12248211439784965847

`char[A080736(A338132(A020915(n)))]`
-/

namespace A337802.P12248211439784965847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080736 (A338132 (A020915 n).toNat).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P12248211439784965847

/-! ## A337802.P8564221060676090206

`char[A173557(A338132(A028310(n)))]`
-/

namespace A337802.P8564221060676090206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A338132 (A028310 n).toNat).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337802.P8564221060676090206

/-!
# A337803: Odd integers k not divisible by 5, such that dr(k) divides k-1 or k+1, where dr(k) is the additive digital root of k (A010888).

The programs for A337803, there is no canonical definition to state claims against.
-/

/-! ## A337803.P2363412716976375173

`record[A330741(A272595(n+1))]`
-/

namespace A337803.P2363412716976375173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (A272595 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337803.P2363412716976375173

/-! ## A337803.P13296624226672542728

`filter[A135777(n+1), A118009(#)]`
-/

namespace A337803.P13296624226672542728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118009 (f1 j).toNat = 1) n)

end

end A337803.P13296624226672542728

/-! ## A337803.P1538396746992112268

`∩[A135777(n+1), A160992(n+1)]`
-/

namespace A337803.P1538396746992112268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337803.P1538396746992112268

/-! ## A337803.P7808728023517778849

`lt[A292564(A200976(n)), A155998(n)]`
-/

namespace A337803.P7808728023517778849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292564 (A200976 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337803.P7808728023517778849

/-! ## A337803.P6650270827098407113

`eq[A040491(n), A309873(A115936(n+1))]`
-/

namespace A337803.P6650270827098407113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A115936 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337803.P6650270827098407113

/-!
# A337805: Lazy Beaver Problem: a(n) is the smallest positive number of steps a(n) such that no n-state Turing machine halts in exactly a(n) steps on an initially blank tape.

The programs for A337805, there is no canonical definition to state claims against.
-/

/-! ## A337805.P17576953214242118893

`A189641(A052873(n)+A000041(3*n+4))`
-/

namespace A337805.P17576953214242118893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189641 (A052873 n + A000041 (3 * n + 4)).toNat

end

end A337805.P17576953214242118893

/-!
# A337806: Numbers that are a divisor of the product of the differences of its consecutive divisors.

The programs for A337806, there is no canonical definition to state claims against.
-/

/-! ## A337806.P6195783676262264247

`lt[A002828(A234523(n+1)), A277692(n+1)]`
-/

namespace A337806.P6195783676262264247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A234523 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337806.P6195783676262264247

/-! ## A337806.P11168308212273492746

`lt[A318995(A073165(n)), A160086(n)]`
-/

namespace A337806.P11168308212273492746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A073165 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337806.P11168308212273492746

/-! ## A337806.P2978559263361894562

`lt[A061885(A083064(n))+2, A284289(n)²]`
-/

namespace A337806.P2978559263361894562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (A083064 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337806.P2978559263361894562

/-! ## A337806.P1890268637716788064

`lt[A134332(2*(n+1)), A000120(n)]+1`
-/

namespace A337806.P1890268637716788064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134332 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337806.P1890268637716788064

/-! ## A337806.P10033124279149977503

`lt[A098158(n), A080940(A353851(n))]`
-/

namespace A337806.P10033124279149977503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (A353851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337806.P10033124279149977503

/-!
# A337807: O.g.f.: 1/(1 - x/(1 - 2^5*x/(1 - 3^5*x/(1 - 4^5*x/(1 - 5^5*x/(1 - 6^5*x/(1 -...))))))), a continued fraction.

The programs for A337807, there is no canonical definition to state claims against.
-/

/-! ## A337807.P13104054797032129390

`A290569(eq[6, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A337807.P13104054797032129390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337807.P13104054797032129390

/-!
# A337810: Numbers k such that the number of prime factors, counted with multiplicity, of 2^k - 1 is less than the corresponding count for 2^k + 1.

The programs for A337810, there is no canonical definition to state claims against.
-/

/-! ## A337810.P18138031855655789975

`lt[A046051(n+1), A054992(n+1)]+1`
-/

namespace A337810.P18138031855655789975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337810.P18138031855655789975

/-! ## A337810.P2154033675705407995

`lt[A162298(A050932(n+3)), A080305(n+4)]`
-/

namespace A337810.P2154033675705407995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162298 (A050932 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337810.P2154033675705407995

/-!
# A337811: Numbers k such that the number of distinct prime factors of 2^k - 1 is less than the corresponding count for 2^k + 1.

The programs for A337811, there is no canonical definition to state claims against.
-/

/-! ## A337811.P4742684648339654722

`lt[2*A046800(n), A046800(2*n)]`
-/

namespace A337811.P4742684648339654722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337811.P4742684648339654722

/-! ## A337811.P10989932437408627380

`lt[A046800(n+1), A046799(n+1)]+1`
-/

namespace A337811.P10989932437408627380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337811.P10989932437408627380

/-! ## A337811.P11995282802974192243

`lt[A046800(n), A324119(A001747(n+1))]`
-/

namespace A337811.P11995282802974192243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324119 (A001747 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337811.P11995282802974192243

/-! ## A337811.P7275245615879446852

`lt[A005843(A046800(n)), A046800(2*n)]`
-/

namespace A337811.P7275245615879446852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A046800 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337811.P7275245615879446852

/-!
# A337812: Numbers k such that the number of prime factors, counted with multiplicity, of 2^k - 1 is greater than the corresponding count for 2^k + 1.

The programs for A337812, there is no canonical definition to state claims against.
-/

/-! ## A337812.P8545822620027669847

`lt[A054992(n+1), A046051(n+1)]+1`
-/

namespace A337812.P8545822620027669847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337812.P8545822620027669847

/-! ## A337812.P11353151466126849860

`A020725(lt[A054992(n+1), A046051(n+1)])`
-/

namespace A337812.P11353151466126849860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A337812.P11353151466126849860

/-! ## A337812.P15695953578839414944

`lt[A342656(A073582(n+1)), A046051(n+1)]+1`
-/

namespace A337812.P15695953578839414944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (A073582 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337812.P15695953578839414944

/-! ## A337812.P3902699452353367514

`record[A247074(A092629(n+8))]`
-/

namespace A337812.P3902699452353367514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (A092629 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337812.P3902699452353367514

/-! ## A337812.P1839294085744412940

`A058825(A187829(n+1)+2)`
-/

namespace A337812.P1839294085744412940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058825 (A187829 (n + 1) + 2).toNat

end

end A337812.P1839294085744412940

/-!
# A337813: Numbers k such that the number of distinct prime factors of 2^k - 1 is greater than the corresponding count for 2^k + 1.

The programs for A337813, there is no canonical definition to state claims against.
-/

/-! ## A337813.P10220092449962412965

`lt[A046799(n), A046800(n)]`
-/

namespace A337813.P10220092449962412965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337813.P10220092449962412965

/-! ## A337813.P18072676915039487326

`lt[A046800(2*n), 2*A046800(n)]`
-/

namespace A337813.P18072676915039487326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337813.P18072676915039487326

/-! ## A337813.P12070580971576365417

`lt[A324119(A001747(n+1)), A046800(n)]`
-/

namespace A337813.P12070580971576365417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324119 (A001747 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337813.P12070580971576365417

/-! ## A337813.P5292705743470758317

`lt[A322811(A073582(n+1)), A046800(n)]`
-/

namespace A337813.P5292705743470758317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A073582 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337813.P5292705743470758317

/-! ## A337813.P12450802018275841940

`lt[A322811(A100484(n+1)), A046800(n)]`
-/

namespace A337813.P12450802018275841940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A100484 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337813.P12450802018275841940

/-! ## A337813.P2713737342907001160

`lt[A324119(A161344(n+1)), A046800(n)]`
-/

namespace A337813.P2713737342907001160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324119 (A161344 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337813.P2713737342907001160

/-! ## A337813.P15329809637773097575

`lt[A322811(A161344(n+2)), A046800(n)]`
-/

namespace A337813.P15329809637773097575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A161344 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337813.P15329809637773097575

/-! ## A337813.P13483341303992804147

`lt[A046800(2*n), A005843(A046800(n))]`
-/

namespace A337813.P13483341303992804147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A046800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337813.P13483341303992804147

/-! ## A337813.P15795446645097543694

`lt[A046800(A005843(n))/2, A046800(n)]`
-/

namespace A337813.P15795446645097543694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046800 (A005843 n).toNat : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A337813.P15795446645097543694

/-!
# A337815: Primes p such that p+q = r*(s+1) where q is the next prime after p, and r and s are primes.

The programs for A337815, there is no canonical definition to state claims against.
-/

/-! ## A337815.P1785991168102242514

`∩[A091305(n+1), A099649(n+1)]`
-/

namespace A337815.P1785991168102242514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337815.P1785991168102242514

/-! ## A337815.P7346057976248349899

`p?[record[A002374(n+3)-A277581(n+2)]]`
-/

namespace A337815.P7346057976248349899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (n + 3) - A277581 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337815.P7346057976248349899

/-! ## A337815.P15366829384864731864

`A006530(A119636(n)*A147813(n+1))`
-/

namespace A337815.P15366829384864731864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A119636 n * A147813 (n + 1)).toNat

end

end A337815.P15366829384864731864

/-! ## A337815.P11117519304688991284

`A006530(lcm(A119636(n), A147813(n+1)))`
-/

namespace A337815.P11117519304688991284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A119636 n) (A147813 (n + 1)))

end

end A337815.P11117519304688991284

/-! ## A337815.P14343610029385006651

`A091305(∑[A091318(6^floor(n/2))])`
-/

namespace A337815.P14343610029385006651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091318 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091305 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337815.P14343610029385006651

/-!
# A337816: Numbers that can be written as (m * sum of digits of m) for some m.

The programs for A337816, there is no canonical definition to state claims against.
-/

/-! ## A337816.P12018979144569450852

`record[A117570(ceil(lcm(2, n+1)/4))]`
-/

namespace A337816.P12018979144569450852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117570 ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337816.P12018979144569450852

/-! ## A337816.P4579174355181511332

`record[A117570(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A337816.P4579174355181511332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117570 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337816.P4579174355181511332

/-! ## A337816.P343251328537971354

`record[A117570(ceil((n*(6-5/gcd(2, n))+1)/10))]`
-/

namespace A337816.P343251328537971354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117570 ⌈((n : ℚ) * (6 - 5 / (Nat.gcd 2 n : ℚ)) + 1) / 10⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337816.P343251328537971354

/-! ## A337816.P10534195107882726590

`record[A117570(A106466(n))]`
-/

namespace A337816.P10534195107882726590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117570 (A106466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337816.P10534195107882726590

/-! ## A337816.P11388072263865707703

`record[A117570(A065648(n))]`
-/

namespace A337816.P11388072263865707703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117570 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337816.P11388072263865707703

/-! ## A337816.P10027288536037389459

`record[A117570(A109785(n))]`
-/

namespace A337816.P10027288536037389459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117570 (A109785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337816.P10027288536037389459

/-! ## A337816.P2199559062556856208

`lt[0, char[∑{digits}[n, n*#]]]`
-/

namespace A337816.P2199559062556856208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => n * x).sum

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337816.P2199559062556856208

/-! ## A337816.P13364474003111755236

`eq[1, char[A057147(n)]]`
-/

namespace A337816.P13364474003111755236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337816.P13364474003111755236

/-! ## A337816.P516961918771251604

`record[A117570(A028920(n))]`
-/

namespace A337816.P516961918771251604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117570 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337816.P516961918771251604

/-!
# A337817: Smallest nonnegative number that has exactly n different representations as the product of a number and the sum of its decimal digits.

The programs for A337817, there is no canonical definition to state claims against.
-/

/-! ## A337817.P4614146022384307312

`A007494(A012619(n))*A218575(n)`
-/

namespace A337817.P4614146022384307312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A012619 n).toNat * A218575 n

end

end A337817.P4614146022384307312

/-!
# A337818: Odd integers k>=3 such that k*(k-1)/2 divides 2^((k-1)/2)+1.

The programs for A337818, there is no canonical definition to state claims against.
-/

/-! ## A337818.P608215870361676405

`A289258(∑[A287989(n)])`
-/

namespace A337818.P608215870361676405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337818.P608215870361676405

/-!
# A337819: a(n) is the smallest number k for which k*d is a Niven number, for any divisor d of n, n >= 1.

The programs for A337819, there is no canonical definition to state claims against.
-/

/-! ## A337819.P15327872194864121390

`A144261(n+1)*A262438(A165878(n))`
-/

namespace A337819.P15327872194864121390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (n + 1) * A262438 (A165878 n).toNat

end

end A337819.P15327872194864121390

/-!
# A337820: Array read by antidiagonals: T(n,k) (n >= 1, k >= 0) is the ratio (the number of nonnegative bases m < n such that m^k == m (mod n))/(the number of nonnegative bases m < n such that -m^k == m (mod n)).

The programs for A337820, there is no canonical definition to state claims against.
-/

/-! ## A337820.P17810953492343598799

`gcd(A126065(n+1), A298762(n+1))`
-/

namespace A337820.P17810953492343598799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126065 (n + 1)) (A298762 (n + 1))

end

end A337820.P17810953492343598799

/-! ## A337820.P10886669383267890265

`gcd(A001511(A155971(n)), A151512(n))`
-/

namespace A337820.P10886669383267890265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001511 (A155971 n).toNat) (A151512 n)

end

end A337820.P10886669383267890265

/-! ## A337820.P15552688073911128644

`gcd(A069077(A029747(n+1)), A196416(n))`
-/

namespace A337820.P15552688073911128644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069077 (A029747 (n + 1)).toNat) (A196416 n)

end

end A337820.P15552688073911128644

/-! ## A337820.P17660746796464461324

`gcd(A004736(n+1), A297323(A054142(n)))`
-/

namespace A337820.P17660746796464461324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004736 (n + 1)) (A297323 (A054142 n).toNat)

end

end A337820.P17660746796464461324

/-! ## A337820.P8382556348874602292

`gcd(A080512(A144512(n)), A306697(n+1))`
-/

namespace A337820.P8382556348874602292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080512 (A144512 n).toNat) (A306697 (n + 1))

end

end A337820.P8382556348874602292

/-!
# A337821: For n >= 0, a(4n+1) = 0, a(4n+3) = a(2n+1) + 1, a(2n+2) = a(n+1).

The programs for A337821, the canonical program `A337821.P3237854807616549852` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337821 has offset 1).

The definition of A337821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337821.P3237854807616549852

`A089309(n+1)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A337821

/-- `A089309(n+1)-1` -/
def P3237854807616549852.Spec : Prop :=
  ∀ n, P3237854807616549852.a n = A337821 (n + 1)

theorem P3237854807616549852.correct : P3237854807616549852.Spec := by
  intro n
  simp only [A337821, Nat.add_sub_cancel]

end A337821

/-! ## A337821.P7704676623432216456

`A007814(A003602(n+1))`
-/

namespace A337821.P7704676623432216456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003602 (n + 1)).toNat

end

end A337821.P7704676623432216456

namespace A337821

/-- `A007814(A003602(n+1))` -/
def P7704676623432216456.Spec : Prop :=
  ∀ n, P7704676623432216456.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P774111534149006106

`A007814((A000265(n+1)+1)/2)`
-/

namespace A337821.P774111534149006106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A000265 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A337821.P774111534149006106

namespace A337821

/-- `A007814((A000265(n+1)+1)/2)` -/
def P774111534149006106.Spec : Prop :=
  ∀ n, P774111534149006106.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P4663829316366121488

`A007949(A005940(n+1))`
-/

namespace A337821.P4663829316366121488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A005940 (n + 1)).toNat

end

end A337821.P4663829316366121488

namespace A337821

/-- `A007949(A005940(n+1))` -/
def P4663829316366121488.Spec : Prop :=
  ∀ n, P4663829316366121488.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P3496026039531186266

`val(floor(n/(xor(n, n+1)+1))+1, 2)`
-/

namespace A337821.P3496026039531186266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat 2

end

end A337821.P3496026039531186266

namespace A337821

/-- `val(floor(n/(xor(n, n+1)+1))+1, 2)` -/
def P3496026039531186266.Spec : Prop :=
  ∀ n, (P3496026039531186266.a n : ℤ) = A337821 (n + 1)

end A337821

/-! ## A337821.P14253681571137565721

`val(ceil((n+1)/(xor(n, n+1)+1)), 2)`
-/

namespace A337821.P14253681571137565721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉.toNat 2

end

end A337821.P14253681571137565721

namespace A337821

/-- `val(ceil((n+1)/(xor(n, n+1)+1)), 2)` -/
def P14253681571137565721.Spec : Prop :=
  ∀ n, (P14253681571137565721.a n : ℤ) = A337821 (n + 1)

end A337821

/-! ## A337821.P10361759896875406393

`val((n+1)/2^val(n+1, 2)+1, 2)-1`
-/

namespace A337821.P10361759896875406393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1)).toNat 2 : ℤ) - 1

end

end A337821.P10361759896875406393

namespace A337821

/-- `val((n+1)/2^val(n+1, 2)+1, 2)-1` -/
def P10361759896875406393.Spec : Prop :=
  ∀ n, P10361759896875406393.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P8744488031158092839

`val(A025480(n)+1, 2)`
-/

namespace A337821.P8744488031158092839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025480 n + 1).toNat 2

end

end A337821.P8744488031158092839

namespace A337821

/-- `val(A025480(n)+1, 2)` -/
def P8744488031158092839.Spec : Prop :=
  ∀ n, (P8744488031158092839.a n : ℤ) = A337821 (n + 1)

end A337821

/-! ## A337821.P9823832943133923547

`val(A374717(n+1), 3)`
-/

namespace A337821.P9823832943133923547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A374717 (n + 1)).toNat 3

end

end A337821.P9823832943133923547

namespace A337821

/-- `val(A374717(n+1), 3)` -/
def P9823832943133923547.Spec : Prop :=
  ∀ n, (P9823832943133923547.a n : ℤ) = A337821 (n + 1)

end A337821

/-! ## A337821.P1869097018485407437

`val(A110963(2*n+1), 2)`
-/

namespace A337821.P1869097018485407437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A110963 (2 * n + 1)).toNat 2

end

end A337821.P1869097018485407437

namespace A337821

/-- `val(A110963(2*n+1), 2)` -/
def P1869097018485407437.Spec : Prop :=
  ∀ n, (P1869097018485407437.a n : ℤ) = A337821 (n + 1)

end A337821

/-! ## A337821.P15201040111998390044

`A336126(2*(n+1))/2-1`
-/

namespace A337821.P15201040111998390044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336126 (2 * (n + 1)) : ℚ) / 2 - 1

end

end A337821.P15201040111998390044

namespace A337821

/-- `A336126(2*(n+1))/2-1` -/
def P15201040111998390044.Spec : Prop :=
  ∀ n, P15201040111998390044.a n = (A337821 (n + 1) : ℚ)

end A337821

/-! ## A337821.P1530400924277712279

`A050605(A153733(n))`
-/

namespace A337821.P1530400924277712279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A153733 n).toNat

end

end A337821.P1530400924277712279

namespace A337821

/-- `A050605(A153733(n))` -/
def P1530400924277712279.Spec : Prop :=
  ∀ n, P1530400924277712279.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P2883258950003650162

`A007814(A025480(n)+1)`
-/

namespace A337821.P2883258950003650162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A025480 n + 1).toNat

end

end A337821.P2883258950003650162

namespace A337821

/-- `A007814(A025480(n)+1)` -/
def P2883258950003650162.Spec : Prop :=
  ∀ n, P2883258950003650162.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P6584385177648933253

`A050605(A000265(n+1))`
-/

namespace A337821.P6584385177648933253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A000265 (n + 1)).toNat

end

end A337821.P6584385177648933253

namespace A337821

/-- `A050605(A000265(n+1))` -/
def P6584385177648933253.Spec : Prop :=
  ∀ n, P6584385177648933253.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P12197626104834134634

`A153036(A030109(n+1))`
-/

namespace A337821.P12197626104834134634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153036 (A030109 (n + 1)).toNat

end

end A337821.P12197626104834134634

namespace A337821

/-- `A153036(A030109(n+1))` -/
def P12197626104834134634.Spec : Prop :=
  ∀ n, P12197626104834134634.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P2225899072826710233

`A286583(A064989(n+1))`
-/

namespace A337821.P2225899072826710233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286583 (A064989 (n + 1)).toNat

end

end A337821.P2225899072826710233

namespace A337821

/-- `A286583(A064989(n+1))` -/
def P2225899072826710233.Spec : Prop :=
  ∀ n, P2225899072826710233.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P10922869580174019422

`A001511(A025480(n)+1)-1`
-/

namespace A337821.P10922869580174019422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A025480 n + 1).toNat - 1

end

end A337821.P10922869580174019422

namespace A337821

/-- `A001511(A025480(n)+1)-1` -/
def P10922869580174019422.Spec : Prop :=
  ∀ n, P10922869580174019422.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P2215390511360470450

`A090996(A030101(n+1))-1`
-/

namespace A337821.P2215390511360470450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A030101 (n + 1)).toNat - 1

end

end A337821.P2215390511360470450

namespace A337821

/-- `A090996(A030101(n+1))-1` -/
def P2215390511360470450.Spec : Prop :=
  ∀ n, P2215390511360470450.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P389673618878051620

`A090996(A057889(n+1))-1`
-/

namespace A337821.P389673618878051620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A057889 (n + 1)).toNat - 1

end

end A337821.P389673618878051620

namespace A337821

/-- `A090996(A057889(n+1))-1` -/
def P389673618878051620.Spec : Prop :=
  ∀ n, P389673618878051620.a n = A337821 (n + 1)

end A337821

/-! ## A337821.P10191771981982767905

`A007814(A103391(n+2)-1)`
-/

namespace A337821.P10191771981982767905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A103391 (n + 2) - 1).toNat

end

end A337821.P10191771981982767905

namespace A337821

/-- `A007814(A103391(n+2)-1)` -/
def P10191771981982767905.Spec : Prop :=
  ∀ n, P10191771981982767905.a n = A337821 (n + 1)

end A337821

/-!
# A337823: a(n) = prime(n-1) - floor(a(n-1)/2); a(1)=1.

The programs for A337823, the canonical program `A337823.P15416864557459601287` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337823 has offset 1).

The definition of A337823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337823.P15416864557459601287

`A000040(n)-floor(a(n-1)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337823

/-- `A000040(n)-floor(a(n-1)/2)` -/
def P15416864557459601287.Spec : Prop :=
  ∀ n, P15416864557459601287.a n = A337823 (n + 1)

theorem P15416864557459601287.correct : P15416864557459601287.Spec := by
  intro n
  simp only [A337823, Nat.add_sub_cancel]

end A337823

/-! ## A337823.P823474092950966559

`A008578(n+1)-floor(a(n-1)/2)` with `a(0)=1`
-/

namespace A337823.P823474092950966559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008578 (n + 1) - ⌊(a (n - 1) : ℚ) / 2⌋

end

end A337823.P823474092950966559

namespace A337823

/-- `A008578(n+1)-floor(a(n-1)/2)` -/
def P823474092950966559.Spec : Prop :=
  ∀ n, P823474092950966559.a n = A337823 (n + 1)

end A337823

/-! ## A337823.P9684990914070805687

`ceil((A001747(n+1)-a(n-1))/2)` with `a(0)=1`
-/

namespace A337823.P9684990914070805687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A001747 (n + 1) - a (n - 1) : ℚ) / 2⌉

end

end A337823.P9684990914070805687

namespace A337823

/-- `ceil((A001747(n+1)-a(n-1))/2)` -/
def P9684990914070805687.Spec : Prop :=
  ∀ n, P9684990914070805687.a n = A337823 (n + 1)

end A337823

/-! ## A337823.P1384081441400162826

`record[A020639(n+1)]-floor(a(n-1)/2)` with `a(0)=1`
-/

namespace A337823.P1384081441400162826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ⌊(a (n - 1) : ℚ) / 2⌋

end

end A337823.P1384081441400162826

namespace A337823

/-- `record[A020639(n+1)]-floor(a(n-1)/2)` -/
def P1384081441400162826.Spec : Prop :=
  ∀ n, P1384081441400162826.a n = A337823 (n + 1)

end A337823

/-! ## A337823.P17249494274475385795

`A000040(n)-A004526(a(n-1))` with `a(0)=1`
-/

namespace A337823.P17249494274475385795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n - A004526 (a (n - 1)).toNat

end

end A337823.P17249494274475385795

namespace A337823

/-- `A000040(n)-A004526(a(n-1))` -/
def P17249494274475385795.Spec : Prop :=
  ∀ n, P17249494274475385795.a n = A337823 (n + 1)

end A337823

/-! ## A337823.P4745497652334400642

`A000040(n)-A123108(a(n-1))` with `a(0)=1`
-/

namespace A337823.P4745497652334400642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n - A123108 (a (n - 1)).toNat

end

end A337823.P4745497652334400642

namespace A337823

/-- `A000040(n)-A123108(a(n-1))` -/
def P4745497652334400642.Spec : Prop :=
  ∀ n, P4745497652334400642.a n = A337823 (n + 1)

end A337823

/-! ## A337823.P16541335083185598030

`comp[A018252(n+1)]-A123108(a(n-1))` with `a(0)=1`
-/

namespace A337823.P16541335083185598030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A123108 (a (n - 1)).toNat

end

end A337823.P16541335083185598030

namespace A337823

/-- `comp[A018252(n+1)]-A123108(a(n-1))` -/
def P16541335083185598030.Spec : Prop :=
  ∀ n, P16541335083185598030.a n = A337823 (n + 1)

end A337823

/-! ## A337823.P4765318997522517375

`a(n-1)+A000040(n)-A032766(a(n-1))` with `a(0)=1`
-/

namespace A337823.P4765318997522517375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000040 n - A032766 (a (n - 1)).toNat)

end

end A337823.P4765318997522517375

namespace A337823

/-- `a(n-1)+A000040(n)-A032766(a(n-1))` -/
def P4765318997522517375.Spec : Prop :=
  ∀ n, P4765318997522517375.a n = A337823 (n + 1)

end A337823

/-!
# A337825: a(0) = 0; a(n) = n^3 - (1/n) * Sum_{k=1..n-1} binomial(n,k)^2 * (n-k)^3 * k * a(k).

The programs for A337825, there is no canonical definition to state claims against.
-/

/-! ## A337825.P10448690307476211402

`A061931(n+1)-A302212(A061931(n+1))`
-/

namespace A337825.P10448690307476211402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061931 (n + 1) - A302212 (A061931 (n + 1)).toNat

end

end A337825.P10448690307476211402

/-!
# A337826: a(0) = 1; a(n) = (1/n) * Sum_{k=1..n} binomial(n,k)^2 * k^4 * a(n-k).

The programs for A337826, there is no canonical definition to state claims against.
-/

/-! ## A337826.P17491509840568938062

`A192430(n)+A047486(A000364(n))`
-/

namespace A337826.P17491509840568938062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192430 n + A047486 (A000364 n).toNat

end

end A337826.P17491509840568938062

/-!
# A337827: a(n) is the number of 2n-bead necklaces with exactly n different colored beads.

The programs for A337827, there is no canonical definition to state claims against.
-/

/-! ## A337827.P13587794146963086668

`A254083(n+1)+n!`
-/

namespace A337827.P13587794146963086668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254083 (n + 1) + (Nat.factorial n : ℤ)

end

end A337827.P13587794146963086668

/-! ## A337827.P10644982258522006713

`A254083(n+1)+A000142(n)`
-/

namespace A337827.P10644982258522006713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254083 (n + 1) + A000142 n

end

end A337827.P10644982258522006713

/-! ## A337827.P17585131766700281544

`A254083(n+1)+A033312(n)+1`
-/

namespace A337827.P17585131766700281544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254083 (n + 1) + (A033312 n + 1)

end

end A337827.P17585131766700281544

/-! ## A337827.P7526034287582485131

`A087854(2*(n+1)²)`
-/

namespace A337827.P7526034287582485131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087854 (2 * (n + 1) ^ 2)

end

end A337827.P7526034287582485131

/-! ## A337827.P2570778449781909643

`record[A087854(A176889(n+1))]`
-/

namespace A337827.P2570778449781909643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087854 (A176889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337827.P2570778449781909643

/-!
# A337828: Odd integers k such that 3^((k-1)/2) + 1 == 0 (mod k*(k-1)/2).

The programs for A337828, there is no canonical definition to state claims against.
-/

/-! ## A337828.P1112620493392402365

`A337831(ceil(sqrt((2^n+1)*(2^n+2)/6)))`
-/

namespace A337828.P1112620493392402365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337831 ⌈Real.sqrt ((2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6) : ℝ)⌉.toNat

end

end A337828.P1112620493392402365

/-!
# A337829: Odd integers k such that 5^((k-1)/2) + 1 == 0 (mod k*(k-1)/2).

The programs for A337829, there is no canonical definition to state claims against.
-/

/-! ## A337829.P16436021932542158712

`p?[∑[A284376(A138880(n+1))]]`
-/

namespace A337829.P16436021932542158712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 (A138880 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337829.P16436021932542158712

/-! ## A337829.P8065012422979036343

`A133956(A227532(n+1)+A068361(n+1))`
-/

namespace A337829.P8065012422979036343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133956 (A227532 (n + 1) + A068361 (n + 1)).toNat

end

end A337829.P8065012422979036343

/-!
# A337832: Porous numbers: Numbers k which are not multiples of 10 such that every m with sum of digits = k and k a divisor of both m and rev(m) has a zero in its digits.

The programs for A337832, there is no canonical definition to state claims against.
-/

/-! ## A337832.P3729903643900329981

`floor((n+4)*exp(∑[1/n!]))+1`
-/

namespace A337832.P3729903643900329981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 4 : ℝ) * Real.exp ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)⌋ + 1

end

end A337832.P3729903643900329981

/-!
# A337833: Minimum m coprime to 5 such that the convergence speed of m^^m := m^(m^^(m-1)) is equal to n >= 0, where A317905(n) represents the convergence speed of m^^m (and m = A047201(n), the n-th non-multiple of 5).

The programs for A337833, there is no canonical definition to state claims against.
-/

/-! ## A337833.P10246976202814024952

`∏{p}[A034935(n)², #]`
-/

namespace A337833.P10246976202814024952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034935 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A337833.P10246976202814024952

/-!
# A337834: If k is the n-th number ending in 1,3,7, or 9, a(n) is the least prime > k ending in k.

The programs for A337834, there is no canonical definition to state claims against.
-/

/-! ## A337834.P13300936468794645488

`p?[A256480(n)]`
-/

namespace A337834.P13300936468794645488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337834.P13300936468794645488

/-! ## A337834.P1504705581910884854

`filter[A256480(n), A011558(#)]`
-/

namespace A337834.P1504705581910884854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A337834.P1504705581910884854

/-! ## A337834.P14904998277696279365

`filter[A256480(n), A014306(#)]`
-/

namespace A337834.P14904998277696279365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A337834.P14904998277696279365

/-! ## A337834.P15803245233281289511

`filter[A256480(n), A014578(#)]`
-/

namespace A337834.P15803245233281289511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A337834.P15803245233281289511

/-! ## A337834.P16351382493977769609

`filter[A256480(n), A097325(#)]`
-/

namespace A337834.P16351382493977769609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A337834.P16351382493977769609

/-! ## A337834.P12025413581604625409

`filter[A256480(n), A098725(#)]`
-/

namespace A337834.P12025413581604625409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A337834.P12025413581604625409

/-! ## A337834.P17121914361215959479

`filter[A256480(n), A115971(#)]`
-/

namespace A337834.P17121914361215959479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A337834.P17121914361215959479

/-! ## A337834.P12904107254894528063

`filter[A256480(n), A166486(#)]`
-/

namespace A337834.P12904107254894528063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A337834.P12904107254894528063

/-! ## A337834.P8299212655658691120

`filter[A256480(n), A168181(#)]`
-/

namespace A337834.P8299212655658691120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A337834.P8299212655658691120

/-! ## A337834.P1674579970829854095

`filter[A256480(n), A168185(#)]`
-/

namespace A337834.P1674579970829854095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A337834.P1674579970829854095

/-!
# A337835: a(1) = 0 and for n > 1, a(n+1) = k - a(n) where k is the number of terms equal to a(n) among the first n terms.

The programs for A337835, there is no canonical definition to state claims against.
-/

/-! ## A337835.P12959685449517598178

`A277314(n)-A007814(A038610(n+1))`
-/

namespace A337835.P12959685449517598178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 n - A007814 (A038610 (n + 1)).toNat

end

end A337835.P12959685449517598178

/-! ## A337835.P89098595704756552

`A033999(A286645(n+1))*A119387(n+1)`
-/

namespace A337835.P89098595704756552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A286645 (n + 1)).toNat * A119387 (n + 1)

end

end A337835.P89098595704756552

/-! ## A337835.P4861878160637150920

`A033999(A286675(n+1))*A119387(n+1)`
-/

namespace A337835.P4861878160637150920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A286675 (n + 1)).toNat * A119387 (n + 1)

end

end A337835.P4861878160637150920

/-! ## A337835.P7818313993338717052

`A053470(n+3)-A297044(A285822(n+1))`
-/

namespace A337835.P7818313993338717052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (n + 3) - A297044 (A285822 (n + 1)).toNat

end

end A337835.P7818313993338717052

/-!
# A337837: Numbers k such that Omega(3^k - 2) = Omega(3^k + 2) where Omega is A001222.

The programs for A337837, there is no canonical definition to state claims against.
-/

/-! ## A337837.P17933839939612692193

`∑[A093094(∑[A287253(n)])]`
-/

namespace A337837.P17933839939612692193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287253 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093094 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337837.P17933839939612692193

/-!
# A337838: Permutation of the natural numbers formed by numbering an infinite square grid by a counterclockwise triangular spiral and visiting them by a counterclockwise stair step spiral.

The programs for A337838, there is no canonical definition to state claims against.
-/

/-! ## A337838.P15463946906220972535

`A217010(A334619(n+1))`
-/

namespace A337838.P15463946906220972535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217010 (A334619 (n + 1)).toNat

end

end A337838.P15463946906220972535

/-!
# A337839: Numbers that can be written as (k + sum of digits of k) for some k, then as (m + product of digits of m) for some m, also as (q * product of digits of q) for some q, and finally as (t * sum of digits of t) for some t.

The programs for A337839, there is no canonical definition to state claims against.
-/

/-! ## A337839.P10120473302780256200

`∩[A337733(n+1), A337816(n+1)]`
-/

namespace A337839.P10120473302780256200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337839.P10120473302780256200

/-!
# A337840: a(n) is the decimal place of the start of the first occurrence of n in the decimal expansion of n^(1/n).

The programs for A337840, there is no canonical definition to state claims against.
-/

/-! ## A337840.P3868833586513606807

`A159199(n+1)-1`
-/

namespace A337840.P3868833586513606807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159199 (n + 1) - 1

end

end A337840.P3868833586513606807

/-! ## A337840.P7716370566331360435

`A260196(A020481(n+2))+A159199(n+1)`
-/

namespace A337840.P7716370566331360435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A020481 (n + 2)).toNat + A159199 (n + 1)

end

end A337840.P7716370566331360435

/-! ## A337840.P12329707077303405440

`A260196(n+2)+A159199(n+1)`
-/

namespace A337840.P12329707077303405440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A159199 (n + 1)

end

end A337840.P12329707077303405440

/-! ## A337840.P9488305153019645702

`A023443(A159199(n+1))`
-/

namespace A337840.P9488305153019645702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A159199 (n + 1)).toNat

end

end A337840.P9488305153019645702

/-! ## A337840.P10176461285089202827

`A023444(A159199(n+1)+1)`
-/

namespace A337840.P10176461285089202827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A159199 (n + 1) + 1).toNat

end

end A337840.P10176461285089202827

/-! ## A337840.P10232650158138792943

`A349340(A084758(n+1))+A159199(n+1)`
-/

namespace A337840.P10232650158138792943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A084758 (n + 1)).toNat + A159199 (n + 1)

end

end A337840.P10232650158138792943

/-! ## A337840.P10427741536466925952

`abs(A159199(n+1)+A008683(A002148(n)))`
-/

namespace A337840.P10427741536466925952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159199 (n + 1) + A008683 (A002148 n).toNat|

end

end A337840.P10427741536466925952

/-!
# A337841: Triangle read by rows, T(n, k) = binomial(2*n-1, 2*k-1) * binomial(2*n-2*k, n-k) * (k+1) / binomial(n+k+1, n-k) for 0 <= k <= n.

The programs for A337841, there is no canonical definition to state claims against.
-/

/-! ## A337841.P1225112468750890238

`A128899(n)-Δ[A128899(n)]*A002262(n)`
-/

namespace A337841.P1225112468750890238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 n - (f1 (n + 1) - f1 n) * A002262 n

end

end A337841.P1225112468750890238

/-! ## A337841.P13949316233207769060

`A257563(n)+A004526(A157221(n))`
-/

namespace A337841.P13949316233207769060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257563 n + A004526 (A157221 n).toNat

end

end A337841.P13949316233207769060

/-!
# A337843: a(n) is n + the number of digits in the decimal expansion of n.

The programs for A337843, the canonical program `A337843.P8962796639510321882` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337843 has offset 0).

The definition of A337843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337843.P8962796639510321882

`n+A055642(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337843

/-- `n+A055642(n)` -/
def P8962796639510321882.Spec : Prop :=
  ∀ n, P8962796639510321882.a n = A337843 n

theorem P8962796639510321882.correct : P8962796639510321882.Spec := by
  intro n
  simp only [A337843]

end A337843

/-! ## A337843.P16700996965090760727

`∑{digits}[n, and(1, #)!]+n`
-/

namespace A337843.P16700996965090760727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum + n

end

end A337843.P16700996965090760727

namespace A337843

/-- `∑{digits}[n, and(1, #)!]+n` -/
def P16700996965090760727.Spec : Prop :=
  ∀ n, (P16700996965090760727.a n : ℤ) = A337843 n

end A337843

/-! ## A337843.P4827386882059858577

`∑{digits}[n, dr(10^#)]+n`
-/

namespace A337843.P4827386882059858577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum + n

end

end A337843.P4827386882059858577

namespace A337843

/-- `∑{digits}[n, dr(10^#)]+n` -/
def P4827386882059858577.Spec : Prop :=
  ∀ n, (P4827386882059858577.a n : ℤ) = A337843 n

end A337843

/-! ## A337843.P1916169407105670024

`∑{digits}[n, 10^#]%9+n`
-/

namespace A337843.P1916169407105670024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 + n

end

end A337843.P1916169407105670024

namespace A337843

/-- `∑{digits}[n, 10^#]%9+n` -/
def P1916169407105670024.Spec : Prop :=
  ∀ n, (P1916169407105670024.a n : ℤ) = A337843 n

end A337843

/-! ## A337843.P12070926045122872113

`dr(A348783(n))+n`
-/

namespace A337843.P12070926045122872113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A348783 n) + n

end

end A337843.P12070926045122872113

namespace A337843

/-- `dr(A348783(n))+n` -/
def P12070926045122872113.Spec : Prop :=
  ∀ n, (P12070926045122872113.a n : ℤ) = A337843 n

end A337843

/-! ## A337843.P6967934307006949156

`A073053(n)%5+n`
-/

namespace A337843.P6967934307006949156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073053 n) 5 + (n : ℤ)

end

end A337843.P6967934307006949156

namespace A337843

/-- `A073053(n)%5+n` -/
def P6967934307006949156.Spec : Prop :=
  ∀ n, P6967934307006949156.a n = A337843 n

end A337843

/-! ## A337843.P554970960344136253

`∑{digits}[n, A036370(#)]+n`
-/

namespace A337843.P554970960344136253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum + (n : ℤ)

end

end A337843.P554970960344136253

namespace A337843

/-- `∑{digits}[n, A036370(#)]+n` -/
def P554970960344136253.Spec : Prop :=
  ∀ n, P554970960344136253.a n = A337843 n

end A337843

/-! ## A337843.P6871645718673579952

`∑{digits}[n, A063435(#)]+n`
-/

namespace A337843.P6871645718673579952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A063435 x).sum + (n : ℤ)

end

end A337843.P6871645718673579952

namespace A337843

/-- `∑{digits}[n, A063435(#)]+n` -/
def P6871645718673579952.Spec : Prop :=
  ∀ n, P6871645718673579952.a n = A337843 n

end A337843

/-! ## A337843.P18086590543541841127

`A073855(A138902(n))+n`
-/

namespace A337843.P18086590543541841127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A138902 n).toNat + (n : ℤ)

end

end A337843.P18086590543541841127

namespace A337843

/-- `A073855(A138902(n))+n` -/
def P18086590543541841127.Spec : Prop :=
  ∀ n, P18086590543541841127.a n = A337843 n

end A337843

/-! ## A337843.P9668696385311365785

`A004216(A028310(n))+n+1`
-/

namespace A337843.P9668696385311365785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A028310 n).toNat + (n + 1 : ℤ)

end

end A337843.P9668696385311365785

namespace A337843

/-- `A004216(A028310(n))+n+1` -/
def P9668696385311365785.Spec : Prop :=
  ∀ n, P9668696385311365785.a n = A337843 n

end A337843

/-! ## A337843.P961451506740340065

`a(A355912(A139337(n))-1)+n` with `a(0)=1`
-/

namespace A337843.P961451506740340065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A355912 (A139337 n).toNat - 1).toNat + n

end

end A337843.P961451506740340065

namespace A337843

/-- `a(A355912(A139337(n))-1)+n` -/
def P961451506740340065.Spec : Prop :=
  ∀ n, (P961451506740340065.a n : ℤ) = A337843 n

end A337843

/-!
# A337844: a(1) = 1; a(n) = a(n-1) concatenated with the smallest number k>0 such that tau(a(n)) > tau(a(n-1)).

The programs for A337844, there is no canonical definition to state claims against.
-/

/-! ## A337844.P18256180740249749212

`A001961(Δ[floor(10^(n-1))])`
-/

namespace A337844.P18256180740249749212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (f1 (n + 1) - f1 n).toNat

end

end A337844.P18256180740249749212

/-!
# A337845: Primes with a digital sum that is less than the digital sum of the previous prime.

The programs for A337845, there is no canonical definition to state claims against.
-/

/-! ## A337845.P7096005909205251087

`A000040(A000720(A261338(n+1))+1)`
-/

namespace A337845.P7096005909205251087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A261338 (n + 1)).toNat + 1).toNat

end

end A337845.P7096005909205251087

/-! ## A337845.P5138255985713968257

`A003961(A261338(n+1))`
-/

namespace A337845.P5138255985713968257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A261338 (n + 1)).toNat

end

end A337845.P5138255985713968257

/-! ## A337845.P5255871078805570761

`A045965(p?[A261338(n+1)])`
-/

namespace A337845.P5255871078805570761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A337845.P5255871078805570761

/-! ## A337845.P1571562048962695047

`A117366(p?[A261338(n+1)])`
-/

namespace A337845.P1571562048962695047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A337845.P1571562048962695047

/-! ## A337845.P3711483977901265168

`A007918(A261338(n+1)+1)`
-/

namespace A337845.P3711483977901265168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A261338 (n + 1) + 1).toNat

end

end A337845.P3711483977901265168

/-! ## A337845.P13308937385227951814

`A045965(or(1, A261338(n+1)))`
-/

namespace A337845.P13308937385227951814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (Int.lor 1 (A261338 (n + 1))).toNat

end

end A337845.P13308937385227951814

/-! ## A337845.P12939910886186659666

`A045965(∑{p}[A261338(n+1), #])`
-/

namespace A337845.P12939910886186659666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A337845.P12939910886186659666

/-! ## A337845.P4404814457064669298

`A117366(lcm(2, A261338(n+1))/2)`
-/

namespace A337845.P4404814457064669298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (SequenceMachineLib.roundAway ((Int.lcm 2 (A261338 (n + 1)) : ℚ) / 2)).toNat

end

end A337845.P4404814457064669298

/-! ## A337845.P2884340322235285928

`A117366(2*A261338(n+1))`
-/

namespace A337845.P2884340322235285928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (2 * A261338 (n + 1)).toNat

end

end A337845.P2884340322235285928

/-! ## A337845.P5400621090306831712

`A117366(lcm(2, A261338(n+1)))`
-/

namespace A337845.P5400621090306831712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (Int.lcm 2 (A261338 (n + 1)))

end

end A337845.P5400621090306831712

/-!
# A337846: Odd integers k such that 2^((k-1)/2) == 1 (mod k*(k-2)).

The programs for A337846, there is no canonical definition to state claims against.
-/

/-! ## A337846.P8632237314377916262

`2*A233089(n+1)+1`
-/

namespace A337846.P8632237314377916262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233089 (n + 1) + 1

end

end A337846.P8632237314377916262

/-! ## A337846.P7495306411925665555

`A233089(n+1)+A233089(n+1)+A007318(∑[n])`
-/

namespace A337846.P7495306411925665555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233089 (n + 1) + (A233089 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A337846.P7495306411925665555

/-! ## A337846.P236230580358485641

`A070846(A233089(n+1))`
-/

namespace A337846.P236230580358485641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A233089 (n + 1)).toNat

end

end A337846.P236230580358485641

/-!
# A337848: Odd integers k>=5 such that 2^((k-1)/2)-1 == 0 (mod k*(k-3)/2).

The programs for A337848, there is no canonical definition to state claims against.
-/

/-! ## A337848.P11771819032635800843

`p?[A047249(A187787(n+1))+3]`
-/

namespace A337848.P11771819032635800843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047249 (A187787 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337848.P11771819032635800843

/-!
# A337849: G.f.: 1 = Sum_{n>=0} a(n) * x^n / (1 + x*(1+x)^n)^(n+1).

The programs for A337849, there is no canonical definition to state claims against.
-/

/-! ## A337849.P16323941041815000811

`or(A000246(n), A007953(A000166(n)))`
-/

namespace A337849.P16323941041815000811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000246 n) (A007953 (A000166 n).toNat)

end

end A337849.P16323941041815000811

/-! ## A337849.P17258136866586761204

`or(A000246(n), A049502(A141626(n)))`
-/

namespace A337849.P17258136866586761204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000246 n) (A049502 (A141626 n).toNat)

end

end A337849.P17258136866586761204

/-! ## A337849.P7870529149849865946

`or(A000246(n), A127288(A213493(n)))`
-/

namespace A337849.P7870529149849865946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000246 n) (A127288 (A213493 n).toNat)

end

end A337849.P7870529149849865946

/-! ## A337849.P18371972441292254053

`or(A000246(n), A236417(A149277(n)))`
-/

namespace A337849.P18371972441292254053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000246 n) (A236417 (A149277 n).toNat)

end

end A337849.P18371972441292254053

/-!
# A337850: G.f. A(x) satisfies: Sum_{n>=0} x^(n^2) * A(x)^n = Sum_{n>=0} x^n * (1+x)^(n^2).

The programs for A337850, there is no canonical definition to state claims against.
-/

/-! ## A337850.P11184159932189013254

`A036234(Δ[A236393(3*n)])-A241507(n)`
-/

namespace A337850.P11184159932189013254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236393 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (n + 1) - f1 n).toNat - A241507 n

end

end A337850.P11184159932189013254

/-!
# A337851: a(n) = (2^n + 2)^n.

The programs for A337851, the canonical program `A337851.P14870185965211432453` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337851 has offset 0).

The definition of A337851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+2)^n` (program `A337851.P14870185965211432453`, by `A337851.P14870185965211432453.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A337851.P14870185965211432453

`(2^n+2)^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337851

/-- `(2^n+2)^n` -/
def P14870185965211432453.Spec : Prop :=
  ∀ n, (P14870185965211432453.a n : ℤ) = A337851 n

theorem P14870185965211432453.correct : P14870185965211432453.Spec := by
  intro n
  simp only [A337851]

end A337851

/-! ## A337851.P6032624962079008144

`2^n*A165327(n)`
-/

namespace A337851.P6032624962079008144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A165327 n

end

end A337851.P6032624962079008144

namespace A337851

/-- `2^n*A165327(n)` -/
def P6032624962079008144.Spec : Prop :=
  ∀ n, P6032624962079008144.a n = A337851 n

end A337851

/-! ## A337851.P15438080292853849686

`floor(∑[2*a(n-1)]^n)` with `a(0)=3, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A337851.P15438080292853849686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A337851.P15438080292853849686

namespace A337851

/-- `floor(∑[2*a(n-1)]^n)` -/
def P15438080292853849686.Spec : Prop :=
  ∀ n, (P15438080292853849686.a n : ℤ) = A337851 n

end A337851

/-! ## A337851.P7954492202262671169

`abs((-A052548(n))^n)`
-/

namespace A337851.P7954492202262671169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A052548 n) ^ n|

end

end A337851.P7954492202262671169

namespace A337851

/-- `abs((-A052548(n))^n)` -/
def P7954492202262671169.Spec : Prop :=
  ∀ n, P7954492202262671169.a n = A337851 n

end A337851

/-! ## A337851.P6655729360853662981

`abs((-A133140(n))^n)`
-/

namespace A337851.P6655729360853662981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A133140 n) ^ n|

end

end A337851.P6655729360853662981

namespace A337851

/-- `abs((-A133140(n))^n)` -/
def P6655729360853662981.Spec : Prop :=
  ∀ n, P6655729360853662981.a n = A337851 n

end A337851

/-!
# A337852: a(n) = (2^(n+1) + 1)^n.

The programs for A337852, the canonical program `A337852.P6487606752135307910` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337852 has offset 0).

The definition of A337852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+1)+1)^n` (program `A337852.P6487606752135307910`, by `A337852.P6487606752135307910.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A337852.P6487606752135307910

`(2^(n+1)+1)^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337852

/-- `(2^(n+1)+1)^n` -/
def P6487606752135307910.Spec : Prop :=
  ∀ n, (P6487606752135307910.a n : ℤ) = A337852 n

theorem P6487606752135307910.correct : P6487606752135307910.Spec := by
  intro n
  simp only [A337852]

end A337852

/-! ## A337852.P12409987666566021695

`floor(∑[2*a(n-1)]^n)` with `a(0)=3, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A337852.P12409987666566021695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A337852.P12409987666566021695

namespace A337852

/-- `floor(∑[2*a(n-1)]^n)` -/
def P12409987666566021695.Spec : Prop :=
  ∀ n, (P12409987666566021695.a n : ℤ) = A337852 n

end A337852

/-! ## A337852.P1767357085204467908

`A136516(n+1)-A171799(n+1)`
-/

namespace A337852.P1767357085204467908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136516 (n + 1) - A171799 (n + 1)

end

end A337852.P1767357085204467908

namespace A337852

/-- `A136516(n+1)-A171799(n+1)` -/
def P1767357085204467908.Spec : Prop :=
  ∀ n, P1767357085204467908.a n = A337852 n

end A337852

/-! ## A337852.P14780588174800573984

`A165327(n+2)/A028400(n+1)`
-/

namespace A337852.P14780588174800573984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165327 (n + 2) : ℚ) / (A028400 (n + 1) : ℚ)

end

end A337852.P14780588174800573984

namespace A337852

/-- `A165327(n+2)/A028400(n+1)` -/
def P14780588174800573984.Spec : Prop :=
  ∀ n, P14780588174800573984.a n = (A337852 n : ℚ)

end A337852

/-! ## A337852.P11075326863882354608

`record[n^A089311(n)]`
-/

namespace A337852.P11075326863882354608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A089311 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337852.P11075326863882354608

namespace A337852

/-- `record[n^A089311(n)]` -/
def P11075326863882354608.Spec : Prop :=
  ∀ n, P11075326863882354608.a n = (A337852 n : ℚ)

end A337852

/-!
# A337855: Number of n-digit positive integers that are the product of two integers ending with 5.

The programs for A337855, the canonical program `A337855.P16586605640458410875` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337855 has offset 1).

The definition of A337855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337855.P16586605640458410875

`10*a(n-1)` with `a(0)=0, a(1)=2, a(2)=18`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337855

/-- `10*a(n-1)` -/
def P16586605640458410875.Spec : Prop :=
  ∀ n, (P16586605640458410875.a n : ℤ) = A337855 (n + 1)

theorem P16586605640458410875.correct : P16586605640458410875.Spec := by
  intro n
  simp only [A337855, Nat.add_sub_cancel]

end A337855

/-! ## A337855.P13859483189782363671

`ogf((2x-2x^2)/(1-10x))`
-/

namespace A337855.P13859483189782363671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2] [1, -10] n

end

end A337855.P13859483189782363671

namespace A337855

/-- `ogf((2x-2x^2)/(1-10x))` -/
def P13859483189782363671.Spec : Prop :=
  ∀ n, P13859483189782363671.a n = A337855 (n + 1)

end A337855

/-! ## A337855.P2096335712673412075

`Δ[floor(2*10^(n-2))]`
-/

namespace A337855.P2096335712673412075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (10 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337855.P2096335712673412075

namespace A337855

/-- `Δ[floor(2*10^(n-2))]` -/
def P2096335712673412075.Spec : Prop :=
  ∀ n, P2096335712673412075.a n = A337855 (n + 1)

end A337855

/-! ## A337855.P11294648838036276400

`2*(∑[A055996(n)]-A055996(n))`
-/

namespace A337855.P11294648838036276400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A055996 n)

end

end A337855.P11294648838036276400

namespace A337855

/-- `2*(∑[A055996(n)]-A055996(n))` -/
def P11294648838036276400.Spec : Prop :=
  ∀ n, P11294648838036276400.a n = A337855 (n + 1)

end A337855

/-! ## A337855.P17502576201750622708

`Δ[or(1, floor(10^(n-1)))]/5`
-/

namespace A337855.P17502576201750622708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 5

end

end A337855.P17502576201750622708

namespace A337855

/-- `Δ[or(1, floor(10^(n-1)))]/5` -/
def P17502576201750622708.Spec : Prop :=
  ∀ n, P17502576201750622708.a n = (A337855 (n + 1) : ℚ)

end A337855

/-! ## A337855.P6452101542697115443

`ceil(A086580(n)/50)`
-/

namespace A337855.P6452101542697115443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086580 n : ℚ) / 50⌉

end

end A337855.P6452101542697115443

namespace A337855

/-- `ceil(A086580(n)/50)` -/
def P6452101542697115443.Spec : Prop :=
  ∀ n, P6452101542697115443.a n = A337855 (n + 1)

end A337855

/-! ## A337855.P12627103073959332576

`round(A052268(n+1)/50)`
-/

namespace A337855.P12627103073959332576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052268 (n + 1) : ℚ) / 50)

end

end A337855.P12627103073959332576

namespace A337855

/-- `round(A052268(n+1)/50)` -/
def P12627103073959332576.Spec : Prop :=
  ∀ n, P12627103073959332576.a n = A337855 (n + 1)

end A337855

/-! ## A337855.P14852611897345717613

`round(A002283(2*n)/A002279(n+1))`
-/

namespace A337855.P14852611897345717613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002283 (2 * n) : ℚ) / (A002279 (n + 1) : ℚ))

end

end A337855.P14852611897345717613

namespace A337855

/-- `round(A002283(2*n)/A002279(n+1))` -/
def P14852611897345717613.Spec : Prop :=
  ∀ n, P14852611897345717613.a n = A337855 (n + 1)

end A337855

/-! ## A337855.P14614429473862076951

`round(A090019(2*n)/A002277(n+1))`
-/

namespace A337855.P14614429473862076951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A090019 (2 * n) : ℚ) / (A002277 (n + 1) : ℚ))

end

end A337855.P14614429473862076951

namespace A337855

/-- `round(A090019(2*n)/A002277(n+1))` -/
def P14614429473862076951.Spec : Prop :=
  ∀ n, P14614429473862076951.a n = A337855 (n + 1)

end A337855

/-!
# A337856: Number of positive integers with n digits that are the product of two integers ending with 6.

The programs for A337856, there is no canonical definition to state claims against.
-/

/-! ## A337856.P17360264922483846450

`A347748(n+1)+A347749(n+1)-A347255(n+1)`
-/

namespace A337856.P17360264922483846450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347748 (n + 1) + (A347749 (n + 1) - A347255 (n + 1))

end

end A337856.P17360264922483846450

/-!
# A337857: a(n) is the smallest positive integer m with no repeated digits such that A137564(n + m) = n, or a(n) = 0 if no m exists.

The programs for A337857, there is no canonical definition to state claims against.
-/

/-! ## A337857.P18380755480687491372

`10*A092596(n+1)%10`
-/

namespace A337857.P18380755480687491372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * Int.tmod (A092596 (n + 1)) 10

end

end A337857.P18380755480687491372

/-! ## A337857.P13628515891280098121

`A265572(or(n, 8*n))+10`
-/

namespace A337857.P13628515891280098121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265572 (Nat.lor n (8 * n)) + 10

end

end A337857.P13628515891280098121

/-! ## A337857.P9290820037603916096

`10*A134021(A002878(n))`
-/

namespace A337857.P9290820037603916096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A134021 (A002878 n).toNat

end

end A337857.P9290820037603916096

/-! ## A337857.P10885171502543785392

`10*A130255(A077442(n))`
-/

namespace A337857.P10885171502543785392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A130255 (A077442 n).toNat

end

end A337857.P10885171502543785392

/-! ## A337857.P13991806581158077733

`A010878(n)+record[A216557(n)]`
-/

namespace A337857.P13991806581158077733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337857.P13991806581158077733

/-!
# A337858: Integers k>=3 such that 2^k == 2 (mod k*(k-1)*(k-2)/6).

The programs for A337858, there is no canonical definition to state claims against.
-/

/-! ## A337858.P18177414677965642032

`A006530(or(A189409(n), A280614(n)))`
-/

namespace A337858.P18177414677965642032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor (A189409 n) (A280614 n)).toNat

end

end A337858.P18177414677965642032

/-!
# A337860: The number of vertically balanced self-avoiding walks of length n on the upper half-plane of a 2D square lattice where the nodes and connecting rods have equal mass.

The programs for A337860, there is no canonical definition to state claims against.
-/

/-! ## A337860.P5658927769433147323

`A207187(A081124(n))`
-/

namespace A337860.P5658927769433147323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207187 (A081124 n).toNat

end

end A337860.P5658927769433147323

/-! ## A337860.P6048074589452663987

`A207187(A101516(n))`
-/

namespace A337860.P6048074589452663987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207187 (A101516 n).toNat

end

end A337860.P6048074589452663987

/-!
# A337861: Numbers that can be written as the sum of two Moran numbers (see A001101).

The programs for A337861, there is no canonical definition to state claims against.
-/

/-! ## A337861.P17384032052060602886

`lt[A025434(n)+4, floor((n+1)/6)]+1`
-/

namespace A337861.P17384032052060602886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025434 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 6⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337861.P17384032052060602886

/-! ## A337861.P7855099723999049044

`3*record[A107898(A005278(n+1)+1)+7]`
-/

namespace A337861.P7855099723999049044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107898 (A005278 (n + 1) + 1).toNat + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337861.P7855099723999049044

/-! ## A337861.P3505541750994671740

`3*lt[A175460(2*n+5), A333666(n+1)]`
-/

namespace A337861.P3505541750994671740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175460 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337861.P3505541750994671740

/-! ## A337861.P11136660438021781475

`A020639(A056449(2*n+1))*A052474(n+5)`
-/

namespace A337861.P11136660438021781475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056449 (2 * n + 1)).toNat * A052474 (n + 5)

end

end A337861.P11136660438021781475

/-! ## A337861.P12591288169615388057

`eq[A011744(n), A133707(A046063(n+1))]`
-/

namespace A337861.P12591288169615388057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011744 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (A046063 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337861.P12591288169615388057

/-!
# A337863: Twice the total area of all nonnegative lattice paths from (0,0) to (n,0) where the allowed steps at (x,y) are (h,v) with h in {1..max(1,y)} and v in {-1,0,1}.

The programs for A337863, there is no canonical definition to state claims against.
-/

/-! ## A337863.P2465131232958799773

`A090619(A309622(n)+A000984(n))`
-/

namespace A337863.P2465131232958799773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090619 (A309622 n + A000984 n).toNat

end

end A337863.P2465131232958799773

/-! ## A337863.P3033669336669403951

`A088218(n)-A074206(A176829(n))`
-/

namespace A337863.P3033669336669403951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - A074206 (A176829 n).toNat

end

end A337863.P3033669336669403951

/-! ## A337863.P2146385572972531579

`A088218(n)-A007862(A291382(n))`
-/

namespace A337863.P2146385572972531579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - A007862 (A291382 n).toNat

end

end A337863.P2146385572972531579

/-! ## A337863.P7978034002051044969

`A004524(or(A009963(n), A045992(n)))`
-/

namespace A337863.P7978034002051044969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor (A009963 n) (A045992 n)).toNat

end

end A337863.P7978034002051044969

/-!
# A337865: Lexicographically earliest sequence of distinct positive integers such that the sum of a(n) and [a(n+1) reversed] is a palindrome in base 10.

The programs for A337865, there is no canonical definition to state claims against.
-/

/-! ## A337865.P7124738360208414499

`∑[A108297(A333149(n)²)]`
-/

namespace A337865.P7124738360208414499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108297 (A333149 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337865.P7124738360208414499

/-! ## A337865.P15556111177405872850

`∑[A345425(A241036(n)!)]`
-/

namespace A337865.P15556111177405872850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345425 (Nat.factorial (A241036 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337865.P15556111177405872850

/-! ## A337865.P11389852668483957023

`∑[A091387(∑[A349053(n)])]`
-/

namespace A337865.P11389852668483957023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349053 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091387 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337865.P11389852668483957023

/-! ## A337865.P17990486690706887260

`∑[A336466(∑[A139514(n)])]`
-/

namespace A337865.P17990486690706887260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337865.P17990486690706887260

/-! ## A337865.P917707731733039097

`∑[A096815(∏[A164281(n)])]`
-/

namespace A337865.P917707731733039097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096815 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337865.P917707731733039097

/-!
# A337866: Lexicographically earliest sequence of distinct positive integers such that a(n) + a(n+1) has at least one pair of identical adjacent digits.

The programs for A337866, there is no canonical definition to state claims against.
-/

/-! ## A337866.P15070743887569726177

`A171397(A299969(n))+A156072(∑[n])`
-/

namespace A337866.P15070743887569726177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A299969 n).toNat + A156072 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337866.P15070743887569726177

/-! ## A337866.P9694394154399891671

`A325813(A133579(n))+A171397(A299969(n))`
-/

namespace A337866.P9694394154399891671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325813 (A133579 n).toNat + A171397 (A299969 n).toNat

end

end A337866.P9694394154399891671

/-! ## A337866.P3092024641074087260

`A171397(A299969(n))+A051731(A000217(3*(n+1)))`
-/

namespace A337866.P3092024641074087260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A299969 n).toNat + A051731 (A000217 (3 * (n + 1))).toNat

end

end A337866.P3092024641074087260

/-! ## A337866.P13286166256814423230

`A171397(A299969(n))+A131017(A002061(3*n))`
-/

namespace A337866.P13286166256814423230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A299969 n).toNat + A131017 (A002061 (3 * n)).toNat

end

end A337866.P13286166256814423230

/-!
# A337868: Number of distinct residues of x^r (mod n), x=0..n-1, r=2, ..., n.

The programs for A337868, there is no canonical definition to state claims against.
-/

/-! ## A337868.P1757650457628665357

`A063659(n+1)-A178333(A000217(A052905(n)))`
-/

namespace A337868.P1757650457628665357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (n + 1) - A178333 (A000217 (A052905 n).toNat).toNat

end

end A337868.P1757650457628665357

/-! ## A337868.P3186698145539908125

`A063659(n+1)-A010051(A056107(A167614(n+1)))`
-/

namespace A337868.P3186698145539908125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (n + 1) - A010051 (A056107 (A167614 (n + 1)).toNat).toNat

end

end A337868.P3186698145539908125

/-! ## A337868.P40545210171003724

`A063659(n+1)-A126010(∑[n])`
-/

namespace A337868.P40545210171003724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (n + 1) - A126010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337868.P40545210171003724

/-! ## A337868.P6176836746330427451

`A063659(n+1)-A140579((n+1)*Δ[n^3])`
-/

namespace A337868.P6176836746330427451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (n + 1) - A140579 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A337868.P6176836746330427451

/-! ## A337868.P11618955213052275170

`A063659(n+1)-A010052(A022355(n))`
-/

namespace A337868.P11618955213052275170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (n + 1) - A010052 (A022355 n).toNat

end

end A337868.P11618955213052275170

/-!
# A337869: The number of random walks on the simple square lattice that return to the origin (0,0) after 2n steps and do not pass through (0,0) or (1,0) at intermediate steps.

The programs for A337869, there is no canonical definition to state claims against.
-/

/-! ## A337869.P13786285425922738026

`A060149(2*(n+1))`
-/

namespace A337869.P13786285425922738026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060149 (2 * (n + 1))

end

end A337869.P13786285425922738026

/-! ## A337869.P15444879776827149877

`record[A060149(n+2)^(A000367(n+1)%2)]`
-/

namespace A337869.P15444879776827149877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060149 (n + 2) : ℚ) ^ (Int.tmod (A000367 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337869.P15444879776827149877

/-! ## A337869.P2988121303824599352

`record[A060149(n+2)^(A006519(n+1)%2)]`
-/

namespace A337869.P2988121303824599352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060149 (n + 2) : ℚ) ^ (Int.tmod (A006519 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337869.P2988121303824599352

/-! ## A337869.P10624248761484765660

`record[A060149(n+2)^(A372998(n+1)%2)]`
-/

namespace A337869.P10624248761484765660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060149 (n + 2) : ℚ) ^ (Int.tmod (A372998 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337869.P10624248761484765660

/-! ## A337869.P5244904965590815085

`record[A060149(n+2)^(A373002(n+1)%2)]`
-/

namespace A337869.P5244904965590815085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060149 (n + 2) : ℚ) ^ (Int.tmod (A373002 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337869.P5244904965590815085

/-!
# A337870: The number of random walks on the simple square lattice that start at the origin (0,0) and pass through (1,0) after 2n+1 steps before having returned to the origin.

The programs for A337870, there is no canonical definition to state claims against.
-/

/-! ## A337870.P7732791224081287554

`A060149(Δ[n²])`
-/

namespace A337870.P7732791224081287554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060149 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A337870.P7732791224081287554

/-! ## A337870.P2497195687878390937

`and(-1, A060149(2*n+1))`
-/

namespace A337870.P2497195687878390937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A060149 (2 * n + 1))

end

end A337870.P2497195687878390937

/-! ## A337870.P2880377057199296553

`record[A060149(n+2)^(n%2)]`
-/

namespace A337870.P2880377057199296553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060149 (n + 2) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337870.P2880377057199296553

/-! ## A337870.P783333285505818591

`A326682(n)+A060149(2*n+1)`
-/

namespace A337870.P783333285505818591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 n + A060149 (2 * n + 1)

end

end A337870.P783333285505818591

/-! ## A337870.P3609711523516898001

`or(A000007(n), A060149(2*n+1))`
-/

namespace A337870.P3609711523516898001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A060149 (2 * n + 1))

end

end A337870.P3609711523516898001

/-!
# A337871: Primes p such that if the decimal representation of p is interpreted in base q, where q is the prime before p, the result is prime.

The programs for A337871, there is no canonical definition to state claims against.
-/

/-! ## A337871.P11570093298347308775

`p?[A118761(A102487(n+1)+9)]`
-/

namespace A337871.P11570093298347308775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118761 (A102487 (n + 1) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337871.P11570093298347308775

/-! ## A337871.P1312113386847376512

`∩[A118761(n+1), A377172(n+1)]`
-/

namespace A337871.P1312113386847376512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337871.P1312113386847376512

/-! ## A337871.P17153020448615200598

`A225659(C(A225648(n+3), A225656(n+3)))`
-/

namespace A337871.P17153020448615200598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225659 (Nat.choose (A225648 (n + 3)).toNat (A225656 (n + 3)).toNat)

end

end A337871.P17153020448615200598

/-!
# A337873: Numbers m such that the equation m = k*sigma(k) has more than one solution.

The programs for A337873, there is no canonical definition to state claims against.
-/

/-! ## A337873.P4425116673853489779

`A064987(A337874(2*(n+1)))`
-/

namespace A337873.P4425116673853489779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (A337874 (2 * (n + 1))).toNat

end

end A337873.P4425116673853489779

/-! ## A337873.P14937316687312942361

`∑{d}[A337874(2*(n+1)), A069097(#)]`
-/

namespace A337873.P14937316687312942361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337874 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069097 d

end

end A337873.P14937316687312942361

/-! ## A337873.P15489656981693824788

`record[A064987(A337874(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A337873.P15489656981693824788
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (A337874 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337873.P15489656981693824788

/-! ## A337873.P12914174695916002292

`record[A064987(A337874((n+1)/2^val(n+1, 2)))]`
-/

namespace A337873.P12914174695916002292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (A337874 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337873.P12914174695916002292

/-! ## A337873.P18182108302105997404

`A000203(A337874(2*n+2))*A337874(2*n+2)`
-/

namespace A337873.P18182108302105997404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A337874 (2 * n + 2)).toNat * A337874 (2 * n + 2)

end

end A337873.P18182108302105997404

/-!
# A337875: Integers that can be written m = k*sigma(k) = q*sigma(q) where (k, q) is a primitive solution of this equation and sigma(m) is the sum of divisors of (m).

The programs for A337875, there is no canonical definition to state claims against.
-/

/-! ## A337875.P8112955465254764978

`A064987(A337876(comp[2*n]))`
-/

namespace A337875.P8112955465254764978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (A337876 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A337875.P8112955465254764978

/-! ## A337875.P16173948846457486238

`record[A064987(A337876(∏{p}[n, #]))]`
-/

namespace A337875.P16173948846457486238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (A337876 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337875.P16173948846457486238

/-! ## A337875.P7142999337508866331

`A064987(record[A337876(2*n+1)])`
-/

namespace A337875.P7142999337508866331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337876 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337875.P7142999337508866331

/-! ## A337875.P9860288342078356408

`lcm(2, A064987(A337876(2*(n+1))))`
-/

namespace A337875.P9860288342078356408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A064987 (A337876 (2 * (n + 1))).toNat)

end

end A337875.P9860288342078356408

/-! ## A337875.P9677372749494480875

`A064987(A337876(2*n+1)+floor(acot(n)²))`
-/

namespace A337875.P9677372749494480875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (A337876 (2 * n + 1) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋).toNat

end

end A337875.P9677372749494480875

/-!
# A337876: Table read by rows, in which the n-th row lists all the primitive solutions k, in increasing order, such that k*sigma(k) = A337875(n).

The programs for A337876, there is no canonical definition to state claims against.
-/

/-! ## A337876.P15042534616168076332

`A113791(record[A113730(n+2)])`
-/

namespace A337876.P15042534616168076332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113730 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113791 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337876.P15042534616168076332

/-! ## A337876.P14289903718286300614

`∩[A113791(n+1), A371422(n+1)]`
-/

namespace A337876.P14289903718286300614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337876.P14289903718286300614

/-! ## A337876.P20047438493150781

`A113791(A355547(n+2))`
-/

namespace A337876.P20047438493150781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113791 (A355547 (n + 2)).toNat

end

end A337876.P20047438493150781

/-!
# A337877: Numbers of the form p^2*q where p and q are primes and p <= q.

The programs for A337877, the canonical program `A337877.P10450886724120392613` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337877 has offset 1).

The definition of A337877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337877.P13161079076937060139

`∪[A030078(n+1), A096156(n+1)]`
-/

namespace A337877.P13161079076937060139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P13161079076937060139

namespace A337877

/-- `∪[A030078(n+1), A096156(n+1)]` -/
def P13161079076937060139.Spec : Prop :=
  ∀ n, (P13161079076937060139.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P3402887695933202632

`filter[A285508(n+1), A319710(#)]`
-/

namespace A337877.P3402887695933202632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A337877.P3402887695933202632

namespace A337877

/-- `filter[A285508(n+1), A319710(#)]` -/
def P3402887695933202632.Spec : Prop :=
  ∀ n, P3402887695933202632.a n = A337877 (n + 1)

end A337877

/-! ## A337877.P14520216576243583476

`eq[3, A329378(n+1)]+1`
-/

namespace A337877.P14520216576243583476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337877.P14520216576243583476

namespace A337877

/-- `eq[3, A329378(n+1)]+1` -/
def P14520216576243583476.Spec : Prop :=
  ∀ n, (P14520216576243583476.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P10450886724120392613

`eq[3, A329617(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A337877

/-- `eq[3, A329617(n+1)]+1` -/
def P10450886724120392613.Spec : Prop :=
  ∀ n, (P10450886724120392613.a n : ℤ) = A337877 (n + 1)

theorem P10450886724120392613.correct : P10450886724120392613.Spec := by
  intro n
  simp only [A337877, Nat.add_sub_cancel]

end A337877

/-! ## A337877.P7248135341720230355

`∩[A285508(n+1), A304686(n+1)]`
-/

namespace A337877.P7248135341720230355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P7248135341720230355

namespace A337877

/-- `∩[A285508(n+1), A304686(n+1)]` -/
def P7248135341720230355.Spec : Prop :=
  ∀ n, (P7248135341720230355.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P14515244358641328728

`filter[A014612(n+1), A319710(#)]`
-/

namespace A337877.P14515244358641328728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A337877.P14515244358641328728

namespace A337877

/-- `filter[A014612(n+1), A319710(#)]` -/
def P14515244358641328728.Spec : Prop :=
  ∀ n, P14515244358641328728.a n = A337877 (n + 1)

end A337877

/-! ## A337877.P14616242936712416136

`∩[A014612(n+1), A304686(n+1)]`
-/

namespace A337877.P14616242936712416136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P14616242936712416136

namespace A337877

/-- `∩[A014612(n+1), A304686(n+1)]` -/
def P14616242936712416136.Spec : Prop :=
  ∀ n, (P14616242936712416136.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P5138453950168699158

`∩[A014612(n+1), A371601(n+1)]`
-/

namespace A337877.P5138453950168699158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P5138453950168699158

namespace A337877

/-- `∩[A014612(n+1), A371601(n+1)]` -/
def P5138453950168699158.Spec : Prop :=
  ∀ n, (P5138453950168699158.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P5037217968474789675

`∩[A285508(n+1), A371601(n+1)]`
-/

namespace A337877.P5037217968474789675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P5037217968474789675

namespace A337877

/-- `∩[A285508(n+1), A371601(n+1)]` -/
def P5037217968474789675.Spec : Prop :=
  ∀ n, (P5037217968474789675.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P4575470749815234917

`∩[A014612(n+1), A283050(n+1)]`
-/

namespace A337877.P4575470749815234917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P4575470749815234917

namespace A337877

/-- `∩[A014612(n+1), A283050(n+1)]` -/
def P4575470749815234917.Spec : Prop :=
  ∀ n, (P4575470749815234917.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P18241111219149002809

`∩[A283050(n+1), A285508(n+1)]`
-/

namespace A337877.P18241111219149002809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P18241111219149002809

namespace A337877

/-- `∩[A283050(n+1), A285508(n+1)]` -/
def P18241111219149002809.Spec : Prop :=
  ∀ n, (P18241111219149002809.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P3261221563056240764

`filter[A298207(n+1), A319710(#)]`
-/

namespace A337877.P3261221563056240764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A337877.P3261221563056240764

namespace A337877

/-- `filter[A298207(n+1), A319710(#)]` -/
def P3261221563056240764.Spec : Prop :=
  ∀ n, P3261221563056240764.a n = A337877 (n + 1)

end A337877

/-! ## A337877.P6545297388264473760

`∩[A283050(n+1), A298207(n+1)]`
-/

namespace A337877.P6545297388264473760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P6545297388264473760

namespace A337877

/-- `∩[A283050(n+1), A298207(n+1)]` -/
def P6545297388264473760.Spec : Prop :=
  ∀ n, (P6545297388264473760.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P672824056389329002

`∩[A298207(n+1), A371601(n+1)]`
-/

namespace A337877.P672824056389329002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P672824056389329002

namespace A337877

/-- `∩[A298207(n+1), A371601(n+1)]` -/
def P672824056389329002.Spec : Prop :=
  ∀ n, (P672824056389329002.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P14000020040601886082

`∩[A014612(n+1), A364160(n+1)]`
-/

namespace A337877.P14000020040601886082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P14000020040601886082

namespace A337877

/-- `∩[A014612(n+1), A364160(n+1)]` -/
def P14000020040601886082.Spec : Prop :=
  ∀ n, (P14000020040601886082.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P13636260371188849553

`∩[A285508(n+1), A364160(n+1)]`
-/

namespace A337877.P13636260371188849553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P13636260371188849553

namespace A337877

/-- `∩[A285508(n+1), A364160(n+1)]` -/
def P13636260371188849553.Spec : Prop :=
  ∀ n, (P13636260371188849553.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P15341039260543398274

`∩[A285508(n+1), A337806(n+1)]`
-/

namespace A337877.P15341039260543398274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P15341039260543398274

namespace A337877

/-- `∩[A285508(n+1), A337806(n+1)]` -/
def P15341039260543398274.Spec : Prop :=
  ∀ n, (P15341039260543398274.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P3574547370442292146

`∩[A285508(n+1), A342523(n+1)]`
-/

namespace A337877.P3574547370442292146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P3574547370442292146

namespace A337877

/-- `∩[A285508(n+1), A342523(n+1)]` -/
def P3574547370442292146.Spec : Prop :=
  ∀ n, (P3574547370442292146.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P14780924484285103143

`∩[A285508(n+1), A325360(n+1)]`
-/

namespace A337877.P14780924484285103143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P14780924484285103143

namespace A337877

/-- `∩[A285508(n+1), A325360(n+1)]` -/
def P14780924484285103143.Spec : Prop :=
  ∀ n, (P14780924484285103143.a n : ℤ) = A337877 (n + 1)

end A337877

/-! ## A337877.P14174275023167523671

`∩[A285508(n+1), A375396(n+1)]`
-/

namespace A337877.P14174275023167523671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337877.P14174275023167523671

namespace A337877

/-- `∩[A285508(n+1), A375396(n+1)]` -/
def P14174275023167523671.Spec : Prop :=
  ∀ n, (P14174275023167523671.a n : ℤ) = A337877 (n + 1)

end A337877

/-!
# A337878: a(n) is the smallest m > 0 such that the n-th prime divides Jacobsthal(m).

The programs for A337878, there is no canonical definition to state claims against.
-/

/-! ## A337878.P2773255683697541512

`A003558(A168565(n+2))`
-/

namespace A337878.P2773255683697541512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A168565 (n + 2)).toNat

end

end A337878.P2773255683697541512

/-! ## A337878.P7906322083904106185

`A309786(A001748(n+2))`
-/

namespace A337878.P7906322083904106185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (A001748 (n + 2)).toNat

end

end A337878.P7906322083904106185

/-! ## A337878.P1766034704323527374

`A309786(A138636(n+2))`
-/

namespace A337878.P1766034704323527374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (A138636 (n + 2)).toNat

end

end A337878.P1766034704323527374

/-! ## A337878.P6529934704352097574

`A323712(p?[2*n+1])`
-/

namespace A337878.P6529934704352097574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A337878.P6529934704352097574

/-! ## A337878.P16904747200138659904

`A323712(A065091(n+1))`
-/

namespace A337878.P16904747200138659904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323712 (A065091 (n + 1)).toNat

end

end A337878.P16904747200138659904

/-! ## A337878.P1803690126606568073

`A323712(A000040(n+2))`
-/

namespace A337878.P1803690126606568073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323712 (A000040 (n + 2)).toNat

end

end A337878.P1803690126606568073

/-! ## A337878.P13631943917862532418

`A323712(A006005(n+2))`
-/

namespace A337878.P13631943917862532418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323712 (A006005 (n + 2)).toNat

end

end A337878.P13631943917862532418

/-! ## A337878.P3930798369237913553

`A323712(A160656(n+2))`
-/

namespace A337878.P3930798369237913553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323712 (A160656 (n + 2)).toNat

end

end A337878.P3930798369237913553

/-!
# A337879: a(n) is the length of the n-th line segment to draw the squares of the Fibonacci spiral without lifting the pencil, including superpositions.

The programs for A337879, the canonical program `A337879.P15350449861583832506` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337879 has offset 1).

The definition of A337879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337879.P15350449861583832506

`a(n-3)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337879

/-- `a(n-3)+a(n-6)` -/
def P15350449861583832506.Spec : Prop :=
  ∀ n, (P15350449861583832506.a n : ℤ) = A337879 (n + 1)

theorem P15350449861583832506.correct : P15350449861583832506.Spec := by
  intro n
  simp only [A337879, Nat.add_sub_cancel]

end A337879

/-! ## A337879.P11512974628937396484

`A000045(∑[(-1)^(n%3)]+1)`
-/

namespace A337879.P11512974628937396484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A337879.P11512974628937396484

namespace A337879

/-- `A000045(∑[(-1)^(n%3)]+1)` -/
def P11512974628937396484.Spec : Prop :=
  ∀ n, P11512974628937396484.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P12746295521962861317

`A000045(∑[gcd(3, ∑[n])-2]+1)`
-/

namespace A337879.P12746295521962861317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A337879.P12746295521962861317

namespace A337879

/-- `A000045(∑[gcd(3, ∑[n])-2]+1)` -/
def P12746295521962861317.Spec : Prop :=
  ∀ n, P12746295521962861317.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P9126795666750472262

`A000045(n+2-2*ceil(n/3))`
-/

namespace A337879.P9126795666750472262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 2 : ℤ) - 2 * ⌈(n : ℚ) / 3⌉).toNat

end

end A337879.P9126795666750472262

namespace A337879

/-- `A000045(n+2-2*ceil(n/3))` -/
def P9126795666750472262.Spec : Prop :=
  ∀ n, P9126795666750472262.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P4049136685489366141

`A053602(A133310(n))`
-/

namespace A337879.P4049136685489366141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A133310 n).toNat

end

end A337879.P4049136685489366141

namespace A337879

/-- `A053602(A133310(n))` -/
def P4049136685489366141.Spec : Prop :=
  ∀ n, P4049136685489366141.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P14447258991562789581

`A097575(A107750(n))`
-/

namespace A337879.P14447258991562789581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A107750 n).toNat

end

end A337879.P14447258991562789581

namespace A337879

/-- `A097575(A107750(n))` -/
def P14447258991562789581.Spec : Prop :=
  ∀ n, P14447258991562789581.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P7152416977348134092

`A212804(A008611(n)+2)`
-/

namespace A337879.P7152416977348134092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A008611 n + 2).toNat

end

end A337879.P7152416977348134092

namespace A337879

/-- `A212804(A008611(n)+2)` -/
def P7152416977348134092.Spec : Prop :=
  ∀ n, P7152416977348134092.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P14557366066406331067

`A103609(2*A047878(n+2))`
-/

namespace A337879.P14557366066406331067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A047878 (n + 2)).toNat

end

end A337879.P14557366066406331067

namespace A337879

/-- `A103609(2*A047878(n+2))` -/
def P14557366066406331067.Spec : Prop :=
  ∀ n, P14557366066406331067.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P1374157891115408349

`A212804(A008612(2*n)+2)`
-/

namespace A337879.P1374157891115408349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A008612 (2 * n) + 2).toNat

end

end A337879.P1374157891115408349

namespace A337879

/-- `A212804(A008612(2*n)+2)` -/
def P1374157891115408349.Spec : Prop :=
  ∀ n, P1374157891115408349.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P11797611008866238464

`A212804(A168056(n)+2-n)`
-/

namespace A337879.P11797611008866238464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A168056 n + (2 - (n : ℤ))).toNat

end

end A337879.P11797611008866238464

namespace A337879

/-- `A212804(A168056(n)+2-n)` -/
def P11797611008866238464.Spec : Prop :=
  ∀ n, P11797611008866238464.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P12652155037652867724

`A212804(2-(n-A168056(n)))`
-/

namespace A337879.P12652155037652867724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 - ((n : ℤ) - A168056 n)).toNat

end

end A337879.P12652155037652867724

namespace A337879

/-- `A212804(2-(n-A168056(n)))` -/
def P12652155037652867724.Spec : Prop :=
  ∀ n, P12652155037652867724.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P15746216962622893395

`A327035(A010872(n+1)+n+2)`
-/

namespace A337879.P15746216962622893395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A010872 (n + 1) + (n + 2 : ℤ)).toNat

end

end A337879.P15746216962622893395

namespace A337879

/-- `A327035(A010872(n+1)+n+2)` -/
def P15746216962622893395.Spec : Prop :=
  ∀ n, P15746216962622893395.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P8964283760375930875

`A053602(A163806(2*n)+A008620(2*n))`
-/

namespace A337879.P8964283760375930875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A163806 (2 * n) + A008620 (2 * n)).toNat

end

end A337879.P8964283760375930875

namespace A337879

/-- `A053602(A163806(2*n)+A008620(2*n))` -/
def P8964283760375930875.Spec : Prop :=
  ∀ n, P8964283760375930875.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P794557458714930280

`A053602(∑[A204418(n+2)]-A079978(n+1))`
-/

namespace A337879.P794557458714930280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (∑ j ∈ Finset.range (n + 1), f1 j - A079978 (n + 1)).toNat

end

end A337879.P794557458714930280

namespace A337879

/-- `A053602(∑[A204418(n+2)]-A079978(n+1))` -/
def P794557458714930280.Spec : Prop :=
  ∀ n, P794557458714930280.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P5813913934462097864

`A053602(A002264(2*n+1)+A163806(n+1)²)`
-/

namespace A337879.P5813913934462097864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A002264 (2 * n + 1) + A163806 (n + 1) ^ 2).toNat

end

end A337879.P5813913934462097864

namespace A337879

/-- `A053602(A002264(2*n+1)+A163806(n+1)²)` -/
def P5813913934462097864.Spec : Prop :=
  ∀ n, P5813913934462097864.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P12657500731830851727

`A006355(A008611(n)+2)/2`
-/

namespace A337879.P12657500731830851727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006355 (A008611 n + 2).toNat : ℚ) / 2

end

end A337879.P12657500731830851727

namespace A337879

/-- `A006355(A008611(n)+2)/2` -/
def P12657500731830851727.Spec : Prop :=
  ∀ n, P12657500731830851727.a n = (A337879 (n + 1) : ℚ)

end A337879

/-! ## A337879.P2649720077611062559

`A001654(floor(n/3)+1)/a(n-1)` with `a(0)=1`
-/

namespace A337879.P2649720077611062559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001654 (⌊(n : ℚ) / 3⌋ + 1).toNat : ℚ) / a (n - 1)

end

end A337879.P2649720077611062559

namespace A337879

/-- `A001654(floor(n/3)+1)/a(n-1)` -/
def P2649720077611062559.Spec : Prop :=
  ∀ n, P2649720077611062559.a n = (A337879 (n + 1) : ℚ)

end A337879

/-! ## A337879.P8765813145984045291

`Δ[record[A083047(n+3)]]`
-/

namespace A337879.P8765813145984045291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337879.P8765813145984045291

namespace A337879

/-- `Δ[record[A083047(n+3)]]` -/
def P8765813145984045291.Spec : Prop :=
  ∀ n, P8765813145984045291.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P14742573832537197809

`A123736(A007891(n+2))`
-/

namespace A337879.P14742573832537197809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123736 (A007891 (n + 2)).toNat

end

end A337879.P14742573832537197809

namespace A337879

/-- `A123736(A007891(n+2))` -/
def P14742573832537197809.Spec : Prop :=
  ∀ n, P14742573832537197809.a n = A337879 (n + 1)

end A337879

/-! ## A337879.P17480476350116550419

`A094102(A339267(n+2))`
-/

namespace A337879.P17480476350116550419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094102 (A339267 (n + 2)).toNat

end

end A337879.P17480476350116550419

namespace A337879

/-- `A094102(A339267(n+2))` -/
def P17480476350116550419.Spec : Prop :=
  ∀ n, P17480476350116550419.a n = A337879 (n + 1)

end A337879

/-!
# A337881: 30*a(n) - 1 is the least prime of the form 2^r*3^s*5^t - 1, r > 0, s > 0, t > 0, r + s + t = n.

The programs for A337881, there is no canonical definition to state claims against.
-/

/-! ## A337881.P12465590180618582490

`A278081(A050433(2*(n+1))+A022895(2*(n+1)))`
-/

namespace A337881.P12465590180618582490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278081 (A050433 (2 * (n + 1)) + A022895 (2 * (n + 1))).toNat

end

end A337881.P12465590180618582490

/-!
# A337882: 30*a(n) + 1 is the least prime of the form 2^r*3^s*5^t + 1, r > 0, s > 0, t > 0, r + s + t = n.

The programs for A337882, there is no canonical definition to state claims against.
-/

/-! ## A337882.P3143325826914299493

`A128558(A072824(n+1)+1)`
-/

namespace A337882.P3143325826914299493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128558 (A072824 (n + 1) + 1).toNat

end

end A337882.P3143325826914299493

/-! ## A337882.P3987518464979052174

`filter[A134136(n+2), A383302(#)]`
-/

namespace A337882.P3987518464979052174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383302 (f1 j).toNat = 1) n)

end

end A337882.P3987518464979052174

/-!
# A337883: Array read by descending antidiagonals: T(n,k) is the number of oriented colorings of the triangular faces of a regular n-dimensional simplex using k or fewer colors.

The programs for A337883, there is no canonical definition to state claims against.
-/

/-! ## A337883.P3412729563045838791

`A337885(n+2)+A337884(n+2)`
-/

namespace A337883.P3412729563045838791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337885 (n + 2) + A337884 (n + 2)

end

end A337883.P3412729563045838791

/-! ## A337883.P9077054426809255439

`A337886(n+2)+2*A337885(n+2)`
-/

namespace A337883.P9077054426809255439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337886 (n + 2) + 2 * A337885 (n + 2)

end

end A337883.P9077054426809255439

/-! ## A337883.P1209301425577405635

`2*A337884(n+2)-A337886(n+2)`
-/

namespace A337883.P1209301425577405635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337884 (n + 2) - A337886 (n + 2)

end

end A337883.P1209301425577405635

/-! ## A337883.P950220539687018657

`A337885(A028310(n+2))+A337886(n+2)+A337885(n+2)`
-/

namespace A337883.P950220539687018657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337885 (A028310 (n + 2)).toNat + (A337886 (n + 2) + A337885 (n + 2))

end

end A337883.P950220539687018657

/-! ## A337883.P1478046427632613746

`A337884(A000027(n+2))+A337884(n+2)-A337886(n+2)`
-/

namespace A337883.P1478046427632613746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337884 (A000027 (n + 2)).toNat + (A337884 (n + 2) - A337886 (n + 2))

end

end A337883.P1478046427632613746

/-!
# A337884: Array read by descending antidiagonals: T(n,k) is the number of unoriented colorings of the triangular faces of a regular n-dimensional simplex using k or fewer colors.

The programs for A337884, there is no canonical definition to state claims against.
-/

/-! ## A337884.P14021730662561719003

`A337886(n+2)+A337885(n+2)`
-/

namespace A337884.P14021730662561719003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337886 (n + 2) + A337885 (n + 2)

end

end A337884.P14021730662561719003

/-! ## A337884.P18150615948061567641

`A337883(n+2)-A337885(n+2)`
-/

namespace A337884.P18150615948061567641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337883 (n + 2) - A337885 (n + 2)

end

end A337884.P18150615948061567641

/-! ## A337884.P11405348840491697968

`(A337886(n+2)+A337883(n+2))/2`
-/

namespace A337884.P11405348840491697968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337886 (n + 2) + A337883 (n + 2) : ℚ) / 2

end

end A337884.P11405348840491697968

/-! ## A337884.P3733978374458357287

`A337883(n+2)+A057428(n)*A337885(n+2)`
-/

namespace A337884.P3733978374458357287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337883 (n + 2) + A057428 n * A337885 (n + 2)

end

end A337884.P3733978374458357287

/-! ## A337884.P9654683783577160568

`A014682(A337886(n+2)+A337883(n+2))`
-/

namespace A337884.P9654683783577160568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A337886 (n + 2) + A337883 (n + 2)).toNat

end

end A337884.P9654683783577160568

/-!
# A337885: Array read by descending antidiagonals: T(n,k) is the number of chiral pairs of colorings of the triangular faces of a regular n-dimensional simplex using k or fewer colors.

The programs for A337885, there is no canonical definition to state claims against.
-/

/-! ## A337885.P7741721277348524644

`A337883(n+2)-A337884(n+2)`
-/

namespace A337885.P7741721277348524644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337883 (n + 2) - A337884 (n + 2)

end

end A337885.P7741721277348524644

/-! ## A337885.P2777905268319374844

`A337884(n+2)-A337886(n+2)`
-/

namespace A337885.P2777905268319374844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337884 (n + 2) - A337886 (n + 2)

end

end A337885.P2777905268319374844

/-! ## A337885.P14901675002226310327

`(A337883(n+2)-A337886(n+2))/2`
-/

namespace A337885.P14901675002226310327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337883 (n + 2) - A337886 (n + 2) : ℚ) / 2

end

end A337885.P14901675002226310327

/-! ## A337885.P11301910384401376337

`A337883(A000027(n+2))%A337884(n+2)`
-/

namespace A337885.P11301910384401376337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337883 (A000027 (n + 2)).toNat) (A337884 (n + 2))

end

end A337885.P11301910384401376337

/-! ## A337885.P13424494428123461103

`(A337883(n+2)+A000007(n))%A337884(n+2)`
-/

namespace A337885.P13424494428123461103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337883 (n + 2) + A000007 n) (A337884 (n + 2))

end

end A337885.P13424494428123461103

/-!
# A337886: Array read by descending antidiagonals: T(n,k) is the number of achiral colorings of the triangular faces of a regular n-dimensional simplex using k or fewer colors.

The programs for A337886, there is no canonical definition to state claims against.
-/

/-! ## A337886.P15501288167281138606

`A337884(n+2)-A337885(n+2)`
-/

namespace A337886.P15501288167281138606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337884 (n + 2) - A337885 (n + 2)

end

end A337886.P15501288167281138606

/-! ## A337886.P430334746897095529

`2*A337884(n+2)-A337883(n+2)`
-/

namespace A337886.P430334746897095529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337884 (n + 2) - A337883 (n + 2)

end

end A337886.P430334746897095529

/-! ## A337886.P11900409060403309661

`A337883(n+2)-2*A337885(n+2)`
-/

namespace A337886.P11900409060403309661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337883 (n + 2) - 2 * A337885 (n + 2)

end

end A337886.P11900409060403309661

/-! ## A337886.P11311925480050799177

`A337884(n+2)+A057428(n)*A337885(n+2)`
-/

namespace A337886.P11311925480050799177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337884 (n + 2) + A057428 n * A337885 (n + 2)

end

end A337886.P11311925480050799177

/-! ## A337886.P15832739207317813837

`A337884(n+2)-A337883(A000027(n+2))%A337884(n+2)`
-/

namespace A337886.P15832739207317813837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337884 (n + 2) - Int.tmod (A337883 (A000027 (n + 2)).toNat) (A337884 (n + 2))

end

end A337886.P15832739207317813837

/-!
# A337887: Array read by descending antidiagonals: T(n,k) is the number of oriented colorings of the square faces of a regular n-dimensional orthotope (hypercube) using k or fewer colors.

The programs for A337887, there is no canonical definition to state claims against.
-/

/-! ## A337887.P9218340166783519962

`A337889(n+2)+A337888(n+2)`
-/

namespace A337887.P9218340166783519962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337889 (n + 2) + A337888 (n + 2)

end

end A337887.P9218340166783519962

/-! ## A337887.P3101783379467583349

`A337890(n+2)+2*A337889(n+2)`
-/

namespace A337887.P3101783379467583349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337890 (n + 2) + 2 * A337889 (n + 2)

end

end A337887.P3101783379467583349

/-! ## A337887.P6205173007807400824

`2*A337888(n+2)-A337890(n+2)`
-/

namespace A337887.P6205173007807400824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337888 (n + 2) - A337890 (n + 2)

end

end A337887.P6205173007807400824

/-! ## A337887.P7790727660359841589

`A000027(A337889(n+2)+A337890(n+2)+A337889(n+2))`
-/

namespace A337887.P7790727660359841589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A337889 (n + 2) + (A337890 (n + 2) + A337889 (n + 2))).toNat

end

end A337887.P7790727660359841589

/-! ## A337887.P10085952904279738839

`A000027(A337888(n+2)+A337888(n+2)-A337890(n+2))`
-/

namespace A337887.P10085952904279738839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A337888 (n + 2) + (A337888 (n + 2) - A337890 (n + 2))).toNat

end

end A337887.P10085952904279738839

/-!
# A337888: Array read by descending antidiagonals: T(n,k) is the number of unoriented colorings of the square faces of a regular n-dimensional orthotope (hypercube) using k or fewer colors.

The programs for A337888, there is no canonical definition to state claims against.
-/

/-! ## A337888.P18444446573021800899

`A337890(n+2)+A337889(n+2)`
-/

namespace A337888.P18444446573021800899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337890 (n + 2) + A337889 (n + 2)

end

end A337888.P18444446573021800899

/-! ## A337888.P12627661354082823581

`A337887(n+2)-A337889(n+2)`
-/

namespace A337888.P12627661354082823581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337887 (n + 2) - A337889 (n + 2)

end

end A337888.P12627661354082823581

/-! ## A337888.P8105969542808808135

`(A337890(n+2)+A337887(n+2))/2`
-/

namespace A337888.P8105969542808808135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337890 (n + 2) + A337887 (n + 2) : ℚ) / 2

end

end A337888.P8105969542808808135

/-! ## A337888.P7731407897207752556

`A014682(A337890(n+2)+A337887(n+2))`
-/

namespace A337888.P7731407897207752556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A337890 (n + 2) + A337887 (n + 2)).toNat

end

end A337888.P7731407897207752556

/-! ## A337888.P13025491557634586615

`A337890(n+2)+A180464(n)%A180487(A180501(n))`
-/

namespace A337888.P13025491557634586615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337890 (n + 2) + Int.tmod (A180464 n) (A180487 (A180501 n).toNat)

end

end A337888.P13025491557634586615

/-!
# A337889: Array read by descending antidiagonals: T(n,k) is the number of chiral pairs of colorings of the square faces of a regular n-dimensional orthotope (hypercube) using k or fewer colors.

The programs for A337889, there is no canonical definition to state claims against.
-/

/-! ## A337889.P17559505678731129038

`A337887(n+2)-A337888(n+2)`
-/

namespace A337889.P17559505678731129038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337887 (n + 2) - A337888 (n + 2)

end

end A337889.P17559505678731129038

/-! ## A337889.P2258327574855754215

`A337888(n+2)-A337890(n+2)`
-/

namespace A337889.P2258327574855754215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337888 (n + 2) - A337890 (n + 2)

end

end A337889.P2258327574855754215

/-! ## A337889.P15187369102933562876

`(A337887(n+2)-A337890(n+2))/2`
-/

namespace A337889.P15187369102933562876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337887 (n + 2) - A337890 (n + 2) : ℚ) / 2

end

end A337889.P15187369102933562876

/-! ## A337889.P1408714722890202579

`A337887(A110514(2*(n+1)))%A337888(n+2)`
-/

namespace A337889.P1408714722890202579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337887 (A110514 (2 * (n + 1))).toNat) (A337888 (n + 2))

end

end A337889.P1408714722890202579

/-! ## A337889.P11548999178187045674

`A180464(n)%A180487(A180501(n))`
-/

namespace A337889.P11548999178187045674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180464 n) (A180487 (A180501 n).toNat)

end

end A337889.P11548999178187045674

/-!
# A337890: Array read by descending antidiagonals: T(n,k) is the number of achiral colorings of the square faces of a regular n-dimensional orthotope (hypercube) using k or fewer colors.

The programs for A337890, there is no canonical definition to state claims against.
-/

/-! ## A337890.P1671234246572204321

`A337888(n+2)-A337889(n+2)`
-/

namespace A337890.P1671234246572204321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337888 (n + 2) - A337889 (n + 2)

end

end A337890.P1671234246572204321

/-! ## A337890.P7485093637009091328

`2*A337888(n+2)-A337887(n+2)`
-/

namespace A337890.P7485093637009091328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337888 (n + 2) - A337887 (n + 2)

end

end A337890.P7485093637009091328

/-! ## A337890.P9041545541737145329

`A337887(n+2)-2*A337889(n+2)`
-/

namespace A337890.P9041545541737145329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337887 (n + 2) - 2 * A337889 (n + 2)

end

end A337890.P9041545541737145329

/-! ## A337890.P1645456455053421569

`A000027(A337888(n+2)+A337888(n+2)-A337887(n+2))`
-/

namespace A337890.P1645456455053421569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A337888 (n + 2) + (A337888 (n + 2) - A337887 (n + 2))).toNat

end

end A337890.P1645456455053421569

/-! ## A337890.P12757276254377536770

`A000027(A337887(n+2)-A337889(n+2)-A337889(n+2))`
-/

namespace A337890.P12757276254377536770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A337887 (n + 2) - A337889 (n + 2) - A337889 (n + 2)).toNat

end

end A337890.P12757276254377536770

/-!
# A337891: Array read by descending antidiagonals: T(n,k) is the number of oriented colorings of the faces of a regular n-dimensional orthoplex (cross polytope) using k or fewer colors.

The programs for A337891, there is no canonical definition to state claims against.
-/

/-! ## A337891.P7175452814625187934

`A337893(n+2)+A337892(n+2)`
-/

namespace A337891.P7175452814625187934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337893 (n + 2) + A337892 (n + 2)

end

end A337891.P7175452814625187934

/-! ## A337891.P9177412369657417724

`A337894(n+2)+2*A337893(n+2)`
-/

namespace A337891.P9177412369657417724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337894 (n + 2) + 2 * A337893 (n + 2)

end

end A337891.P9177412369657417724

/-! ## A337891.P5540318675349131782

`2*A337892(n+2)-A337894(n+2)`
-/

namespace A337891.P5540318675349131782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337892 (n + 2) - A337894 (n + 2)

end

end A337891.P5540318675349131782

/-! ## A337891.P8834607130186670660

`A337893(A000027(n+2))+A337894(n+2)+A337893(n+2)`
-/

namespace A337891.P8834607130186670660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337893 (A000027 (n + 2)).toNat + (A337894 (n + 2) + A337893 (n + 2))

end

end A337891.P8834607130186670660

/-! ## A337891.P10297659020263237045

`A337892(A000027(n+2))+A337892(n+2)-A337894(n+2)`
-/

namespace A337891.P10297659020263237045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337892 (A000027 (n + 2)).toNat + (A337892 (n + 2) - A337894 (n + 2))

end

end A337891.P10297659020263237045

/-!
# A337892: Array read by descending antidiagonals: T(n,k) is the number of unoriented colorings of the faces of a regular n-dimensional orthoplex (cross polytope) using k or fewer colors.

The programs for A337892, there is no canonical definition to state claims against.
-/

/-! ## A337892.P55134855561447914

`A337894(n+2)+A337893(n+2)`
-/

namespace A337892.P55134855561447914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337894 (n + 2) + A337893 (n + 2)

end

end A337892.P55134855561447914

/-! ## A337892.P2167211620196024438

`A337891(n+2)-A337893(n+2)`
-/

namespace A337892.P2167211620196024438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337891 (n + 2) - A337893 (n + 2)

end

end A337892.P2167211620196024438

/-! ## A337892.P5743419073615985685

`(A337894(n+2)+A337891(n+2))/2`
-/

namespace A337892.P5743419073615985685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337894 (n + 2) + A337891 (n + 2) : ℚ) / 2

end

end A337892.P5743419073615985685

/-! ## A337892.P4947189065255304003

`A057484(A153189(n+1))-A337893(n+2)`
-/

namespace A337892.P4947189065255304003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057484 (A153189 (n + 1)).toNat - A337893 (n + 2)

end

end A337892.P4947189065255304003

/-!
# A337893: Array read by descending antidiagonals: T(n,k) is the number of chiral pairs of colorings of the faces of a regular n-dimensional orthoplex (cross polytope) using k or fewer colors.

The programs for A337893, there is no canonical definition to state claims against.
-/

/-! ## A337893.P3834081567503738513

`A337891(n+2)-A337892(n+2)`
-/

namespace A337893.P3834081567503738513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337891 (n + 2) - A337892 (n + 2)

end

end A337893.P3834081567503738513

/-! ## A337893.P9117755465633731553

`A337892(n+2)-A337894(n+2)`
-/

namespace A337893.P9117755465633731553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337892 (n + 2) - A337894 (n + 2)

end

end A337893.P9117755465633731553

/-! ## A337893.P2103597167744084945

`(A337891(n+2)-A337894(n+2))/2`
-/

namespace A337893.P2103597167744084945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337891 (n + 2) - A337894 (n + 2) : ℚ) / 2

end

end A337893.P2103597167744084945

/-!
# A337894: Array read by descending antidiagonals: T(n,k) is the number of achiral colorings of the faces of a regular n-dimensional orthoplex (cross polytope) using k or fewer colors.

The programs for A337894, there is no canonical definition to state claims against.
-/

/-! ## A337894.P14463556272946341329

`A337892(n+2)-A337893(n+2)`
-/

namespace A337894.P14463556272946341329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337892 (n + 2) - A337893 (n + 2)

end

end A337894.P14463556272946341329

/-! ## A337894.P7024393091105659673

`2*A337892(n+2)-A337891(n+2)`
-/

namespace A337894.P7024393091105659673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337892 (n + 2) - A337891 (n + 2)

end

end A337894.P7024393091105659673

/-! ## A337894.P320906165166938178

`A337891(n+2)-2*A337893(n+2)`
-/

namespace A337894.P320906165166938178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337891 (n + 2) - 2 * A337893 (n + 2)

end

end A337894.P320906165166938178

/-! ## A337894.P15766515522885890046

`A337892(A000027(n+2))-(A337891(n+2)-A337892(n+2))`
-/

namespace A337894.P15766515522885890046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337892 (A000027 (n + 2)).toNat - (A337891 (n + 2) - A337892 (n + 2))

end

end A337894.P15766515522885890046

/-! ## A337894.P11558545298493130794

`A337891(n+2)-A337893(n+2)-A337893(A000027(n+2))`
-/

namespace A337894.P11558545298493130794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337891 (n + 2) - A337893 (n + 2) - A337893 (A000027 (n + 2)).toNat

end

end A337894.P11558545298493130794

/-!
# A337895: Number of oriented colorings of the tetrahedral facets (or vertices) of a regular 4-dimensional simplex using n or fewer colors.

The programs for A337895, the canonical program `A337895.P12478577485542178731` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337895 has offset 1).

The definition of A337895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337895.P9017089434375795336

`C(4+n+1, 5)+C(n+1, 5)`
-/

namespace A337895.P9017089434375795336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 + (n + 1)) 5 + Nat.choose (n + 1) 5

end

end A337895.P9017089434375795336

namespace A337895

/-- `C(4+n+1, 5)+C(n+1, 5)` -/
def P9017089434375795336.Spec : Prop :=
  ∀ n, (P9017089434375795336.a n : ℤ) = A337895 (n + 1)

end A337895

/-! ## A337895.P6178232298495873875

`(n+1)*(24+35*(n+1)²+(n+1)^4)/60`
-/

namespace A337895.P6178232298495873875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (24 + 35 * (n + 1) ^ 2 + (n + 1) ^ 4) : ℚ) / 60

end

end A337895.P6178232298495873875

namespace A337895

/-- `(n+1)*(24+35*(n+1)²+(n+1)^4)/60` -/
def P6178232298495873875.Spec : Prop :=
  ∀ n, P6178232298495873875.a n = (A337895 (n + 1) : ℚ)

end A337895

/-! ## A337895.P12478577485542178731

`2*A000389(n+1)+A132366(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337895

/-- `2*A000389(n+1)+A132366(n)` -/
def P12478577485542178731.Spec : Prop :=
  ∀ n, P12478577485542178731.a n = A337895 (n + 1)

theorem P12478577485542178731.correct : P12478577485542178731.Spec := by
  intro n
  simp only [A337895, Nat.add_sub_cancel]

end A337895

/-! ## A337895.P3529832694763110744

`A000389(n+5)+A000389(n+1)`
-/

namespace A337895.P3529832694763110744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) + A000389 (n + 1)

end

end A337895.P3529832694763110744

namespace A337895

/-- `A000389(n+5)+A000389(n+1)` -/
def P3529832694763110744.Spec : Prop :=
  ∀ n, P3529832694763110744.a n = A337895 (n + 1)

end A337895

/-! ## A337895.P4871666706337991746

`∑[C(n, 4)]+C(n+5, 5)`
-/

namespace A337895.P4871666706337991746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 5) 5

end

end A337895.P4871666706337991746

namespace A337895

/-- `∑[C(n, 4)]+C(n+5, 5)` -/
def P4871666706337991746.Spec : Prop :=
  ∀ n, (P4871666706337991746.a n : ℤ) = A337895 (n + 1)

end A337895

/-! ## A337895.P14205309658290355610

`∑[∑[A140226(n)]]`
-/

namespace A337895.P14205309658290355610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337895.P14205309658290355610

namespace A337895

/-- `∑[∑[A140226(n)]]` -/
def P14205309658290355610.Spec : Prop :=
  ∀ n, P14205309658290355610.a n = A337895 (n + 1)

end A337895

/-! ## A337895.P5848698731530990726

`A005585(n+1)-A002817(n)`
-/

namespace A337895.P5848698731530990726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) - A002817 n

end

end A337895.P5848698731530990726

namespace A337895

/-- `A005585(n+1)-A002817(n)` -/
def P5848698731530990726.Spec : Prop :=
  ∀ n, P5848698731530990726.a n = A337895 (n + 1)

end A337895

/-! ## A337895.P1023653646577867162

`A387429(n+1)-A292053(n+1)`
-/

namespace A337895.P1023653646577867162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387429 (n + 1) - A292053 (n + 1)

end

end A337895.P1023653646577867162

namespace A337895

/-- `A387429(n+1)-A292053(n+1)` -/
def P1023653646577867162.Spec : Prop :=
  ∀ n, P1023653646577867162.a n = A337895 (n + 1)

end A337895

/-! ## A337895.P14430050261745812665

`A081282(n+1)-A002415(n)`
-/

namespace A337895.P14430050261745812665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081282 (n + 1) - A002415 n

end

end A337895.P14430050261745812665

namespace A337895

/-- `A081282(n+1)-A002415(n)` -/
def P14430050261745812665.Spec : Prop :=
  ∀ n, P14430050261745812665.a n = A337895 (n + 1)

end A337895

/-! ## A337895.P7981983965735133910

`A081284(2*n+1)-A002415(n)`
-/

namespace A337895.P7981983965735133910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 (2 * n + 1) - A002415 n

end

end A337895.P7981983965735133910

namespace A337895

/-- `A081284(2*n+1)-A002415(n)` -/
def P7981983965735133910.Spec : Prop :=
  ∀ n, P7981983965735133910.a n = A337895 (n + 1)

end A337895

/-! ## A337895.P5024179275053800978

`∑[A081283(2*n+1)]-A002415(n)`
-/

namespace A337895.P5024179275053800978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081283 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002415 n

end

end A337895.P5024179275053800978

namespace A337895

/-- `∑[A081283(2*n+1)]-A002415(n)` -/
def P5024179275053800978.Spec : Prop :=
  ∀ n, P5024179275053800978.a n = A337895 (n + 1)

end A337895

/-! ## A337895.P13503500729753005661

`A005585(n+1)-A000217(∑[n])`
-/

namespace A337895.P13503500729753005661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) - A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337895.P13503500729753005661

namespace A337895

/-- `A005585(n+1)-A000217(∑[n])` -/
def P13503500729753005661.Spec : Prop :=
  ∀ n, P13503500729753005661.a n = A337895 (n + 1)

end A337895

/-! ## A337895.P8010299264385353142

`A177747(2*n)-A000217(A000217(n))`
-/

namespace A337895.P8010299264385353142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177747 (2 * n) - A000217 (A000217 n).toNat

end

end A337895.P8010299264385353142

namespace A337895

/-- `A177747(2*n)-A000217(A000217(n))` -/
def P8010299264385353142.Spec : Prop :=
  ∀ n, P8010299264385353142.a n = A337895 (n + 1)

end A337895

/-! ## A337895.P14295776558406723698

`A213551(A000124(n))+A000389(n+1)`
-/

namespace A337895.P14295776558406723698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213551 (A000124 n).toNat + A000389 (n + 1)

end

end A337895.P14295776558406723698

namespace A337895

/-- `A213551(A000124(n))+A000389(n+1)` -/
def P14295776558406723698.Spec : Prop :=
  ∀ n, P14295776558406723698.a n = A337895 (n + 1)

end A337895

/-! ## A337895.P17475532830771343529

`A005585(n+1)+A000217(n)-A000096(A000217(n))`
-/

namespace A337895.P17475532830771343529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A000217 n - A000096 (A000217 n).toNat)

end

end A337895.P17475532830771343529

namespace A337895

/-- `A005585(n+1)+A000217(n)-A000096(A000217(n))` -/
def P17475532830771343529.Spec : Prop :=
  ∀ n, P17475532830771343529.a n = A337895 (n + 1)

end A337895

/-!
# A337896: Number of chiral pairs of colorings of the 8 triangular faces of a regular octahedron or the 8 vertices of a cube using n or fewer colors.

The programs for A337896, the canonical program `A337896.P6953892982820022893` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337896 has offset 1).

The definition of A337896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337896.P1764387480315031896

`n*(n+1)²*(n+2)*(8-5*(n+1)²+(n+1)^4)/48`
-/

namespace A337896.P1764387480315031896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) ^ 2 * (n + 2) : ℤ) * (8 - (5 * (n + 1) ^ 2 : ℤ) + ((n + 1) ^ 4 : ℤ)) : ℚ) / 48

end

end A337896.P1764387480315031896

namespace A337896

/-- `n*(n+1)²*(n+2)*(8-5*(n+1)²+(n+1)^4)/48` -/
def P1764387480315031896.Spec : Prop :=
  ∀ n, P1764387480315031896.a n = (A337896 (n + 1) : ℚ)

end A337896

/-! ## A337896.P9167836663035526717

`A128766(n+1)-A337897(n+1)`
-/

namespace A337896.P9167836663035526717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128766 (n + 1) - A337897 (n + 1)

end

end A337896.P9167836663035526717

namespace A337896

/-- `A128766(n+1)-A337897(n+1)` -/
def P9167836663035526717.Spec : Prop :=
  ∀ n, P9167836663035526717.a n = A337896 (n + 1)

end A337896

/-! ## A337896.P6953892982820022893

`A000543(n+1)-A128766(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337896

/-- `A000543(n+1)-A128766(n+1)` -/
def P6953892982820022893.Spec : Prop :=
  ∀ n, P6953892982820022893.a n = A337896 (n + 1)

theorem P6953892982820022893.correct : P6953892982820022893.Spec := by
  intro n
  simp only [A337896, Nat.add_sub_cancel]

end A337896

/-! ## A337896.P10692439374875700484

`∑[A100789(n)]-A128766(n+1)`
-/

namespace A337896.P10692439374875700484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A128766 (n + 1)

end

end A337896.P10692439374875700484

namespace A337896

/-- `∑[A100789(n)]-A128766(n+1)` -/
def P10692439374875700484.Spec : Prop :=
  ∀ n, P10692439374875700484.a n = A337896 (n + 1)

end A337896

/-! ## A337896.P8754615183862050880

`A002415(n+1)+A033488(n)*A050534(n+1)`
-/

namespace A337896.P8754615183862050880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + A033488 n * A050534 (n + 1)

end

end A337896.P8754615183862050880

namespace A337896

/-- `A002415(n+1)+A033488(n)*A050534(n+1)` -/
def P8754615183862050880.Spec : Prop :=
  ∀ n, P8754615183862050880.a n = A337896 (n + 1)

end A337896

/-! ## A337896.P15517922764458053590

`A000543(A110514(2*n))%A128766(n+1)`
-/

namespace A337896.P15517922764458053590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000543 (A110514 (2 * n)).toNat) (A128766 (n + 1))

end

end A337896.P15517922764458053590

namespace A337896

/-- `A000543(A110514(2*n))%A128766(n+1)` -/
def P15517922764458053590.Spec : Prop :=
  ∀ n, P15517922764458053590.a n = A337896 (n + 1)

end A337896

/-!
# A337897: Number of achiral colorings of the 8 triangular faces of a regular octahedron or the 8 vertices of a cube using n or fewer colors.

The programs for A337897, the canonical program `A337897.P10101254054845046804` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337897 has offset 1).

The definition of A337897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337897.P14277590319359989286

`(n+1)²*(7+2*(n+1)²+3*(n+1)^4)/12`
-/

namespace A337897.P14277590319359989286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * (7 + 2 * (n + 1) ^ 2 + 3 * (n + 1) ^ 4) : ℚ) / 12

end

end A337897.P14277590319359989286

namespace A337897

/-- `(n+1)²*(7+2*(n+1)²+3*(n+1)^4)/12` -/
def P14277590319359989286.Spec : Prop :=
  ∀ n, P14277590319359989286.a n = (A337897 (n + 1) : ℚ)

end A337897

/-! ## A337897.P10101254054845046804

`A128766(n+1)-A337896(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337897

/-- `A128766(n+1)-A337896(n+1)` -/
def P10101254054845046804.Spec : Prop :=
  ∀ n, P10101254054845046804.a n = A337897 (n + 1)

theorem P10101254054845046804.correct : P10101254054845046804.Spec := by
  intro n
  simp only [A337897, Nat.add_sub_cancel]

end A337897

/-! ## A337897.P16396504198171962338

`2*A128766(n+1)-A000543(n+1)`
-/

namespace A337897.P16396504198171962338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128766 (n + 1) - A000543 (n + 1)

end

end A337897.P16396504198171962338

namespace A337897

/-- `2*A128766(n+1)-A000543(n+1)` -/
def P16396504198171962338.Spec : Prop :=
  ∀ n, P16396504198171962338.a n = A337897 (n + 1)

end A337897

/-! ## A337897.P6957461747651846341

`A000543(n+1)-2*A337896(n+1)`
-/

namespace A337897.P6957461747651846341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 (n + 1) - 2 * A337896 (n + 1)

end

end A337897.P6957461747651846341

namespace A337897

/-- `A000543(n+1)-2*A337896(n+1)` -/
def P6957461747651846341.Spec : Prop :=
  ∀ n, P6957461747651846341.a n = A337897 (n + 1)

end A337897

/-! ## A337897.P16170614472586011906

`∑[A057813(n)]+A027480(n)²`
-/

namespace A337897.P16170614472586011906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A027480 n ^ 2

end

end A337897.P16170614472586011906

namespace A337897

/-- `∑[A057813(n)]+A027480(n)²` -/
def P16170614472586011906.Spec : Prop :=
  ∀ n, P16170614472586011906.a n = A337897 (n + 1)

end A337897

/-! ## A337897.P7163934353687411332

`2*A128766(n+1)-∑[A100789(n)]`
-/

namespace A337897.P7163934353687411332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128766 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337897.P7163934353687411332

namespace A337897

/-- `2*A128766(n+1)-∑[A100789(n)]` -/
def P7163934353687411332.Spec : Prop :=
  ∀ n, P7163934353687411332.a n = A337897 (n + 1)

end A337897

/-! ## A337897.P846123864551952343

`∑[A100789(n)]-2*A337896(n+1)`
-/

namespace A337897.P846123864551952343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A337896 (n + 1)

end

end A337897.P846123864551952343

namespace A337897

/-- `∑[A100789(n)]-2*A337896(n+1)` -/
def P846123864551952343.Spec : Prop :=
  ∀ n, P846123864551952343.a n = A337897 (n + 1)

end A337897

/-! ## A337897.P13855218192472398685

`A071270(n+1)+A027480(n)²`
-/

namespace A337897.P13855218192472398685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 (n + 1) + A027480 n ^ 2

end

end A337897.P13855218192472398685

namespace A337897

/-- `A071270(n+1)+A027480(n)²` -/
def P13855218192472398685.Spec : Prop :=
  ∀ n, P13855218192472398685.a n = A337897 (n + 1)

end A337897

/-! ## A337897.P17598333935753156463

`A135509(n+1)-∑[A002492(n)]`
-/

namespace A337897.P17598333935753156463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135509 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337897.P17598333935753156463

namespace A337897

/-- `A135509(n+1)-∑[A002492(n)]` -/
def P17598333935753156463.Spec : Prop :=
  ∀ n, P17598333935753156463.a n = A337897 (n + 1)

end A337897

/-! ## A337897.P8709707286656692740

`A071270(n+1)+A135503(n+1)²`
-/

namespace A337897.P8709707286656692740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 (n + 1) + A135503 (n + 1) ^ 2

end

end A337897.P8709707286656692740

namespace A337897

/-- `A071270(n+1)+A135503(n+1)²` -/
def P8709707286656692740.Spec : Prop :=
  ∀ n, P8709707286656692740.a n = A337897 (n + 1)

end A337897

/-!
# A337898: Number of achiral colorings of the 6 square faces of a cube or the 6 vertices of a regular octahedron using n or fewer colors.

The programs for A337898, the canonical program `A337898.P7349803077682463069` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337898 has offset 1).

The definition of A337898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337898.P13073323946125550061

`(n+1)*(n+2)*(n+3)*(3*(n+1)²-3*(n+1)+4)/24`
-/

namespace A337898.P13073323946125550061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) * (n + 3) : ℤ) * ((3 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 4) : ℚ) / 24

end

end A337898.P13073323946125550061

namespace A337898

/-- `(n+1)*(n+2)*(n+3)*(3*(n+1)²-3*(n+1)+4)/24` -/
def P13073323946125550061.Spec : Prop :=
  ∀ n, P13073323946125550061.a n = (A337898 (n + 1) : ℚ)

end A337898

/-! ## A337898.P7349803077682463069

`2*A198833(n+1)-A047780(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337898

/-- `2*A198833(n+1)-A047780(n+1)` -/
def P7349803077682463069.Spec : Prop :=
  ∀ n, P7349803077682463069.a n = A337898 (n + 1)

theorem P7349803077682463069.correct : P7349803077682463069.Spec := by
  intro n
  simp only [A337898, Nat.add_sub_cancel]

end A337898

/-! ## A337898.P8998296646211112354

`A198833(n+1)-A093566(n+2)`
-/

namespace A337898.P8998296646211112354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198833 (n + 1) - A093566 (n + 2)

end

end A337898.P8998296646211112354

namespace A337898

/-- `A198833(n+1)-A093566(n+2)` -/
def P8998296646211112354.Spec : Prop :=
  ∀ n, P8998296646211112354.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P7540955009291777416

`A047780(n+1)-2*A093566(n+2)`
-/

namespace A337898.P7540955009291777416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047780 (n + 1) - 2 * A093566 (n + 2)

end

end A337898.P7540955009291777416

namespace A337898

/-- `A047780(n+1)-2*A093566(n+2)` -/
def P7540955009291777416.Spec : Prop :=
  ∀ n, P7540955009291777416.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P4196574720088095042

`∑[∑[(n+1)*∑[a(n-1)+5]]]` with `a(0)=1, a(1)=3`
-/

namespace A337898.P4196574720088095042
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337898.P4196574720088095042

namespace A337898

/-- `∑[∑[(n+1)*∑[a(n-1)+5]]]` -/
def P4196574720088095042.Spec : Prop :=
  ∀ n, (P4196574720088095042.a n : ℤ) = A337898 (n + 1)

end A337898

/-! ## A337898.P4790332622946579068

`A260513(n+1)+∑[n]²`
-/

namespace A337898.P4790332622946579068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260513 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A337898.P4790332622946579068

namespace A337898

/-- `A260513(n+1)+∑[n]²` -/
def P4790332622946579068.Spec : Prop :=
  ∀ n, P4790332622946579068.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P2139843521598679519

`∑[∑[(n+1)*A116668(n)]]`
-/

namespace A337898.P2139843521598679519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A116668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337898.P2139843521598679519

namespace A337898

/-- `∑[∑[(n+1)*A116668(n)]]` -/
def P2139843521598679519.Spec : Prop :=
  ∀ n, P2139843521598679519.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P4299688417528728664

`A108650(n)-A033488(n)`
-/

namespace A337898.P4299688417528728664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 n - A033488 n

end

end A337898.P4299688417528728664

namespace A337898

/-- `A108650(n)-A033488(n)` -/
def P4299688417528728664.Spec : Prop :=
  ∀ n, P4299688417528728664.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P13664532732314801196

`∑[∑[A063522(n)+A003215(n)]]`
-/

namespace A337898.P13664532732314801196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 n + A003215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337898.P13664532732314801196

namespace A337898

/-- `∑[∑[A063522(n)+A003215(n)]]` -/
def P13664532732314801196.Spec : Prop :=
  ∀ n, P13664532732314801196.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P714864611844996833

`∑[A213840(n+1)-A005582(n)]`
-/

namespace A337898.P714864611844996833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213840 (n + 1) - A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337898.P714864611844996833

namespace A337898

/-- `∑[A213840(n+1)-A005582(n)]` -/
def P714864611844996833.Spec : Prop :=
  ∀ n, P714864611844996833.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P952156321684570674

`∑[A083374(n+1)+A004255(n+1)]`
-/

namespace A337898.P952156321684570674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) + A004255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337898.P952156321684570674

namespace A337898

/-- `∑[A083374(n+1)+A004255(n+1)]` -/
def P952156321684570674.Spec : Prop :=
  ∀ n, P952156321684570674.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P991563169310586042

`∑[A050534(n+1)+∑[A212133(n+1)]]`
-/

namespace A337898.P991563169310586042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337898.P991563169310586042

namespace A337898

/-- `∑[A050534(n+1)+∑[A212133(n+1)]]` -/
def P991563169310586042.Spec : Prop :=
  ∀ n, P991563169310586042.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P5344920836260801741

`A027800(n)+A051880(n)-A055268(n)`
-/

namespace A337898.P5344920836260801741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + (A051880 n - A055268 n)

end

end A337898.P5344920836260801741

namespace A337898

/-- `A027800(n)+A051880(n)-A055268(n)` -/
def P5344920836260801741.Spec : Prop :=
  ∀ n, P5344920836260801741.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P4950628151407222612

`A034263(n)+A056118(n)-A055268(n)`
-/

namespace A337898.P4950628151407222612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + (A056118 n - A055268 n)

end

end A337898.P4950628151407222612

namespace A337898

/-- `A034263(n)+A056118(n)-A055268(n)` -/
def P4950628151407222612.Spec : Prop :=
  ∀ n, P4950628151407222612.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P6761824398339821167

`A033455(n+1)+A276159(n)-A272103(n)`
-/

namespace A337898.P6761824398339821167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1) + (A276159 n - A272103 n)

end

end A337898.P6761824398339821167

namespace A337898

/-- `A033455(n+1)+A276159(n)-A272103(n)` -/
def P6761824398339821167.Spec : Prop :=
  ∀ n, P6761824398339821167.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P1799214721140893539

`A051843(n)+A051843(n)+A051836(n+1)`
-/

namespace A337898.P1799214721140893539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051843 n + (A051843 n + A051836 (n + 1))

end

end A337898.P1799214721140893539

namespace A337898

/-- `A051843(n)+A051843(n)+A051836(n+1)` -/
def P1799214721140893539.Spec : Prop :=
  ∀ n, P1799214721140893539.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P12867268929620560880

`A282816(n+2)-A337899(n+1)`
-/

namespace A337898.P12867268929620560880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282816 (n + 2) - A337899 (n + 1)

end

end A337898.P12867268929620560880

namespace A337898

/-- `A282816(n+2)-A337899(n+1)` -/
def P12867268929620560880.Spec : Prop :=
  ∀ n, P12867268929620560880.a n = A337898 (n + 1)

end A337898

/-! ## A337898.P16680992787038671124

`A325007(A167614(n+1))`
-/

namespace A337898.P16680992787038671124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325007 (A167614 (n + 1)).toNat

end

end A337898.P16680992787038671124

namespace A337898

/-- `A325007(A167614(n+1))` -/
def P16680992787038671124.Spec : Prop :=
  ∀ n, P16680992787038671124.a n = A337898 (n + 1)

end A337898

/-!
# A337899: Number of chiral pairs of colorings of the edges of a regular tetrahedron using n or fewer colors.

The programs for A337899, the canonical program `A337899.P8168504029027537216` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337899 has offset 1).

The definition of A337899 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063842, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337899.P4009895864071882077

`n*(n+1)²*(n+2)*((n+1)²-2)/24`
-/

namespace A337899.P4009895864071882077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) ^ 2 * (n + 2) : ℤ) * (((n + 1) ^ 2 : ℤ) - 2) : ℚ) / 24

end

end A337899.P4009895864071882077

namespace A337899

/-- `n*(n+1)²*(n+2)*((n+1)²-2)/24` -/
def P4009895864071882077.Spec : Prop :=
  ∀ n, P4009895864071882077.a n = (A337899 (n + 1) : ℚ)

end A337899

/-! ## A337899.P13648561439453458377

`C(n+1, 2)+18*C(n+1, 3)+62*C(n+1, 4)+75*C(n+1, 5)+30*C(n+1, 6)`
-/

namespace A337899.P13648561439453458377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 18 * Nat.choose (n + 1) 3 + 62 * Nat.choose (n + 1) 4 + 75 * Nat.choose (n + 1) 5 + 30 * Nat.choose (n + 1) 6

end

end A337899.P13648561439453458377

namespace A337899

/-- `C(n+1, 2)+18*C(n+1, 3)+62*C(n+1, 4)+75*C(n+1, 5)+30*C(n+1, 6)` -/
def P13648561439453458377.Spec : Prop :=
  ∀ n, (P13648561439453458377.a n : ℤ) = A337899 (n + 1)

end A337899

/-! ## A337899.P8168504029027537216

`A046023(n+1)-A063842(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337899

/-- `A046023(n+1)-A063842(n)` -/
def P8168504029027537216.Spec : Prop :=
  ∀ n, P8168504029027537216.a n = A337899 (n + 1)

theorem P8168504029027537216.correct : P8168504029027537216.Spec := by
  intro n
  simp only [A337899, Nat.add_sub_cancel]

end A337899

/-! ## A337899.P16905445002907741546

`A063842(n)-A037270(n+1)`
-/

namespace A337899.P16905445002907741546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063842 n - A037270 (n + 1)

end

end A337899.P16905445002907741546

namespace A337899

/-- `A063842(n)-A037270(n+1)` -/
def P16905445002907741546.Spec : Prop :=
  ∀ n, P16905445002907741546.a n = A337899 (n + 1)

end A337899

/-! ## A337899.P18318068085652856217

`floor(C(∑[comp[2*n]], 3)/4)`
-/

namespace A337899.P18318068085652856217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 3 : ℚ) / 4⌋

end

end A337899.P18318068085652856217

namespace A337899

/-- `floor(C(∑[comp[2*n]], 3)/4)` -/
def P18318068085652856217.Spec : Prop :=
  ∀ n, P18318068085652856217.a n = A337899 (n + 1)

end A337899

/-! ## A337899.P88455935220348028

`1/4*C(∑[2*n+1], 3)`
-/

namespace A337899.P88455935220348028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 3 : ℚ)

end

end A337899.P88455935220348028

namespace A337899

/-- `1/4*C(∑[2*n+1], 3)` -/
def P88455935220348028.Spec : Prop :=
  ∀ n, P88455935220348028.a n = (A337899 (n + 1) : ℚ)

end A337899

/-! ## A337899.P4258974267220871201

`(n+1)/2*A201106(n+1)`
-/

namespace A337899.P4258974267220871201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A201106 (n + 1) : ℚ)

end

end A337899.P4258974267220871201

namespace A337899

/-- `(n+1)/2*A201106(n+1)` -/
def P4258974267220871201.Spec : Prop :=
  ∀ n, P4258974267220871201.a n = (A337899 (n + 1) : ℚ)

end A337899

/-! ## A337899.P9868143481243882689

`Δ[∑[C(n², 3)]/4]`
-/

namespace A337899.P9868143481243882689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337899.P9868143481243882689

namespace A337899

/-- `Δ[∑[C(n², 3)]/4]` -/
def P9868143481243882689.Spec : Prop :=
  ∀ n, P9868143481243882689.a n = (A337899 (n + 1) : ℚ)

end A337899

/-! ## A337899.P4891676794115353325

`A047780(n+1)-∑[n+1]²`
-/

namespace A337899.P4891676794115353325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047780 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A337899.P4891676794115353325

namespace A337899

/-- `A047780(n+1)-∑[n+1]²` -/
def P4891676794115353325.Spec : Prop :=
  ∀ n, P4891676794115353325.a n = A337899 (n + 1)

end A337899

/-! ## A337899.P8275687360450458729

`A085284(n)+A000332(n+2)`
-/

namespace A337899.P8275687360450458729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085284 n + A000332 (n + 2)

end

end A337899.P8275687360450458729

namespace A337899

/-- `A085284(n)+A000332(n+2)` -/
def P8275687360450458729.Spec : Prop :=
  ∀ n, P8275687360450458729.a n = A337899 (n + 1)

end A337899

/-! ## A337899.P17577061135806862649

`A282816(n+2)-A337898(n+1)`
-/

namespace A337899.P17577061135806862649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282816 (n + 2) - A337898 (n + 1)

end

end A337899.P17577061135806862649

namespace A337899

/-- `A282816(n+2)-A337898(n+1)` -/
def P17577061135806862649.Spec : Prop :=
  ∀ n, P17577061135806862649.a n = A337899 (n + 1)

end A337899

/-! ## A337899.P2988103371053950049

`A093566(n+2)+A093566(n+3)`
-/

namespace A337899.P2988103371053950049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 (n + 2) + A093566 (n + 3)

end

end A337899.P2988103371053950049

namespace A337899

/-- `A093566(n+2)+A093566(n+3)` -/
def P2988103371053950049.Spec : Prop :=
  ∀ n, P2988103371053950049.a n = A337899 (n + 1)

end A337899

