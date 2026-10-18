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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
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
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C023

/-!
# A254200: Number of length n 1..(4+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254200, there is no canonical definition to state claims against.
-/

/-! ## A254200.P12847063321954696154

`A254204(∑[n+3]+n+4)`
-/

namespace A254200.P12847063321954696154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A254200.P12847063321954696154

/-! ## A254200.P1262409775179231539

`A254204(A141214(n+1))%A254217(n+1)`
-/

namespace A254200.P1262409775179231539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254204 (A141214 (n + 1)).toNat) (A254217 (n + 1))

end

end A254200.P1262409775179231539

/-! ## A254200.P3346945410470603950

`∏{e}[2^(n+1), A254204(A141214(#))]`
-/

namespace A254200.P3346945410470603950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A254204 (A141214 (Nat.factorization (f1 n) p)).toNat

end

end A254200.P3346945410470603950

/-!
# A254201: Number of length n 1..(5+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254201, there is no canonical definition to state claims against.
-/

/-! ## A254201.P9501250679858531511

`A254204(∑[n+5]+6)`
-/

namespace A254201.P9501250679858531511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A254201.P9501250679858531511

/-!
# A254202: Number of length n 1..(6+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254202, there is no canonical definition to state claims against.
-/

/-! ## A254202.P3776727682229796436

`A254204(A052905(n+3))`
-/

namespace A254202.P3776727682229796436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A052905 (n + 3)).toNat

end

end A254202.P3776727682229796436

/-! ## A254202.P15560512531499083080

`A254204(A056119(n)+16)`
-/

namespace A254202.P15560512531499083080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A056119 n + 16).toNat

end

end A254202.P15560512531499083080

/-! ## A254202.P1547059164051838188

`A254204(eq[3, A219347(n)])`
-/

namespace A254202.P1547059164051838188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254202.P1547059164051838188

/-! ## A254202.P9506141106665108010

`A254204(eq[5, A193592(n)])`
-/

namespace A254202.P9506141106665108010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254202.P9506141106665108010

/-! ## A254202.P13608508201544219339

`A254204(A055999(n+3)+1)`
-/

namespace A254202.P13608508201544219339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A055999 (n + 3) + 1).toNat

end

end A254202.P13608508201544219339

/-!
# A254203: Number of length n 1..(7+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254203, there is no canonical definition to state claims against.
-/

/-! ## A254203.P4278876126351426845

`A254204(A055999(n+4))`
-/

namespace A254203.P4278876126351426845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A055999 (n + 4)).toNat

end

end A254203.P4278876126351426845

/-! ## A254203.P6702608534198229835

`A254204(eq[4, A219347(n)])`
-/

namespace A254203.P6702608534198229835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254203.P6702608534198229835

/-! ## A254203.P8126638764960149189

`A254204(eq[6, A193592(n)])`
-/

namespace A254203.P8126638764960149189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254203.P8126638764960149189

/-! ## A254203.P11706852592390951846

`A254204(Δ[A023551(n+2)])`
-/

namespace A254203.P11706852592390951846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (f1 (n + 1) - f1 n).toNat

end

end A254203.P11706852592390951846

/-! ## A254203.P15115545088457811624

`A254204(A052905(n+4)-1)`
-/

namespace A254203.P15115545088457811624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A052905 (n + 4) - 1).toNat

end

end A254203.P15115545088457811624

/-!
# A254204: T(n,k) = number of length n 1..(k+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254204, there is no canonical definition to state claims against.
-/

/-! ## A254204.P7225618115334499993

`A001222(A193592(n))+A153565(comp[xor(2, 6*n)+3])%4`
-/

namespace A254204.P7225618115334499993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A193592 n).toNat + Int.tmod (A153565 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 4

end

end A254204.P7225618115334499993

/-! ## A254204.P12695771648354068378

`A153248(A157729(n)+A056559(n))`
-/

namespace A254204.P12695771648354068378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153248 (A157729 n + A056559 n).toNat

end

end A254204.P12695771648354068378

/-! ## A254204.P15503961092592433923

`A097364(n+1)+A011731(A008998(n))`
-/

namespace A254204.P15503961092592433923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (n + 1) + A011731 (A008998 n).toNat

end

end A254204.P15503961092592433923

/-! ## A254204.P11313054141482694109

`A254218(n+1)+A243840(A157177(n))`
-/

namespace A254204.P11313054141482694109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (n + 1) + A243840 (A157177 n).toNat

end

end A254204.P11313054141482694109

/-! ## A254204.P2309370899030898036

`A102669(A109131(n+1)*A144289(n))`
-/

namespace A254204.P2309370899030898036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A109131 (n + 1) * A144289 n).toNat

end

end A254204.P2309370899030898036

/-!
# A254205: Number of length 2 1..(n+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254205, there is no canonical definition to state claims against.
-/

/-! ## A254205.P10407304754242575162

`A254219(n+1)+A065855(n+3)`
-/

namespace A254205.P10407304754242575162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254219 (n + 1) + A065855 (n + 3)

end

end A254205.P10407304754242575162

/-! ## A254205.P8599048507024996580

`A254204(∑[n+1]+2)`
-/

namespace A254205.P8599048507024996580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254205.P8599048507024996580

/-! ## A254205.P9340502107436234196

`or(char[1], A254204(A000217(n+1)+2))`
-/

namespace A254205.P9340502107436234196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254204 (A000217 (n + 1) + 2).toNat)

end

end A254205.P9340502107436234196

/-! ## A254205.P10157577689599685506

`A254204(A133263(n+1))%A000079(n)`
-/

namespace A254205.P10157577689599685506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254204 (A133263 (n + 1)).toNat) (A000079 n)

end

end A254205.P10157577689599685506

/-! ## A254205.P16808181488532873458

`∑{d}[A254204(A000217(n+1)+2), A000010(#)]`
-/

namespace A254205.P16808181488532873458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A000217 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A254205.P16808181488532873458

/-!
# A254206: Number of length 3 1..(n+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254206, there is no canonical definition to state claims against.
-/

/-! ## A254206.P3514454410129856568

`record[A254204(∑[n]+3)]`
-/

namespace A254206.P3514454410129856568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254206.P3514454410129856568

/-! ## A254206.P13647131056544780636

`A254204(∑[n+2]+4)`
-/

namespace A254206.P13647131056544780636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254206.P13647131056544780636

/-! ## A254206.P3910919911840623150

`record[gcd(A002262(n), A254204(n+3))]`
-/

namespace A254206.P3910919911840623150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254204 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254206.P3910919911840623150

/-!
# A254207: Number of length 4 1..(n+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254207, there is no canonical definition to state claims against.
-/

/-! ## A254207.P12648043355553770459

`A254204(∑[n+3]+7)`
-/

namespace A254207.P12648043355553770459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A254207.P12648043355553770459

/-!
# A254208: Number of length 5 1..(n+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254208, there is no canonical definition to state claims against.
-/

/-! ## A254208.P14164589418852977902

`A254204(∑[n+4]+11)`
-/

namespace A254208.P14164589418852977902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A254208.P14164589418852977902

/-!
# A254209: Number of length 6 1..(n+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254209, there is no canonical definition to state claims against.
-/

/-! ## A254209.P5619877715411810710

`A254204(∑[n+5]+16)`
-/

namespace A254209.P5619877715411810710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A254209.P5619877715411810710

/-! ## A254209.P6462445720715556156

`A254204(A000124(n+5)+5)%A000108(n+5)`
-/

namespace A254209.P6462445720715556156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254204 (A000124 (n + 5) + 5).toNat) (A000108 (n + 5))

end

end A254209.P6462445720715556156

/-! ## A254209.P9610307636391918706

`A007318(C(2, n))*A254204(A000124(n+5)+5)`
-/

namespace A254209.P9610307636391918706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A254204 (A000124 (n + 5) + 5).toNat

end

end A254209.P9610307636391918706

/-! ## A254209.P2510702116293924737

`A007318(and(1, -n))*A254204(A000124(n+5)+5)`
-/

namespace A254209.P2510702116293924737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A254204 (A000124 (n + 5) + 5).toNat

end

end A254209.P2510702116293924737

/-!
# A254210: Number of length 7 1..(n+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254210, there is no canonical definition to state claims against.
-/

/-! ## A254210.P10220170705466055990

`A254204(A167487(n+5))`
-/

namespace A254210.P10220170705466055990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A167487 (n + 5)).toNat

end

end A254210.P10220170705466055990

/-! ## A254210.P2639709248683103494

`A254204(A056119(n)+28)`
-/

namespace A254210.P2639709248683103494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A056119 n + 28).toNat

end

end A254210.P2639709248683103494

/-! ## A254210.P12183585619858235406

`A254204(eq[11, A066657(n)])`
-/

namespace A254210.P12183585619858235406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254210.P12183585619858235406

/-! ## A254210.P11875503713453497900

`A254204(A167614(n+5)+4)`
-/

namespace A254210.P11875503713453497900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A167614 (n + 5) + 4).toNat

end

end A254210.P11875503713453497900

/-! ## A254210.P5577631822681527048

`A254204(A000124(n+6)+6)`
-/

namespace A254210.P5577631822681527048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A000124 (n + 6) + 6).toNat

end

end A254210.P5577631822681527048

/-!
# A254212: Number of length n 1..(2+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254212, there is no canonical definition to state claims against.
-/

/-! ## A254212.P2150823756624070791

`A254218(∑[n+2])`
-/

namespace A254212.P2150823756624070791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254212.P2150823756624070791

/-! ## A254212.P13320034689606478116

`A254218(A000096(n+1))+char[21]`
-/

namespace A254212.P13320034689606478116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254212.P13320034689606478116

/-! ## A254212.P17727652037902993470

