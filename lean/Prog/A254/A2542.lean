import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

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

/-! ## A254205.P11540607074281179355

`A254219(1+n)+A065855(n+3)`
-/

namespace A254205.P11540607074281179355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254219 (1 + n) + A065855 (n + 3)

end

end A254205.P11540607074281179355

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

/-!
# A254212: Number of length n 1..(2+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254212, there is no canonical definition to state claims against.
-/

/-! ## A254212.P9739704571011672400

`A254218(∑[2+n])`
-/

namespace A254212.P9739704571011672400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254212.P9739704571011672400

/-!
# A254213: Number of length n 1..(3+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254213, there is no canonical definition to state claims against.
-/

/-! ## A254213.P11346036005437891473

`A254218(∑[3+n]+1)`
-/

namespace A254213.P11346036005437891473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254213.P11346036005437891473

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

/-! ## A254219.P5480558599342880706

`A254205(1+n)-A065855(n+3)`
-/

namespace A254219.P5480558599342880706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254205 (1 + n) - A065855 (n + 3)

end

end A254219.P5480558599342880706

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

/-!
# A254222: Number of length 5 1..(n+2) arrays with no leading or trailing partial sum equal to a prime and no consecutive values equal.

The programs for A254222, there is no canonical definition to state claims against.
-/

/-! ## A254222.P6294692240956701291

`A254218(∑[n+4]+11)`
-/

namespace A254222.P6294692240956701291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A254222.P6294692240956701291

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

/-! ## A254232.P1891628974016711498

`A001608(2+n)*a(n-1)` with `a(0)=2`
-/

namespace A254232.P1891628974016711498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001608 (2 + n) * a (n - 1)

end

end A254232.P1891628974016711498

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

/-! ## A254235.P16300215338717185694

`A254242(∑[n]+1)`
-/

namespace A254235.P16300215338717185694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254235.P16300215338717185694

/-!
# A254236: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254236, there is no canonical definition to state claims against.
-/

/-! ## A254236.P1473734722733098287

`A254242(2+∑[n+1])`
-/

namespace A254236.P1473734722733098287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254236.P1473734722733098287

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

/-! ## A254239.P15132713804841064067

`A254242(A374005(n+1))`
-/

namespace A254239.P15132713804841064067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A374005 (n + 1)).toNat

end

end A254239.P15132713804841064067

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

/-! ## A254240.P17087934389038517155

`record[A254242(A198467(n+3)+6)]`
-/

namespace A254240.P17087934389038517155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A198467 (n + 3) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254240.P17087934389038517155

/-!
# A254241: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254241, there is no canonical definition to state claims against.
-/

/-! ## A254241.P2719260451180946562

`A254242(A167487(n+5))`
-/

namespace A254241.P2719260451180946562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A167487 (n + 5)).toNat

end

end A254241.P2719260451180946562

/-! ## A254241.P3821887233347122765

`A254242(A374008(n+1))`
-/

namespace A254241.P3821887233347122765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254242 (A374008 (n + 1)).toNat

end

end A254241.P3821887233347122765

/-!
# A254243: Number of ways to partition the multiset consisting of 3 copies each of 1, 2, ..., n into n sets of size 3.

The programs for A254243, there is no canonical definition to state claims against.
-/

/-! ## A254243.P1636516978687787449

`A257463(eq[3, row(n)-col(n)])`
-/

namespace A254243.P1636516978687787449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254243.P1636516978687787449

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

/-! ## A254253.P10952380604709933117

`A254260(∑[n]+1)`
-/

namespace A254253.P10952380604709933117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254253.P10952380604709933117

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

/-! ## A254269.P18373099569476722778

`A085392(A087135(n))`
-/

namespace A254269.P18373099569476722778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A087135 n).toNat

end

end A254269.P18373099569476722778

/-! ## A254269.P8438318200999965415

`A285730(A366317(n))`
-/

namespace A254269.P8438318200999965415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285730 (A366317 n).toNat

end

end A254269.P8438318200999965415

/-! ## A254269.P2673285556496085724

`A082061(A304990(n))`
-/

namespace A254269.P2673285556496085724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A304990 n).toNat

end

end A254269.P2673285556496085724

/-!
# A254278: Numbers that are smaller than the sum of their deficient divisors.

The programs for A254278, the canonical program `A254278.P16788914304829267329` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254278 has offset 1).

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

/-! ## A254278.P16788914304829267329

`record[(2+n)%A187793(n+2)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A254278

/-- `record[(2+n)%A187793(n+2)]` -/
def P16788914304829267329.Spec : Prop :=
  ∀ n, P16788914304829267329.a n = A254278 (n + 1)

theorem P16788914304829267329.correct : P16788914304829267329.Spec := by
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

The programs for A254282, the canonical program `A254282.P10242504731374827750` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254282 has offset 0).

The definition of A254282 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254282.P10242504731374827750

`3^n*A025748(n+1)`

The canonical program, it is in `Seq.B002.C005`.
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

/-! ## A254282.P7753563603529702361

`3^n*A097188(n)`
-/

namespace A254282.P7753563603529702361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A097188 n

end

end A254282.P7753563603529702361

namespace A254282

/-- `3^n*A097188(n)` -/
def P7753563603529702361.Spec : Prop :=
  ∀ n, P7753563603529702361.a n = A254282 n

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

/-! ## A254282.P14238651119852599626

`record[A048966(n+1)]*A000244(n)`
-/

namespace A254282.P14238651119852599626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000244 n

end

end A254282.P14238651119852599626

namespace A254282

/-- `record[A048966(n+1)]*A000244(n)` -/
def P14238651119852599626.Spec : Prop :=
  ∀ n, P14238651119852599626.a n = A254282 n

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

/-! ## A254284.P16822668562664575731

`A001571(2*n+n%2)+1`
-/

namespace A254284.P16822668562664575731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 (2 * n + n % 2) + 1

end

end A254284.P16822668562664575731

/-! ## A254284.P17047776964089881250

`A102871(A014601(n))`
-/

namespace A254284.P17047776964089881250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 (A014601 n).toNat

end

end A254284.P17047776964089881250

/-! ## A254284.P5629433386522387951

`A107401(A047467(2+n))`
-/

namespace A254284.P5629433386522387951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (A047467 (2 + n)).toNat

end

end A254284.P5629433386522387951

/-! ## A254284.P9368821141464764647

`A107401(A079599(n+1))`
-/

namespace A254284.P9368821141464764647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (A079599 (n + 1)).toNat

end

end A254284.P9368821141464764647

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

/-! ## A254285.P13562002775674864543

`∩[or(1, A128862(n+1)), A128862(n+1)]`
-/

namespace A254285.P13562002775674864543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A128862 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254285.P13562002775674864543

/-!
# A254286: Expansion of (1 - (1-256*x)^(1/4)) / (64*x).

The programs for A254286, the canonical program `A254286.P2241292018537070123` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254286 has offset 0).

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

The canonical program, it is in `Seq.B001.C010`.
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

