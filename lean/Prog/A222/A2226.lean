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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

/-!
# A222600: Least number k such that the difference between the number of halving and tripling steps in the Collatz (3x+1) iteration is n.

The programs for A222600, there is no canonical definition to state claims against.
-/

/-! ## A222600.P3943321755063682445

`A033491(lt[A033491(n), A033491(n+2)])`
-/

namespace A222600.P3943321755063682445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A222600.P3943321755063682445

/-! ## A222600.P2548265847460709032

`A092892(lt[1, ratio[A092892(n)]])`
-/

namespace A222600.P2548265847460709032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A222600.P2548265847460709032

/-! ## A222600.P1233374541675945320

`A092892(lt[A092892(n), A092892(n+1)])`
-/

namespace A222600.P1233374541675945320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A222600.P1233374541675945320

/-! ## A222600.P10704822562507628309

`A222599(∑[A213678(n)]-A213678(n))`
-/

namespace A222600.P10704822562507628309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 (∑ j ∈ Finset.range (n + 1), f1 j - A213678 n).toNat

end

end A222600.P10704822562507628309

/-!
# A222602: Irregular triangle of conjectured Fibonacci numbers with exactly n 0-bits in their binary representation.

The programs for A222602, there is no canonical definition to state claims against.
-/

/-! ## A222602.P9951735212509042912

`A000045(A222757(n))`
-/

namespace A222602.P9951735212509042912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A222757 n).toNat

end

end A222602.P9951735212509042912

/-! ## A222602.P16831237143073695636

`A212804(A222757(n)+1)`
-/

namespace A222602.P16831237143073695636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A222757 n + 1).toNat

end

end A222602.P16831237143073695636

/-! ## A222602.P2715614466206056090

`A053602(2*A222757(n))`
-/

namespace A222602.P2715614466206056090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A222757 n).toNat

end

end A222602.P2715614466206056090

/-! ## A222602.P17177063923116036406

`A103609(2*A222757(n))`
-/

namespace A222602.P17177063923116036406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A222757 n).toNat

end

end A222602.P17177063923116036406

/-! ## A222602.P5797317365407143208

`A302126(2*A222757(n))`
-/

namespace A222602.P5797317365407143208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * A222757 n).toNat

end

end A222602.P5797317365407143208

/-! ## A222602.P7037475395414236654

`A103609(A222757(n)+A222757(n)+1)`
-/

namespace A222602.P7037475395414236654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A222757 n + (A222757 n + 1)).toNat

end

end A222602.P7037475395414236654

/-!
# A222603: a(1)=1; for n>0, a(n+1) is the least practical number q>a(n) such that 2(a(n)+1)-q is practical.

The programs for A222603, there is no canonical definition to state claims against.
-/

/-! ## A222603.P13212704870952268367

`A005153(lt[A240311(n), (n+1)*∏{p}[n+1, #-1]])`
-/

namespace A222603.P13212704870952268367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240311 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A222603.P13212704870952268367

/-! ## A222603.P2944896980342101778

`A005153(lt[A211956(3*n+1), A003961(3*n+1)])`
-/

namespace A222603.P2944896980342101778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211956 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A222603.P2944896980342101778

/-! ## A222603.P7188979130555315054

`A325781(comp[7*n]%A347391(n+1))`
-/

namespace A222603.P7188979130555315054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A347391 (n + 1))).toNat

end

end A222603.P7188979130555315054

/-! ## A222603.P14678100139845998972

`A056530(n+1)-7%A060315(n+1)`
-/

namespace A222603.P14678100139845998972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056530 (n + 1) - Int.tmod 7 (A060315 (n + 1))

end

end A222603.P14678100139845998972

/-! ## A222603.P12096319607818506746

`eq[A107459(n+6), A244971(n+1)]+1`
-/

namespace A222603.P12096319607818506746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107459 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A222603.P12096319607818506746

/-!
# A222604: Number of nX1 0..3 arrays with exactly floor(nX1/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222604, there is no canonical definition to state claims against.
-/

/-! ## A222604.P4562558242747216664

`A222747(∑[n]+1)`
-/

namespace A222604.P4562558242747216664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222604.P4562558242747216664

/-! ## A222604.P9679455577437451981

`A222747(A000124(n))+A101637(n+1)`
-/

namespace A222604.P9679455577437451981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A000124 n).toNat + A101637 (n + 1)

end

end A222604.P9679455577437451981

/-! ## A222604.P3951198917461916775

`A222608(∑[n]+1)`
-/

namespace A222604.P3951198917461916775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222604.P3951198917461916775

/-! ## A222604.P12568841271272205950

`A222722(∑[n]+1)`
-/

namespace A222604.P12568841271272205950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222722 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222604.P12568841271272205950

/-! ## A222604.P9648848848596200055

`A222832(∑[n]+1)`
-/

namespace A222604.P9648848848596200055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222832 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222604.P9648848848596200055

/-!
# A222605: Number of nX2 0..3 arrays with exactly floor(nX2/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222605, there is no canonical definition to state claims against.
-/

/-! ## A222605.P11449541162779598049

`A222608(∑[n+1]+2)`
-/

namespace A222605.P11449541162779598049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222605.P11449541162779598049

/-! ## A222605.P4193892561144603773

`record[A222608(A112367(n)+2)]`
-/

namespace A222605.P4193892561144603773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (A112367 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222605.P4193892561144603773

/-! ## A222605.P3276656830618476048

`record[A222608(A114091(n+1)+1)]`
-/

namespace A222605.P3276656830618476048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222605.P3276656830618476048

/-! ## A222605.P7092719501344249361

`record[A222608(A332442(n+1)+2)]`
-/

namespace A222605.P7092719501344249361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (A332442 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222605.P7092719501344249361

/-! ## A222605.P85045884854925657

`record[A167374(n)*A222608(n+3)]`
-/

namespace A222605.P85045884854925657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A222608 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222605.P85045884854925657

/-!
# A222606: Number of nX3 0..3 arrays with exactly floor(nX3/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222606, there is no canonical definition to state claims against.
-/

/-! ## A222606.P563604431781479552

`A222608(∑[n+2]+4)`
-/

namespace A222606.P563604431781479552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222606.P563604431781479552

/-! ## A222606.P5192423922151874579

`record[A222608(A112367(n)+3)]`
-/

namespace A222606.P5192423922151874579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (A112367 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222606.P5192423922151874579

/-! ## A222606.P351856786270765635

`record[A222608(n+4)/A111559(n)]`
-/

namespace A222606.P351856786270765635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222608 (n + 4) : ℚ) / (A111559 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222606.P351856786270765635

/-! ## A222606.P1300562904481374210

`ceil(sin(n)²)*A222608(A167614(n+1))`
-/

namespace A222606.P1300562904481374210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A222608 (A167614 (n + 1)).toNat

end

end A222606.P1300562904481374210

/-! ## A222606.P262258689915456870

`A222608(A167614(n+1))+A011739(n)`
-/

namespace A222606.P262258689915456870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (A167614 (n + 1)).toNat + A011739 n

end

end A222606.P262258689915456870

/-!
# A222607: Number of nX4 0..3 arrays with exactly floor(nX4/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222607, there is no canonical definition to state claims against.
-/

/-! ## A222607.P13080815009175401871

`A222608(∑[n+3]+7)`
-/

namespace A222607.P13080815009175401871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222607.P13080815009175401871

/-! ## A222607.P7148398308460406094

`A222608(A055998(n+2))+A102679(n)`
-/

namespace A222607.P7148398308460406094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (A055998 (n + 2)).toNat + A102679 n

end

end A222607.P7148398308460406094

/-! ## A222607.P13299305243173466823

`A222608(A055998(n+2))+A051516(n+1)`
-/

namespace A222607.P13299305243173466823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (A055998 (n + 2)).toNat + A051516 (n + 1)

end

end A222607.P13299305243173466823

/-!
# A222608: T(n,k)=Number of nXk 0..3 arrays with exactly floor(nXk/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222608, there is no canonical definition to state claims against.
-/

/-! ## A222608.P15390096976106623742

`A222747(n+1)+A180649(A215067(n))`
-/

namespace A222608.P15390096976106623742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (n + 1) + A180649 (A215067 n).toNat

end

end A222608.P15390096976106623742

/-! ## A222608.P13874716056448997286

`A348341(A299968(n))+A222747(n+1)`
-/

namespace A222608.P13874716056448997286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348341 (A299968 n).toNat + A222747 (n + 1)

end

end A222608.P13874716056448997286

/-! ## A222608.P14357862864467031774

`A222747(A032559(n+1)-A025461(n))`
-/

namespace A222608.P14357862864467031774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A032559 (n + 1) - A025461 n).toNat

end

end A222608.P14357862864467031774

/-! ## A222608.P16997416906776327847

`A000005(A005746(n+1))*A222794(n+1)`
-/

namespace A222608.P16997416906776327847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005746 (n + 1)).toNat * A222794 (n + 1)

end

end A222608.P16997416906776327847

/-! ## A222608.P13305351238769766303

`A066099(A217858(n+4))*A223033(n+1)`
-/

namespace A222608.P13305351238769766303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A217858 (n + 4)).toNat * A223033 (n + 1)

end

end A222608.P13305351238769766303

/-!
# A222610: Number of nX2 0..3 arrays with no more than floor(nX2/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222610, there is no canonical definition to state claims against.
-/

/-! ## A222610.P15509596076022649474

`A222616(∑[n+1]+2)`
-/

namespace A222610.P15509596076022649474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222610.P15509596076022649474

/-! ## A222610.P7293980236778903218

`char[A008612(n)]*A222616(A000096(n)+3)`
-/

namespace A222610.P7293980236778903218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222616 (A000096 n + 3).toNat

end

end A222610.P7293980236778903218

/-! ## A222610.P17710541223442515400

`A222616(A133263(n+1))%A204225(n+1)`
-/

namespace A222610.P17710541223442515400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222616 (A133263 (n + 1)).toNat) (A204225 (n + 1))

end

end A222610.P17710541223442515400

/-! ## A222610.P3079890244060516736

`A353303(3*n+2)+A222616(A133263(n+1))`
-/

namespace A222610.P3079890244060516736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (3 * n + 2) + A222616 (A133263 (n + 1)).toNat

end

end A222610.P3079890244060516736

/-! ## A222610.P18039283865345997507

`A000027(A222616(∑[n+2]))`
-/

namespace A222610.P18039283865345997507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A222616 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A222610.P18039283865345997507

/-!
# A222611: Number of n X 3 0..3 arrays with no more than floor(n X 3/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222611, there is no canonical definition to state claims against.
-/

/-! ## A222611.P3110130184485274507

`A222616(∑[n+2]+4)`
-/

namespace A222611.P3110130184485274507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222611.P3110130184485274507

/-! ## A222611.P8149949026549442142

`or(1, A222616(A167614(n+1)))`
-/

namespace A222611.P8149949026549442142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A222616 (A167614 (n + 1)).toNat)

end

end A222611.P8149949026549442142

/-! ## A222611.P7503479433278127538

`record[gcd(A222616(n+4), A291652(n))]`
-/

namespace A222611.P7503479433278127538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222616 (n + 4)) (A291652 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222611.P7503479433278127538

/-! ## A222611.P3725922299527690362

`A222616(A167614(n+1))+A011744(n)`
-/

namespace A222611.P3725922299527690362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A167614 (n + 1)).toNat + A011744 n

end

end A222611.P3725922299527690362

/-! ## A222611.P9157350513569155097

`A222616(A167614(n+1))+A025469(n)`
-/

namespace A222611.P9157350513569155097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A167614 (n + 1)).toNat + A025469 n

end

end A222611.P9157350513569155097

/-!
# A222612: Number of nX4 0..3 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222612, there is no canonical definition to state claims against.
-/

/-! ## A222612.P10037083234208236527

`A222616(∑[n+3]+7)`
-/

namespace A222612.P10037083234208236527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222612.P10037083234208236527

/-! ## A222612.P16757413881700986102

`A222616(A374004(n+1))+A178798(n)`
-/

namespace A222612.P16757413881700986102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A374004 (n + 1)).toNat + A178798 n

end

end A222612.P16757413881700986102

/-! ## A222612.P12463645437999531445

`A222616(A374004(n+1))+A135297(n+1)`
-/

namespace A222612.P12463645437999531445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A374004 (n + 1)).toNat + A135297 (n + 1)

end

end A222612.P12463645437999531445

/-! ## A222612.P8395210525640924988

`A222616(A034856(n+3)-1)^A333843(2*n+1)`
-/

namespace A222612.P8395210525640924988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222616 (A034856 (n + 3) - 1).toNat : ℚ) ^ (A333843 (2 * n + 1) : ℤ)

end

end A222612.P8395210525640924988

/-!
# A222613: Number of nX5 0..3 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222613, there is no canonical definition to state claims against.
-/

/-! ## A222613.P3303909997447765241

`A222616(A167499(n+3))`
-/

namespace A222613.P3303909997447765241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A167499 (n + 3)).toNat

end

end A222613.P3303909997447765241

/-! ## A222613.P14446156852141739933

`A222616(A155212(n)+13)`
-/

namespace A222613.P14446156852141739933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A155212 n + 13).toNat

end

end A222613.P14446156852141739933

/-! ## A222613.P6940140881231509665

`A222616(A056000(n)+15)`
-/

namespace A222613.P6940140881231509665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A056000 n + 15).toNat

end

end A222613.P6940140881231509665

/-! ## A222613.P7914526089973591094

`A222616(eq[7, A066657(n)])`
-/

namespace A222613.P7914526089973591094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222613.P7914526089973591094

/-! ## A222613.P7444507841499001607

`A222616(A000124(n+4)+4)`
-/

namespace A222613.P7444507841499001607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A000124 (n + 4) + 4).toNat

end

end A222613.P7444507841499001607

/-!
# A222614: Number of nX6 0..3 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222614, there is no canonical definition to state claims against.
-/

/-! ## A222614.P5815324690365111796

`A222616(A056115(n)+21)`
-/

namespace A222614.P5815324690365111796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A056115 n + 21).toNat

end

end A222614.P5815324690365111796

/-! ## A222614.P17537286172708956370

`A222616(eq[7, A131818(n+1)])`
-/

namespace A222614.P17537286172708956370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222614.P17537286172708956370

/-! ## A222614.P8480349108012568496

`A222616(A055999(n+4)-(2*n+1))`
-/

namespace A222614.P8480349108012568496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A222614.P8480349108012568496

/-! ## A222614.P17678376048978736356

`A222616(A374007(n+1))`
-/

namespace A222614.P17678376048978736356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A374007 (n + 1)).toNat

