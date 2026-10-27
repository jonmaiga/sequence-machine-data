import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A392600: a(n) = A327860(n) mod 360, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A392600, there is no canonical definition to state claims against.
-/

/-! ## A392600.P6052840119253966993

`A327860(n)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392600.P6052840119253966993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327860 n) 360

end

end A392600.P6052840119253966993

/-! ## A392600.P14656741660308686849

`A003415(A276086(n))%360`
-/

namespace A392600.P14656741660308686849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A276086 n).toNat) 360

end

end A392600.P14656741660308686849

/-!
# A392602: Numbers k such that A322582(k) <= A276086(k) <= A348507(k).

The programs for A392602, there is no canonical definition to state claims against.
-/

/-! ## A392602.P18140440093954366634

`record[and(A014574(2*n+5), A128420(2*(n+2)))]`
-/

namespace A392602.P18140440093954366634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014574 (2 * n + 5)) (A128420 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392602.P18140440093954366634

/-!
# A392603: Numbers k such that A380459(A276086(k)) has no divisors of the form p^p, for any prime p.

The programs for A392603, there is no canonical definition to state claims against.
-/

/-! ## A392603.P1781215686206376498

`A276156(A392604(n+1))`
-/

namespace A392603.P1781215686206376498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (A392604 (n + 1)).toNat

end

end A392603.P1781215686206376498

/-! ## A392603.P4236162661742159644

`eq[A069290(n+1), A324895(n)]`
-/

namespace A392603.P4236162661742159644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392603.P4236162661742159644

/-! ## A392603.P15440410026753128230

`eq[A293442(n+1), A342022(n)]`
-/

namespace A392603.P15440410026753128230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392603.P15440410026753128230

/-! ## A392603.P802931484004077575

`eq[A324895(n), A340786(n+1)]`
-/

namespace A392603.P802931484004077575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340786 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392603.P802931484004077575

/-! ## A392603.P5235563755994745979

`eq[A317836(n), A358235(n+1)]`
-/

namespace A392603.P5235563755994745979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392603.P5235563755994745979

/-!
# A392604: Numbers k such that A380459(A019565(k)) has no divisors of the form p^p, for any prime p.

The programs for A392604, there is no canonical definition to state claims against.
-/

/-! ## A392604.P15952437218687268127

`eq[A073575(n+1), A274473(n)]`
-/

namespace A392604.P15952437218687268127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274473 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392604.P15952437218687268127

/-! ## A392604.P16472173208606665503

`eq[A059841(A124774(n)), A124757(n)]`
-/

namespace A392604.P16472173208606665503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A124774 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392604.P16472173208606665503

/-! ## A392604.P7599236770456940925

`eq[A086582(n), A100063(n)]`
-/

namespace A392604.P7599236770456940925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392604.P7599236770456940925

/-! ## A392604.P13705881487300271069

`eq[A086582(n), A140191(n)]`
-/

namespace A392604.P13705881487300271069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392604.P13705881487300271069

/-! ## A392604.P4942641745995020224

`eq[A137457(n), A178677(n)]`
-/

namespace A392604.P4942641745995020224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392604.P4942641745995020224

/-!
# A392605: Numbers k such that A327860(k) <= k, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A392605, there is no canonical definition to state claims against.
-/

/-! ## A392605.P16767358349964356911

`lt[A327860(n), n+1]`
-/

namespace A392605.P16767358349964356911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392605.P16767358349964356911

/-! ## A392605.P11942273638687541516

`lt[A327860(n)², A027693(n)]`
-/

namespace A392605.P11942273638687541516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P11942273638687541516

/-! ## A392605.P15543413134122526286

`lt[A327860(n)-A054977(n), n]`
-/

namespace A392605.P15543413134122526286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A054977 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392605.P15543413134122526286

/-! ## A392605.P11608597182285865032

`lt[A368703(A276150(n)), A008619(2*(n+2))]`
-/

namespace A392605.P11608597182285865032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368703 (A276150 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P11608597182285865032

/-! ## A392605.P8326801009448610984

`lt[A000203(A276086(n)), A073659(n+3)]`
-/

namespace A392605.P8326801009448610984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A276086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P8326801009448610984

/-!
# A392607: Squarefree numbers k such that A322582(k) <= A276085(k) <= A348507(k).

The programs for A392607, there is no canonical definition to state claims against.
-/

/-! ## A392607.P1044656510191965692

`∩[A002038(n+1), A392601(n+1)]`
-/

namespace A392607.P1044656510191965692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392607.P1044656510191965692

/-! ## A392607.P14357612640370577876

`∩[A087008(n+1), A392601(n+1)]`
-/

namespace A392607.P14357612640370577876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392607.P14357612640370577876

/-! ## A392607.P9399635548432793638

`filter[A392601(n+1), A008966(#)]`
-/

namespace A392607.P9399635548432793638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A392607.P9399635548432793638

/-! ## A392607.P15553883298842471286

`∩[A087007(n+1), A392601(n+1)]`
-/

namespace A392607.P15553883298842471286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392607.P15553883298842471286

/-!
# A392608: Number of nonzero digits in the primorial base representation of n (A049345) such that their corresponding radix prime divides n.

The programs for A392608, there is no canonical definition to state claims against.
-/

/-! ## A392608.P7410428666246538221

`A001221(A324198(n))`
-/

namespace A392608.P7410428666246538221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324198 n).toNat

end

end A392608.P7410428666246538221

/-! ## A392608.P9128159970566578625

`A267263(n)-A392610(n)`
-/

namespace A392608.P9128159970566578625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A392610 n

end

end A392608.P9128159970566578625

/-! ## A392608.P3990655214886153440

`A001221(gcd(n, A276086(n)))`
-/

namespace A392608.P3990655214886153440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (n : ℤ) (A276086 n))

end

end A392608.P3990655214886153440

/-! ## A392608.P12323811585988656660

`∑{e}[A324198(n), A007732(#)]`
-/

namespace A392608.P12323811585988656660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007732 (Nat.factorization (f1 n).natAbs p)

end

end A392608.P12323811585988656660

/-! ## A392608.P8232794992937862646

`∑{e}[A324198(n), A039754(#)]`
-/

namespace A392608.P8232794992937862646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A039754 (Nat.factorization (f1 n).natAbs p)

end

end A392608.P8232794992937862646

/-! ## A392608.P12262800854889015326

`A064547(A324198(n)²)`
-/

namespace A392608.P12262800854889015326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A324198 n ^ 2).toNat

end

end A392608.P12262800854889015326

/-! ## A392608.P14699547815062397885

`A001222(A000005(A324198(n)²))`
-/

namespace A392608.P14699547815062397885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (A324198 n ^ 2).toNat).toNat

end

end A392608.P14699547815062397885

/-! ## A392608.P5823165241149751633

`A001221(A276086(n))-A392610(n)`
-/

namespace A392608.P5823165241149751633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276086 n).toNat - A392610 n

end

end A392608.P5823165241149751633

/-!
# A392609: Number of prime factors of n that do not divide A276086(n), where A276086 is the primorial base exp-function.

The programs for A392609, there is no canonical definition to state claims against.
-/

/-! ## A392609.P5703285042212479298

`A001221(n+1)-A392608(n+1)`
-/

namespace A392609.P5703285042212479298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A392608 (n + 1)

end

end A392609.P5703285042212479298

/-! ## A392609.P2259278581626998027

`A001221(n+1)-A001221(A324198(n+1))`
-/

namespace A392609.P2259278581626998027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A324198 (n + 1)).toNat

end

end A392609.P2259278581626998027

/-! ## A392609.P285171903659054604

`A341675(A360138(3*n+1)+A002620(n))`
-/

namespace A392609.P285171903659054604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (A360138 (3 * n + 1) + A002620 n).toNat

end

end A392609.P285171903659054604

/-! ## A392609.P15075875692947238371

`A244595(A335479(3*n+1))%A319447(n+3)`
-/

namespace A392609.P15075875692947238371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244595 (A335479 (3 * n + 1)).toNat) (A319447 (n + 3))

end

end A392609.P15075875692947238371

/-! ## A392609.P584663991878151014

`A196564(3*n)+A000007(A029863(n))`
-/

namespace A392609.P584663991878151014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (3 * n) + A000007 (A029863 n).toNat

end

end A392609.P584663991878151014

/-!
# A392610: Number of nonzero digits in the primorial base representation of n (A049345) such that their corresponding radix prime does not divide n.

The programs for A392610, there is no canonical definition to state claims against.
-/

/-! ## A392610.P420670172486878094

`A267263(n)-A392608(n)`
-/

namespace A392610.P420670172486878094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A392608 n

end

end A392610.P420670172486878094

/-! ## A392610.P13990610290945605533

`A001221(A276086(n))-A392608(n)`
-/

namespace A392610.P13990610290945605533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276086 n).toNat - A392608 n

end

end A392610.P13990610290945605533

/-! ## A392610.P3936606729733040918

`A001221(A276086(A351250(n))²)`
-/

namespace A392610.P3936606729733040918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276086 (A351250 n).toNat ^ 2).toNat

end

end A392610.P3936606729733040918

/-! ## A392610.P13122147367190134170

`A064547(xor(A001045(n), A001316(n)))`
-/

