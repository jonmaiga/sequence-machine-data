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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.Opaque.C025

/-!
# A087701: Maximal term in Collatz-iteration started at -1+2^n.

The programs for A087701, there is no canonical definition to state claims against.
-/

/-! ## A087701.P4824269334904684120

`A025586(2^(n+1)-1)`
-/

namespace A087701.P4824269334904684120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (2 ^ (n + 1) - 1)

end

end A087701.P4824269334904684120

/-! ## A087701.P6594825531411565473

`A213538(∑[2^n])+∑[2^n]`
-/

namespace A087701.P6594825531411565473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213538 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A087701.P6594825531411565473

/-! ## A087701.P10059676073420106772

`A270570(gcd(8, n)%3*∑[2^n])`
-/

namespace A087701.P10059676073420106772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270570 (Nat.gcd 8 n % 3 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A087701.P10059676073420106772

/-! ## A087701.P2583130759677953499

`A270570(A095121(n)+1)`
-/

namespace A087701.P2583130759677953499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270570 (A095121 n + 1).toNat

end

end A087701.P2583130759677953499

/-! ## A087701.P5541102815859721351

`A270570(A372889(n+1))`
-/

namespace A087701.P5541102815859721351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270570 (A372889 (n + 1)).toNat

end

end A087701.P5541102815859721351

/-!
# A087703: Primes whose digits can be partitioned (into at least two parts) into palindromes containing a palindromic part with at least two digits.

The programs for A087703, there is no canonical definition to state claims against.
-/

/-! ## A087703.P12271104300019141932

`A002034(p?[A263172(n+1)]*A070548(n+1))`
-/

namespace A087703.P12271104300019141932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A070548 (n + 1)).toNat

end

end A087703.P12271104300019141932

/-! ## A087703.P8177105837826836205

`A139171(p?[A263172(n+1)]*A070548(n+1))`
-/

namespace A087703.P8177105837826836205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A070548 (n + 1)).toNat

end

end A087703.P8177105837826836205

/-! ## A087703.P7907788071263024287

`p?[A263172(n+1)]*A115364(A266268(n+1))`
-/

namespace A087703.P7907788071263024287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A115364 (A266268 (n + 1)).toNat

end

end A087703.P7907788071263024287

/-!
# A087705: First integer > n reached under iteration of map x -> (5/3)*floor(x) when started at n, or -1 if no such integer is ever reached.

The programs for A087705, there is no canonical definition to state claims against.
-/

/-! ## A087705.P662000141528955174

`5*A087706(n+2)`
-/

namespace A087705.P662000141528955174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A087706 (n + 2)

end

end A087705.P662000141528955174

/-! ## A087705.P13598295424519771969

`A008587(A087706(n+2))`
-/

namespace A087705.P13598295424519771969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A087706 (n + 2)).toNat

end

end A087705.P13598295424519771969

/-! ## A087705.P10935804858111704749

`A008706(or(char[1], A087706(n+2)))`
-/

namespace A087705.P10935804858111704749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A087706 (n + 2))).toNat

end

end A087705.P10935804858111704749

/-! ## A087705.P11911161574134438195

`A008706(A087706(n+2)+and(2, n²))`
-/

namespace A087705.P11911161574134438195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A087706 (n + 2) + (Nat.land 2 (n ^ 2) : ℤ)).toNat

end

end A087705.P11911161574134438195

/-! ## A087705.P11225034904283991139

`A008706(A087706(n+2)%A016840(n))`
-/

namespace A087705.P11225034904283991139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.tmod (A087706 (n + 2)) (A016840 n)).toNat

end

end A087705.P11225034904283991139

/-! ## A087705.P14071047852953369368

`A008706(∏{d}[A087706(n+2), A014963(#)])`
-/

namespace A087705.P14071047852953369368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A087705.P14071047852953369368

/-! ## A087705.P1370769966511651233

`A008706(A087706(n+2)^(n²%A020639(n+1)))`
-/

namespace A087705.P1370769966511651233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (SequenceMachineLib.roundAway ((A087706 (n + 2) : ℚ) ^ (Int.tmod (n ^ 2 : ℤ) (A020639 (n + 1)) : ℤ))).toNat

end

end A087705.P1370769966511651233

/-!
# A087706: A087705/5.

The programs for A087706, there is no canonical definition to state claims against.
-/

/-! ## A087706.P15576184922337060253

`A087705(n+2)/5`
-/

namespace A087706.P15576184922337060253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087705 (n + 2) : ℚ) / 5

end

end A087706.P15576184922337060253

/-! ## A087706.P14315582684005476450

`A002266(A087705(n+2))`
-/

namespace A087706.P14315582684005476450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A087705 (n + 2)).toNat

end

end A087706.P14315582684005476450

/-! ## A087706.P949380361734123262

`A194509(A087705(n+2)+2)`
-/

namespace A087706.P949380361734123262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A087705 (n + 2) + 2).toNat

end

end A087706.P949380361734123262

/-! ## A087706.P9015820762532035069

`A076309(2*A087705(n+2))`
-/

namespace A087706.P9015820762532035069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (2 * A087705 (n + 2)).toNat

end

end A087706.P9015820762532035069

/-! ## A087706.P10375540688453916256

`A076312(2*A087705(n+2))`
-/

namespace A087706.P10375540688453916256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (2 * A087705 (n + 2)).toNat

end

end A087706.P10375540688453916256

/-! ## A087706.P15161006053675512618

`A076313(2*A087705(n+2))`
-/

namespace A087706.P15161006053675512618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (2 * A087705 (n + 2)).toNat

end

end A087706.P15161006053675512618

/-! ## A087706.P8383192889966777329

`A076314(2*A087705(n+2))`
-/

namespace A087706.P8383192889966777329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (2 * A087705 (n + 2)).toNat

end

end A087706.P8383192889966777329

/-!
# A087708: First integer > n reached under iteration of map x -> (5/3)*ceiling(x) when started at n, or -1 if no such integer is ever reached.

The programs for A087708, there is no canonical definition to state claims against.
-/

/-! ## A087708.P11570780142758661388

`5*A087709(n+1)`
-/

namespace A087708.P11570780142758661388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A087709 (n + 1)

end

end A087708.P11570780142758661388

/-! ## A087708.P2221656777568309724

`A008587(A087709(n+1))`
-/

namespace A087708.P2221656777568309724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A087709 (n + 1)).toNat

end

end A087708.P2221656777568309724

/-! ## A087708.P1907510629945662458

`A008706(or(char[2], A087709(n+1)))`
-/

namespace A087708.P1907510629945662458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A087709 (n + 1))).toNat

end

end A087708.P1907510629945662458

/-! ## A087708.P12400823468273920620

`A008706(A087709(n+1)+and(2, n²))`
-/

namespace A087708.P12400823468273920620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A087709 (n + 1) + (Nat.land 2 (n ^ 2) : ℤ)).toNat

end

end A087708.P12400823468273920620

/-! ## A087708.P12412678392882715711

`A008706(A087709(n+1)%A016840(n))`
-/

namespace A087708.P12412678392882715711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.tmod (A087709 (n + 1)) (A016840 n)).toNat

end

end A087708.P12412678392882715711

/-! ## A087708.P4631147162366618071

`A008706(∏{d}[A087709(n+1), A014963(#)])`
-/

namespace A087708.P4631147162366618071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A087708.P4631147162366618071

/-! ## A087708.P11425375904830143254

`or(A000038(n)², A008706(A087709(n+1)))`
-/

namespace A087708.P11425375904830143254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n ^ 2) (A008706 (A087709 (n + 1)).toNat)

end

end A087708.P11425375904830143254

/-! ## A087708.P9164752826580738709

`A008706(A087709(n+1))+A000038(n+1)`
-/

namespace A087708.P9164752826580738709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A087709 (n + 1)).toNat + A000038 (n + 1)

end

end A087708.P9164752826580738709

/-! ## A087708.P6221464697654704766

`A008706(A087709(n+1))%A241554(n+1)`
-/

namespace A087708.P6221464697654704766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A087709 (n + 1)).toNat) (A241554 (n + 1))

end

end A087708.P6221464697654704766

/-! ## A087708.P16252580330703513910

`A008706(A087709(n+1))/A000005(gcd(n+1, n+2))`
-/

namespace A087708.P16252580330703513910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008706 (A087709 (n + 1)).toNat : ℚ) / (A000005 (Nat.gcd (n + 1) (n + 2)) : ℚ)

end

end A087708.P16252580330703513910

/-!
# A087709: A087708/5.

The programs for A087709, there is no canonical definition to state claims against.
-/

/-! ## A087709.P8124088248159649770

`A087708(n+1)/5`
-/

namespace A087709.P8124088248159649770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087708 (n + 1) : ℚ) / 5

end

end A087709.P8124088248159649770

/-! ## A087709.P9992188167122146752

`A002266(A087708(n+1))`
-/

namespace A087709.P9992188167122146752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A087708 (n + 1)).toNat

end

end A087709.P9992188167122146752

/-! ## A087709.P5425001234882131974

`A194509(A087708(n+1)+2)`
-/

namespace A087709.P5425001234882131974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A087708 (n + 1) + 2).toNat

end

end A087709.P5425001234882131974

/-! ## A087709.P14202574936233669737

`A076309(2*A087708(n+1))`
-/

namespace A087709.P14202574936233669737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (2 * A087708 (n + 1)).toNat

end

end A087709.P14202574936233669737

/-! ## A087709.P10700963909659007042

`A076312(2*A087708(n+1))`
-/

namespace A087709.P10700963909659007042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (2 * A087708 (n + 1)).toNat

end

end A087709.P10700963909659007042

/-!
# A087711: a(n) = smallest number k such that both k-n and k+n are primes.

The programs for A087711, there is no canonical definition to state claims against.
-/

/-! ## A087711.P16039119733730815291

`A020483(n)+n`
-/

namespace A087711.P16039119733730815291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n + (n : ℤ)

end

end A087711.P16039119733730815291

/-! ## A087711.P18260395921317143527

`A020484(n)-n`
-/

namespace A087711.P18260395921317143527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 n - (n : ℤ)

end

end A087711.P18260395921317143527

/-! ## A087711.P5398324342437442282

`n-A001057(2*A020483(n))`
-/

namespace A087711.P5398324342437442282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A020483 n).toNat

end

end A087711.P5398324342437442282

/-! ## A087711.P16292421781424792664

`A005843(n)-(n-A020483(n))`
-/

namespace A087711.P16292421781424792664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A020483 n)

end

end A087711.P16292421781424792664

/-! ## A087711.P5838317022291915772

`A002378(n)-(n²-A020483(n))`
-/

namespace A087711.P5838317022291915772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - ((n ^ 2 : ℤ) - A020483 n)

end

end A087711.P5838317022291915772

/-! ## A087711.P13776979480812848567

`A073310(n+1)+A065475(n+1)`
-/

namespace A087711.P13776979480812848567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073310 (n + 1) + A065475 (n + 1)

end

end A087711.P13776979480812848567

/-! ## A087711.P5012141328814833767

`A073310(n+1)+A103517(n)-n`
-/

namespace A087711.P5012141328814833767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073310 (n + 1) + (A103517 n - (n : ℤ))

end

end A087711.P5012141328814833767

/-! ## A087711.P7413559031549049600

`A271353(A047231(n+2))+n`
-/

namespace A087711.P7413559031549049600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A047231 (n + 2)).toNat + (n : ℤ)

end

end A087711.P7413559031549049600

/-! ## A087711.P18247335646133576649

`A271353(A051755(n+2))+n`
-/

namespace A087711.P18247335646133576649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A051755 (n + 2)).toNat + (n : ℤ)

end

end A087711.P18247335646133576649

/-! ## A087711.P5907652987692990405

`A270753(2*(n+1))-(A010051(2*(n+1))+n)`
-/

namespace A087711.P5907652987692990405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 (2 * (n + 1)) - (A010051 (2 * (n + 1)) + (n : ℤ))

end

end A087711.P5907652987692990405

/-! ## A087711.P10348129375489367331

`A271353(2*(n+1))-A010051(2*(n+1))+n`
-/

namespace A087711.P10348129375489367331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (2 * (n + 1)) - A010051 (2 * (n + 1)) + (n : ℤ)

end

end A087711.P10348129375489367331

/-!
# A087712: a(1) = 1; if n = k-th prime, a(n) = k; otherwise write all prime factors of n in nondecreasing order, replace each prime with its rank, and concatenate the ranks.

The programs for A087712, there is no canonical definition to state claims against.
-/

/-! ## A087712.P9028253569547487852

`A037916(lcm(2, A304660(n+1)))`
-/

namespace A087712.P9028253569547487852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (Int.lcm 2 (A304660 (n + 1)))

end

end A087712.P9028253569547487852

/-! ## A087712.P1512301969622590127

`A037916(floor(A304660(n+1)+acot(n)))`
-/

namespace A087712.P1512301969622590127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 ⌊(A304660 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A087712.P1512301969622590127

/-! ## A087712.P7422202582399114131

`A037916(A304660(n+1)+A000007(n))`
-/

namespace A087712.P7422202582399114131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A304660 (n + 1) + A000007 n).toNat

end

end A087712.P7422202582399114131

/-! ## A087712.P10358111614666522028

`A037916(A304660(n+1)+A000038(n))`
-/

namespace A087712.P10358111614666522028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A304660 (n + 1) + A000038 n).toNat

end

end A087712.P10358111614666522028

/-! ## A087712.P8695388975330384864

`A037916(A304660(n+1))^A178334(n)`
-/

namespace A087712.P8695388975330384864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037916 (A304660 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A087712.P8695388975330384864

/-!
# A087713: Greatest prime factor of the product of the neighbors of the n-th prime.

The programs for A087713, the canonical program `A087713.P7912838068299207614` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087713 has offset 1).

The definition of A087713 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A084920, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087713.P7912838068299207614

`A006530(A084920(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A087713

/-- `A006530(A084920(n+1))` -/
def P7912838068299207614.Spec : Prop :=
  ∀ n, P7912838068299207614.a n = A087713 (n + 1)

theorem P7912838068299207614.correct : P7912838068299207614.Spec := by
  intro n
  simp only [A087713, Nat.add_sub_cancel]

end A087713

/-! ## A087713.P6368701978885594032

`A006530(A006093(n+1)*A008864(n+1))`
-/

namespace A087713.P6368701978885594032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 1) * A008864 (n + 1)).toNat

end

end A087713.P6368701978885594032

namespace A087713

/-- `A006530(A006093(n+1)*A008864(n+1))` -/
def P6368701978885594032.Spec : Prop :=
  ∀ n, P6368701978885594032.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P9611164877740229539

`A006530((A000040(n+1)-1)*(A000040(n+1)+1))`
-/

namespace A087713.P9611164877740229539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A000040 (n + 1) - 1) * (A000040 (n + 1) + 1)).toNat

end

end A087713.P9611164877740229539

namespace A087713

/-- `A006530((A000040(n+1)-1)*(A000040(n+1)+1))` -/
def P9611164877740229539.Spec : Prop :=
  ∀ n, P9611164877740229539.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P13542409125439187033

`A076605(A000040(n+1))`
-/

namespace A087713.P13542409125439187033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A000040 (n + 1)).toNat

end

end A087713.P13542409125439187033

namespace A087713

/-- `A076605(A000040(n+1))` -/
def P13542409125439187033.Spec : Prop :=
  ∀ n, P13542409125439187033.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P2764286681369920911

`A076605(A008578(n+2))`
-/

namespace A087713.P2764286681369920911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A008578 (n + 2)).toNat

end

end A087713.P2764286681369920911

namespace A087713

/-- `A076605(A008578(n+2))` -/
def P2764286681369920911.Spec : Prop :=
  ∀ n, P2764286681369920911.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P18255547940151730980

`A076605(A182986(n+2))`
-/

namespace A087713.P18255547940151730980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A182986 (n + 2)).toNat

end

end A087713.P18255547940151730980

namespace A087713

/-- `A076605(A182986(n+2))` -/
def P18255547940151730980.Spec : Prop :=
  ∀ n, P18255547940151730980.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P16921012339946468942

`A076605(record[A074399(n+1)])`
-/

namespace A087713.P16921012339946468942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087713.P16921012339946468942

namespace A087713

/-- `A076605(record[A074399(n+1)])` -/
def P16921012339946468942.Spec : Prop :=
  ∀ n, P16921012339946468942.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P9305525643905057702

`A076605(record[A093074(n+1)])`
-/

namespace A087713.P9305525643905057702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087713.P9305525643905057702

namespace A087713

/-- `A076605(record[A093074(n+1)])` -/
def P9305525643905057702.Spec : Prop :=
  ∀ n, P9305525643905057702.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P8608080939726801670

`A076605(p?[A004277(n)+1])`
-/

namespace A087713.P8608080939726801670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A087713.P8608080939726801670

namespace A087713

/-- `A076605(p?[A004277(n)+1])` -/
def P8608080939726801670.Spec : Prop :=
  ∀ n, P8608080939726801670.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P17275088319056140915

`A076605(record[A006530(n+2)])`
-/

namespace A087713.P17275088319056140915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087713.P17275088319056140915

namespace A087713

/-- `A076605(record[A006530(n+2)])` -/
def P17275088319056140915.Spec : Prop :=
  ∀ n, P17275088319056140915.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P18065260648669828509

`A076605(record[A014963(n+2)])`
-/

namespace A087713.P18065260648669828509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087713.P18065260648669828509

namespace A087713

/-- `A076605(record[A014963(n+2)])` -/
def P18065260648669828509.Spec : Prop :=
  ∀ n, P18065260648669828509.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P12675365847915175789

`A076605(record[A020639(n+2)])`
-/

namespace A087713.P12675365847915175789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087713.P12675365847915175789

namespace A087713

/-- `A076605(record[A020639(n+2)])` -/
def P12675365847915175789.Spec : Prop :=
  ∀ n, P12675365847915175789.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P8761682226054721127

`A076605(record[A076605(2*n+3)])`
-/

namespace A087713.P8761682226054721127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087713.P8761682226054721127

namespace A087713

/-- `A076605(record[A076605(2*n+3)])` -/
def P8761682226054721127.Spec : Prop :=
  ∀ n, P8761682226054721127.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P12816314614930977438

`A006530(A275630(n+1))`
-/

namespace A087713.P12816314614930977438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A275630 (n + 1)).toNat

end

end A087713.P12816314614930977438

namespace A087713

/-- `A006530(A275630(n+1))` -/
def P12816314614930977438.Spec : Prop :=
  ∀ n, P12816314614930977438.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P3704041941147860539

`A006530(∏{p}[A084921(n+1), #])`
-/

namespace A087713.P3704041941147860539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A087713.P3704041941147860539

namespace A087713

/-- `A006530(∏{p}[A084921(n+1), #])` -/
def P3704041941147860539.Spec : Prop :=
  ∀ n, P3704041941147860539.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P17072737980014541084

`A006530(A035106(A039915(n+1)))`
-/

namespace A087713.P17072737980014541084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035106 (A039915 (n + 1)).toNat).toNat

end

end A087713.P17072737980014541084

namespace A087713

/-- `A006530(A035106(A039915(n+1)))` -/
def P17072737980014541084.Spec : Prop :=
  ∀ n, P17072737980014541084.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P2308707572319677265

`A006530(A142705(record[A006530(n+2)]))`
-/

namespace A087713.P2308707572319677265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A142705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A087713.P2308707572319677265

namespace A087713

/-- `A006530(A142705(record[A006530(n+2)]))` -/
def P2308707572319677265.Spec : Prop :=
  ∀ n, P2308707572319677265.a n = A087713 (n + 1)

end A087713

/-! ## A087713.P15866791667178336770

`A006530(∏{p}[A000040(n+1), A142705(#)])`
-/

namespace A087713.P15866791667178336770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A142705 p).toNat

end

end A087713.P15866791667178336770

namespace A087713

/-- `A006530(∏{p}[A000040(n+1), A142705(#)])` -/
def P15866791667178336770.Spec : Prop :=
  ∀ n, P15866791667178336770.a n = A087713 (n + 1)

end A087713

/-!
# A087715: Table read by rows where i-th row consists of primes P of the form P=j*P(i)# -1 or P=j*P(i)# +1 with 0 < j < P(i+1). Here P(r)# = A002110.

The programs for A087715, there is no canonical definition to state claims against.
-/

/-! ## A087715.P4437073904951626779

`A257658(char[2]+round(acot(n)+n))`
-/

namespace A087715.P4437073904951626779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257658 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A087715.P4437073904951626779

/-! ## A087715.P16261617050653771939

`p?[comp[2*(n+3)]+1-A156258(3*n+4)]`
-/

namespace A087715.P16261617050653771939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 : ℤ) - A156258 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087715.P16261617050653771939

/-! ## A087715.P15309219510641640849

`p?[A025766(n)%A240311(n)]`
-/

