import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

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

/-! ## A222600.P237435931023847303

`fo[A220071(n+1)]+1`
-/

namespace A222600.P237435931023847303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A222600.P237435931023847303

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

/-!
# A222603: a(1)=1; for n>0, a(n+1) is the least practical number q>a(n) such that 2(a(n)+1)-q is practical.

The programs for A222603, there is no canonical definition to state claims against.
-/

/-! ## A222603.P213881524052832936

`A325781(lt[1, A215732(n+1)])`
-/

namespace A222603.P213881524052832936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222603.P213881524052832936

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

/-! ## A222603.P14678100139845998972

`A056530(n+1)-7%A060315(n+1)`
-/

namespace A222603.P14678100139845998972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056530 (n + 1) - Int.tmod 7 (A060315 (n + 1))

end

end A222603.P14678100139845998972

/-! ## A222603.P11961969373215325590

`filter[A113512(2*(n+1)), A264739(#)]`
-/

namespace A222603.P11961969373215325590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113512 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A264739 (f1 j).toNat = 1) n)

end

end A222603.P11961969373215325590

/-! ## A222603.P2140020070560861531

`filter[A113512(2*(n+1)), A322860(#)]`
-/

namespace A222603.P2140020070560861531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113512 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A222603.P2140020070560861531

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

/-! ## A222604.P9138635591607190060

`A223052(∑[n]+1)`
-/

namespace A222604.P9138635591607190060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222604.P9138635591607190060

/-!
# A222605: Number of nX2 0..3 arrays with exactly floor(nX2/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222605, there is no canonical definition to state claims against.
-/

/-! ## A222605.P3659958606673604977

`A222608(∑[1+n]+2)`
-/

namespace A222605.P3659958606673604977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222608 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222605.P3659958606673604977

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

/-!
# A222608: T(n,k)=Number of nXk 0..3 arrays with exactly floor(nXk/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222608, there is no canonical definition to state claims against.
-/

/-! ## A222608.P12306778797208558632

`A222747(A053250(n)^(n-1)+n)`
-/

namespace A222608.P12306778797208558632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (SequenceMachineLib.roundAway ((A053250 n : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ))).toNat

end

end A222608.P12306778797208558632

/-! ## A222608.P17310525447372363190

`A222832(n+1)+val(A222889(∑[n+3]+7), 15)`
-/

namespace A222608.P17310525447372363190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222832 (n + 1) + (SequenceMachineLib.valuation (A222889 (∑ j ∈ Finset.range (n + 1), f1 j + 7)).toNat 15 : ℤ)

end

end A222608.P17310525447372363190

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

/-! ## A222610.P11825947060075080860

`A376594(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A222610.P11825947060075080860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A376594 (a (n - 1)).toNat

end

end A222610.P11825947060075080860

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

/-! ## A222613.P15760505889953779389

`A222616(A374005(n+1))`
-/

namespace A222613.P15760505889953779389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A374005 (n + 1)).toNat

end

end A222613.P15760505889953779389

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

/-! ## A222614.P17678376048978736356

`A222616(A374007(n+1))`
-/

namespace A222614.P17678376048978736356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222616 (A374007 (n + 1)).toNat

end

end A222614.P17678376048978736356

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

/-! ## A222616.P17275645916956034159

`A260423(A222649(n+1))`
-/

namespace A222616.P17275645916956034159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260423 (A222649 (n + 1)).toNat

end

end A222616.P17275645916956034159

/-! ## A222616.P15198707271611729549

`A222649(n+1)-A178798(A222378(n+1))`
-/

namespace A222616.P15198707271611729549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (n + 1) - A178798 (A222378 (n + 1)).toNat

end

end A222616.P15198707271611729549

/-! ## A222616.P4686492653700056739

`A222649(n+1)`
-/

namespace A222616.P4686492653700056739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (n + 1)

end

end A222616.P4686492653700056739

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

/-! ## A222618.P8168595472532112576

`10*A392111(n+2)`
-/

namespace A222618.P8168595472532112576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A392111 (n + 2)

end

end A222618.P8168595472532112576

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

/-!
# A222621: a(n) = (2n-1)^(2n).

The programs for A222621, the canonical program `A222621.P4354624679629263207` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222621 has offset 1).

The definition of A222621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)^(2*(n+1))` (program `A222621.P4354624679629263207`, by `A222621.P4354624679629263207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A222621.P4354624679629263207

`(2*(n+1)-1)^(2*(n+1))`

The canonical program, it is in `Seq.B000.C035`.
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

/-! ## A222621.P11127648161590036488

`filter[n^(1+n), #%2]`
-/

namespace A222621.P11127648161590036488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 2 = 1) n)