namespace A392610.P13122147367190134170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (Int.xor (A001045 n) (A001316 n)).toNat

end

end A392610.P13122147367190134170

/-! ## A392610.P16989288338888205924

`A334028(A008459(n))*A373957(n+1)`
-/

namespace A392610.P16989288338888205924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A008459 n).toNat * A373957 (n + 1)

end

end A392610.P16989288338888205924

/-!
# A392612: Numbers k such that all prime factors of A276086(k) divide k, except the least one of them, where A276086 is the primorial base exp-function.

The programs for A392612, there is no canonical definition to state claims against.
-/

/-! ## A392612.P10434685269929922003

`lt[A392610(n), 2]`
-/

namespace A392612.P10434685269929922003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392612.P10434685269929922003

/-! ## A392612.P10941020139287853907

`eq[A267084(n+1), A392610(n)]`
-/

namespace A392612.P10941020139287853907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392612.P10941020139287853907

/-! ## A392612.P15704788063489959547

`eq[1, A392610(A028310(n))]`
-/

namespace A392612.P15704788063489959547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392612.P15704788063489959547

/-! ## A392612.P14716247383399783602

`eq[A057427(n), A392610(n)]`
-/

namespace A392612.P14716247383399783602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392612.P14716247383399783602

/-! ## A392612.P14933552473035833271

`eq[A276398(n), A392610(n)]`
-/

namespace A392612.P14933552473035833271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276398 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392612.P14933552473035833271

/-!
# A392613: Numbers k such that A392858(k) divides k.

The programs for A392613, there is no canonical definition to state claims against.
-/

/-! ## A392613.P14345490156680756852

`eq[A324198(n), A392858(n)]`
-/

namespace A392613.P14345490156680756852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392613.P14345490156680756852

/-! ## A392613.P14957408786720966356

`eq[A276093(n), A351254(n)]`
-/

namespace A392613.P14957408786720966356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392613.P14957408786720966356

/-! ## A392613.P14038783262347751296

`eq[A276094(n), A351253(n)]`
-/

namespace A392613.P14038783262347751296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392613.P14038783262347751296

/-! ## A392613.P14056553271468418176

`eq[A373032(n+1), A392610(n)]`
-/

namespace A392613.P14056553271468418176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392613.P14056553271468418176

/-! ## A392613.P12200008414237208423

`eq[1, A345950(A351251(n))]`
-/

namespace A392613.P12200008414237208423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345950 (A351251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392613.P12200008414237208423

/-!
# A392614: The position of the first occurrence of n in A392610.

The programs for A392614, there is no canonical definition to state claims against.
-/

/-! ## A392614.P4517644654218838719

`A109276(A074935(n+1))%A109299(n+1)`
-/

namespace A392614.P4517644654218838719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109276 (A074935 (n + 1)).toNat) (A109299 (n + 1))

end

end A392614.P4517644654218838719

/-! ## A392614.P12079330503232856884

`A210478(A390026(3*n+5))%A081294(n)`
-/

namespace A392614.P12079330503232856884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210478 (A390026 (3 * n + 5)).toNat) (A081294 n)

end

end A392614.P12079330503232856884

/-!
# A392617: Main diagonal of A255741.

The programs for A392617, there is no canonical definition to state claims against.
-/

/-! ## A392617.P863152077423671536

`A255741((n+1)²+n²)`
-/

namespace A392617.P863152077423671536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255741 ((n + 1) ^ 2 + n ^ 2)

end

end A392617.P863152077423671536

/-! ## A392617.P17185338708271109555

`A131319(A056184(n))`
-/

namespace A392617.P17185338708271109555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131319 (A056184 n).toNat

end

end A392617.P17185338708271109555

/-! ## A392617.P484431023961633936

`A131319(A032158(n+1))`
-/

namespace A392617.P484431023961633936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131319 (A032158 (n + 1)).toNat

end

end A392617.P484431023961633936

/-!
# A392619: a(n) = denominator((2^n*(n!)^2/(1+2*n)!)^2).

The programs for A392619, there is no canonical definition to state claims against.
-/

/-! ## A392619.P13139774146232590013

`((2*n+1)*gcd(C(2*n, n), a(n-1)))²` with `a(0)=1`
-/

namespace A392619.P13139774146232590013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1) * Nat.gcd (Nat.choose (2 * n) n) (a (n - 1))) ^ 2

end

end A392619.P13139774146232590013

/-! ## A392619.P7594679139986342288

`A001803(n)²`
-/

namespace A392619.P7594679139986342288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n ^ 2

end

end A392619.P7594679139986342288

/-! ## A392619.P5799430015603035248

`A131440(∑[n])²`
-/

namespace A392619.P5799430015603035248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131440 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A392619.P5799430015603035248

/-! ## A392619.P5772771483336275910

`A144815(∑[n])²`
-/

namespace A392619.P5772771483336275910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144815 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A392619.P5772771483336275910

/-! ## A392619.P17716504625437601142

`record[A163590(n)²]`
-/

namespace A392619.P17716504625437601142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392619.P17716504625437601142

/-! ## A392619.P14099594677401498751

`A086116(Δ[n²])²`
-/

namespace A392619.P14099594677401498751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086116 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A392619.P14099594677401498751

/-! ## A392619.P2709858301538785026

`A163590(Δ[n²])²`
-/

namespace A392619.P2709858301538785026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A392619.P2709858301538785026

/-! ## A392619.P5889560245090707139

`A380909(Δ[n²])²`
-/

namespace A392619.P5889560245090707139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380909 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A392619.P5889560245090707139

/-! ## A392619.P16457311701368996482

`A356205(∑[n+3])²`
-/

namespace A392619.P16457311701368996482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356205 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A392619.P16457311701368996482

/-! ## A392619.P10644793983897231459

`A004731(2*(n+1))²`
-/

namespace A392619.P10644793983897231459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 * (n + 1)) ^ 2

end

end A392619.P10644793983897231459

/-!
# A392620: Number of maximal independent vertex sets in the n-necklace graph.

The programs for A392620, the canonical program `A392620.P12808742823013400187` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392620 has offset 1).

The definition of A392620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392620.P12808742823013400187

`4*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=4, a(1)=10, a(2)=34`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392620

/-- `4*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P12808742823013400187.Spec : Prop :=
  ∀ n, P12808742823013400187.a n = A392620 (n + 1)

theorem P12808742823013400187.correct : P12808742823013400187.Spec := by
  intro n
  simp only [A392620, Nat.add_sub_cancel]

end A392620

/-! ## A392620.P4373130211704979801

`ogf((4-6x+6x^2)/(1-4x+3x^2-2x^3))`
-/

namespace A392620.P4373130211704979801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, 6] [1, -4, 3, -2] n

end

end A392620.P4373130211704979801

namespace A392620

/-- `ogf((4-6x+6x^2)/(1-4x+3x^2-2x^3))` -/
def P4373130211704979801.Spec : Prop :=
  ∀ n, P4373130211704979801.a n = A392620 (n + 1)

end A392620

/-!
# A392621: Product of distinct integer roots r such that A001597(n) = r^m for some m > 1.

The programs for A392621, there is no canonical definition to state claims against.
-/

/-! ## A392621.P3741382309886021516

`A175069(∑[A076412(n)])`
-/

namespace A392621.P3741382309886021516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A392621.P3741382309886021516

/-! ## A392621.P6465778412907622224

`A175069(A001597(n+1))`
-/

namespace A392621.P6465778412907622224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 (A001597 (n + 1)).toNat

end

end A392621.P6465778412907622224

/-!
# A392622: Lexicographically least increasing sequence of positive integers so that no term is the sum of two consecutive terms, or except for the first term a partial sum of the sequence.

The programs for A392622, there is no canonical definition to state claims against.
-/

/-! ## A392622.P5355122245290482939

`lt[A247063(A347731(3*(n+1))), A248416(n+3)]`
-/

namespace A392622.P5355122245290482939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247063 (A347731 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248416 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392622.P5355122245290482939

/-! ## A392622.P6493818747975795511

`lt[A036585(n+1)-1, A005679(A030097(3*(n+1)))]`
-/

namespace A392622.P6493818747975795511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036585 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (A030097 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392622.P6493818747975795511

/-! ## A392622.P5706902464387913194

`lt[A005679(n+1)%3, A005679(A030097(3*(n+1)))]`
-/

namespace A392622.P5706902464387913194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005679 (n + 1)) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (A030097 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392622.P5706902464387913194

/-!
# A392628: The number of infinitary divisors of n that are numbers whose number of divisors is a power of 2.

The programs for A392628, the canonical program `A392628.P6323033129836470467` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392628 has offset 1).

The definition of A392628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392628.P6323033129836470467

`∏{e}[n+1, val(#+1, 2)+1]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392628

/-- `∏{e}[n+1, val(#+1, 2)+1]` -/
def P6323033129836470467.Spec : Prop :=
  ∀ n, (P6323033129836470467.a n : ℤ) = A392628 (n + 1)

theorem P6323033129836470467.correct : P6323033129836470467.Spec := by
  intro n
  simp only [A392628, Nat.add_sub_cancel]

end A392628

/-! ## A392628.P9686662658609053844

`∏{e}[n+1, A007814(#+1)+1]`
-/

namespace A392628.P9686662658609053844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A007814 (Nat.factorization (f1 n) p + 1) + 1)

end

end A392628.P9686662658609053844

namespace A392628

/-- `∏{e}[n+1, A007814(#+1)+1]` -/
def P9686662658609053844.Spec : Prop :=
  ∀ n, P9686662658609053844.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P11335710925220806102

`∏{e}[(n+1)*∏{p}[n+1, #], A001511(#)]`
-/

namespace A392628.P11335710925220806102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001511 (Nat.factorization (f1 n) p)

end

end A392628.P11335710925220806102

namespace A392628

/-- `∏{e}[(n+1)*∏{p}[n+1, #], A001511(#)]` -/
def P11335710925220806102.Spec : Prop :=
  ∀ n, P11335710925220806102.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P9567635326971937468

`∏{e}[A064549(n+1), A001511(#)]`
-/

namespace A392628.P9567635326971937468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001511 (Nat.factorization (f1 n).natAbs p)

end

end A392628.P9567635326971937468

namespace A392628

/-- `∏{e}[A064549(n+1), A001511(#)]` -/
def P9567635326971937468.Spec : Prop :=
  ∀ n, P9567635326971937468.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P15734090800153713676

`∏{e}[(n+1)², val(#+2, 2)]`
-/

namespace A392628.P15734090800153713676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p + 2) 2