namespace A087715.P15309219510641640849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025766 n) (A240311 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087715.P15309219510641640849

/-! ## A087715.P9709272991816744942

`p?[abs(C(n, 6*n%2)-n)]`
-/

namespace A087715.P9709272991816744942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n (6 * (n % 2)) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087715.P9709272991816744942

/-! ## A087715.P8761710112889776882

`p?[or(1, A046021(n+1))]`
-/

namespace A087715.P8761710112889776882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046021 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087715.P8761710112889776882

/-!
# A087716: Base-2 pseudoprimes (see A001567) of the form j*p(i)# - p(k) or j*p(i)# + p(k), p(i) and p(k) primes with p(i) < p(k) < p(i+1)^2 and 0 < j < p(i+1).

The programs for A087716, there is no canonical definition to state claims against.
-/

/-! ## A087716.P6810492530465807007

`A050217(or(n, floor(2^(n-1)))+1)`
-/

namespace A087716.P6810492530465807007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (Int.lor (n : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat

end

end A087716.P6810492530465807007

/-!
# A087717: Start with x=n, then iterate the map x -> A322982(x) with A322982(x)=2*x-1 if x is noncomposite, otherwise A322982(x) = A032742(x), the largest proper divisor of x. If this iteration leads to a fixed point then a(n) is the value of that fixed point. If the iteration leads to a cycle, a(n) is the smallest value in the cycle. If the iteration never becomes periodic then a(n)=0.

The programs for A087717, there is no canonical definition to state claims against.
-/

/-! ## A087717.P10683593193829369789

`or(1, A020639((n+1)*A001399(A037145(n+1))))`
-/

namespace A087717.P10683593193829369789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 ((n + 1 : ℤ) * A001399 (A037145 (n + 1)).toNat).toNat)

end

end A087717.P10683593193829369789

/-!
# A087718: Semiprimes with greater factor less than twice the smaller factor.

The programs for A087718, the canonical program `A087718.P10827211373151360025` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087718 has offset 1).

The definition of A087718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 679 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087718.P15858392905903671631

`∩[A069899(n+1), A251728(n+1)]`
-/

namespace A087718.P15858392905903671631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087718.P15858392905903671631

namespace A087718

/-- `∩[A069899(n+1), A251728(n+1)]` -/
def P15858392905903671631.Spec : Prop :=
  ∀ n, (P15858392905903671631.a n : ℤ) = A087718 (n + 1)

end A087718

/-! ## A087718.P2565428806140816085

`∩[A081306(n+1), A251728(n+1)]`
-/

namespace A087718.P2565428806140816085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087718.P2565428806140816085

namespace A087718

/-- `∩[A081306(n+1), A251728(n+1)]` -/
def P2565428806140816085.Spec : Prop :=
  ∀ n, (P2565428806140816085.a n : ℤ) = A087718 (n + 1)

end A087718

/-! ## A087718.P1356856346355207860

`∩[A251728(n+1), A395790(n+1)]`
-/

namespace A087718.P1356856346355207860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087718.P1356856346355207860

namespace A087718

/-- `∩[A251728(n+1), A395790(n+1)]` -/
def P1356856346355207860.Spec : Prop :=
  ∀ n, (P1356856346355207860.a n : ℤ) = A087718 (n + 1)

end A087718

/-! ## A087718.P18334423799154392422

`filter[A069899(n+1), A064911(#)]`
-/

namespace A087718.P18334423799154392422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A087718.P18334423799154392422

namespace A087718

/-- `filter[A069899(n+1), A064911(#)]` -/
def P18334423799154392422.Spec : Prop :=
  ∀ n, P18334423799154392422.a n = A087718 (n + 1)

end A087718

/-! ## A087718.P15222339214602772693

`filter[A081306(n+1), A064911(#)]`
-/

namespace A087718.P15222339214602772693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A087718.P15222339214602772693

namespace A087718

/-- `filter[A081306(n+1), A064911(#)]` -/
def P15222339214602772693.Spec : Prop :=
  ∀ n, P15222339214602772693.a n = A087718 (n + 1)

end A087718

/-! ## A087718.P16472876067490779009

`filter[A069899(n+1), A353476(#)]`
-/

namespace A087718.P16472876067490779009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A087718.P16472876067490779009

namespace A087718

/-- `filter[A069899(n+1), A353476(#)]` -/
def P16472876067490779009.Spec : Prop :=
  ∀ n, P16472876067490779009.a n = A087718 (n + 1)

end A087718

/-! ## A087718.P821700268144092104

`filter[A081306(n+1), A353476(#)]`
-/

namespace A087718.P821700268144092104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A087718.P821700268144092104

namespace A087718

/-- `filter[A081306(n+1), A353476(#)]` -/
def P821700268144092104.Spec : Prop :=
  ∀ n, P821700268144092104.a n = A087718 (n + 1)

end A087718

/-! ## A087718.P1245206767880439407

`filter[A251728(n+1), A347950(#)]`
-/

namespace A087718.P1245206767880439407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A087718.P1245206767880439407

namespace A087718

/-- `filter[A251728(n+1), A347950(#)]` -/
def P1245206767880439407.Spec : Prop :=
  ∀ n, P1245206767880439407.a n = A087718 (n + 1)

end A087718

/-! ## A087718.P17749919851714418609

`filter[A395790(n+2), A064911(#)]`
-/

namespace A087718.P17749919851714418609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395790 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A087718.P17749919851714418609

namespace A087718

/-- `filter[A395790(n+2), A064911(#)]` -/
def P17749919851714418609.Spec : Prop :=
  ∀ n, P17749919851714418609.a n = A087718 (n + 1)

end A087718

/-! ## A087718.P3115292872132355908

`filter[A395790(n+2), A353476(#)]`
-/

namespace A087718.P3115292872132355908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395790 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A087718.P3115292872132355908

namespace A087718

/-- `filter[A395790(n+2), A353476(#)]` -/
def P3115292872132355908.Spec : Prop :=
  ∀ n, P3115292872132355908.a n = A087718 (n + 1)

end A087718

/-! ## A087718.P10827211373151360025

`lt[A348327(n+1), A064911(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A087718

/-- `lt[A348327(n+1), A064911(n+1)]+1` -/
def P10827211373151360025.Spec : Prop :=
  ∀ n, (P10827211373151360025.a n : ℤ) = A087718 (n + 1)

theorem P10827211373151360025.correct : P10827211373151360025.Spec := by
  intro n
  simp only [A087718, Nat.add_sub_cancel]

end A087718

/-! ## A087718.P5646265425719803680

`filter[A001358(n+1), A347950(#)]`
-/

namespace A087718.P5646265425719803680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A087718.P5646265425719803680

namespace A087718

/-- `filter[A001358(n+1), A347950(#)]` -/
def P5646265425719803680.Spec : Prop :=
  ∀ n, P5646265425719803680.a n = A087718 (n + 1)

end A087718

/-! ## A087718.P8540091723025504529

`filter[A176540(n+2), A347950(#)]`
-/

namespace A087718.P8540091723025504529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A087718.P8540091723025504529

namespace A087718

/-- `filter[A176540(n+2), A347950(#)]` -/
def P8540091723025504529.Spec : Prop :=
  ∀ n, P8540091723025504529.a n = A087718 (n + 1)

end A087718

/-! ## A087718.P3431554198758400733

`∩[A001358(n+1), A069899(n+1)]`
-/

namespace A087718.P3431554198758400733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087718.P3431554198758400733

namespace A087718

/-- `∩[A001358(n+1), A069899(n+1)]` -/
def P3431554198758400733.Spec : Prop :=
  ∀ n, (P3431554198758400733.a n : ℤ) = A087718 (n + 1)

end A087718

/-! ## A087718.P6195183460896039806

`∩[A001358(n+1), A081306(n+1)]`
-/

namespace A087718.P6195183460896039806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087718.P6195183460896039806

namespace A087718

/-- `∩[A001358(n+1), A081306(n+1)]` -/
def P6195183460896039806.Spec : Prop :=
  ∀ n, (P6195183460896039806.a n : ℤ) = A087718 (n + 1)

end A087718

/-! ## A087718.P7921675016055009587

`∩[A069899(n+1), A176540(n+1)]`
-/

namespace A087718.P7921675016055009587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087718.P7921675016055009587

namespace A087718

/-- `∩[A069899(n+1), A176540(n+1)]` -/
def P7921675016055009587.Spec : Prop :=
  ∀ n, (P7921675016055009587.a n : ℤ) = A087718 (n + 1)

end A087718

/-! ## A087718.P349346761077351145

`∩[A001358(n+1), A395790(n+1)]`
-/

namespace A087718.P349346761077351145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087718.P349346761077351145

namespace A087718

/-- `∩[A001358(n+1), A395790(n+1)]` -/
def P349346761077351145.Spec : Prop :=
  ∀ n, (P349346761077351145.a n : ℤ) = A087718 (n + 1)

end A087718

/-! ## A087718.P2127791450654188012

`record[A001358(n+1)%A001105(A084126(n+1))]`
-/

namespace A087718.P2127791450654188012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) (A001105 (A084126 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087718.P2127791450654188012

namespace A087718

/-- `record[A001358(n+1)%A001105(A084126(n+1))]` -/
def P2127791450654188012.Spec : Prop :=
  ∀ n, P2127791450654188012.a n = A087718 (n + 1)

end A087718

/-! ## A087718.P15424456931210577461

`filter[A071562(n+1), A064911(#)]`
-/

namespace A087718.P15424456931210577461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A087718.P15424456931210577461

namespace A087718

/-- `filter[A071562(n+1), A064911(#)]` -/
def P15424456931210577461.Spec : Prop :=
  ∀ n, P15424456931210577461.a n = A087718 (n + 1)

end A087718

/-! ## A087718.P4555901649355212133

`filter[A071562(n+1), A353476(#)]`
-/

namespace A087718.P4555901649355212133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A087718.P4555901649355212133

namespace A087718

/-- `filter[A071562(n+1), A353476(#)]` -/
def P4555901649355212133.Spec : Prop :=
  ∀ n, P4555901649355212133.a n = A087718 (n + 1)

end A087718

/-!
# A087719: Least number m such that the number of numbers k <= m with k > spf(k)^n exceeds the number of numbers with k <= spf(k)^n.

The programs for A087719, the canonical program `A087719.P17722521489382406220` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087719 has offset 1).

The definition of A087719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087719.P17722521489382406220

`3^(n+1)+3*2^(n+1)+6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087719

/-- `3^(n+1)+3*2^(n+1)+6` -/
def P17722521489382406220.Spec : Prop :=
  ∀ n, (P17722521489382406220.a n : ℤ) = A087719 (n + 1)

theorem P17722521489382406220.correct : P17722521489382406220.Spec := by
  intro n
  simp only [A087719, Nat.add_sub_cancel]

end A087719

/-! ## A087719.P2655547746414558966

`A254362(n+1)`
-/

namespace A087719.P2655547746414558966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254362 (n + 1)

end

end A087719.P2655547746414558966

namespace A087719

/-- `A254362(n+1)` -/
def P2655547746414558966.Spec : Prop :=
  ∀ n, P2655547746414558966.a n = A087719 (n + 1)

end A087719

/-! ## A087719.P10530124287269372622

`record[A254362(abs(1-n))]`
-/

namespace A087719.P10530124287269372622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254362 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087719.P10530124287269372622

namespace A087719

/-- `record[A254362(abs(1-n))]` -/
def P10530124287269372622.Spec : Prop :=
  ∀ n, P10530124287269372622.a n = A087719 (n + 1)

end A087719

/-!
# A087720: Repeated terms in A005185.

The programs for A087720, there is no canonical definition to state claims against.
-/

/-! ## A087720.P2429149441495878864

`eq[1, char[A005185(A081828(n+1))]]`
-/

namespace A087720.P2429149441495878864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A081828 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087720.P2429149441495878864

/-! ## A087720.P4841678017972335464

`lt[(char[A005185(A081828(2*n-n+1))]+1)%2, 1]`
-/

namespace A087720.P4841678017972335464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A081828 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A087720.P4841678017972335464

/-! ## A087720.P15570232894670790092

`record[A005185(A081828(n+1))]*A220420(2*n+1)`
-/

namespace A087720.P15570232894670790092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A081828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A220420 (2 * n + 1)

end

end A087720.P15570232894670790092

/-! ## A087720.P14594085556077130959

`record[A005185(A081828(n+1))]*A349137(2^n)`
-/

namespace A087720.P14594085556077130959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A081828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A349137 (2 ^ n)

end

end A087720.P14594085556077130959

/-!
# A087722: Strictly decreasing domain set of A005185.

The programs for A087722, there is no canonical definition to state claims against.
-/

/-! ## A087722.P14380913009880066066

`A132983(2*(n+1))+A132983(A051866(3*(n+1)))`
-/

namespace A087722.P14380913009880066066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132983 (2 * (n + 1)) + A132983 (A051866 (3 * (n + 1))).toNat

end

end A087722.P14380913009880066066

/-! ## A087722.P16557069786053189548

`lt[A160247(n+1), A161121(n+1)]`
-/

namespace A087722.P16557069786053189548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087722.P16557069786053189548

/-! ## A087722.P10269946964850422949

`A291812(A344882(n+2)+1)`
-/

namespace A087722.P10269946964850422949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A344882 (n + 2) + 1).toNat

end

end A087722.P10269946964850422949

/-! ## A087722.P2640530292852457040

`A291812(A344975(n+2)+1)`
-/

namespace A087722.P2640530292852457040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A344975 (n + 2) + 1).toNat

end

end A087722.P2640530292852457040

/-! ## A087722.P2675873620844819992

`A243436(n+1)+A243404(n+3)!`
-/

namespace A087722.P2675873620844819992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243436 (n + 1) + (Nat.factorial (A243404 (n + 3)).toNat : ℤ)

end

end A087722.P2675873620844819992

/-!
# A087723: Values that appear more than once in A087724 (related to the growth of PrimePi).

The programs for A087723, there is no canonical definition to state claims against.
-/

/-! ## A087723.P1132056763606217685

`record[gcd(A087724(n+2), A087724(n+3))]`
-/

namespace A087723.P1132056763606217685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087724 (n + 2)) (A087724 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087723.P1132056763606217685

/-!
# A087724: a(n) = -PrimePi(n) +floor( prime(n)/log(n))-2.

The programs for A087724, the canonical program `A087724.P15258222457833944806` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087724 has offset 2).

The definition of A087724 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A085581, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087724.P15258222457833944806

`A085581(n+2)-A000720(n+2)-2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087724

/-- `A085581(n+2)-A000720(n+2)-2` -/
def P15258222457833944806.Spec : Prop :=
  ∀ n, P15258222457833944806.a n = A087724 (n + 2)

theorem P15258222457833944806.correct : P15258222457833944806.Spec := by
  intro n
  simp only [A087724, Nat.add_sub_cancel]

end A087724

/-! ## A087724.P57962427323510439

`A213911(A146449(n+1))+A123108(n)`
-/

namespace A087724.P57962427323510439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A146449 (n + 1)).toNat + A123108 n

end

end A087724.P57962427323510439

namespace A087724

/-- `A213911(A146449(n+1))+A123108(n)` -/
def P57962427323510439.Spec : Prop :=
  ∀ n, P57962427323510439.a n = A087724 (n + 2)

end A087724

/-! ## A087724.P15235082250273345834

`abs(A115623(abs(2^(n+1)-n))-n)`
-/

namespace A087724.P15235082250273345834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A115623 |(2 ^ (n + 1) : ℤ) - (n : ℤ)|.toNat - (n : ℤ))|

end

end A087724.P15235082250273345834

namespace A087724

/-- `abs(A115623(abs(2^(n+1)-n))-n)` -/
def P15235082250273345834.Spec : Prop :=
  ∀ n, P15235082250273345834.a n = A087724 (n + 2)

end A087724

/-! ## A087724.P7798356264292055823

`A341025(A253145(n))+A004526(n)`
-/

namespace A087724.P7798356264292055823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A253145 n).toNat + 120) + A004526 n

end

end A087724.P7798356264292055823

namespace A087724

/-- `A341025(A253145(n))+A004526(n)` -/
def P7798356264292055823.Spec : Prop :=
  ∀ n, P7798356264292055823.a n = A087724 (n + 2)

end A087724

/-! ## A087724.P5962358549373624241

`A257564(A349803(n)+A325182(n))`
-/

namespace A087724.P5962358549373624241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A349803 n + A325182 n).toNat

end

end A087724.P5962358549373624241

namespace A087724

/-- `A257564(A349803(n)+A325182(n))` -/
def P5962358549373624241.Spec : Prop :=
  ∀ n, P5962358549373624241.a n = A087724 (n + 2)

end A087724

/-!
# A087726: Number of elements X in the matrix ring M_2(Z_n) such that X^2 == 0 mod n.

The programs for A087726, there is no canonical definition to state claims against.
-/

/-! ## A087726.P15449995381807992478

`(A326128(A187829(n+1))+n+1)*(n+1)`
-/

namespace A087726.P15449995381807992478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A326128 (A187829 (n + 1)).toNat + (n + 1 : ℤ)) * (n + 1 : ℤ)

end

end A087726.P15449995381807992478

/-! ## A087726.P15407258894409803364

`A001105(A187829(n+1))-A053143(n+1)`
-/

namespace A087726.P15407258894409803364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A187829 (n + 1)).toNat - A053143 (n + 1)

end

end A087726.P15407258894409803364

/-! ## A087726.P4254361604583086082

`A006530(A000108(A008833(n+1)))*A053143(n+1)`
-/

namespace A087726.P4254361604583086082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000108 (A008833 (n + 1)).toNat).toNat * A053143 (n + 1)

end

end A087726.P4254361604583086082

/-! ## A087726.P4128680760375442794

`2*A001222(Δ[A048489(n)])²-A053143(n+1)`
-/

namespace A087726.P4128680760375442794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (f1 (n + 1) - f1 n).toNat ^ 2 - A053143 (n + 1)

end

end A087726.P4128680760375442794

/-!
# A087727: Triangle read by rows: T(n,k) = (2 * (binomial(n,k)) * (n + 2 * k + 3)!)/((k + 1)! * (k + 2)! * (n + 3)!).

The programs for A087727, there is no canonical definition to state claims against.
-/

/-! ## A087727.P8023701340081447985

`A290252(4*A099627(n))`
-/

namespace A087727.P8023701340081447985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (4 * A099627 n).toNat

end

end A087727.P8023701340081447985

/-! ## A087727.P11896070634368703586

`A290252(lcm(4, A099627(n)))`
-/

namespace A087727.P11896070634368703586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (Int.lcm 4 (A099627 n))

end

end A087727.P11896070634368703586

/-! ## A087727.P14147683437202619786

`A290252(∑[4*A232089(n)])`
-/

namespace A087727.P14147683437202619786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A232089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087727.P14147683437202619786

/-!
# A087728: Table read by rows where i-th row consists of primes P of the form P=(j*P(i)#)^2 +1 with 0 < j < P(i+1). Here P(i)# = A002110(i).

The programs for A087728, there is no canonical definition to state claims against.
-/

/-! ## A087728.P11748847625703438200

`record[A089120(A060735(n+2))]`
-/

namespace A087728.P11748847625703438200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A060735 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087728.P11748847625703438200

/-! ## A087728.P717106960910615250

`record[gcd(A089120(n+2), A260187(n+2))]`
-/

namespace A087728.P717106960910615250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089120 (n + 2)) (A260187 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087728.P717106960910615250

/-! ## A087728.P3095946674285161833

`p?[A342702(n+2)²+1]`
-/

namespace A087728.P3095946674285161833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342702 (n + 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087728.P3095946674285161833

/-! ## A087728.P9680027976176677542

`p?[or(1, A060735(n+1)²)]`
-/

namespace A087728.P9680027976176677542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060735 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087728.P9680027976176677542

/-! ## A087728.P9332422983039278061

`p?[record[A089120(A342702(n+2))]]`
-/

namespace A087728.P9332422983039278061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A342702 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087728.P9332422983039278061

/-!
# A087729: Let X be the poset of finite subsets of the positive integers. The sequence is the number of downsets in X of cardinality n modulo equivalence by permutations of the positive integers.

The programs for A087729, there is no canonical definition to state claims against.
-/

/-! ## A087729.P17882905534567960104

`A329129(A329173(3*(n+1))+A329155(n))`
-/

namespace A087729.P17882905534567960104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329129 (A329173 (3 * (n + 1)) + A329155 n).toNat

end

end A087729.P17882905534567960104

/-! ## A087729.P5307001836266991012

`A109950(A111133(n+3)%A240695(3*n+4))`
-/

namespace A087729.P5307001836266991012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 (Int.tmod (A111133 (n + 3)) (A240695 (3 * n + 4))).toNat

end

end A087729.P5307001836266991012

/-!
# A087730: Values of j for A087651 and A087732.

The programs for A087730, there is no canonical definition to state claims against.
-/

/-! ## A087730.P17081662299329541650

`ceil(A087732(n+1)/A034386(A087731(n)))`
-/

namespace A087730.P17081662299329541650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087732 (n + 1) : ℚ) / (A034386 (A087731 n).toNat : ℚ)⌉

end

end A087730.P17081662299329541650

/-! ## A087730.P17014464364480027810

`ceil(A087732(n+1)/A002110(A088676(n+1)))`
-/

namespace A087730.P17014464364480027810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087732 (n + 1) : ℚ) / (A002110 (A088676 (n + 1)).toNat : ℚ)⌉

end

end A087730.P17014464364480027810

/-! ## A087730.P9872954642622342701

`round(A087732(n+1)/A331188(A087731(n)²))`
-/

namespace A087730.P9872954642622342701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087732 (n + 1) : ℚ) / (A331188 (A087731 n ^ 2).toNat : ℚ))

end

end A087730.P9872954642622342701

/-! ## A087730.P1310184610703016221

`ceil(A087732(n+1)/A087651(n))`
-/

namespace A087730.P1310184610703016221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087732 (n + 1) : ℚ) / (A087651 n : ℚ)⌉

end

end A087730.P1310184610703016221

/-! ## A087730.P11273649872566146353

`ceil(p?[A257658(n+1)-2]/A087651(n))`
-/

namespace A087730.P11273649872566146353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257658 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A087651 n : ℚ)⌉

end

end A087730.P11273649872566146353

/-!
# A087731: Values of P for A087651.

The programs for A087731, there is no canonical definition to state claims against.
-/

/-! ## A087731.P12813454940073788011

`A000040(A088676(n+1))`
-/

namespace A087731.P12813454940073788011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A088676 (n + 1)).toNat

end

end A087731.P12813454940073788011

/-! ## A087731.P17025139563047376100

`A008578(A088676(n+1)+1)`
-/

namespace A087731.P17025139563047376100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A088676 (n + 1) + 1).toNat

end

end A087731.P17025139563047376100

/-! ## A087731.P16532122114197903645

`A015919(A088676(n+1)+1)`
-/

namespace A087731.P16532122114197903645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A088676 (n + 1) + 1).toNat

end

end A087731.P16532122114197903645

/-! ## A087731.P15453460396801621191

`A182986(A088676(n+1)+1)`
-/

namespace A087731.P15453460396801621191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A088676 (n + 1) + 1).toNat

end

end A087731.P15453460396801621191

/-! ## A087731.P7090313763440076883

`A324050(A088676(n+1)+1)`
-/

namespace A087731.P7090313763440076883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A088676 (n + 1) + 1).toNat

end

end A087731.P7090313763440076883

/-! ## A087731.P3848051264031956373

`A073846(2*A088676(n+1))`
-/

namespace A087731.P3848051264031956373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A088676 (n + 1)).toNat

end

end A087731.P3848051264031956373

/-! ## A087731.P2205588923097863040

`A082500(2*A088676(n+1))`
-/

namespace A087731.P2205588923097863040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A088676 (n + 1)).toNat

end

end A087731.P2205588923097863040

/-! ## A087731.P3240535305250367152

`A207790(2*A088676(n+1))`
-/

namespace A087731.P3240535305250367152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A088676 (n + 1)).toNat

end

end A087731.P3240535305250367152

/-! ## A087731.P2963300981774696728

`∑{d}[A088676(n+1), A007444(#)]`
-/

namespace A087731.P2963300981774696728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A087731.P2963300981774696728

/-! ## A087731.P9533874844834121101

`gcd(A000038(n), A073579(A088676(n+1)))`
-/

namespace A087731.P9533874844834121101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A073579 (A088676 (n + 1)).toNat)

end

end A087731.P9533874844834121101

/-!
# A087732: Smaller of twin primes of the form P=j*P(i)#-1 and P=j*P(i)#+1 with 0 < j < P(i+1), where P(i) denotes i-th prime and P(i)# the i-th primorial number A002110(i).

The programs for A087732, there is no canonical definition to state claims against.
-/

/-! ## A087732.P1146261841159661158

`∩[A257658(n+1)-2, A257658(n+1)]`
-/

namespace A087732.P1146261841159661158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257658 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087732.P1146261841159661158

/-! ## A087732.P12245021475528451644

`A087730(n)*A108951(A087731(n))-1`
-/

namespace A087732.P12245021475528451644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087730 n * A108951 (A087731 n).toNat - 1

end

end A087732.P12245021475528451644

/-! ## A087732.P15536333847972759184

`A134824(n+2)+A087730(n)*A108951(A087731(n))`
-/

namespace A087732.P15536333847972759184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A087730 n * A108951 (A087731 n).toNat

end

end A087732.P15536333847972759184

/-! ## A087732.P10236957694807858543

`A168053(2*(n+1))%2+A087730(n)*A108951(A087731(n))`
-/

namespace A087732.P10236957694807858543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168053 (2 * (n + 1))) 2 + A087730 n * A108951 (A087731 n).toNat

end

end A087732.P10236957694807858543

/-! ## A087732.P4368372676192721549

`A087651(n)*A087730(n)-1`
-/

namespace A087732.P4368372676192721549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087651 n * A087730 n - 1

end

end A087732.P4368372676192721549

/-!
# A087733: Partial sums of A068639.

The programs for A087733, the canonical program `A087733.P866912799022919697` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087733 has offset 0).

The definition of A087733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087733.P866912799022919697