`A254218(A000096(n+1))%A348407(n)`
-/

namespace A254212.P17727652037902993470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254218 (A000096 (n + 1)).toNat) (A348407 n)

end

end A254212.P17727652037902993470

/-! ## A254212.P7362776966138796213

`∑{d}[A254218(A000096(n+1)), A000010(#)]`
-/

namespace A254212.P7362776966138796213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A000096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A254212.P7362776966138796213

/-!
# A254213: Number of length n 1..(3+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254213, there is no canonical definition to state claims against.
-/

/-! ## A254213.P3915322383324411823

`A254218(∑[n+3]+1)`
-/

namespace A254213.P3915322383324411823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254213.P3915322383324411823

/-! ## A254213.P4971797502206383201

`A254218(A034856(n+2))+char[42]`
-/

namespace A254213.P4971797502206383201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254213.P4971797502206383201

/-! ## A254213.P13938895138346559771

`A254218(A034856(n+2))%A000032(n)²`
-/

namespace A254213.P13938895138346559771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254218 (A034856 (n + 2)).toNat) (A000032 n ^ 2)

end

end A254213.P13938895138346559771

/-! ## A254213.P16844933095735219403

`A254218(A034856(n+2))/A007318(C(2, n))`
-/

namespace A254213.P16844933095735219403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254218 (A034856 (n + 2)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A254213.P16844933095735219403

/-! ## A254213.P13666890226442049281

`A254218(A034856(n+2))^ceil(1/A000041(n))`
-/

namespace A254213.P13666890226442049281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254218 (A034856 (n + 2)).toNat : ℚ) ^ (⌈1 / (A000041 n : ℚ)⌉ : ℤ)

end

end A254213.P13666890226442049281

/-!
# A254214: Number of length n 1..(4+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254214, there is no canonical definition to state claims against.
-/

/-! ## A254214.P11215874873703315968

`A254218(∑[n+4]+3)`
-/

namespace A254214.P11215874873703315968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A254214.P11215874873703315968

/-! ## A254214.P6414866219804937470

`or(A000038(n), A254218(A055998(n+2)))`
-/

namespace A254214.P6414866219804937470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A254218 (A055998 (n + 2)).toNat)

end

end A254214.P6414866219804937470

/-! ## A254214.P13665802048120363517

`A254218(A055998(n+2))%A254561(n+1)`
-/

namespace A254214.P13665802048120363517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254218 (A055998 (n + 2)).toNat) (A254561 (n + 1))

end

end A254214.P13665802048120363517

/-! ## A254214.P8183706034639669932

`A006519(2*n+5)*A254218(A055998(n+2))`
-/

namespace A254214.P8183706034639669932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 5) * A254218 (A055998 (n + 2)).toNat

end

end A254214.P8183706034639669932

/-! ## A254214.P17829988374529525412

`∑{d}[A254218(A141214(n+1)), A000010(#)]`
-/

namespace A254214.P17829988374529525412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A141214 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A254214.P17829988374529525412

/-!
# A254215: Number of length n 1..(5+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254215, there is no canonical definition to state claims against.
-/

/-! ## A254215.P10355296681190088204

`A254218(∑[n+5]+6)`
-/

namespace A254215.P10355296681190088204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A254215.P10355296681190088204

/-! ## A254215.P12418310063329640832

`A086844(A052948(n))-A353391(2*(n+2))`
-/

namespace A254215.P12418310063329640832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086844 (A052948 n).toNat - A353391 (2 * (n + 2))

end

end A254215.P12418310063329640832

/-!
# A254216: Number of length n 1..(6+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254216, there is no canonical definition to state claims against.
-/

/-! ## A254216.P10206942422634523096

`A254218(A052905(n+3))`
-/

namespace A254216.P10206942422634523096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A052905 (n + 3)).toNat

end

end A254216.P10206942422634523096

/-! ## A254216.P9268639052521442869

`A254218(A056119(n)+16)`
-/

namespace A254216.P9268639052521442869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A056119 n + 16).toNat

end

end A254216.P9268639052521442869

/-! ## A254216.P5666626396512915156

`A254218(eq[3, A219347(n)])`
-/

namespace A254216.P5666626396512915156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254216.P5666626396512915156

/-! ## A254216.P14896705970011739947

`A254218(eq[5, A193592(n)])`
-/

namespace A254216.P14896705970011739947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254216.P14896705970011739947

/-! ## A254216.P1932858357847661283

`A254218(eq[8, A258709(n)])`
-/

namespace A254216.P1932858357847661283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254216.P1932858357847661283

/-!
# A254217: Number of length n 1..(7+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254217, there is no canonical definition to state claims against.
-/

/-! ## A254217.P7167058667688802419

`A254218(A055999(n+4))`
-/

namespace A254217.P7167058667688802419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A055999 (n + 4)).toNat

end

end A254217.P7167058667688802419

/-! ## A254217.P4523767604550564361

`A254218(eq[4, A219347(n)])`
-/

namespace A254217.P4523767604550564361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254217.P4523767604550564361

/-! ## A254217.P14199813004394211882

`A254218(eq[6, A193592(n)])`
-/

namespace A254217.P14199813004394211882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254217.P14199813004394211882

/-! ## A254217.P15248960952256556397

`A254218(Δ[A023551(n+2)])`
-/

namespace A254217.P15248960952256556397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (f1 (n + 1) - f1 n).toNat

end

end A254217.P15248960952256556397

/-! ## A254217.P142091109718433189

`A254218(A155212(n+3)+2)`
-/

namespace A254217.P142091109718433189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A155212 (n + 3) + 2).toNat

end

end A254217.P142091109718433189

/-!
# A254218: T(n,k) = number of length n 1..(k+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254218, there is no canonical definition to state claims against.
-/

/-! ## A254218.P2849246267231730711

`A153565(comp[xor(2, 6*n)+3])%4`
-/

namespace A254218.P2849246267231730711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153565 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 4

end

end A254218.P2849246267231730711

/-! ## A254218.P1412415766433161436

`and(3, A139755(n+1)+A100492(3*(n+1)))`
-/

namespace A254218.P1412415766433161436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A139755 (n + 1) + A100492 (3 * (n + 1)))

end

end A254218.P1412415766433161436

/-! ## A254218.P16100265069165288649

`A119994(3*(n+1))%A119991(A120025(3*n))`
-/

namespace A254218.P16100265069165288649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119994 (3 * (n + 1))) (A119991 (A120025 (3 * n)).toNat)

end

end A254218.P16100265069165288649

/-! ## A254218.P14847731638452770120

`A053839(floor(A099525(n+1)/(A305877(2*n+1)+1)))`
-/

namespace A254218.P14847731638452770120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 ⌊(A099525 (n + 1) : ℚ) / (A305877 (2 * n + 1) + 1 : ℚ)⌋.toNat

end

end A254218.P14847731638452770120

/-! ## A254218.P1842755106917860833

`A176352(A064699(n+1))%4`
-/

namespace A254218.P1842755106917860833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176352 (A064699 (n + 1)).toNat) 4

end

end A254218.P1842755106917860833

/-!
# A254219: Number of length 2 1..(n+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254219, there is no canonical definition to state claims against.
-/

/-! ## A254219.P9169928959985643628

`A254205(n+1)-A065855(n+3)`
-/

namespace A254219.P9169928959985643628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254205 (n + 1) - A065855 (n + 3)

end

end A254219.P9169928959985643628

/-! ## A254219.P16639860158768867094

`A254218(∑[n+1]+2)`
-/

namespace A254219.P16639860158768867094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254219.P16639860158768867094

/-! ## A254219.P16380108006495514643

`lcm(2, A254218(A133263(n+1)))`
-/

namespace A254219.P16380108006495514643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254218 (A133263 (n + 1)).toNat)

end

end A254219.P16380108006495514643

/-! ## A254219.P4864114120308294982

`A007318(C(2, n))*A254218(A133263(n+1))`
-/

namespace A254219.P4864114120308294982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A254218 (A133263 (n + 1)).toNat

end

end A254219.P4864114120308294982

/-! ## A254219.P8931522262302316580

`A254218(A133263(n+1))%A018252(n+1)²`
-/

namespace A254219.P8931522262302316580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254218 (A133263 (n + 1)).toNat) (A018252 (n + 1) ^ 2)

end

end A254219.P8931522262302316580

/-!
# A254220: Number of length 3 1..(n+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254220, there is no canonical definition to state claims against.
-/

/-! ## A254220.P10310428526667302086

`A254218(∑[n+2]+4)`
-/

namespace A254220.P10310428526667302086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254220.P10310428526667302086

/-! ## A254220.P14806214940528163243

`or(char[1], A254218(A046691(n)+7))`
-/

namespace A254220.P14806214940528163243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254218 (A046691 n + 7).toNat)

end

end A254220.P14806214940528163243

/-! ## A254220.P4508919448775451829

`ceil(acot(n))*A254218(A167614(n+1))`
-/

namespace A254220.P4508919448775451829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A254218 (A167614 (n + 1)).toNat

end

end A254220.P4508919448775451829

/-! ## A254220.P7104784109973417650

`A254218(A167614(n+1))%A000351(n)`
-/

namespace A254220.P7104784109973417650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254218 (A167614 (n + 1)).toNat) (A000351 n)

end

end A254220.P7104784109973417650

/-! ## A254220.P301956887448023173

`∑{d}[A254218(A046691(n)+7), A000010(#)]`
-/

namespace A254220.P301956887448023173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A046691 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A254220.P301956887448023173

/-!
# A254221: Number of length 4 1..(n+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254221, there is no canonical definition to state claims against.
-/

/-! ## A254221.P5735323096590312146