end

end A392628.P15734090800153713676

namespace A392628

/-- `∏{e}[(n+1)², val(#+2, 2)]` -/
def P15734090800153713676.Spec : Prop :=
  ∀ n, (P15734090800153713676.a n : ℤ) = A392628 (n + 1)

end A392628

/-! ## A392628.P1119111673583535219

`A392447(A011262(n+1))`
-/

namespace A392628.P1119111673583535219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 (A011262 (n + 1)).toNat

end

end A392628.P1119111673583535219

namespace A392628

/-- `A392447(A011262(n+1))` -/
def P1119111673583535219.Spec : Prop :=
  ∀ n, P1119111673583535219.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P8921524695732555007

`A392447(A064549(n+1))`
-/

namespace A392628.P8921524695732555007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 (A064549 (n + 1)).toNat

end

end A392628.P8921524695732555007

namespace A392628

/-- `A392447(A064549(n+1))` -/
def P8921524695732555007.Spec : Prop :=
  ∀ n, P8921524695732555007.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P16119196519467980508

`A392447((n+1)*A007947(n+1))`
-/

namespace A392628.P16119196519467980508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A392628.P16119196519467980508

namespace A392628

/-- `A392447((n+1)*A007947(n+1))` -/
def P16119196519467980508.Spec : Prop :=
  ∀ n, P16119196519467980508.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P17374884853700570873

`∏{e}[A000578(n+1), A353932(#)]`
-/

namespace A392628.P17374884853700570873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A353932 (Nat.factorization (f1 n).natAbs p)

end

end A392628.P17374884853700570873

namespace A392628

/-- `∏{e}[A000578(n+1), A353932(#)]` -/
def P17374884853700570873.Spec : Prop :=
  ∀ n, P17374884853700570873.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P3155085543942408858

`A392447(A227324(n+1))`
-/

namespace A392628.P3155085543942408858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 (A227324 (n + 1)).toNat

end

end A392628.P3155085543942408858

namespace A392628

/-- `A392447(A227324(n+1))` -/
def P3155085543942408858.Spec : Prop :=
  ∀ n, P3155085543942408858.a n = A392628 (n + 1)

end A392628

/-!
# A392629: The number of coreful infinitary divisors of n that are numbers whose number of divisors is a power of 2.

The programs for A392629, the canonical program `A392629.P8999806984046215470` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392629 has offset 1).

The definition of A392629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392629.P8999806984046215470

`∏{e}[n+1, val(#+1, 2)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392629

/-- `∏{e}[n+1, val(#+1, 2)]` -/
def P8999806984046215470.Spec : Prop :=
  ∀ n, (P8999806984046215470.a n : ℤ) = A392629 (n + 1)

theorem P8999806984046215470.correct : P8999806984046215470.Spec := by
  intro n
  simp only [A392629, Nat.add_sub_cancel]

end A392629

/-! ## A392629.P2534123001703343002

`∏{e}[n+1, A007814(#+1)]`
-/

namespace A392629.P2534123001703343002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007814 (Nat.factorization (f1 n) p + 1)

end

end A392629.P2534123001703343002

namespace A392629

/-- `∏{e}[n+1, A007814(#+1)]` -/
def P2534123001703343002.Spec : Prop :=
  ∀ n, P2534123001703343002.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P11589026545566329793

`A352515(∏{d}[∏{e}[n+1, #], #])`
-/

namespace A392629.P11589026545566329793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A392629.P11589026545566329793

namespace A392629

/-- `A352515(∏{d}[∏{e}[n+1, #], #])` -/
def P11589026545566329793.Spec : Prop :=
  ∀ n, P11589026545566329793.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P8892945157031754299

`A096271(A112622(n+1))`
-/

namespace A392629.P8892945157031754299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A112622 (n + 1)).toNat

end

end A392629.P8892945157031754299

namespace A392629

/-- `A096271(A112622(n+1))` -/
def P8892945157031754299.Spec : Prop :=
  ∀ n, P8892945157031754299.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P15844616776032081615

`A368980(A365296((n+1)*A392448(n+1)))`
-/

namespace A392629.P15844616776032081615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368980 (A365296 ((n + 1 : ℤ) * A392448 (n + 1)).toNat).toNat

end

end A392629.P15844616776032081615

namespace A392629

/-- `A368980(A365296((n+1)*A392448(n+1)))` -/
def P15844616776032081615.Spec : Prop :=
  ∀ n, P15844616776032081615.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P1038455913174500453

`A139071(A360911(n+1))%4`
-/

namespace A392629.P1038455913174500453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139071 (A360911 (n + 1)).toNat) 4

end

end A392629.P1038455913174500453

namespace A392629

/-- `A139071(A360911(n+1))%4` -/
def P1038455913174500453.Spec : Prop :=
  ∀ n, P1038455913174500453.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P16200640891048078521

`A197119(A037291(n+1))`
-/

namespace A392629.P16200640891048078521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197119 (A037291 (n + 1)).toNat

end

end A392629.P16200640891048078521

namespace A392629

/-- `A197119(A037291(n+1))` -/
def P16200640891048078521.Spec : Prop :=
  ∀ n, P16200640891048078521.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P10364262359102148817

`and(A050361(n+1), A127707(n+1))`
-/

namespace A392629.P10364262359102148817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050361 (n + 1)) (A127707 (n + 1))

end

end A392629.P10364262359102148817

namespace A392629

/-- `and(A050361(n+1), A127707(n+1))` -/
def P10364262359102148817.Spec : Prop :=
  ∀ n, P10364262359102148817.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P14491394001001827525

`A007814(A067132(n+1)*A077217(n+1))`
-/

namespace A392629.P14491394001001827525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A067132 (n + 1) * A077217 (n + 1)).toNat

end

end A392629.P14491394001001827525

namespace A392629

/-- `A007814(A067132(n+1)*A077217(n+1))` -/
def P14491394001001827525.Spec : Prop :=
  ∀ n, P14491394001001827525.a n = A392629 (n + 1)

end A392629

/-!
# A392630: The number of exponential divisors of n that are numbers whose number of divisors is a power of 2.

The programs for A392630, the canonical program `A392630.P18032150745144184290` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392630 has offset 1).

The definition of A392630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392630.P18262335692833415655

`∏{e}[n+1, A154402(#)]`
-/

namespace A392630.P18262335692833415655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A154402 (Nat.factorization (f1 n) p)

end

end A392630.P18262335692833415655

namespace A392630

/-- `∏{e}[n+1, A154402(#)]` -/
def P18262335692833415655.Spec : Prop :=
  ∀ n, P18262335692833415655.a n = A392630 (n + 1)

end A392630

/-! ## A392630.P18032150745144184290