end

end A222621.P11127648161590036488

namespace A222621

/-- `filter[n^(1+n), #%2]` -/
def P11127648161590036488.Spec : Prop :=
  ∀ n, (P11127648161590036488.a n : ℤ) = A222621 (n + 1)

end A222621

/-! ## A222621.P496129772073141652

`filter[n^(n+1), gcd(2, #)]`
-/

namespace A222621.P496129772073141652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.gcd 2 (f1 j) = 1) n)

end

end A222621.P496129772073141652

namespace A222621

/-- `filter[n^(n+1), gcd(2, #)]` -/
def P496129772073141652.Spec : Prop :=
  ∀ n, (P496129772073141652.a n : ℤ) = A222621 (n + 1)

end A222621

/-! ## A222621.P14516913049560561164

`filter[n^(n+1), and(1, #)]`
-/

namespace A222621.P14516913049560561164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.land 1 (f1 j) = 1) n)

end

end A222621.P14516913049560561164

namespace A222621

/-- `filter[n^(n+1), and(1, #)]` -/
def P14516913049560561164.Spec : Prop :=
  ∀ n, (P14516913049560561164.a n : ℤ) = A222621 (n + 1)

end A222621

/-!
# A222622: Inverse permutation to A113966.

The programs for A222622, there is no canonical definition to state claims against.
-/

/-! ## A222622.P16479323056233083792

`fo[A113966(n+1)-1]+1`
-/

namespace A222622.P16479323056233083792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113966 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A222622.P16479323056233083792

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

/-! ## A222627.P8880272478894687809

`A383049(∑[3+n])`
-/

namespace A222627.P8880272478894687809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222627.P8880272478894687809

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

/-! ## A222629.P14433837561388621438

`A183233(A002524(n))`
-/

namespace A222629.P14433837561388621438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (A002524 n).toNat

end

end A222629.P14433837561388621438

/-! ## A222629.P5046140186134947807

`A382460(A310069(n))`
-/

namespace A222629.P5046140186134947807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382460 (A310069 n).toNat

end

end A222629.P5046140186134947807

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

/-! ## A222631.P4524730466553408127

`A222635(A141214(n+1))`
-/

namespace A222631.P4524730466553408127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A141214 (n + 1)).toNat

end

end A222631.P4524730466553408127

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

/-! ## A222632.P2968098573814418131

`A222635(A374005(n+1))`
-/

namespace A222632.P2968098573814418131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A374005 (n + 1)).toNat

end

end A222632.P2968098573814418131

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

/-! ## A222634.P15672801646737102949

`A222635(A167487(n+5))`
-/

namespace A222634.P15672801646737102949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222635 (A167487 (n + 5)).toNat

end

end A222634.P15672801646737102949

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

/-!
# A222636: Poly-Cauchy numbers c_n^(-3).

The programs for A222636, there is no canonical definition to state claims against.
-/

/-! ## A222636.P12533611297594839240

`A383049(A046691(n+2))`
-/

namespace A222636.P12533611297594839240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (A046691 (n + 2)).toNat

end

end A222636.P12533611297594839240

/-!
# A222637: Squarefree part of the total number of arrangements of a set with n elements.

The programs for A222637, the canonical program `A222637.P13679431788888405413` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222637 has offset 0).

The definition of A222637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222637.P13679431788888405413

`A007913(A000522(n))`

The canonical program, it is in `Seq.B002.C005`.
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

/-! ## A222639.P2945790667770157049

`sqrt(A000522(n)/A222637(n))`
-/