`A254218(∑[n+3]+7)`
-/

namespace A254221.P5735323096590312146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A254221.P5735323096590312146

/-! ## A254221.P8489902346426646958

`lcm(2, A254218(A055999(n)+10))`
-/

namespace A254221.P8489902346426646958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254218 (A055999 n + 10).toNat)

end

end A254221.P8489902346426646958

/-! ## A254221.P8804338113224084603

`∑{d}[A254218(A141214(n)+7), A000010(#)]`
-/

namespace A254221.P8804338113224084603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A141214 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A254221.P8804338113224084603

/-! ## A254221.P10873102871856794286

`∑{d}[A254218(A055999(n)+10), A000010(#)]`
-/

namespace A254221.P10873102871856794286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A055999 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A254221.P10873102871856794286

/-! ## A254221.P1848023566145583051

`A007318(C(2, n))*A254218(A141214(n)+7)`
-/

namespace A254221.P1848023566145583051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A254218 (A141214 n + 7).toNat

end

end A254221.P1848023566145583051

/-!
# A254222: Number of length 5 1..(n+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254222, there is no canonical definition to state claims against.
-/

/-! ## A254222.P15819800573020461648

`A254218(C(n+5, 2)+5)`
-/

namespace A254222.P15819800573020461648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (Nat.choose (n + 5) 2 + 5)

end

end A254222.P15819800573020461648

/-! ## A254222.P9192761474543741434

`A254218(A167499(n+3))`
-/

namespace A254222.P9192761474543741434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A167499 (n + 3)).toNat

end

end A254222.P9192761474543741434

/-! ## A254222.P1485257783108434268

`A254218(A155212(n)+13)`
-/

namespace A254222.P1485257783108434268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A155212 n + 13).toNat

end

end A254222.P1485257783108434268

/-! ## A254222.P8500050686994022199

`A254218(A056000(n)+15)`
-/

namespace A254222.P8500050686994022199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A056000 n + 15).toNat

end

end A254222.P8500050686994022199

/-! ## A254222.P14607317224799754610

`A254218(A167614(n+3)+2)`
-/

namespace A254222.P14607317224799754610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A167614 (n + 3) + 2).toNat

end

end A254222.P14607317224799754610

/-!
# A254223: Number of length 6 1..(n+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254223, there is no canonical definition to state claims against.
-/

/-! ## A254223.P11873763340975574504

`A254218(∑[n+5]+16)`
-/

namespace A254223.P11873763340975574504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A254223.P11873763340975574504

/-! ## A254223.P16895939653551830789

`lcm(2, A254218(A000124(n+5)+5))`
-/

namespace A254223.P16895939653551830789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254218 (A000124 (n + 5) + 5).toNat)

end

end A254223.P16895939653551830789

/-! ## A254223.P8347977017867926382

`A254218(Δ[A264443(n)]+10)+A178798(n)`
-/

namespace A254223.P8347977017867926382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (f1 (n + 1) - f1 n + 10).toNat + A178798 n

end

end A254223.P8347977017867926382

/-! ## A254223.P7359123599096930129

`char[A007318(n)]*A254218(A000124(n+5)+5)`
-/

namespace A254223.P7359123599096930129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A254218 (A000124 (n + 5) + 5).toNat

end

end A254223.P7359123599096930129

/-! ## A254223.P1610515128517899843

`A007318(C(n, 2))*A254218(A000124(n+5)+5)`
-/

namespace A254223.P1610515128517899843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A254218 (A000124 (n + 5) + 5).toNat

end

end A254223.P1610515128517899843

/-!
# A254224: Number of length 7 1..(n+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254224, there is no canonical definition to state claims against.
-/

/-! ## A254224.P7894306140560035804

`A254218(A167487(n+5))`
-/

namespace A254224.P7894306140560035804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A167487 (n + 5)).toNat

end

end A254224.P7894306140560035804

/-! ## A254224.P2815298031217513198

`A254218(A167499(n+5)+2)`
-/

namespace A254224.P2815298031217513198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A167499 (n + 5) + 2).toNat

end

end A254224.P2815298031217513198

/-! ## A254224.P1012725369265317635

`A254218(A000124(n+6)+6)`
-/

namespace A254224.P1012725369265317635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A000124 (n + 6) + 6).toNat

end

end A254224.P1012725369265317635

/-! ## A254224.P12627389455956529347

`A254218(A253145(n+5)+7)`
-/

namespace A254224.P12627389455956529347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A253145 (n + 5) + 7).toNat

end

end A254224.P12627389455956529347

/-! ## A254224.P13056305677286762288

`A254218(A000096(n+5)+8)`
-/

namespace A254224.P13056305677286762288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A000096 (n + 5) + 8).toNat

end

end A254224.P13056305677286762288

/-!
# A254226: Numbers n such that the n-th decimal digit of e = 1 + the n-th decimal digit of Pi.

The programs for A254226, there is no canonical definition to state claims against.
-/

/-! ## A254226.P6730235811711257707

`eq[1, -A187747(n)]`
-/

namespace A254226.P6730235811711257707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254226.P6730235811711257707

/-! ## A254226.P16856013759241235835

`eq[A057428(n), A187747(n)]`
-/

namespace A254226.P16856013759241235835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254226.P16856013759241235835

/-! ## A254226.P8899595504444879110

`eq[A134824(n), A187747(n)]`
-/

namespace A254226.P8899595504444879110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254226.P8899595504444879110

/-! ## A254226.P14818959820928566172

`eq[A000796(n)+1, A001113(n)]`
-/

namespace A254226.P14818959820928566172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254226.P14818959820928566172

/-! ## A254226.P9090905123156950329

`eq[2, A054977(n)-A187747(n)]`
-/

namespace A254226.P9090905123156950329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254226.P9090905123156950329

/-! ## A254226.P11032638704190350863

`eq[2, A057427(n)-A187747(n)]`
-/

namespace A254226.P11032638704190350863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254226.P11032638704190350863

/-! ## A254226.P3527114315418342101

`eq[2, A130543(n)-A187747(n)]`
-/

namespace A254226.P3527114315418342101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n - A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254226.P3527114315418342101

/-! ## A254226.P18044487110618514648

`eq[2, A141044(n)-A187747(n)]`
-/

namespace A254226.P18044487110618514648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n - A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254226.P18044487110618514648

/-! ## A254226.P11430786124043620882

`eq[2, A157928(n)-A187747(n)]`
-/

namespace A254226.P11430786124043620882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n - A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254226.P11430786124043620882

/-! ## A254226.P6269134663699402511

`eq[2, A158388(n)-A187747(n)]`
-/

namespace A254226.P6269134663699402511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n - A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254226.P6269134663699402511

/-! ## A254226.P5434788066026078673

`eq[2, A294619(n)-A187747(n)]`
-/

namespace A254226.P5434788066026078673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n - A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254226.P5434788066026078673

/-! ## A254226.P4901803620532739706

`eq[2, A261143(n)²-A187747(n)]`
-/

namespace A254226.P4901803620532739706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n ^ 2 - A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254226.P4901803620532739706

/-! ## A254226.P14517661616312256972

`eq[A059833(n+1), A231325(n+1)]`
-/

namespace A254226.P14517661616312256972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254226.P14517661616312256972

/-! ## A254226.P4173944052438367164

`eq[A123152(n+1), A231325(n+1)]`
-/

namespace A254226.P4173944052438367164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254226.P4173944052438367164

/-! ## A254226.P13331009352027542479

`eq[A001355(2*n+1)+1, A001355(2*(n+1))]`
-/

namespace A254226.P13331009352027542479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254226.P13331009352027542479

/-! ## A254226.P11720172492189817016

`eq[A008683(A007918(n)), A187747(n)]`
-/

namespace A254226.P11720172492189817016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254226.P11720172492189817016

/-! ## A254226.P5606135517345236092

`eq[A008683(A151800(n)), A187747(n)]`
-/

namespace A254226.P5606135517345236092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254226.P5606135517345236092

/-! ## A254226.P18248447525101638754

`eq[2, A178226(A005843(n))-A187747(n)]`
-/

namespace A254226.P18248447525101638754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A005843 n).toNat - A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254226.P18248447525101638754

/-!
# A254227: Numbers such that the n-th decimal digit of Pi is one larger than the n-th decimal digit of e.

The programs for A254227, there is no canonical definition to state claims against.
-/

/-! ## A254227.P13285852251864365396

`eq[1, A187747(n+1)]+1`
-/

namespace A254227.P13285852251864365396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A254227.P13285852251864365396

/-! ## A254227.P7230610479351876294

`eq[A054977(n), A187747(n)]`
-/

namespace A254227.P7230610479351876294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P7230610479351876294

/-! ## A254227.P6122782668653720865

`eq[A057427(n), A187747(n)]`
-/

namespace A254227.P6122782668653720865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P6122782668653720865

/-! ## A254227.P7049863560808958906

`eq[A130543(n), A187747(n)]`
-/

namespace A254227.P7049863560808958906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P7049863560808958906

/-! ## A254227.P1825661812895937397

`eq[A141044(n), A187747(n)]`
-/

namespace A254227.P1825661812895937397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P1825661812895937397

/-! ## A254227.P15423509128732992725

`eq[A157928(n), A187747(n)]`
-/

namespace A254227.P15423509128732992725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P15423509128732992725

/-! ## A254227.P5248315344499130788

`eq[A158388(n), A187747(n)]`
-/

namespace A254227.P5248315344499130788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P5248315344499130788

/-! ## A254227.P15614060550970358878

`eq[A187747(n), A261143(n)]`
-/

namespace A254227.P15614060550970358878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P15614060550970358878

/-! ## A254227.P14426609401791808754

`eq[A187747(n), A294619(n)]`
-/