`∑[1-∑[-a(∑[n]%n)]]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087733

/-- `∑[1-∑[-a(∑[n]%n)]]` -/
def P866912799022919697.Spec : Prop :=
  ∀ n, P866912799022919697.a n = A087733 n

theorem P866912799022919697.correct : P866912799022919697.Spec := by
  intro n
  simp only [A087733]

end A087733

/-! ## A087733.P17977073757595627476

`∑[∑[(and(n, -n)+1)%3-1]]`
-/

namespace A087733.P17977073757595627476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ)) + 1) 3 - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P17977073757595627476

namespace A087733

/-- `∑[∑[(and(n, -n)+1)%3-1]]` -/
def P17977073757595627476.Spec : Prop :=
  ∀ n, P17977073757595627476.a n = A087733 n

end A087733

/-! ## A087733.P8142749912542160303

`∑[ceil(n/2-a(floor(n/2)))]` with `a(0)=0`
-/

namespace A087733.P8142749912542160303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌈(n : ℚ) / 2 - (f1 ⌊(n : ℚ) / 2⌋.toNat : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P8142749912542160303

namespace A087733

/-- `∑[ceil(n/2-a(floor(n/2)))]` -/
def P8142749912542160303.Spec : Prop :=
  ∀ n, P8142749912542160303.a n = A087733 n

end A087733

/-! ## A087733.P2131970808504032699

`∑[round(n/2-a(floor(n/2)))]` with `a(0)=0`
-/

namespace A087733.P2131970808504032699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2 - (f1 ⌊(n : ℚ) / 2⌋.toNat : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P2131970808504032699

namespace A087733

/-- `∑[round(n/2-a(floor(n/2)))]` -/
def P2131970808504032699.Spec : Prop :=
  ∀ n, P2131970808504032699.a n = A087733 n

end A087733

/-! ## A087733.P10550031771331162391

`∑[∑[(-a(n-1))^val(n, 2)]]` with `a(0)=0`
-/

namespace A087733.P10550031771331162391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (-f2 (n - 1)) ^ SequenceMachineLib.valuation n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P10550031771331162391

namespace A087733

/-- `∑[∑[(-a(n-1))^val(n, 2)]]` -/
def P10550031771331162391.Spec : Prop :=
  ∀ n, P10550031771331162391.a n = A087733 n

end A087733

/-! ## A087733.P661775728582852772

`∑[∑[n%2]-a(floor(n/2))]` with `a(0)=0`
-/

namespace A087733.P661775728582852772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P661775728582852772

namespace A087733

/-- `∑[∑[n%2]-a(floor(n/2))]` -/
def P661775728582852772.Spec : Prop :=
  ∀ n, P661775728582852772.a n = A087733 n

end A087733

/-! ## A087733.P5733471718073553267

`∑[∑[(-a(floor(n/2)))^(n-1)]]` with `a(0)=0`
-/

namespace A087733.P5733471718073553267
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  (-f2 ⌊(n : ℚ) / 2⌋.toNat) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P5733471718073553267

namespace A087733

/-- `∑[∑[(-a(floor(n/2)))^(n-1)]]` -/
def P5733471718073553267.Spec : Prop :=
  ∀ n, P5733471718073553267.a n = (A087733 n : ℚ)

end A087733

/-! ## A087733.P2068931123762201366

`∑[n-a(floor(n/2))-floor(n/2)]-1` with `a(0)=1, a(1)=1`
-/

namespace A087733.P2068931123762201366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A087733.P2068931123762201366

namespace A087733

/-- `∑[n-a(floor(n/2))-floor(n/2)]-1` -/
def P2068931123762201366.Spec : Prop :=
  ∀ n, P2068931123762201366.a n = A087733 n

end A087733

/-! ## A087733.P16428571175479972886

`∑[∑[(-1)^val(n+1, 2)]-(-1)^val(n+1, 2)]`
-/

namespace A087733.P16428571175479972886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P16428571175479972886

namespace A087733

/-- `∑[∑[(-1)^val(n+1, 2)]-(-1)^val(n+1, 2)]` -/
def P16428571175479972886.Spec : Prop :=
  ∀ n, P16428571175479972886.a n = A087733 n

end A087733

/-! ## A087733.P12204684655526916434

`∑[A068639(n)]`
-/

namespace A087733.P12204684655526916434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P12204684655526916434

namespace A087733

/-- `∑[A068639(n)]` -/
def P12204684655526916434.Spec : Prop :=
  ∀ n, P12204684655526916434.a n = A087733 n

end A087733

/-! ## A087733.P9830186418719851221

`∑[2*A050292(n)-n]`
-/

namespace A087733.P9830186418719851221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050292 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P9830186418719851221

namespace A087733

/-- `∑[2*A050292(n)-n]` -/
def P9830186418719851221.Spec : Prop :=
  ∀ n, P9830186418719851221.a n = A087733 n

end A087733

/-! ## A087733.P6654099618202888798

`∑[n-2*A123087(n)]`
-/

namespace A087733.P6654099618202888798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A123087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P6654099618202888798

namespace A087733

/-- `∑[n-2*A123087(n)]` -/
def P6654099618202888798.Spec : Prop :=
  ∀ n, P6654099618202888798.a n = A087733 n

end A087733

/-! ## A087733.P5714123646769220493

`∑[∑[abs(A292118(n))-1]]`
-/

namespace A087733.P5714123646769220493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292118 n| - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P5714123646769220493

namespace A087733

/-- `∑[∑[abs(A292118(n))-1]]` -/
def P5714123646769220493.Spec : Prop :=
  ∀ n, P5714123646769220493.a n = A087733 n

end A087733

/-! ## A087733.P7182836723916180667

`∑[∑[A309873(n+1)]-A309873(n+1)]`
-/

namespace A087733.P7182836723916180667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A309873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P7182836723916180667

namespace A087733

/-- `∑[∑[A309873(n+1)]-A309873(n+1)]` -/
def P7182836723916180667.Spec : Prop :=
  ∀ n, P7182836723916180667.a n = A087733 n

end A087733

/-! ## A087733.P8416651181985576752

`∑[n-A180125(2*n+1)]`
-/

namespace A087733.P8416651181985576752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A180125 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087733.P8416651181985576752

namespace A087733

/-- `∑[n-A180125(2*n+1)]` -/
def P8416651181985576752.Spec : Prop :=
  ∀ n, P8416651181985576752.a n = A087733 n

end A087733

/-!
# A087734: a(n) = f(f(n)), where f() = A035327().

The programs for A087734, the canonical program `A087734.P16870292659209363980` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087734 has offset 0).

The definition of A087734 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063250, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087734.P16870292659209363980

`(1-A036987(n-1))*(1+A063250(n)-A063250(n-1))*(1+a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087734

/-- `(1-A036987(n-1))*(1+A063250(n)-A063250(n-1))*(1+a(n-1))` -/
def P16870292659209363980.Spec : Prop :=
  ∀ n, P16870292659209363980.a n = A087734 n

theorem P16870292659209363980.correct : P16870292659209363980.Spec := by
  intro n
  simp only [A087734]

end A087734

/-! ## A087734.P17004038077986900420

`xor(char[2^n-1]+2*a(floor(n/2)), n%2)` with `a(0)=0`
-/

namespace A087734.P17004038077986900420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * a ⌊(n : ℚ) / 2⌋.toNat) (n % 2)

end

end A087734.P17004038077986900420

namespace A087734

/-- `xor(char[2^n-1]+2*a(floor(n/2)), n%2)` -/
def P17004038077986900420.Spec : Prop :=
  ∀ n, (P17004038077986900420.a n : ℤ) = A087734 n

end A087734

/-! ## A087734.P8491772110650431246

`n-A342126(n)`
-/

namespace A087734.P8491772110650431246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A342126 n

end

end A087734.P8491772110650431246

namespace A087734

/-- `n-A342126(n)` -/
def P8491772110650431246.Spec : Prop :=
  ∀ n, P8491772110650431246.a n = A087734 n

end A087734

/-! ## A087734.P17674502237478945003

`n%A000079(floor(log2(n+1-and(n, 2*n+1))))`
-/

namespace A087734.P17674502237478945003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000079 (Nat.log 2 ((n + 1 : ℤ) - (Nat.land n (2 * n + 1) : ℤ)).toNat))

end

end A087734.P17674502237478945003

namespace A087734

/-- `n%A000079(floor(log2(n+1-and(n, 2*n+1))))` -/
def P17674502237478945003.Spec : Prop :=
  ∀ n, P17674502237478945003.a n = A087734 n

end A087734

/-! ## A087734.P13416643904255694010

`n%A062383(A035327(n))`
-/

namespace A087734.P13416643904255694010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A062383 (A035327 n).toNat)

end

end A087734.P13416643904255694010

namespace A087734

/-- `n%A062383(A035327(n))` -/
def P13416643904255694010.Spec : Prop :=
  ∀ n, P13416643904255694010.a n = A087734 n

end A087734

/-! ## A087734.P10876707901223465818

`and(n, A233279(A038554(n)))`
-/

namespace A087734.P10876707901223465818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A233279 (A038554 n).toNat)

end

end A087734.P10876707901223465818

namespace A087734

/-- `and(n, A233279(A038554(n)))` -/
def P10876707901223465818.Spec : Prop :=
  ∀ n, P10876707901223465818.a n = A087734 n

end A087734

/-! ## A087734.P15308542675938852929

`n-A023758(∑[A340375(n)])`
-/

namespace A087734.P15308542675938852929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023758 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087734.P15308542675938852929

namespace A087734

/-- `n-A023758(∑[A340375(n)])` -/
def P15308542675938852929.Spec : Prop :=
  ∀ n, P15308542675938852929.a n = A087734 n

end A087734

/-! ## A087734.P16530502058974172154

`and(n, A001489(A342126(n)+1))`
-/

namespace A087734.P16530502058974172154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A001489 (A342126 n + 1).toNat)

end

end A087734.P16530502058974172154

namespace A087734

/-- `and(n, A001489(A342126(n)+1))` -/
def P16530502058974172154.Spec : Prop :=
  ∀ n, P16530502058974172154.a n = A087734 n

end A087734

/-! ## A087734.P1113303741207587501

`and(n, A283167(A342126(n)+1))`
-/

namespace A087734.P1113303741207587501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A283167 (A342126 n + 1).toNat)

end

end A087734.P1113303741207587501

namespace A087734

/-- `and(n, A283167(A342126(n)+1))` -/
def P1113303741207587501.Spec : Prop :=
  ∀ n, P1113303741207587501.a n = A087734 n

end A087734

/-! ## A087734.P16308667209181804045

`and(n, A302436(A342126(n)+1))`
-/

namespace A087734.P16308667209181804045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A302436 (A342126 n + 1).toNat)

end

end A087734.P16308667209181804045

namespace A087734

/-- `and(n, A302436(A342126(n)+1))` -/
def P16308667209181804045.Spec : Prop :=
  ∀ n, P16308667209181804045.a n = A087734 n

end A087734

/-! ## A087734.P1505019187152917149

`and(n, A003817(A003817(n)-n))`
-/

namespace A087734.P1505019187152917149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A003817 (A003817 n - (n : ℤ)).toNat)

end

end A087734.P1505019187152917149

namespace A087734

/-- `and(n, A003817(A003817(n)-n))` -/
def P1505019187152917149.Spec : Prop :=
  ∀ n, P1505019187152917149.a n = A087734 n

end A087734

/-! ## A087734.P1668067065505684433

`A053645(A122155(n+1-A006257(n)))`
-/

namespace A087734.P1668067065505684433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A122155 ((n + 1 : ℤ) - A006257 n).toNat).toNat

end

end A087734.P1668067065505684433

namespace A087734

/-- `A053645(A122155(n+1-A006257(n)))` -/
def P1668067065505684433.Spec : Prop :=
  ∀ n, P1668067065505684433.a n = A087734 n

end A087734

/-! ## A087734.P1117747252999612997

`(1-A036987(n))*A035327(A035327(n))`
-/

namespace A087734.P1117747252999612997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A036987 n) * A035327 (A035327 n).toNat

end

end A087734.P1117747252999612997

namespace A087734

/-- `(1-A036987(n))*A035327(A035327(n))` -/
def P1117747252999612997.Spec : Prop :=
  ∀ n, P1117747252999612997.a n = A087734 n

end A087734

/-! ## A087734.P7451373929680284075

`A003817(A038554(n))+n-A003817(n)`
-/

namespace A087734.P7451373929680284075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A038554 n).toNat + ((n : ℤ) - A003817 n)

end

end A087734.P7451373929680284075

namespace A087734

/-- `A003817(A038554(n))+n-A003817(n)` -/
def P7451373929680284075.Spec : Prop :=
  ∀ n, P7451373929680284075.a n = A087734 n

end A087734

/-! ## A087734.P15626035398267193219

`A035327(A035327(n)+n*A036987(n))`
-/

namespace A087734.P15626035398267193219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A035327 n + (n : ℤ) * A036987 n).toNat

end

end A087734.P15626035398267193219

namespace A087734

/-- `A035327(A035327(n)+n*A036987(n))` -/
def P15626035398267193219.Spec : Prop :=
  ∀ n, P15626035398267193219.a n = A087734 n

end A087734

/-! ## A087734.P8631496123212115241

`A003817(A035327(n))%(A035327(n+1)+1)`
-/

namespace A087734.P8631496123212115241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003817 (A035327 n).toNat) (A035327 (n + 1) + 1)

end

end A087734.P8631496123212115241

namespace A087734

/-- `A003817(A035327(n))%(A035327(n+1)+1)` -/
def P8631496123212115241.Spec : Prop :=
  ∀ n, P8631496123212115241.a n = A087734 n

end A087734

/-! ## A087734.P3300278394266663354

`1-A006257(n)+n-A057427(n)-A006257(A035327(n))`
-/

namespace A087734.P3300278394266663354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006257 n + (n : ℤ) - A057427 n - A006257 (A035327 n).toNat

end

end A087734.P3300278394266663354

namespace A087734

/-- `1-A006257(n)+n-A057427(n)-A006257(A035327(n))` -/
def P3300278394266663354.Spec : Prop :=
  ∀ n, P3300278394266663354.a n = A087734 n

end A087734

/-! ## A087734.P9557546455832364830

`n-and(n, A381852(n))`
-/

namespace A087734.P9557546455832364830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A381852 n)

end

end A087734.P9557546455832364830

namespace A087734

/-- `n-and(n, A381852(n))` -/
def P9557546455832364830.Spec : Prop :=
  ∀ n, P9557546455832364830.a n = A087734 n

end A087734

/-! ## A087734.P8123521029242837306

`A035327(A010078(n+1)-n)/2`
-/

namespace A087734.P8123521029242837306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035327 (A010078 (n + 1) - (n : ℤ)).toNat : ℚ) / 2

end

end A087734.P8123521029242837306

namespace A087734

/-- `A035327(A010078(n+1)-n)/2` -/
def P8123521029242837306.Spec : Prop :=
  ∀ n, P8123521029242837306.a n = (A087734 n : ℚ)

end A087734

/-! ## A087734.P11457030744275559268

`A383593(2*n)-A004760(n+2)`
-/

namespace A087734.P11457030744275559268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383593 (2 * n) - A004760 (n + 2)

end

end A087734.P11457030744275559268

namespace A087734

/-- `A383593(2*n)-A004760(n+2)` -/
def P11457030744275559268.Spec : Prop :=
  ∀ n, P11457030744275559268.a n = A087734 n

end A087734

/-!
# A087735: Array read by antidiagonals: T(n,k) = o(n,k), where o(,) is a binary operation arising from counting the elements that are sums of m squares in a field of characteristic not equal to 2.

The programs for A087735, there is no canonical definition to state claims against.
-/

/-! ## A087735.P1866297448644713568

`A081611(A374560(n))`
-/

namespace A087735.P1866297448644713568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A374560 n).toNat

end

end A087735.P1866297448644713568

/-! ## A087735.P5216747278240359925

`log2(A140513(n)/A307433(n))`
-/

namespace A087735.P5216747278240359925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A140513 n : ℚ) / (A307433 n : ℚ) : ℝ)

end

end A087735.P5216747278240359925

/-! ## A087735.P313960194013108649

`A002024(n+1)-log2(A307433(n))`
-/

namespace A087735.P313960194013108649
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℝ) - Real.logb 2 (A307433 n : ℝ)

end

end A087735.P313960194013108649

/-! ## A087735.P8226094067949139081

`A000005(A137688(n)/A307433(n))`
-/

namespace A087735.P8226094067949139081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A137688 n : ℚ) / (A307433 n : ℚ))).toNat

end

end A087735.P8226094067949139081

/-! ## A087735.P11810035321505779596

`A001222(A140513(n)/A307433(n))`
-/

namespace A087735.P11810035321505779596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A140513 n : ℚ) / (A307433 n : ℚ))).toNat

end

end A087735.P11810035321505779596

/-! ## A087735.P10562670944272259758

`A007814(A140513(n)/A307433(n))`
-/

namespace A087735.P10562670944272259758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A140513 n : ℚ) / (A307433 n : ℚ))).toNat

end

end A087735.P10562670944272259758

/-! ## A087735.P14059342258641022137

`A001222(A137688(n)/A307433(n))+1`
-/

namespace A087735.P14059342258641022137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A137688 n : ℚ) / (A307433 n : ℚ))).toNat + 1

end

end A087735.P14059342258641022137

/-! ## A087735.P7796608563712780530

`A000005(A140513(n)/A307433(n))-1`
-/

namespace A087735.P7796608563712780530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A140513 n : ℚ) / (A307433 n : ℚ))).toNat - 1

end

end A087735.P7796608563712780530

/-! ## A087735.P16609089348621510894

`A001222(2*A137688(n)/A307433(n))`
-/

namespace A087735.P16609089348621510894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * ((A137688 n : ℚ) / (A307433 n : ℚ)))).toNat

end

end A087735.P16609089348621510894

/-! ## A087735.P9994167490420301232

`A000005(A140513(n)/(2*A307433(n)))`
-/

namespace A087735.P9994167490420301232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A140513 n : ℚ) / (2 * A307433 n : ℚ))).toNat

end

end A087735.P9994167490420301232

/-!
# A087737: Value of (n,n+1) concatenated in binary representation.

The programs for A087737, the canonical program `A087737.P13738301560501439751` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087737 has offset 1).

The definition of A087737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087737.P13738301560501439751

`A391588(n+2)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087737

/-- `A391588(n+2)+1` -/
def P13738301560501439751.Spec : Prop :=
  ∀ n, P13738301560501439751.a n = A087737 (n + 1)

theorem P13738301560501439751.correct : P13738301560501439751.Spec := by
  intro n
  simp only [A087737, Nat.add_sub_cancel]

end A087737

/-! ## A087737.P2774615219886740321

`(A004277(∑[A135416(n+1)]+1)+2)*(n+1)-n`
-/

namespace A087737.P2774615219886740321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + 2) * (n + 1 : ℤ) - (n : ℤ)

end

end A087737.P2774615219886740321

namespace A087737

/-- `(A004277(∑[A135416(n+1)]+1)+2)*(n+1)-n` -/
def P2774615219886740321.Spec : Prop :=
  ∀ n, P2774615219886740321.a n = A087737 (n + 1)

end A087737

/-! ## A087737.P17497234057180156445

`(n+1)*A076877(n+2)+1`
-/

namespace A087737.P17497234057180156445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076877 (n + 2) + 1

end

end A087737.P17497234057180156445

namespace A087737

/-- `(n+1)*A076877(n+2)+1` -/
def P17497234057180156445.Spec : Prop :=
  ∀ n, P17497234057180156445.a n = A087737 (n + 1)

end A087737

/-! ## A087737.P13429062211275017798

`(n+1)*(A206332(n+2)-n)+1`
-/

namespace A087737.P13429062211275017798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A206332 (n + 2) - (n : ℤ)) + 1

end

end A087737.P13429062211275017798

namespace A087737

/-- `(n+1)*(A206332(n+2)-n)+1` -/
def P13429062211275017798.Spec : Prop :=
  ∀ n, P13429062211275017798.a n = A087737 (n + 1)

end A087737

/-! ## A087737.P13223815174065498521

`A020330(n+2)+1-A076877(n+2)`
-/

namespace A087737.P13223815174065498521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 2) + (1 - A076877 (n + 2))

end

end A087737.P13223815174065498521

namespace A087737

/-- `A020330(n+2)+1-A076877(n+2)` -/
def P13223815174065498521.Spec : Prop :=
  ∀ n, P13223815174065498521.a n = A087737 (n + 1)

end A087737

/-! ## A087737.P16261515250455906154

`A004754(n+2)+A020330(n+2)-A004756(n+2)`
-/

namespace A087737.P16261515250455906154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 2) + (A020330 (n + 2) - A004756 (n + 2))

end

end A087737.P16261515250455906154

namespace A087737

/-- `A004754(n+2)+A020330(n+2)-A004756(n+2)` -/
def P16261515250455906154.Spec : Prop :=
  ∀ n, P16261515250455906154.a n = A087737 (n + 1)

end A087737

/-! ## A087737.P1875916508818490820

`A004755(n+2)+A020330(n+2)-A004757(n+2)`
-/

namespace A087737.P1875916508818490820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 2) + (A020330 (n + 2) - A004757 (n + 2))

end

end A087737.P1875916508818490820

namespace A087737

/-- `A004755(n+2)+A020330(n+2)-A004757(n+2)` -/
def P1875916508818490820.Spec : Prop :=
  ∀ n, P1875916508818490820.a n = A087737 (n + 1)

end A087737

/-! ## A087737.P268093361858085441

`A004756(n+2)+A020330(n+2)-A004758(n+2)`
-/

namespace A087737.P268093361858085441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 2) + (A020330 (n + 2) - A004758 (n + 2))

end

end A087737.P268093361858085441

namespace A087737

/-- `A004756(n+2)+A020330(n+2)-A004758(n+2)` -/
def P268093361858085441.Spec : Prop :=
  ∀ n, P268093361858085441.a n = A087737 (n + 1)

end A087737

/-! ## A087737.P10953623195633778378

`A004757(n+2)+A020330(n+2)-A004759(n+2)`
-/

namespace A087737.P10953623195633778378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 2) + (A020330 (n + 2) - A004759 (n + 2))

end

end A087737.P10953623195633778378

namespace A087737

/-- `A004757(n+2)+A020330(n+2)-A004759(n+2)` -/
def P10953623195633778378.Spec : Prop :=
  ∀ n, P10953623195633778378.a n = A087737 (n + 1)

end A087737

/-! ## A087737.P9852734907925097270

`(A062383(n+2)+1)*(n+1)+1`
-/

namespace A087737.P9852734907925097270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062383 (n + 2) + 1) * (n + 1 : ℤ) + 1

end

end A087737.P9852734907925097270

namespace A087737

/-- `(A062383(n+2)+1)*(n+1)+1` -/
def P9852734907925097270.Spec : Prop :=
  ∀ n, P9852734907925097270.a n = A087737 (n + 1)

end A087737

/-! ## A087737.P11646866024739094873

`A020330(n+2)-A062383(n+2)`
-/

namespace A087737.P11646866024739094873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 2) - A062383 (n + 2)

end

end A087737.P11646866024739094873

namespace A087737

/-- `A020330(n+2)-A062383(n+2)` -/
def P11646866024739094873.Spec : Prop :=
  ∀ n, P11646866024739094873.a n = A087737 (n + 1)

end A087737

/-! ## A087737.P13711037773015779608

`A020330(n+2)-A053644(A076877(n+2))`
-/

namespace A087737.P13711037773015779608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 2) - A053644 (A076877 (n + 2)).toNat

end

end A087737.P13711037773015779608

namespace A087737

/-- `A020330(n+2)-A053644(A076877(n+2))` -/
def P13711037773015779608.Spec : Prop :=
  ∀ n, P13711037773015779608.a n = A087737 (n + 1)

end A087737

/-! ## A087737.P15711824479481126709

`A020330(n+2)-A053644(A004754(n+2))`
-/

namespace A087737.P15711824479481126709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 2) - A053644 (A004754 (n + 2)).toNat

end

end A087737.P15711824479481126709

namespace A087737

/-- `A020330(n+2)-A053644(A004754(n+2))` -/
def P15711824479481126709.Spec : Prop :=
  ∀ n, P15711824479481126709.a n = A087737 (n + 1)

end A087737

/-!
# A087738: Square array: T(n,k) gives n-th number a such that a^(2^k)+1 is prime (a generalized Fermat).

The programs for A087738, there is no canonical definition to state claims against.
-/

/-! ## A087738.P4326246936686800168

`p?[A064989(A253565(n))]-1`
-/

namespace A087738.P4326246936686800168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A253565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A087738.P4326246936686800168

/-! ## A087738.P4562114265175132909

`A105560(A182946(n+1))-1`
-/

namespace A087738.P4562114265175132909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A182946 (n + 1)).toNat - 1

end

end A087738.P4562114265175132909

/-! ## A087738.P514513935538163235

`A104887(n+1)-A350529(∑[n]-n)`
-/

namespace A087738.P514513935538163235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1) - A350529 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A087738.P514513935538163235

/-! ## A087738.P4489386642533636956

`(A104887(n+1)-1)%A338606(n+1)`
-/

namespace A087738.P4489386642533636956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104887 (n + 1) - 1) (A338606 (n + 1))

end

end A087738.P4489386642533636956

/-! ## A087738.P3968128307978306021

`A006093(A025581(n)%A227946(n)+1)`
-/

namespace A087738.P3968128307978306021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (Int.tmod (A025581 n) (A227946 n) + 1).toNat

end

end A087738.P3968128307978306021

/-!
# A087739: a(1)=1; a(2)=2; for n > 2, a(n) satisfies a(S(n))=n and a(k)=n-1 for S(n-1) < k < S(n) where S(n) = a(1) + a(2) + ... + a(n).

The programs for A087739, there is no canonical definition to state claims against.
-/

/-! ## A087739.P8662961227914783536

`floor((a(n-1)+n)^sin(59))` with `a(0)=1, a(1)=2`
-/

namespace A087739.P8662961227914783536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) + (n : ℤ) : ℝ) ^ (Real.sin (59 : ℝ))⌋

end

end A087739.P8662961227914783536

/-! ## A087739.P9937124787756155268

`a(n-a(a(n-1)))+1` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A087739.P9937124787756155268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2] fun n a =>
  a (n - a (a (n - 1))) + 1

end

end A087739.P9937124787756155268

/-! ## A087739.P7800338017298787825

`A001462(C(2, n)+n)`
-/

namespace A087739.P7800338017298787825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Nat.choose 2 n + n)

end

end A087739.P7800338017298787825

/-! ## A087739.P11918612583826206119

`A001462(or(n, C(2, n)))`
-/

namespace A087739.P11918612583826206119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Nat.lor n (Nat.choose 2 n))

end

end A087739.P11918612583826206119

/-! ## A087739.P10196731676254271201

`A001462(xor(n, C(2, n)))`
-/

namespace A087739.P10196731676254271201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Nat.xor n (Nat.choose 2 n))

end

end A087739.P10196731676254271201

/-! ## A087739.P149357532354281417

`ceil(A302588(n)^acot(3))`
-/

namespace A087739.P149357532354281417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A302588 n : ℝ) ^ (SequenceMachineLib.acot (3 : ℝ))⌉

end

end A087739.P149357532354281417

/-! ## A087739.P10493089687394975106

`A001462(char[n²]+n)`
-/

namespace A087739.P10493089687394975106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A087739.P10493089687394975106

/-! ## A087739.P1575605505155006158

`A319951(a(n-1)+n)` with `a(0)=1, a(1)=2`
-/

namespace A087739.P1575605505155006158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A319951 (a (n - 1) + (n : ℤ)).toNat

end

end A087739.P1575605505155006158

/-! ## A087739.P743122663033848540

`Δ[A109512(n)-floor(sqrt(n²+4))]`
-/

namespace A087739.P743122663033848540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 n - (Nat.sqrt (n ^ 2 + 4) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087739.P743122663033848540

/-! ## A087739.P16103885840225214792

`A227177(A129632(n+1))`
-/

namespace A087739.P16103885840225214792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A129632 (n + 1)).toNat

end

end A087739.P16103885840225214792

/-!
# A087740: a(n) = 1 + abs(A004001(A005185(n)) - A005185(A004001(n))).

The programs for A087740, the canonical program `A087740.P1760384295398479918` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087740 has offset 1).

The definition of A087740 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+abs(A004001(A005185(n+1))-A005185(A004001(n+1)))` (program `A087740.P1760384295398479918`, by `A087740.P1760384295398479918.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087740.P1760384295398479918

`1+abs(A004001(A005185(n+1))-A005185(A004001(n+1)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087740

/-- `1+abs(A004001(A005185(n+1))-A005185(A004001(n+1)))` -/
def P1760384295398479918.Spec : Prop :=
  ∀ n, P1760384295398479918.a n = A087740 (n + 1)

theorem P1760384295398479918.correct : P1760384295398479918.Spec := by
  intro n
  simp only [A087740, Nat.add_sub_cancel]

end A087740

/-! ## A087740.P1972890352423012478

`A014675(A263528(n)-A053615(n))`
-/

namespace A087740.P1972890352423012478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A263528 n - A053615 n).toNat

end

end A087740.P1972890352423012478

namespace A087740

/-- `A014675(A263528(n)-A053615(n))` -/
def P1972890352423012478.Spec : Prop :=
  ∀ n, P1972890352423012478.a n = A087740 (n + 1)

end A087740

/-! ## A087740.P5228674634916464334

`A329683(A028422(A078651(n+1)²))`
-/

namespace A087740.P5228674634916464334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 (A028422 (A078651 (n + 1) ^ 2).toNat).toNat

end

end A087740.P5228674634916464334

namespace A087740

/-- `A329683(A028422(A078651(n+1)²))` -/
def P5228674634916464334.Spec : Prop :=
  ∀ n, P5228674634916464334.a n = A087740 (n + 1)

end A087740

/-! ## A087740.P7356737757857048627

`A165070(A054540(n)-A189920(2*n+5))`
-/

namespace A087740.P7356737757857048627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165070 (A054540 n - A189920 (2 * n + 5)).toNat

end

end A087740.P7356737757857048627

namespace A087740

/-- `A165070(A054540(n)-A189920(2*n+5))` -/
def P7356737757857048627.Spec : Prop :=
  ∀ n, P7356737757857048627.a n = A087740 (n + 1)

end A087740

/-! ## A087740.P265314914049547376

`A183015(A328398(n)+1)`
-/

namespace A087740.P265314914049547376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183015 (A328398 n + 1).toNat

end

end A087740.P265314914049547376

namespace A087740

/-- `A183015(A328398(n)+1)` -/
def P265314914049547376.Spec : Prop :=
  ∀ n, P265314914049547376.a n = A087740 (n + 1)

end A087740

/-!
# A087741: a(n) = 1+Abs[A000040[A004001[n]]-A004001[A000040[n]]].

The programs for A087741, the canonical program `A087741.P5047443471400051868` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087741 has offset 1).

The definition of A087741 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087741.P5047443471400051868

`1+abs(A000040(A004001(n+1))-A004001(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087741

/-- `1+abs(A000040(A004001(n+1))-A004001(A000040(n+1)))` -/
def P5047443471400051868.Spec : Prop :=
  ∀ n, P5047443471400051868.a n = A087741 (n + 1)

theorem P5047443471400051868.correct : P5047443471400051868.Spec := by
  intro n
  simp only [A087741, Nat.add_sub_cancel]

end A087741

/-! ## A087741.P15932298061923327092

`A007895(A094349(n+4)+A094342(n+4))`
-/

namespace A087741.P15932298061923327092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A094349 (n + 4) + A094342 (n + 4)).toNat

end

end A087741.P15932298061923327092

namespace A087741

/-- `A007895(A094349(n+4)+A094342(n+4))` -/
def P15932298061923327092.Spec : Prop :=
  ∀ n, P15932298061923327092.a n = A087741 (n + 1)

end A087741

/-! ## A087741.P10708233585132774502

`A275024((A096917(3*(n+1))-n)²+n)`
-/

namespace A087741.P10708233585132774502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 ((A096917 (3 * (n + 1)) - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A087741.P10708233585132774502

namespace A087741

/-- `A275024((A096917(3*(n+1))-n)²+n)` -/
def P10708233585132774502.Spec : Prop :=
  ∀ n, P10708233585132774502.a n = A087741 (n + 1)

end A087741

/-! ## A087741.P1610292213260350718

`A000120(A002828(n+3)*A222878(n+1))`
-/

namespace A087741.P1610292213260350718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002828 (n + 3) * A222878 (n + 1)).toNat

end

end A087741.P1610292213260350718

namespace A087741

/-- `A000120(A002828(n+3)*A222878(n+1))` -/
def P1610292213260350718.Spec : Prop :=
  ∀ n, P1610292213260350718.a n = A087741 (n + 1)

end A087741

/-!
# A087743: Numbers m >= 3 with property that the remainder when m is divided by k (for 3 <= k <= m-2) is not 1.

The programs for A087743, there is no canonical definition to state claims against.
-/

/-! ## A087743.P3359594331003704037

`eq[1, (n+1-∑{d}[1-n, #])²]`
-/

namespace A087743.P3359594331003704037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f3 n).natAbs, d : ℕ) : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087743.P3359594331003704037

/-! ## A087743.P13544523331844368347

`record[∑{d}[n+2, #-n]+2*n]`
-/

namespace A087743.P13544523331844368347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - (n : ℤ)) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087743.P13544523331844368347

/-! ## A087743.P17706566607469405358

`record[∑{p}[n-1, #-(n+2)]+n+3]`
-/

namespace A087743.P17706566607469405358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, ((p : ℤ) - (n + 2 : ℤ)) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087743.P17706566607469405358

/-! ## A087743.P8324249447897742750

`record[A036288(n+2)]`
-/

namespace A087743.P8324249447897742750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087743.P8324249447897742750

/-! ## A087743.P10775850053792003103

`record[A122416(n+2)]`
-/

namespace A087743.P10775850053792003103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087743.P10775850053792003103

/-! ## A087743.P6212947452224092423

`A175787(n+1)+1`
-/

namespace A087743.P6212947452224092423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1) + 1