namespace A222639.P2945790667770157049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A000522 n : ℚ) / (A222637 n : ℚ) : ℝ)

end

end A222639.P2945790667770157049

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

/-! ## A222641.P1783708107292579647

`A008908(1+n)-A087225(n+1)`
-/

namespace A222641.P1783708107292579647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (1 + n) - A087225 (n + 1)

end

end A222641.P1783708107292579647

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

/-! ## A222641.P7985722395974329279

`A006577(A025586(1+n))`
-/

namespace A222641.P7985722395974329279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A025586 (1 + n)).toNat

end

end A222641.P7985722395974329279

/-! ## A222641.P15683364727151633196

`A076228(A025586(n+1))`
-/

namespace A222641.P15683364727151633196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (A025586 (n + 1)).toNat

end

end A222641.P15683364727151633196

/-!
# A222642: Integer nearest to (Li(n) - Li(sqrt(n))), where Li(x) = integral(0..x, dt/log(t)).

The programs for A222642, the canonical program `A222642.P4256283084777248805` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222642 has offset 2).

The definition of A222642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222642.P4256283084777248805

`floor(A103128(∑[A319951(n+2)])/2)+1`

The canonical program, it is in `Seq.B001.C010`.
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

/-! ## A222643.P13754503433013383315

`A222649(∑[1+n]+2)`
-/

namespace A222643.P13754503433013383315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222643.P13754503433013383315

/-! ## A222643.P10315305894289579735

`A206909(A071738(n))`
-/

namespace A222643.P10315305894289579735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206909 (A071738 n).toNat

end

end A222643.P10315305894289579735

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

/-! ## A222644.P11454539740184615248

`record[A154990(n+1)*A222649(n+4)]`
-/

namespace A222644.P11454539740184615248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A222649 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222644.P11454539740184615248

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

/-! ## A222645.P5826291341946539144

`A222649(A141214(n+1))`
-/

namespace A222645.P5826291341946539144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A141214 (n + 1)).toNat

end

end A222645.P5826291341946539144

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

/-! ## A222650.P916063410996073316

`A223041(∑[n]+1)`
-/

namespace A222650.P916063410996073316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223041 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222650.P916063410996073316

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

/-!
# A222655: a(n) = 16*n^4 + 4.

The programs for A222655, the canonical program `A222655.P14478892799853313748` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222655 has offset 0).

The definition of A222655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n^4+4` (program `A222655.P14478892799853313748`, by `A222655.P14478892799853313748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A222655.P14478892799853313748