namespace A254227.P14426609401791808754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P14426609401791808754

/-! ## A254227.P9133977790898922899

`eq[A057428(n)², A187747(n)]`
-/

namespace A254227.P9133977790898922899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P9133977790898922899

/-! ## A254227.P10686959380583381064

`eq[A134824(n)², A187747(n)]`
-/

namespace A254227.P10686959380583381064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P10686959380583381064

/-! ## A254227.P4032858147546440759

`eq[A008461(n+1), A187747(n)]`
-/

namespace A254227.P4032858147546440759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P4032858147546440759

/-! ## A254227.P7139791027471534835

`eq[A187747(n), A267084(n+1)]`
-/

namespace A254227.P7139791027471534835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P7139791027471534835

/-! ## A254227.P7139635452072254845

`eq[A187747(n), A367623(n+1)]`
-/

namespace A254227.P7139635452072254845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367623 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P7139635452072254845

/-! ## A254227.P9528723551400180721

`eq[A178226(A005843(n)), A187747(n)]`
-/

namespace A254227.P9528723551400180721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A005843 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P9528723551400180721

/-! ## A254227.P5748204567401860471

`eq[A178226(A298026(n)), A187747(n)]`
-/

namespace A254227.P5748204567401860471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A298026 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254227.P5748204567401860471

/-! ## A254227.P16581240640412836200

`A061395(p?[A008578(n+1)*A187747(n)])`
-/

namespace A254227.P16581240640412836200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A187747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A254227.P16581240640412836200

/-! ## A254227.P13862187464714462785

`A049084(p?[A008578(n+1)*A187747(n)])`
-/

namespace A254227.P13862187464714462785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A187747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A254227.P13862187464714462785

/-!
# A254229: Indices of centered square numbers (A001844) which are also heptagonal numbers (A000566).

The programs for A254229, there is no canonical definition to state claims against.
-/

/-! ## A254229.P17210288072660161304

`ceil(sqrt(A254230(n+1)/2))`
-/

namespace A254229.P17210288072660161304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A254230 (n + 1) : ℚ) / 2 : ℝ)⌉

end

end A254229.P17210288072660161304

/-!
# A254231: Product of tribonacci numbers A000073(2) * ... * A000073(n).

The programs for A254231, there is no canonical definition to state claims against.
-/

/-! ## A254231.P8965758435778564343

`∏[A104580(∑[n])]`
-/

namespace A254231.P8965758435778564343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254231.P8965758435778564343

/-! ## A254231.P2731137172573526197

`∏[A106522(∑[n])]`
-/

namespace A254231.P2731137172573526197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106522 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254231.P2731137172573526197

/-! ## A254231.P3939879740305570226

`∏[A187889(∑[n])]`
-/

namespace A254231.P3939879740305570226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187889 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254231.P3939879740305570226

/-! ## A254231.P8777783528158014213

`∏[A189187(∑[n])]`
-/

namespace A254231.P8777783528158014213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189187 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254231.P8777783528158014213

/-! ## A254231.P11087507591918848051

`∏[Δ[A008937(n)]]`
-/

namespace A254231.P11087507591918848051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254231.P11087507591918848051

/-!
# A254232: Product of Perrin numbers A001608(2) * ... * A001608(n).

The programs for A254232, there is no canonical definition to state claims against.
-/

/-! ## A254232.P9014694237972929764

`∏[a(n-2)+a(n-3)]` with `a(0)=2, a(1)=3, a(2)=2`
-/

namespace A254232.P9014694237972929764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254232.P9014694237972929764

/-! ## A254232.P8418676367833632204

`∏[A001608(n+2)]`
-/

namespace A254232.P8418676367833632204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254232.P8418676367833632204

/-! ## A254232.P12894876332195806781

`∏[sqrt(A192932(n+2))]`
-/

namespace A254232.P12894876332195806781
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A192932 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254232.P12894876332195806781

/-! ## A254232.P18032404805195263029

`∏[Δ[A193744(n+1)]]`
-/

namespace A254232.P18032404805195263029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254232.P18032404805195263029

/-! ## A254232.P1452251364003832527

`record[a(n-1)*A001608(n)]` with `a(0)=2, a(1)=1`
-/

namespace A254232.P1452251364003832527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) * A001608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254232.P1452251364003832527

/-!
# A254233: Number of ways to partition the multiset consisting of n copies each of 1, 2, and 3 into n sets of size 3.

The programs for A254233, there is no canonical definition to state claims against.
-/

/-! ## A254233.P9726470908606641988

`A257462(∑[n+3]+n+3)`
-/

namespace A254233.P9726470908606641988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A254233.P9726470908606641988

/-! ## A254233.P14597025027629454178

`A257462(A046691(n+2))+A167028(2*n+3)`
-/

namespace A254233.P14597025027629454178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (A046691 (n + 2)).toNat + A167028 (2 * n + 3)

end

end A254233.P14597025027629454178

/-! ## A254233.P12035866205244556125

`A023556(A220283(n+1))`
-/

namespace A254233.P12035866205244556125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023556 (A220283 (n + 1)).toNat

end

end A254233.P12035866205244556125

/-!
# A254234: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254234, there is no canonical definition to state claims against.
-/

/-! ## A254234.P3781722731491438750

`A254242(∑[4*n]+1)`
-/

namespace A254234.P3781722731491438750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254234.P3781722731491438750

/-! ## A254234.P18247202791659487624

`record[A254242(A330613(n+1))]`
-/

namespace A254234.P18247202791659487624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254234.P18247202791659487624

/-! ## A254234.P9279366282068807476

`or(char[1], A254242(A001844(n)))`
-/

namespace A254234.P9279366282068807476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254242 (A001844 n).toNat)

end

end A254234.P9279366282068807476

/-! ## A254234.P12304087980414600472

`record[gcd(A003987(n), A254242(n+1))]`
-/

namespace A254234.P12304087980414600472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A254242 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254234.P12304087980414600472

/-! ## A254234.P342772638670944355

`record[A010052(2*n+1)*A254242(n+1)]`
-/

namespace A254234.P342772638670944355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A254242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254234.P342772638670944355

/-!
# A254235: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254235, there is no canonical definition to state claims against.
-/

/-! ## A254235.P3778042535377895796

`A257426(∑[n]+1)`
-/

namespace A254235.P3778042535377895796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254235.P3778042535377895796

/-! ## A254235.P2639660717646895148

`lcm(2, A257426(A000124(n)))`
-/

namespace A254235.P2639660717646895148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A257426 (A000124 n).toNat)

end

end A254235.P2639660717646895148

/-! ## A254235.P8747382987345617243

`record[A257426(A056534(n+1))]`
-/

namespace A254235.P8747382987345617243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254235.P8747382987345617243

/-! ## A254235.P11570983082489933138

`record[A257426(A056536(n+1))]`
-/

namespace A254235.P11570983082489933138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254235.P11570983082489933138

/-! ## A254235.P4115718464580728980

`record[A257426(A114091(n+1))]`
-/

namespace A254235.P4115718464580728980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257426 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254235.P4115718464580728980

/-!
# A254236: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254236, there is no canonical definition to state claims against.
-/

/-! ## A254236.P197945767862045718

`A254242(∑[n+1]+2)`
-/

namespace A254236.P197945767862045718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254236.P197945767862045718

/-! ## A254236.P405885372127054879

`record[A254242(A061857(n+1)+2)]`
-/

namespace A254236.P405885372127054879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A061857 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254236.P405885372127054879

/-! ## A254236.P16522588370740731656

`or(char[1], A254242(A000096(n)+3))`
-/

namespace A254236.P16522588370740731656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254242 (A000096 n + 3).toNat)

end

end A254236.P16522588370740731656

/-! ## A254236.P7751929642170466853

`record[A254242(gcd(n+2, A002262(n)))]`
-/

namespace A254236.P7751929642170466853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (Int.gcd (n + 2 : ℤ) (A002262 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254236.P7751929642170466853

/-! ## A254236.P2610502789015162277

`record[root(A254242(n+3), A143328(n+1))]`
-/

namespace A254236.P2610502789015162277
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254242 (n + 3) : ℝ) ^ (1 / (A143328 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254236.P2610502789015162277

/-!
# A254237: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254237, there is no canonical definition to state claims against.
-/

/-! ## A254237.P12233091417166601870

`A254242(∑[n+2]+4)`
-/

namespace A254237.P12233091417166601870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254237.P12233091417166601870

/-! ## A254237.P3229821653689134057

`record[A254242(A198467(n+1)+3)]`
-/

namespace A254237.P3229821653689134057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A198467 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254237.P3229821653689134057

/-! ## A254237.P5852025247227196772

`A254242(A167614(n+1))+char[23]`
-/

namespace A254237.P5852025247227196772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254237.P5852025247227196772

/-! ## A254237.P8075556799970965347

`gcd(A025469(n), A254242(A167614(n+1)))`
-/

namespace A254237.P8075556799970965347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025469 n) (A254242 (A167614 (n + 1)).toNat)

end

end A254237.P8075556799970965347

/-! ## A254237.P8542052631273712676

`A254242(A167614(n+1))%A254238(n+1)`
-/

namespace A254237.P8542052631273712676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254242 (A167614 (n + 1)).toNat) (A254238 (n + 1))

end

end A254237.P8542052631273712676

/-!
# A254238: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254238, there is no canonical definition to state claims against.
-/

/-! ## A254238.P10742135085054416211

`A254242(∑[n+3]+7)`
-/

namespace A254238.P10742135085054416211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A254238.P10742135085054416211

/-! ## A254238.P1614086085532800514

`record[A254242(A198467(n+1)+4)]`
-/

namespace A254238.P1614086085532800514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A198467 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254238.P1614086085532800514

/-! ## A254238.P17235646384352199625

`A254242(A167614(n+2)+1)+char[23]`
-/

namespace A254238.P17235646384352199625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254238.P17235646384352199625

/-! ## A254238.P15158557684324916294

`A254242(A000124(n+3)+3)+char[32]`
-/

namespace A254238.P15158557684324916294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A000124 (n + 3) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254238.P15158557684324916294

/-! ## A254238.P12954428103321769169

`A007318(C(n, 2))*A254242(A167614(n+2)+1)`
-/

namespace A254238.P12954428103321769169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A254242 (A167614 (n + 2) + 1).toNat

end

end A254238.P12954428103321769169

/-!
# A254239: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254239, there is no canonical definition to state claims against.
-/

/-! ## A254239.P7053262049368371937

`A254242(A167499(n+3))`
-/

namespace A254239.P7053262049368371937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A167499 (n + 3)).toNat