end

end A087743.P6212947452224092423

/-! ## A087743.P6958033697074189247

`A046022(n+2)+1`
-/

namespace A087743.P6958033697074189247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2) + 1

end

end A087743.P6958033697074189247

/-! ## A087743.P3490294652875979486

`A068499(n+1)+2`
-/

namespace A087743.P3490294652875979486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1) + 2

end

end A087743.P3490294652875979486

/-! ## A087743.P1921013181152978412

`eq[1, A167866(n)]+1`
-/

namespace A087743.P1921013181152978412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A087743.P1921013181152978412

/-! ## A087743.P11501076332749762773

`lt[A325830(n), n]+1`
-/

namespace A087743.P11501076332749762773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325830 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A087743.P11501076332749762773

/-!
# A087744: Binary and decimal representation of n concatenated.

The programs for A087744, there is no canonical definition to state claims against.
-/

/-! ## A087744.P18187623037678806114

`A099820(A032555(n+1))+1+n`
-/

namespace A087744.P18187623037678806114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A032555 (n + 1)).toNat + 1 + (n : ℤ)

end

end A087744.P18187623037678806114

/-! ## A087744.P16423094167301515715

`A099820(A032559(n+1))+1+n`
-/

namespace A087744.P16423094167301515715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A032559 (n + 1)).toNat + 1 + (n : ℤ)

end

end A087744.P16423094167301515715

/-! ## A087744.P10609230508690760606

`A193415(A134810(n+1)+1)+n`
-/

namespace A087744.P10609230508690760606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193415 (A134810 (n + 1) + 1).toNat + (n : ℤ)

end

end A087744.P10609230508690760606

/-! ## A087744.P3778988523388302870

`A193415(A193412(n+1)+1)+n`
-/

namespace A087744.P3778988523388302870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193415 (A193412 (n + 1) + 1).toNat + (n : ℤ)

end

end A087744.P3778988523388302870

/-! ## A087744.P6316323668813756244

`A235489(A007088(2*n+3))+n`
-/

namespace A087744.P6316323668813756244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A007088 (2 * n + 3)).toNat + (n : ℤ)

end

end A087744.P6316323668813756244

/-!
# A087745: Numbers A001317 repeated.

The programs for A087745, the canonical program `A087745.P15266154555943106725` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087745 has offset 0).

The definition of A087745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087745.P15266154555943106725

`a(n-2)+2*a(and(n, n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087745

/-- `a(n-2)+2*a(and(n, n-2))` -/
def P15266154555943106725.Spec : Prop :=
  ∀ n, (P15266154555943106725.a n : ℤ) = A087745 n

theorem P15266154555943106725.correct : P15266154555943106725.Spec := by
  intro n
  simp only [A087745]

end A087745

/-! ## A087745.P15838608282122298722

`A001317(floor(n/2))`
-/

namespace A087745.P15838608282122298722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 ⌊(n : ℚ) / 2⌋.toNat

end

end A087745.P15838608282122298722

namespace A087745

/-- `A001317(floor(n/2))` -/
def P15838608282122298722.Spec : Prop :=
  ∀ n, P15838608282122298722.a n = A087745 n

end A087745

/-! ## A087745.P17840169581765428060

`A366264(A109763(n+1))`
-/

namespace A087745.P17840169581765428060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366264 (A109763 (n + 1)).toNat

end

end A087745.P17840169581765428060

namespace A087745

/-- `A366264(A109763(n+1))` -/
def P17840169581765428060.Spec : Prop :=
  ∀ n, P17840169581765428060.a n = A087745 n

end A087745

/-! ## A087745.P17288524338655476920

`xor(2*a(n-2), a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A087745.P17288524338655476920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor (2 * a (n - 2)) (a (n - 2))

end

end A087745.P17288524338655476920

namespace A087745

/-- `xor(2*a(n-2), a(n-2))` -/
def P17288524338655476920.Spec : Prop :=
  ∀ n, (P17288524338655476920.a n : ℤ) = A087745 n

end A087745

/-! ## A087745.P14706245326370640600

`xor(lcm(2, a(n-2)), a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A087745.P14706245326370640600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor (Nat.lcm 2 (a (n - 2))) (a (n - 2))

end

end A087745.P14706245326370640600

namespace A087745

/-- `xor(lcm(2, a(n-2)), a(n-2))` -/
def P14706245326370640600.Spec : Prop :=
  ∀ n, (P14706245326370640600.a n : ℤ) = A087745 n

end A087745

/-! ## A087745.P14827966757576396726

`xor(a(n-2)/sqrt(1/4), a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A087745.P14827966757576396726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 2) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ))) (a (n - 2))

end

end A087745.P14827966757576396726

namespace A087745

/-- `xor(a(n-2)/sqrt(1/4), a(n-2))` -/
def P14827966757576396726.Spec : Prop :=
  ∀ n, P14827966757576396726.a n = A087745 n

end A087745

/-! ## A087745.P12152301640866277071

`xor(a(n-2)+a(n-2), a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A087745.P12152301640866277071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor (a (n - 2) + a (n - 2)) (a (n - 2))

end

end A087745.P12152301640866277071

namespace A087745

/-- `xor(a(n-2)+a(n-2), a(n-2))` -/
def P12152301640866277071.Spec : Prop :=
  ∀ n, (P12152301640866277071.a n : ℤ) = A087745 n

end A087745

/-! ## A087745.P16445567511017737101

`A100735(n)/A100735(A008619(n)-1)`
-/

namespace A087745.P16445567511017737101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100735 n : ℚ) / (A100735 (A008619 n - 1).toNat : ℚ)

end

end A087745.P16445567511017737101

namespace A087745

/-- `A100735(n)/A100735(A008619(n)-1)` -/
def P16445567511017737101.Spec : Prop :=
  ∀ n, P16445567511017737101.a n = (A087745 n : ℚ)

end A087745

/-! ## A087745.P3199220352790354385

`A277819(A008805(n))`
-/

namespace A087745.P3199220352790354385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A008805 n).toNat

end

end A087745.P3199220352790354385

namespace A087745

/-- `A277819(A008805(n))` -/
def P3199220352790354385.Spec : Prop :=
  ∀ n, P3199220352790354385.a n = A087745 n

end A087745

/-! ## A087745.P3422369367425213913

`A087756(n-and(1, n))`
-/

namespace A087745.P3422369367425213913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087756 (n - Nat.land 1 n)

end

end A087745.P3422369367425213913

namespace A087745

/-- `A087756(n-and(1, n))` -/
def P3422369367425213913.Spec : Prop :=
  ∀ n, P3422369367425213913.a n = A087745 n

end A087745

/-!
# A087747: Least number expressible as a sum of two distinct primes in exactly n ways.

The programs for A087747, there is no canonical definition to state claims against.
-/

/-! ## A087747.P15925027545705452209

`A078648(n+1)-A000038(A004442(n))`
-/

namespace A087747.P15925027545705452209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078648 (n + 1) - A000038 (A004442 n).toNat

end

end A087747.P15925027545705452209

/-! ## A087747.P8034288661263964048

`A078648(n+1)-A000038(A007599(n))`
-/

namespace A087747.P8034288661263964048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078648 (n + 1) - A000038 (A007599 n).toNat

end

end A087747.P8034288661263964048

/-! ## A087747.P14571163600216995755

`A078648(n+1)-A000038(A008611(n))`
-/

namespace A087747.P14571163600216995755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078648 (n + 1) - A000038 (A008611 n).toNat

end

end A087747.P14571163600216995755

/-! ## A087747.P9853843509229655681

`A078648(n+1)-A000038(A008624(n))`
-/

namespace A087747.P9853843509229655681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078648 (n + 1) - A000038 (A008624 n).toNat

end

end A087747.P9853843509229655681

/-! ## A087747.P15753334074169253963

`A072511(n+1)+A072511((n+1)%A072511(n))`
-/

namespace A087747.P15753334074169253963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072511 (n + 1) + A072511 (Int.tmod (n + 1 : ℤ) (A072511 n)).toNat

end

end A087747.P15753334074169253963

/-! ## A087747.P3218124377121293181

`A298990(2*(n+1))+A298990(2*(n+1))%A053662(2*n+1)`
-/

namespace A087747.P3218124377121293181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 (2 * (n + 1)) + Int.tmod (A298990 (2 * (n + 1))) (A053662 (2 * n + 1))

end

end A087747.P3218124377121293181

/-! ## A087747.P9953101759427997675

`A014963(A001316(n))*A298990(A051755(n+2))`
-/

namespace A087747.P9953101759427997675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A298990 (A051755 (n + 2)).toNat

end

end A087747.P9953101759427997675

/-! ## A087747.P2385259909671014266

`A141310(A325401(n))*A298990(A051755(n+2))`
-/

namespace A087747.P2385259909671014266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A325401 n).toNat * A298990 (A051755 (n + 2)).toNat

end

end A087747.P2385259909671014266

/-! ## A087747.P10180665582013304870

`A073611(2*(n+1))`
-/

namespace A087747.P10180665582013304870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073611 (2 * (n + 1))

end

end A087747.P10180665582013304870

/-! ## A087747.P8640277781163165462

`filter[A073611(2*n), A043545(#)]`
-/

namespace A087747.P8640277781163165462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A087747.P8640277781163165462

/-! ## A087747.P13246169952772522789

`filter[A073611(2*n), A072608(#)]`
-/

namespace A087747.P13246169952772522789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072608 (f1 j).toNat = 1) n)

end

end A087747.P13246169952772522789

/-! ## A087747.P2509210761988840535

`filter[A073611(2*n), A091247(#)]`
-/

namespace A087747.P2509210761988840535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A087747.P2509210761988840535

/-! ## A087747.P3815839296413768764

`filter[A073611(2*n), A254377(#)]`
-/

namespace A087747.P3815839296413768764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254377 (f1 j).toNat = 1) n)

end

end A087747.P3815839296413768764

/-! ## A087747.P2859693648390514964

`filter[A073611(2*n), A267442(#)]`
-/

namespace A087747.P2859693648390514964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A087747.P2859693648390514964

/-! ## A087747.P15762814152676003664

`filter[A073611(2*n), A284893(#)]`
-/

namespace A087747.P15762814152676003664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284893 (f1 j).toNat = 1) n)

end

end A087747.P15762814152676003664

/-! ## A087747.P3102166849929186708

`filter[A073611(2*n), A285383(#)]`
-/

namespace A087747.P3102166849929186708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285383 (f1 j).toNat = 1) n)

end

end A087747.P3102166849929186708

/-! ## A087747.P16379223582585942305

`filter[A073611(2*n), A288132(#)]`
-/

namespace A087747.P16379223582585942305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288132 (f1 j).toNat = 1) n)

end

end A087747.P16379223582585942305

/-! ## A087747.P2520051205461609842

`filter[A073611(2*n), A324732(#)]`
-/

namespace A087747.P2520051205461609842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324732 (f1 j).toNat = 1) n)

end

end A087747.P2520051205461609842

/-! ## A087747.P1918561275368094198

`filter[A073611(2*n), A358224(#)]`
-/

namespace A087747.P1918561275368094198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358224 (f1 j).toNat = 1) n)

end

end A087747.P1918561275368094198

/-!
# A087748: Triangle formed by reading triangle of Stirling numbers of the first kind (A048994) mod 2.

The programs for A087748, the canonical program `A087748.P14719700054015883806` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087748 has offset 0).

The definition of A087748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087748.P14719700054015883806

`A098158(n)%2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A087748

/-- `A098158(n)%2` -/
def P14719700054015883806.Spec : Prop :=
  ∀ n, P14719700054015883806.a n = A087748 n

theorem P14719700054015883806.correct : P14719700054015883806.Spec := by
  intro n
  simp only [A087748]

end A087748

/-! ## A087748.P16311103892518911395

`A103633(n)%2`
-/

namespace A087748.P16311103892518911395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103633 n) 2

end

end A087748.P16311103892518911395

namespace A087748

/-- `A103633(n)%2` -/
def P16311103892518911395.Spec : Prop :=
  ∀ n, P16311103892518911395.a n = A087748 n

end A087748

/-! ## A087748.P11873428942722455818

`A117317(n)%2`
-/

namespace A087748.P11873428942722455818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117317 n) 2

end

end A087748.P11873428942722455818

namespace A087748

/-- `A117317(n)%2` -/
def P11873428942722455818.Spec : Prop :=
  ∀ n, P11873428942722455818.a n = A087748 n

end A087748

/-! ## A087748.P3443134408117900675

`A207543(n)%2`
-/

namespace A087748.P3443134408117900675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207543 n) 2

end

end A087748.P3443134408117900675

namespace A087748

/-- `A207543(n)%2` -/
def P3443134408117900675.Spec : Prop :=
  ∀ n, P3443134408117900675.a n = A087748 n

end A087748

/-! ## A087748.P17153868047193209254

`A152815(∑[2*n]%comp[∑[n]])%2`
-/

namespace A087748.P17153868047193209254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152815 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)) 2

end

end A087748.P17153868047193209254

namespace A087748

/-- `A152815(∑[2*n]%comp[∑[n]])%2` -/
def P17153868047193209254.Spec : Prop :=
  ∀ n, P17153868047193209254.a n = A087748 n

end A087748

/-! ## A087748.P2309586665052570988

`A122848(n)%2`
-/

namespace A087748.P2309586665052570988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122848 n) 2

end

end A087748.P2309586665052570988

namespace A087748

/-- `A122848(n)%2` -/
def P2309586665052570988.Spec : Prop :=
  ∀ n, P2309586665052570988.a n = A087748 n

end A087748

/-! ## A087748.P16753932658994842656

`A075438(A133280(n))`
-/

namespace A087748.P16753932658994842656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075438 (A133280 n).toNat

end

end A087748.P16753932658994842656

namespace A087748

/-- `A075438(A133280(n))` -/
def P16753932658994842656.Spec : Prop :=
  ∀ n, P16753932658994842656.a n = A087748 n

end A087748

/-! ## A087748.P7893249998491912248

`A075438(A176693(n+1))`
-/

namespace A087748.P7893249998491912248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075438 (A176693 (n + 1)).toNat

end

end A087748.P7893249998491912248

namespace A087748

/-- `A075438(A176693(n+1))` -/
def P7893249998491912248.Spec : Prop :=
  ∀ n, P7893249998491912248.a n = A087748 n

end A087748

/-! ## A087748.P13642826502732716090

`and(A056594(2*n+1)!, A098158(n))`
-/

namespace A087748.P13642826502732716090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A056594 (2 * n + 1)).toNat : ℤ) (A098158 n)

end

end A087748.P13642826502732716090

namespace A087748

/-- `and(A056594(2*n+1)!, A098158(n))` -/
def P13642826502732716090.Spec : Prop :=
  ∀ n, P13642826502732716090.a n = A087748 n

end A087748

/-! ## A087748.P13107584334066423718

`and(1-A118175(2*n+1), A207617(2*n+1))`
-/

namespace A087748.P13107584334066423718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A118175 (2 * n + 1)) (A207617 (2 * n + 1))

end

end A087748.P13107584334066423718

namespace A087748

/-- `and(1-A118175(2*n+1), A207617(2*n+1))` -/
def P13107584334066423718.Spec : Prop :=
  ∀ n, P13107584334066423718.a n = A087748 n

end A087748

/-! ## A087748.P3166663773560017061

`A344855(n)%2`
-/

namespace A087748.P3166663773560017061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344855 n) 2

end

end A087748.P3166663773560017061

namespace A087748

/-- `A344855(n)%2` -/
def P3166663773560017061.Spec : Prop :=
  ∀ n, P3166663773560017061.a n = A087748 n

end A087748

/-! ## A087748.P15877052378350668682

`and(1, A094646(n))`
-/

namespace A087748.P15877052378350668682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A094646 n)

end

end A087748.P15877052378350668682

namespace A087748

/-- `and(1, A094646(n))` -/
def P15877052378350668682.Spec : Prop :=
  ∀ n, P15877052378350668682.a n = A087748 n

end A087748

/-! ## A087748.P18112225480297230959

`A132393(n)%2`
-/

namespace A087748.P18112225480297230959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132393 n) 2

end

end A087748.P18112225480297230959

namespace A087748

/-- `A132393(n)%2` -/
def P18112225480297230959.Spec : Prop :=
  ∀ n, P18112225480297230959.a n = A087748 n

end A087748

/-! ## A087748.P15794121583693359090

`A348191(n)%2`
-/

namespace A087748.P15794121583693359090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348191 n) 2

end

end A087748.P15794121583693359090

namespace A087748

/-- `A348191(n)%2` -/
def P15794121583693359090.Spec : Prop :=
  ∀ n, P15794121583693359090.a n = A087748 n

end A087748

/-! ## A087748.P1662924191015818347

`and(1, A048994(n))`
-/

namespace A087748.P1662924191015818347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048994 n)

end

end A087748.P1662924191015818347

namespace A087748

/-- `and(1, A048994(n))` -/
def P1662924191015818347.Spec : Prop :=
  ∀ n, P1662924191015818347.a n = A087748 n

end A087748

/-! ## A087748.P10572661671361105257

`(A048994(n)%A000032(C(n, n+1)))²`
-/

namespace A087748.P10572661671361105257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048994 n) (A000032 (Nat.choose n (n + 1))) ^ 2

end

end A087748.P10572661671361105257

namespace A087748

/-- `(A048994(n)%A000032(C(n, n+1)))²` -/
def P10572661671361105257.Spec : Prop :=
  ∀ n, P10572661671361105257.a n = A087748 n

end A087748

/-! ## A087748.P9524416763991363467

`A187247(n)%2`
-/

namespace A087748.P9524416763991363467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187247 n) 2

end

end A087748.P9524416763991363467

namespace A087748

/-- `A187247(n)%2` -/
def P9524416763991363467.Spec : Prop :=
  ∀ n, P9524416763991363467.a n = A087748 n

end A087748

/-! ## A087748.P7356815124864487426

`A087755(A185868(n+1))`
-/

namespace A087748.P7356815124864487426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087755 (A185868 (n + 1)).toNat

end

end A087748.P7356815124864487426

namespace A087748

/-- `A087755(A185868(n+1))` -/
def P7356815124864487426.Spec : Prop :=
  ∀ n, P7356815124864487426.a n = A087748 n

end A087748

/-! ## A087748.P9878963060583453419

`and(1, A049444(n))`
-/

namespace A087748.P9878963060583453419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049444 n)

end

end A087748.P9878963060583453419

namespace A087748

/-- `and(1, A049444(n))` -/
def P9878963060583453419.Spec : Prop :=
  ∀ n, P9878963060583453419.a n = A087748 n

end A087748

/-! ## A087748.P7122955753658990839

`and(1, A049459(n))`
-/

namespace A087748.P7122955753658990839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049459 n)

end

end A087748.P7122955753658990839

namespace A087748

/-- `and(1, A049459(n))` -/
def P7122955753658990839.Spec : Prop :=
  ∀ n, P7122955753658990839.a n = A087748 n

end A087748

/-!
# A087749: Primes p such that 6^p - 5^p is composite.

The programs for A087749, there is no canonical definition to state claims against.
-/

/-! ## A087749.P17015192109927501984

`A000040(lt[A331257(2*(n+1)), A006046(n)])`
-/

namespace A087749.P17015192109927501984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331257 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087749.P17015192109927501984

/-! ## A087749.P8444889101801308661

`p?[A083920(A279244(n+1))]`
-/

namespace A087749.P8444889101801308661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A279244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087749.P8444889101801308661

/-! ## A087749.P17551896620156350242

`∩[A113029(n+1), A299493(n)]`
-/

namespace A087749.P17551896620156350242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087749.P17551896620156350242

/-! ## A087749.P10436615989971994661

`p?[A129972(A255430(n+1))+n]`
-/

namespace A087749.P10436615989971994661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129972 (A255430 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087749.P10436615989971994661

/-! ## A087749.P11124105526095268093

`∩[A090432(n+1), A092460(n+1)]`
-/

namespace A087749.P11124105526095268093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087749.P11124105526095268093

/-!
# A087750: Number of partitions of n into numbers of the form 2^i - 2^j with i > j.

The programs for A087750, there is no canonical definition to state claims against.
-/

/-! ## A087750.P14059867847724761555

`A069907(n)+record[A199016(A347794(n))]`
-/

namespace A087750.P14059867847724761555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199016 (A347794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069907 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087750.P14059867847724761555

/-! ## A087750.P15275676677029246063

`A341131(n+1)-A295659(A175006(3*n+1))`
-/

namespace A087750.P15275676677029246063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341131 (n + 1 + 10) - A295659 (A175006 (3 * n + 1)).toNat

end

end A087750.P15275676677029246063

/-! ## A087750.P5264543601211959890

`∑[A345377(A240121(n+1))]`
-/

namespace A087750.P5264543601211959890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345377 (A240121 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087750.P5264543601211959890

/-! ## A087750.P9924922253416617076

`A106744(A218507(n)+A064986(n+1))`
-/

namespace A087750.P9924922253416617076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A218507 n + A064986 (n + 1)).toNat

end

end A087750.P9924922253416617076

/-! ## A087750.P1402213185341838053

`A000726(n+3)-A326702(A017077(n))`
-/

namespace A087750.P1402213185341838053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (n + 3) - A326702 (A017077 n).toNat

end

end A087750.P1402213185341838053

/-!
# A087751: Weighted sum of the harmonic numbers.

The programs for A087751, there is no canonical definition to state claims against.
-/

/-! ## A087751.P6230620588028156371

`A131222(∑[n]+1)+2*n*a(n-1)` with `a(0)=0`
-/

namespace A087751.P6230620588028156371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131222 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2 * ((n : ℤ) * a (n - 1))

end

end A087751.P6230620588028156371

/-! ## A087751.P2284148160591505968

`record[A199660(n)-A199660(n+1)]+2*n*a(n-1)` with `a(0)=0`
-/

namespace A087751.P2284148160591505968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 n - A199660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * ((n : ℤ) * a (n - 1))

end

end A087751.P2284148160591505968

/-! ## A087751.P5311671373921585446

`A355257(lt[A154929(n), 2])+2*n*a(n-1)` with `a(0)=0`
-/

namespace A087751.P5311671373921585446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154929 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A355257 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 2 * ((n : ℤ) * a (n - 1))

end

end A087751.P5311671373921585446

/-!
# A087752: Powers of 49.

The programs for A087752, the canonical program `A087752.P9313098847540107125` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087752 has offset 0).

The definition of A087752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087752.P9313098847540107125

`49^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087752