end

end A222614.P17678376048978736356

/-! ## A222614.P15611033673646701172

`A222616(A052905(n+3))`
-/

namespace A222614.P15611033673646701172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A052905 (n + 3)).toNat

end

end A222614.P15611033673646701172

/-!
# A222615: Number of nX7 0..3 arrays with no more than floor(nX7/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222615, there is no canonical definition to state claims against.
-/

/-! ## A222615.P7562588508652867876

`A222616(A167487(n+5))`
-/

namespace A222615.P7562588508652867876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A167487 (n + 5)).toNat

end

end A222615.P7562588508652867876

/-! ## A222615.P17203501809000275865

`A222616(A056119(n)+28)`
-/

namespace A222615.P17203501809000275865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A056119 n + 28).toNat

end

end A222615.P17203501809000275865

/-! ## A222615.P3099357649494554787

`A222616(eq[11, A066657(n)])`
-/

namespace A222615.P3099357649494554787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222615.P3099357649494554787

/-! ## A222615.P5922849994039816706

`A222616(eq[8, A131818(n+1)])`
-/

namespace A222615.P5922849994039816706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222615.P5922849994039816706

/-! ## A222615.P9673913840647850124

`A222616(A374008(n+1))`
-/

namespace A222615.P9673913840647850124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A374008 (n + 1)).toNat

end

end A222615.P9673913840647850124

/-!
# A222616: T(n,k)=Number of nXk 0..3 arrays with no more than floor(nXk/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222616, there is no canonical definition to state claims against.
-/

/-! ## A222616.P295905542540480769

`A357873(A222649(n+1))`
-/

namespace A222616.P295905542540480769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (A222649 (n + 1)).toNat

end

end A222616.P295905542540480769

/-! ## A222616.P15198707271611729549

`A222649(n+1)-A178798(A222378(n+1))`
-/

namespace A222616.P15198707271611729549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (n + 1) - A178798 (A222378 (n + 1)).toNat

end

end A222616.P15198707271611729549

/-! ## A222616.P9419359818982277377

`A260423(A222649(n+1)%A268448(2*(n+1)))`
-/

namespace A222616.P9419359818982277377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260423 (Int.tmod (A222649 (n + 1)) (A268448 (2 * (n + 1)))).toNat

end

end A222616.P9419359818982277377

/-! ## A222616.P18323911846484893222

`A007967(A222649(n+1)²)`
-/

namespace A222616.P18323911846484893222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A222649 (n + 1) ^ 2).toNat

end

end A222616.P18323911846484893222

/-! ## A222616.P8549078981655701061

`A222649(n+1)%A016825(A011782(n))`
-/

namespace A222616.P8549078981655701061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222649 (n + 1)) (A016825 (A011782 n).toNat)

end

end A222616.P8549078981655701061

/-!
# A222617: Number of integers k < n whose Collatz (3x+1) trajectory contains n.

The programs for A222617, there is no canonical definition to state claims against.
-/

/-! ## A222617.P13365375966549089612

`A123105(A059893(n+1))%A202275(2*n+1)`
-/

namespace A222617.P13365375966549089612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123105 ((A059893 (n + 1)).toNat + 31)) (A202275 (2 * n + 1))

end

end A222617.P13365375966549089612

/-!
# A222618: Multiples of 10 that are sum of two consecutive primes.

The programs for A222618, there is no canonical definition to state claims against.
-/

/-! ## A222618.P7990001070656094884

`10*A268328(n+1)`
-/

namespace A222618.P7990001070656094884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A268328 (n + 1)

end

end A222618.P7990001070656094884

/-! ## A222618.P13011756436976325421

`∩[A001043(n+2), 5*n]`
-/

namespace A222618.P13011756436976325421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A222618.P13011756436976325421

/-! ## A222618.P8144861984543965098

`∩[10*n, A011974(n+1)]`
-/

namespace A222618.P8144861984543965098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222618.P8144861984543965098

/-! ## A222618.P16292033808948274467

`∩[10*n, A164653(n+1)]`
-/

namespace A222618.P16292033808948274467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222618.P16292033808948274467

/-! ## A222618.P5549946409286073096

`2*5*eq[5*n, A210882(5*n+1)]`
-/

namespace A222618.P5549946409286073096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (5 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222618.P5549946409286073096

/-!
# A222620: Palindromic time display in hours, minutes, seconds on a six spaced 24-hour digital clock.

The programs for A222620, there is no canonical definition to state claims against.
-/

/-! ## A222620.P18384867362412903931

`∩[A002113(n+1), A055643(n)]`
-/

namespace A222620.P18384867362412903931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222620.P18384867362412903931

/-! ## A222620.P4344017571422783271

`filter[A055643(n), A136522(#)]`
-/

namespace A222620.P4344017571422783271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A222620.P4344017571422783271

/-! ## A222620.P9178739487156336996

`eq[A257297(A177895(n)), A338827(n)]`
-/

namespace A222620.P9178739487156336996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (A177895 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A222620.P9178739487156336996

/-! ## A222620.P18188012568386540978

`record[A265525(A038724(n))%A134926(n+1)]`
-/

namespace A222620.P18188012568386540978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265525 (A038724 n).toNat) (A134926 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222620.P18188012568386540978

/-! ## A222620.P1423375528209629929

`∩[A030285(n+1), A055643(n)]`
-/

namespace A222620.P1423375528209629929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222620.P1423375528209629929

/-!
# A222621: a(n) = (2n-1)^(2n).

The programs for A222621, the canonical program `A222621.P4354624679629263207` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222621 has offset 1).

The definition of A222621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)^(2*(n+1))` (program `A222621.P4354624679629263207`, by `A222621.P4354624679629263207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A222621.P4354624679629263207

`(2*(n+1)-1)^(2*(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A222621

/-- `(2*(n+1)-1)^(2*(n+1))` -/
def P4354624679629263207.Spec : Prop :=
  ∀ n, P4354624679629263207.a n = A222621 (n + 1)

theorem P4354624679629263207.correct : P4354624679629263207.Spec := by
  intro n
  simp only [A222621, Nat.add_sub_cancel]

end A222621

/-! ## A222621.P6499219546312514292

`record[(1-n)^n]`
-/

namespace A222621.P6499219546312514292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222621.P6499219546312514292

namespace A222621

/-- `record[(1-n)^n]` -/
def P6499219546312514292.Spec : Prop :=
  ∀ n, P6499219546312514292.a n = A222621 (n + 1)

end A222621

/-! ## A222621.P9501992750824885052

`A085528(n)²`
-/

namespace A222621.P9501992750824885052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085528 n ^ 2

end

end A222621.P9501992750824885052

namespace A222621

/-- `A085528(n)²` -/
def P9501992750824885052.Spec : Prop :=
  ∀ n, P9501992750824885052.a n = A222621 (n + 1)

end A222621

/-!
# A222623: Fixed points of permutations A113966, A222622.

The programs for A222623, there is no canonical definition to state claims against.
-/

/-! ## A222623.P15771470005805852270

`eq[n+1, A113966(n+1)]+1`
-/

namespace A222623.P15771470005805852270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A222623.P15771470005805852270

/-! ## A222623.P1852157417596656548

`eq[n+1, A222622(n+1)]+1`
-/

namespace A222623.P1852157417596656548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A222623.P1852157417596656548

/-! ## A222623.P6142884287941199173

`eq[n, A113966(A000007(n)+n)]`
-/

namespace A222623.P6142884287941199173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113966 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A222623.P6142884287941199173

/-! ## A222623.P13794855550198311903

`record[gcd(A153152(n), A222622(n+1))]`
-/

namespace A222623.P13794855550198311903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153152 n) (A222622 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222623.P13794855550198311903

/-! ## A222623.P6852212809595379807

`eq[n, A222622(A008486(n)-2*n)]`
-/

namespace A222623.P6852212809595379807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222622 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A222623.P6852212809595379807

/-! ## A222623.P14968818991271469576

`eq[n, A222622(A008486(n)-n-n)]`
-/

namespace A222623.P14968818991271469576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222622 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A222623.P14968818991271469576

/-!
# A222625: Number of simple connected well-covered graphs on n nodes.

The programs for A222625, there is no canonical definition to state claims against.
-/

/-! ## A222625.P13604449015194267276

`A222626(n+1)-A287025(n+1)`
-/

namespace A222625.P13604449015194267276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222626 (n + 1) - A287025 (n + 1)

end

end A222625.P13604449015194267276

/-! ## A222625.P4027870961906119714

`A222626(n+1)-(A341518(n+1)+A033183(A150494(n)))`
-/

namespace A222625.P4027870961906119714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222626 (n + 1) - (A341518 (n + 1) + A033183 (A150494 n).toNat)

end

end A222625.P4027870961906119714

/-! ## A222625.P7397098961194503380

`A226602(∏[(round(n²/12)+1)!])`
-/

namespace A222625.P7397098961194503380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A222625.P7397098961194503380

/-!
# A222626: Number of simple well-covered graphs on n nodes.

The programs for A222626, there is no canonical definition to state claims against.
-/

/-! ## A222626.P7087594150396118503

`A287025(n+1)+A222625(n+1)`
-/

namespace A222626.P7087594150396118503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287025 (n + 1) + A222625 (n + 1)

end

end A222626.P7087594150396118503

/-! ## A222626.P15821968009990895755

`A222625(n+1)+A341518(n+1)+A033183(A150494(n))`
-/

namespace A222626.P15821968009990895755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222625 (n + 1) + (A341518 (n + 1) + A033183 (A150494 n).toNat)

end

end A222626.P15821968009990895755

/-! ## A222626.P10951243163214893851

`A256132(A149561(n+1))`
-/

namespace A222626.P10951243163214893851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256132 (A149561 (n + 1)).toNat

end

end A222626.P10951243163214893851

/-!
# A222627: Poly-Cauchy numbers c_n^(-2) (for definition see Comments lines).

The programs for A222627, there is no canonical definition to state claims against.
-/

/-! ## A222627.P2482793473169540228

`A383049(∑[n+3])`
-/

namespace A222627.P2482793473169540228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222627.P2482793473169540228

/-!
# A222628: Number of n X n 0..1 arrays with no more than floor(n X n/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222628, there is no canonical definition to state claims against.
-/

/-! ## A222628.P12862652108332019913

`A222635(∑[4*n]+1)`
-/

namespace A222628.P12862652108332019913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222628.P12862652108332019913

/-! ## A222628.P16321949885153019965

`A222635(A001844(n))+A027870(n)`
-/

namespace A222628.P16321949885153019965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A001844 n).toNat + A027870 n

end

end A222628.P16321949885153019965

/-! ## A222628.P12470698069787026654

`A001222(or(3, n))*A222635(A001844(n))`
-/

namespace A222628.P12470698069787026654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 3 n) * A222635 (A001844 n).toNat

end

end A222628.P12470698069787026654

/-! ## A222628.P12592018549350192938

`A222635(A001844(n))+A008683(16*(n+1))`
-/

namespace A222628.P12592018549350192938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A001844 n).toNat + A008683 (16 * (n + 1))

end

end A222628.P12592018549350192938

/-! ## A222628.P9588194322123245355

`A014963(xor(42, n)+n)*A222635(A001844(n))`
-/

namespace A222628.P9588194322123245355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.xor 42 n + n) * A222635 (A001844 n).toNat

end

end A222628.P9588194322123245355

/-!
# A222629: Number of nX2 0..1 arrays with no more than floor(nX2/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222629, there is no canonical definition to state claims against.
-/

/-! ## A222629.P2060211428872893895

`A222635(∑[n+1]+2)`
-/

namespace A222629.P2060211428872893895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222629.P2060211428872893895

/-! ## A222629.P3785675443031502264

`or(char[1], A222635(A133263(n+1)))`
-/

namespace A222629.P3785675443031502264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222635 (A133263 (n + 1)).toNat)

end

end A222629.P3785675443031502264

/-! ## A222629.P941051231844003206

`A222635(A133263(n+1))+A000007(n+1)`
-/

namespace A222629.P941051231844003206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A222629.P941051231844003206

/-! ## A222629.P4898843546679829324

`A222635(A133263(n+1))+A000035(lcm(2, n))`
-/

namespace A222629.P4898843546679829324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A133263 (n + 1)).toNat + A000035 (Nat.lcm 2 n)

end

end A222629.P4898843546679829324

/-! ## A222629.P13189139638729041106

`A222635(A133263(n+1))%A000041(A000217(n+3))`
-/

namespace A222629.P13189139638729041106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222635 (A133263 (n + 1)).toNat) (A000041 (A000217 (n + 3)).toNat)

end

end A222629.P13189139638729041106

/-!
# A222630: Number of nX3 0..1 arrays with no more than floor(nX3/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222630, there is no canonical definition to state claims against.
-/

/-! ## A222630.P15234284866358992569

`A222635(∑[n+2]+4)`
-/

namespace A222630.P15234284866358992569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222630.P15234284866358992569

/-! ## A222630.P4982321855809676714

`gcd(A000038(n), A222635(A167614(n+1)))`
-/

namespace A222630.P4982321855809676714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222635 (A167614 (n + 1)).toNat)

end

end A222630.P4982321855809676714

/-! ## A222630.P271655813592952789

`or(A000007(n), A222635(A167614(n+1)))`
-/

namespace A222630.P271655813592952789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222635 (A167614 (n + 1)).toNat)

end

end A222630.P271655813592952789

/-! ## A222630.P14822607480455535265

`A020985(n)²*A222635(A167614(n+1))`
-/

namespace A222630.P14822607480455535265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A222635 (A167614 (n + 1)).toNat

end

end A222630.P14822607480455535265

/-! ## A222630.P12657833010849613171

`A033999(n)²*A222635(A167614(n+1))`
-/

namespace A222630.P12657833010849613171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A222635 (A167614 (n + 1)).toNat

end

end A222630.P12657833010849613171

/-!
# A222631: Number of nX4 0..1 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222631, there is no canonical definition to state claims against.
-/

/-! ## A222631.P13275929865512446459

`A222635(A141214(n)+7)`
-/

namespace A222631.P13275929865512446459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A141214 n + 7).toNat

end

end A222631.P13275929865512446459

/-! ## A222631.P2216280535740752753

`A222635(A052905(n)+9)`
-/

namespace A222631.P2216280535740752753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A052905 n + 9).toNat

end

end A222631.P2216280535740752753

/-! ## A222631.P351497747160119679

`A222635(A055999(n)+10)`
-/

namespace A222631.P351497747160119679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A055999 n + 10).toNat

end

end A222631.P351497747160119679

/-! ## A222631.P11708784071210570620

`A222635(A167614(n+2)+1)`
-/

namespace A222631.P11708784071210570620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A167614 (n + 2) + 1).toNat

end

end A222631.P11708784071210570620

/-! ## A222631.P6680812111466397979

`A222635(A080036(A167614(n+1)))`
-/

namespace A222631.P6680812111466397979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A222631.P6680812111466397979

/-!
# A222632: Number of nX5 0..1 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222632, there is no canonical definition to state claims against.
-/

/-! ## A222632.P10942784371895851263

`A222635(A167499(n+3))`
-/

namespace A222632.P10942784371895851263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A167499 (n + 3)).toNat

end

end A222632.P10942784371895851263

/-! ## A222632.P11467900627513399440

`A222635(A167614(n+3)+2)`
-/

namespace A222632.P11467900627513399440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A167614 (n + 3) + 2).toNat

end

end A222632.P11467900627513399440

/-! ## A222632.P10178615332805213047

`A222635(A000217(n+4)+5)`
-/

namespace A222632.P10178615332805213047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A000217 (n + 4) + 5).toNat

end

end A222632.P10178615332805213047

/-! ## A222632.P14721245576869877356

`A222635(A141214(n+1)+8)`
-/

namespace A222632.P14721245576869877356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A141214 (n + 1) + 8).toNat

end

end A222632.P14721245576869877356

/-!
# A222633: Number of nX6 0..1 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222633, there is no canonical definition to state claims against.
-/

/-! ## A222633.P2380695076937693077

`A222635(A166136(n+4))`
-/

namespace A222633.P2380695076937693077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A166136 (n + 4)).toNat

end

end A222633.P2380695076937693077

/-! ## A222633.P5409401174715521446

`A222635(A056115(n)+21)`
-/

namespace A222633.P5409401174715521446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A056115 n + 21).toNat

end

end A222633.P5409401174715521446

/-! ## A222633.P4134024017265511203

`A222635(A000217(n+5)+6)`
-/

namespace A222633.P4134024017265511203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A000217 (n + 5) + 6).toNat

end

end A222633.P4134024017265511203

/-! ## A222633.P15120773574424728057

`A222635(eq[7, A131818(n+1)])`
-/

namespace A222633.P15120773574424728057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222633.P15120773574424728057

/-! ## A222633.P7633205069627369811

`A222635(A374007(n+1))`
-/

namespace A222633.P7633205069627369811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A374007 (n + 1)).toNat

end

end A222633.P7633205069627369811

/-!
# A222634: Number of n X 7 0..1 arrays with no more than floor(n X 7/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222634, there is no canonical definition to state claims against.
-/

/-! ## A222634.P17090297352394007940

`A222635(A056119(n)+28)`
-/

namespace A222634.P17090297352394007940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A056119 n + 28).toNat

end

end A222634.P17090297352394007940

/-! ## A222634.P11978266007721485044

`A222635(eq[11, A066657(n)])`
-/

namespace A222634.P11978266007721485044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222634.P11978266007721485044

/-! ## A222634.P5682176144663201350

`A222635(A000124(n+6)+6)`
-/

namespace A222634.P5682176144663201350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A000124 (n + 6) + 6).toNat

end

end A222634.P5682176144663201350

/-! ## A222634.P9129972490147231506

`A222635(eq[8, A131818(n+1)])`
-/

namespace A222634.P9129972490147231506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222634.P9129972490147231506

/-! ## A222634.P11251702676341293759

`A222635(A374008(n+1))`
-/

namespace A222634.P11251702676341293759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A374008 (n + 1)).toNat

end

end A222634.P11251702676341293759

/-!
# A222635: T(n,k)=Number of nXk 0..1 arrays with no more than floor(nXk/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222635, there is no canonical definition to state claims against.
-/

/-! ## A222635.P6411424198965297381

`A032555(A222616(n+1))%12`
-/

namespace A222635.P6411424198965297381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032555 (A222616 (n + 1)).toNat) 12

end

end A222635.P6411424198965297381

/-! ## A222635.P14904387432732679389

`A032555(A222649(n+1))%12`
-/

namespace A222635.P14904387432732679389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032555 (A222649 (n + 1)).toNat) 12

end

end A222635.P14904387432732679389

/-! ## A222635.P16554457768267363783

`A020985(n)²*and(15, A032555(A222616(n+1)))`
-/

namespace A222635.P16554457768267363783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * Int.land 15 (A032555 (A222616 (n + 1)).toNat)

end

end A222635.P16554457768267363783

/-! ## A222635.P10822291827803223421

`A033999(n)²*and(15, A032555(A222616(n+1)))`
-/

namespace A222635.P10822291827803223421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * Int.land 15 (A032555 (A222616 (n + 1)).toNat)

end

end A222635.P10822291827803223421

/-!
# A222636: Poly-Cauchy numbers c_n^(-3).

The programs for A222636, there is no canonical definition to state claims against.
-/

/-! ## A222636.P2976060230616155367

`A383049(A155212(n)+4)`
-/

namespace A222636.P2976060230616155367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (A155212 n + 4).toNat

end

end A222636.P2976060230616155367

/-! ## A222636.P15520389948000794781

`A383049(A000096(n+3)-3)`
-/

namespace A222636.P15520389948000794781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (A000096 (n + 3) - 3).toNat

end

end A222636.P15520389948000794781

/-! ## A222636.P3878654872325725927

`A383049(A000217(n+3)+n)`
-/

namespace A222636.P3878654872325725927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A222636.P3878654872325725927

/-!
# A222637: Squarefree part of the total number of arrangements of a set with n elements.

The programs for A222637, the canonical program `A222637.P13679431788888405413` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222637 has offset 0).

The definition of A222637 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A222637.P13679431788888405413

`A007913(A000522(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A222637

/-- `A007913(A000522(n))` -/
def P13679431788888405413.Spec : Prop :=
  ∀ n, P13679431788888405413.a n = A222637 n

theorem P13679431788888405413.correct : P13679431788888405413.Spec := by
  intro n
  simp only [A222637]

end A222637

/-! ## A222637.P11476289770367039682

`A000522(n)/A222639(n)²`
-/

namespace A222637.P11476289770367039682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 n : ℚ) / (A222639 n ^ 2 : ℚ)

end

end A222637.P11476289770367039682

namespace A222637

/-- `A000522(n)/A222639(n)²` -/
def P11476289770367039682.Spec : Prop :=
  ∀ n, P11476289770367039682.a n = (A222637 n : ℚ)

end A222637

/-! ## A222637.P7383073004589082430

`A073107(∑[n])/A222639(n)²`
-/

namespace A222637.P7383073004589082430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073107 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A222639 n ^ 2 : ℚ)