`∏{e}[(n+1)/∏{p}[n+1, #], A060236(#)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A392630

/-- `∏{e}[(n+1)/∏{p}[n+1, #], A060236(#)]` -/
def P18032150745144184290.Spec : Prop :=
  ∀ n, P18032150745144184290.a n = A392630 (n + 1)

theorem P18032150745144184290.correct : P18032150745144184290.Spec := by
  intro n
  simp only [A392630, Nat.add_sub_cancel]

end A392630

/-! ## A392630.P14366232888806552233

`∏{e}[(n+1)², A124767(#)]`
-/

namespace A392630.P14366232888806552233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A124767 (Nat.factorization (f1 n) p)

end

end A392630.P14366232888806552233

namespace A392630

/-- `∏{e}[(n+1)², A124767(#)]` -/
def P14366232888806552233.Spec : Prop :=
  ∀ n, P14366232888806552233.a n = A392630 (n + 1)

end A392630

/-!
# A392632: Numbers k whose squarefree kernel is the only exponential divisor of k that is a number whose number of divisors is a power of 2.

The programs for A392632, the canonical program `A392632.P13925357405564602898` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392632 has offset 1).

The definition of A392632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392632.P13925357405564602898

`eq[1, A392630(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A392632

/-- `eq[1, A392630(n+1)]+1` -/
def P13925357405564602898.Spec : Prop :=
  ∀ n, (P13925357405564602898.a n : ℤ) = A392632 (n + 1)

theorem P13925357405564602898.correct : P13925357405564602898.Spec := by
  intro n
  simp only [A392632, Nat.add_sub_cancel]

end A392632

/-!
# A392633: Totient numbers where a record gap appears in the list (A002202).

The programs for A392633, there is no canonical definition to state claims against.
-/

/-! ## A392633.P17536317165685772850

`A002202(A383890(n+1))`
-/

namespace A392633.P17536317165685772850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (A383890 (n + 1)).toNat

end

end A392633.P17536317165685772850

/-! ## A392633.P6031088680352537562

`A278222(A131262(n)-A066099(n+1))`
-/

namespace A392633.P6031088680352537562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A131262 n - A066099 (n + 1)).toNat

end

end A392633.P6031088680352537562

/-!
# A392636: Number of graphs with n vertices that have no induced regular subgraph of order 6 or greater.

The programs for A392636, there is no canonical definition to state claims against.
-/

/-! ## A392636.P12424304627094210861

`A342517(A287185(n))`
-/

namespace A392636.P12424304627094210861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (A287185 n).toNat

end

end A392636.P12424304627094210861

/-! ## A392636.P8691384627211349875

`A394462(record[A352541(n)])`
-/

namespace A392636.P8691384627211349875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A392636.P8691384627211349875

/-!
# A392637: Number of planar partitions of n with strictly decreasing columns and where parts decrease by at most 1 along each row.

The programs for A392637, there is no canonical definition to state claims against.
-/

/-! ## A392637.P12947151749759473467

`A214564(C(n+3, 4))`
-/

namespace A392637.P12947151749759473467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214564 (Nat.choose (n + 3) 4)

end

end A392637.P12947151749759473467

/-! ## A392637.P14470043031891059559

`A214564(A145126(n+1))`
-/

namespace A392637.P14470043031891059559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214564 (A145126 (n + 1)).toNat

end

end A392637.P14470043031891059559

/-! ## A392637.P4302590605873735427

`A210716(A171491(n+2))`
-/

namespace A392637.P4302590605873735427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (A171491 (n + 2)).toNat

end

end A392637.P4302590605873735427

/-! ## A392637.P17483943609732528465

`filter[A210716(2*n+1), A022932(#)]`
-/

namespace A392637.P17483943609732528465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A392637.P17483943609732528465

/-! ## A392637.P18199330110586598517

`filter[A210716(2*n+1), A109720(#)]`
-/

namespace A392637.P18199330110586598517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A392637.P18199330110586598517

/-!
# A392638: Expansion of 1 / ((1-x)^4 - x^5)^2.

The programs for A392638, the canonical program `A392638.P10015609340432045962` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392638 has offset 0).

The definition of A392638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+28x^2-56x^3+70x^4-58x^5+36x^6-20x^7+9x^8-2x^9+x^10))` (program `A392638.P10015609340432045962`, by `A392638.P10015609340432045962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392638.P10015609340432045962