/-- `49^n` -/
def P9313098847540107125.Spec : Prop :=
  ∀ n, (P9313098847540107125.a n : ℤ) = A087752 n

theorem P9313098847540107125.correct : P9313098847540107125.Spec := by
  intro n
  simp only [A087752]

end A087752

/-!
# A087754: a(n) = (C(2p,p)-2) / p^3, where p = prime(n).

The programs for A087754, there is no canonical definition to state claims against.
-/

/-! ## A087754.P17359479580584231490

`2*A034602(n+3)`
-/

namespace A087754.P17359479580584231490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034602 (n + 3)

end

end A087754.P17359479580584231490

/-! ## A087754.P1764043023297497359

`A060842(n+3)/A000040(n+3)`
-/

namespace A087754.P1764043023297497359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060842 (n + 3) : ℚ) / (A000040 (n + 3) : ℚ)

end

end A087754.P1764043023297497359

/-! ## A087754.P15616723611886281454

`lcm(2, or(A034602(n+3), A292547(n)))`
-/

namespace A087754.P15616723611886281454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.lor (A034602 (n + 3)) (A292547 n))

end

end A087754.P15616723611886281454

/-! ## A087754.P1259392323519192949

`lcm(A020639(A055235(n)), A034602(n+3))`
-/

namespace A087754.P1259392323519192949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A055235 n).toNat) (A034602 (n + 3))

end

end A087754.P1259392323519192949

/-! ## A087754.P384554720144699992

`A034602(n+3)+or(A034602(n+3), A285383(n+1))`
-/

namespace A087754.P384554720144699992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034602 (n + 3) + Int.lor (A034602 (n + 3)) (A285383 (n + 1))

end

end A087754.P384554720144699992

/-!
# A087755: Triangle read by rows: Stirling numbers of the first kind (A008275) mod 2.

The programs for A087755, the canonical program `A087755.P10889702025143067399` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087755 has offset 1).

The definition of A087755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087755.P10889702025143067399

`A098157(n)%2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A087755

/-- `A098157(n)%2` -/
def P10889702025143067399.Spec : Prop :=
  ∀ n, P10889702025143067399.a n = A087755 (n + 1)

theorem P10889702025143067399.correct : P10889702025143067399.Spec := by
  intro n
  simp only [A087755, Nat.add_sub_cancel]

end A087755

/-! ## A087755.P729493760164964809

`A165241(n)%2`
-/

namespace A087755.P729493760164964809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165241 n) 2

end

end A087755.P729493760164964809

namespace A087755

/-- `A165241(n)%2` -/
def P729493760164964809.Spec : Prop :=
  ∀ n, P729493760164964809.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P14812428781517487217

`and(1, A124645(n))`
-/

namespace A087755.P14812428781517487217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A124645 n)

end

end A087755.P14812428781517487217

namespace A087755

/-- `and(1, A124645(n))` -/
def P14812428781517487217.Spec : Prop :=
  ∀ n, P14812428781517487217.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P13919843116884482659

`A000007(A322512(n+1))`
-/

namespace A087755.P13919843116884482659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A322512 (n + 1)).toNat

end

end A087755.P13919843116884482659

namespace A087755

/-- `A000007(A322512(n+1))` -/
def P13919843116884482659.Spec : Prop :=
  ∀ n, P13919843116884482659.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P12104444107285110647

`and(A064645(n), A098157(n))`
-/

namespace A087755.P12104444107285110647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064645 n) (A098157 n)

end

end A087755.P12104444107285110647

namespace A087755

/-- `and(A064645(n), A098157(n))` -/
def P12104444107285110647.Spec : Prop :=
  ∀ n, P12104444107285110647.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P4197146746008539532

`A087748(comp[∑[n]])`
-/

namespace A087755.P4197146746008539532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087748 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A087755.P4197146746008539532

namespace A087755

/-- `A087748(comp[∑[n]])` -/
def P4197146746008539532.Spec : Prop :=
  ∀ n, P4197146746008539532.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P8207690938870566820

`A049403(n+1)%2`
-/

namespace A087755.P8207690938870566820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049403 (n + 1)) 2

end

end A087755.P8207690938870566820

namespace A087755

/-- `A049403(n+1)%2` -/
def P8207690938870566820.Spec : Prop :=
  ∀ n, P8207690938870566820.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P9665648806973519666

`and(A026835(n+1), A049403(n+1))`
-/

namespace A087755.P9665648806973519666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026835 (n + 1)) (A049403 (n + 1))

end

end A087755.P9665648806973519666

namespace A087755

/-- `and(A026835(n+1), A049403(n+1))` -/
def P9665648806973519666.Spec : Prop :=
  ∀ n, P9665648806973519666.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P2856552991952783952

`and(A027199(n+1), A049403(n+1))`
-/

namespace A087755.P2856552991952783952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027199 (n + 1)) (A049403 (n + 1))

end

end A087755.P2856552991952783952

namespace A087755

/-- `and(A027199(n+1), A049403(n+1))` -/
def P2856552991952783952.Spec : Prop :=
  ∀ n, P2856552991952783952.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P7283520668762925652

`and(1, A104556(n))`
-/

namespace A087755.P7283520668762925652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A104556 n)

end

end A087755.P7283520668762925652

namespace A087755

/-- `and(1, A104556(n))` -/
def P7283520668762925652.Spec : Prop :=
  ∀ n, P7283520668762925652.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P16979909848497931569

`A075439(2*(n+1))`
-/

namespace A087755.P16979909848497931569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075439 (2 * (n + 1))

end

end A087755.P16979909848497931569

namespace A087755

/-- `A075439(2*(n+1))` -/
def P16979909848497931569.Spec : Prop :=
  ∀ n, P16979909848497931569.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P8104655424065670601

`A075438(A118011(n+1))`
-/

namespace A087755.P8104655424065670601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075438 (A118011 (n + 1)).toNat

end

end A087755.P8104655424065670601

namespace A087755

/-- `A075438(A118011(n+1))` -/
def P8104655424065670601.Spec : Prop :=
  ∀ n, P8104655424065670601.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P407642513565592956

`A075438(A157502(n+1))`
-/

namespace A087755.P407642513565592956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075438 (A157502 (n + 1)).toNat

end

end A087755.P407642513565592956

namespace A087755

/-- `A075438(A157502(n+1))` -/
def P407642513565592956.Spec : Prop :=
  ∀ n, P407642513565592956.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P415823499154425033

`A049410(n+1)%2`
-/

namespace A087755.P415823499154425033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049410 (n + 1)) 2

end

end A087755.P415823499154425033

namespace A087755

/-- `A049410(n+1)%2` -/
def P415823499154425033.Spec : Prop :=
  ∀ n, P415823499154425033.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P10753972511090079576

`and(1, A370518(n))`
-/

namespace A087755.P10753972511090079576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A370518 n)

end

end A087755.P10753972511090079576

namespace A087755

/-- `and(1, A370518(n))` -/
def P10753972511090079576.Spec : Prop :=
  ∀ n, P10753972511090079576.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P14945557201946189550

`and(1, A094645(n))`
-/

namespace A087755.P14945557201946189550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A094645 n)

end

end A087755.P14945557201946189550

namespace A087755

/-- `and(1, A094645(n))` -/
def P14945557201946189550.Spec : Prop :=
  ∀ n, P14945557201946189550.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P12032921826441513046

`and(1, A105793(n))`
-/

namespace A087755.P12032921826441513046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A105793 n)

end

end A087755.P12032921826441513046

namespace A087755

/-- `and(1, A105793(n))` -/
def P12032921826441513046.Spec : Prop :=
  ∀ n, P12032921826441513046.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P9137990826340093340

`A079639(n+1)%A094284(n+1)`
-/

namespace A087755.P9137990826340093340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079639 (n + 1)) (A094284 (n + 1))

end

end A087755.P9137990826340093340

namespace A087755

/-- `A079639(n+1)%A094284(n+1)` -/
def P9137990826340093340.Spec : Prop :=
  ∀ n, P9137990826340093340.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P5206151208220967648

`A130534(n)%2`
-/

namespace A087755.P5206151208220967648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130534 n) 2

end

end A087755.P5206151208220967648

namespace A087755

/-- `A130534(n)%2` -/
def P5206151208220967648.Spec : Prop :=
  ∀ n, P5206151208220967648.a n = A087755 (n + 1)

end A087755

/-! ## A087755.P16577842162946803689

`and(1, A123361(n))`
-/

namespace A087755.P16577842162946803689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A123361 n)

end

end A087755.P16577842162946803689

namespace A087755

/-- `and(1, A123361(n))` -/
def P16577842162946803689.Spec : Prop :=
  ∀ n, P16577842162946803689.a n = A087755 (n + 1)

end A087755

/-!
# A087756: a(n) = A087745(n+1).

The programs for A087756, the canonical program `A087756.P1217633419180058466` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087756 has offset 0).

The definition of A087756 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087745, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087756.P1217633419180058466

`A087745(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087756

/-- `A087745(n+1)` -/
def P1217633419180058466.Spec : Prop :=
  ∀ n, P1217633419180058466.a n = A087756 n

theorem P1217633419180058466.correct : P1217633419180058466.Spec := by
  intro n
  simp only [A087756]

end A087756

/-! ## A087756.P44550408163360335

`xor(2*a(n-2), a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A087756.P44550408163360335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor (2 * a (n - 2)) (a (n - 2))

end

end A087756.P44550408163360335

namespace A087756

/-- `xor(2*a(n-2), a(n-2))` -/
def P44550408163360335.Spec : Prop :=
  ∀ n, (P44550408163360335.a n : ℤ) = A087756 n

end A087756

/-! ## A087756.P7334184756008133678

`xor(lcm(2, a(n-2)), a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A087756.P7334184756008133678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor (Nat.lcm 2 (a (n - 2))) (a (n - 2))

end

end A087756.P7334184756008133678

namespace A087756

/-- `xor(lcm(2, a(n-2)), a(n-2))` -/
def P7334184756008133678.Spec : Prop :=
  ∀ n, (P7334184756008133678.a n : ℤ) = A087756 n

end A087756

/-! ## A087756.P2670678979738804559

`xor(a(n-2)/sqrt(1/4), a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A087756.P2670678979738804559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 2) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ))) (a (n - 2))

end

end A087756.P2670678979738804559

namespace A087756

/-- `xor(a(n-2)/sqrt(1/4), a(n-2))` -/
def P2670678979738804559.Spec : Prop :=
  ∀ n, P2670678979738804559.a n = A087756 n

end A087756

/-! ## A087756.P5536354642745102146

`xor(a(n-2)+a(n-2), a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A087756.P5536354642745102146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor (a (n - 2) + a (n - 2)) (a (n - 2))

end

end A087756.P5536354642745102146

namespace A087756

/-- `xor(a(n-2)+a(n-2), a(n-2))` -/
def P5536354642745102146.Spec : Prop :=
  ∀ n, (P5536354642745102146.a n : ℤ) = A087756 n

end A087756

/-! ## A087756.P16689360565511068157

`A001317(ceil(n/2))`
-/

namespace A087756.P16689360565511068157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 ⌈(n : ℚ) / 2⌉.toNat

end

end A087756.P16689360565511068157

namespace A087756

/-- `A001317(ceil(n/2))` -/
def P16689360565511068157.Spec : Prop :=
  ∀ n, P16689360565511068157.a n = A087756 n

end A087756

/-! ## A087756.P14112368270939631795

`A053576(∑[char[2*n+1]])`
-/

namespace A087756.P14112368270939631795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087756.P14112368270939631795

namespace A087756

/-- `A053576(∑[char[2*n+1]])` -/
def P14112368270939631795.Spec : Prop :=
  ∀ n, P14112368270939631795.a n = A087756 n

end A087756

/-! ## A087756.P11064104595125808079

`A277819(A008805(n+1))`
-/

namespace A087756.P11064104595125808079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A008805 (n + 1)).toNat

end

end A087756.P11064104595125808079

namespace A087756

/-- `A277819(A008805(n+1))` -/
def P11064104595125808079.Spec : Prop :=
  ∀ n, P11064104595125808079.a n = A087756 n

end A087756

/-! ## A087756.P11457184869835513862

`A366264(A109763(n+2))`
-/

namespace A087756.P11457184869835513862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366264 (A109763 (n + 2)).toNat

end

end A087756.P11457184869835513862

namespace A087756

/-- `A366264(A109763(n+2))` -/
def P11457184869835513862.Spec : Prop :=
  ∀ n, P11457184869835513862.a n = A087756 n

end A087756

/-! ## A087756.P18356400359211157555

`and(A001317(A065033(n)), A255047(n+1))`
-/

namespace A087756.P18356400359211157555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001317 (A065033 n).toNat) (A255047 (n + 1))

end

end A087756.P18356400359211157555

namespace A087756

/-- `and(A001317(A065033(n)), A255047(n+1))` -/
def P18356400359211157555.Spec : Prop :=
  ∀ n, P18356400359211157555.a n = A087756 n

end A087756

/-!
# A087758: Index of first occurrence of n in A005229.

The programs for A087758, the canonical program `A087758.P10017905867318136785` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087758 has offset 1).

The definition of A087758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6866 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087758.P6891437764855242715

`record[(n+2)^Δ[A005229(n+1)]]`
-/

namespace A087758.P6891437764855242715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087758.P6891437764855242715

namespace A087758

/-- `record[(n+2)^Δ[A005229(n+1)]]` -/
def P6891437764855242715.Spec : Prop :=
  ∀ n, P6891437764855242715.a n = (A087758 (n + 1) : ℚ)

end A087758

/-! ## A087758.P10017905867318136785

`lt[0, A051105(abs(1-n)+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087758

/-- `lt[0, A051105(abs(1-n)+1)]+1` -/
def P10017905867318136785.Spec : Prop :=
  ∀ n, (P10017905867318136785.a n : ℤ) = A087758 (n + 1)

theorem P10017905867318136785.correct : P10017905867318136785.Spec := by
  intro n
  simp only [A087758, Nat.add_sub_cancel]

end A087758

/-! ## A087758.P12936935905264594674

`eq[1, A051105(abs(n-1)+1)]+1`
-/

namespace A087758.P12936935905264594674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051105 (|(n : ℤ) - 1| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A087758.P12936935905264594674

namespace A087758

/-- `eq[1, A051105(abs(n-1)+1)]+1` -/
def P12936935905264594674.Spec : Prop :=
  ∀ n, (P12936935905264594674.a n : ℤ) = A087758 (n + 1)

end A087758

/-! ## A087758.P13689934555529186645

`record[(n+1)*A051105(n+1)]+1`
-/

namespace A087758.P13689934555529186645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A087758.P13689934555529186645

namespace A087758

/-- `record[(n+1)*A051105(n+1)]+1` -/
def P13689934555529186645.Spec : Prop :=
  ∀ n, P13689934555529186645.a n = A087758 (n + 1)

end A087758

/-! ## A087758.P2991432615202806144

`record[(n+1)*A051105(A000038(n)+n)]`
-/

namespace A087758.P2991432615202806144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051105 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087758.P2991432615202806144

namespace A087758

/-- `record[(n+1)*A051105(A000038(n)+n)]` -/
def P2991432615202806144.Spec : Prop :=
  ∀ n, P2991432615202806144.a n = A087758 (n + 1)

end A087758

/-! ## A087758.P7243000880365892786

`A008619(record[A051105(n+1)*A103517(n)])`
-/

namespace A087758.P7243000880365892786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051105 (n + 1) * A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087758.P7243000880365892786

namespace A087758

/-- `A008619(record[A051105(n+1)*A103517(n)])` -/
def P7243000880365892786.Spec : Prop :=
  ∀ n, P7243000880365892786.a n = A087758 (n + 1)

end A087758

/-!
# A087759: Primes p such that 7^p - 6^p is composite.

The programs for A087759, there is no canonical definition to state claims against.
-/

/-! ## A087759.P15554064669134959845

`lt[A003415(n), A194447(n+1)]`
-/

namespace A087759.P15554064669134959845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087759.P15554064669134959845

/-! ## A087759.P17556273837733647266

`A158611(record[A106501(3*n+4)])`
-/

namespace A087759.P17556273837733647266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106501 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087759.P17556273837733647266

/-! ## A087759.P7541463439851047798

`A094802(A314005(n+1))`
-/

namespace A087759.P7541463439851047798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A314005 (n + 1)).toNat

end

end A087759.P7541463439851047798

/-! ## A087759.P522677580087783574

`eq[A089052(n), A131516(n)]`
-/

namespace A087759.P522677580087783574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087759.P522677580087783574

/-! ## A087759.P15959751279446979506

`A238853(lt[A378336(n+5), A278073(2*(n+1))])`
-/

namespace A087759.P15959751279446979506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378336 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238853 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087759.P15959751279446979506

/-!
# A087761: Expansion of (1-x)^(1/(x-1)).

The programs for A087761, there is no canonical definition to state claims against.
-/

/-! ## A087761.P16641623265739817590

`A353886(A345756(n)+1)`
-/

namespace A087761.P16641623265739817590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353886 (A345756 n + 1).toNat

end

end A087761.P16641623265739817590

/-! ## A087761.P16446335829089231190

`A028310(n*A014307(n))`
-/

namespace A087761.P16446335829089231190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A014307 n).toNat

end

end A087761.P16446335829089231190

/-!
# A087762: Primes whose reversal is a multiple of 7.

The programs for A087762, there is no canonical definition to state claims against.
-/

/-! ## A087762.P378702310939146768

`p?[n*A014016(A004086(n))]`
-/

namespace A087762.P378702310939146768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014016 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087762.P378702310939146768

/-! ## A087762.P6748315714058895695

`eq[A003415(n), A014016(A028900(n))]`
-/

namespace A087762.P6748315714058895695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 (A028900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087762.P6748315714058895695

/-! ## A087762.P14501013528714434780

`eq[A014016(A004086(n)), A032741(n)]`
-/

namespace A087762.P14501013528714434780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087762.P14501013528714434780

/-! ## A087762.P11287702077539498869

`eq[A014016(A028900(n)), A053989(n+1)]`
-/

namespace A087762.P11287702077539498869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 (A028900 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087762.P11287702077539498869

/-! ## A087762.P11171005077705195525

`eq[A014016(A028900(n)), A231820(n+1)]`
-/

namespace A087762.P11171005077705195525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 (A028900 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087762.P11171005077705195525

/-!
# A087763: Primes p such that 8^p - 7^p is composite.

The programs for A087763, there is no canonical definition to state claims against.
-/

/-! ## A087763.P14475608179293496434

`p?[∑[A051700(A303282(n+1))]]`
-/

namespace A087763.P14475608179293496434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A303282 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087763.P14475608179293496434

/-! ## A087763.P10831706796631314875

`eq[A003415(n), A048143(A057467(3*(n+1)))]`
-/

namespace A087763.P10831706796631314875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048143 (A057467 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087763.P10831706796631314875

/-! ## A087763.P14117830155502964742

`p?[comp[A105108(n+3)+A103585(3*n+5)]]`
-/

namespace A087763.P14117830155502964742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105108 (n + 3) + A103585 (3 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087763.P14117830155502964742

/-! ## A087763.P6364835573028554273

`A000040(eq[A000040(n+3), A020482(2*n+3)])`
-/

namespace A087763.P6364835573028554273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087763.P6364835573028554273

/-! ## A087763.P10482141144485114722

`A000040(comp[A134204(n+2)-A383471(n)])`
-/

namespace A087763.P10482141144485114722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 (n + 2) - A383471 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A087763.P10482141144485114722

/-!
# A087764: Primes whose reversal is a multiple of 13.

The programs for A087764, there is no canonical definition to state claims against.
-/

/-! ## A087764.P12960443470075708662

`p?[A213483(n)+A213478(3*(n+1))]`
-/

namespace A087764.P12960443470075708662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213483 n + A213478 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087764.P12960443470075708662

/-!
# A087765: Primes whose reversal is a multiple of 17.

The programs for A087765, there is no canonical definition to state claims against.
-/

/-! ## A087765.P16841468800864104171

`p?[5*A276876(2*n+3)-n]`
-/

namespace A087765.P16841468800864104171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A276876 (2 * n + 3) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087765.P16841468800864104171

/-!
# A087766: Primes whose reversal is a multiple of 19.

The programs for A087766, there is no canonical definition to state claims against.
-/

/-! ## A087766.P9654087977381702477

`eq[A014028(A004086(n)), A032741(n)]`
-/

namespace A087766.P9654087977381702477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014028 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087766.P9654087977381702477

/-! ## A087766.P6480416561533787715

`eq[A014028(A028897(n)), A032741(n)]`
-/

namespace A087766.P6480416561533787715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014028 (A028897 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087766.P6480416561533787715

/-! ## A087766.P10074686400771749954

`eq[A014028(A004086(n)), A078898(n)]`
-/

namespace A087766.P10074686400771749954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014028 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087766.P10074686400771749954

/-! ## A087766.P13943984256331291555

`eq[A014028(A028897(n)), A078898(n)]`
-/

namespace A087766.P13943984256331291555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014028 (A028897 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087766.P13943984256331291555

/-! ## A087766.P6646662955801514117

`eq[A014028(A004086(n)), A104725(n)]`
-/

namespace A087766.P6646662955801514117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014028 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087766.P6646662955801514117

/-!
# A087768: Minimal prime whose reversal is a multiple of n, or 0 if no such prime exists.

The programs for A087768, there is no canonical definition to state claims against.
-/

/-! ## A087768.P18416898111626442511

`A000161(A205999(n))*A113604(n+1)`
-/

namespace A087768.P18416898111626442511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A205999 n).toNat * A113604 (n + 1)

end

end A087768.P18416898111626442511

/-! ## A087768.P2776317061992357842

`C(A113604(n+1), A113607(A060058(n)))`
-/

namespace A087768.P2776317061992357842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A113604 (n + 1)).toNat (A113607 (A060058 n).toNat).toNat

end

end A087768.P2776317061992357842

/-! ## A087768.P2703763046461456887

`A113604(n+1)%A113615(A113592(n+2))`
-/

namespace A087768.P2703763046461456887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113604 (n + 1)) (A113615 (A113592 (n + 2)).toNat)

end

end A087768.P2703763046461456887

/-!
# A087769: Minimal prime whose reversal is a multiple of n-th prime.

The programs for A087769, there is no canonical definition to state claims against.
-/

/-! ## A087769.P11004544832321300934

`A087768(p?[comp[n²]])`
-/

namespace A087769.P11004544832321300934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087768 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A087769.P11004544832321300934

/-! ## A087769.P17100991611387438924

`A087768(A000040(n+1))`
-/

namespace A087769.P17100991611387438924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087768 (A000040 (n + 1)).toNat

end

end A087769.P17100991611387438924

/-! ## A087769.P7724980033057210576

`A087768(A006005(n+1))`
-/

namespace A087769.P7724980033057210576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087768 (A006005 (n + 1)).toNat

end

end A087769.P7724980033057210576

/-! ## A087769.P3345674491840572766

`A087768(A030291(n+1))`
-/

namespace A087769.P3345674491840572766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087768 (A030291 (n + 1)).toNat

end

end A087769.P3345674491840572766

/-! ## A087769.P3158570532891683232

`A087768(A030475(n+1))`
-/

namespace A087769.P3158570532891683232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087768 (A030475 (n + 1)).toNat

end

end A087769.P3158570532891683232

/-!
# A087770: "Lonely primes": those primes that are locally maximally isolated from the nearest other primes. The differences between each lonely prime and the immediately preceding prime and following primes are both greater than the corresponding differences for all lonely primes earlier in the sequence.

The programs for A087770, there is no canonical definition to state claims against.
-/

/-! ## A087770.P3698373311991394126

`record[p?[A084193(3*round(n/4)+n)]]`
-/

namespace A087770.P3698373311991394126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 (3 * SequenceMachineLib.roundAway ((n : ℚ) / 4) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087770.P3698373311991394126

/-! ## A087770.P16546636529729020174

`A130903(C(n, 4)+2*C(n, 3)+1+n)`
-/

namespace A087770.P16546636529729020174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130903 (Nat.choose n 4 + (2 * Nat.choose n 3 + 1 + n))

end

end A087770.P16546636529729020174

/-!
# A087771: Primes p giving prime quadruples (30p+11, 30p+13, 30p+17, 30p+19).

The programs for A087771, there is no canonical definition to state claims against.
-/

/-! ## A087771.P3206606853176286744

`p?[A014561(n+1)]`
-/

namespace A087771.P3206606853176286744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087771.P3206606853176286744

/-! ## A087771.P14796591252408821278

`p?[∑[A159910(n+1)]]`
-/

namespace A087771.P14796591252408821278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159910 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087771.P14796591252408821278

/-! ## A087771.P1580797269175907044

`p?[A061668(n+1)-1]`
-/

namespace A087771.P1580797269175907044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061668 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087771.P1580797269175907044

/-! ## A087771.P3813029196757416009

`p?[floor(A112540(n+1)/2)]`
-/

namespace A087771.P3813029196757416009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112540 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087771.P3813029196757416009

/-! ## A087771.P15706756862643648884

`p?[floor(A007811(n+1)/3)]`
-/

namespace A087771.P15706756862643648884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007811 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087771.P15706756862643648884

/-! ## A087771.P8888038259024826771

`p?[A007811(n+1)-A112540(n+1)]`
-/

namespace A087771.P8888038259024826771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1) - A112540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087771.P8888038259024826771

/-! ## A087771.P6090440551508198883

`p?[A115095(n+2)-1-A112540(n+1)]`
-/

namespace A087771.P6090440551508198883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115095 (n + 2) - 1 - A112540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087771.P6090440551508198883

/-! ## A087771.P13949959229466153532

`∩[A014561(n+1), A045423(n+1)]`
-/

namespace A087771.P13949959229466153532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087771.P13949959229466153532

/-! ## A087771.P15260457007264535317

`∩[A014561(n+1), A045434(n+1)]`
-/

namespace A087771.P15260457007264535317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087771.P15260457007264535317

/-! ## A087771.P3142537067259801923

`∩[A003625(n+1), A014561(n+1)]`
-/

namespace A087771.P3142537067259801923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087771.P3142537067259801923

/-!
# A087773: Number of common decimal digits of n and 2^n.

The programs for A087773, there is no canonical definition to state claims against.
-/

/-! ## A087773.P9799283945583492379

`A102781(A238686(n))%A093873(n+1)`
-/

namespace A087773.P9799283945583492379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102781 (A238686 n).toNat) (A093873 (n + 1))

end

end A087773.P9799283945583492379

/-! ## A087773.P6705984705963341676

`and(A135243(n+1), A292598(A212431(n)))`
-/

namespace A087773.P6705984705963341676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135243 (n + 1)) (A292598 (A212431 n).toNat)

end

end A087773.P6705984705963341676

/-! ## A087773.P14981238724762086691

`A308840(A279226(n+4)%A089429(n+1))`
-/

namespace A087773.P14981238724762086691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308840 (Int.tmod (A279226 (n + 4)) (A089429 (n + 1))).toNat

end

end A087773.P14981238724762086691

/-! ## A087773.P16007368290033979379

`A001222(A096376(2*n+1)^A286935(3*(n+1)))`
-/

namespace A087773.P16007368290033979379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A096376 (2 * n + 1) : ℚ) ^ (A286935 (3 * (n + 1)) : ℤ))).toNat

end

end A087773.P16007368290033979379

/-! ## A087773.P15475776945591220673

`A088950(floor(sqrt(A018152(n))))`
-/

namespace A087773.P15475776945591220673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (Int.sqrt (A018152 n)).toNat

end

end A087773.P15475776945591220673

/-!
# A087775: a[1] = 1, a[2] = 2, a[3] = 2; a[n] = 3*a[abs[a[n-2]]] - 3*a[n-abs[a[n-2]]] + a[n-3].

The programs for A087775, the canonical program `A087775.P11141830998296640099` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087775 has offset 1).

The definition of A087775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(abs(a(n-2))-1)-3*a(n-abs(a(n-2)))+a(n-3)` (program `A087775.P11141830998296640099`, by `A087775.P11141830998296640099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087775.P11141830998296640099

`3*a(abs(a(n-2))-1)-3*a(n-abs(a(n-2)))+a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087775

/-- `3*a(abs(a(n-2))-1)-3*a(n-abs(a(n-2)))+a(n-3)` -/
def P11141830998296640099.Spec : Prop :=
  ∀ n, P11141830998296640099.a n = A087775 (n + 1)

theorem P11141830998296640099.correct : P11141830998296640099.Spec := by
  intro n
  simp only [A087775, Nat.add_sub_cancel]

end A087775

/-! ## A087775.P5521683380014005570

`2^(n%3)-n*C(n, 2)%3`
-/

namespace A087775.P5521683380014005570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n % 3) : ℤ) - ((n * (Nat.choose n 2 % 3) : ℕ) : ℤ)