end

end A222637.P7383073004589082430

namespace A222637

/-- `A073107(∑[n])/A222639(n)²` -/
def P7383073004589082430.Spec : Prop :=
  ∀ n, P7383073004589082430.a n = (A222637 n : ℚ)

end A222637

/-! ## A222637.P8819451084551573707

`A143409(∑[n])/A222639(n)²`
-/

namespace A222637.P8819451084551573707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143409 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A222639 n ^ 2 : ℚ)

end

end A222637.P8819451084551573707

namespace A222637

/-- `A143409(∑[n])/A222639(n)²` -/
def P8819451084551573707.Spec : Prop :=
  ∀ n, P8819451084551573707.a n = (A222637 n : ℚ)

end A222637

/-! ## A222637.P12056800848926835931

`Δ[A002104(n)]/A222639(n)²`
-/

namespace A222637.P12056800848926835931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A222639 n ^ 2 : ℚ)

end

end A222637.P12056800848926835931

namespace A222637

/-- `Δ[A002104(n)]/A222639(n)²` -/
def P12056800848926835931.Spec : Prop :=
  ∀ n, P12056800848926835931.a n = (A222637 n : ℚ)

end A222637

/-!
# A222638: Product, for k <= n, of the squarefree parts of the total number of arrangements of a set with k elements.

The programs for A222638, there is no canonical definition to state claims against.
-/

/-! ## A222638.P9675970067900100376

`∏[A222637(n)]`
-/

namespace A222638.P9675970067900100376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222638.P9675970067900100376

/-! ## A222638.P6864019952079120907

`∏[A000522(n)/A222639(n)²]`
-/

namespace A222638.P6864019952079120907
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 n : ℚ) / (A222639 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222638.P6864019952079120907

/-! ## A222638.P11798819403804734519

`∏[A073107(∑[n])/A222639(n)²]`
-/

namespace A222638.P11798819403804734519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073107 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / (A222639 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222638.P11798819403804734519

/-! ## A222638.P6646248230484940165

`∏[A143409(∑[n])/A222639(n)²]`
-/

namespace A222638.P6646248230484940165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143409 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / (A222639 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222638.P6646248230484940165

/-! ## A222638.P17378322154176547443

`∏[Δ[A002104(n)]/A222639(n)²]`
-/

namespace A222638.P17378322154176547443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A222639 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222638.P17378322154176547443

/-!
# A222639: Square root of the square part of the total number of arrangements of a set with n elements.

The programs for A222639, there is no canonical definition to state claims against.
-/

/-! ## A222639.P12122784462324235302

`A000188(A000522(n)/A222637(n))`
-/

namespace A222639.P12122784462324235302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A000522 n : ℚ) / (A222637 n : ℚ))).toNat

end

end A222639.P12122784462324235302

/-! ## A222639.P11595148778309522274

`A000196(A000522(n)/A222637(n))`
-/

namespace A222639.P11595148778309522274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A000522 n : ℚ) / (A222637 n : ℚ))).toNat

end

end A222639.P11595148778309522274

/-! ## A222639.P2659845404558207221

`A019554(A000522(n)/A222637(n))`
-/

namespace A222639.P2659845404558207221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((A000522 n : ℚ) / (A222637 n : ℚ))).toNat

end

end A222639.P2659845404558207221

/-! ## A222639.P3666328037363506803

`A000188(gcd(A000142(n+14), A000522(n)))`
-/

namespace A222639.P3666328037363506803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.gcd (A000142 (n + 14)) (A000522 n))

end

end A222639.P3666328037363506803

/-!
# A222640: Hyper-lucky numbers.

The programs for A222640, there is no canonical definition to state claims against.
-/

/-! ## A222640.P3872411768250927653

`∑[A091935(A091884(n+2))!]`
-/

namespace A222640.P3872411768250927653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A091935 (A091884 (n + 2)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222640.P3872411768250927653

/-! ## A222640.P7846008639138938635

`∑[A333175(∑[A179545(n+1)])]`
-/

namespace A222640.P7846008639138938635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333175 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222640.P7846008639138938635

/-! ## A222640.P3804589604634763873

`∑[A336158(A160679(n)+A160647(2*(n+1)))]`
-/

namespace A222640.P3804589604634763873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A160679 n + A160647 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222640.P3804589604634763873

/-! ## A222640.P9683685265295476729

`∑[A073855(A191827(n))!]`
-/

namespace A222640.P9683685265295476729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A073855 (A191827 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222640.P9683685265295476729

/-! ## A222640.P10946053426551363162

`∑[∑[A014019(A237770(n))]!]`
-/

namespace A222640.P10946053426551363162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A237770 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222640.P10946053426551363162

/-!
# A222641: Number of iterations in Collatz (3x+1) trajectory of n to reach 1 from the highest term.

The programs for A222641, there is no canonical definition to state claims against.
-/

/-! ## A222641.P3585404382516809990

`A006577(n+1)-A220421(n+1)`
-/

namespace A222641.P3585404382516809990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A220421 (n + 1)

end

end A222641.P3585404382516809990

/-! ## A222641.P13074480095840350426

`A008908(n+1)-A087225(n+1)`
-/

namespace A222641.P13074480095840350426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A087225 (n + 1)

end

end A222641.P13074480095840350426

/-! ## A222641.P16451776025038062793

`A006577(n+1)+1-A087225(n+1)`
-/

namespace A222641.P16451776025038062793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A087225 (n + 1))

end

end A222641.P16451776025038062793

/-! ## A222641.P12108745712642705412

`A008908(n+1)-(A220421(n+1)+1)`
-/

namespace A222641.P12108745712642705412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A220421 (n + 1) + 1)

end

end A222641.P12108745712642705412

/-! ## A222641.P16613196560014746121

`A058261(n)/(n+1)-A220421(n+1)`
-/

namespace A222641.P16613196560014746121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058261 n : ℚ) / (n + 1 : ℚ) - (A220421 (n + 1) : ℚ)

end

end A222641.P16613196560014746121

/-! ## A222641.P3139510924669194497

`A006577(n+1)-A023443(A087225(n+1))`
-/

namespace A222641.P3139510924669194497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A023443 (A087225 (n + 1)).toNat

end

end A222641.P3139510924669194497

/-! ## A222641.P15928122884825285301

`A023443(A008908(n+1)-A220421(n+1))`
-/

namespace A222641.P15928122884825285301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008908 (n + 1) - A220421 (n + 1)).toNat

end

end A222641.P15928122884825285301

/-! ## A222641.P6226294918512215757

`A006666(n+1)+A006667(n+1)-A220421(n+1)`
-/

namespace A222641.P6226294918512215757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A006667 (n + 1) - A220421 (n + 1))

end

end A222641.P6226294918512215757

/-! ## A222641.P2359697064544988519

`A139399(n+1)+A158799(n)-1-A220421(n+1)`
-/

namespace A222641.P2359697064544988519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + (A158799 n - 1) - A220421 (n + 1)

end

end A222641.P2359697064544988519

/-! ## A222641.P10468037673351250989

`A006577(A025586(n+1))`
-/

namespace A222641.P10468037673351250989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A025586 (n + 1)).toNat

end

end A222641.P10468037673351250989

/-! ## A222641.P10840644458748562813

`A006577(A270570(2*(n+1)))`
-/

namespace A222641.P10840644458748562813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A270570 (2 * (n + 1))).toNat

end

end A222641.P10840644458748562813

/-! ## A222641.P3145357024263489152

`A076228(A025586(2*n+1-n))`
-/

namespace A222641.P3145357024263489152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (A025586 (2 * n + 1 - n)).toNat

end

end A222641.P3145357024263489152

/-! ## A222641.P1268431152297828951

`A006577(A220237(A058633(n+1)+n+1))`
-/

namespace A222641.P1268431152297828951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A220237 (A058633 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A222641.P1268431152297828951

/-!
# A222642: Integer nearest to (Li(n) - Li(sqrt(n))), where Li(x) = integral(0..x, dt/log(t)).

The programs for A222642, the canonical program `A222642.P4256283084777248805` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222642 has offset 2).