`16*n^4+4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A222655

/-- `16*n^4+4` -/
def P14478892799853313748.Spec : Prop :=
  ∀ n, (P14478892799853313748.a n : ℤ) = A222655 n

theorem P14478892799853313748.correct : P14478892799853313748.Spec := by
  intro n
  simp only [A222655]

end A222655

/-! ## A222655.P1702439042775956000

`ogf((4+200x^2+160x^3+20x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A222655.P1702439042775956000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 200, 160, 20] [1, -5, 10, -10, 5, -1] n

end

end A222655.P1702439042775956000

namespace A222655

/-- `ogf((4+200x^2+160x^3+20x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1702439042775956000.Spec : Prop :=
  ∀ n, P1702439042775956000.a n = A222655 n

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

/-! ## A222655.P7874163414207270716

`4*or(1, (2*n²)²)`
-/

namespace A222655.P7874163414207270716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 1 ((2 * n ^ 2) ^ 2)

end

end A222655.P7874163414207270716

namespace A222655

/-- `4*or(1, (2*n²)²)` -/
def P7874163414207270716.Spec : Prop :=
  ∀ n, (P7874163414207270716.a n : ℤ) = A222655 n

end A222655

/-! ## A222655.P16399376073677450716

`4*xor(1, (2*n²)²)`
-/

namespace A222655.P16399376073677450716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor 1 ((2 * n ^ 2) ^ 2)

end

end A222655.P16399376073677450716

namespace A222655

/-- `4*xor(1, (2*n²)²)` -/
def P16399376073677450716.Spec : Prop :=
  ∀ n, (P16399376073677450716.a n : ℤ) = A222655 n

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

/-! ## A222655.P11415416574704686346

`∑[a(n-1)+8]²+4` with `a(0)=0, a(1)=4`
-/

namespace A222655.P11415416574704686346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 4

end

end A222655.P11415416574704686346

namespace A222655

/-- `∑[a(n-1)+8]²+4` -/
def P11415416574704686346.Spec : Prop :=
  ∀ n, (P11415416574704686346.a n : ℤ) = A222655 n

end A222655

/-! ## A222655.P3926466920188360597

`gcd(4, a(n-1))+(2*n)²²` with `a(0)=4`
-/

namespace A222655.P3926466920188360597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.gcd 4 (a (n - 1)) + ((2 * n) ^ 2) ^ 2

end

end A222655.P3926466920188360597

namespace A222655

/-- `gcd(4, a(n-1))+(2*n)²²` -/
def P3926466920188360597.Spec : Prop :=
  ∀ n, (P3926466920188360597.a n : ℤ) = A222655 n

end A222655

/-! ## A222655.P15607930893273923723

`and(4, a(n-1))+(2*n)²²` with `a(0)=4`
-/

namespace A222655.P15607930893273923723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.land 4 (a (n - 1)) + ((2 * n) ^ 2) ^ 2

end

end A222655.P15607930893273923723

namespace A222655

/-- `and(4, a(n-1))+(2*n)²²` -/
def P15607930893273923723.Spec : Prop :=
  ∀ n, (P15607930893273923723.a n : ℤ) = A222655 n

end A222655

/-! ## A222655.P17413878264415575095

`4*(A141046(n)+1)`
-/

namespace A222655.P17413878264415575095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A141046 n + 1)

end

end A222655.P17413878264415575095

namespace A222655

/-- `4*(A141046(n)+1)` -/
def P17413878264415575095.Spec : Prop :=
  ∀ n, P17413878264415575095.a n = A222655 n

theorem P17413878264415575095.correct : P17413878264415575095.Spec := by
  intro n
  simp only [A222655, Nat.add_sub_cancel, A222655.P17413878264415575095.a, A222655.P14478892799853313748.a, A141046, A141046.P17031355750207900223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

theorem P16883157948438418686.correct : P16883157948438418686.Spec := by
  intro n
  simp only [A222655, Nat.add_sub_cancel, A222655.P16883157948438418686.a, A222655.P14478892799853313748.a, A057781, A057781.P5803759320674587886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A222655

/-! ## A222655.P16907683444298148118

`A002522(2*n+1)*A160457(2*n)`
-/

namespace A222655.P16907683444298148118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (2 * n + 1) * A160457 (2 * n)

end

end A222655.P16907683444298148118

namespace A222655

/-- `A002522(2*n+1)*A160457(2*n)` -/
def P16907683444298148118.Spec : Prop :=
  ∀ n, P16907683444298148118.a n = A222655 n

theorem P16907683444298148118.correct : P16907683444298148118.Spec := by
  intro n
  simp only [A222655, Nat.add_sub_cancel, A222655.P16907683444298148118.a, A222655.P14478892799853313748.a, A002522, A002522.P3778392011853271743.a, A160457, A160457.P13231799295759563819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A222655

/-! ## A222655.P8956863600802901419

`2*A108100(n²)`
-/

namespace A222655.P8956863600802901419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108100 (n ^ 2)

end

end A222655.P8956863600802901419

namespace A222655

/-- `2*A108100(n²)` -/
def P8956863600802901419.Spec : Prop :=
  ∀ n, P8956863600802901419.a n = A222655 n

theorem P8956863600802901419.correct : P8956863600802901419.Spec := by
  intro n
  simp only [A222655, Nat.add_sub_cancel, A222655.P8956863600802901419.a, A222655.P14478892799853313748.a, A108100, A108100.P3833022910287010970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A222655

/-! ## A222655.P1069922154579037232

`4*A053755(n²)`
-/

namespace A222655.P1069922154579037232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A053755 (n ^ 2)

end

end A222655.P1069922154579037232

namespace A222655

/-- `4*A053755(n²)` -/
def P1069922154579037232.Spec : Prop :=
  ∀ n, P1069922154579037232.a n = A222655 n

theorem P1069922154579037232.correct : P1069922154579037232.Spec := by
  intro n
  simp only [A222655, Nat.add_sub_cancel, A222655.P1069922154579037232.a, A222655.P14478892799853313748.a, A053755, A053755.P11748163540145338459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-!
# A222657: a(n) = 2 * floor( (2*n + 1) / 3) + 1.

The programs for A222657, the canonical program `A222657.P3887843505348966234` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222657 has offset 0).

The definition of A222657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*floor((2*n+1)/3)+1` (program `A222657.P3887843505348966234`, by `A222657.P3887843505348966234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

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

/-! ## A222657.P3887843505348966234

`2*floor((2*n+1)/3)+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A222657

/-- `2*floor((2*n+1)/3)+1` -/
def P3887843505348966234.Spec : Prop :=
  ∀ n, P3887843505348966234.a n = A222657 n

theorem P3887843505348966234.correct : P3887843505348966234.Spec := by
  intro n
  simp only [A222657]

end A222657

/-! ## A222657.P3196197633555519625

`(12*n+9+4*sqrt(3)*sin(2*n*π/3))/9`
-/

namespace A222657.P3196197633555519625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((12 * n + 9 : ℝ) + 4 * Real.sqrt (3 : ℝ) * Real.sin ((2 * n : ℝ) * Real.pi / 3)) / 9

end

end A222657.P3196197633555519625

namespace A222657

/-- `(12*n+9+4*sqrt(3)*sin(2*n*π/3))/9` -/
def P3196197633555519625.Spec : Prop :=
  ∀ n, P3196197633555519625.a n = (A222657 n : ℝ)

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

/-! ## A222657.P4035951551465819730

`fp[(lcm(2, n)+n)/4]`
-/

namespace A222657.P4035951551465819730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n + n : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A222657.P4035951551465819730

namespace A222657

/-- `fp[(lcm(2, n)+n)/4]` -/
def P4035951551465819730.Spec : Prop :=
  ∀ n, (P4035951551465819730.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P11650452845531213169

`a(n-3)+4` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A222657.P11650452845531213169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  a (n - 3) + 4

end

end A222657.P11650452845531213169

namespace A222657

/-- `a(n-3)+4` -/
def P11650452845531213169.Spec : Prop :=
  ∀ n, (P11650452845531213169.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P11268285456727560750

`∑[∑[n+2]%3]-1`
-/

namespace A222657.P11268285456727560750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A222657.P11268285456727560750

namespace A222657

/-- `∑[∑[n+2]%3]-1` -/
def P11268285456727560750.Spec : Prop :=
  ∀ n, P11268285456727560750.a n = A222657 n

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

/-! ## A222657.P13608617579371369332

`fp[3*or(1, n-1)/4]`
-/

namespace A222657.P13608617579371369332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Int.lor 1 ((n : ℤ) - 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A222657.P13608617579371369332

namespace A222657

/-- `fp[3*or(1, n-1)/4]` -/
def P13608617579371369332.Spec : Prop :=
  ∀ n, (P13608617579371369332.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P3852730209688473460

`fp[3*xor(1, n-1)/4]`
-/

namespace A222657.P3852730209688473460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Int.xor 1 ((n : ℤ) - 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A222657.P3852730209688473460

namespace A222657

/-- `fp[3*xor(1, n-1)/4]` -/
def P3852730209688473460.Spec : Prop :=
  ∀ n, (P3852730209688473460.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P7713682906683617235

`fp[or(1, n-1)-n/4]`
-/

namespace A222657.P7713682906683617235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 ((n : ℤ) - 1) : ℚ) - (n : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A222657.P7713682906683617235

namespace A222657

/-- `fp[or(1, n-1)-n/4]` -/
def P7713682906683617235.Spec : Prop :=
  ∀ n, (P7713682906683617235.a n : ℤ) = A222657 n

end A222657

/-! ## A222657.P7061755682240504368

`fp[xor(1, n-1)-n/4]`
-/

namespace A222657.P7061755682240504368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 ((n : ℤ) - 1) : ℚ) - (n : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A222657.P7061755682240504368

namespace A222657

/-- `fp[xor(1, n-1)-n/4]` -/
def P7061755682240504368.Spec : Prop :=
  ∀ n, (P7061755682240504368.a n : ℤ) = A222657 n

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

/-! ## A222659.P3902371676204166296

`A116694(n+1)-A327695(A290824(n))`
-/

namespace A222659.P3902371676204166296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (n + 1) - A327695 (A290824 n).toNat

end

end A222659.P3902371676204166296

/-!
# A222660: Number of nX2 0..3 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222660, there is no canonical definition to state claims against.
-/

/-! ## A222660.P854934471402498129

`A222666(∑[1+n]+2)`
-/

namespace A222660.P854934471402498129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222660.P854934471402498129

/-! ## A222660.P11537138501632111639

`A187209(A128720(n))`
-/

namespace A222660.P11537138501632111639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187209 (A128720 n).toNat

end

end A222660.P11537138501632111639

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

/-!
# A222664: Number of nX6 0..3 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222664, there is no canonical definition to state claims against.
-/

/-! ## A222664.P5434007677543048476

`A222666(A166136(n+4))`
-/

namespace A222664.P5434007677543048476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A166136 (n + 4)).toNat

end

end A222664.P5434007677543048476

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

/-! ## A222665.P6566464875776190679

`A222666(A374008(n+1))`
-/

namespace A222665.P6566464875776190679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A374008 (n + 1)).toNat

end

end A222665.P6566464875776190679

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

/-! ## A222666.P5014334124776448020

`A065039(A222673(n+1))`
-/

namespace A222666.P5014334124776448020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (A222673 (n + 1)).toNat

end

end A222666.P5014334124776448020

/-! ## A222666.P7605384941824757086

`A222673(A043320(n+1))`
-/

namespace A222666.P7605384941824757086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A043320 (n + 1)).toNat

end

end A222666.P7605384941824757086

/-!
# A222667: Number of nX2 0..2 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222667, there is no canonical definition to state claims against.
-/

/-! ## A222667.P11128486314245691186

`A222673(2+∑[1+n])`
-/

namespace A222667.P11128486314245691186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222667.P11128486314245691186

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

/-!
# A222669: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222669, there is no canonical definition to state claims against.
-/

/-! ## A222669.P8414587785476157769

`A222673(eq[3, col(n)]+1)`
-/

namespace A222669.P8414587785476157769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A222669.P8414587785476157769

/-!
# A222670: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222670, there is no canonical definition to state claims against.
-/

/-! ## A222670.P89696967870577643

`A222673(eq[4, col(n)]+1)`
-/

namespace A222670.P89696967870577643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A222670.P89696967870577643

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

/-!
# A222681: Number of 3Xn 0..3 arrays with no more than floor(3Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222681, there is no canonical definition to state claims against.
-/

/-! ## A222681.P886654282339049978

`A222679(∑[2+n]+4)`
-/

namespace A222681.P886654282339049978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222681.P886654282339049978

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

/-!
# A222684: Number of nX2 0..2 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222684, there is no canonical definition to state claims against.
-/

/-! ## A222684.P17248387323971984763

`A222395(2*(1+n))`
-/

namespace A222684.P17248387323971984763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222395 (2 * (1 + n))

end

end A222684.P17248387323971984763

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

/-! ## A222684.P15560029535442031686

`record[A222395(A000265(n+1)+1)]`
-/

namespace A222684.P15560029535442031686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222395 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222684.P15560029535442031686

/-! ## A222684.P13710566010357931546

`record[lcm(A188510(n), A222395(n+1))]`
-/

namespace A222684.P13710566010357931546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A188510 n) (A222395 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222684.P13710566010357931546

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

/-!
# A222696: Number of 7Xn 0..2 arrays with exactly floor(7Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222696, there is no canonical definition to state claims against.
-/

/-! ## A222696.P11181762805546197508

`A222690(A167487(n+5))`
-/

namespace A222696.P11181762805546197508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (A167487 (n + 5)).toNat

end

end A222696.P11181762805546197508

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