end

end A087775.P5521683380014005570

namespace A087775

/-- `2^(n%3)-n*C(n, 2)%3` -/
def P5521683380014005570.Spec : Prop :=
  ∀ n, P5521683380014005570.a n = A087775 (n + 1)

end A087775

/-! ## A087775.P17731379170079932542

`a(n-3)-Δ[3*floor(n/3)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A087775.P17731379170079932542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 3) - (f1 (n + 1) - f1 n)

end

end A087775.P17731379170079932542

namespace A087775

/-- `a(n-3)-Δ[3*floor(n/3)]` -/
def P17731379170079932542.Spec : Prop :=
  ∀ n, P17731379170079932542.a n = A087775 (n + 1)

end A087775

/-! ## A087775.P16810437040086801371

`(n-(n-2)*a(n-1))^(n²%3)` with `a(0)=1`
-/

namespace A087775.P16810437040086801371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - ((n : ℤ) - 2) * a (n - 1)) ^ (n ^ 2 % 3)

end

end A087775.P16810437040086801371

namespace A087775

/-- `(n-(n-2)*a(n-1))^(n²%3)` -/
def P16810437040086801371.Spec : Prop :=
  ∀ n, P16810437040086801371.a n = A087775 (n + 1)

end A087775

/-! ## A087775.P14897699183135626180

`(a(n-1)-n)%(2-(a(n-1)+n))+2` with `a(0)=1, a(1)=2`
-/

namespace A087775.P14897699183135626180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (a (n - 1) - (n : ℤ)) (2 - (a (n - 1) + (n : ℤ))) + 2

end

end A087775.P14897699183135626180

namespace A087775

/-- `(a(n-1)-n)%(2-(a(n-1)+n))+2` -/
def P14897699183135626180.Spec : Prop :=
  ∀ n, P14897699183135626180.a n = A087775 (n + 1)

end A087775

/-! ## A087775.P2096666233041672507

`2-(n-a(n-1))%(2-a(n-1)-n)` with `a(0)=1, a(1)=2`
-/

namespace A087775.P2096666233041672507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - Int.tmod ((n : ℤ) - a (n - 1)) (2 - a (n - 1) - (n : ℤ))

end

end A087775.P2096666233041672507

namespace A087775

/-- `2-(n-a(n-1))%(2-a(n-1)-n)` -/
def P2096666233041672507.Spec : Prop :=
  ∀ n, P2096666233041672507.a n = A087775 (n + 1)

end A087775

/-! ## A087775.P8340256068914509418

`A069705(n)-n*A022003(n)`
-/

namespace A087775.P8340256068914509418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 n - (n : ℤ) * A022003 n

end

end A087775.P8340256068914509418

namespace A087775

/-- `A069705(n)-n*A022003(n)` -/
def P8340256068914509418.Spec : Prop :=
  ∀ n, P8340256068914509418.a n = A087775 (n + 1)

end A087775

/-! ## A087775.P14468622586184277964

`A010882(n)-A064429(n*A022003(n))`
-/

namespace A087775.P14468622586184277964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n - A064429 ((n : ℤ) * A022003 n).toNat

end

end A087775.P14468622586184277964

namespace A087775

/-- `A010882(n)-A064429(n*A022003(n))` -/
def P14468622586184277964.Spec : Prop :=
  ∀ n, P14468622586184277964.a n = A087775 (n + 1)

end A087775

/-! ## A087775.P15228378137209256639

`A069705(n)-n*A069705(n+1)%2`
-/

namespace A087775.P15228378137209256639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 n - (n : ℤ) * Int.tmod (A069705 (n + 1)) 2

end

end A087775.P15228378137209256639

namespace A087775

/-- `A069705(n)-n*A069705(n+1)%2` -/
def P15228378137209256639.Spec : Prop :=
  ∀ n, P15228378137209256639.a n = A087775 (n + 1)

end A087775

/-! ## A087775.P593335553471905384

`A244477(A113655(n+1))-A032766(A004523(n))`
-/

namespace A087775.P593335553471905384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A113655 (n + 1)).toNat - A032766 (A004523 n).toNat

end

end A087775.P593335553471905384

namespace A087775

/-- `A244477(A113655(n+1))-A032766(A004523(n))` -/
def P593335553471905384.Spec : Prop :=
  ∀ n, P593335553471905384.a n = A087775 (n + 1)

end A087775

/-! ## A087775.P3868777426026148206

`A069705(n)-A004525(n*2%A069705(n))`
-/

namespace A087775.P3868777426026148206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 n - A004525 ((n : ℤ) * Int.tmod 2 (A069705 n)).toNat

end

end A087775.P3868777426026148206

namespace A087775

/-- `A069705(n)-A004525(n*2%A069705(n))` -/
def P3868777426026148206.Spec : Prop :=
  ∀ n, P3868777426026148206.a n = A087775 (n + 1)

end A087775

/-!
# A087776: Primes prime(k) such that -prime(k-2) + 2*prime(k-1) - 2*prime(k+1) + prime(k+2) == 0.

The programs for A087776, there is no canonical definition to state claims against.
-/

/-! ## A087776.P9542941978747154692

`A050264(A007089(n)+5)`
-/

namespace A087776.P9542941978747154692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050264 (A007089 n + 5).toNat

end

end A087776.P9542941978747154692

/-! ## A087776.P13699555412974409923

`A078861(∑[A100100(n)²])`
-/

namespace A087776.P13699555412974409923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078861 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087776.P13699555412974409923

/-!
# A087777: a(1) = ... = a(4) = 1; a(n) = a(n - a(n-2)) + a(n - a(n-4)).

The programs for A087777, the canonical program `A087777.P14390431626680198581` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087777 has offset 1).

The definition of A087777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-4))` (program `A087777.P14390431626680198581`, by `A087777.P14390431626680198581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087777.P14390431626680198581

`a(n-a(n-2))+a(n-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087777

/-- `a(n-a(n-2))+a(n-a(n-4))` -/
def P14390431626680198581.Spec : Prop :=
  ∀ n, (P14390431626680198581.a n : ℤ) = A087777 (n + 1)

theorem P14390431626680198581.correct : P14390431626680198581.Spec := by
  intro n
  simp only [A087777, Nat.add_sub_cancel]

end A087777

/-!
# A087779: a(n)=prime(x) is the smallest prime such that 1+(2^(12n+9))*prime(x) is divisible by prime(x+1).

The programs for A087779, there is no canonical definition to state claims against.
-/

/-! ## A087779.P16040325035573028682

`A087986(12*n+9)`
-/

namespace A087779.P16040325035573028682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087986 (12 * n + 9)

end

end A087779.P16040325035573028682

/-!
# A087780: Number of non-congruent solutions to x^2 == 2 mod n.

The programs for A087780, the canonical program `A087780.P10506925651447133355` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087780 has offset 1).

The definition of A087780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087780.P10135928414674669522

`A091396(A335115(n+1))`
-/

namespace A087780.P10135928414674669522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091396 (A335115 (n + 1)).toNat

end

end A087780.P10135928414674669522

namespace A087780

/-- `A091396(A335115(n+1))` -/
def P10135928414674669522.Spec : Prop :=
  ∀ n, P10135928414674669522.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P5435740005774605686

`lcm(A091396(n+1), A115525(n))`
-/

namespace A087780.P5435740005774605686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091396 (n + 1)) (A115525 n)

end

end A087780.P5435740005774605686

namespace A087780

/-- `lcm(A091396(n+1), A115525(n))` -/
def P5435740005774605686.Spec : Prop :=
  ∀ n, (P5435740005774605686.a n : ℤ) = A087780 (n + 1)

end A087780

/-! ## A087780.P13226932436825047137

`A091396(n+1)*A359374(n+1)`
-/

namespace A087780.P13226932436825047137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091396 (n + 1) * A359374 (n + 1)

end

end A087780.P13226932436825047137

namespace A087780

/-- `A091396(n+1)*A359374(n+1)` -/
def P13226932436825047137.Spec : Prop :=
  ∀ n, P13226932436825047137.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P14956371512613071863

`A091396(n+1)*A359550(n+1)`
-/

namespace A087780.P14956371512613071863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091396 (n + 1) * A359550 (n + 1)

end

end A087780.P14956371512613071863

namespace A087780

/-- `A091396(n+1)*A359550(n+1)` -/
def P14956371512613071863.Spec : Prop :=
  ∀ n, P14956371512613071863.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P17149034992509441371

`and(A060594(n+1), A091396(n+1))`
-/

namespace A087780.P17149034992509441371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060594 (n + 1)) (A091396 (n + 1))

end

end A087780.P17149034992509441371

namespace A087780

/-- `and(A060594(n+1), A091396(n+1))` -/
def P17149034992509441371.Spec : Prop :=
  ∀ n, P17149034992509441371.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P12633245810021235189

`and(A065958(n+1), A091396(n+1))`
-/

namespace A087780.P12633245810021235189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065958 (n + 1)) (A091396 (n + 1))

end

end A087780.P12633245810021235189

namespace A087780

/-- `and(A065958(n+1), A091396(n+1))` -/
def P12633245810021235189.Spec : Prop :=
  ∀ n, P12633245810021235189.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P14031412156831575047

`and(A065960(n+1), A091396(n+1))`
-/

namespace A087780.P14031412156831575047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065960 (n + 1)) (A091396 (n + 1))

end

end A087780.P14031412156831575047

namespace A087780

/-- `and(A065960(n+1), A091396(n+1))` -/
def P14031412156831575047.Spec : Prop :=
  ∀ n, P14031412156831575047.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P13724623144389642013

`and(A091396(n+1), A351305(n+1))`
-/

namespace A087780.P13724623144389642013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091396 (n + 1)) (A351305 (n + 1))

end

end A087780.P13724623144389642013

namespace A087780

/-- `and(A091396(n+1), A351305(n+1))` -/
def P13724623144389642013.Spec : Prop :=
  ∀ n, P13724623144389642013.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P10506925651447133355

`∑{d}[n+1, A035185(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A087780

/-- `∑{d}[n+1, A035185(#)*A271102((n+1)/#)]` -/
def P10506925651447133355.Spec : Prop :=
  ∀ n, P10506925651447133355.a n = A087780 (n + 1)

theorem P10506925651447133355.correct : P10506925651447133355.Spec := by
  intro n
  simp only [A087780, Nat.add_sub_cancel]

end A087780

/-! ## A087780.P7453214813981171544

`∑{d}[n+1, A124340(#)*A328729((n+1)/#)]`
-/

namespace A087780.P7453214813981171544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124340 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087780.P7453214813981171544

namespace A087780

/-- `∑{d}[n+1, A124340(#)*A328729((n+1)/#)]` -/
def P7453214813981171544.Spec : Prop :=
  ∀ n, P7453214813981171544.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P1646378415711840047

`A091396(A091396(n+1)+A060594(n+1))*A091396(n+1)`
-/

namespace A087780.P1646378415711840047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091396 (A091396 (n + 1) + A060594 (n + 1)).toNat * A091396 (n + 1)

end

end A087780.P1646378415711840047

namespace A087780

/-- `A091396(A091396(n+1)+A060594(n+1))*A091396(n+1)` -/
def P1646378415711840047.Spec : Prop :=
  ∀ n, P1646378415711840047.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P3971923445982396518

`∑{d}[n+1, A008966(#)*A091337((n+1)/#)]`
-/

namespace A087780.P3971923445982396518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A091337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087780.P3971923445982396518

namespace A087780

/-- `∑{d}[n+1, A008966(#)*A091337((n+1)/#)]` -/
def P3971923445982396518.Spec : Prop :=
  ∀ n, P3971923445982396518.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P6643328196493503826

`A091396(A255347(n+1))`
-/

namespace A087780.P6643328196493503826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091396 (A255347 (n + 1)).toNat

end

end A087780.P6643328196493503826

namespace A087780

/-- `A091396(A255347(n+1))` -/
def P6643328196493503826.Spec : Prop :=
  ∀ n, P6643328196493503826.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P9434648684464056756

`A091396(A373188(n+1))`
-/

namespace A087780.P9434648684464056756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091396 (A373188 (n + 1)).toNat

end

end A087780.P9434648684464056756

namespace A087780

/-- `A091396(A373188(n+1))` -/
def P9434648684464056756.Spec : Prop :=
  ∀ n, P9434648684464056756.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P11041006534546757174

`and(A027116(n+3), A091396(n+1))`
-/

namespace A087780.P11041006534546757174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027116 (n + 3)) (A091396 (n + 1))

end

end A087780.P11041006534546757174

namespace A087780

/-- `and(A027116(n+3), A091396(n+1))` -/
def P11041006534546757174.Spec : Prop :=
  ∀ n, P11041006534546757174.a n = A087780 (n + 1)

end A087780

/-! ## A087780.P17104775683419141275

`A385104(∑[n]+3)`
-/

namespace A087780.P17104775683419141275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385104 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A087780.P17104775683419141275

namespace A087780

/-- `A385104(∑[n]+3)` -/
def P17104775683419141275.Spec : Prop :=
  ∀ n, P17104775683419141275.a n = A087780 (n + 1)

end A087780

/-!
# A087781: Number of non-congruent solutions to x^2 - x - 1 == 0 mod n.

The programs for A087781, the canonical program `A087781.P18092569315473088163` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087781 has offset 1).

The definition of A087781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087781.P18092569315473088163

`∑{d}[n+1, A035187(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A087781

/-- `∑{d}[n+1, A035187(#)*A271102((n+1)/#)]` -/
def P18092569315473088163.Spec : Prop :=
  ∀ n, P18092569315473088163.a n = A087781 (n + 1)

theorem P18092569315473088163.correct : P18092569315473088163.Spec := by
  intro n
  simp only [A087781, Nat.add_sub_cancel]

end A087781

/-! ## A087781.P5335319562567448947

`∑{d}[n+1, A035202(#)*A359548((n+1)/#)]`
-/

namespace A087781.P5335319562567448947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035202 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087781.P5335319562567448947

namespace A087781

/-- `∑{d}[n+1, A035202(#)*A359548((n+1)/#)]` -/
def P5335319562567448947.Spec : Prop :=
  ∀ n, P5335319562567448947.a n = A087781 (n + 1)

end A087781

/-! ## A087781.P7333134227760262830

`∑{d}[n+1, A053723(#-1)*A328729((n+1)/#)]`
-/

namespace A087781.P7333134227760262830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053723 (d - 1) * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087781.P7333134227760262830

namespace A087781

/-- `∑{d}[n+1, A053723(#-1)*A328729((n+1)/#)]` -/
def P7333134227760262830.Spec : Prop :=
  ∀ n, P7333134227760262830.a n = A087781 (n + 1)

end A087781

/-! ## A087781.P12004633522274805831

`A080891((n+1)/∏{p}[n+1, #])*A091398(n+1)`
-/

namespace A087781.P12004633522274805831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A091398 (n + 1)

end

end A087781.P12004633522274805831

namespace A087781

/-- `A080891((n+1)/∏{p}[n+1, #])*A091398(n+1)` -/
def P12004633522274805831.Spec : Prop :=
  ∀ n, P12004633522274805831.a n = A087781 (n + 1)

end A087781

/-! ## A087781.P15624407694217189005

`A065958(A008619(2*n))%5`
-/

namespace A087781.P15624407694217189005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065958 (A008619 (2 * n)).toNat) 5

end

end A087781.P15624407694217189005

namespace A087781

/-- `A065958(A008619(2*n))%5` -/
def P15624407694217189005.Spec : Prop :=
  ∀ n, P15624407694217189005.a n = A087781 (n + 1)

end A087781

/-! ## A087781.P15660704856239609598

`and(A091398(n+1), A248960(n))`
-/

namespace A087781.P15660704856239609598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091398 (n + 1)) (A248960 n)

end

end A087781.P15660704856239609598

namespace A087781

/-- `and(A091398(n+1), A248960(n))` -/
def P15660704856239609598.Spec : Prop :=
  ∀ n, P15660704856239609598.a n = A087781 (n + 1)

end A087781

/-! ## A087781.P15695825468596481330

`and(A007425(A130064(n+1)), A091398(n+1))`
-/

namespace A087781.P15695825468596481330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007425 (A130064 (n + 1)).toNat) (A091398 (n + 1))

end

end A087781.P15695825468596481330

namespace A087781

/-- `and(A007425(A130064(n+1)), A091398(n+1))` -/
def P15695825468596481330.Spec : Prop :=
  ∀ n, P15695825468596481330.a n = A087781 (n + 1)

end A087781

/-! ## A087781.P10330106522931034848

`and(A091398(n+1), A289614(n))`
-/

namespace A087781.P10330106522931034848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091398 (n + 1)) (A289614 n)

end

end A087781.P10330106522931034848

namespace A087781

/-- `and(A091398(n+1), A289614(n))` -/
def P10330106522931034848.Spec : Prop :=
  ∀ n, P10330106522931034848.a n = A087781 (n + 1)

end A087781

/-! ## A087781.P6467929400269057574

`A091398(A188585((n+1)²))*A091398(n+1)`
-/

namespace A087781.P6467929400269057574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091398 (A188585 ((n + 1) ^ 2)).toNat * A091398 (n + 1)

end

end A087781.P6467929400269057574

namespace A087781

/-- `A091398(A188585((n+1)²))*A091398(n+1)` -/
def P6467929400269057574.Spec : Prop :=
  ∀ n, P6467929400269057574.a n = A087781 (n + 1)

end A087781

/-! ## A087781.P4286827274861073038

`A091398(A062952(n+1))`
-/

namespace A087781.P4286827274861073038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091398 (A062952 (n + 1)).toNat

end

end A087781.P4286827274861073038

namespace A087781

/-- `A091398(A062952(n+1))` -/
def P4286827274861073038.Spec : Prop :=
  ∀ n, P4286827274861073038.a n = A087781 (n + 1)