The definition of A222642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222642.P4256283084777248805

`floor(A103128(∑[A319951(n+2)])/2)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A222642

/-- `floor(A103128(∑[A319951(n+2)])/2)+1` -/
def P4256283084777248805.Spec : Prop :=
  ∀ n, P4256283084777248805.a n = A222642 (n + 2)

theorem P4256283084777248805.correct : P4256283084777248805.Spec := by
  intro n
  simp only [A222642, Nat.add_sub_cancel]

end A222642

/-! ## A222642.P3142979585289006333

`A008619(A103128(∑[A319951(n+2)]))`
-/

namespace A222642.P3142979585289006333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A103128 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A222642.P3142979585289006333

namespace A222642

/-- `A008619(A103128(∑[A319951(n+2)]))` -/
def P3142979585289006333.Spec : Prop :=
  ∀ n, P3142979585289006333.a n = A222642 (n + 2)

end A222642

/-! ## A222642.P12451718022808771250

`floor(root(∑[A225086(n+1)+3], 3))`
-/

namespace A222642.P12451718022808771250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A222642.P12451718022808771250

namespace A222642

/-- `floor(root(∑[A225086(n+1)+3], 3))` -/
def P12451718022808771250.Spec : Prop :=
  ∀ n, P12451718022808771250.a n = A222642 (n + 2)

end A222642

/-! ## A222642.P16415885352241810821

`A048766(∑[A225086(n+1)+3])`
-/

namespace A222642.P16415885352241810821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A222642.P16415885352241810821

namespace A222642

/-- `A048766(∑[A225086(n+1)+3])` -/
def P16415885352241810821.Spec : Prop :=
  ∀ n, P16415885352241810821.a n = A222642 (n + 2)

end A222642

/-! ## A222642.P643853141274559428

`A048766(A281376(n+1)+A017017(n))`
-/

namespace A222642.P643853141274559428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A281376 (n + 1) + A017017 n).toNat

end

end A222642.P643853141274559428

namespace A222642

/-- `A048766(A281376(n+1)+A017017(n))` -/
def P643853141274559428.Spec : Prop :=
  ∀ n, P643853141274559428.a n = A222642 (n + 2)

end A222642

/-! ## A222642.P2738729969082512330

`A048766(∑[A093110(n)])+1`
-/

namespace A222642.P2738729969082512330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A222642.P2738729969082512330

namespace A222642

/-- `A048766(∑[A093110(n)])+1` -/
def P2738729969082512330.Spec : Prop :=
  ∀ n, P2738729969082512330.a n = A222642 (n + 2)

end A222642

/-! ## A222642.P9004882718407884465

`n-(A023443(n)-A048766(∑[A093110(n)]))`
-/

namespace A222642.P9004882718407884465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A222642.P9004882718407884465

namespace A222642

/-- `n-(A023443(n)-A048766(∑[A093110(n)]))` -/
def P9004882718407884465.Spec : Prop :=
  ∀ n, P9004882718407884465.a n = A222642 (n + 2)

end A222642

/-! ## A222642.P9709517310683409947

`A005408(n)-(2*n-A048766(∑[A093110(n)]))`
-/

namespace A222642.P9709517310683409947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A222642.P9709517310683409947

namespace A222642

/-- `A005408(n)-(2*n-A048766(∑[A093110(n)]))` -/
def P9709517310683409947.Spec : Prop :=
  ∀ n, P9709517310683409947.a n = A222642 (n + 2)

end A222642

/-!
# A222643: Number of nX2 0..2 arrays with no more than floor(nX2/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222643, there is no canonical definition to state claims against.
-/

/-! ## A222643.P15563387028331892639

`A222649(∑[n+1]+2)`
-/

namespace A222643.P15563387028331892639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222643.P15563387028331892639

/-! ## A222643.P12099702393739990467

`lcm(A158388(n), A222649(A167499(n)-3))`
-/

namespace A222643.P12099702393739990467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A222649 (A167499 n - 3).toNat)

end

end A222643.P12099702393739990467

/-! ## A222643.P13145565387556187979

`A222649(A167487(n)-5)%A222356(n+1)`
-/

namespace A222643.P13145565387556187979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222649 (A167487 n - 5).toNat) (A222356 (n + 1))

end

end A222643.P13145565387556187979

/-! ## A222643.P12949460606552046271

`gcd(A000038(n), A222649(A000096(n+1)))`
-/

namespace A222643.P12949460606552046271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222649 (A000096 (n + 1)).toNat)

end

end A222643.P12949460606552046271

/-! ## A222643.P5501193615028074289

`lcm(A152157(n), A222649(A000096(n+1)))`
-/

namespace A222643.P5501193615028074289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152157 n) (A222649 (A000096 (n + 1)).toNat)

end

end A222643.P5501193615028074289

/-!
# A222644: Number of nX3 0..2 arrays with no more than floor(nX3/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222644, there is no canonical definition to state claims against.
-/

/-! ## A222644.P8837215694625505559

`A222649(∑[n+2]+4)`
-/

namespace A222644.P8837215694625505559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222644.P8837215694625505559

/-! ## A222644.P15951266517284319996

`A222649(A167614(n+1))+char[20]`
-/

namespace A222644.P15951266517284319996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222644.P15951266517284319996

/-! ## A222644.P4931135804570456455

`record[gcd(A183134(n), A222649(n+4))]`
-/

namespace A222644.P4931135804570456455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183134 n) (A222649 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222644.P4931135804570456455

/-! ## A222644.P4234987397692326036

`A222649(A000217(n+2)+3)+char[17]`
-/

namespace A222644.P4234987397692326036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222644.P4234987397692326036

/-! ## A222644.P17123491732875492511

`A326543(n)+A222649(A167614(n+1))`
-/

namespace A222644.P17123491732875492511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326543 n + A222649 (A167614 (n + 1)).toNat

end

end A222644.P17123491732875492511

/-!
# A222645: Number of nX4 0..2 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222645, there is no canonical definition to state claims against.
-/

/-! ## A222645.P15820735282670116475

`A222649(A374004(n+1))`
-/

namespace A222645.P15820735282670116475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A374004 (n + 1)).toNat

end

end A222645.P15820735282670116475

/-! ## A222645.P14453224856156062204

`A222649(A141214(n)+7)`
-/

namespace A222645.P14453224856156062204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A141214 n + 7).toNat

end

end A222645.P14453224856156062204

/-! ## A222645.P10659950292531384408

`A222649(A052905(n)+9)`
-/

namespace A222645.P10659950292531384408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A052905 n + 9).toNat

end

end A222645.P10659950292531384408

/-! ## A222645.P10185358016204157263

`A222649(A055999(n)+10)`
-/

namespace A222645.P10185358016204157263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A055999 n + 10).toNat

end

end A222645.P10185358016204157263

/-! ## A222645.P10945058368713666989

`A222649(eq[5, A066657(n)])`
-/

namespace A222645.P10945058368713666989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222645.P10945058368713666989

/-!
# A222646: Number of nX5 0..2 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222646, there is no canonical definition to state claims against.
-/

/-! ## A222646.P18206119892589719976

`A222649(A374005(n+1))`
-/

namespace A222646.P18206119892589719976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A374005 (n + 1)).toNat

end

end A222646.P18206119892589719976

/-! ## A222646.P5482101078302904141

`A222649(A167499(n+3))`
-/

namespace A222646.P5482101078302904141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A167499 (n + 3)).toNat

end

end A222646.P5482101078302904141

/-! ## A222646.P15663816854257606295

`A222649(A155212(n)+13)`
-/

namespace A222646.P15663816854257606295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A155212 n + 13).toNat

end

end A222646.P15663816854257606295

/-! ## A222646.P8189209360801912458

`A222649(A056000(n)+15)`
-/

namespace A222646.P8189209360801912458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A056000 n + 15).toNat

end

end A222646.P8189209360801912458

/-! ## A222646.P11656594088172542481

`A222649(eq[7, A066657(n)])`
-/

namespace A222646.P11656594088172542481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222646.P11656594088172542481

/-!
# A222647: Number of nX6 0..2 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222647, there is no canonical definition to state claims against.
-/

/-! ## A222647.P7699065252994298230

`A222649(A374007(n+1))`
-/

namespace A222647.P7699065252994298230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A374007 (n + 1)).toNat

end

end A222647.P7699065252994298230

/-! ## A222647.P2352446537008565022

`A222649(A056115(n)+21)`
-/

namespace A222647.P2352446537008565022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A056115 n + 21).toNat

end

end A222647.P2352446537008565022

/-! ## A222647.P2967829992644912781

`A222649(A167499(n+4)+1)`
-/

namespace A222647.P2967829992644912781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A167499 (n + 4) + 1).toNat

end

end A222647.P2967829992644912781

/-! ## A222647.P15148351452456527550

`A222649(A167487(n+4)-1)`
-/

namespace A222647.P15148351452456527550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A167487 (n + 4) - 1).toNat

end

end A222647.P15148351452456527550

/-! ## A222647.P14163530128600775452

`A222649(A000217(n+5)+6)`
-/

namespace A222647.P14163530128600775452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A000217 (n + 5) + 6).toNat

end

end A222647.P14163530128600775452

/-!
# A222648: Number of nX7 0..2 arrays with no more than floor(nX7/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222648, there is no canonical definition to state claims against.
-/

/-! ## A222648.P3039902426464483434

`A222649(A374008(n+1))`
-/

namespace A222648.P3039902426464483434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A374008 (n + 1)).toNat

end

end A222648.P3039902426464483434

/-! ## A222648.P1905669797623429729

`A222649(A167487(n+5))`
-/

namespace A222648.P1905669797623429729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A167487 (n + 5)).toNat

end

end A222648.P1905669797623429729

/-! ## A222648.P1988896092672441982

`A222649(A056119(n)+28)`
-/

namespace A222648.P1988896092672441982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A056119 n + 28).toNat

end

end A222648.P1988896092672441982

/-! ## A222648.P9082991388402802804

`A222649(A000124(n+6)+6)`
-/

namespace A222648.P9082991388402802804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A000124 (n + 6) + 6).toNat

end

end A222648.P9082991388402802804

/-! ## A222648.P5968011561014385389

`A222649(eq[8, A131818(n+1)])`
-/

namespace A222648.P5968011561014385389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222648.P5968011561014385389

/-!
# A222649: T(n,k)=Number of nXk 0..2 arrays with no more than floor(nXk/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222649, there is no canonical definition to state claims against.
-/

/-! ## A222649.P1703510167381068265

`A222616(n+1)+A178798(A222378(n+1))`
-/

namespace A222649.P1703510167381068265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (n + 1) + A178798 (A222378 (n + 1)).toNat

end

end A222649.P1703510167381068265

/-! ## A222649.P10267601264534890488

`A222616(n+1)-A227189(A051270(2*(n+1)))`
-/

namespace A222649.P10267601264534890488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (n + 1) - A227189 (A051270 (2 * (n + 1))).toNat

end

end A222649.P10267601264534890488

/-!
# A222650: Number of nX1 0..3 arrays with no more than floor(nX1/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222650, there is no canonical definition to state claims against.
-/

/-! ## A222650.P1150824018108655115

`A222878(∑[n]+1)`
-/

namespace A222650.P1150824018108655115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222650.P1150824018108655115

/-! ## A222650.P6704149332407323722

`A222654(∑[n]+1)`
-/

namespace A222650.P6704149332407323722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222654 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222650.P6704149332407323722

/-! ## A222650.P14290924223161733278

`A222828(∑[n]+1)`
-/

namespace A222650.P14290924223161733278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222828 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222650.P14290924223161733278

/-! ## A222650.P9929127905601167779

`A222842(∑[n]+1)`
-/

namespace A222650.P9929127905601167779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222842 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222650.P9929127905601167779

/-! ## A222650.P12480822319333585072

`A222654(A000124(n))+char[12]`
-/

namespace A222650.P12480822319333585072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222654 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222650.P12480822319333585072

/-!
# A222651: Number of nX2 0..3 arrays with no more than floor(nX2/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222651, there is no canonical definition to state claims against.
-/

/-! ## A222651.P16337844900988430867

`A222654(∑[n+1]+2)`
-/

namespace A222651.P16337844900988430867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222654 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222651.P16337844900988430867

/-! ## A222651.P1859410644968745636

`record[gcd(A222654(n+1), A264405(n))]`
-/

namespace A222651.P1859410644968745636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222654 (n + 1)) (A264405 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222651.P1859410644968745636

/-! ## A222651.P10718310990506561180

`record[gcd(A222654(n+2), A255982(n))]`
-/

namespace A222651.P10718310990506561180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222654 (n + 2)) (A255982 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222651.P10718310990506561180

/-! ## A222651.P15273814378679604893

`record[gcd(A003992(n), A222654(n+3))]`
-/

namespace A222651.P15273814378679604893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003992 n) (A222654 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222651.P15273814378679604893

/-! ## A222651.P3293372388514801333

`record[A222654(∑[A152271(n)])]`
-/

namespace A222651.P3293372388514801333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222654 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222651.P3293372388514801333

/-!
# A222652: Number of nX3 0..3 arrays with no more than floor(nX3/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222652, there is no canonical definition to state claims against.
-/

/-! ## A222652.P8289766325595606459

`A222654(∑[n+2]+4)`
-/

namespace A222652.P8289766325595606459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222654 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222652.P8289766325595606459

/-! ## A222652.P5285800076980647915

`record[A222654(n+4)^A107865(n)]`
-/

namespace A222652.P5285800076980647915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222654 (n + 4) : ℚ) ^ (A107865 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222652.P5285800076980647915

/-! ## A222652.P7161915460028398786

`A222654(A167614(n+1))+A025444(n)`
-/

namespace A222652.P7161915460028398786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222654 (A167614 (n + 1)).toNat + A025444 n

end

end A222652.P7161915460028398786

/-! ## A222652.P13327411351811253747

`A222654(A167614(n+1))+A025465(n)`
-/

namespace A222652.P13327411351811253747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222654 (A167614 (n + 1)).toNat + A025465 n

end

end A222652.P13327411351811253747

/-! ## A222652.P6868702515272529633

`A222654(A167614(n+1))+A054899(n)`
-/

namespace A222652.P6868702515272529633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222654 (A167614 (n + 1)).toNat + A054899 n

end

end A222652.P6868702515272529633

/-!
# A222653: Number of nX4 0..3 arrays with no more than floor(nX4/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222653, there is no canonical definition to state claims against.
-/

/-! ## A222653.P6789534208207194334

`A222654(∑[n+3]+7)`
-/

namespace A222653.P6789534208207194334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222654 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222653.P6789534208207194334

/-! ## A222653.P6519741647067370844

`or(floor(acot(n)), A222654(A141214(n+1)))`
-/

namespace A222653.P6519741647067370844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A222654 (A141214 (n + 1)).toNat)

end

end A222653.P6519741647067370844

/-! ## A222653.P4656703803313707867

`record[A222654(A141214(∑{e}[n+1, #]+1))]`
-/

namespace A222653.P4656703803313707867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222654 (A141214 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222653.P4656703803313707867

/-!
# A222654: T(n,k)=Number of nXk 0..3 arrays with no more than floor(nXk/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222654, there is no canonical definition to state claims against.
-/

/-! ## A222654.P7694704066503213793

`A040925(lcm(6, A128816(n)))`
-/

namespace A222654.P7694704066503213793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040925 (Int.lcm 6 (A128816 n))

end

end A222654.P7694704066503213793

/-! ## A222654.P10894925102386236128

`A004709(A222853(n+1)^A071203(n+1))`
-/

namespace A222654.P10894925102386236128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (SequenceMachineLib.roundAway ((A222853 (n + 1) : ℚ) ^ (A071203 (n + 1) : ℤ))).toNat

end

end A222654.P10894925102386236128

/-! ## A222654.P69547022070188360

`A004709(A071203(n+1)²²*A222853(n+1))`
-/

namespace A222654.P69547022070188360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 ((A071203 (n + 1) ^ 2) ^ 2 * A222853 (n + 1)).toNat

end

end A222654.P69547022070188360

/-!
# A222655: a(n) = 16*n^4 + 4.

The programs for A222655, the canonical program `A222655.P14478892799853313748` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222655 has offset 0).

The definition of A222655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n^4+4` (program `A222655.P14478892799853313748`, by `A222655.P14478892799853313748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A222655.P14478892799853313748

`16*n^4+4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A222655

/-- `16*n^4+4` -/
def P14478892799853313748.Spec : Prop :=
  ∀ n, (P14478892799853313748.a n : ℤ) = A222655 n

theorem P14478892799853313748.correct : P14478892799853313748.Spec := by
  intro n
  simp only [A222655]

end A222655

/-! ## A222655.P11551809427006117409

`or(4, (2*n)^4)`
-/

namespace A222655.P11551809427006117409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 ((2 * n) ^ 4)

end

end A222655.P11551809427006117409

namespace A222655

/-- `or(4, (2*n)^4)` -/
def P11551809427006117409.Spec : Prop :=
  ∀ n, (P11551809427006117409.a n : ℤ) = A222655 n

end A222655

/-! ## A222655.P3260786453018085689

`xor(4, (2*n)^4)`
-/

namespace A222655.P3260786453018085689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 ((2 * n) ^ 4)

end

end A222655.P3260786453018085689

namespace A222655

/-- `xor(4, (2*n)^4)` -/
def P3260786453018085689.Spec : Prop :=
  ∀ n, (P3260786453018085689.a n : ℤ) = A222655 n

end A222655

/-! ## A222655.P11962643495135520235

`lcm(4, (2*n²)²+1)`
-/

namespace A222655.P11962643495135520235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 ((2 * n ^ 2) ^ 2 + 1)

end

end A222655.P11962643495135520235

namespace A222655

/-- `lcm(4, (2*n²)²+1)` -/
def P11962643495135520235.Spec : Prop :=
  ∀ n, (P11962643495135520235.a n : ℤ) = A222655 n

end A222655

/-! ## A222655.P18370220672568442734

`abs(xor(-4, (2*n)²²))`
-/

namespace A222655.P18370220672568442734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-4) (((2 * n) ^ 2) ^ 2 : ℤ)|

end

end A222655.P18370220672568442734

namespace A222655

/-- `abs(xor(-4, (2*n)²²))` -/
def P18370220672568442734.Spec : Prop :=
  ∀ n, P18370220672568442734.a n = A222655 n

end A222655

/-! ## A222655.P16931894820544126978

`-xor(-4, (2*n)²²)`
-/

namespace A222655.P16931894820544126978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-4) (((2 * n) ^ 2) ^ 2 : ℤ)

end

end A222655.P16931894820544126978

namespace A222655

/-- `-xor(-4, (2*n)²²)` -/
def P16931894820544126978.Spec : Prop :=
  ∀ n, P16931894820544126978.a n = A222655 n

end A222655

/-! ## A222655.P17549436335426050690

`and((2*n)²²+4, -2)`
-/

namespace A222655.P17549436335426050690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((2 * n) ^ 2) ^ 2 + 4 : ℤ) (-2)

end

end A222655.P17549436335426050690

namespace A222655

/-- `and((2*n)²²+4, -2)` -/
def P17549436335426050690.Spec : Prop :=
  ∀ n, P17549436335426050690.a n = A222655 n

end A222655

/-! ## A222655.P13347588812581902825

`record[and(n, n+1)^4+4]`
-/

namespace A222655.P13347588812581902825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) ^ 4 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222655.P13347588812581902825

namespace A222655

/-- `record[and(n, n+1)^4+4]` -/
def P13347588812581902825.Spec : Prop :=
  ∀ n, (P13347588812581902825.a n : ℤ) = A222655 n

end A222655

/-! ## A222655.P18098815134192786969

`record[and(n, n+1)²²+4]`
-/

namespace A222655.P18098815134192786969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) ^ 2) ^ 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222655.P18098815134192786969

namespace A222655

/-- `record[and(n, n+1)²²+4]` -/
def P18098815134192786969.Spec : Prop :=
  ∀ n, (P18098815134192786969.a n : ℤ) = A222655 n

end A222655

/-! ## A222655.P16883157948438418686

`A057781(2*n)`
-/

namespace A222655.P16883157948438418686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057781 (2 * n)

end

end A222655.P16883157948438418686

namespace A222655

/-- `A057781(2*n)` -/
def P16883157948438418686.Spec : Prop :=
  ∀ n, P16883157948438418686.a n = A222655 n

end A222655

/-!
# A222656: Number T(n,k) of partitions of n using exactly k primes; triangle T(n,k), n>=0, 0<=k<=floor(n/2), read by rows.

The programs for A222656, there is no canonical definition to state claims against.
-/

/-! ## A222656.P8769968483803628634

`A001221(A271884(n+1)+∑{d}[n+1, #])`
-/

namespace A222656.P8769968483803628634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A271884 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A222656.P8769968483803628634

/-! ## A222656.P8278086790333087716

`A000196(A000005(4^A191384(n)))`
-/

namespace A222656.P8278086790333087716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000005 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A191384 n : ℤ))).toNat).toNat

end

end A222656.P8278086790333087716

/-! ## A222656.P8055168077163766307

`A001221(A339916(n)+A010815(n))`
-/

namespace A222656.P8055168077163766307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A339916 n + A010815 n).toNat

end

end A222656.P8055168077163766307

/-! ## A222656.P6924838349360734249

`A001221(A279252(n)+A258023(n+1))`
-/

namespace A222656.P6924838349360734249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A279252 n + A258023 (n + 1)).toNat