`ogf(1/(1-8x+28x^2-56x^3+70x^4-58x^5+36x^6-20x^7+9x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392638

/-- `ogf(1/(1-8x+28x^2-56x^3+70x^4-58x^5+36x^6-20x^7+9x^8-2x^9+x^10))` -/
def P10015609340432045962.Spec : Prop :=
  ∀ n, P10015609340432045962.a n = A392638 n

theorem P10015609340432045962.correct : P10015609340432045962.Spec := by
  intro n
  simp only [A392638]

end A392638

/-! ## A392638.P2916157254086586735

`A037813(A047863(n))+A000580(n+7)`
-/

namespace A392638.P2916157254086586735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (A047863 n).toNat + A000580 (n + 7)

end

end A392638.P2916157254086586735

namespace A392638

/-- `A037813(A047863(n))+A000580(n+7)` -/
def P2916157254086586735.Spec : Prop :=
  ∀ n, P2916157254086586735.a n = A392638 n

end A392638

/-!
# A392639: Expansion of 1 / ((1-x)^5 - x^5)^2.

The programs for A392639, there is no canonical definition to state claims against.
-/

/-! ## A392639.P5248164768241094398

`A228369(A054382(n))+A035927(n)`
-/

namespace A392639.P5248164768241094398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228369 (A054382 n).toNat + A035927 n

end

end A392639.P5248164768241094398

/-! ## A392639.P6659456139950283290

`A319995(A219184(n))+A023035(n)`
-/

namespace A392639.P6659456139950283290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (A219184 n).toNat + A023035 (n + 10)

end

end A392639.P6659456139950283290

/-!
# A392640: Expansion of 1 / sqrt((1-x)^4 - 4*x^3).

The programs for A392640, there is no canonical definition to state claims against.
-/

/-! ## A392640.P17755636070808565668

`∑[A179874(A007476(n))]`
-/

namespace A392640.P17755636070808565668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179874 (A007476 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392640.P17755636070808565668

/-! ## A392640.P1692687928845163277

`A305759(A086514(n+1))`
-/

namespace A392640.P1692687928845163277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305759 (A086514 (n + 1)).toNat

end

end A392640.P1692687928845163277

/-! ## A392640.P11980582738397568877

`A212010(A358334(n+1))`
-/

namespace A392640.P11980582738397568877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212010 (A358334 (n + 1)).toNat

end

end A392640.P11980582738397568877

/-!
# A392641: Expansion of 1 / sqrt((1-x)^6 - 4*x).

The programs for A392641, there is no canonical definition to state claims against.
-/

/-! ## A392641.P472286197617582094

`∑[∑[∑[A360132(n)]]]`
-/

namespace A392641.P472286197617582094
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392641.P472286197617582094

/-!
# A392642: Expansion of 1 / sqrt((1-x)^6 - 4*x^2).

The programs for A392642, there is no canonical definition to state claims against.
-/

/-! ## A392642.P17856443771790969125

`A230980(5^n)-n+1`
-/

namespace A392642.P17856443771790969125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (5 ^ n) - (n : ℤ) + 1

end

end A392642.P17856443771790969125

/-! ## A392642.P13624702929348518886

`A206587(A165538(n+1))`
-/

namespace A392642.P13624702929348518886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206587 (A165538 (n + 1)).toNat

end

end A392642.P13624702929348518886

/-!
# A392643: Expansion of 1 / sqrt((1-x)^6 - 4*x^3).

The programs for A392643, there is no canonical definition to state claims against.
-/

/-! ## A392643.P5389805611063248554

`3*A141472(a(n-1))` with `a(0)=1`
-/

namespace A392643.P5389805611063248554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A141472 (a (n - 1)).toNat

end

end A392643.P5389805611063248554

/-! ## A392643.P6663716640655288937

`A339557(A232165(n+1))`
-/

namespace A392643.P6663716640655288937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339557 (A232165 (n + 1)).toNat

end

end A392643.P6663716640655288937

/-!
# A392648: Numbers k such that there exist at least two distinct subsets s1 and s2 of {1 < d < k: d | k}, such that Sum(s1) = Sum(s2) = k.

The programs for A392648, there is no canonical definition to state claims against.
-/

/-! ## A392648.P6863675310680021713

`lt[1, A293814(n)]`
-/

namespace A392648.P6863675310680021713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A392648.P6863675310680021713

/-! ## A392648.P4771640021846218447

`lt[2, A211111(n)]`
-/

namespace A392648.P4771640021846218447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A392648.P4771640021846218447

/-! ## A392648.P5947871112566325926

`lt[A060118(n), A000081(A033630(n))]`
-/

namespace A392648.P5947871112566325926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392648.P5947871112566325926

/-! ## A392648.P463690561289768415

`lt[A194980(n+1), A080014(A033630(n))]`
-/

namespace A392648.P463690561289768415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080014 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392648.P463690561289768415

/-!
# A392650: Sum-irreducible numbers. A number k > 0 is sum-irreducible if no subset of its nontrivial divisors {1 < d < k : d | k} can sum to k.

The programs for A392650, there is no canonical definition to state claims against.
-/

/-! ## A392650.P14425354976666454880

`eq[0, A293814(n)]`
-/

namespace A392650.P14425354976666454880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392650.P14425354976666454880

/-! ## A392650.P3980506216721618242

`eq[0, A331979(n)]`
-/

namespace A392650.P3980506216721618242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392650.P3980506216721618242

/-! ## A392650.P4846982674297980315

`eq[A157928(n), A211111(n)]`
-/

namespace A392650.P4846982674297980315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392650.P4846982674297980315

/-! ## A392650.P7417695443514460245

`lt[A293814(n), A010051(A046133(n+1))]`
-/

namespace A392650.P7417695443514460245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A046133 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392650.P7417695443514460245

/-! ## A392650.P2397486226952925445

`lt[A293814(n), A250120(A293814(3*n+1))]`
-/

namespace A392650.P2397486226952925445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A293814 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392650.P2397486226952925445

/-! ## A392650.P769150605364143239

`∪[A000984(n), A088725(n+1)]`
-/

namespace A392650.P769150605364143239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392650.P769150605364143239

/-! ## A392650.P11061368703538066138

`∪[A001307(n), A088725(n+1)]`
-/

namespace A392650.P11061368703538066138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392650.P11061368703538066138

/-! ## A392650.P17149253018911488904

`∪[A002361(n), A088725(n+1)]`
-/

namespace A392650.P17149253018911488904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392650.P17149253018911488904

/-!
# A392652: Numbers k for which there exists a subset of its even nontrivial divisors that sum to k.

The programs for A392652, there is no canonical definition to state claims against.
-/

/-! ## A392652.P1194135283987205843

`2*A005835(n+1)`
-/

namespace A392652.P1194135283987205843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005835 (n + 1)

end

end A392652.P1194135283987205843

/-! ## A392652.P5330881926570247033

`A005835(n+1)+A005835(-xor(n, -1))`
-/

namespace A392652.P5330881926570247033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1) + A005835 (-Int.xor (n : ℤ) (-1)).toNat

end

end A392652.P5330881926570247033

/-! ## A392652.P6947902876165651800

`A005835(A000027(n+1))+A005835(n+1)`
-/

namespace A392652.P6947902876165651800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (A000027 (n + 1)).toNat + A005835 (n + 1)

end

end A392652.P6947902876165651800

/-! ## A392652.P1358731000270254084

`A004277(A005835(n+1))`
-/

namespace A392652.P1358731000270254084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005835 (n + 1)).toNat

end

end A392652.P1358731000270254084

/-! ## A392652.P14682137439717120343

`A004277(lt[1, A033630(n)])`
-/

namespace A392652.P14682137439717120343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A392652.P14682137439717120343

/-! ## A392652.P72073111697367166

`A004277(lt[1, A331928(n)])`
-/

namespace A392652.P72073111697367166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A392652.P72073111697367166

/-! ## A392652.P327051073712266541

`A004275(A005835(n+1)+1)`
-/

namespace A392652.P327051073712266541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A005835 (n + 1) + 1).toNat

end

end A392652.P327051073712266541

/-!
# A392654: Binary-encoded contents of pin 3, after n moves, when moving infinitely many disks in the Tower of Hanoi starting from pin 1, via the optimal algorithm.

The programs for A392654, there is no canonical definition to state claims against.
-/

/-! ## A392654.P660040091712274662

`A289814(A055661(n))`
-/

namespace A392654.P660040091712274662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A055661 n).toNat

end

end A392654.P660040091712274662

/-! ## A392654.P11686368024236929966

`A391638(n)-A392655(n)`
-/

namespace A392654.P11686368024236929966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391638 n - A392655 n

end

end A392654.P11686368024236929966

/-! ## A392654.P4962246334333870681

`A289813(A128202(n+1))`
-/

namespace A392654.P4962246334333870681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A128202 (n + 1)).toNat

end

end A392654.P4962246334333870681

/-! ## A392654.P16137526328022694808

`A309952(A163483(n))`
-/

namespace A392654.P16137526328022694808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A163483 n).toNat

end

end A392654.P16137526328022694808

/-! ## A392654.P1271288303929446903

`floor(A392655(2*n)/2)`
-/

namespace A392654.P1271288303929446903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A392655 (2 * n) : ℚ) / 2⌋

end

end A392654.P1271288303929446903

/-!
# A392655: Binary-encoded contents of pin 2, after n moves, when moving infinitely many disks in the Tower of Hanoi starting from pin 1, via the optimal algorithm.

The programs for A392655, there is no canonical definition to state claims against.
-/

/-! ## A392655.P5781929686543161613

`A289813(A055661(n))`
-/

namespace A392655.P5781929686543161613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A055661 n).toNat

end

end A392655.P5781929686543161613

/-! ## A392655.P18426720719252438789

`A059253(A163355(A163355(A163355(A000695(n)))))`
-/

namespace A392655.P18426720719252438789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163355 (A163355 (A163355 (A000695 n).toNat).toNat).toNat).toNat

end

end A392655.P18426720719252438789

/-! ## A392655.P8977026728190643931

`A391638(n)-A392654(n)`
-/

namespace A392655.P8977026728190643931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391638 n - A392654 n

end

end A392655.P8977026728190643931

/-! ## A392655.P16890376564946801508

`A289814(A128202(n+1))`
-/

namespace A392655.P16890376564946801508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A128202 (n + 1)).toNat

end

end A392655.P16890376564946801508

/-! ## A392655.P6280550730318935300

`A309952(A163482(n))`
-/

namespace A392655.P6280550730318935300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A163482 n).toNat

end

end A392655.P6280550730318935300

/-!
# A392656: Lower Wythoff partition sequence of the squares; see Comments.

The programs for A392656, there is no canonical definition to state claims against.
-/

/-! ## A392656.P14785464725385050699

`A392658(n+1)²`
-/

namespace A392656.P14785464725385050699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392658 (n + 1) ^ 2

end

end A392656.P14785464725385050699

/-! ## A392656.P9519604483553809000

`A392658(n+1)^A052539(floor(1/(n+1)))`
-/

namespace A392656.P9519604483553809000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392658 (n + 1) : ℚ) ^ (A052539 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A392656.P9519604483553809000

/-! ## A392656.P15143027627594875959

`A392658(n+1)^A001316(A001316(n))`
-/

namespace A392656.P15143027627594875959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392658 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A392656.P15143027627594875959

/-! ## A392656.P10258171784292845404

`A000290(or(floor(1/(n+1)), A392658(n+1)))`
-/

namespace A392656.P10258171784292845404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A392658 (n + 1))).toNat

end

end A392656.P10258171784292845404

/-! ## A392656.P11364559395040304279

`A000290(A392658(n+1)%(n*(n+3)/2+6))`
-/

namespace A392656.P11364559395040304279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A392658 (n + 1)) (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2) + 6))).toNat

end

end A392656.P11364559395040304279

/-! ## A392656.P17766808533769895684

`A392658(n+1)^A264756(3*n+5)`
-/

namespace A392656.P17766808533769895684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392658 (n + 1) : ℚ) ^ (A264756 (3 * n + 5) : ℤ)

end

end A392656.P17766808533769895684

/-! ## A392656.P14403065473881023559

`A392658(n+1)^A304442(A000040(n+1))`
-/

namespace A392656.P14403065473881023559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392658 (n + 1) : ℚ) ^ (A304442 (A000040 (n + 1)).toNat : ℤ)

end

end A392656.P14403065473881023559

/-!
# A392657: Upper Wythoff partition sequence of the squares; see A392656.

The programs for A392657, there is no canonical definition to state claims against.
-/

/-! ## A392657.P2156018530695833822

`A392659(n+1)²`
-/

namespace A392657.P2156018530695833822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392659 (n + 1) ^ 2

end

end A392657.P2156018530695833822

/-! ## A392657.P8852586103350648115

`A392659(n+1)^A372555(A372555(2*(n+1)))`
-/

namespace A392657.P8852586103350648115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392659 (n + 1) : ℚ) ^ (A372555 (A372555 (2 * (n + 1))).toNat : ℤ)

end

end A392657.P8852586103350648115

/-! ## A392657.P16036306321170893777

`A392659(n+1)^A049705(A156243(n+1))`
-/

namespace A392657.P16036306321170893777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392659 (n + 1) : ℚ) ^ (A049705 (A156243 (n + 1)).toNat : ℤ)

end

end A392657.P16036306321170893777

/-! ## A392657.P14673901573334346320

`A392659(n+1)^A324047(A056211(n+1))`
-/

namespace A392657.P14673901573334346320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392659 (n + 1) : ℚ) ^ (A324047 (A056211 (n + 1)).toNat : ℤ)

end

end A392657.P14673901573334346320

/-! ## A392657.P11514344093107097329

`A392659(n+1)^A001227(A237813(n+3))`
-/

namespace A392657.P11514344093107097329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392659 (n + 1) : ℚ) ^ (A001227 (A237813 (n + 3)).toNat : ℤ)

end

end A392657.P11514344093107097329

/-! ## A392657.P2757199382069117434

`A392659(n+1)^A214212(A335261(n+1))`
-/

namespace A392657.P2757199382069117434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392659 (n + 1) : ℚ) ^ (A214212 (A335261 (n + 1)).toNat : ℤ)

end

end A392657.P2757199382069117434

/-!
# A392658: Indices of the lower Wythoff partition sequence of the squares; see A392657.

The programs for A392658, there is no canonical definition to state claims against.
-/

/-! ## A392658.P7358096214089400612

`sqrt(A392656(n+1))`
-/

namespace A392658.P7358096214089400612
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A392656 (n + 1) : ℝ)

end

end A392658.P7358096214089400612

/-! ## A392658.P5688822265421934629

`A000188(A392656(n+1)+A000035(2*(n+2)))`
-/

namespace A392658.P5688822265421934629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A392656 (n + 1) + A000035 (2 * (n + 2))).toNat

end

end A392658.P5688822265421934629

/-!
# A392659: Indices of the upper Wythoff partition sequence of the squares; see A392656.

The programs for A392659, there is no canonical definition to state claims against.
-/

/-! ## A392659.P14769740266697233382

`sqrt(A392657(n+1))`
-/

namespace A392659.P14769740266697233382
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A392657 (n + 1) : ℝ)

end

end A392659.P14769740266697233382

/-! ## A392659.P4166921731769352957

`A002262(2*A392657(n+1))`
-/

namespace A392659.P4166921731769352957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A392657 (n + 1)).toNat

end

end A392659.P4166921731769352957

/-!
# A392660: Lower Wythoff partition sequence of the triangular numbers (A003086); see Comments.

The programs for A392660, there is no canonical definition to state claims against.
-/

/-! ## A392660.P894943243985452960

`A000217(A392662(n+1))`
-/

namespace A392660.P894943243985452960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A392662 (n + 1)).toNat

end

end A392660.P894943243985452960

/-! ## A392660.P12809527833510394485

`(2*n+1)*A198194(A117086(n+1))`
-/

namespace A392660.P12809527833510394485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A198194 (A117086 (n + 1)).toNat

end

end A392660.P12809527833510394485

/-! ## A392660.P856018373091745402

`A000217(A187224(n+1)%A058846(n+3))`
-/

namespace A392660.P856018373091745402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A187224 (n + 1)) (A058846 (n + 3))).toNat

end

end A392660.P856018373091745402

/-! ## A392660.P10474681445408046165

`A066446(2^A187224(n+1))`
-/

namespace A392660.P10474681445408046165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A187224 (n + 1) : ℤ))).toNat

end

end A392660.P10474681445408046165

/-! ## A392660.P5033708976858073009

`(2*n+1)*A222759(A055875(n+2))`
-/

namespace A392660.P5033708976858073009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A222759 (A055875 (n + 2)).toNat

end

end A392660.P5033708976858073009

/-!
# A392661: Upper Wythoff partition sequence of the triangular numbers (A003086); see A392660.

The programs for A392661, there is no canonical definition to state claims against.
-/

/-! ## A392661.P11239488672971642730

`A000217(A392663(n+1))`
-/

namespace A392661.P11239488672971642730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A392663 (n + 1)).toNat

end

end A392661.P11239488672971642730

/-! ## A392661.P9510972628662161882

`A000217(A184416(n+1)%A110713(3*n+2))`
-/

namespace A392661.P9510972628662161882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A184416 (n + 1)) (A110713 (3 * n + 2))).toNat

end

end A392661.P9510972628662161882

/-! ## A392661.P2766263242304247387

`A000217(∑{e}[A063481(n), #]+1)`
-/

namespace A392661.P2766263242304247387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1)

end

end A392661.P2766263242304247387

/-!
# A392662: Indices of the lower Wythoff partition sequence of the triangular numbers; see A392660.

The programs for A392662, there is no canonical definition to state claims against.
-/

/-! ## A392662.P15928529852860738608

`A341318(A392660(n+1)+1)`
-/

namespace A392662.P15928529852860738608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341318 (A392660 (n + 1) + 1).toNat

end

end A392662.P15928529852860738608

/-! ## A392662.P1488207779423307108

`A214292(A392660(n+1))`
-/

namespace A392662.P1488207779423307108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 (A392660 (n + 1)).toNat

end

end A392662.P1488207779423307108

/-! ## A392662.P7627236181268271538

`A007318(A392660(n+1)+1)`
-/

namespace A392662.P7627236181268271538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A392660 (n + 1) + 1).toNat