end A087781

/-!
# A087782: a(n) = number of solutions to x^3 + x == 0 (mod n).

The programs for A087782, the canonical program `A087782.P6831372611554785997` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087782 has offset 1).

The definition of A087782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087782.P10942702018759533086

`A087688(n+1)/A337910(n+1)`
-/

namespace A087782.P10942702018759533086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087688 (n + 1) : ℚ) / (A337910 (n + 1) : ℚ)

end

end A087782.P10942702018759533086

namespace A087782

/-- `A087688(n+1)/A337910(n+1)` -/
def P10942702018759533086.Spec : Prop :=
  ∀ n, P10942702018759533086.a n = (A087782 (n + 1) : ℚ)

end A087782

/-! ## A087782.P6831372611554785997

`gcd(n+1, A004526(n))*A256452(A007947(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A087782

/-- `gcd(n+1, A004526(n))*A256452(A007947(n+1))` -/
def P6831372611554785997.Spec : Prop :=
  ∀ n, P6831372611554785997.a n = A087782 (n + 1)

theorem P6831372611554785997.correct : P6831372611554785997.Spec := by
  intro n
  simp only [A087782, Nat.add_sub_cancel]

end A087782

/-! ## A087782.P15259945920945027722

`A001511(A087688(n+1))*A256452(A007947(n+1))`
-/

namespace A087782.P15259945920945027722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A087688 (n + 1)).toNat * A256452 (A007947 (n + 1)).toNat

end

end A087782.P15259945920945027722

namespace A087782

/-- `A001511(A087688(n+1))*A256452(A007947(n+1))` -/
def P15259945920945027722.Spec : Prop :=
  ∀ n, P15259945920945027722.a n = A087782 (n + 1)

end A087782

/-! ## A087782.P7557060294855946518

`A235872(A055231(n+1))*A256452(A007947(n+1))`
-/

namespace A087782.P7557060294855946518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235872 (A055231 (n + 1)).toNat * A256452 (A007947 (n + 1)).toNat

end

end A087782.P7557060294855946518

namespace A087782

/-- `A235872(A055231(n+1))*A256452(A007947(n+1))` -/
def P7557060294855946518.Spec : Prop :=
  ∀ n, P7557060294855946518.a n = A087782 (n + 1)

end A087782

/-! ## A087782.P10191303435837724035

`A001511(A338224(n+1))*A256452(A007947(n+1))`
-/

namespace A087782.P10191303435837724035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A338224 (n + 1)).toNat * A256452 (A007947 (n + 1)).toNat

end

end A087782.P10191303435837724035

namespace A087782

/-- `A001511(A338224(n+1))*A256452(A007947(n+1))` -/
def P10191303435837724035.Spec : Prop :=
  ∀ n, P10191303435837724035.a n = A087782 (n + 1)

end A087782

/-! ## A087782.P12413799848225907

`A035181((n+1)/2^val(n+1, 2)*∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A087782.P12413799848225907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)))).toNat

end

end A087782.P12413799848225907

namespace A087782

/-- `A035181((n+1)/2^val(n+1, 2)*∏{p}[n+1, lcm(n+1, #²)/(n+1)])` -/
def P12413799848225907.Spec : Prop :=
  ∀ n, P12413799848225907.a n = A087782 (n + 1)

end A087782

/-! ## A087782.P7752751542173603989

`A097587(A059132(n))*A338690(A078615(n+1))`
-/

namespace A087782.P7752751542173603989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097587 (A059132 n).toNat * A338690 (A078615 (n + 1)).toNat

end

end A087782.P7752751542173603989

namespace A087782

/-- `A097587(A059132(n))*A338690(A078615(n+1))` -/
def P7752751542173603989.Spec : Prop :=
  ∀ n, P7752751542173603989.a n = A087782 (n + 1)

end A087782

/-! ## A087782.P525357059001364780

`A014695(n*A014695(n))*A338690(A078615(n+1))`
-/

namespace A087782.P525357059001364780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 ((n : ℤ) * A014695 n).toNat * A338690 (A078615 (n + 1)).toNat

end

end A087782.P525357059001364780

namespace A087782

/-- `A014695(n*A014695(n))*A338690(A078615(n+1))` -/
def P525357059001364780.Spec : Prop :=
  ∀ n, P525357059001364780.a n = A087782 (n + 1)

end A087782

/-!
# A087783: Array T(n,k) (n >= 1, k >= 1) read by antidiagonals, giving number of ways of arranging the numbers 1 ... mn into an m X n array so there is exactly one local maximum.

The programs for A087783, there is no canonical definition to state claims against.
-/

/-! ## A087783.P17428215375308708412

`A264965(A257609(n)^A284252(n+1))`
-/

namespace A087783.P17428215375308708412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (SequenceMachineLib.roundAway ((A257609 n : ℚ) ^ (A284252 (n + 1) : ℤ))).toNat

end

end A087783.P17428215375308708412

/-! ## A087783.P9231265934212400891

`A000010(A204685(n+1))*A020639(A004304(n))`
-/

namespace A087783.P9231265934212400891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A204685 (n + 1)).toNat * A020639 (A004304 n).toNat

end

end A087783.P9231265934212400891

/-! ## A087783.P14745157027941753249

`A000010(A205161(n+1))*A020639(A004304(n))`
-/

namespace A087783.P14745157027941753249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A205161 (n + 1)).toNat * A020639 (A004304 n).toNat

end

end A087783.P14745157027941753249

/-! ## A087783.P6278085938766850793

`A000010(A205310(n+1))*A020639(A004304(n))`
-/

namespace A087783.P6278085938766850793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A205310 (n + 1)).toNat * A020639 (A004304 n).toNat

end

end A087783.P6278085938766850793

/-!
# A087784: Number of solutions to x^2 + y^2 + z^2 = 1 mod n.

The programs for A087784, the canonical program `A087784.P3470074920736831489` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087784 has offset 1).

The definition of A087784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087784.P3470074920736831489

`A115076(n+1)*A177704(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A087784

/-- `A115076(n+1)*A177704(n)` -/
def P3470074920736831489.Spec : Prop :=
  ∀ n, P3470074920736831489.a n = A087784 (n + 1)

theorem P3470074920736831489.correct : P3470074920736831489.Spec := by
  intro n
  simp only [A087784, Nat.add_sub_cancel]

end A087784

/-! ## A087784.P3429779476136144749

`Δ[A001068(n)]*A115076(n+1)`
-/

namespace A087784.P3429779476136144749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A115076 (n + 1)

end

end A087784.P3429779476136144749

namespace A087784

/-- `Δ[A001068(n)]*A115076(n+1)` -/
def P3429779476136144749.Spec : Prop :=
  ∀ n, P3429779476136144749.a n = A087784 (n + 1)

end A087784

/-! ## A087784.P9981596099049249491

`gcd(2, A246695(n))*A115076(n+1)`
-/

namespace A087784.P9981596099049249491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A246695 n) : ℤ) * A115076 (n + 1)

end

end A087784.P9981596099049249491

namespace A087784

/-- `gcd(2, A246695(n))*A115076(n+1)` -/
def P9981596099049249491.Spec : Prop :=
  ∀ n, P9981596099049249491.a n = A087784 (n + 1)

end A087784

/-! ## A087784.P17971164790658221903

`A093148(n)*A227553(n+1)`
-/

namespace A087784.P17971164790658221903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 n * A227553 (n + 1)

end

end A087784.P17971164790658221903

namespace A087784

/-- `A093148(n)*A227553(n+1)` -/
def P17971164790658221903.Spec : Prop :=
  ∀ n, P17971164790658221903.a n = A087784 (n + 1)

end A087784

/-! ## A087784.P13776326061310148866

`lcm(A115076(n+1), A227553(n+1))`
-/

namespace A087784.P13776326061310148866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115076 (n + 1)) (A227553 (n + 1))

end

end A087784.P13776326061310148866

namespace A087784

/-- `lcm(A115076(n+1), A227553(n+1))` -/
def P13776326061310148866.Spec : Prop :=
  ∀ n, (P13776326061310148866.a n : ℤ) = A087784 (n + 1)

end A087784

/-! ## A087784.P18324470385573236414

`A115076(n+1)*A134451(∑[A028242(n)])`
-/

namespace A087784.P18324470385573236414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115076 (n + 1) * A134451 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087784.P18324470385573236414

namespace A087784

/-- `A115076(n+1)*A134451(∑[A028242(n)])` -/
def P18324470385573236414.Spec : Prop :=
  ∀ n, P18324470385573236414.a n = A087784 (n + 1)

end A087784

/-!
# A087786: a(n) = number of solutions to x^3 - y^3 == 0 (mod n).

The programs for A087786, there is no canonical definition to state claims against.
-/

/-! ## A087786.P8027371027626417355

`2*A376757(n+1)-(n+1)`
-/

namespace A087786.P8027371027626417355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A376757 (n + 1) - (n + 1 : ℤ)

end

end A087786.P8027371027626417355

/-! ## A087786.P18314979217840530689

`A004273(A376757(n+1))-n`
-/

namespace A087786.P18314979217840530689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A376757 (n + 1)).toNat - (n : ℤ)

end

end A087786.P18314979217840530689

/-!
# A087787: a(n) = Sum_{k=0..n} (-1)^(n-k)*A000041(k).

The programs for A087787, there is no canonical definition to state claims against.
-/

/-! ## A087787.P9913680767192228137

`A000041(n)-a(n-1)` with `a(0)=1`
-/

namespace A087787.P9913680767192228137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000041 n - a (n - 1)

end

end A087787.P9913680767192228137

/-! ## A087787.P15406722644065844581

`A024786(n+2)-A024786(n+1)`
-/

namespace A087787.P15406722644065844581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2) - A024786 (n + 1)

end

end A087787.P15406722644065844581

/-! ## A087787.P18091934739337897734

`A182712(n+2)`
-/

namespace A087787.P18091934739337897734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 2)

end

end A087787.P18091934739337897734

/-! ## A087787.P4447745582792396123

`A002865(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A087787.P4447745582792396123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A002865 n + a (n - 2)

end

end A087787.P4447745582792396123

/-! ## A087787.P907901991419762479

`A270143(n+1)+A270143(n)`
-/

namespace A087787.P907901991419762479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270143 (n + 1) + A270143 n

end

end A087787.P907901991419762479

/-! ## A087787.P16740435755711002417

`A182714(n+2)+A182714(n+4)`
-/

namespace A087787.P16740435755711002417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 2) + A182714 (n + 4)

end

end A087787.P16740435755711002417

/-! ## A087787.P315824627987226228

`A229816(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A087787.P315824627987226228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A229816 n - a (n - 3)

end

end A087787.P315824627987226228

/-! ## A087787.P14775342031294345416

`A000065(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A087787.P14775342031294345416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000065 n + (1 - a (n - 1))

end

end A087787.P14775342031294345416

/-! ## A087787.P7910998742046100869

`A052810(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A087787.P7910998742046100869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052810 n - (a (n - 1) + 1)

end

end A087787.P7910998742046100869

/-! ## A087787.P938651820598969587

`A133041(n)-(a(n-1)+n)` with `a(0)=1`
-/

namespace A087787.P938651820598969587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133041 n - (a (n - 1) + (n : ℤ))

end

end A087787.P938651820598969587

/-! ## A087787.P14592796749144855384

`A018783(n)+A000837(n)-a(n-1)` with `a(0)=1`
-/

namespace A087787.P14592796749144855384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018783 n + A000837 n - a (n - 1)

end

end A087787.P14592796749144855384

/-! ## A087787.P14441674957316353113

`A039900(n)+A003106(n)-a(n-1)` with `a(0)=1`
-/

namespace A087787.P14441674957316353113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039900 n + A003106 n - a (n - 1)

end

end A087787.P14441674957316353113

/-! ## A087787.P655298752155975854

`A046682(n)+A000701(n)-a(n-1)` with `a(0)=1`
-/

namespace A087787.P655298752155975854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046682 n + A000701 n - a (n - 1)

end

end A087787.P655298752155975854

/-! ## A087787.P484397609381385221

`A295341(n)+A000726(n)-a(n-1)` with `a(0)=1`
-/

namespace A087787.P484397609381385221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295341 n + A000726 n - a (n - 1)

end

end A087787.P484397609381385221

/-! ## A087787.P13757496528836325161

`Δ[A024786(n+1)]`
-/

namespace A087787.P13757496528836325161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087787.P13757496528836325161

/-! ## A087787.P13258179484686768222

`Δ[Δ[A000097(n)-A000070(n)]]`
-/

namespace A087787.P13258179484686768222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n - A000070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087787.P13258179484686768222

/-! ## A087787.P13423967055622146755

`Δ[Δ[A103628(n)-A103650(n+1)]]`
-/

namespace A087787.P13423967055622146755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103628 n - A103650 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087787.P13423967055622146755

/-! ## A087787.P15134155001998561190

`A135348(n+1)-A093695(n+1)`
-/

namespace A087787.P15134155001998561190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135348 (n + 1) - A093695 (n + 1)

end

end A087787.P15134155001998561190

/-! ## A087787.P11248589313218932982

`A000070(n)+A093695(n)-A093695(n+1)`
-/

namespace A087787.P11248589313218932982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (A093695 n - A093695 (n + 1))

end

end A087787.P11248589313218932982

/-! ## A087787.P17411621879385261830

`Δ[Δ[A093695(n)/2]]`
-/

namespace A087787.P17411621879385261830
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093695 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087787.P17411621879385261830

/-!
# A087788: 3-Carmichael numbers: Carmichael numbers equal to the product of 3 primes: k = p*q*r, where p < q < r are primes such that a^(k-1) == 1 (mod k) if a is prime to k.

The programs for A087788, there is no canonical definition to state claims against.
-/

/-! ## A087788.P10814945163853162213

`A002997(eq[3, A135717(n+1)]+1)`
-/

namespace A087788.P10814945163853162213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A087788.P10814945163853162213

/-! ## A087788.P8253805135069501468

`record[A002997(n+1)/(A135717(n+1)-2)]`
-/

namespace A087788.P8253805135069501468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002997 (n + 1) : ℚ) / (A135717 (n + 1) - 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087788.P8253805135069501468

/-! ## A087788.P4982293461289120345

`∩[A002997(n+1), A215672(n+1)]`
-/

namespace A087788.P4982293461289120345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087788.P4982293461289120345

/-! ## A087788.P12645326703735470664

`∩[A215672(n+1), A355039(n+1)]`
-/

namespace A087788.P12645326703735470664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087788.P12645326703735470664

/-! ## A087788.P10697044675880253849

`∩[A087442(n+1), A215672(n+1)]`
-/

namespace A087788.P10697044675880253849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087788.P10697044675880253849

/-! ## A087788.P321629331909657150

`∩[A215672(n+1), A225498(n+1)]`
-/

namespace A087788.P321629331909657150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087788.P321629331909657150

/-! ## A087788.P8502543102211093666

`∩[A080062(n+1), A215672(n+1)]`
-/

namespace A087788.P8502543102211093666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087788.P8502543102211093666

/-! ## A087788.P16425176899058536211

`∩[A104016(n+1), A215672(n+1)]`
-/

namespace A087788.P16425176899058536211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087788.P16425176899058536211

/-!
# A087789: Smallest number greater than n having the same greatest prime factor as n; a(1)=1.

The programs for A087789, there is no canonical definition to state claims against.
-/

/-! ## A087789.P7425168110558560027

`Δ[A071830(n)+a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A087789.P7425168110558560027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A071830 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087789.P7425168110558560027

/-! ## A087789.P11412069714150338059

`A071830(a((n%2)!-1)+n)` with `a(0)=1`
-/

namespace A087789.P11412069714150338059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071830 (a (Nat.factorial (n % 2) - 1) + (n : ℤ)).toNat

end

end A087789.P11412069714150338059

/-! ## A087789.P4511421349750605494

`A071830(a((1-and(2, n))²-1)+n)` with `a(0)=1`
-/

namespace A087789.P4511421349750605494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071830 (a ((1 - (Nat.land 2 n : ℤ)) ^ 2 - 1).toNat + (n : ℤ)).toNat

end

end A087789.P4511421349750605494

/-! ## A087789.P617291635850950644

`A071830(round(sqrt(n*1/a(n-1)))+n)` with `a(0)=1`
-/

namespace A087789.P617291635850950644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071830 (SequenceMachineLib.roundAway (Real.sqrt ((n : ℚ) * (1 / (a (n - 1) : ℚ)) : ℝ)) + (n : ℤ)).toNat

end

end A087789.P617291635850950644

/-! ## A087789.P5928856208055642273

`A071830(A054977(a(n-1))+n)` with `a(0)=1`
-/

namespace A087789.P5928856208055642273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071830 (A054977 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A087789.P5928856208055642273

/-! ## A087789.P8039116867415389699

`A071830(abs(A033999(a(n-1)))+n)` with `a(0)=1`
-/

namespace A087789.P8039116867415389699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071830 (|A033999 (a (n - 1)).toNat| + (n : ℤ)).toNat

end

end A087789.P8039116867415389699

/-! ## A087789.P16039285467502836025

`A071830(A054977(n)+n)^A178334(n)`
-/

namespace A087789.P16039285467502836025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071830 (A054977 n + (n : ℤ)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A087789.P16039285467502836025

/-! ## A087789.P2032424883597346451

`A071830(A054977(n)+n)%A000040(n+2)`
-/

namespace A087789.P2032424883597346451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071830 (A054977 n + (n : ℤ)).toNat) (A000040 (n + 2))

end

end A087789.P2032424883597346451

/-! ## A087789.P17109259429214594343

`A071830(A000007(n)+1+n)%A000040(n+2)`
-/

namespace A087789.P17109259429214594343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071830 (A000007 n + 1 + (n : ℤ)).toNat) (A000040 (n + 2))

end

end A087789.P17109259429214594343

/-! ## A087789.P12068025287695797173

`A071830(A054977(n)+n)^(1-and(1, A000010(n+2)))`
-/

namespace A087789.P12068025287695797173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071830 (A054977 n + (n : ℤ)).toNat : ℚ) ^ (1 - Int.land 1 (A000010 (n + 2)) : ℤ)

end

end A087789.P12068025287695797173

/-!
# A087790: Partial sums of A085068.

The programs for A087790, there is no canonical definition to state claims against.
-/

/-! ## A087790.P12777190851813286018

`∑[A085068(n)]`
-/

namespace A087790.P12777190851813286018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087790.P12777190851813286018

/-! ## A087790.P7555308436339061217

`A085068(floor(acot(n)+n))+a(n-1)` with `a(0)=1`
-/

namespace A087790.P7555308436339061217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085068 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + a (n - 1)

end

end A087790.P7555308436339061217

/-! ## A087790.P1141670952150801469

`A085068(round(acot(n+1)+n))+a(n-1)` with `a(0)=1`
-/

namespace A087790.P1141670952150801469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085068 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ))).toNat + a (n - 1)

end

end A087790.P1141670952150801469

/-! ## A087790.P945335021822687880

`A085068(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A087790.P945335021822687880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085068 (A028310 n).toNat + a (n - 1)

end

end A087790.P945335021822687880

/-! ## A087790.P4997236514365719028

`A085068(sqrt(A000290(n)))+a(n-1)` with `a(0)=1`
-/

namespace A087790.P4997236514365719028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085068 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + a (n - 1)

end

end A087790.P4997236514365719028

/-! ## A087790.P13921299615932328588

`a(n-1)-(n-A028310(n)-A085068(n))` with `a(0)=1`
-/

namespace A087790.P13921299615932328588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((n : ℤ) - A028310 n - A085068 n)

end

end A087790.P13921299615932328588

/-! ## A087790.P9701170198804460457

`A085068(A037213(n²))+a(n-1)` with `a(0)=1`
-/

namespace A087790.P9701170198804460457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085068 (A037213 (n ^ 2)).toNat + a (n - 1)

end

end A087790.P9701170198804460457

/-!
# A087791: Indices n such that S^n(1) is an integer where S(x) = 3/2*ceiling(x).

The programs for A087791, there is no canonical definition to state claims against.
-/

/-! ## A087791.P14876242440353872741

`comp[eq[1, A304273(n+1)]]`
-/

namespace A087791.P14876242440353872741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A087791.P14876242440353872741

/-! ## A087791.P17627596109093443652

`lt[A205083(n+1), acot(n)]`
-/

namespace A087791.P17627596109093443652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A087791.P17627596109093443652

/-! ## A087791.P15428716726072024871

`eq[1, gcd(3, A061418(n+1))]`
-/

namespace A087791.P15428716726072024871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A061418 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087791.P15428716726072024871

/-! ## A087791.P9332794292896945180

`eq[0, A205083(abs(1-n)+2)]`
-/

namespace A087791.P9332794292896945180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087791.P9332794292896945180

/-! ## A087791.P10189217315972731091

`eq[0, A304273(abs(1-n)+2)]`
-/

namespace A087791.P10189217315972731091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087791.P10189217315972731091

/-! ## A087791.P17244950289495144663

`comp[n*A205083(n+2)+1]`
-/

namespace A087791.P17244950289495144663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A205083 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A087791.P17244950289495144663

/-! ## A087791.P18006819677431416505

`comp[C(n+2, A304273(n+3))]`
-/

namespace A087791.P18006819677431416505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A304273 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A087791.P18006819677431416505

/-! ## A087791.P3580932604511678426

`eq[A205083(n+1), A285476(n)]`
-/

namespace A087791.P3580932604511678426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087791.P3580932604511678426

/-! ## A087791.P4453307130015117066

`lt[A000045(n*A304273(n+1)), 1]`
-/

namespace A087791.P4453307130015117066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n : ℤ) * A304273 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A087791.P4453307130015117066

/-! ## A087791.P5105736125229804259

`eq[2-A304273(n+1), A001222(A006530(n+1)²)]`
-/

namespace A087791.P5105736125229804259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A304273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006530 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087791.P5105736125229804259

/-!
# A087792: Indices n such that S^n(1) is an integer where S(x) = 4/3*ceiling(x).

The programs for A087792, there is no canonical definition to state claims against.
-/

/-! ## A087792.P12944594448442002085

`lt[A087192(n+1)%4, 2]`
-/

namespace A087792.P12944594448442002085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087192 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A087792.P12944594448442002085

/-! ## A087792.P11554667795391963204

`eq[2, and(2, A100585(n+1))]`
-/

namespace A087792.P11554667795391963204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A100585 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087792.P11554667795391963204

/-! ## A087792.P11733754422896493805

`eq[or(2, A087192(n+1)), A100585(n+1)]`
-/

namespace A087792.P11733754422896493805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A087192 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087792.P11733754422896493805

/-! ## A087792.P11335426210101343655

`eq[A245356(n+1)%A003312(n+1), A087192(n+1)]`
-/

namespace A087792.P11335426210101343655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245356 (n + 1)) (A003312 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087792.P11335426210101343655

/-!
# A087794: Products of prime-indices of factors of semiprimes.

The programs for A087794, the canonical program `A087794.P13110906513049781115` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087794 has offset 1).

The definition of A087794 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338912, A338913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087794.P13110906513049781115

`A338912(n+1)*A338913(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A087794

/-- `A338912(n+1)*A338913(n+1)` -/
def P13110906513049781115.Spec : Prop :=
  ∀ n, P13110906513049781115.a n = A087794 (n + 1)

theorem P13110906513049781115.correct : P13110906513049781115.Spec := by
  intro n
  simp only [A087794, Nat.add_sub_cancel]

end A087794

/-! ## A087794.P11686324598953743115

`A049084(A084126(n+1))*A049084(A084127(n+1))`
-/

namespace A087794.P11686324598953743115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A084126 (n + 1)).toNat * A049084 (A084127 (n + 1)).toNat

end

end A087794.P11686324598953743115

namespace A087794

/-- `A049084(A084126(n+1))*A049084(A084127(n+1))` -/
def P11686324598953743115.Spec : Prop :=
  ∀ n, P11686324598953743115.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P6582987542763718864

`A003963(A001358(n+1))`
-/

namespace A087794.P6582987542763718864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A001358 (n + 1)).toNat

end

end A087794.P6582987542763718864

namespace A087794

/-- `A003963(A001358(n+1))` -/
def P6582987542763718864.Spec : Prop :=
  ∀ n, P6582987542763718864.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P14279473486926295919

`(A338912(n+1)+A176506(n+1))*A338912(n+1)`
-/

namespace A087794.P14279473486926295919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338912 (n + 1) + A176506 (n + 1)) * A338912 (n + 1)

end

end A087794.P14279473486926295919

namespace A087794

/-- `(A338912(n+1)+A176506(n+1))*A338912(n+1)` -/
def P14279473486926295919.Spec : Prop :=
  ∀ n, P14279473486926295919.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P2705105632421037104

`(A176504(n+1)-A338912(n+1))*A338912(n+1)`
-/

namespace A087794.P2705105632421037104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176504 (n + 1) - A338912 (n + 1)) * A338912 (n + 1)

end

end A087794.P2705105632421037104

namespace A087794