end

end A254239.P7053262049368371937

/-! ## A254239.P4396073881688389839

`A254242(A155212(n)+13)`
-/

namespace A254239.P4396073881688389839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A155212 n + 13).toNat

end

end A254239.P4396073881688389839

/-! ## A254239.P3811393277551992292

`A254242(A056000(n)+15)`
-/

namespace A254239.P3811393277551992292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A056000 n + 15).toNat

end

end A254239.P3811393277551992292

/-! ## A254239.P17157616006023913248

`A254242(A167614(n+3)+2)`
-/

namespace A254239.P17157616006023913248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A167614 (n + 3) + 2).toNat

end

end A254239.P17157616006023913248

/-! ## A254239.P14309462758494773980

`A254242(A000124(n+4)+4)`
-/

namespace A254239.P14309462758494773980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A000124 (n + 4) + 4).toNat

end

end A254239.P14309462758494773980

/-!
# A254240: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254240, there is no canonical definition to state claims against.
-/

/-! ## A254240.P9080830808396919095

`A254242(∑[n+5]+16)`
-/

namespace A254240.P9080830808396919095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A254240.P9080830808396919095

/-! ## A254240.P11850505738652531618

`or(char[3], A254242(A167499(n+4)+1))`
-/

namespace A254240.P11850505738652531618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254242 (A167499 (n + 4) + 1).toNat)

end

end A254240.P11850505738652531618

/-! ## A254240.P9522338418948447786

`A254242(A000124(n+5)+5)+char[24]`
-/

namespace A254240.P9522338418948447786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A000124 (n + 5) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254240.P9522338418948447786

/-! ## A254240.P5936121587069862920

`A254242(A166136(n+4))%A254241(n+1)`
-/

namespace A254240.P5936121587069862920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254242 (A166136 (n + 4)).toNat) (A254241 (n + 1))

end

end A254240.P5936121587069862920

/-! ## A254240.P13298088987889416367

`A007318(C(n, 2))*A254242(A167499(n+4)+1)`
-/

namespace A254240.P13298088987889416367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A254242 (A167499 (n + 4) + 1).toNat

end

end A254240.P13298088987889416367

/-!
# A254241: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254241, there is no canonical definition to state claims against.
-/

/-! ## A254241.P6157896863386501834

`A254242(A166136(n+5)+1)`
-/

namespace A254241.P6157896863386501834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A166136 (n + 5) + 1).toNat

end

end A254241.P6157896863386501834

/-! ## A254241.P6029106696092381105

`A254242(A167499(n+5)+2)`
-/

namespace A254241.P6029106696092381105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A167499 (n + 5) + 2).toNat

end

end A254241.P6029106696092381105

/-! ## A254241.P15573334845379735727

`A254242(A000124(n+6)+6)`
-/

namespace A254241.P15573334845379735727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A000124 (n + 6) + 6).toNat

end

end A254241.P15573334845379735727

/-! ## A254241.P2194108491825605185

`A254242(A000096(n+5)+8)`
-/

namespace A254241.P2194108491825605185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A000096 (n + 5) + 8).toNat

end

end A254241.P2194108491825605185

/-! ## A254241.P17091981758391602134

`A254242(A000217(n+6)+7)`
-/

namespace A254241.P17091981758391602134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A000217 (n + 6) + 7).toNat

end

end A254241.P17091981758391602134

/-!
# A254243: Number of ways to partition the multiset consisting of 3 copies each of 1, 2, ..., n into n sets of size 3.

The programs for A254243, there is no canonical definition to state claims against.
-/

/-! ## A254243.P14292275060768442937

`A257463(∑[n+3]+n+3)`
-/

namespace A254243.P14292275060768442937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A254243.P14292275060768442937

/-! ## A254243.P12103898420130431494

`A003603(A197970(n+1)-n)`
-/

namespace A254243.P12103898420130431494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A197970 (n + 1) - (n : ℤ)).toNat

end

end A254243.P12103898420130431494

/-!
# A254248: Number of terms in A006285 (de Polignac numbers) less than 10^n.

The programs for A254248, there is no canonical definition to state claims against.
-/

/-! ## A254248.P14543629286884078363

`xor(1, A307852(n+1)-n)`
-/

namespace A254248.P14543629286884078363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A307852 (n + 1) - (n : ℤ))

end

end A254248.P14543629286884078363

/-!
# A254252: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254252, there is no canonical definition to state claims against.
-/

/-! ## A254252.P16173740836534064055

`A254260(∑[4*n]+1)`
-/

namespace A254252.P16173740836534064055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254252.P16173740836534064055

/-! ## A254252.P596612749212602691

`record[A003982(n)*A254260(n+1)]`
-/

namespace A254252.P596612749212602691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A254260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254252.P596612749212602691

/-! ## A254252.P6231273472126845656

`record[gcd(A037012(n), A254260(n+1))]`
-/

namespace A254252.P6231273472126845656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A254260 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254252.P6231273472126845656

/-! ## A254252.P12820187201218789465

`record[root(A254260(n+1), A322550(n+1))]`
-/

namespace A254252.P12820187201218789465
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254260 (n + 1) : ℝ) ^ (1 / (A322550 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254252.P12820187201218789465

/-! ## A254252.P4939680180685754360

`lcm(A033999(n), A254260(A001844(n)))`
-/

namespace A254252.P4939680180685754360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A254260 (A001844 n).toNat)

end

end A254252.P4939680180685754360

/-!
# A254253: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254253, there is no canonical definition to state claims against.
-/

/-! ## A254253.P6347477869130050931

`A254306(∑[n]+1)`
-/

namespace A254253.P6347477869130050931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254253.P6347477869130050931

/-! ## A254253.P6754421125845280321

`lcm(2, A254306(A000124(n)))`
-/

namespace A254253.P6754421125845280321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254306 (A000124 n).toNat)

end

end A254253.P6754421125845280321

/-! ## A254253.P8871312960660670001

`record[gcd(A002262(n), A254306(n+1))]`
-/

namespace A254253.P8871312960660670001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254306 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254253.P8871312960660670001

/-! ## A254253.P16201681560761267946

`A254306(A000124(n))%A254256(n+1)`
-/

namespace A254253.P16201681560761267946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254306 (A000124 n).toNat) (A254256 (n + 1))

end

end A254253.P16201681560761267946

/-! ## A254253.P6089501056177278629

`record[A254306(A000217(A116549(n)))]`
-/

namespace A254253.P6089501056177278629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A000217 (A116549 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254253.P6089501056177278629

/-!
# A254254: Number of (n+2) X (2+2) 0..1 arrays with every 3 X 3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254254, there is no canonical definition to state claims against.
-/

/-! ## A254254.P12201012259056900824

`A254260(∑[n+2])`
-/

namespace A254254.P12201012259056900824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254254.P12201012259056900824

/-! ## A254254.P14492289942988164379

`record[A254260(A000096(A003963(n+1)))]`
-/

namespace A254254.P14492289942988164379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254254.P14492289942988164379

/-! ## A254254.P5265866200067963560

`record[A254260(A000096(A004736(n+1)))]`
-/

namespace A254254.P5265866200067963560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254254.P5265866200067963560

/-! ## A254254.P17888855768363460036

`record[A254260(A000096(A108954(n+1)))]`
-/

namespace A254254.P17888855768363460036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A000096 (A108954 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254254.P17888855768363460036

/-! ## A254254.P10623515743091636222

`record[A254260(A000096(A045670(n+1)))]`
-/

namespace A254254.P10623515743091636222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A000096 (A045670 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254254.P10623515743091636222

/-!
# A254255: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254255, there is no canonical definition to state claims against.
-/

/-! ## A254255.P12264869955593392493

`A254260(∑[n+3]+1)`
-/

namespace A254255.P12264869955593392493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254255.P12264869955593392493

/-! ## A254255.P14050529665961282418

`lcm(2, A254260(A034856(n+2)))`
-/

namespace A254255.P14050529665961282418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254260 (A034856 (n + 2)).toNat)

end

end A254255.P14050529665961282418

/-! ## A254255.P12705392614745081220

`char[A053392(n)]*A254260(A034856(n+2))`
-/

namespace A254255.P12705392614745081220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A254260 (A034856 (n + 2)).toNat

end

end A254255.P12705392614745081220

/-! ## A254255.P15458501692610116554

`A254260(A034856(n+2))/A202340(A064105(n+2))`
-/

namespace A254255.P15458501692610116554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254260 (A034856 (n + 2)).toNat : ℚ) / (A202340 (A064105 (n + 2)).toNat : ℚ)

end

end A254255.P15458501692610116554

/-!
# A254256: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254256, there is no canonical definition to state claims against.
-/

/-! ## A254256.P3465501630059399994

`A254260(A027379(n+2))`
-/

namespace A254256.P3465501630059399994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A027379 (n + 2)).toNat