end

end A392662.P7627236181268271538

/-! ## A392662.P2056271621328323730

`A378284(A067340(3*n+5)+n)+A088517(n)+a(n-1)` with `a(0)=1`
-/

namespace A392662.P2056271621328323730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A378284 (A067340 (3 * n + 5) + (n : ℤ)).toNat + (A088517 n + a (n - 1))

end

end A392662.P2056271621328323730

/-!
# A392663: Indices of the upper Wythoff partition sequence of the triangular numbers; see A392660.

The programs for A392663, there is no canonical definition to state claims against.
-/

/-! ## A392663.P9522645289374481620

`A356155(A392661(n+1))`
-/

namespace A392663.P9522645289374481620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356155 (A392661 (n + 1)).toNat

end

end A392663.P9522645289374481620

/-! ## A392663.P9099990862742472308

`A004736(A392661(n+1)+2)`
-/

namespace A392663.P9099990862742472308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A392661 (n + 1) + 2).toNat

end

end A392663.P9099990862742472308

/-! ## A392663.P5850884249179932711

`A253723(2*n+1)-A383330(2*n)`
-/

namespace A392663.P5850884249179932711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253723 (2 * n + 1) - A383330 (2 * n)

end

end A392663.P5850884249179932711

/-!
# A392668: Numbers m such that sigma(m) = 2*m - omega(m), where omega(m) is the number of distinct prime divisors of m.

The programs for A392668, there is no canonical definition to state claims against.
-/

/-! ## A392668.P8721944669110207394

`∩[A177050(n+1), A390305(n+1)]`
-/

namespace A392668.P8721944669110207394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392668.P8721944669110207394

/-! ## A392668.P16624391614762060474

`∩[A177050(n+1), A363235(n)]`
-/

namespace A392668.P16624391614762060474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363235 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392668.P16624391614762060474

/-! ## A392668.P11362334657329053648

`∩[A177050(n+1), A243225(n+1)]`
-/

namespace A392668.P11362334657329053648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392668.P11362334657329053648

/-! ## A392668.P18436881823109280868

`∩[A136490(n+1), A177050(n+1)]`
-/

namespace A392668.P18436881823109280868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392668.P18436881823109280868

/-! ## A392668.P1296981803971146782

`∩[A164713(n+1), A177050(n+1)]`
-/

namespace A392668.P1296981803971146782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392668.P1296981803971146782

/-!
# A392670: Triangle read by rows where row n is the numerators of the node values in a preorder traversal of the Calkin-Wilf tree with n levels, columns 0 <= k < 2^n-1.

The programs for A392670, the canonical program `A392670.P14366886065038149397` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392670 has offset 1).

The definition of A392670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392670.P442079171899264163

`A002487(A123390(n+1))`
-/

namespace A392670.P442079171899264163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A123390 (n + 1)).toNat

end

end A392670.P442079171899264163

namespace A392670

/-- `A002487(A123390(n+1))` -/
def P442079171899264163.Spec : Prop :=
  ∀ n, P442079171899264163.a n = A392670 (n + 1)

end A392670

/-! ## A392670.P14366886065038149397

`A002487(A046699(n+2))`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A392670

/-- `A002487(A046699(n+2))` -/
def P14366886065038149397.Spec : Prop :=
  ∀ n, P14366886065038149397.a n = A392670 (n + 1)

theorem P14366886065038149397.correct : P14366886065038149397.Spec := by
  intro n
  simp only [A392670, Nat.add_sub_cancel]

end A392670

/-! ## A392670.P2079920093959818835

`A002487(A007843(n+1))`
-/

namespace A392670.P2079920093959818835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A007843 (n + 1)).toNat

end

end A392670.P2079920093959818835

namespace A392670

/-- `A002487(A007843(n+1))` -/
def P2079920093959818835.Spec : Prop :=
  ∀ n, P2079920093959818835.a n = A392670 (n + 1)

end A392670

/-! ## A392670.P8410441903644995196

`A002487(A254112(n+1))`
-/

namespace A392670.P8410441903644995196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A254112 (n + 1)).toNat

end

end A392670.P8410441903644995196

namespace A392670

/-- `A002487(A254112(n+1))` -/
def P8410441903644995196.Spec : Prop :=
  ∀ n, P8410441903644995196.a n = A392670 (n + 1)

end A392670

/-! ## A392670.P5866739977229195062

`A288003(A108918(n+1))`
-/

namespace A392670.P5866739977229195062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A108918 (n + 1)).toNat

end

end A392670.P5866739977229195062

namespace A392670

/-- `A288003(A108918(n+1))` -/
def P5866739977229195062.Spec : Prop :=
  ∀ n, P5866739977229195062.a n = A392670 (n + 1)

end A392670

/-!
# A392671: Triangle read by rows: the n-th row gives the denominators of the node values in a pre-order traversal of the Calkin-Wilf tree with n levels, 0 <= k < 2^n - 1.

The programs for A392671, there is no canonical definition to state claims against.
-/

/-! ## A392671.P8177544921390480791

`A002487(A254112(n+1)+1)`
-/

namespace A392671.P8177544921390480791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A254112 (n + 1) + 1).toNat

end

end A392671.P8177544921390480791

/-! ## A392671.P14891375168706086658

`A126306(A205522(n+1))`
-/

namespace A392671.P14891375168706086658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A205522 (n + 1)).toNat

end

end A392671.P14891375168706086658

/-! ## A392671.P594130042429731648

`A396196(A091847(n+1))`
-/

namespace A392671.P594130042429731648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396196 (A091847 (n + 1)).toNat

end

end A392671.P594130042429731648

/-! ## A392671.P6029262740769687045

`A300649(A325238(n+1))`
-/

namespace A392671.P6029262740769687045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300649 (A325238 (n + 1)).toNat

end

end A392671.P6029262740769687045

/-! ## A392671.P18398848570761675288

`A300649(A344385(n+1))`
-/