/-- `(A176504(n+1)-A338912(n+1))*A338912(n+1)` -/
def P2705105632421037104.Spec : Prop :=
  ∀ n, P2705105632421037104.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P16204676777010189454

`(A176504(n+1)-A338913(n+1))*A338913(n+1)`
-/

namespace A087794.P16204676777010189454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176504 (n + 1) - A338913 (n + 1)) * A338913 (n + 1)

end

end A087794.P16204676777010189454

namespace A087794

/-- `(A176504(n+1)-A338913(n+1))*A338913(n+1)` -/
def P16204676777010189454.Spec : Prop :=
  ∀ n, P16204676777010189454.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P3501383561819604499

`(A338913(n+1)-A176506(n+1))*A338913(n+1)`
-/

namespace A087794.P3501383561819604499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338913 (n + 1) - A176506 (n + 1)) * A338913 (n + 1)

end

end A087794.P3501383561819604499

namespace A087794

/-- `(A338913(n+1)-A176506(n+1))*A338913(n+1)` -/
def P3501383561819604499.Spec : Prop :=
  ∀ n, P3501383561819604499.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P1341731249305010701

`A003963(A176540(n+2))`
-/

namespace A087794.P1341731249305010701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A176540 (n + 2)).toNat

end

end A087794.P1341731249305010701

namespace A087794

/-- `A003963(A176540(n+2))` -/
def P1341731249305010701.Spec : Prop :=
  ∀ n, P1341731249305010701.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P6819756173626877311

`A003963(lt[1, A105700(n)])`
-/

namespace A087794.P6819756173626877311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A087794.P6819756173626877311

namespace A087794

/-- `A003963(lt[1, A105700(n)])` -/
def P6819756173626877311.Spec : Prop :=
  ∀ n, P6819756173626877311.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P8650401534453527323

`A003963(eq[2, A105700(n)])`
-/

namespace A087794.P8650401534453527323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087794.P8650401534453527323

namespace A087794

/-- `A003963(eq[2, A105700(n)])` -/
def P8650401534453527323.Spec : Prop :=
  ∀ n, P8650401534453527323.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P9847010413893162369

`A003963(sqrt(A074985(n+1)))`
-/

namespace A087794.P9847010413893162369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A087794.P9847010413893162369

namespace A087794

/-- `A003963(sqrt(A074985(n+1)))` -/
def P9847010413893162369.Spec : Prop :=
  ∀ n, P9847010413893162369.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P5599998470068288643

`A003963(A186621(n+1)+1)`
-/

namespace A087794.P5599998470068288643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A186621 (n + 1) + 1).toNat

end

end A087794.P5599998470068288643

namespace A087794

/-- `A003963(A186621(n+1)+1)` -/
def P5599998470068288643.Spec : Prop :=
  ∀ n, P5599998470068288643.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P4628986102733897561

`A003963(A088707(n+1)-1)`
-/

namespace A087794.P4628986102733897561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A088707 (n + 1) - 1).toNat

end

end A087794.P4628986102733897561

namespace A087794

/-- `A003963(A088707(n+1)-1)` -/
def P4628986102733897561.Spec : Prop :=
  ∀ n, P4628986102733897561.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P428717248070512318

`A003963(A075818(n+1)/2)`
-/

namespace A087794.P428717248070512318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A087794.P428717248070512318

namespace A087794

/-- `A003963(A075818(n+1)/2)` -/
def P428717248070512318.Spec : Prop :=
  ∀ n, P428717248070512318.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P14176078481141264313

`A003963(eq[2, A001222(n+1)]+1)`
-/

namespace A087794.P14176078481141264313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A087794.P14176078481141264313

namespace A087794

/-- `A003963(eq[2, A001222(n+1)]+1)` -/
def P14176078481141264313.Spec : Prop :=
  ∀ n, P14176078481141264313.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P14368658277573100251

`A333352(eq[2, A001222(n+1)]+1)`
-/

namespace A087794.P14368658277573100251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A087794.P14368658277573100251

namespace A087794

/-- `A333352(eq[2, A001222(n+1)]+1)` -/
def P14368658277573100251.Spec : Prop :=
  ∀ n, P14368658277573100251.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P13267196981818353316

`A003963(A075818(n+1))`
-/

namespace A087794.P13267196981818353316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A075818 (n + 1)).toNat

end

end A087794.P13267196981818353316

namespace A087794

/-- `A003963(A075818(n+1))` -/
def P13267196981818353316.Spec : Prop :=
  ∀ n, P13267196981818353316.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P4772354079789077793

`A003963(A176570(n+1))`
-/

namespace A087794.P4772354079789077793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A176570 (n + 1)).toNat

end

end A087794.P4772354079789077793

namespace A087794

/-- `A003963(A176570(n+1))` -/
def P4772354079789077793.Spec : Prop :=
  ∀ n, P4772354079789077793.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P1649616563882612108

`A338898(2*(n+1))*A338912(n+1)`
-/

namespace A087794.P1649616563882612108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338898 (2 * (n + 1)) * A338912 (n + 1)

end

end A087794.P1649616563882612108

namespace A087794

/-- `A338898(2*(n+1))*A338912(n+1)` -/
def P1649616563882612108.Spec : Prop :=
  ∀ n, P1649616563882612108.a n = A087794 (n + 1)

end A087794

/-! ## A087794.P18385050114139868837

`A338898(2*n+1)*A338913(n+1)`
-/

namespace A087794.P18385050114139868837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338898 (2 * n + 1) * A338913 (n + 1)

end

end A087794.P18385050114139868837

namespace A087794

/-- `A338898(2*n+1)*A338913(n+1)` -/
def P18385050114139868837.Spec : Prop :=
  ∀ n, P18385050114139868837.a n = A087794 (n + 1)

end A087794

/-!
# A087797: Primes, squares of primes and cubes of primes.

The programs for A087797, the canonical program `A087797.P15522956253544412855` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087797 has offset 1).

The definition of A087797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087797.P15522956253544412855

`eq[1, ∑{e}[n, A000196(#)]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087797

/-- `eq[1, ∑{e}[n, A000196(#)]]` -/
def P15522956253544412855.Spec : Prop :=
  ∀ n, (P15522956253544412855.a n : ℤ) = A087797 (n + 1)

theorem P15522956253544412855.correct : P15522956253544412855.Spec := by
  intro n
  simp only [A087797, Nat.add_sub_cancel]

end A087797

/-! ## A087797.P12674704238802322212

`eq[1, A353381(n+1)]+1`
-/

namespace A087797.P12674704238802322212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A087797.P12674704238802322212

namespace A087797

/-- `eq[1, A353381(n+1)]+1` -/
def P12674704238802322212.Spec : Prop :=
  ∀ n, (P12674704238802322212.a n : ℤ) = A087797 (n + 1)

end A087797

/-! ## A087797.P5158488337078741050

`lt[A342001(n+2)-1, 3]+2`
-/

namespace A087797.P5158488337078741050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 2) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A087797.P5158488337078741050

namespace A087797

/-- `lt[A342001(n+2)-1, 3]+2` -/
def P5158488337078741050.Spec : Prop :=
  ∀ n, (P5158488337078741050.a n : ℤ) = A087797 (n + 1)

end A087797

/-! ## A087797.P4450078125511223624

`lt[n, A014963(n+2)^3]+2`
-/

namespace A087797.P4450078125511223624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A087797.P4450078125511223624

namespace A087797

/-- `lt[n, A014963(n+2)^3]+2` -/
def P4450078125511223624.Spec : Prop :=
  ∀ n, (P4450078125511223624.a n : ℤ) = A087797 (n + 1)

end A087797

/-! ## A087797.P6632758107864002488

`record[gcd(n+2, A006530(n+2)^3)]`
-/

namespace A087797.P6632758107864002488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A006530 (n + 2) ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087797.P6632758107864002488

namespace A087797

/-- `record[gcd(n+2, A006530(n+2)^3)]` -/
def P6632758107864002488.Spec : Prop :=
  ∀ n, (P6632758107864002488.a n : ℤ) = A087797 (n + 1)

end A087797

/-! ## A087797.P869829567844988661

`lt[n+1, A014963(n+1)²²]+1`
-/

namespace A087797.P869829567844988661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A087797.P869829567844988661

namespace A087797

/-- `lt[n+1, A014963(n+1)²²]+1` -/
def P869829567844988661.Spec : Prop :=
  ∀ n, (P869829567844988661.a n : ℤ) = A087797 (n + 1)

end A087797

/-! ## A087797.P4858732527655840875

`eq[A223135(n), A388303(n)]`
-/

namespace A087797.P4858732527655840875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087797.P4858732527655840875

namespace A087797

/-- `eq[A223135(n), A388303(n)]` -/
def P4858732527655840875.Spec : Prop :=
  ∀ n, (P4858732527655840875.a n : ℤ) = A087797 (n + 1)

end A087797

/-! ## A087797.P14960041197991333193

`eq[A223135(n), A389146(n)]`
-/

namespace A087797.P14960041197991333193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087797.P14960041197991333193

namespace A087797

/-- `eq[A223135(n), A389146(n)]` -/
def P14960041197991333193.Spec : Prop :=
  ∀ n, (P14960041197991333193.a n : ℤ) = A087797 (n + 1)

end A087797

/-! ## A087797.P16576855955798996732

`eq[1, A297167(A077462(n)+1)]`
-/

namespace A087797.P16576855955798996732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (A077462 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087797.P16576855955798996732

namespace A087797

/-- `eq[1, A297167(A077462(n)+1)]` -/
def P16576855955798996732.Spec : Prop :=
  ∀ n, (P16576855955798996732.a n : ℤ) = A087797 (n + 1)

end A087797

/-! ## A087797.P15489502641058842444

`filter[A007964(n+1), A069513(#)]`
-/

namespace A087797.P15489502641058842444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A087797.P15489502641058842444

namespace A087797

/-- `filter[A007964(n+1), A069513(#)]` -/
def P15489502641058842444.Spec : Prop :=
  ∀ n, P15489502641058842444.a n = A087797 (n + 1)

end A087797

/-! ## A087797.P15239403115224222869

`filter[A007964(n+1), A092248(#)]`
-/

namespace A087797.P15239403115224222869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A087797.P15239403115224222869

namespace A087797

/-- `filter[A007964(n+1), A092248(#)]` -/
def P15239403115224222869.Spec : Prop :=
  ∀ n, P15239403115224222869.a n = A087797 (n + 1)

end A087797

/-! ## A087797.P4418693311037482102

`filter[A037144(n+1), A069513(#)]`
-/

namespace A087797.P4418693311037482102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A087797.P4418693311037482102

namespace A087797

/-- `filter[A037144(n+1), A069513(#)]` -/
def P4418693311037482102.Spec : Prop :=
  ∀ n, P4418693311037482102.a n = A087797 (n + 1)

end A087797

/-! ## A087797.P12493496316409791310

`filter[A046100(n+1), A069513(#)]`
-/

namespace A087797.P12493496316409791310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A087797.P12493496316409791310

namespace A087797

/-- `filter[A046100(n+1), A069513(#)]` -/
def P12493496316409791310.Spec : Prop :=
  ∀ n, P12493496316409791310.a n = A087797 (n + 1)

end A087797

/-! ## A087797.P9883870681216329001

`filter[A088380(n+1), A069513(#)]`
-/

namespace A087797.P9883870681216329001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A087797.P9883870681216329001

namespace A087797

/-- `filter[A088380(n+1), A069513(#)]` -/
def P9883870681216329001.Spec : Prop :=
  ∀ n, P9883870681216329001.a n = A087797 (n + 1)

end A087797

/-! ## A087797.P6041438630323014266

`filter[A088380(n+1), A092248(#)]`
-/

namespace A087797.P6041438630323014266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A087797.P6041438630323014266

namespace A087797

/-- `filter[A088380(n+1), A092248(#)]` -/
def P6041438630323014266.Spec : Prop :=
  ∀ n, P6041438630323014266.a n = A087797 (n + 1)

end A087797

/-! ## A087797.P11220017447976673237

`filter[A117657(n+1), A069513(#)]`
-/

namespace A087797.P11220017447976673237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A087797.P11220017447976673237

namespace A087797

/-- `filter[A117657(n+1), A069513(#)]` -/
def P11220017447976673237.Spec : Prop :=
  ∀ n, P11220017447976673237.a n = A087797 (n + 1)

end A087797

/-! ## A087797.P9371743122591791363

`filter[A096165(n+1), A123927(#)]`
-/

namespace A087797.P9371743122591791363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A087797.P9371743122591791363

namespace A087797

/-- `filter[A096165(n+1), A123927(#)]` -/
def P9371743122591791363.Spec : Prop :=
  ∀ n, P9371743122591791363.a n = A087797 (n + 1)

end A087797

/-! ## A087797.P7495352934908121066

`filter[A253781(n+1), A069513(#)]`
-/

namespace A087797.P7495352934908121066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A087797.P7495352934908121066

namespace A087797

/-- `filter[A253781(n+1), A069513(#)]` -/
def P7495352934908121066.Spec : Prop :=
  ∀ n, P7495352934908121066.a n = A087797 (n + 1)

end A087797

/-! ## A087797.P10301100722560715628

`filter[A277187(n+1), A069513(#)]`
-/

namespace A087797.P10301100722560715628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A087797.P10301100722560715628

namespace A087797

/-- `filter[A277187(n+1), A069513(#)]` -/
def P10301100722560715628.Spec : Prop :=
  ∀ n, P10301100722560715628.a n = A087797 (n + 1)

end A087797

/-! ## A087797.P12842160572232081538

`filter[A277187(n+1), A092248(#)]`
-/

namespace A087797.P12842160572232081538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A087797.P12842160572232081538

namespace A087797

/-- `filter[A277187(n+1), A092248(#)]` -/
def P12842160572232081538.Spec : Prop :=
  ∀ n, P12842160572232081538.a n = A087797 (n + 1)

end A087797

/-!
# A087798: a(n) = 9*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 9.

The programs for A087798, the canonical program `A087798.P14684670140513410963` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087798 has offset 0).

The definition of A087798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+a(n-2)` (program `A087798.P14684670140513410963`, by `A087798.P14684670140513410963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087798.P14684670140513410963

`9*a(n-1)+a(n-2)` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087798

/-- `9*a(n-1)+a(n-2)` -/
def P14684670140513410963.Spec : Prop :=
  ∀ n, (P14684670140513410963.a n : ℤ) = A087798 n

theorem P14684670140513410963.correct : P14684670140513410963.Spec := by
  intro n
  simp only [A087798]

end A087798

/-! ## A087798.P7176450909643231665

`((9+sqrt(85))/2)^n+((9-sqrt(85))/2)^n`
-/

namespace A087798.P7176450909643231665
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (85 : ℝ)) / 2) ^ n + ((9 - Real.sqrt (85 : ℝ)) / 2) ^ n

end

end A087798.P7176450909643231665

namespace A087798

/-- `((9+sqrt(85))/2)^n+((9-sqrt(85))/2)^n` -/
def P7176450909643231665.Spec : Prop :=
  ∀ n, P7176450909643231665.a n = (A087798 n : ℝ)

end A087798

/-! ## A087798.P14824432165264548543

`ogf((-2+9x)/(-1+9x+x^2))`
-/

namespace A087798.P14824432165264548543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -9] [1, -9, -1] n

end

end A087798.P14824432165264548543

namespace A087798

/-- `ogf((-2+9x)/(-1+9x+x^2))` -/
def P14824432165264548543.Spec : Prop :=
  ∀ n, P14824432165264548543.a n = A087798 n

end A087798

/-! ## A087798.P11462198263952271381

`floor(a(n-2)-3*(a(n-1)-4*a(n-1)))` with `a(0)=2, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A087798.P11462198263952271381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  a (n - 2) - 3 * (a (n - 1) - 4 * a (n - 1))

end

end A087798.P11462198263952271381

namespace A087798

/-- `floor(a(n-2)-3*(a(n-1)-4*a(n-1)))` -/
def P11462198263952271381.Spec : Prop :=
  ∀ n, P11462198263952271381.a n = A087798 n

end A087798

/-! ## A087798.P14585175562833218520

`ceil(a(n-2)-3*(a(n-1)-4*a(n-1)))` with `a(0)=2, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A087798.P14585175562833218520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  a (n - 2) - 3 * (a (n - 1) - 4 * a (n - 1))

end

end A087798.P14585175562833218520

namespace A087798

/-- `ceil(a(n-2)-3*(a(n-1)-4*a(n-1)))` -/
def P14585175562833218520.Spec : Prop :=
  ∀ n, P14585175562833218520.a n = A087798 n

end A087798

/-! ## A087798.P13708721322483435442

`floor(sqrt(A099373(n)+2))`
-/

namespace A087798.P13708721322483435442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A099373 n + 2)

end

end A087798.P13708721322483435442

namespace A087798

/-- `floor(sqrt(A099373(n)+2))` -/
def P13708721322483435442.Spec : Prop :=
  ∀ n, P13708721322483435442.a n = A087798 n

end A087798

/-! ## A087798.P12326848759499244001

`round(sqrt(A099373(n)+A000032(n)))`
-/

namespace A087798.P12326848759499244001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A099373 n + A000032 n : ℝ))

end

end A087798.P12326848759499244001

namespace A087798

/-- `round(sqrt(A099373(n)+A000032(n)))` -/
def P12326848759499244001.Spec : Prop :=
  ∀ n, P12326848759499244001.a n = A087798 n

end A087798

/-! ## A087798.P10769323394622089646

`round(sqrt(A099373(n)+A000040(n+1)))`
-/

namespace A087798.P10769323394622089646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A099373 n + A000040 (n + 1) : ℝ))

end

end A087798.P10769323394622089646

namespace A087798

/-- `round(sqrt(A099373(n)+A000040(n+1)))` -/
def P10769323394622089646.Spec : Prop :=
  ∀ n, P10769323394622089646.a n = A087798 n

end A087798

/-!
# A087799: a(n) = 10*a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 10.

The programs for A087799, the canonical program `A087799.P5309062738963451992` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087799 has offset 0).

The definition of A087799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A087799.P5309062738963451992`, by `A087799.P5309062738963451992.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087799.P5309062738963451992

`10*a(n-1)-a(n-2)` with `a(0)=2, a(1)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087799

/-- `10*a(n-1)-a(n-2)` -/
def P5309062738963451992.Spec : Prop :=
  ∀ n, P5309062738963451992.a n = A087799 n

theorem P5309062738963451992.correct : P5309062738963451992.Spec := by
  intro n
  simp only [A087799]

end A087799

/-! ## A087799.P12759716736882762922

`ogf((2-10x)/(1-10x+x^2))`
-/

namespace A087799.P12759716736882762922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10] [1, -10, 1] n

end

end A087799.P12759716736882762922

namespace A087799

/-- `ogf((2-10x)/(1-10x+x^2))` -/
def P12759716736882762922.Spec : Prop :=
  ∀ n, P12759716736882762922.a n = A087799 n

end A087799

/-! ## A087799.P10096619841163512434

`(5+sqrt(24))^n+(5-sqrt(24))^n`
-/

namespace A087799.P10096619841163512434
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 + Real.sqrt (24 : ℝ)) ^ n + (5 - Real.sqrt (24 : ℝ)) ^ n

end

end A087799.P10096619841163512434

namespace A087799

/-- `(5+sqrt(24))^n+(5-sqrt(24))^n` -/
def P10096619841163512434.Spec : Prop :=
  ∀ n, P10096619841163512434.a n = (A087799 n : ℝ)

end A087799

/-! ## A087799.P12343713508403216251

`2*A001079(n)`
-/

namespace A087799.P12343713508403216251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001079 n

end

end A087799.P12343713508403216251

namespace A087799

/-- `2*A001079(n)` -/
def P12343713508403216251.Spec : Prop :=
  ∀ n, P12343713508403216251.a n = A087799 n

end A087799

/-! ## A087799.P7077406457289565144

`lcm(2, A146311(n))`
-/

namespace A087799.P7077406457289565144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A146311 n)

end

end A087799.P7077406457289565144

namespace A087799

/-- `lcm(2, A146311(n))` -/
def P7077406457289565144.Spec : Prop :=
  ∀ n, (P7077406457289565144.a n : ℤ) = A087799 n

end A087799

/-! ## A087799.P15021579656142418969

`A204518(3*(n+1))`
-/

namespace A087799.P15021579656142418969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204518 (3 * (n + 1))

end

end A087799.P15021579656142418969

namespace A087799

/-- `A204518(3*(n+1))` -/
def P15021579656142418969.Spec : Prop :=
  ∀ n, P15021579656142418969.a n = A087799 n

end A087799

/-! ## A087799.P8646024249802805357

`2*A080872(2*n)`
-/

namespace A087799.P8646024249802805357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080872 (2 * n)

end

end A087799.P8646024249802805357

namespace A087799

/-- `2*A080872(2*n)` -/
def P8646024249802805357.Spec : Prop :=
  ∀ n, P8646024249802805357.a n = A087799 n

end A087799

/-! ## A087799.P2840060976894131982

`2*A142238(A004273(n))`
-/

namespace A087799.P2840060976894131982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142238 (A004273 n).toNat

end

end A087799.P2840060976894131982

namespace A087799

/-- `2*A142238(A004273(n))` -/
def P2840060976894131982.Spec : Prop :=
  ∀ n, P2840060976894131982.a n = A087799 n

end A087799

/-! ## A087799.P16944404298472437808

`record[A174503(n)+A000034(n)]`
-/

namespace A087799.P16944404298472437808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174503 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087799.P16944404298472437808

namespace A087799

/-- `record[A174503(n)+A000034(n)]` -/
def P16944404298472437808.Spec : Prop :=
  ∀ n, P16944404298472437808.a n = A087799 n

end A087799

/-! ## A087799.P12160742524855081203

`2*(A140780(n)+A001078(n))`
-/

namespace A087799.P12160742524855081203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140780 n + A001078 n)

end

end A087799.P12160742524855081203

namespace A087799

/-- `2*(A140780(n)+A001078(n))` -/
def P12160742524855081203.Spec : Prop :=
  ∀ n, P12160742524855081203.a n = A087799 n

end A087799

/-! ## A087799.P5558625637690261112

`2*(A054320(n)-A122653(n))`
-/

namespace A087799.P5558625637690261112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054320 n - A122653 n)

end

end A087799.P5558625637690261112

namespace A087799

/-- `2*(A054320(n)-A122653(n))` -/
def P5558625637690261112.Spec : Prop :=
  ∀ n, P5558625637690261112.a n = A087799 n

end A087799

/-! ## A087799.P17134671939474092823

`2*(A138288(n)-A122652(n))`
-/

namespace A087799.P17134671939474092823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138288 n - A122652 n)

end

end A087799.P17134671939474092823

namespace A087799

/-- `2*(A138288(n)-A122652(n))` -/
def P17134671939474092823.Spec : Prop :=
  ∀ n, P17134671939474092823.a n = A087799 n

end A087799

/-! ## A087799.P275703479939061657

`2*(A171640(n+1)+A132596(n))`
-/

namespace A087799.P275703479939061657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A171640 (n + 1) + A132596 n)

end

end A087799.P275703479939061657

namespace A087799

/-- `2*(A171640(n+1)+A132596(n))` -/
def P275703479939061657.Spec : Prop :=
  ∀ n, P275703479939061657.a n = A087799 n

end A087799

/-! ## A087799.P12093000448349768361

`2*(A041006(2*n)-A216073(2*n+1))`
-/

namespace A087799.P12093000448349768361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041006 (2 * n) - A216073 (2 * n + 1))

end

end A087799.P12093000448349768361

namespace A087799

/-- `2*(A041006(2*n)-A216073(2*n+1))` -/
def P12093000448349768361.Spec : Prop :=
  ∀ n, P12093000448349768361.a n = A087799 n

end A087799

/-! ## A087799.P4450991529166897746

`Δ[A122653(n)-A001079(n)]`
-/

namespace A087799.P4450991529166897746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122653 n - A001079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087799.P4450991529166897746

namespace A087799

/-- `Δ[A122653(n)-A001079(n)]` -/
def P4450991529166897746.Spec : Prop :=
  ∀ n, P4450991529166897746.a n = A087799 n

end A087799

/-! ## A087799.P7402321156873004857

`2*(A041006(2*n+1)-A041038(2*n))`
-/

namespace A087799.P7402321156873004857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041006 (2 * n + 1) - A041038 (2 * n))

end

end A087799.P7402321156873004857

namespace A087799

/-- `2*(A041006(2*n+1)-A041038(2*n))` -/
def P7402321156873004857.Spec : Prop :=
  ∀ n, P7402321156873004857.a n = A087799 n

end A087799

/-! ## A087799.P5399145271224127942

`2*(A041038(2*n+1)-A041038(2*n))`
-/

namespace A087799.P5399145271224127942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041038 (2 * n + 1) - A041038 (2 * n))

end

end A087799.P5399145271224127942

namespace A087799

/-- `2*(A041038(2*n+1)-A041038(2*n))` -/
def P5399145271224127942.Spec : Prop :=
  ∀ n, P5399145271224127942.a n = A087799 n

end A087799