end

end A254256.P3465501630059399994

/-! ## A254256.P625500199322030934

`A254260(A055998(n+2))`
-/

namespace A254256.P625500199322030934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A055998 (n + 2)).toNat

end

end A254256.P625500199322030934

/-! ## A254256.P8707503085051106886

`A254260(A056000(n)+7)`
-/

namespace A254256.P8707503085051106886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A056000 n + 7).toNat

end

end A254256.P8707503085051106886

/-! ## A254256.P651671836980336006

`A254260(Δ[A006416(n+2)])`
-/

namespace A254256.P651671836980336006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (f1 (n + 1) - f1 n).toNat

end

end A254256.P651671836980336006

/-! ## A254256.P6053391812393513335

`A254260(A052905(n+1)+2)`
-/

namespace A254256.P6053391812393513335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A052905 (n + 1) + 2).toNat

end

end A254256.P6053391812393513335

/-!
# A254257: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254257, there is no canonical definition to state claims against.
-/

/-! ## A254257.P8990891747394312551

`A254260(A046691(n+3))`
-/

namespace A254257.P8990891747394312551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A046691 (n + 3)).toNat

end

end A254257.P8990891747394312551

/-! ## A254257.P13475737700337316199

`A254260(A056115(n)+11)`
-/

namespace A254257.P13475737700337316199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A056115 n + 11).toNat

end

end A254257.P13475737700337316199

/-! ## A254257.P3340721727043675859

`A254260(Δ[A023545(n+1)])`
-/

namespace A254257.P3340721727043675859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (f1 (n + 1) - f1 n).toNat

end

end A254257.P3340721727043675859

/-! ## A254257.P2448146139031952423

`A254260(A000217(n+5)-4)`
-/

namespace A254257.P2448146139031952423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A000217 (n + 5) - 4).toNat

end

end A254257.P2448146139031952423

/-! ## A254257.P9200520491686850058

`A254260(A000124(n+5)-5)`
-/

namespace A254257.P9200520491686850058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A000124 (n + 5) - 5).toNat

end

end A254257.P9200520491686850058

/-!
# A254258: Number of (n+2) X (6+2) 0..1 arrays with every 3 X 3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254258, there is no canonical definition to state claims against.
-/

/-! ## A254258.P632826497293106000

`A254260(A052905(n+3))`
-/

namespace A254258.P632826497293106000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A052905 (n + 3)).toNat

end

end A254258.P632826497293106000

/-! ## A254258.P3870835993640649149

`A254260(eq[3, A219347(n)])`
-/

namespace A254258.P3870835993640649149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254258.P3870835993640649149

/-! ## A254258.P13843698358148291608

`A254260(eq[5, A193592(n)])`
-/

namespace A254258.P13843698358148291608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254258.P13843698358148291608

/-! ## A254258.P15636292997673625710

`A254260(A155212(n+2)+3)`
-/

namespace A254258.P15636292997673625710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A155212 (n + 2) + 3).toNat

end

end A254258.P15636292997673625710

/-! ## A254258.P13376502403744600960

`A254260(A046691(n+4)-1)`
-/

namespace A254258.P13376502403744600960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A046691 (n + 4) - 1).toNat

end

end A254258.P13376502403744600960

/-!
# A254259: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254259, there is no canonical definition to state claims against.
-/

/-! ## A254259.P2103518268345899464

`A254260(∑[n+7]+15)`
-/

namespace A254259.P2103518268345899464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A254259.P2103518268345899464

/-!
# A254261: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254261, there is no canonical definition to state claims against.
-/

/-! ## A254261.P14197827360715451425

`A254260(∑[n+1]+2)`
-/

namespace A254261.P14197827360715451425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254261.P14197827360715451425

/-! ## A254261.P15736439424754727108

`record[A254260(A060576(n)+A000124(n)-n)]`
-/

namespace A254261.P15736439424754727108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A060576 n + A000124 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254261.P15736439424754727108

/-! ## A254261.P7012894835700997566

`A014963(10*(n+1))*A254260(A133263(n+1))`
-/

namespace A254261.P7012894835700997566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A254260 (A133263 (n + 1)).toNat

end

end A254261.P7012894835700997566

/-! ## A254261.P17852988390839200504

`A000041(n²%(n+1))*A254260(A133263(n+1))`
-/

namespace A254261.P17852988390839200504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n ^ 2 % (n + 1)) * A254260 (A133263 (n + 1)).toNat

end

end A254261.P17852988390839200504

/-!
# A254262: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254262, there is no canonical definition to state claims against.
-/

/-! ## A254262.P17784106110801806310

`A254260(∑[n+2]+4)`
-/

namespace A254262.P17784106110801806310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254262.P17784106110801806310

/-! ## A254262.P8651445121109674131

`A254260(A167614(n+1))+A025466(n)`
-/

namespace A254262.P8651445121109674131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A167614 (n + 1)).toNat + A025466 n

end

end A254262.P8651445121109674131

/-! ## A254262.P3036376490059955645

`A254260(A167614(n+1))+A025469(n)`
-/

namespace A254262.P3036376490059955645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A167614 (n + 1)).toNat + A025469 n

end

end A254262.P3036376490059955645

/-! ## A254262.P4688491337689222488

`lcm(A033999(n), A254260(A167614(n+1)))`
-/

namespace A254262.P4688491337689222488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A254260 (A167614 (n + 1)).toNat)

end

end A254262.P4688491337689222488

/-! ## A254262.P16770158027814521859

`A254260(A167614(n+1))%A233803(n+1)`
-/

namespace A254262.P16770158027814521859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254260 (A167614 (n + 1)).toNat) (A233803 (n + 1))

end

end A254262.P16770158027814521859

/-!
# A254263: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254263, there is no canonical definition to state claims against.
-/

/-! ## A254263.P13038729583088966887

`A254260(∑[n+3]+7)`
-/

namespace A254263.P13038729583088966887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A254263.P13038729583088966887

/-! ## A254263.P12945837829972380722

`char[A001057(n)]*A254260(A167499(n+2)-1)`
-/

namespace A254263.P12945837829972380722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A254260 (A167499 (n + 2) - 1).toNat

end

end A254263.P12945837829972380722

/-! ## A254263.P7040340527448245103

`char[A004442(n)]*A254260(A167499(n+2)-1)`
-/

namespace A254263.P7040340527448245103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A254260 (A167499 (n + 2) - 1).toNat

end

end A254263.P7040340527448245103

/-! ## A254263.P14451555464022870598

`A254260(A167499(n+2)-1)+A000007(n+1)`
-/

namespace A254263.P14451555464022870598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A167499 (n + 2) - 1).toNat + A000007 (n + 1)

end

end A254263.P14451555464022870598

/-!
# A254264: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254264, there is no canonical definition to state claims against.
-/

/-! ## A254264.P11468330255316667103

`A254260(A167499(n+3))`
-/

namespace A254264.P11468330255316667103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A167499 (n + 3)).toNat

end

end A254264.P11468330255316667103

/-! ## A254264.P554572720608801111

`A254260(A155212(n)+13)`
-/

namespace A254264.P554572720608801111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A155212 n + 13).toNat

end

end A254264.P554572720608801111

/-! ## A254264.P9790106834031606804

`A254260(A056000(n)+15)`
-/

namespace A254264.P9790106834031606804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A056000 n + 15).toNat

end

end A254264.P9790106834031606804

/-! ## A254264.P1595100522368170836

`A254260(A000217(n+4)+5)`
-/

namespace A254264.P1595100522368170836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A000217 (n + 4) + 5).toNat

end

end A254264.P1595100522368170836

/-! ## A254264.P11186670012457267315

`A254260(A055998(n+2)+8)`
-/

namespace A254264.P11186670012457267315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A055998 (n + 2) + 8).toNat

end

end A254264.P11186670012457267315

/-!
# A254265: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254265, there is no canonical definition to state claims against.
-/

/-! ## A254265.P4789327461106305242

`A254260(A166136(n+4))`
-/

namespace A254265.P4789327461106305242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A166136 (n + 4)).toNat

end

end A254265.P4789327461106305242

/-! ## A254265.P15612764292536921522

`A254260(A046691(n+3)+10)`
-/

namespace A254265.P15612764292536921522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A046691 (n + 3) + 10).toNat

end

end A254265.P15612764292536921522

/-! ## A254265.P6918137040940170555

`A254260(A052905(n+2)+11)`
-/

namespace A254265.P6918137040940170555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A052905 (n + 2) + 11).toNat

end

end A254265.P6918137040940170555

/-! ## A254265.P15660500174751366213

`A254260(eq[7, A131818(n+1)])`
-/

namespace A254265.P15660500174751366213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254265.P15660500174751366213

/-! ## A254265.P6986782308496168594

`A254260(A000096(n+5)-(n-1))`
-/

namespace A254265.P6986782308496168594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A254265.P6986782308496168594

/-!
# A254266: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254266, there is no canonical definition to state claims against.
-/

/-! ## A254266.P9300579706697526544

`A254260(A056119(n)+28)`
-/

namespace A254266.P9300579706697526544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A056119 n + 28).toNat

end

end A254266.P9300579706697526544

/-! ## A254266.P15038242379327247737

`A254260(eq[11, A066657(n)])`
-/

namespace A254266.P15038242379327247737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254266.P15038242379327247737

/-! ## A254266.P10926356428327260477

`A254260(A155212(n+2)+15)`
-/

namespace A254266.P10926356428327260477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A155212 (n + 2) + 15).toNat

end

end A254266.P10926356428327260477

/-! ## A254266.P1927094564423527214

`A254260(eq[8, A131818(n+1)])`
-/