end

end A222656.P6924838349360734249

/-! ## A222656.P5302727638411873919

`A001221(A271884(n+1)+A000203(n+1))`
-/

namespace A222656.P5302727638411873919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A271884 (n + 1) + A000203 (n + 1)).toNat

end

end A222656.P5302727638411873919

/-!
# A222657: a(n) = 2 * floor( (2*n + 1) / 3) + 1.

The programs for A222657, the canonical program `A222657.P3887843505348966234` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222657 has offset 0).

The definition of A222657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*floor((2*n+1)/3)+1` (program `A222657.P3887843505348966234`, by `A222657.P3887843505348966234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A222657.P3887843505348966234

`2*floor((2*n+1)/3)+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A222657

/-- `2*floor((2*n+1)/3)+1` -/
def P3887843505348966234.Spec : Prop :=
  ∀ n, P3887843505348966234.a n = A222657 n

theorem P3887843505348966234.correct : P3887843505348966234.Spec := by
  intro n
  simp only [A222657]

end A222657

/-! ## A222657.P3846827755876969317

`-A168053(n+2)`
-/

namespace A222657.P3846827755876969317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168053 (n + 2)

end

end A222657.P3846827755876969317

namespace A222657

/-- `-A168053(n+2)` -/
def P3846827755876969317.Spec : Prop :=
  ∀ n, P3846827755876969317.a n = A222657 n

end A222657

/-! ## A222657.P17622186064378025454

`or(1, comp[4*n])`
-/

namespace A222657.P17622186064378025454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A222657.P17622186064378025454

namespace A222657

/-- `or(1, comp[4*n])` -/
def P17622186064378025454.Spec : Prop :=
  ∀ n, (P17622186064378025454.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P16058926078527945166

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2`
-/

namespace A222657.P16058926078527945166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222657.P16058926078527945166

namespace A222657