namespace A392671.P18398848570761675288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300649 (A344385 (n + 1)).toNat

end

end A392671.P18398848570761675288

/-!
# A392672: Smallest number m such that m*(m+1)*(m+2) has exactly n distinct prime factors.

The programs for A392672, there is no canonical definition to state claims against.
-/

/-! ## A392672.P2815703390798269901

`∑[A306408((n+2)!)]`
-/

namespace A392672.P2815703390798269901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306408 (Nat.factorial (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392672.P2815703390798269901

/-! ## A392672.P17861971802643164522

`A161329(A042695(n+1))`
-/

namespace A392672.P17861971802643164522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161329 (A042695 (n + 1)).toNat

end

end A392672.P17861971802643164522

/-!
# A392673: a(n) = Sum_{k=0..floor(n/2)} binomial(k+1,3*n-6*k+1).

The programs for A392673, the canonical program `A392673.P1285588607504056432` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392673 has offset 0).

The definition of A392673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392673.P1285588607504056432

`3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=0, a(6)=4`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392673

/-- `3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` -/
def P1285588607504056432.Spec : Prop :=
  ∀ n, P1285588607504056432.a n = A392673 n

theorem P1285588607504056432.correct : P1285588607504056432.Spec := by
  intro n
  simp only [A392673]

end A392673

/-! ## A392673.P10973870979601881055

`A017847(A112414(n))`
-/

namespace A392673.P10973870979601881055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (A112414 n).toNat

end

end A392673.P10973870979601881055

namespace A392673

/-- `A017847(A112414(n))` -/
def P10973870979601881055.Spec : Prop :=
  ∀ n, P10973870979601881055.a n = A392673 n

end A392673

/-! ## A392673.P9666722813042122184

`A017847(A032766(2*(n+2))+1)`
-/

namespace A392673.P9666722813042122184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (A032766 (2 * (n + 2)) + 1).toNat

end

end A392673.P9666722813042122184

namespace A392673

/-- `A017847(A032766(2*(n+2))+1)` -/
def P9666722813042122184.Spec : Prop :=
  ∀ n, P9666722813042122184.a n = A392673 n

end A392673

/-! ## A392673.P5351363142251294181

`A017847(A001651(2*(n+2))+2)`
-/

namespace A392673.P5351363142251294181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (A001651 (2 * (n + 2)) + 2).toNat

end

end A392673.P5351363142251294181

namespace A392673

/-- `A017847(A001651(2*(n+2))+2)` -/
def P5351363142251294181.Spec : Prop :=
  ∀ n, P5351363142251294181.a n = A392673 n

end A392673

/-! ## A392673.P13366162579757943287

`A017847(3*n+4)+Δ[A017847(3*n+4)]`
-/

namespace A392673.P13366162579757943287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (3 * n + 4) + (f1 (n + 1) - f1 n)

end

end A392673.P13366162579757943287

namespace A392673

/-- `A017847(3*n+4)+Δ[A017847(3*n+4)]` -/
def P13366162579757943287.Spec : Prop :=
  ∀ n, P13366162579757943287.a n = A392673 n

end A392673

/-!
# A392674: a(n) = Sum_{k=0..floor(3*n/8)} binomial(k+1,3*n-8*k).

The programs for A392674, the canonical program `A392674.P5425032225252229005` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392674 has offset 0).

The definition of A392674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392674.P5425032225252229005