namespace A254266.P1927094564423527214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254266.P1927094564423527214

/-! ## A254266.P14253277426933541405

`A254260(A000124(n+7)-(n+1))`
-/

namespace A254266.P14253277426933541405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A254266.P14253277426933541405

/-!
# A254269: Largest prime factor of the strict partition numbers Q(n) (partitions into distinct parts, A000009).

The programs for A254269, there is no canonical definition to state claims against.
-/

/-! ## A254269.P3425439399695986964

`A006530(A000009(n)/A266227(n+1))`
-/

namespace A254269.P3425439399695986964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000009 n : ℚ) / (A266227 (n + 1) : ℚ))).toNat

end

end A254269.P3425439399695986964

/-! ## A254269.P16636140372408339781

`A006530(A000009(n))`
-/

namespace A254269.P16636140372408339781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000009 n).toNat

end

end A254269.P16636140372408339781

/-! ## A254269.P802142599316181077

`A006530(abs(A081360(n)))`
-/

namespace A254269.P802142599316181077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A081360 n|.toNat

end

end A254269.P802142599316181077

/-! ## A254269.P10344939807521876951

`A006530(∑[A087897(n)])`
-/

namespace A254269.P10344939807521876951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254269.P10344939807521876951

/-! ## A254269.P5906082378651929502

`A006530(A264405(∑[n]))`
-/

namespace A254269.P5906082378651929502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A264405 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A254269.P5906082378651929502

/-! ## A254269.P831191586158920067

`A006530(A284593(∑[n]))`
-/

namespace A254269.P831191586158920067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A284593 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A254269.P831191586158920067

/-! ## A254269.P3061597526497019325

`A006530(A111133(n)+1)`
-/

namespace A254269.P3061597526497019325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A111133 n + 1).toNat

end

end A254269.P3061597526497019325

/-! ## A254269.P16425409545564084588

`A006530(A035457(2*n))`
-/

namespace A254269.P16425409545564084588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035457 (2 * n)).toNat

end

end A254269.P16425409545564084588

/-! ## A254269.P10427740042484580278

`A006530(∏{p}[A081360(n), #])`
-/

namespace A254269.P10427740042484580278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A254269.P10427740042484580278

/-! ## A254269.P8674166658745913371

`A006530(∏{p}[A061199(∑[n]+1), #])`
-/

namespace A254269.P8674166658745913371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A254269.P8674166658745913371

/-!
# A254278: Numbers that are smaller than the sum of their deficient divisors.

The programs for A254278, the canonical program `A254278.P17344502935349551101` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254278 has offset 1).

The definition of A254278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254278.P1348716462665898352

`∪[A198471(n+1), A005100(n+2)]`
-/

namespace A254278.P1348716462665898352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254278.P1348716462665898352

namespace A254278

/-- `∪[A198471(n+1), A005100(n+2)]` -/
def P1348716462665898352.Spec : Prop :=
  ∀ n, (P1348716462665898352.a n : ℤ) = A254278 (n + 1)

end A254278

/-! ## A254278.P17344502935349551101