/-- `∑[abs(a(n-3))]` -/
def P16058926078527945166.Spec : Prop :=
  ∀ n, (P16058926078527945166.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P15912063722005201876

`∑[lcm(2, a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A222657.P15912063722005201876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  Nat.lcm 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222657.P15912063722005201876

namespace A222657

/-- `∑[lcm(2, a(n-3))]` -/
def P15912063722005201876.Spec : Prop :=
  ∀ n, (P15912063722005201876.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P10951146166561510991

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2`
-/

namespace A222657.P10951146166561510991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222657.P10951146166561510991

namespace A222657

/-- `∑[dr(a(n-3))]` -/
def P10951146166561510991.Spec : Prop :=
  ∀ n, (P10951146166561510991.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P1304681535894850028

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A222657.P1304681535894850028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222657.P1304681535894850028

namespace A222657

/-- `∑[floor(a(n-3))]` -/
def P1304681535894850028.Spec : Prop :=
  ∀ n, (P1304681535894850028.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P3083618364457188683

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A222657.P3083618364457188683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222657.P3083618364457188683

namespace A222657

/-- `∑[ceil(a(n-3))]` -/
def P3083618364457188683.Spec : Prop :=
  ∀ n, (P3083618364457188683.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P13801404942078858213

`∑[round(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A222657.P13801404942078858213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222657.P13801404942078858213

namespace A222657

/-- `∑[round(a(n-3))]` -/
def P13801404942078858213.Spec : Prop :=
  ∀ n, (P13801404942078858213.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P8546047227822514141

`xor(1, 2*round(2*n/3))`
-/

namespace A222657.P8546047227822514141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)))

end

end A222657.P8546047227822514141

namespace A222657

/-- `xor(1, 2*round(2*n/3))` -/
def P8546047227822514141.Spec : Prop :=
  ∀ n, P8546047227822514141.a n = A222657 n

end A222657

/-! ## A222657.P778519008407685618

`∑[a(n-3)%3]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2`
-/

namespace A222657.P778519008407685618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2] fun n f1 =>
  f1 (n - 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222657.P778519008407685618

namespace A222657

/-- `∑[a(n-3)%3]` -/
def P778519008407685618.Spec : Prop :=
  ∀ n, (P778519008407685618.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P12944912242126304261

`∑[and(2, a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2`
-/

namespace A222657.P12944912242126304261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2] fun n f1 =>
  Nat.land 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222657.P12944912242126304261

namespace A222657

/-- `∑[and(2, a(n-3))]` -/
def P12944912242126304261.Spec : Prop :=
  ∀ n, (P12944912242126304261.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P15018126705615383047

`∑[char[3]+a(n-3)]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A222657.P15018126705615383047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222657.P15018126705615383047

namespace A222657

/-- `∑[char[3]+a(n-3)]` -/
def P15018126705615383047.Spec : Prop :=
  ∀ n, (P15018126705615383047.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P13682198698079534630

`ogf((1+2x+x^3)/(1-x-x^3+x^4))`
-/

namespace A222657.P13682198698079534630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 1] [1, -1, 0, -1, 1] n

end

end A222657.P13682198698079534630

namespace A222657

/-- `ogf((1+2x+x^3)/(1-x-x^3+x^4))` -/
def P13682198698079534630.Spec : Prop :=
  ∀ n, P13682198698079534630.a n = A222657 n

end A222657

/-! ## A222657.P4122426866994612856

`∑[a(n-3)²/2]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2`
-/

namespace A222657.P4122426866994612856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 0, 2] fun n f1 =>
  f1 (n - 3) ^ 2 / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222657.P4122426866994612856

namespace A222657

/-- `∑[a(n-3)²/2]` -/
def P4122426866994612856.Spec : Prop :=
  ∀ n, P4122426866994612856.a n = (A222657 n : ℚ)

end A222657

/-! ## A222657.P5180223577002045206

`∑[a(n-3)^3/4]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2`
-/

namespace A222657.P5180223577002045206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 0, 2] fun n f1 =>
  f1 (n - 3) ^ 3 / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222657.P5180223577002045206

namespace A222657

/-- `∑[a(n-3)^3/4]` -/
def P5180223577002045206.Spec : Prop :=
  ∀ n, P5180223577002045206.a n = (A222657 n : ℚ)

end A222657

/-! ## A222657.P11107301433233941960

`floor(a(n-1)-(gcd(3, n+1)-3))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A222657.P11107301433233941960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((Nat.gcd 3 (n + 1) : ℤ) - 3)

end

end A222657.P11107301433233941960

namespace A222657

/-- `floor(a(n-1)-(gcd(3, n+1)-3))` -/
def P11107301433233941960.Spec : Prop :=
  ∀ n, P11107301433233941960.a n = A222657 n

end A222657

/-! ## A222657.P6908210526424931646

`floor(a(n-1)-(1-a(n-2)%4))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A222657.P6908210526424931646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (1 - Int.tmod (a (n - 2)) 4)

end

end A222657.P6908210526424931646

namespace A222657

/-- `floor(a(n-1)-(1-a(n-2)%4))` -/
def P6908210526424931646.Spec : Prop :=
  ∀ n, P6908210526424931646.a n = A222657 n

end A222657

/-! ## A222657.P11963906589794385394

`floor(a(n-1)-(a(n-4)-a(n-3)))` with `a(0)=1, a(1)=3, a(2)=3, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A222657.P11963906589794385394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 5] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 3))

end

end A222657.P11963906589794385394

namespace A222657

/-- `floor(a(n-1)-(a(n-4)-a(n-3)))` -/
def P11963906589794385394.Spec : Prop :=
  ∀ n, P11963906589794385394.a n = A222657 n

end A222657

/-!
# A222659: Table a(m,n) read by antidiagonals, m, n >= 1, where a(m,n) is the number of divide-and-conquer partitions of an m X n rectangle into integer sub-rectangles.

The programs for A222659, there is no canonical definition to state claims against.
-/

/-! ## A222659.P12735278084943554027

`A116694(n+1)-A285007(A081579(n))`
-/

namespace A222659.P12735278084943554027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (n + 1) - A285007 (A081579 n).toNat

end

end A222659.P12735278084943554027

/-! ## A222659.P15810362265465645096

`A116694(n+1)-A325649(A126770(n))`
-/

namespace A222659.P15810362265465645096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (n + 1) - A325649 (A126770 n).toNat

end

end A222659.P15810362265465645096

/-! ## A222659.P5153345717237946382

`A116694(n+1)-A102679(A222608(n+1))`
-/

namespace A222659.P5153345717237946382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (n + 1) - A102679 (A222608 (n + 1)).toNat

end

end A222659.P5153345717237946382

/-! ## A222659.P12687623235644551883

`A116694(n+1)-A007814(A236884(n+1))`
-/

namespace A222659.P12687623235644551883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (n + 1) - A007814 (A236884 (n + 1)).toNat

end

end A222659.P12687623235644551883

/-!
# A222660: Number of nX2 0..3 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222660, there is no canonical definition to state claims against.
-/

/-! ## A222660.P17704965959700100342

`A222666(∑[n+1]+2)`
-/

namespace A222660.P17704965959700100342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222660.P17704965959700100342

/-! ## A222660.P8099255683586232500

`A222666(A133263(n+1))-A256974(n)`
-/

namespace A222660.P8099255683586232500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A133263 (n + 1)).toNat - A256974 n

end

end A222660.P8099255683586232500

/-! ## A222660.P257070871584270962

`A222666(A000096(n)+3)+A025438(n)`
-/

namespace A222660.P257070871584270962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A000096 n + 3).toNat + A025438 n

end

end A222660.P257070871584270962

/-! ## A222660.P8007686692061259279

`A256974(n)+A222666(A000096(n)+3)`
-/

namespace A222660.P8007686692061259279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A222666 (A000096 n + 3).toNat

end

end A222660.P8007686692061259279

/-! ## A222660.P3332571324654375374

`A326543(n)+A222666(A000096(n)+3)`
-/

namespace A222660.P3332571324654375374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326543 n + A222666 (A000096 n + 3).toNat

end

end A222660.P3332571324654375374

/-!
# A222661: Number of nX3 0..3 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222661, there is no canonical definition to state claims against.
-/

/-! ## A222661.P13628961290663346606

`A222666(∑[n+2]+4)`
-/

namespace A222661.P13628961290663346606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222661.P13628961290663346606

/-! ## A222661.P11476637382273555015

`lcm(2, A222666(A167614(n+1)))`
-/

namespace A222661.P11476637382273555015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222666 (A167614 (n + 1)).toNat)

end

end A222661.P11476637382273555015

/-! ## A222661.P919969698222972527

`A222666(A167614(n+1))+A011731(n)`
-/

namespace A222661.P919969698222972527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A167614 (n + 1)).toNat + A011731 n

end

end A222661.P919969698222972527

/-! ## A222661.P11277076873014085994

`A222666(A167614(n+1))+A011741(n)`
-/

namespace A222661.P11277076873014085994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A167614 (n + 1)).toNat + A011741 n

end

end A222661.P11277076873014085994

/-! ## A222661.P10437540517102725241

`A222666(A167614(n+1))+A014083(n)`
-/

namespace A222661.P10437540517102725241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A167614 (n + 1)).toNat + A014083 n

end

end A222661.P10437540517102725241

/-!
# A222662: Number of nX4 0..3 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222662, there is no canonical definition to state claims against.
-/

/-! ## A222662.P11525665496608352637

`A222666(∑[n+3]+7)`
-/

namespace A222662.P11525665496608352637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222662.P11525665496608352637

/-! ## A222662.P9166777438120727359

`A222666(A056000(n)+7)%A124548(n+3)`
-/

namespace A222662.P9166777438120727359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222666 (A056000 n + 7).toNat) (A124548 (n + 3))

end

end A222662.P9166777438120727359

/-!
# A222663: Number of nX5 0..3 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222663, there is no canonical definition to state claims against.
-/

/-! ## A222663.P6057985154135796321

`A222666(C(n+6, 2)-n)`
-/

namespace A222663.P6057985154135796321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (Nat.choose (n + 6) 2 - n)

end

end A222663.P6057985154135796321

/-! ## A222663.P8228722871052653663

`A222666(A167499(n+3))`
-/

namespace A222663.P8228722871052653663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A167499 (n + 3)).toNat

end

end A222663.P8228722871052653663

/-! ## A222663.P14226767516122765482

`A222666(A155212(n)+13)`
-/

namespace A222663.P14226767516122765482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A155212 n + 13).toNat

end

end A222663.P14226767516122765482

/-! ## A222663.P1985616809756561164

`A222666(A056000(n)+15)`
-/

namespace A222663.P1985616809756561164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A056000 n + 15).toNat

end

end A222663.P1985616809756561164

/-! ## A222663.P14288783101247757087

`A222666(eq[7, A066657(n)])`
-/

namespace A222663.P14288783101247757087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222663.P14288783101247757087

/-!
# A222664: Number of nX6 0..3 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222664, there is no canonical definition to state claims against.
-/

/-! ## A222664.P9301231064850385358

`A222666(A056115(n)+21)`
-/

namespace A222664.P9301231064850385358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A056115 n + 21).toNat

end

end A222664.P9301231064850385358

/-! ## A222664.P7705309375067669834

`A222666(A167614(n+4)+3)`
-/

namespace A222664.P7705309375067669834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A167614 (n + 4) + 3).toNat

end

end A222664.P7705309375067669834

/-! ## A222664.P12352844983753407776

`A222666(A055998(n+3)+9)`
-/

namespace A222664.P12352844983753407776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A055998 (n + 3) + 9).toNat

end

end A222664.P12352844983753407776

/-! ## A222664.P10941407318165103616

`A222666(eq[7, A131818(n+1)])`
-/

namespace A222664.P10941407318165103616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222664.P10941407318165103616

/-! ## A222664.P5691525473673226151

`A222666(A374007(n+1))`
-/

namespace A222664.P5691525473673226151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A374007 (n + 1)).toNat

end

end A222664.P5691525473673226151

/-!
# A222665: Number of nX7 0..3 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222665, there is no canonical definition to state claims against.
-/

/-! ## A222665.P2125895617408279058

`A222666(A056119(n)+28)`
-/

namespace A222665.P2125895617408279058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A056119 n + 28).toNat

end

end A222665.P2125895617408279058

/-! ## A222665.P7770613025736850516

`A222666(A000124(n+6)+6)`
-/

namespace A222665.P7770613025736850516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A000124 (n + 6) + 6).toNat

end

end A222665.P7770613025736850516

/-! ## A222665.P1109967161426200215

`A222666(eq[8, A131818(n+1)])`
-/

namespace A222665.P1109967161426200215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222665.P1109967161426200215

/-! ## A222665.P6566464875776190679

`A222666(A374008(n+1))`
-/

namespace A222665.P6566464875776190679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A374008 (n + 1)).toNat

end

end A222665.P6566464875776190679

/-! ## A222665.P16411172506210035559

`A222666(A055999(n+4))`
-/

namespace A222665.P16411172506210035559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A055999 (n + 4)).toNat

end

end A222665.P16411172506210035559

/-!
# A222666: T(n,k)=Number of nXk 0..3 arrays with exactly floor(nXk/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222666, there is no canonical definition to state claims against.
-/

/-! ## A222666.P18251437829142382852

`A335467(A222673(n+1)+1)`
-/

namespace A222666.P18251437829142382852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (A222673 (n + 1) + 1).toNat

end

end A222666.P18251437829142382852

/-! ## A222666.P16068660533680764865

`A065039(A222673(n+1)%record[A097598(n)])`
-/

namespace A222666.P16068660533680764865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (Int.tmod (A222673 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A222666.P16068660533680764865

/-! ## A222666.P4736944666103695860

`A065039(A222673(n+1))%A139061(n+1)`
-/

namespace A222666.P4736944666103695860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065039 (A222673 (n + 1)).toNat) (A139061 (n + 1))

end

end A222666.P4736944666103695860

/-! ## A222666.P362587780323999776

`A065039(A222673(n+1)^A008835(n+11))`
-/

namespace A222666.P362587780323999776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (SequenceMachineLib.roundAway ((A222673 (n + 1) : ℚ) ^ (A008835 (n + 11) : ℤ))).toNat

end

end A222666.P362587780323999776

/-! ## A222666.P8418008890502171093

`A065039(A222673(n+1))%A097598(A156368(n))`
-/

namespace A222666.P8418008890502171093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065039 (A222673 (n + 1)).toNat) (A097598 (A156368 n).toNat)

end

end A222666.P8418008890502171093

/-!
# A222667: Number of nX2 0..2 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222667, there is no canonical definition to state claims against.
-/

/-! ## A222667.P14617045550326174998

`A222673(∑[n+1]+2)`
-/

namespace A222667.P14617045550326174998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222667.P14617045550326174998

/-! ## A222667.P9249911559238977540

`A222673(A133263(n+1))+char[16]`
-/

namespace A222667.P9249911559238977540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222667.P9249911559238977540

/-! ## A222667.P12462116222041162224

`A256974(n)+A222673(A133263(n+1))`
-/

namespace A222667.P12462116222041162224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A222673 (A133263 (n + 1)).toNat

end

end A222667.P12462116222041162224

/-! ## A222667.P3820594681742853600

`A222673(A133263(n+1))%A003319(n+1)`
-/

namespace A222667.P3820594681742853600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222673 (A133263 (n + 1)).toNat) (A003319 (n + 1))

end

end A222667.P3820594681742853600

/-! ## A222667.P3672466538530964169

`gcd(A072189(n+3), A222673(A133263(n+1)))`
-/

namespace A222667.P3672466538530964169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072189 (n + 3)) (A222673 (A133263 (n + 1)).toNat)

end

end A222667.P3672466538530964169

/-!
# A222668: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222668, there is no canonical definition to state claims against.
-/

/-! ## A222668.P16768492305434645592

`A222673(∑[n+2]+4)`
-/

namespace A222668.P16768492305434645592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222668.P16768492305434645592

/-! ## A222668.P4312593482073444533

`lcm(2, A222673(A167614(n+1)))`
-/

namespace A222668.P4312593482073444533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222673 (A167614 (n + 1)).toNat)

end

end A222668.P4312593482073444533

/-! ## A222668.P15534700479277480062

`A222673(A046691(n)+7)+char[32]`
-/

namespace A222668.P15534700479277480062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222668.P15534700479277480062

/-! ## A222668.P1491501950525423331

`A222673(A000096(n+1)+4)+char[19]`
-/

namespace A222668.P1491501950525423331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222668.P1491501950525423331

/-! ## A222668.P5204748127014582716

`A222673(A167614(n+1))+A011741(n)`
-/

namespace A222668.P5204748127014582716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A167614 (n + 1)).toNat + A011741 n

end

end A222668.P5204748127014582716

/-!
# A222669: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222669, there is no canonical definition to state claims against.
-/

/-! ## A222669.P5417810502958105673

`A222673(A374004(n+1))`
-/

namespace A222669.P5417810502958105673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A374004 (n + 1)).toNat

end

end A222669.P5417810502958105673

/-! ## A222669.P17575782847154043744

`A222673(A141214(n)+7)`
-/

namespace A222669.P17575782847154043744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A141214 n + 7).toNat

end

end A222669.P17575782847154043744

/-! ## A222669.P4023785936417185829

`A222673(A052905(n)+9)`
-/

namespace A222669.P4023785936417185829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A052905 n + 9).toNat

end

end A222669.P4023785936417185829

/-! ## A222669.P13851183039307257117

`A222673(A055999(n)+10)`
-/

namespace A222669.P13851183039307257117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A055999 n + 10).toNat

end

end A222669.P13851183039307257117

/-! ## A222669.P6873482227062598552

`A222673(eq[5, A066657(n)])`
-/

namespace A222669.P6873482227062598552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222669.P6873482227062598552

/-!
# A222670: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222670, there is no canonical definition to state claims against.
-/

/-! ## A222670.P16002948355143774157

`A222673(A374005(n+1))`
-/

namespace A222670.P16002948355143774157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A374005 (n + 1)).toNat

end

end A222670.P16002948355143774157

/-! ## A222670.P15192230366089960144

`A222673(A167499(n+3))`
-/

namespace A222670.P15192230366089960144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A167499 (n + 3)).toNat

end

end A222670.P15192230366089960144

/-! ## A222670.P1934283905334108071

`A222673(A155212(n)+13)`
-/

namespace A222670.P1934283905334108071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A155212 n + 13).toNat

end

end A222670.P1934283905334108071

/-! ## A222670.P15612711059571085287

`A222673(A056000(n)+15)`
-/

namespace A222670.P15612711059571085287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A056000 n + 15).toNat

end

end A222670.P15612711059571085287

/-! ## A222670.P5556191999284063936

`A222673(eq[7, A066657(n)])`
-/

namespace A222670.P5556191999284063936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222670.P5556191999284063936

/-!
# A222671: Number of nX6 0..2 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222671, there is no canonical definition to state claims against.
-/

/-! ## A222671.P4370017926609188739

`A222673(A374007(n+1))`
-/

namespace A222671.P4370017926609188739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A374007 (n + 1)).toNat

end

end A222671.P4370017926609188739

/-! ## A222671.P16391289911010332099

`A222673(A056115(n)+21)`
-/

namespace A222671.P16391289911010332099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A056115 n + 21).toNat

end

end A222671.P16391289911010332099

/-! ## A222671.P17867174813933705994

`A222673(A167614(n+4)+3)`
-/

namespace A222671.P17867174813933705994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A167614 (n + 4) + 3).toNat

end

end A222671.P17867174813933705994

/-! ## A222671.P9962561160903235196

`A222673(A000096(n+4)+7)`
-/

namespace A222671.P9962561160903235196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A000096 (n + 4) + 7).toNat

end

end A222671.P9962561160903235196

/-! ## A222671.P3236892831693924870

`A222673(A055999(n+2)+12)`
-/

namespace A222671.P3236892831693924870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A055999 (n + 2) + 12).toNat

end

end A222671.P3236892831693924870

/-!
# A222672: Number of nX7 0..2 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222672, there is no canonical definition to state claims against.
-/

/-! ## A222672.P12519575153586639118

`A222673(A374008(n+1))`
-/

namespace A222672.P12519575153586639118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A374008 (n + 1)).toNat

end

end A222672.P12519575153586639118

/-! ## A222672.P14918226006570773708

`A222673(A056119(n)+28)`
-/

namespace A222672.P14918226006570773708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A056119 n + 28).toNat

end

end A222672.P14918226006570773708

/-! ## A222672.P7267225957971141524

`A222673(eq[11, A066657(n)])`
-/

namespace A222672.P7267225957971141524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222672.P7267225957971141524

/-! ## A222672.P6510364906758890991

`A222673(eq[8, A131818(n+1)])`
-/

namespace A222672.P6510364906758890991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222672.P6510364906758890991

/-! ## A222672.P12613018180700010417

`A222673(A055999(n+4))`
-/

namespace A222672.P12613018180700010417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A055999 (n + 4)).toNat

end

end A222672.P12613018180700010417

/-!
# A222673: T(n,k)=Number of nXk 0..2 arrays with exactly floor(nXk/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222673, there is no canonical definition to state claims against.
-/

/-! ## A222673.P13923177210040157223

`and(A102823(A222666(n+1)), A222666(n+1))`
-/

namespace A222673.P13923177210040157223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102823 (A222666 (n + 1)).toNat) (A222666 (n + 1))

end

end A222673.P13923177210040157223

/-! ## A222673.P4813286417173940294

`A081600(or(A151722(n)², A222666(n+1)))`
-/

namespace A222673.P4813286417173940294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (Int.lor (A151722 n ^ 2) (A222666 (n + 1))).toNat

end

end A222673.P4813286417173940294

/-! ## A222673.P17320223776242248347

`A081600(∑[A151722(n)]*A222666(n+1))`
-/

namespace A222673.P17320223776242248347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 ((∑ j ∈ Finset.range (n + 1), f1 j) * A222666 (n + 1)).toNat

end

end A222673.P17320223776242248347

/-! ## A222673.P16714044648929339412

`A081600(A222666(n+1)^∑[A151722(n)])`
-/

namespace A222673.P16714044648929339412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (SequenceMachineLib.roundAway ((A222666 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A222673.P16714044648929339412

/-! ## A222673.P14056306584828959973

`A081600(A222666(n+1)%A139061(n+1))`
-/

namespace A222673.P14056306584828959973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (Int.tmod (A222666 (n + 1)) (A139061 (n + 1))).toNat

end

end A222673.P14056306584828959973

/-!
# A222674: Number of nX3 0..3 arrays with no more than floor(nX3/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222674, there is no canonical definition to state claims against.
-/

/-! ## A222674.P12352206381284786408

`A222679(∑[n+3]+1)`
-/

namespace A222674.P12352206381284786408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222674.P12352206381284786408

/-! ## A222674.P1422187410369752839

`record[A222679(A198464(n+1))]`
-/

namespace A222674.P1422187410369752839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222674.P1422187410369752839

/-! ## A222674.P13706894424463409646

`record[char[A055998(n)]*A222679(n+1)]`
-/

namespace A222674.P13706894424463409646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222674.P13706894424463409646

/-! ## A222674.P2218075458746329683

`record[A010054(n+3)*A222679(n+1)]`
-/

namespace A222674.P2218075458746329683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A222679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222674.P2218075458746329683

/-! ## A222674.P7332074512538401267

`record[gcd(A222679(n+1), A274490(n+2))]`
-/

namespace A222674.P7332074512538401267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222679 (n + 1)) (A274490 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222674.P7332074512538401267

/-!
# A222675: Number of nX4 0..3 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222675, there is no canonical definition to state claims against.
-/

/-! ## A222675.P14443998799934484881

`A222679(∑[n+4]+3)`
-/

namespace A222675.P14443998799934484881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A222675.P14443998799934484881

/-!
# A222676: Number of nX5 0..3 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222676, there is no canonical definition to state claims against.
-/

/-! ## A222676.P11392150937780813863

`A222679(∑[n+5]+6)`
-/

namespace A222676.P11392150937780813863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222676.P11392150937780813863

/-! ## A222676.P14741585740829977480

`record[A222679(A198464(n+2)-2)]`
-/

namespace A222676.P14741585740829977480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (A198464 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222676.P14741585740829977480

/-!
# A222677: Number of nX6 0..3 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222677, there is no canonical definition to state claims against.
-/

/-! ## A222677.P15964371094857099540

`A222679(C(n+6, 2)+n+1)`
-/

namespace A222677.P15964371094857099540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (Nat.choose (n + 6) 2 + n + 1)

end

end A222677.P15964371094857099540

/-! ## A222677.P5957410820179985248

`A222679(A052905(n+3))`
-/

namespace A222677.P5957410820179985248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (A052905 (n + 3)).toNat

end

end A222677.P5957410820179985248

/-! ## A222677.P3453618408030171051

`A222679(A056119(n)+16)`
-/

namespace A222677.P3453618408030171051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (A056119 n + 16).toNat

end

end A222677.P3453618408030171051

/-!
# A222678: Number of nX7 0..3 arrays with no more than floor(nX7/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222678, there is no canonical definition to state claims against.
-/

/-! ## A222678.P8553240031656039297

`A222679(A055999(n+4))`
-/

namespace A222678.P8553240031656039297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (A055999 (n + 4)).toNat

end

end A222678.P8553240031656039297

/-! ## A222678.P11521970305656993297

`A222679(eq[4, A219347(n)])`
-/

namespace A222678.P11521970305656993297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222678.P11521970305656993297

/-!
# A222679: T(n,k)=Number of nXk 0..3 arrays with no more than floor(nXk/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222679, there is no canonical definition to state claims against.
-/

/-! ## A222679.P5080247999573931838

`or(A037820(2^n), A222573(n+1))`
-/

namespace A222679.P5080247999573931838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037820 (2 ^ n)) (A222573 (n + 1))

end

end A222679.P5080247999573931838

/-! ## A222679.P16664367592734452803

`or(A222573(n+1), A262988(2^n))`
-/

namespace A222679.P16664367592734452803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A222573 (n + 1)) (A262988 (2 ^ n))

end

end A222679.P16664367592734452803

/-! ## A222679.P1804823027880078461

`A222573(n+1)+A014083(A000129(n))`
-/

namespace A222679.P1804823027880078461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (n + 1) + A014083 (A000129 n).toNat

end

end A222679.P1804823027880078461

/-! ## A222679.P17539866595531500673

`A222573(n+1)+A102683(A005803(n))`
-/

namespace A222679.P17539866595531500673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (n + 1) + A102683 (A005803 n).toNat

end

end A222679.P17539866595531500673

/-! ## A222679.P6461869476572242093

`A324088(A109202(n))+A222573(n+1)`
-/

namespace A222679.P6461869476572242093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324088 (A109202 n).toNat + A222573 (n + 1)

end

end A222679.P6461869476572242093

/-!
# A222680: Number of 2Xn 0..3 arrays with no more than floor(2Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222680, there is no canonical definition to state claims against.
-/

/-! ## A222680.P3836292148633379035

`A222679(∑[n+1]+2)`
-/

namespace A222680.P3836292148633379035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222680.P3836292148633379035

/-! ## A222680.P493018679688161057

`A222679(A133263(n+1))+A014083(n)`
-/

namespace A222680.P493018679688161057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (A133263 (n + 1)).toNat + A014083 n

end

end A222680.P493018679688161057

/-! ## A222680.P5425181889963350148

`gcd(A000038(n), A222679(A133263(n+1)))`
-/

namespace A222680.P5425181889963350148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222679 (A133263 (n + 1)).toNat)

end

end A222680.P5425181889963350148

/-! ## A222680.P7362380055680200395

`or(A102683(n), A222679(A133263(n+1)))`
-/

namespace A222680.P7362380055680200395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A222679 (A133263 (n + 1)).toNat)

end

end A222680.P7362380055680200395

/-! ## A222680.P6727528225134360460

`or(A222679(A133263(n+1)), A316865(n))`
-/

namespace A222680.P6727528225134360460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A222679 (A133263 (n + 1)).toNat) (A316865 n)

end

end A222680.P6727528225134360460

/-!
# A222681: Number of 3Xn 0..3 arrays with no more than floor(3Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222681, there is no canonical definition to state claims against.
-/

/-! ## A222681.P12035582737297995132

`A222679(∑[n+2]+4)`
-/

namespace A222681.P12035582737297995132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222681.P12035582737297995132

/-! ## A222681.P15345599163069769211

`lcm((-1)^n, A222679(A167614(n+1)))`
-/

namespace A222681.P15345599163069769211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A222679 (A167614 (n + 1)).toNat)

end

end A222681.P15345599163069769211

/-! ## A222681.P9655072847345455324

`A222679(A167614(n+1))+A011744(n)`
-/

namespace A222681.P9655072847345455324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (A167614 (n + 1)).toNat + A011744 n

end

end A222681.P9655072847345455324

/-! ## A222681.P7469385872956692507

`A222679(A167614(n+1))+A014083(n)`
-/

namespace A222681.P7469385872956692507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (A167614 (n + 1)).toNat + A014083 n

end

end A222681.P7469385872956692507

/-! ## A222681.P1813759490281706211

`A222679(A167614(n+1))+A025442(n)`
-/

namespace A222681.P1813759490281706211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (A167614 (n + 1)).toNat + A025442 n

end

end A222681.P1813759490281706211

/-!
# A222682: Number of 4Xn 0..3 arrays with no more than floor(4Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222682, there is no canonical definition to state claims against.
-/

/-! ## A222682.P6240046951200454691

`A222679(∑[n+3]+7)`
-/

namespace A222682.P6240046951200454691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222682.P6240046951200454691

/-!
# A222683: Number of n X n 0..2 arrays with exactly floor(n X n/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222683, there is no canonical definition to state claims against.
-/

/-! ## A222683.P14955790382836983351

`A222690(∑[4*n]+1)`
-/

namespace A222683.P14955790382836983351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222683.P14955790382836983351

/-! ## A222683.P256339534774647939

`record[gcd(A222690(n+1), A323833(n))]`
-/

namespace A222683.P256339534774647939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222690 (n + 1)) (A323833 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222683.P256339534774647939

/-! ## A222683.P13985156499438189466

`or(A025877(n), A222690(A001844(n)))`
-/

namespace A222683.P13985156499438189466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025877 n) (A222690 (A001844 n).toNat)

end

end A222683.P13985156499438189466

/-! ## A222683.P16270791144540754660

`A324179(n+1)+A222690(A001844(n))`
-/

namespace A222683.P16270791144540754660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1) + A222690 (A001844 n).toNat

end

end A222683.P16270791144540754660

/-! ## A222683.P17385912155485917643

`A222690(A001844(n))%A203712(n+1)`
-/

namespace A222683.P17385912155485917643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222690 (A001844 n).toNat) (A203712 (n + 1))

end

end A222683.P17385912155485917643

/-!
# A222684: Number of nX2 0..2 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222684, there is no canonical definition to state claims against.
-/

/-! ## A222684.P12724010338659984488

`A222395(2*(n+1))`
-/

namespace A222684.P12724010338659984488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222395 (2 * (n + 1))

end

end A222684.P12724010338659984488

/-! ## A222684.P16420155523915375201

`record[lcm(and(1, n), A222395(n+1))]`
-/

namespace A222684.P16420155523915375201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.land 1 n : ℤ) (A222395 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222684.P16420155523915375201

/-! ## A222684.P9121155829770799988

`record[A222395(n+2-val(n+1, 2))]`
-/

namespace A222684.P9121155829770799988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222395 (n + 2 - SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222684.P9121155829770799988

/-! ## A222684.P2689042777293430460

`record[A222395(2*A109785(n))]`
-/

namespace A222684.P2689042777293430460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222395 (2 * A109785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222684.P2689042777293430460

/-! ## A222684.P6114026916771658269

`A057427(n)*A222395(A103517(n))`
-/

namespace A222684.P6114026916771658269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A222395 (A103517 n).toNat

end

end A222684.P6114026916771658269

/-! ## A222684.P6600255987854283867

`A222395(A103517(n))%A222374(n+1)`
-/

namespace A222684.P6600255987854283867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222395 (A103517 n).toNat) (A222374 (n + 1))

end

end A222684.P6600255987854283867

/-!
# A222685: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222685, there is no canonical definition to state claims against.
-/

/-! ## A222685.P1799146416040265945

`A222690(∑[n+3]+1)`
-/

namespace A222685.P1799146416040265945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222685.P1799146416040265945

/-! ## A222685.P11359011826471494074

`lcm(2, A222690(Δ[A008778(n)]))`
-/

namespace A222685.P11359011826471494074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222690 (f1 (n + 1) - f1 n).toNat)

end

end A222685.P11359011826471494074

/-! ## A222685.P2280855454794850282

`record[char[A141214(n)]*A222690(n+1)]`
-/

namespace A222685.P2280855454794850282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222685.P2280855454794850282

/-! ## A222685.P1096736419421247577

`A222690(A034856(n+2))+A000038(n+1)`
-/

namespace A222685.P1096736419421247577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A034856 (n + 2)).toNat + A000038 (n + 1)

end

end A222685.P1096736419421247577

/-! ## A222685.P15706588475730885520

`A022932(2*n)*A222690(A034856(n+2))`
-/

namespace A222685.P15706588475730885520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 (2 * n) * A222690 (A034856 (n + 2)).toNat

end

end A222685.P15706588475730885520

/-!
# A222686: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222686, there is no canonical definition to state claims against.
-/

/-! ## A222686.P10812218500337360307

`A222690(A141214(n+1))`
-/

namespace A222686.P10812218500337360307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A141214 (n + 1)).toNat

end

end A222686.P10812218500337360307

/-! ## A222686.P8659542981005666089

`A222690(A155212(n)+5)`
-/

namespace A222686.P8659542981005666089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A155212 n + 5).toNat

end

end A222686.P8659542981005666089

/-! ## A222686.P8118833466592537107

`A222690(A056000(n)+7)`
-/

namespace A222686.P8118833466592537107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A056000 n + 7).toNat

end

end A222686.P8118833466592537107

/-! ## A222686.P18142853821114949874

`A222690(eq[4, A209434(n)])`
-/

namespace A222686.P18142853821114949874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222686.P18142853821114949874

/-! ## A222686.P5135689549338904727

`A222690(Δ[A006416(n+2)])`
-/

namespace A222686.P5135689549338904727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (f1 (n + 1) - f1 n).toNat

end

end A222686.P5135689549338904727

/-!
# A222687: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222687, there is no canonical definition to state claims against.
-/

/-! ## A222687.P3051448265342797369

`A222690(A046691(n+3))`
-/

namespace A222687.P3051448265342797369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A046691 (n + 3)).toNat

end

end A222687.P3051448265342797369

/-! ## A222687.P14681081455977273945

`A222690(A056115(n)+11)`
-/

namespace A222687.P14681081455977273945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A056115 n + 11).toNat

end

end A222687.P14681081455977273945

/-! ## A222687.P2255794673021589984

`A222690(eq[4, A193592(n)])`
-/

namespace A222687.P2255794673021589984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222687.P2255794673021589984

/-! ## A222687.P4534006239615178266

`A222690(Δ[A023545(n+1)])`
-/

namespace A222687.P4534006239615178266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (f1 (n + 1) - f1 n).toNat

end

end A222687.P4534006239615178266

/-! ## A222687.P8814659323852384589

`A222690(eq[6, A185782(n+1)])`
-/

namespace A222687.P8814659323852384589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222687.P8814659323852384589

/-!
# A222688: Number of nX6 0..2 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222688, there is no canonical definition to state claims against.
-/

/-! ## A222688.P18071823745164792110

`A222690(A052905(n+3))`
-/

namespace A222688.P18071823745164792110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A052905 (n + 3)).toNat

end

end A222688.P18071823745164792110

/-! ## A222688.P15944595166512630264

`A222690(eq[3, A219347(n)])`
-/

namespace A222688.P15944595166512630264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222688.P15944595166512630264

/-! ## A222688.P8095278738346790240

`A222690(eq[5, A193592(n)])`
-/

namespace A222688.P8095278738346790240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222688.P8095278738346790240

/-! ## A222688.P13019564712889041304

`A222690(eq[8, A185782(n+1)])`
-/

namespace A222688.P13019564712889041304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222688.P13019564712889041304

/-! ## A222688.P16213196421487889206

`A222690(eq[16, A057728(n+1)])`
-/

namespace A222688.P16213196421487889206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222688.P16213196421487889206

/-!
# A222689: Number of nX7 0..2 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222689, there is no canonical definition to state claims against.
-/

/-! ## A222689.P989219758388967936

`A222690(A055999(n+4))`
-/

namespace A222689.P989219758388967936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A055999 (n + 4)).toNat

end

end A222689.P989219758388967936

/-! ## A222689.P18375536696324131013

`A222690(eq[4, A219347(n)])`
-/

namespace A222689.P18375536696324131013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222689.P18375536696324131013

/-! ## A222689.P17651069322142760506

`A222690(eq[6, A193592(n)])`
-/

namespace A222689.P17651069322142760506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222689.P17651069322142760506

/-! ## A222689.P16035546696435851625

`A222690(eq[7, A200370(n+1)])`
-/

namespace A222689.P16035546696435851625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222689.P16035546696435851625

/-! ## A222689.P5357880725091944285

`A222690(eq[10, A185782(n+1)])`
-/

namespace A222689.P5357880725091944285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222689.P5357880725091944285

/-!
# A222690: T(n,k)=Number of nXk 0..2 arrays with exactly floor(nXk/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222690, there is no canonical definition to state claims against.
-/

/-! ## A222690.P11697800003496371217

`and(A176701(3*(n+1))%3-2, A222794(n+1))`
-/

namespace A222690.P11697800003496371217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A176701 (3 * (n + 1))) 3 - 2) (A222794 (n + 1))

end

end A222690.P11697800003496371217

/-! ## A222690.P16900429751695980007

`A222794(n+1)-A083893(A099902(n))`
-/

namespace A222690.P16900429751695980007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (n + 1) - A083893 (A099902 n).toNat

end

end A222690.P16900429751695980007

/-! ## A222690.P16839681777040487727

`and(A000124(A100071(n)), A222794(n+1))`
-/

namespace A222690.P16839681777040487727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000124 (A100071 n).toNat) (A222794 (n + 1))

end

end A222690.P16839681777040487727

/-! ## A222690.P4877290982778255772

`and(A001489(A287788(n)), A222794(n+1))`
-/

namespace A222690.P4877290982778255772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001489 (A287788 n).toNat) (A222794 (n + 1))

end

end A222690.P4877290982778255772

/-! ## A222690.P9128546105832553204

`and(A007306(A296272(n)), A222794(n+1))`
-/

namespace A222690.P9128546105832553204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007306 (A296272 n).toNat) (A222794 (n + 1))

end

end A222690.P9128546105832553204

/-!
# A222691: Number of 2Xn 0..2 arrays with exactly floor(2Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222691, there is no canonical definition to state claims against.
-/

/-! ## A222691.P1768256883649706332

`A222690(∑[n+1]+2)`
-/

namespace A222691.P1768256883649706332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222691.P1768256883649706332

/-! ## A222691.P8982711601206074058

`record[A222690(n+2)/A022171(n)]`
-/

namespace A222691.P8982711601206074058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222690 (n + 2) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222691.P8982711601206074058

/-! ## A222691.P6448398725191858634

`record[A222690(n+1)%A092392(n)]`
-/

namespace A222691.P6448398725191858634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222690 (n + 1)) (A092392 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222691.P6448398725191858634

/-! ## A222691.P2459032926817819429

`record[gcd(A014473(n), A222690(n+2))]`
-/

namespace A222691.P2459032926817819429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A222690 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222691.P2459032926817819429

/-! ## A222691.P2115082698316428618

`record[char[A152947(n+1)]*A222690(n+1)]`
-/

namespace A222691.P2115082698316428618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222691.P2115082698316428618

/-!
# A222692: Number of 3Xn 0..2 arrays with exactly floor(3Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222692, there is no canonical definition to state claims against.
-/

/-! ## A222692.P15219217672462886193

`A222690(∑[n+2]+4)`
-/

namespace A222692.P15219217672462886193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222692.P15219217672462886193

/-! ## A222692.P4485679963184182308

`lcm((-1)^n, A222690(A167614(n+1)))`
-/

namespace A222692.P4485679963184182308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A222690 (A167614 (n + 1)).toNat)

end

end A222692.P4485679963184182308

/-! ## A222692.P3519650636286308502

`record[char[A152947(n+1)]*A222690(n+2)]`
-/

namespace A222692.P3519650636286308502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222690 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222692.P3519650636286308502

/-! ## A222692.P15191606566241965306

`A222690(A167614(n+1))+A011741(n)`
-/

namespace A222692.P15191606566241965306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A167614 (n + 1)).toNat + A011741 n

end

end A222692.P15191606566241965306

/-! ## A222692.P11051069260361443537

`A222690(A167614(n+1))+A185044(n)`
-/

namespace A222692.P11051069260361443537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A167614 (n + 1)).toNat + A185044 n

end

end A222692.P11051069260361443537

/-!
# A222693: Number of 4Xn 0..2 arrays with exactly floor(4Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222693, there is no canonical definition to state claims against.
-/

/-! ## A222693.P4792736229549596534

`A222690(A141214(n)+7)`
-/

namespace A222693.P4792736229549596534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A141214 n + 7).toNat

end

end A222693.P4792736229549596534

/-! ## A222693.P5664367736718923207

`A222690(A052905(n)+9)`
-/

namespace A222693.P5664367736718923207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A052905 n + 9).toNat

end

end A222693.P5664367736718923207

/-! ## A222693.P9596313724297843912

`A222690(A055999(n)+10)`
-/

namespace A222693.P9596313724297843912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A055999 n + 10).toNat

end

end A222693.P9596313724297843912

/-! ## A222693.P14206288046637045712

`A222690(Δ[A008778(n)]+6)`
-/

namespace A222693.P14206288046637045712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (f1 (n + 1) - f1 n + 6).toNat

end

end A222693.P14206288046637045712

/-! ## A222693.P3101367583271332837

`A222690(A167614(n+2)+1)`
-/

namespace A222693.P3101367583271332837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A167614 (n + 2) + 1).toNat

end

end A222693.P3101367583271332837

/-!
# A222694: Number of 5Xn 0..2 arrays with exactly floor(5Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222694, there is no canonical definition to state claims against.
-/

/-! ## A222694.P9392395902060012928

`A222690(A167499(n+3))`
-/

namespace A222694.P9392395902060012928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A167499 (n + 3)).toNat

end

end A222694.P9392395902060012928

/-! ## A222694.P13181655552020839052

`A222690(A155212(n)+13)`
-/

namespace A222694.P13181655552020839052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A155212 n + 13).toNat

end

end A222694.P13181655552020839052

/-! ## A222694.P17187086849592545164

`A222690(A056000(n)+15)`
-/

namespace A222694.P17187086849592545164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A056000 n + 15).toNat

end

end A222694.P17187086849592545164

/-! ## A222694.P13479520515286414089

`A222690(A000124(n+4)+4)`
-/

namespace A222694.P13479520515286414089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A000124 (n + 4) + 4).toNat

end

end A222694.P13479520515286414089

/-! ## A222694.P7609169692079982779

`A222690(eq[6, A131818(n+1)])`
-/

namespace A222694.P7609169692079982779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222694.P7609169692079982779

/-!
# A222695: Number of 6Xn 0..2 arrays with exactly floor(6Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222695, there is no canonical definition to state claims against.
-/

/-! ## A222695.P2512080176429213549

`A222690(A056115(n)+21)`
-/

namespace A222695.P2512080176429213549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A056115 n + 21).toNat

end

end A222695.P2512080176429213549

/-! ## A222695.P16424736429907209138

`A222690(A167499(n+4)+1)`
-/

namespace A222695.P16424736429907209138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A167499 (n + 4) + 1).toNat

end

end A222695.P16424736429907209138

/-! ## A222695.P10124173540476157026

`A222690(eq[6, A130270(n+1)])`
-/

namespace A222695.P10124173540476157026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222695.P10124173540476157026

/-! ## A222695.P16403082285093534077

`A222690(eq[7, A131818(n+1)])`
-/

namespace A222695.P16403082285093534077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222695.P16403082285093534077

/-! ## A222695.P14552324114399769942

`A222690(Δ[A023545(n+1)]+10)`
-/

namespace A222695.P14552324114399769942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (f1 (n + 1) - f1 n + 10).toNat

end

end A222695.P14552324114399769942

/-!
# A222696: Number of 7Xn 0..2 arrays with exactly floor(7Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222696, there is no canonical definition to state claims against.
-/

/-! ## A222696.P10655888343809912173

`A222690(A056119(n)+28)`
-/

namespace A222696.P10655888343809912173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A056119 n + 28).toNat

end

end A222696.P10655888343809912173

/-! ## A222696.P8947624845697175378

`A222690(eq[11, A066657(n)])`
-/

namespace A222696.P8947624845697175378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222696.P8947624845697175378

/-! ## A222696.P7201721837339171448

`A222690(A000124(n+6)+6)`
-/

namespace A222696.P7201721837339171448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A000124 (n + 6) + 6).toNat

end

end A222696.P7201721837339171448

/-! ## A222696.P3227269455805479767

`A222690(A141214(n+3)+10)`
-/

namespace A222696.P3227269455805479767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A141214 (n + 3) + 10).toNat

end

end A222696.P3227269455805479767

/-! ## A222696.P9208530562229618190

`A222690(eq[8, A131818(n+1)])`
-/

namespace A222696.P9208530562229618190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222696.P9208530562229618190

/-!
# A222697: Number of n X n 0..1 arrays with no more than floor(n X n/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222697, there is no canonical definition to state claims against.
-/

/-! ## A222697.P17971409664264744302

`A222703(∑[4*n]+1)`
-/

namespace A222697.P17971409664264744302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222697.P17971409664264744302

/-! ## A222697.P10889126845185082302

`A222703(A001844(n))+char[9]`
-/

namespace A222697.P10889126845185082302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222697.P10889126845185082302

/-! ## A222697.P5656782013453384766

`A213652(n)*A222703(A001844(n))`
-/

namespace A222697.P5656782013453384766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213652 n * A222703 (A001844 n).toNat

end

end A222697.P5656782013453384766

/-! ## A222697.P16780352840555156573

`or(A105514(n), A222703(A001844(n)))`
-/

namespace A222697.P16780352840555156573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105514 n) (A222703 (A001844 n).toNat)

end

end A222697.P16780352840555156573

/-! ## A222697.P12354854554760500928

`A007318(∑[n])*A222703(A001844(n))`
-/

namespace A222697.P12354854554760500928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A222703 (A001844 n).toNat

end

end A222697.P12354854554760500928

/-!
# A222698: Number of nX3 0..1 arrays with no more than floor(nX3/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222698, there is no canonical definition to state claims against.
-/

/-! ## A222698.P1972899696204244292

`A222703(∑[n+2]+4)`
-/

namespace A222698.P1972899696204244292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222698.P1972899696204244292

/-! ## A222698.P12136110909112302597

`A222703(A167614(n+1))+char[18]`
-/

namespace A222698.P12136110909112302597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222698.P12136110909112302597

/-! ## A222698.P4726188890708479087

`or(char[1], A222703(A046691(n)+7))`
-/

namespace A222698.P4726188890708479087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222703 (A046691 n + 7).toNat)

end

end A222698.P4726188890708479087

/-! ## A222698.P6883521141330047265

`record[A010054(n)*A222703(n+3)]`
-/

namespace A222698.P6883521141330047265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222703 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222698.P6883521141330047265

/-! ## A222698.P15665452791082308002

`A326541(n)+A222703(A167614(n+1))`
-/

namespace A222698.P15665452791082308002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n + A222703 (A167614 (n + 1)).toNat

end

end A222698.P15665452791082308002

/-!
# A222699: Number of nX4 0..1 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222699, there is no canonical definition to state claims against.
-/

/-! ## A222699.P10874018925954672239

`A222703(∑[n+3]+7)`
-/

namespace A222699.P10874018925954672239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222699.P10874018925954672239

/-! ## A222699.P4307560005570785599

`A222703(A055999(n)+10)+char[16]`
-/

namespace A222699.P4307560005570785599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222699.P4307560005570785599

/-! ## A222699.P2153111185518879619

`lcm((-1)^n, A222703(A052905(n)+9))`
-/

namespace A222699.P2153111185518879619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A222703 (A052905 n + 9).toNat)

end

end A222699.P2153111185518879619

/-! ## A222699.P264069596402183364

`A007318(C(2, n))*A222703(A052905(n)+9)`
-/

namespace A222699.P264069596402183364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A222703 (A052905 n + 9).toNat

end

end A222699.P264069596402183364

/-! ## A222699.P348336340036681997

`A007318(A007318(2*n))*A222703(A055999(n)+10)`
-/

namespace A222699.P348336340036681997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (2 * n)).toNat * A222703 (A055999 n + 10).toNat

end

end A222699.P348336340036681997