`3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=3, a(7)=0, a(8)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392674

/-- `3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` -/
def P5425032225252229005.Spec : Prop :=
  ∀ n, P5425032225252229005.a n = A392674 n

theorem P5425032225252229005.correct : P5425032225252229005.Spec := by
  intro n
  simp only [A392674]

end A392674

/-! ## A392674.P5383921618247088901

`A017867(A180486(n+2))`
-/

namespace A392674.P5383921618247088901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (A180486 (n + 2)).toNat

end

end A392674.P5383921618247088901

namespace A392674

/-- `A017867(A180486(n+2))` -/
def P5383921618247088901.Spec : Prop :=
  ∀ n, P5383921618247088901.a n = A392674 n

end A392674

/-!
# A392675: a(n) = Sum_{k=0..floor(n/3)} binomial(k+1,3*n-9*k+1).

The programs for A392675, the canonical program `A392675.P3275726363782901375` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392675 has offset 0).

The definition of A392675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392675.P3275726363782901375

`3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=3, a(7)=0, a(8)=0, a(9)=4`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392675

/-- `3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` -/
def P3275726363782901375.Spec : Prop :=
  ∀ n, P3275726363782901375.a n = A392675 n

theorem P3275726363782901375.correct : P3275726363782901375.Spec := by
  intro n
  simp only [A392675]

end A392675

/-! ## A392675.P7039463647744241136

`A017877(A112414(n+1))`
-/

namespace A392675.P7039463647744241136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (A112414 (n + 1)).toNat

end

end A392675.P7039463647744241136

namespace A392675

/-- `A017877(A112414(n+1))` -/
def P7039463647744241136.Spec : Prop :=
  ∀ n, P7039463647744241136.a n = A392675 n

end A392675

/-! ## A392675.P18020810983558305590

`A333768(A392042(n))`
-/

namespace A392675.P18020810983558305590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A392042 n).toNat

end

end A392675.P18020810983558305590

namespace A392675

/-- `A333768(A392042(n))` -/
def P18020810983558305590.Spec : Prop :=
  ∀ n, P18020810983558305590.a n = A392675 n

end A392675

/-!
# A392681: Square array read by upward antidiagonals: T(n,k) = sum of depths of leaves in a complete k-ary tree with n nodes; n >= 1, k >= 2.

The programs for A392681, there is no canonical definition to state claims against.
-/

/-! ## A392681.P5306435952473971067

`A318451(A120105(n))`
-/

namespace A392681.P5306435952473971067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (A120105 n).toNat

end

end A392681.P5306435952473971067

/-! ## A392681.P4734025418769087965

`A004736(n+1)-A000035(A057004(n+4))`
-/

namespace A392681.P4734025418769087965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A000035 (A057004 (n + 4)).toNat

end

end A392681.P4734025418769087965

/-! ## A392681.P11074626091469817251

`A004736(n+1)-A334946(A358523(n))`
-/

namespace A392681.P11074626091469817251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A334946 (A358523 n).toNat

end

end A392681.P11074626091469817251

/-! ## A392681.P14004996740315610764

`A293976(A025581(n)%A324587(3*n+4))`
-/

namespace A392681.P14004996740315610764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293976 (Int.tmod (A025581 n) (A324587 (3 * n + 4))).toNat

end

end A392681.P14004996740315610764

/-! ## A392681.P13847398899406242642

`A003754(A004736(n+1)%A037083(3*n+4))`
-/

namespace A392681.P13847398899406242642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (Int.tmod (A004736 (n + 1)) (A037083 (3 * n + 4))).toNat

end

end A392681.P13847398899406242642

/-!
# A392683: a(n) is the number of n-element families of nonempty subsets of {1, ..., n} in which every number in 1..n appears the same nonzero number of times.

The programs for A392683, there is no canonical definition to state claims against.
-/

/-! ## A392683.P12903696006840217004

`A088646(A006095(n))`
-/

namespace A392683.P12903696006840217004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088646 (A006095 n).toNat

end

end A392683.P12903696006840217004

/-!
# A392684: Number of ways to write n as x + y + z with x >= y >= z >= 1 such that lcm(x,y,z) is a product of three consecutive integers.

The programs for A392684, there is no canonical definition to state claims against.
-/

/-! ## A392684.P2158452315673109884

`A001222(∑[A135665(n+1)^n])`
-/

namespace A392684.P2158452315673109884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A392684.P2158452315673109884

/-!
# A392685: a(n) = numerator( (1/(4*n + 2))*Sum_{i=0..2*n} (-1)^i/(2*i+1) ).

The programs for A392685, there is no canonical definition to state claims against.
-/

/-! ## A392685.P13816216970100089643

`A007509(2*n)`
-/

namespace A392685.P13816216970100089643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007509 (2 * n)

end

end A392685.P13816216970100089643

/-! ## A392685.P3635458946811313417

`A215746(2*n)/4`
-/

namespace A392685.P3635458946811313417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215746 (2 * n) : ℚ) / 4

end

end A392685.P3635458946811313417

/-! ## A392685.P12479600335474907495

`A007509(A004277(n))-A000007(n)`
-/

namespace A392685.P12479600335474907495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007509 (A004277 n).toNat - A000007 n

end

end A392685.P12479600335474907495

/-! ## A392685.P13648762188285537238

`A007509(A005843(n))%A174549(n+1)`
-/

namespace A392685.P13648762188285537238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007509 (A005843 n).toNat) (A174549 (n + 1))

end

end A392685.P13648762188285537238

/-!
# A392686: a(n) = denominator( (1/(4*n + 2))*Sum_{i=0..2*n} (-1)^i/(2*i+1) ).

The programs for A392686, there is no canonical definition to state claims against.
-/

/-! ## A392686.P12809399385415626981

`2*A390227(n)`
-/

namespace A392686.P12809399385415626981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A390227 n

end

end A392686.P12809399385415626981

/-! ## A392686.P5958896331847109884

`A225123(4*n+2)`
-/

namespace A392686.P5958896331847109884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225123 (4 * n + 2)

end

end A392686.P5958896331847109884

/-!
# A392690: a(n) = denominator( (-1)^(n-1)*H(2*n)/(2*n + 1) ), where H(n) is the n-th harmonic number.

The programs for A392690, there is no canonical definition to state claims against.
-/

/-! ## A392690.P14773059673240853001

`A116417(A278908(2*n+1)*A389742(2*n+1))`
-/

namespace A392690.P14773059673240853001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A278908 (2 * n + 1) * A389742 (2 * n + 1)).toNat

end

end A392690.P14773059673240853001

/-! ## A392690.P8274757986325851244

`A125901(A042243(n))`
-/

namespace A392690.P8274757986325851244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125901 (A042243 n).toNat

end

end A392690.P8274757986325851244

/-!
# A392694: Numbers whose weakly increasing prime indices are the 0-prepended first sums of some reversed integer partition.

The programs for A392694, there is no canonical definition to state claims against.
-/

/-! ## A392694.P17887578369580513526

`∪[A250198(n+1), A325396(n+1)]`
-/

namespace A392694.P17887578369580513526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392694.P17887578369580513526

/-! ## A392694.P5717173828451629232

`∪[A250198(n+1), A325362(n+1)]`
-/

namespace A392694.P5717173828451629232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392694.P5717173828451629232

/-! ## A392694.P6277069019279704285

`eq[A346466(A180977(2*n+1)+1), A359550(n)]`
-/

namespace A392694.P6277069019279704285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346466 (A180977 (2 * n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392694.P6277069019279704285

/-! ## A392694.P8678466684586024861

`lt[A010060(A103314(n+4)), A265574(n+5)]`
-/

namespace A392694.P8678466684586024861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A103314 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265574 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392694.P8678466684586024861

/-! ## A392694.P14451568749767949666

`lt[A156283(A156261(3*n+4)), A103309(n)]`
-/

namespace A392694.P14451568749767949666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156283 (A156261 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392694.P14451568749767949666

/-!
# A392695: Numbers whose prime indices are the 0-prepended first sums of some finite sequence of distinct positive integers.

The programs for A392695, there is no canonical definition to state claims against.
-/

/-! ## A392695.P3549142688372194225

`A325388(n+1)+A000007(A303812(n+1))`
-/

namespace A392695.P3549142688372194225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325388 (n + 1) + A000007 (A303812 (n + 1)).toNat

end

end A392695.P3549142688372194225

/-! ## A392695.P14113673523772044610

`A325388(n+1)+A320005(A106281(n+1))`
-/

namespace A392695.P14113673523772044610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325388 (n + 1) + A320005 (A106281 (n + 1)).toNat

end

end A392695.P14113673523772044610

/-! ## A392695.P12918761733483108526

`A341994(A069675(n+2))+A325388(n+1)`
-/

namespace A392695.P12918761733483108526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A069675 (n + 2)).toNat + A325388 (n + 1)

end

end A392695.P12918761733483108526

/-! ## A392695.P16357447498729461653

`A158388(A389923(n+1))*A325388(n+1)`
-/

namespace A392695.P16357447498729461653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A389923 (n + 1)).toNat * A325388 (n + 1)

end

end A392695.P16357447498729461653

/-! ## A392695.P14886433112010261134

`A325388(n+1)^A051764(A069675(n+1))`
-/

namespace A392695.P14886433112010261134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325388 (n + 1) : ℚ) ^ (A051764 (A069675 (n + 1)).toNat : ℤ)

end

end A392695.P14886433112010261134

/-! ## A392695.P3708127108111933839

`A054977(A153006(3*(n+1)))*A325388(n+1)`
-/

namespace A392695.P3708127108111933839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A153006 (3 * (n + 1))).toNat * A325388 (n + 1)

end

end A392695.P3708127108111933839

/-! ## A392695.P16722536216616546892

`A325388(n+1)%A357625(A256601(2*n+1))`
-/

namespace A392695.P16722536216616546892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325388 (n + 1)) (A357625 (A256601 (2 * n + 1)).toNat)

end

end A392695.P16722536216616546892

/-! ## A392695.P979642562409993269

`A325388(n+1)%A309780(n+1)`
-/

namespace A392695.P979642562409993269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325388 (n + 1)) (A309780 (n + 1))

end

end A392695.P979642562409993269

/-! ## A392695.P256997941604403662

`A325388(n+1)+A000007(A094142(n+1))`
-/

namespace A392695.P256997941604403662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325388 (n + 1) + A000007 (A094142 (n + 1)).toNat

end

end A392695.P256997941604403662

/-!
# A392696: Numbers whose reversed prime indices are the 0-prepended first sums of some finite sequence of nonnegative integers.

The programs for A392696, there is no canonical definition to state claims against.
-/

/-! ## A392696.P5748080430585320235

`∪[A166401(n+1), A005010(n)]`
-/

namespace A392696.P5748080430585320235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392696.P5748080430585320235

/-! ## A392696.P3997666986780271435

`∪[A006975(n), A166401(n+1)]`
-/

namespace A392696.P3997666986780271435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392696.P3997666986780271435

/-! ## A392696.P13115024429270953396

`∪[A166401(n+1), A008391(n)]`
-/

namespace A392696.P13115024429270953396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008391 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392696.P13115024429270953396

/-! ## A392696.P12845814070196834473

`∪[A166401(n+1), A008399(n)]`
-/

namespace A392696.P12845814070196834473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008399 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392696.P12845814070196834473

/-! ## A392696.P15015401550712622661

`∪[A166401(n+1), A019562(n)]`
-/

namespace A392696.P15015401550712622661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019562 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392696.P15015401550712622661

/-! ## A392696.P17496032779552149282

`∪[A022031(n), A166401(n+1)]`
-/

namespace A392696.P17496032779552149282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392696.P17496032779552149282

/-! ## A392696.P14010833136306678501

`∪[A166401(n+1), A022148(n)]`
-/

namespace A392696.P14010833136306678501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392696.P14010833136306678501

/-! ## A392696.P18061481249747826287

`∪[A027139(n), A166401(n+1)]`
-/

namespace A392696.P18061481249747826287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027139 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392696.P18061481249747826287

/-! ## A392696.P6735235294334240267

`∪[A027261(n), A166401(n+1)]`
-/

namespace A392696.P6735235294334240267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392696.P6735235294334240267

/-! ## A392696.P7832527919844511680

`∪[A166401(n+1), A047960(n)]`
-/

namespace A392696.P7832527919844511680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047960 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392696.P7832527919844511680

/-!
# A392698: Numbers whose reversed prime indices are the 0-prepended first sums of some finite sequence of distinct integers.

The programs for A392698, there is no canonical definition to state claims against.
-/

/-! ## A392698.P581082715244085584

`filter[A065200(n+1), A212793(#)]`
-/

namespace A392698.P581082715244085584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A392698.P581082715244085584

/-! ## A392698.P14521725878742148086

`filter[A065200(n+1), A359471(#)]`
-/

namespace A392698.P14521725878742148086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A392698.P14521725878742148086

/-! ## A392698.P17689284524939628086

`filter[A304678(n+1), A359471(#)]`
-/

namespace A392698.P17689284524939628086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A392698.P17689284524939628086

/-! ## A392698.P187915610213559110

`∪[A387177(n+1), A008021(n)]`
-/

namespace A392698.P187915610213559110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008021 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392698.P187915610213559110

/-! ## A392698.P4153500159203162097

`∪[A387177(n+1), A008149(n)]`
-/

namespace A392698.P4153500159203162097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008149 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392698.P4153500159203162097

/-! ## A392698.P18427273767157254884

`∪[A387177(n+1), A019299(n)]`
-/

namespace A392698.P18427273767157254884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019299 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392698.P18427273767157254884

/-! ## A392698.P412078214846272599

`∪[A387177(n+1), A019454(n)]`
-/

namespace A392698.P412078214846272599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392698.P412078214846272599

/-! ## A392698.P14214108432210519823

`∪[A254874(n), A193304(n+1)]`
-/

namespace A392698.P14214108432210519823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392698.P14214108432210519823

/-!
# A392699: Numbers whose prime indices are the first sums of some 0-prepended composition into parts > 1.

The programs for A392699, there is no canonical definition to state claims against.
-/

/-! ## A392699.P10051046617190238604

`∩[A175679(n+1), A325160(n+1)]`
-/

namespace A392699.P10051046617190238604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392699.P10051046617190238604

/-! ## A392699.P3624635886056237624

`∩[A320056(n+1), A325160(n+1)]`
-/

namespace A392699.P3624635886056237624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392699.P3624635886056237624

/-! ## A392699.P11563156492764446220

`∩[A325160(n+1), A352830(n+1)]`
-/

namespace A392699.P11563156492764446220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392699.P11563156492764446220

/-! ## A392699.P10247204412732779350

`∩[A325131(n+1), A325160(n+1)]`
-/

namespace A392699.P10247204412732779350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392699.P10247204412732779350

/-! ## A392699.P7932782562442173338

`filter[A325399(n+1), A356172(#)]`
-/

namespace A392699.P7932782562442173338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A392699.P7932782562442173338