`record[(n+2)%A187793(n+2)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A254278

/-- `record[(n+2)%A187793(n+2)]` -/
def P17344502935349551101.Spec : Prop :=
  ∀ n, P17344502935349551101.a n = A254278 (n + 1)

theorem P17344502935349551101.correct : P17344502935349551101.Spec := by
  intro n
  simp only [A254278, Nat.add_sub_cancel]

end A254278

/-! ## A254278.P3964926055664786244

`lt[n+1, A187793(n+1)]+1`
-/

namespace A254278.P3964926055664786244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A254278.P3964926055664786244

namespace A254278

/-- `lt[n+1, A187793(n+1)]+1` -/
def P3964926055664786244.Spec : Prop :=
  ∀ n, (P3964926055664786244.a n : ℤ) = A254278 (n + 1)

end A254278

/-! ## A254278.P9129550492674786391

`A020725(lt[n+1, A187793(n+1)])`
-/

namespace A254278.P9129550492674786391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A254278.P9129550492674786391

namespace A254278

/-- `A020725(lt[n+1, A187793(n+1)])` -/
def P9129550492674786391.Spec : Prop :=
  ∀ n, P9129550492674786391.a n = A254278 (n + 1)

end A254278

/-! ## A254278.P15706533568392186706

`lt[A028310(n), A187793(A028310(n))]`
-/

namespace A254278.P15706533568392186706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A254278.P15706533568392186706

namespace A254278

/-- `lt[A028310(n), A187793(A028310(n))]` -/
def P15706533568392186706.Spec : Prop :=
  ∀ n, (P15706533568392186706.a n : ℤ) = A254278 (n + 1)

end A254278

/-! ## A254278.P11272990838181417990

`lt[A065033(2*n), A187793(A065033(2*n))]`
-/

namespace A254278.P11272990838181417990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A254278.P11272990838181417990

namespace A254278

/-- `lt[A065033(2*n), A187793(A065033(2*n))]` -/
def P11272990838181417990.Spec : Prop :=
  ∀ n, (P11272990838181417990.a n : ℤ) = A254278 (n + 1)

end A254278

/-! ## A254278.P13436015253532992046

`lt[n^A178334(n), A187793(n^A178334(n))]`
-/

namespace A254278.P13436015253532992046
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A178334 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A254278.P13436015253532992046

namespace A254278

/-- `lt[n^A178334(n), A187793(n^A178334(n))]` -/
def P13436015253532992046.Spec : Prop :=
  ∀ n, (P13436015253532992046.a n : ℤ) = A254278 (n + 1)

end A254278

/-!
# A254282: Expansion of (1 - (1 - 27*x)^(1/3)) / (9*x).

The programs for A254282, the canonical program `A254282.P10242504731374827750` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254282 has offset 0).

The definition of A254282 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254282.P10242504731374827750

`3^n*A025748(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254282

/-- `3^n*A025748(n+1)` -/
def P10242504731374827750.Spec : Prop :=
  ∀ n, P10242504731374827750.a n = A254282 n

theorem P10242504731374827750.correct : P10242504731374827750.Spec := by
  intro n
  simp only [A254282]

end A254282

/-! ## A254282.P10148441472621261671

`3*3*(3-4/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A254282.P10148441472621261671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (3 * ((3 - 4 / (n + 1 : ℚ)) * a (n - 1)))

end

end A254282.P10148441472621261671

namespace A254282

/-- `3*3*(3-4/(n+1))*a(n-1)` -/
def P10148441472621261671.Spec : Prop :=
  ∀ n, P10148441472621261671.a n = (A254282 n : ℚ)

end A254282

/-! ## A254282.P15307290535833018573

`A000244(n)*A097188(n)`
-/

namespace A254282.P15307290535833018573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A097188 n

end

end A254282.P15307290535833018573

namespace A254282

/-- `A000244(n)*A097188(n)` -/
def P15307290535833018573.Spec : Prop :=
  ∀ n, P15307290535833018573.a n = A254282 n

end A254282

/-! ## A254282.P15806101116169006040

`Δ[A003462(n)]*A097188(n)`
-/

namespace A254282.P15806101116169006040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097188 n

end

end A254282.P15806101116169006040

namespace A254282

/-- `Δ[A003462(n)]*A097188(n)` -/
def P15806101116169006040.Spec : Prop :=
  ∀ n, P15806101116169006040.a n = A254282 n

end A254282

/-! ## A254282.P8236646439873954175

`Δ[A007051(n)]*A097188(n)`
-/

namespace A254282.P8236646439873954175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097188 n

end

end A254282.P8236646439873954175

namespace A254282

/-- `Δ[A007051(n)]*A097188(n)` -/
def P8236646439873954175.Spec : Prop :=
  ∀ n, P8236646439873954175.a n = A254282 n

end A254282

/-! ## A254282.P15123606812339088993

`record[A125824(n)]*A097188(n)`
-/

namespace A254282.P15123606812339088993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A097188 n

end

end A254282.P15123606812339088993

namespace A254282

/-- `record[A125824(n)]*A097188(n)` -/
def P15123606812339088993.Spec : Prop :=
  ∀ n, P15123606812339088993.a n = A254282 n

end A254282

/-! ## A254282.P17034929795248816180

`A017913(2*n)*A097188(n)`
-/

namespace A254282.P17034929795248816180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (2 * n) * A097188 n

end

end A254282.P17034929795248816180

namespace A254282

/-- `A017913(2*n)*A097188(n)` -/
def P17034929795248816180.Spec : Prop :=
  ∀ n, P17034929795248816180.a n = A254282 n

end A254282

/-! ## A254282.P8791956857381178129

`A097188(n)*A108411(2*n)`
-/

namespace A254282.P8791956857381178129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097188 n * A108411 (2 * n)

end

end A254282.P8791956857381178129

namespace A254282

/-- `A097188(n)*A108411(2*n)` -/
def P8791956857381178129.Spec : Prop :=
  ∀ n, P8791956857381178129.a n = A254282 n

end A254282

/-! ## A254282.P12382966696647535202

`A025748(n+1)*A108411(2*n)`
-/

namespace A254282.P12382966696647535202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025748 (n + 1) * A108411 (2 * n)

end

end A254282.P12382966696647535202

namespace A254282

/-- `A025748(n+1)*A108411(2*n)` -/
def P12382966696647535202.Spec : Prop :=
  ∀ n, P12382966696647535202.a n = A254282 n

end A254282

/-! ## A254282.P12941809733949242926

`A097188(n)*A111575(A008586(n))`
-/

namespace A254282.P12941809733949242926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097188 n * A111575 (A008586 n).toNat

end

end A254282.P12941809733949242926

namespace A254282

/-- `A097188(n)*A111575(A008586(n))` -/
def P12941809733949242926.Spec : Prop :=
  ∀ n, P12941809733949242926.a n = A254282 n

end A254282

/-!
# A254283: Indices of hexagonal numbers (A000384) which are also centered triangular numbers (A005448).

The programs for A254283, there is no canonical definition to state claims against.
-/

/-! ## A254283.P5858862586446171780

`floor(sqrt(A274756(n+1)))+1`
-/

namespace A254283.P5858862586446171780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A274756 (n + 1)) + 1

end

end A254283.P5858862586446171780

/-! ## A254283.P4497372785430457118

`ceil(sqrt(A254285(n+1)/2))`
-/

namespace A254283.P4497372785430457118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A254285 (n + 1) : ℚ) / 2 : ℝ)⌉

end

end A254283.P4497372785430457118

/-! ## A254283.P4345119972177512809

`ceil(sqrt(A274756(n+1)+A005559(n+1)))`
-/

namespace A254283.P4345119972177512809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A274756 (n + 1) + A005559 (n + 1) : ℝ)⌉

end

end A254283.P4345119972177512809

/-! ## A254283.P3519647698760989050

`ceil(sqrt(A274756(n+1)+A008836(n+1)))`
-/

namespace A254283.P3519647698760989050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A274756 (n + 1) + A008836 (n + 1) : ℝ)⌉

end

end A254283.P3519647698760989050

/-! ## A254283.P11901852016493277046

`ceil(sqrt(A274756(n+1)+A014493(n+1)))`
-/

namespace A254283.P11901852016493277046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A274756 (n + 1) + A014493 (n + 1) : ℝ)⌉

end

end A254283.P11901852016493277046

/-!
# A254284: Indices of centered triangular numbers (A005448) which are also hexagonal numbers (A000384).

The programs for A254284, there is no canonical definition to state claims against.
-/

/-! ## A254284.P17047776964089881250

`A102871(A014601(n))`
-/

namespace A254284.P17047776964089881250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 (A014601 n).toNat

end

end A254284.P17047776964089881250

/-! ## A254284.P8163054553605258827

`A107401(A047467(n+2))`
-/

namespace A254284.P8163054553605258827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (A047467 (n + 2)).toNat

end

end A254284.P8163054553605258827

/-! ## A254284.P14873590549917132541

`A107401(∑[A010693(n)!])`
-/

namespace A254284.P14873590549917132541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010693 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254284.P14873590549917132541

/-! ## A254284.P14809232080535528146

`A107401(A047522(n+1)+1)`
-/

namespace A254284.P14809232080535528146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (A047522 (n + 1) + 1).toNat

end

end A254284.P14809232080535528146

/-! ## A254284.P14530588574519522982

`A102871(A042948(n+1)-1)`
-/

namespace A254284.P14530588574519522982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 (A042948 (n + 1) - 1).toNat

end

end A254284.P14530588574519522982

/-! ## A254284.P4237906316623270303

`A102871(A000035(n)+2*n)`
-/

namespace A254284.P4237906316623270303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 (A000035 n + (2 * n : ℤ)).toNat

end

end A254284.P4237906316623270303

/-! ## A254284.P10229491195419651093

`A102871(or(2*n, A000035(n)))`
-/

namespace A254284.P10229491195419651093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 (Int.lor (2 * n : ℤ) (A000035 n)).toNat

end

end A254284.P10229491195419651093

/-! ## A254284.P7965726727669224216

`A102871(or(2*n, A042948(n)))`
-/

namespace A254284.P7965726727669224216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 (Int.lor (2 * n : ℤ) (A042948 n)).toNat

end

end A254284.P7965726727669224216

/-! ## A254284.P489447836208420519

`A102871(xor(2*n, A000035(n)))`
-/

namespace A254284.P489447836208420519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 (Int.xor (2 * n : ℤ) (A000035 n)).toNat

end

end A254284.P489447836208420519

/-! ## A254284.P209609342642250957

`A102871(A000035(n)+n+n)`
-/

namespace A254284.P209609342642250957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 (A000035 n + (n : ℤ) + (n : ℤ)).toNat

end

end A254284.P209609342642250957

/-!
# A254285: Hexagonal numbers (A000384) which are also centered triangular numbers (A005448).

The programs for A254285, there is no canonical definition to state claims against.
-/

/-! ## A254285.P13334476685967552729

`2*A274756(n+1)+1`
-/

namespace A254285.P13334476685967552729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274756 (n + 1) + 1

end

end A254285.P13334476685967552729

/-! ## A254285.P1736551531477931400

`A128862(A014601(n)+1)`
-/

namespace A254285.P1736551531477931400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128862 (A014601 n + 1).toNat

end

end A254285.P1736551531477931400

/-! ## A254285.P24229118606097074

`A128862(A000034(n)+2*n)`
-/

namespace A254285.P24229118606097074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128862 (A000034 n + (2 * n : ℤ)).toNat

end

end A254285.P24229118606097074

/-! ## A254285.P11100394014888947787

`A128862(A000034(n)+n+n)`
-/

namespace A254285.P11100394014888947787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128862 (A000034 n + (n : ℤ) + (n : ℤ)).toNat

end

end A254285.P11100394014888947787

/-! ## A254285.P17610495448978386561

`A128862(A005408(n)+A000035(n))`
-/

namespace A254285.P17610495448978386561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128862 (A005408 n + A000035 n).toNat

end

end A254285.P17610495448978386561

/-!
# A254286: Expansion of (1 - (1-256*x)^(1/4)) / (64*x).

The programs for A254286, the canonical program `A254286.P2241292018537070123` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254286 has offset 0).

The definition of A254286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254286.P6720837435163254328

`16^n*A025749(n+1)`
-/

namespace A254286.P6720837435163254328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 ^ n : ℤ) * A025749 (n + 1)

end

end A254286.P6720837435163254328

namespace A254286

/-- `16^n*A025749(n+1)` -/
def P6720837435163254328.Spec : Prop :=
  ∀ n, P6720837435163254328.a n = A254286 n

end A254286

/-! ## A254286.P2241292018537070123

`32^n*A048779(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254286

/-- `32^n*A048779(n+1)` -/
def P2241292018537070123.Spec : Prop :=
  ∀ n, P2241292018537070123.a n = A254286 n

theorem P2241292018537070123.correct : P2241292018537070123.Spec := by
  intro n
  simp only [A254286]

end A254286

/-! ## A254286.P16407023835342508889

`A004982(n)/(n+1)*A000079(A008587(n))`
-/

namespace A254286.P16407023835342508889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004982 n : ℚ) / (n + 1 : ℚ) * (A000079 (A008587 n).toNat : ℚ)

end

end A254286.P16407023835342508889

namespace A254286

/-- `A004982(n)/(n+1)*A000079(A008587(n))` -/
def P16407023835342508889.Spec : Prop :=
  ∀ n, P16407023835342508889.a n = (A254286 n : ℚ)

end A254286

/-! ## A254286.P9353599561188184977

`A004982(n)/(n+1)*A000584(A000079(n))`
-/

namespace A254286.P9353599561188184977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004982 n : ℚ) / (n + 1 : ℚ) * (A000584 (A000079 n).toNat : ℚ)

end

end A254286.P9353599561188184977

namespace A254286

/-- `A004982(n)/(n+1)*A000584(A000079(n))` -/
def P9353599561188184977.Spec : Prop :=
  ∀ n, P9353599561188184977.a n = (A254286 n : ℚ)

end A254286

/-!
# A254297: Consider the nontrivial zeros of the Riemann zeta function on the critical line 1/2 + i*t and the gap, or first difference, between two consecutive such zeros; a(n) is the lesser of the two zeros at a place where the gap attains a new minimum.

The programs for A254297, there is no canonical definition to state claims against.
-/

/-! ## A254297.P12816534789059524803

`A326502(A028310(n))+floor(atan(n+1))`
-/

namespace A254297.P12816534789059524803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (A028310 n).toNat + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A254297.P12816534789059524803

/-! ## A254297.P3037441734073663369

`A326502(round(sqrt(n²+1)))-A057428(n)`
-/

namespace A254297.P3037441734073663369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A057428 n

end

end A254297.P3037441734073663369

/-! ## A254297.P16037206224088142631

`A326502(A028310(n))+A057427(n)`
-/

namespace A254297.P16037206224088142631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (A028310 n).toNat + A057427 n

end

end A254297.P16037206224088142631

/-! ## A254297.P15089337180531657743

`A326502(A028310(n))+A157928(n+1)`
-/

namespace A254297.P15089337180531657743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (A028310 n).toNat + A157928 (n + 1)

end

end A254297.P15089337180531657743

/-! ## A254297.P7441124308018625783

`A326502(A028310(n))+A000040(n+1)%2`
-/

namespace A254297.P7441124308018625783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A254297.P7441124308018625783

/-!
# A254299: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254299, there is no canonical definition to state claims against.
-/

/-! ## A254299.P8806595771823954889

`A254306(∑[4*n]+1)`
-/

namespace A254299.P8806595771823954889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254299.P8806595771823954889

/-! ## A254299.P17811463949162237017

`record[gcd(A114327(n), A254306(n+1))]`
-/

namespace A254299.P17811463949162237017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A254306 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254299.P17811463949162237017

/-! ## A254299.P11675734577016233952

`A033999(n)²*A254306(A001844(n))`
-/

namespace A254299.P11675734577016233952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A254306 (A001844 n).toNat

end

end A254299.P11675734577016233952

/-! ## A254299.P10515766537458079510

`A254306(A001844(n))+A034512(n+1)`
-/

namespace A254299.P10515766537458079510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A001844 n).toNat + A034512 (n + 1)

end

end A254299.P10515766537458079510

