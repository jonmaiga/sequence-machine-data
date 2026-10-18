import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
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
# A245600: Smallest prime Q such that prime(n)*(2*Q)^prime(n)-1 is prime.

The programs for A245600, there is no canonical definition to state claims against.
-/

/-! ## A245600.P12657317563477792926

`A027748(2*ceil(n^n/3))`
-/

namespace A245600.P12657317563477792926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (2 * ⌈(n ^ n : ℚ) / 3⌉).toNat

end

end A245600.P12657317563477792926

/-! ## A245600.P13361311240381719448

`∏{e}[∑{d}[1-A107049(n), #], #+1]+1`
-/

namespace A245600.P13361311240381719448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A107049 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1

end

end A245600.P13361311240381719448

/-!
# A245601: Smallest prime Q such that prime(n)*(2*Q)^prime(n)+1 is prime.

The programs for A245601, there is no canonical definition to state claims against.
-/

/-! ## A245601.P9814968891225294167

`∑{p}[A215659(n+1)+1, #]`
-/

namespace A245601.P9814968891225294167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215659 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A245601.P9814968891225294167

/-!
# A245602: Triangle read by rows: the negative terms of A163626.

The programs for A245602, there is no canonical definition to state claims against.
-/

/-! ## A245602.P10615700506148893178

`A163626(comp[n²]+n)`
-/

namespace A245602.P10615700506148893178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163626 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A245602.P10615700506148893178

/-! ## A245602.P7445315809134958144

`-A028246(A000037(n+1)+n+1)`
-/

namespace A245602.P7445315809134958144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A028246 (A000037 (n + 1) + (n + 1 : ℤ)).toNat

end

end A245602.P7445315809134958144

/-!
# A245603: Permutation of natural numbers: a(1) = 1; thereafter, if n is k-th number with an odd number of prime divisors (counted with multiplicity) [i.e., n = A026424(k)], a(n) = 2*a(k), otherwise, when n is k-th number > 1 with an even number of prime divisors [i.e., n = A028260(1+k)], a(n) = 1+(2*a(k)).

The programs for A245603, there is no canonical definition to state claims against.
-/

/-! ## A245603.P4910782555903985739

`A244321(A245613(n+1))`
-/

namespace A245603.P4910782555903985739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244321 (A245613 (n + 1)).toNat

end

end A245603.P4910782555903985739

/-! ## A245603.P2246243260270692201

`A246376(A225589(n+1)%A144851(n+1))`
-/

namespace A245603.P2246243260270692201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246376 (Int.tmod (A225589 (n + 1)) (A144851 (n + 1))).toNat

end

end A245603.P2246243260270692201

/-! ## A245603.P14272334480734458935

`A246376(A225589(n+1))%A242650(n+1)`
-/

namespace A245603.P14272334480734458935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246376 (A225589 (n + 1)).toNat) (A242650 (n + 1))

end

end A245603.P14272334480734458935

/-!
# A245604: Permutation of natural numbers: a(1)=1, a(2n) = A026424(a(n)), a(2n+1) = A028260(1+a(n)).

The programs for A245604, there is no canonical definition to state claims against.
-/

/-! ## A245604.P15833942760820631007

`A245614(A244322(n+1))`
-/

namespace A245604.P15833942760820631007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245614 (A244322 (n + 1)).toNat

end

end A245604.P15833942760820631007

/-! ## A245604.P11139476967421153569

`A217122(A246376(n+1)%A144851(n+1))`
-/

namespace A245604.P11139476967421153569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217122 (Int.tmod (A246376 (n + 1)) (A144851 (n + 1))).toNat

end

end A245604.P11139476967421153569

/-! ## A245604.P15408990030262057132

`A217122(A246376(n+1))%A242650(n+1)`
-/

namespace A245604.P15408990030262057132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217122 (A246376 (n + 1)).toNat) (A242650 (n + 1))

end

end A245604.P15408990030262057132

/-!
# A245605: Permutation of natural numbers: a(1) = 1, a(2n) = 2 * a(A064989(2n-1)), a(2n-1) = 1 + (2 * a(A064989(2n-1)-1)).

The programs for A245605, there is no canonical definition to state claims against.
-/

/-! ## A245605.P1082368960145605367

`A245607(A048673(n+1))`
-/

namespace A245605.P1082368960145605367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245607 (A048673 (n + 1)).toNat

end

end A245605.P1082368960145605367

/-! ## A245605.P4441241892810984715

`A245607(A243501(n+1)/2)`
-/

namespace A245605.P4441241892810984715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245607 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A245605.P4441241892810984715

/-! ## A245605.P7171369625207333312

`A245607(ceil(A003961(n+1)/2))`
-/

namespace A245605.P7171369625207333312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245607 ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat

end

end A245605.P7171369625207333312

/-! ## A245605.P3191511165148155765

`A245607((A003961(n+1)+1)/2)`
-/

namespace A245605.P3191511165148155765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245607 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A245605.P3191511165148155765

/-! ## A245605.P6066440072058513680

`A245607(A245447(A064216(n+1)))`
-/

namespace A245605.P6066440072058513680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245607 (A245447 (A064216 (n + 1)).toNat).toNat

end

end A245605.P6066440072058513680

/-! ## A245605.P5067469420217457469

`A245707(A048673(n+2))-1`
-/

namespace A245605.P5067469420217457469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245707 (A048673 (n + 2)).toNat - 1

end

end A245605.P5067469420217457469

/-! ## A245605.P3322391214581920953

`A245607(A003602(A003961(n+1)))`
-/

namespace A245605.P3322391214581920953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245607 (A003602 (A003961 (n + 1)).toNat).toNat

end

end A245605.P3322391214581920953

/-! ## A245605.P8411171154824605558

`A245705(a(n-1)+1)` with `a(0)=1`
-/

namespace A245605.P8411171154824605558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A245705 (a (n - 1) + 1).toNat

end

end A245605.P8411171154824605558

/-! ## A245605.P11831059234042923248

`A245705(A245707(A048673(A245708(A245707(n+1)))))`
-/

namespace A245605.P11831059234042923248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245705 (A245707 (A048673 (A245708 (A245707 (n + 1)).toNat).toNat).toNat).toNat

end

end A245605.P11831059234042923248

/-! ## A245605.P3987129131354008359

`A245607(A245606(A245607(A245447(n+1))))`
-/

namespace A245605.P3987129131354008359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245607 (A245606 (A245607 (A245447 (n + 1)).toNat).toNat).toNat

end

end A245605.P3987129131354008359

/-!
# A245606: Permutation of natural numbers: a(1) = 1, a(2n) = 1 + A003961(a(n)), a(2n+1) = A003961(1+a(n)). [Where A003961(n) shifts the prime factorization of n one step left].

The programs for A245606, there is no canonical definition to state claims against.
-/

/-! ## A245606.P7325097172071987425

`A064216(A245608(n+1))`
-/

namespace A245606.P7325097172071987425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A245608 (n + 1)).toNat

end

end A245606.P7325097172071987425

/-! ## A245606.P2178089051676076783

`A064216(A245708(n+2))-1`
-/

namespace A245606.P2178089051676076783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A245708 (n + 2)).toNat - 1

end

end A245606.P2178089051676076783

/-! ## A245606.P15953376564977152612

`A321804(C(2, n))+A064216(A245708(n+2))`
-/

namespace A245606.P15953376564977152612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (Nat.choose 2 n) + A064216 (A245708 (n + 2)).toNat

end

end A245606.P15953376564977152612

/-! ## A245606.P13959340045233365833

`A321804(∑{e}[n, #])+A064216(A245708(n+2))`
-/

namespace A245606.P13959340045233365833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + A064216 (A245708 (n + 2)).toNat

end

end A245606.P13959340045233365833

/-! ## A245606.P15078847910400970290

`A321804(((-1)^n)²)+A064216(A245708(n+2))`
-/

namespace A245606.P15078847910400970290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (((-1) ^ n) ^ 2).toNat + A064216 (A245708 (n + 2)).toNat

end

end A245606.P15078847910400970290

/-! ## A245606.P14347095158208449421

`A307445(A065091(n+1))+A064216(A245708(n+2))`
-/

namespace A245606.P14347095158208449421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A065091 (n + 1)).toNat + A064216 (A245708 (n + 2)).toNat

end

end A245606.P14347095158208449421

/-! ## A245606.P16820987025452635061

`A244319(A245609(A245608(A245608(A245607(n+1)))))`
-/

namespace A245606.P16820987025452635061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244319 (A245609 (A245608 (A245608 (A245607 (n + 1)).toNat).toNat).toNat).toNat

end

end A245606.P16820987025452635061

/-! ## A245606.P2479219730367772769

`A283463(2*A245608(n+1))`
-/

namespace A245606.P2479219730367772769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (2 * A245608 (n + 1)).toNat

end

end A245606.P2479219730367772769

/-! ## A245606.P17148193679325398181

`A064989(2*A245608(n+1)-1)`
-/

namespace A245606.P17148193679325398181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A245608 (n + 1) - 1).toNat

end

end A245606.P17148193679325398181

/-! ## A245606.P12292941677557789340

`A064989(A245608(n+1)+A245608(n+1)-1)`
-/

namespace A245606.P12292941677557789340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A245608 (n + 1) + (A245608 (n + 1) - 1)).toNat

end

end A245606.P12292941677557789340

/-!
# A245607: Permutation of natural numbers, the even bisection of A245605 halved: a(n) = A245605(2*n)/2.

The programs for A245607, there is no canonical definition to state claims against.
-/

/-! ## A245607.P6493897159528334158

`A245605(A064216(n+1))`
-/

namespace A245607.P6493897159528334158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245605 (A064216 (n + 1)).toNat

end

end A245607.P6493897159528334158

/-! ## A245607.P4791296032118406492

`A245605(2*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245607.P4791296032118406492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245605 (2 * (n + 1)) : ℚ) / 2

end

end A245607.P4791296032118406492

/-! ## A245607.P18261692947297723909

`A245705(A245707(n+1))`
-/

namespace A245607.P18261692947297723909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245705 (A245707 (n + 1)).toNat

end

end A245607.P18261692947297723909

/-! ## A245607.P17870263118787415165

`A245605(A243502(n+1)/2)`
-/

namespace A245607.P17870263118787415165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245605 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat

end

end A245607.P17870263118787415165

/-! ## A245607.P1657672173321330679

`A245605(A064989(2*n+1))`
-/

namespace A245607.P1657672173321330679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245605 (A064989 (2 * n + 1)).toNat

end

end A245607.P1657672173321330679

/-! ## A245607.P9719906359428870826

`A245605(A048673(A245448(n+1)))`
-/

namespace A245607.P9719906359428870826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245605 (A048673 (A245448 (n + 1)).toNat).toNat

end

end A245607.P9719906359428870826

/-! ## A245607.P7270143244480434816

`A014682(A245605(2*(n+1)))`
-/

namespace A245607.P7270143244480434816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A245605 (2 * (n + 1))).toNat

end

end A245607.P7270143244480434816

/-! ## A245607.P14953963048800644185

`A245712(A245707(n+2))-1`
-/

namespace A245607.P14953963048800644185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245712 (A245707 (n + 2)).toNat - 1

end

end A245607.P14953963048800644185

/-! ## A245607.P3034071883424837026

`A246425(A245605(2*(n+1))-1)`
-/

namespace A245607.P3034071883424837026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A245605 (2 * (n + 1)) - 1).toNat

end

end A245607.P3034071883424837026

/-! ## A245607.P8276417746498551283

`A078898(A245605(2*n+2))`
-/

namespace A245607.P8276417746498551283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A245605 (2 * n + 2)).toNat

end

end A245607.P8276417746498551283

/-!
# A245608: Permutation of natural numbers, the even bisection of A245606 halved: a(n) = A245606(2*n)/2.

The programs for A245608, there is no canonical definition to state claims against.
-/

/-! ## A245608.P15189659390251404460

`A245606(2*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245608.P15189659390251404460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245606 (2 * (n + 1)) : ℚ) / 2

end

end A245608.P15189659390251404460

/-! ## A245608.P13054099438466848024

`A048673(A245606(n+1))`
-/

namespace A245608.P13054099438466848024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A245606 (n + 1)).toNat

end

end A245608.P13054099438466848024

/-! ## A245608.P14068862737283024473

`A245708(A245706(n+1))`
-/

namespace A245608.P14068862737283024473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245708 (A245706 (n + 1)).toNat

end

end A245608.P14068862737283024473

/-! ## A245608.P3642673484675764237

`ceil(A245606(A103517(n))/2)`
-/

namespace A245608.P3642673484675764237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245606 (A103517 n).toNat : ℚ) / 2⌉

end

end A245608.P3642673484675764237

/-! ## A245608.P3499784282473445389

`lcm(round(A245606(A103517(n))/2), A057077(n))`
-/

namespace A245608.P3499784282473445389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A245606 (A103517 n).toNat : ℚ) / 2)) (A057077 n)

end

end A245608.P3499784282473445389

/-! ## A245608.P14843303907960300826

`2^A008683(A151800(n))*A245606(2*(n+1))`
-/

namespace A245608.P14843303907960300826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ) * (A245606 (2 * (n + 1)) : ℚ)

end

end A245608.P14843303907960300826

/-! ## A245608.P5152947590055194570

`A014682(A245606(2*(n+1)))`
-/

namespace A245608.P5152947590055194570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A245606 (2 * (n + 1))).toNat

end

end A245608.P5152947590055194570

/-! ## A245608.P9787880537522710533

`A243501(A245606(n+1))/A000005(A000355(n+1))`
-/

namespace A245608.P9787880537522710533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243501 (A245606 (n + 1)).toNat : ℚ) / (A000005 (A000355 (n + 1)).toNat : ℚ)

end

end A245608.P9787880537522710533

/-! ## A245608.P9131448742397547207

`A246425(A245606(2*(n+1))-1)`
-/

namespace A245608.P9131448742397547207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A245606 (2 * (n + 1)) - 1).toNat

end

end A245608.P9131448742397547207

/-! ## A245608.P1092768208621727602

`A000463(A245606(2*(n+1))-1)`
-/

namespace A245608.P1092768208621727602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A245606 (2 * (n + 1)) - 1).toNat

end

end A245608.P1092768208621727602

/-! ## A245608.P6609564241322293212

`A008619(A245606(2*(n+1))-1)`
-/

namespace A245608.P6609564241322293212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A245606 (2 * (n + 1)) - 1).toNat

end

end A245608.P6609564241322293212

/-! ## A245608.P9450460343043810075

`A110654(A245606(2*(n+1))-1)`
-/

namespace A245608.P9450460343043810075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A245606 (2 * (n + 1)) - 1).toNat

end

end A245608.P9450460343043810075

/-!
# A245609: Permutation of natural numbers: a(n) = A244319(A064216(n)).

The programs for A245609, there is no canonical definition to state claims against.
-/

/-! ## A245609.P1845352790422589109

`A244319(A064216(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245609.P1845352790422589109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244319 (A064216 (n + 1)).toNat

end

end A245609.P1845352790422589109

/-! ## A245609.P3916184028990218752

`A244319(A243502(n+1)/2)`
-/

namespace A245609.P3916184028990218752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244319 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat

end

end A245609.P3916184028990218752

/-! ## A245609.P13457135635483497934

`A244319(A292245(n+1)+A292244(n+1))`
-/

namespace A245609.P13457135635483497934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244319 (A292245 (n + 1) + A292244 (n + 1)).toNat

end

end A245609.P13457135635483497934

/-! ## A245609.P8337942079392567375

`A244319(A064989(2*n+1))`
-/

namespace A245609.P8337942079392567375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244319 (A064989 (2 * n + 1)).toNat

end

end A245609.P8337942079392567375

/-! ## A245609.P7126977274094198986

`A244319(A048673(A245448(n+1)))`
-/

namespace A245609.P7126977274094198986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244319 (A048673 (A245448 (n + 1)).toNat).toNat

end

end A245609.P7126977274094198986

/-! ## A245609.P6365202811162835660

`A244319(A245606(A245607(n+1)))`
-/

namespace A245609.P6365202811162835660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244319 (A245606 (A245607 (n + 1)).toNat).toNat

end

end A245609.P6365202811162835660

/-!
# A245610: Permutation of natural numbers: a(n) = A048673(A244319(n)).

The programs for A245610, there is no canonical definition to state claims against.
-/

/-! ## A245610.P11055828431394114530

`A048673(A244319(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245610.P11055828431394114530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A244319 (n + 1)).toNat

end

end A245610.P11055828431394114530

/-! ## A245610.P9294532948006954858

`A244319(A003961(n+2))/2`
-/

namespace A245610.P9294532948006954858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244319 (A003961 (n + 2)).toNat : ℚ) / 2

end

end A245610.P9294532948006954858

/-! ## A245610.P65528030324701528

`2^A321804(A007318(n))*A244319(A003961(n+2))`
-/

namespace A245610.P65528030324701528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A321804 (A007318 n).toNat : ℤ) * (A244319 (A003961 (n + 2)).toNat : ℚ)

end

end A245610.P65528030324701528

/-! ## A245610.P14653595646652678997

`A249810(2*A244319(n+1))`
-/

namespace A245610.P14653595646652678997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (2 * A244319 (n + 1)).toNat

end

end A245610.P14653595646652678997

/-!
# A245611: Permutation of natural numbers: a(n) = A243071(A064216(n)).

The programs for A245611, the canonical program `A245611.P15922686694877534878` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245611 has offset 1).

The definition of A245611 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A243071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245611.P15922686694877534878

`A243071(A064216(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A245611

/-- `A243071(A064216(n+1))` -/
def P15922686694877534878.Spec : Prop :=
  ∀ n, P15922686694877534878.a n = A245611 (n + 1)

theorem P15922686694877534878.correct : P15922686694877534878.Spec := by
  intro n
  simp only [A245611, Nat.add_sub_cancel]

end A245611

/-! ## A245611.P11401936783240993317

`A243071(A064989(Δ[n²]))`
-/

namespace A245611.P11401936783240993317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A064989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A245611.P11401936783240993317

namespace A245611

/-- `A243071(A064989(Δ[n²]))` -/
def P11401936783240993317.Spec : Prop :=
  ∀ n, P11401936783240993317.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P17053482015483409538

`A243071(A252463(Δ[n²]))`
-/

namespace A245611.P17053482015483409538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A252463 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A245611.P17053482015483409538

namespace A245611

/-- `A243071(A252463(Δ[n²]))` -/
def P17053482015483409538.Spec : Prop :=
  ∀ n, P17053482015483409538.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P3533345803549941366

`A243071(A341515(2*n+1))`
-/

namespace A245611.P3533345803549941366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A341515 (2 * n + 1)).toNat

end

end A245611.P3533345803549941366

namespace A245611

/-- `A243071(A341515(2*n+1))` -/
def P3533345803549941366.Spec : Prop :=
  ∀ n, P3533345803549941366.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P16495047476925125099

`A292591(n+1)+A292590(n+1)`
-/

namespace A245611.P16495047476925125099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292591 (n + 1) + A292590 (n + 1)

end

end A245611.P16495047476925125099

namespace A245611

/-- `A292591(n+1)+A292590(n+1)` -/
def P16495047476925125099.Spec : Prop :=
  ∀ n, P16495047476925125099.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P5748937502488485069

`A243071(A252463(2*n+1)%record[xor(3, n)])`
-/

namespace A245611.P5748937502488485069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (Int.tmod (A252463 (2 * n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A245611.P5748937502488485069

namespace A245611

/-- `A243071(A252463(2*n+1)%record[xor(3, n)])` -/
def P5748937502488485069.Spec : Prop :=
  ∀ n, P5748937502488485069.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P7636354358304069887

`A243071(or(A252463(2*n+1), A292244(n+1)))`
-/

namespace A245611.P7636354358304069887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (Int.lor (A252463 (2 * n + 1)) (A292244 (n + 1))).toNat

end

end A245611.P7636354358304069887

namespace A245611

/-- `A243071(or(A252463(2*n+1), A292244(n+1)))` -/
def P7636354358304069887.Spec : Prop :=
  ∀ n, P7636354358304069887.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P11286295768484720104

`floor(A243071(2*n+1)/2)`
-/

namespace A245611.P11286295768484720104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243071 (2 * n + 1) : ℚ) / 2⌋

end

end A245611.P11286295768484720104

namespace A245611

/-- `floor(A243071(2*n+1)/2)` -/
def P11286295768484720104.Spec : Prop :=
  ∀ n, P11286295768484720104.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P5224022226770412228

`(A243071(2*n+1)-A252744(4*n))/2`
-/

namespace A245611.P5224022226770412228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243071 (2 * n + 1) - A252744 (4 * n) : ℚ) / 2

end

end A245611.P5224022226770412228

namespace A245611

/-- `(A243071(2*n+1)-A252744(4*n))/2` -/
def P5224022226770412228.Spec : Prop :=
  ∀ n, P5224022226770412228.a n = (A245611 (n + 1) : ℚ)

end A245611

/-! ## A245611.P5105867922505242148

`(A243071(2*n+1)-A292262(4*n))/2`
-/

namespace A245611.P5105867922505242148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243071 (2 * n + 1) - A292262 (4 * n) : ℚ) / 2

end

end A245611.P5105867922505242148

namespace A245611

/-- `(A243071(2*n+1)-A292262(4*n))/2` -/
def P5105867922505242148.Spec : Prop :=
  ∀ n, P5105867922505242148.a n = (A245611 (n + 1) : ℚ)

end A245611

/-! ## A245611.P9273348682546712426

`A332811(A332819(A108548(2*n+1)))`
-/

namespace A245611.P9273348682546712426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (A332819 (A108548 (2 * n + 1)).toNat).toNat

end

end A245611.P9273348682546712426

namespace A245611

/-- `A332811(A332819(A108548(2*n+1)))` -/
def P9273348682546712426.Spec : Prop :=
  ∀ n, P9273348682546712426.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P12214115963654212140

`A243071(A249823(A249746(n+1)))`
-/

namespace A245611.P12214115963654212140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A249823 (A249746 (n + 1)).toNat).toNat

end

end A245611.P12214115963654212140

namespace A245611

/-- `A243071(A249823(A249746(n+1)))` -/
def P12214115963654212140.Spec : Prop :=
  ∀ n, P12214115963654212140.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P3811705892461784026

`A305428(A305422(A091202(2*n+1)))`
-/

namespace A245611.P3811705892461784026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305428 (A305422 (A091202 (2 * n + 1)).toNat).toNat

end

end A245611.P3811705892461784026

namespace A245611

/-- `A305428(A305422(A091202(2*n+1)))` -/
def P3811705892461784026.Spec : Prop :=
  ∀ n, P3811705892461784026.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P1701111141690307683

`A305428(A305425(A091202(n+1+n)))`
-/

namespace A245611.P1701111141690307683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305428 (A305425 (A091202 (n + 1 + n)).toNat).toNat

end

end A245611.P1701111141690307683

namespace A245611

/-- `A305428(A305425(A091202(n+1+n)))` -/
def P1701111141690307683.Spec : Prop :=
  ∀ n, P1701111141690307683.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P9933445443087052301

`A252756(A253554(A250245(2*n+1)))`
-/

namespace A245611.P9933445443087052301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A253554 (A250245 (2 * n + 1)).toNat).toNat

end

end A245611.P9933445443087052301

namespace A245611

/-- `A252756(A253554(A250245(2*n+1)))` -/
def P9933445443087052301.Spec : Prop :=
  ∀ n, P9933445443087052301.a n = A245611 (n + 1)

end A245611

/-! ## A245611.P5316551566268881597

`A275715(A249746(n+1))`
-/

namespace A245611.P5316551566268881597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275715 (A249746 (n + 1)).toNat

end

end A245611.P5316551566268881597

namespace A245611

/-- `A275715(A249746(n+1))` -/
def P5316551566268881597.Spec : Prop :=
  ∀ n, P5316551566268881597.a n = A245611 (n + 1)

end A245611

/-!
# A245612: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = 3*a(n)-1, a(2n+1) = A254049(a(n)); composition of A048673 and A163511.

The programs for A245612, the canonical program `A245612.P9111246450174136386` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245612 has offset 0).

The definition of A245612 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245612.P9111246450174136386

`A048673(A163511(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A245612

/-- `A048673(A163511(n))` -/
def P9111246450174136386.Spec : Prop :=
  ∀ n, P9111246450174136386.a n = A245612 n

theorem P9111246450174136386.correct : P9111246450174136386.Spec := by
  intro n
  simp only [A245612]

end A245612

/-! ## A245612.P276833265950438320

`ceil(A163511(Δ[n²])/2)`
-/

namespace A245612.P276833265950438320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A163511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A245612.P276833265950438320

namespace A245612

/-- `ceil(A163511(Δ[n²])/2)` -/
def P276833265950438320.Spec : Prop :=
  ∀ n, P276833265950438320.a n = A245612 n

end A245612

/-! ## A245612.P8326262211914012554

`round(A163511(2*n+1)/2)`
-/

namespace A245612.P8326262211914012554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A163511 (2 * n + 1) : ℚ) / 2)

end

end A245612.P8326262211914012554

namespace A245612

/-- `round(A163511(2*n+1)/2)` -/
def P8326262211914012554.Spec : Prop :=
  ∀ n, P8326262211914012554.a n = A245612 n

end A245612

/-! ## A245612.P17604615525531180493

`(A163511(2*n+1)+A057427(n))/2`
-/

namespace A245612.P17604615525531180493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 (2 * n + 1) + A057427 n : ℚ) / 2

end

end A245612.P17604615525531180493

namespace A245612

/-- `(A163511(2*n+1)+A057427(n))/2` -/
def P17604615525531180493.Spec : Prop :=
  ∀ n, P17604615525531180493.a n = (A245612 n : ℚ)

end A245612

/-! ## A245612.P7985314369248714503

`(A163511(2*n+1)-A134824(2*n))/2`
-/

namespace A245612.P7985314369248714503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 (2 * n + 1) - A134824 (2 * n) : ℚ) / 2

end

end A245612.P7985314369248714503

namespace A245612

/-- `(A163511(2*n+1)-A134824(2*n))/2` -/
def P7985314369248714503.Spec : Prop :=
  ∀ n, P7985314369248714503.a n = (A245612 n : ℚ)

end A245612

/-! ## A245612.P5580618336093274130

`ceil(A163511(A016813(n))/6)%A024522(n+2)`
-/

namespace A245612.P5580618336093274130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A163511 (A016813 n).toNat : ℚ) / 6⌉ (A024522 (n + 2))

end

end A245612.P5580618336093274130

namespace A245612

/-- `ceil(A163511(A016813(n))/6)%A024522(n+2)` -/
def P5580618336093274130.Spec : Prop :=
  ∀ n, P5580618336093274130.a n = A245612 n

end A245612

/-! ## A245612.P4933757607837776330

`ceil(A003961(A163511(2*n))/6)`
-/

namespace A245612.P4933757607837776330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003961 (A163511 (2 * n)).toNat : ℚ) / 6⌉

end

end A245612.P4933757607837776330

namespace A245612

/-- `ceil(A003961(A163511(2*n))/6)` -/
def P4933757607837776330.Spec : Prop :=
  ∀ n, P4933757607837776330.a n = A245612 n

end A245612

/-! ## A245612.P15264785666063902770

`A048673(A332213(A332214(n)))`
-/

namespace A245612.P15264785666063902770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A332213 (A332214 n).toNat).toNat

end

end A245612.P15264785666063902770

namespace A245612

/-- `A048673(A332213(A332214(n)))` -/
def P15264785666063902770.Spec : Prop :=
  ∀ n, P15264785666063902770.a n = A245612 n

end A245612

/-! ## A245612.P4738147149480953630

`A302042(A163511(2*n+1)+1)`
-/

namespace A245612.P4738147149480953630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A163511 (2 * n + 1) + 1).toNat

end

end A245612.P4738147149480953630

namespace A245612

/-- `A302042(A163511(2*n+1)+1)` -/
def P4738147149480953630.Spec : Prop :=
  ∀ n, P4738147149480953630.a n = A245612 n

end A245612

/-! ## A245612.P3481429778284704138

`A103391(A163511(2*n+1)-1)`
-/

namespace A245612.P3481429778284704138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A163511 (2 * n + 1) - 1).toNat

end

end A245612.P3481429778284704138

namespace A245612

/-- `A103391(A163511(2*n+1)-1)` -/
def P3481429778284704138.Spec : Prop :=
  ∀ n, P3481429778284704138.a n = A245612 n

end A245612

/-! ## A245612.P164250235019948909

`A244154(A243071(A005940(n+1)))`
-/

namespace A245612.P164250235019948909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244154 (A243071 (A005940 (n + 1)).toNat).toNat

end

end A245612.P164250235019948909

namespace A245612

/-- `A244154(A243071(A005940(n+1)))` -/
def P164250235019948909.Spec : Prop :=
  ∀ n, P164250235019948909.a n = A245612 n

end A245612

/-! ## A245612.P13203237920838186702

`A048673(A241909(A064216(A244154(n))))`
-/

namespace A245612.P13203237920838186702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A241909 (A064216 (A244154 n).toNat).toNat).toNat

end

end A245612.P13203237920838186702

namespace A245612

/-- `A048673(A241909(A064216(A244154(n))))` -/
def P13203237920838186702.Spec : Prop :=
  ∀ n, P13203237920838186702.a n = A245612 n

end A245612

/-!
# A245613: Permutation of natural numbers: a(1) = 1; thereafter, if n is k-th number with an odd number of prime divisors (counted with multiplicity) [i.e., n = A026424(k)], a(n) = A244991(a(k)), otherwise, when n is k-th number > 1 with an even number of prime divisors [i.e., n = A028260(1+k)], a(n) = A244990(1+a(k)).

The programs for A245613, there is no canonical definition to state claims against.
-/

/-! ## A245613.P13423704635717732920

`A244322(A245603(n+1))`
-/

namespace A245613.P13423704635717732920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244322 (A245603 (n + 1)).toNat

end

end A245613.P13423704635717732920

/-!
# A245614: Permutation of natural numbers: a(1)=1; thereafter, if n is k-th number whose greatest prime factor has an odd index [i.e., n = A244991(k)], a(n) = A026424(a(k)), otherwise, when n is k-th number whose greatest prime factor has an even index [i.e., n = A244990(1+k)], a(n) = A028260(1+a(k)).

The programs for A245614, there is no canonical definition to state claims against.
-/

/-! ## A245614.P15885815498314450427

`A245604(A244321(n+1))`
-/

namespace A245614.P15885815498314450427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245604 (A244321 (n + 1)).toNat

end

end A245614.P15885815498314450427

/-!
# A245615: Sum_{lpf(j)=11, 11

The programs for A245615, there is no canonical definition to state claims against.
-/

/-! ## A245615.P5953232043265653056

`∑[A209615(A338246(A334075(n+1)))]`
-/

namespace A245615.P5953232043265653056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A338246 (A334075 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245615.P5953232043265653056

/-! ## A245615.P10148938547434246207

`∑[A020985(A096515(3*n+2)+1)]`
-/

namespace A245615.P10148938547434246207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A096515 (3 * n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245615.P10148938547434246207

/-! ## A245615.P692494246856639654

`∑[ratio[A020985(A189731(n))]]`
-/

namespace A245615.P692494246856639654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A189731 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245615.P692494246856639654

/-! ## A245615.P5882985219258534242

`∑[A057077(A324700(3*n+5))]`
-/

namespace A245615.P5882985219258534242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A324700 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245615.P5882985219258534242

/-! ## A245615.P4030260790637164817

`∑[A020985(A004768(A093892(n)))]`
-/

namespace A245615.P4030260790637164817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A004768 (A093892 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245615.P4030260790637164817

/-!
# A245618: Triangle {H(n,k)} similar to Pascal's with sides of 1's, but interior entries are obtained by the rule: H(n,k) = |H(n-1,k)+(-1)^m(n,k)*H(n-1,k-1)|, where m(n,k) = H(n-1,k) + H(n-1,k-1).

The programs for A245618, there is no canonical definition to state claims against.
-/

/-! ## A245618.P934004645821226463

`gcd(A050469(A128570(n)), A222405(n))`
-/

namespace A245618.P934004645821226463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050469 (A128570 n).toNat) (A222405 n)

end

end A245618.P934004645821226463

/-! ## A245618.P341711470901851873

`gcd(A032401(n+1), A173118(n))`
-/

namespace A245618.P341711470901851873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032401 (n + 1)) (A173118 n)

end

end A245618.P341711470901851873

/-!
# A245619: Row sums of triangle A245618.

The programs for A245619, there is no canonical definition to state claims against.
-/

/-! ## A245619.P9414029919822431374

`A182635(A173392(n+1)+n)`
-/

namespace A245619.P9414029919822431374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182635 (A173392 (n + 1) + (n : ℤ)).toNat

end

end A245619.P9414029919822431374

/-! ## A245619.P3762711454700193392

`A062821(A048420(n+1)+n²)`
-/

namespace A245619.P3762711454700193392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A048420 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A245619.P3762711454700193392

/-! ## A245619.P16504884314683546450

`A063440(∑[A056040(comp[2*n+3])])`
-/

namespace A245619.P16504884314683546450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245619.P16504884314683546450

/-! ## A245619.P11753348786034676710

`A335708(A244644(n)+A145268(n))`
-/

namespace A245619.P11753348786034676710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335708 (A244644 n + A145268 n).toNat

end

end A245619.P11753348786034676710

/-!
# A245620: Number of unitary polyominoes with n cells. A unitary polyomino is a polyomino whose edges all have length 1.

The programs for A245620, there is no canonical definition to state claims against.
-/

/-! ## A245620.P5117823611388765272

`A029359(eq[A029327(n), A029330(n)])`
-/

namespace A245620.P5117823611388765272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A245620.P5117823611388765272

/-! ## A245620.P14220441294143604739

`A332281(n)+A004601(A008965(n+3))`
-/

namespace A245620.P14220441294143604739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A004601 (A008965 (n + 3)).toNat

end

end A245620.P14220441294143604739

/-!
# A245621: Sequence of distinct least nonnegative numbers such that the average of the first n terms is a cube.

The programs for A245621, the canonical program `A245621.P11135073459772077501` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245621 has offset 1).

The definition of A245621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245621.P11135073459772077501

`Δ[n*floor(n/2)^3]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A245621

/-- `Δ[n*floor(n/2)^3]` -/
def P11135073459772077501.Spec : Prop :=
  ∀ n, P11135073459772077501.a n = A245621 (n + 1)

theorem P11135073459772077501.correct : P11135073459772077501.Spec := by
  intro n
  simp only [A245621, Nat.add_sub_cancel]

end A245621

/-! ## A245621.P4859887326466246484

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=29, a(4)=8, a(5)=122, a(6)=27, a(7)=323`
-/

namespace A245621.P4859887326466246484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 29, 8, 122, 27, 323] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) - a (n - 8)

end

end A245621.P4859887326466246484

namespace A245621

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P4859887326466246484.Spec : Prop :=
  ∀ n, P4859887326466246484.a n = A245621 (n + 1)

end A245621

/-! ## A245621.P7037788793453660422

`abs(Δ[n*A000578(A004526(n))])`
-/

namespace A245621.P7037788793453660422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000578 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A245621.P7037788793453660422

namespace A245621

/-- `abs(Δ[n*A000578(A004526(n))])` -/
def P7037788793453660422.Spec : Prop :=
  ∀ n, P7037788793453660422.a n = A245621 (n + 1)

end A245621

/-! ## A245621.P6731411676370280980

`(A028310(n)+1-n)*Δ[n*A000578(A004526(n))]`
-/

namespace A245621.P6731411676370280980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000578 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n + (1 - (n : ℤ))) * (f1 (n + 1) - f1 n)

end

end A245621.P6731411676370280980

namespace A245621

/-- `(A028310(n)+1-n)*Δ[n*A000578(A004526(n))]` -/
def P6731411676370280980.Spec : Prop :=
  ∀ n, P6731411676370280980.a n = A245621 (n + 1)

end A245621

/-! ## A245621.P16041322208415900145

`A000203(((-1)^n)²)*Δ[n*A000578(A004526(n))]`
-/

namespace A245621.P16041322208415900145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000578 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * (f1 (n + 1) - f1 n)

end

end A245621.P16041322208415900145

namespace A245621

/-- `A000203(((-1)^n)²)*Δ[n*A000578(A004526(n))]` -/
def P16041322208415900145.Spec : Prop :=
  ∀ n, P16041322208415900145.a n = A245621 (n + 1)

end A245621

/-! ## A245621.P12626318205862914899

`Δ[n*A000578(A004526(n))]*A057979(2*n)`
-/

namespace A245621.P12626318205862914899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000578 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057979 (2 * n)

end

end A245621.P12626318205862914899

namespace A245621

/-- `Δ[n*A000578(A004526(n))]*A057979(2*n)` -/
def P12626318205862914899.Spec : Prop :=
  ∀ n, P12626318205862914899.a n = A245621 (n + 1)

end A245621

/-! ## A245621.P18043165006950574399

`A002448(2*(n+1)+n)+Δ[n*A000578(A004526(n))]`
-/

namespace A245621.P18043165006950574399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000578 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (2 * (n + 1) + n) + (f1 (n + 1) - f1 n)

end

end A245621.P18043165006950574399

namespace A245621

/-- `A002448(2*(n+1)+n)+Δ[n*A000578(A004526(n))]` -/
def P18043165006950574399.Spec : Prop :=
  ∀ n, P18043165006950574399.a n = A245621 (n + 1)

end A245621

/-! ## A245621.P4515653236976994372

`Δ[n*A000578(A004526(n))]%(10*A011557(n)²)`
-/

namespace A245621.P4515653236976994372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000578 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (10 * A011557 n ^ 2)

end

end A245621.P4515653236976994372

namespace A245621

/-- `Δ[n*A000578(A004526(n))]%(10*A011557(n)²)` -/
def P4515653236976994372.Spec : Prop :=
  ∀ n, P4515653236976994372.a n = A245621 (n + 1)

end A245621

/-!
# A245622: Primes having more 1's digits than 3's.

The programs for A245622, the canonical program `A245622.P1983515710837540982` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245622 has offset 1).

The definition of A245622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245622.P1983515710837540982

`p?[lt[A316864(n), A268643(n)]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245622

/-- `p?[lt[A316864(n), A268643(n)]]` -/
def P1983515710837540982.Spec : Prop :=
  ∀ n, (P1983515710837540982.a n : ℤ) = A245622 (n + 1)

theorem P1983515710837540982.correct : P1983515710837540982.Spec := by
  intro n
  simp only [A245622, Nat.add_sub_cancel]

end A245622

/-! ## A245622.P4686434996466706179

`p?[A035044(p?[A133506(n+1)])]`
-/

namespace A245622.P4686434996466706179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133506 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245622.P4686434996466706179

namespace A245622

/-- `p?[A035044(p?[A133506(n+1)])]` -/
def P4686434996466706179.Spec : Prop :=
  ∀ n, P4686434996466706179.a n = A245622 (n + 1)

end A245622

/-! ## A245622.P10989720120988964779

`∩[A038611(n+1), A133506(n+1)]`
-/

namespace A245622.P10989720120988964779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245622.P10989720120988964779

namespace A245622

/-- `∩[A038611(n+1), A133506(n+1)]` -/
def P10989720120988964779.Spec : Prop :=
  ∀ n, (P10989720120988964779.a n : ℤ) = A245622 (n + 1)

end A245622

/-! ## A245622.P16695472323316161386

`∩[A133506(n+1), A380906(n+1)]`
-/

namespace A245622.P16695472323316161386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245622.P16695472323316161386

namespace A245622

/-- `∩[A133506(n+1), A380906(n+1)]` -/
def P16695472323316161386.Spec : Prop :=
  ∀ n, (P16695472323316161386.a n : ℤ) = A245622 (n + 1)

end A245622

/-! ## A245622.P10178332472784854906

`∩[A133506(n+1), A386335(n+1)]`
-/

namespace A245622.P10178332472784854906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245622.P10178332472784854906

namespace A245622

/-- `∩[A133506(n+1), A386335(n+1)]` -/
def P10178332472784854906.Spec : Prop :=
  ∀ n, (P10178332472784854906.a n : ℤ) = A245622 (n + 1)

end A245622

/-!
# A245623: Primes having more digits 3's than 1's.

The programs for A245623, the canonical program `A245623.P8231242896739331566` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245623 has offset 1).

The definition of A245623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245623.P8231242896739331566

`p?[lt[A268643(n), A316864(n)]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245623

/-- `p?[lt[A268643(n), A316864(n)]]` -/
def P8231242896739331566.Spec : Prop :=
  ∀ n, (P8231242896739331566.a n : ℤ) = A245623 (n + 1)

theorem P8231242896739331566.correct : P8231242896739331566.Spec := by
  intro n
  simp only [A245623, Nat.add_sub_cancel]

end A245623

/-! ## A245623.P12453239258869275786

`∩[A212525(n+1), A217491(n+1)]`
-/

namespace A245623.P12453239258869275786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245623.P12453239258869275786

namespace A245623

/-- `∩[A212525(n+1), A217491(n+1)]` -/
def P12453239258869275786.Spec : Prop :=
  ∀ n, (P12453239258869275786.a n : ℤ) = A245623 (n + 1)

end A245623

/-! ## A245623.P8831408161894978934

`p?[∩[A011533(n+1), A217491(n+1)]]`
-/

namespace A245623.P8831408161894978934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217491 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245623.P8831408161894978934

namespace A245623

/-- `p?[∩[A011533(n+1), A217491(n+1)]]` -/
def P8831408161894978934.Spec : Prop :=
  ∀ n, (P8831408161894978934.a n : ℤ) = A245623 (n + 1)

end A245623

/-! ## A245623.P17221610449292659550

`record[p?[A048379(A288945(n+2))]]`
-/

namespace A245623.P17221610449292659550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A288945 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245623.P17221610449292659550

namespace A245623

/-- `record[p?[A048379(A288945(n+2))]]` -/
def P17221610449292659550.Spec : Prop :=
  ∀ n, P17221610449292659550.a n = A245623 (n + 1)

end A245623

/-!
# A245624: Sequence of distinct least positive numbers such that the average of the first n terms is a cube.

The programs for A245624, the canonical program `A245624.P12195305465656187990` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245624 has offset 1).

The definition of A245624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245624.P12195305465656187990

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=1, a(1)=15, a(2)=8, a(3)=84, a(4)=27, a(5)=249, a(6)=64, a(7)=552`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A245624

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P12195305465656187990.Spec : Prop :=
  ∀ n, P12195305465656187990.a n = A245624 (n + 1)

theorem P12195305465656187990.correct : P12195305465656187990.Spec := by
  intro n
  simp only [A245624, Nat.add_sub_cancel]

end A245624

/-! ## A245624.P6094173600019744218

`Δ[n*A000578(ceil((n+1)/2))]`
-/

namespace A245624.P6094173600019744218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000578 ⌈(n + 1 : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245624.P6094173600019744218

namespace A245624

/-- `Δ[n*A000578(ceil((n+1)/2))]` -/
def P6094173600019744218.Spec : Prop :=
  ∀ n, P6094173600019744218.a n = A245624 (n + 1)

end A245624

/-! ## A245624.P8257638673859223681

`Δ[n*∑[char[2*n]]^3]`
-/

namespace A245624.P8257638673859223681
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A245624.P8257638673859223681

namespace A245624

/-- `Δ[n*∑[char[2*n]]^3]` -/
def P8257638673859223681.Spec : Prop :=
  ∀ n, P8257638673859223681.a n = A245624 (n + 1)

end A245624

/-! ## A245624.P8910295991206989188

`-Δ[-n*∑[log2(gcd(2, n))]^3]`
-/

namespace A245624.P8910295991206989188
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -((n : ℝ) * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A245624.P8910295991206989188

namespace A245624

/-- `-Δ[-n*∑[log2(gcd(2, n))]^3]` -/
def P8910295991206989188.Spec : Prop :=
  ∀ n, P8910295991206989188.a n = (A245624 (n + 1) : ℝ)

end A245624

/-! ## A245624.P990527011690205590

`abs(Δ[n*(abs(n-A065033(n))+1)^3])`
-/

namespace A245624.P990527011690205590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (|(n : ℤ) - A065033 n| + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A245624.P990527011690205590

namespace A245624

/-- `abs(Δ[n*(abs(n-A065033(n))+1)^3])` -/
def P990527011690205590.Spec : Prop :=
  ∀ n, P990527011690205590.a n = A245624 (n + 1)

end A245624

/-! ## A245624.P327468679032215079

`abs(Δ[n*A000578(A004526(n)+1)])`
-/

namespace A245624.P327468679032215079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000578 (A004526 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A245624.P327468679032215079

namespace A245624

/-- `abs(Δ[n*A000578(A004526(n)+1)])` -/
def P327468679032215079.Spec : Prop :=
  ∀ n, P327468679032215079.a n = A245624 (n + 1)

end A245624

/-!
# A245625: Sequence of distinct least nonnegative numbers such that the average of the first n terms is a square.

The programs for A245625, there is no canonical definition to state claims against.
-/

/-! ## A245625.P5233824330421575478

`Δ[n*A008794(A277112(n))]`
-/

namespace A245625.P5233824330421575478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008794 (A277112 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245625.P5233824330421575478

/-! ## A245625.P3802913722195612271

`Δ[abs(A001489(n*floor(n/2)²))]`
-/

namespace A245625.P3802913722195612271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 ((n : ℤ) * ⌊(n : ℚ) / 2⌋ ^ 2).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245625.P3802913722195612271

/-! ## A245625.P2054856849755431470

`abs(Δ[A024000(n*floor(n/2)²)])`
-/

namespace A245625.P2054856849755431470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 ((n : ℤ) * ⌊(n : ℚ) / 2⌋ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A245625.P2054856849755431470

/-! ## A245625.P10616208545688742950

`Δ[sqrt(A000290(n*floor(n/2)²))]`
-/

namespace A245625.P10616208545688742950
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000290 ((n : ℤ) * ⌊(n : ℚ) / 2⌋ ^ 2).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245625.P10616208545688742950

/-! ## A245625.P13662798886484890553

`abs(Δ[A001489(n*(and(1, n)-n)²/4)])`
-/

namespace A245625.P13662798886484890553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (SequenceMachineLib.roundAway (((n : ℤ) * ((Nat.land 1 n : ℤ) - (n : ℤ)) ^ 2 : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A245625.P13662798886484890553

/-!
# A245627: Base 10 digit sum of 11*n.

The programs for A245627, the canonical program `A245627.P11893254286747696492` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245627 has offset 0).

The definition of A245627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245627.P11893254286747696492

`A007953(A008593(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A245627

/-- `A007953(A008593(n))` -/
def P11893254286747696492.Spec : Prop :=
  ∀ n, P11893254286747696492.a n = A245627 n

theorem P11893254286747696492.correct : P11893254286747696492.Spec := by
  intro n
  simp only [A245627]

end A245627

/-! ## A245627.P9300436478739101853

`∑{digits}[11*n, #]`
-/

namespace A245627.P9300436478739101853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A245627.P9300436478739101853

namespace A245627

/-- `∑{digits}[11*n, #]` -/
def P9300436478739101853.Spec : Prop :=
  ∀ n, (P9300436478739101853.a n : ℤ) = A245627 n

end A245627

/-! ## A245627.P1916089901175552377

`A007953(11*n)`
-/

namespace A245627.P1916089901175552377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (11 * n)

end

end A245627.P1916089901175552377

namespace A245627

/-- `A007953(11*n)` -/
def P1916089901175552377.Spec : Prop :=
  ∀ n, P1916089901175552377.a n = A245627 n

end A245627

/-! ## A245627.P11270107629367086238

`sqrt(A118881(11*n))`
-/

namespace A245627.P11270107629367086238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (11 * n) : ℝ)

end

end A245627.P11270107629367086238

namespace A245627

/-- `sqrt(A118881(11*n))` -/
def P11270107629367086238.Spec : Prop :=
  ∀ n, P11270107629367086238.a n = (A245627 n : ℝ)

end A245627

/-! ## A245627.P3767051654713831612

`log2(A329562(11*n))`
-/

namespace A245627.P3767051654713831612
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (11 * n) : ℝ)

end

end A245627.P3767051654713831612

namespace A245627

/-- `log2(A329562(11*n))` -/
def P3767051654713831612.Spec : Prop :=
  ∀ n, P3767051654713831612.a n = (A245627 n : ℝ)

end A245627

/-! ## A245627.P10241041967391706895

`A169805(11*n)/2`
-/

namespace A245627.P10241041967391706895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (11 * n) : ℚ) / 2

end

end A245627.P10241041967391706895

namespace A245627

/-- `A169805(11*n)/2` -/
def P10241041967391706895.Spec : Prop :=
  ∀ n, P10241041967391706895.a n = (A245627 n : ℚ)

end A245627

/-! ## A245627.P3538687494645278482

`A062028(11*n)-11*n`
-/

namespace A245627.P3538687494645278482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (11 * n) - (11 * n : ℤ)

end

end A245627.P3538687494645278482

namespace A245627

/-- `A062028(11*n)-11*n` -/
def P3538687494645278482.Spec : Prop :=
  ∀ n, P3538687494645278482.a n = A245627 n

end A245627

/-! ## A245627.P2080192659834375273

`lcm(or(n, -1), A007953(A008592(n)+n))`
-/

namespace A245627.P2080192659834375273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor (n : ℤ) (-1)) (A007953 (A008592 n + (n : ℤ)).toNat)

end

end A245627.P2080192659834375273

namespace A245627

/-- `lcm(or(n, -1), A007953(A008592(n)+n))` -/
def P2080192659834375273.Spec : Prop :=
  ∀ n, (P2080192659834375273.a n : ℤ) = A245627 n

end A245627

/-! ## A245627.P1566381974751693011

`A004092(55*n)`
-/

namespace A245627.P1566381974751693011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (55 * n)

end

end A245627.P1566381974751693011

namespace A245627

/-- `A004092(55*n)` -/
def P1566381974751693011.Spec : Prop :=
  ∀ n, P1566381974751693011.a n = A245627 n

end A245627

/-! ## A245627.P16787976763561308831

`A326746(10*11*n)`
-/

namespace A245627.P16787976763561308831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (10 * (11 * n))

end

end A245627.P16787976763561308831

namespace A245627

/-- `A326746(10*11*n)` -/
def P16787976763561308831.Spec : Prop :=
  ∀ n, P16787976763561308831.a n = A245627 n

end A245627

/-!
# A245629: Numbers n such that A000203(2*n) divides 2*n*A045917(n).

The programs for A245629, there is no canonical definition to state claims against.
-/

/-! ## A245629.P15961244840841872889

`A392071(A290002(n+1))`
-/

namespace A245629.P15961244840841872889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392071 (A290002 (n + 1)).toNat

end

end A245629.P15961244840841872889

/-!
# A245630: Products of terms of A006094 (products of 2 successive primes).

The programs for A245630, there is no canonical definition to state claims against.
-/

/-! ## A245630.P13280670439416001378

`filter[A356736(n+1), A353370(#)]`
-/

namespace A245630.P13280670439416001378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353370 (f1 j).toNat = 1) n)

end

end A245630.P13280670439416001378

/-! ## A245630.P17696516623173222847

`∩[A325698(n+1), A356736(n+1)]`
-/

namespace A245630.P17696516623173222847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245630.P17696516623173222847

/-!
# A245633: Number of quenchable labeled spanning trees with n vertices.

The programs for A245633, there is no canonical definition to state claims against.
-/

/-! ## A245633.P5471571988986214980

`A195177(A030945(n+1)+or(2, n))`
-/

namespace A245633.P5471571988986214980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A030945 (n + 1) + (Nat.lor 2 n : ℤ)).toNat

end

end A245633.P5471571988986214980

/-! ## A245633.P1362047165852509923

`A361249(A058307(n)+A011973(n))`
-/

namespace A245633.P1362047165852509923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361249 (A058307 n + A011973 n).toNat

end

end A245633.P1362047165852509923

/-! ## A245633.P18442644310094463284

`A195120(A005578(n)+Δ[A177538(n)])`
-/

namespace A245633.P18442644310094463284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A005578 n + (f1 (n + 1) - f1 n)).toNat

end

end A245633.P18442644310094463284

/-!
# A245636: Number of terms of A245630 <= n.

The programs for A245636, the canonical program `A245636.P7267100534079189298` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245636 has offset 1).

The definition of A245636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245636.P6902633698062405541

`∑[char[A191002(n+1)-1]]`
-/

namespace A245636.P6902633698062405541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191002 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245636.P6902633698062405541

namespace A245636

/-- `∑[char[A191002(n+1)-1]]` -/
def P6902633698062405541.Spec : Prop :=
  ∀ n, (P6902633698062405541.a n : ℤ) = A245636 (n + 1)

end A245636

/-! ## A245636.P17795188744272582366

`∑[char[A245630(n+1)-1]]`
-/

namespace A245636.P17795188744272582366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245630 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245636.P17795188744272582366

namespace A245636

/-- `∑[char[A245630(n+1)-1]]` -/
def P17795188744272582366.Spec : Prop :=
  ∀ n, (P17795188744272582366.a n : ℤ) = A245636 (n + 1)

end A245636

/-! ## A245636.P7267100534079189298

`∑[char[A200746(2*n+1)-1]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A245636

/-- `∑[char[A200746(2*n+1)-1]]` -/
def P7267100534079189298.Spec : Prop :=
  ∀ n, (P7267100534079189298.a n : ℤ) = A245636 (n + 1)

theorem P7267100534079189298.correct : P7267100534079189298.Spec := by
  intro n
  simp only [A245636, Nat.add_sub_cancel]

end A245636

/-! ## A245636.P14171956531488345277

`∑[char[(n+1)*A253885(n)+n]]`
-/

namespace A245636.P14171956531488345277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A253885 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245636.P14171956531488345277

namespace A245636

/-- `∑[char[(n+1)*A253885(n)+n]]` -/
def P14171956531488345277.Spec : Prop :=
  ∀ n, (P14171956531488345277.a n : ℤ) = A245636 (n + 1)

end A245636

/-! ## A245636.P11946087172059037454

`∑[char[(n+1)*A003961(n+1)-1]]`
-/

namespace A245636.P11946087172059037454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003961 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245636.P11946087172059037454

namespace A245636

/-- `∑[char[(n+1)*A003961(n+1)-1]]` -/
def P11946087172059037454.Spec : Prop :=
  ∀ n, (P11946087172059037454.a n : ℤ) = A245636 (n + 1)

end A245636

/-! ## A245636.P7220063303016842954

`∑[A286561(A016885(∑[n]))]`
-/

namespace A245636.P7220063303016842954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286561 (A016885 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245636.P7220063303016842954

namespace A245636

/-- `∑[A286561(A016885(∑[n]))]` -/
def P7220063303016842954.Spec : Prop :=
  ∀ n, P7220063303016842954.a n = A245636 (n + 1)

end A245636

/-!
# A245639: Prime numbers P such that 8*P^2-1 is also prime.

The programs for A245639, the canonical program `A245639.P3877904969913949712` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245639 has offset 1).

The definition of A245639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245639.P3877904969913949712

`p?[A143827(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A245639

/-- `p?[A143827(n+1)]` -/
def P3877904969913949712.Spec : Prop :=
  ∀ n, P3877904969913949712.a n = A245639 (n + 1)

theorem P3877904969913949712.correct : P3877904969913949712.Spec := by
  intro n
  simp only [A245639, Nat.add_sub_cancel]

end A245639

/-! ## A245639.P18130614601360754366

`record[A006530(A143827(n+2))]`
-/

namespace A245639.P18130614601360754366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A143827 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245639.P18130614601360754366

namespace A245639

/-- `record[A006530(A143827(n+2))]` -/
def P18130614601360754366.Spec : Prop :=
  ∀ n, P18130614601360754366.a n = A245639 (n + 1)

end A245639

/-! ## A245639.P14962348776968229531

`∏{d}[p?[A143827(A028310(n))], #]`
-/

namespace A245639.P14962348776968229531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A245639.P14962348776968229531

namespace A245639

/-- `∏{d}[p?[A143827(A028310(n))], #]` -/
def P14962348776968229531.Spec : Prop :=
  ∀ n, (P14962348776968229531.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P15637698854238505815

`filter[A143827(n+1), A010051(#)]`
-/

namespace A245639.P15637698854238505815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A245639.P15637698854238505815

namespace A245639

/-- `filter[A143827(n+1), A010051(#)]` -/
def P15637698854238505815.Spec : Prop :=
  ∀ n, P15637698854238505815.a n = A245639 (n + 1)

end A245639

/-! ## A245639.P8739932859541431306

`∩[A143827(n+1), A042988(n)]`
-/

namespace A245639.P8739932859541431306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P8739932859541431306

namespace A245639

/-- `∩[A143827(n+1), A042988(n)]` -/
def P8739932859541431306.Spec : Prop :=
  ∀ n, (P8739932859541431306.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P15747272258276493090

`∩[A000040(n+1), A143827(n+1)]`
-/

namespace A245639.P15747272258276493090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P15747272258276493090

namespace A245639

/-- `∩[A000040(n+1), A143827(n+1)]` -/
def P15747272258276493090.Spec : Prop :=
  ∀ n, (P15747272258276493090.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P11014771659932662491

`∩[A042966(n+1), A143827(n+1)]`
-/

namespace A245639.P11014771659932662491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P11014771659932662491

namespace A245639

/-- `∩[A042966(n+1), A143827(n+1)]` -/
def P11014771659932662491.Spec : Prop :=
  ∀ n, (P11014771659932662491.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P6989875120542685726

`∩[A042989(n+1), A143827(n+1)]`
-/

namespace A245639.P6989875120542685726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P6989875120542685726

namespace A245639

/-- `∩[A042989(n+1), A143827(n+1)]` -/
def P6989875120542685726.Spec : Prop :=
  ∀ n, (P6989875120542685726.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P12974972229492590944

`∩[A042997(n+1), A143827(n+1)]`
-/

namespace A245639.P12974972229492590944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P12974972229492590944

namespace A245639

/-- `∩[A042997(n+1), A143827(n+1)]` -/
def P12974972229492590944.Spec : Prop :=
  ∀ n, (P12974972229492590944.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P133646954909282804

`∩[A044042(n+1), A143827(n+1)]`
-/

namespace A245639.P133646954909282804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P133646954909282804

namespace A245639

/-- `∩[A044042(n+1), A143827(n+1)]` -/
def P133646954909282804.Spec : Prop :=
  ∀ n, (P133646954909282804.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P3753151857127262997

`∩[A045308(n+1), A143827(n+1)]`
-/

namespace A245639.P3753151857127262997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P3753151857127262997

namespace A245639

/-- `∩[A045308(n+1), A143827(n+1)]` -/
def P3753151857127262997.Spec : Prop :=
  ∀ n, (P3753151857127262997.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P3452136466639825331

`∩[A116974(n+1), A143827(n+1)]`
-/

namespace A245639.P3452136466639825331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P3452136466639825331

namespace A245639

/-- `∩[A116974(n+1), A143827(n+1)]` -/
def P3452136466639825331.Spec : Prop :=
  ∀ n, (P3452136466639825331.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P15653485728887743815

`∩[A143827(n+1), A182986(n+1)]`
-/

namespace A245639.P15653485728887743815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P15653485728887743815

namespace A245639

/-- `∩[A143827(n+1), A182986(n+1)]` -/
def P15653485728887743815.Spec : Prop :=
  ∀ n, (P15653485728887743815.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P15970815234775771634

`∩[A143827(n+1), A186285(n+1)]`
-/

namespace A245639.P15970815234775771634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P15970815234775771634

namespace A245639

/-- `∩[A143827(n+1), A186285(n+1)]` -/
def P15970815234775771634.Spec : Prop :=
  ∀ n, (P15970815234775771634.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P9820440554374227714

`∩[A143827(n+1), A216881(n+1)]`
-/

namespace A245639.P9820440554374227714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P9820440554374227714

namespace A245639

/-- `∩[A143827(n+1), A216881(n+1)]` -/
def P9820440554374227714.Spec : Prop :=
  ∀ n, (P9820440554374227714.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P18062437225036829480

`∩[A143827(n+1), A216882(n+1)]`
-/

namespace A245639.P18062437225036829480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245639.P18062437225036829480

namespace A245639

/-- `∩[A143827(n+1), A216882(n+1)]` -/
def P18062437225036829480.Spec : Prop :=
  ∀ n, (P18062437225036829480.a n : ℤ) = A245639 (n + 1)

end A245639

/-! ## A245639.P9233053174071310146

`p?[A057427(n)*A143827(A028310(n))]`
-/

namespace A245639.P9233053174071310146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A143827 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245639.P9233053174071310146

namespace A245639

/-- `p?[A057427(n)*A143827(A028310(n))]` -/
def P9233053174071310146.Spec : Prop :=
  ∀ n, P9233053174071310146.a n = A245639 (n + 1)

end A245639

/-! ## A245639.P3983165649209041964

`p?[A066049(n+1)-A006530(A066049(n+1))]`
-/

namespace A245639.P3983165649209041964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1) - A006530 (A066049 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245639.P3983165649209041964

namespace A245639

/-- `p?[A066049(n+1)-A006530(A066049(n+1))]` -/
def P3983165649209041964.Spec : Prop :=
  ∀ n, P3983165649209041964.a n = A245639 (n + 1)

end A245639

/-! ## A245639.P7146141462194802796

`filter[A143827(n+2), A080339(#)]`
-/

namespace A245639.P7146141462194802796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A245639.P7146141462194802796

namespace A245639

/-- `filter[A143827(n+2), A080339(#)]` -/
def P7146141462194802796.Spec : Prop :=
  ∀ n, P7146141462194802796.a n = A245639 (n + 1)

end A245639

/-! ## A245639.P2393988086275967093

`p?[A246425(A066049(n+1)-1)]`
-/

namespace A245639.P2393988086275967093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A066049 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245639.P2393988086275967093

namespace A245639

/-- `p?[A246425(A066049(n+1)-1)]` -/
def P2393988086275967093.Spec : Prop :=
  ∀ n, P2393988086275967093.a n = A245639 (n + 1)

end A245639

/-!
# A245640: Prime numbers P such that 24*P^3-1 is also prime.

The programs for A245640, there is no canonical definition to state claims against.
-/

/-! ## A245640.P2581219448719799511

`record[A020639(A239787(n+3)/2)]`
-/

namespace A245640.P2581219448719799511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A239787 (n + 3) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245640.P2581219448719799511

/-! ## A245640.P13875046371889577007

`record[A006530(A239787(n+2))]`
-/

namespace A245640.P13875046371889577007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A239787 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245640.P13875046371889577007

/-! ## A245640.P12551103485276799140

`p?[A302042(A239787(n+1))]`
-/

namespace A245640.P12551103485276799140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A239787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245640.P12551103485276799140

/-! ## A245640.P14879239289538945817

`p?[A246425(A239787(n+1)-1)]`
-/

namespace A245640.P14879239289538945817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A239787 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245640.P14879239289538945817

/-! ## A245640.P10374656042963643046

`record[A014963(A239787(n+3)/2)]`
-/

namespace A245640.P10374656042963643046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A239787 (n + 3) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245640.P10374656042963643046

/-! ## A245640.P5391429538581958668

`record[A014673(A239787(n+3))]`
-/

namespace A245640.P5391429538581958668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A239787 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245640.P5391429538581958668

/-! ## A245640.P420102254179942143

`p?[A004526(A239787(n+1)+1)]`
-/

namespace A245640.P420102254179942143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A239787 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245640.P420102254179942143

/-! ## A245640.P17352294643303912403

`p?[A008619(A239787(n+1)-1)]`
-/

namespace A245640.P17352294643303912403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A239787 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245640.P17352294643303912403

/-! ## A245640.P5400549231669198415

`A007913(p?[A004525(A239787(n+1))])`
-/

namespace A245640.P5400549231669198415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A239787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245640.P5400549231669198415

/-! ## A245640.P17417854719543324032

`p?[A026741(A239787(A000027(n+1)))]`
-/

namespace A245640.P17417854719543324032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A239787 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245640.P17417854719543324032

/-! ## A245640.P17771401653388132675

`A004151(p?[A025480(A239787(n+1))])`
-/

namespace A245640.P17771401653388132675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A239787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245640.P17771401653388132675

/-! ## A245640.P5173858411050981161

`p?[A004525(A239787(n+1))]%A000041(n+7)`
-/

namespace A245640.P5173858411050981161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A239787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000041 (n + 7))

end

end A245640.P5173858411050981161

/-!
# A245641: Prime numbers P such that 8*P^2-1 and 24*P^3-1 are also primes.

The programs for A245641, there is no canonical definition to state claims against.
-/

/-! ## A245641.P7347445814005044251

`∩[A245639(n+1), A245640(n+1)]`
-/

namespace A245641.P7347445814005044251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245641.P7347445814005044251

/-! ## A245641.P8046294967261086884

`∩[A143827(n+1), A245640(n+1)]`
-/

namespace A245641.P8046294967261086884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245641.P8046294967261086884

/-! ## A245641.P7671053798054550930

`∩[A004526(A239787(n+1)), A245639(n+1)]`
-/

namespace A245641.P7671053798054550930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A239787 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245641.P7671053798054550930

/-! ## A245641.P6271455507349194798

`∩[A001281(A239787(n+2)), A245639(n+1)]`
-/

namespace A245641.P6271455507349194798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A239787 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245641.P6271455507349194798

/-!
# A245642: Sum of "number of decompositions of d into ordered sums of two odd primes" over all divisors d of 2*n.

The programs for A245642, there is no canonical definition to state claims against.
-/

/-! ## A245642.P16782836825323319692

`∑{d}[n+1, A002372(#)]`
-/

namespace A245642.P16782836825323319692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002372 d

end

end A245642.P16782836825323319692

/-! ## A245642.P3405518264525455248

`∑{d}[n+1, A035026(#)]-A000035(n)`
-/

namespace A245642.P3405518264525455248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035026 d - A000035 n

end

end A245642.P3405518264525455248

/-! ## A245642.P14025102118827245927

`∑{d}[n+1, A035026(#)]+1-A000034(n)`
-/

namespace A245642.P14025102118827245927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035026 d + (1 - A000034 n)

end

end A245642.P14025102118827245927

/-! ## A245642.P3678413375161688068

`∑{d}[n+1, A035026(#)%(A004396(#)^5)]`
-/

namespace A245642.P3678413375161688068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A035026 d) (A004396 d ^ 5)

end

end A245642.P3678413375161688068

/-! ## A245642.P3179115031541895714

`∑{d}[n+1, A035026(#)]-Δ[A004526(n)]`
-/

namespace A245642.P3179115031541895714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035026 d - (f2 (n + 1) - f2 n)

end

end A245642.P3179115031541895714

/-!
# A245643: Expansion of eta(q)^6 * eta(q^2) / eta(q^4)^2 in powers of q.

The programs for A245643, there is no canonical definition to state claims against.
-/

/-! ## A245643.P7992206518397068883

`A246608(4*n)`
-/

namespace A245643.P7992206518397068883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246608 (4 * n)

end

end A245643.P7992206518397068883

/-! ## A245643.P16765217203654872293

`A246608(A008586(n))%A017558(n)`
-/

namespace A245643.P16765217203654872293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246608 (A008586 n).toNat) (A017558 n)

end

end A245643.P16765217203654872293

/-! ## A245643.P1273935552302676252

`A246608(A008586(n))+A000007(n+1)`
-/

namespace A245643.P1273935552302676252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246608 (A008586 n).toNat + A000007 (n + 1)

end

end A245643.P1273935552302676252

/-! ## A245643.P6425326119543659720

`A246608(A131098(n+1)+1)+A000007(n)`
-/

namespace A245643.P6425326119543659720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246608 (A131098 (n + 1) + 1).toNat + A000007 n

end

end A245643.P6425326119543659720

/-! ## A245643.P12488878490241866835

`A246608(A008586(n))/gcd(2, A000040(n+2))`
-/

namespace A245643.P12488878490241866835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246608 (A008586 n).toNat : ℚ) / (Int.gcd 2 (A000040 (n + 2)) : ℚ)

end

end A245643.P12488878490241866835

/-! ## A245643.P11564465604940844535

`A246608(A008586(n))^A007318(C(2, n+1))`
-/

namespace A245643.P11564465604940844535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246608 (A008586 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n + 1)) : ℤ)

end

end A245643.P11564465604940844535

/-! ## A245643.P11464618940058059820

`A246608(A008586(n))+A001222(gcd(n, n+1))`
-/

namespace A245643.P11464618940058059820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246608 (A008586 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A245643.P11464618940058059820

/-! ## A245643.P12726724638462581176

`A246608(A008586(n))/A007424(A000040(n+1))`
-/

namespace A245643.P12726724638462581176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246608 (A008586 n).toNat : ℚ) / (A007424 (A000040 (n + 1)).toNat : ℚ)

end

end A245643.P12726724638462581176

/-! ## A245643.P4440819213164614935

`A246608(A005843(A005843(n)))%A006094(n+1)`
-/

namespace A245643.P4440819213164614935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246608 (A005843 (A005843 n).toNat).toNat) (A006094 (n + 1))

end

end A245643.P4440819213164614935

/-! ## A245643.P9623527190218226240

`A246608(A008586(n))/A001222(A000353(n+1))`
-/

namespace A245643.P9623527190218226240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246608 (A008586 n).toNat : ℚ) / (A001222 (A000353 (n + 1)).toNat : ℚ)

end

end A245643.P9623527190218226240

/-! ## A245643.P16795991786448383693

`A246608(A008586(n))+A000122(A316787(n+1))`
-/

namespace A245643.P16795991786448383693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246608 (A008586 n).toNat + A000122 (A316787 (n + 1)).toNat

end

end A245643.P16795991786448383693

/-!
# A245644: Numbers n such that n^3 is an arithmetic number.

The programs for A245644, there is no canonical definition to state claims against.
-/

/-! ## A245644.P17618440981589876845

`lt[A119655(A210442(n)), A326441(n)]`
-/

namespace A245644.P17618440981589876845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119655 (A210442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245644.P17618440981589876845

/-! ## A245644.P9154881112469816242

`eq[A001842(A027623(n)), A084680(n+1)]`
-/

namespace A245644.P9154881112469816242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A027623 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245644.P9154881112469816242

/-! ## A245644.P13265735584398254099

`eq[A001842(A027623(n)), A084681(n+1)]`
-/

namespace A245644.P13265735584398254099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A027623 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245644.P13265735584398254099

/-! ## A245644.P2361071962964573995

`eq[A005171(n+1), A030261(A244543(n))]`
-/

namespace A245644.P2361071962964573995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030261 (A244543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245644.P2361071962964573995

/-! ## A245644.P2428275354396820648

`eq[A049084(n+1), A292438(A282460(n))]`
-/

namespace A245644.P2428275354396820648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A282460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245644.P2428275354396820648

/-!
# A245650: Primes in the sequence 12*n - prime(n), (A245071).

The programs for A245650, the canonical program `A245650.P3892271656114421038` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245650 has offset 1).

The definition of A245650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245650.P3892271656114421038

`p?[A245071(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A245650

/-- `p?[A245071(n+1)]` -/
def P3892271656114421038.Spec : Prop :=
  ∀ n, P3892271656114421038.a n = A245650 (n + 1)

theorem P3892271656114421038.correct : P3892271656114421038.Spec := by
  intro n
  simp only [A245650, Nat.add_sub_cancel]

end A245650

/-! ## A245650.P7402333706148641150

`filter[A245071(n+2), A010051(#)]`
-/

namespace A245650.P7402333706148641150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A245650.P7402333706148641150

namespace A245650

/-- `filter[A245071(n+2), A010051(#)]` -/
def P7402333706148641150.Spec : Prop :=
  ∀ n, P7402333706148641150.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P1116836310233714703

`filter[A245071(n+2), A323152(#)]`
-/

namespace A245650.P1116836310233714703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A245650.P1116836310233714703

namespace A245650

/-- `filter[A245071(n+2), A323152(#)]` -/
def P1116836310233714703.Spec : Prop :=
  ∀ n, P1116836310233714703.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P2843366497409573660

`filter[A245071(n+2), A323153(#)]`
-/

namespace A245650.P2843366497409573660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A245650.P2843366497409573660

namespace A245650

/-- `filter[A245071(n+2), A323153(#)]` -/
def P2843366497409573660.Spec : Prop :=
  ∀ n, P2843366497409573660.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P7613586564529029172

`filter[A245071(n+2), A327861(#)]`
-/

namespace A245650.P7613586564529029172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A245650.P7613586564529029172

namespace A245650

/-- `filter[A245071(n+2), A327861(#)]` -/
def P7613586564529029172.Spec : Prop :=
  ∀ n, P7613586564529029172.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P13308746517624403453

`filter[A245071(n+2), A340371(#)]`
-/

namespace A245650.P13308746517624403453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A245650.P13308746517624403453

namespace A245650

/-- `filter[A245071(n+2), A340371(#)]` -/
def P13308746517624403453.Spec : Prop :=
  ∀ n, P13308746517624403453.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P8727540252717298815

`filter[A245071(n+2), A353670(#)]`
-/

namespace A245650.P8727540252717298815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A245650.P8727540252717298815

namespace A245650

/-- `filter[A245071(n+2), A353670(#)]` -/
def P8727540252717298815.Spec : Prop :=
  ∀ n, P8727540252717298815.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P2872282974487006680

`p?[12*(n+1)-A000040(n+1)]`
-/

namespace A245650.P2872282974487006680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) : ℤ) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245650.P2872282974487006680

namespace A245650

/-- `p?[12*(n+1)-A000040(n+1)]` -/
def P2872282974487006680.Spec : Prop :=
  ∀ n, P2872282974487006680.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P14211332907645917726

`filter[A245071(n+1), A380467(#)]`
-/

namespace A245650.P14211332907645917726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A245650.P14211332907645917726

namespace A245650

/-- `filter[A245071(n+1), A380467(#)]` -/
def P14211332907645917726.Spec : Prop :=
  ∀ n, P14211332907645917726.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P10433249595205990841

`p?[A017653(n)-A006093(n+1)]`
-/

namespace A245650.P10433249595205990841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n - A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245650.P10433249595205990841

namespace A245650

/-- `p?[A017653(n)-A006093(n+1)]` -/
def P10433249595205990841.Spec : Prop :=
  ∀ n, P10433249595205990841.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P6407242359920058269

`p?[12*n-A008578(n+1)]`
-/

namespace A245650.P6407242359920058269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245650.P6407242359920058269

namespace A245650

/-- `p?[12*n-A008578(n+1)]` -/
def P6407242359920058269.Spec : Prop :=
  ∀ n, P6407242359920058269.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P16970618585499402088

`p?[12*n-A158611(n+2)]`
-/

namespace A245650.P16970618585499402088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - A158611 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245650.P16970618585499402088

namespace A245650

/-- `p?[12*n-A158611(n+2)]` -/
def P16970618585499402088.Spec : Prop :=
  ∀ n, P16970618585499402088.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P1991339843947656578

`p?[A017653(n)-A068499(n+2)]`
-/

namespace A245650.P1991339843947656578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n - A068499 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245650.P1991339843947656578

namespace A245650

/-- `p?[A017653(n)-A068499(n+2)]` -/
def P1991339843947656578.Spec : Prop :=
  ∀ n, P1991339843947656578.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P13633507684636955329

`p?[A017533(n)-(A008578(n+1)+1)]`
-/

namespace A245650.P13633507684636955329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n - (A008578 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245650.P13633507684636955329

namespace A245650

/-- `p?[A017533(n)-(A008578(n+1)+1)]` -/
def P13633507684636955329.Spec : Prop :=
  ∀ n, P13633507684636955329.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P4734855378788646354

`p?[12*n-record[A006530(n+1)]]`
-/

namespace A245650.P4734855378788646354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245650.P4734855378788646354

namespace A245650

/-- `p?[12*n-record[A006530(n+1)]]` -/
def P4734855378788646354.Spec : Prop :=
  ∀ n, P4734855378788646354.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P9044042112479699501

`filter[A245071(n+1), A080339(#)]`
-/

namespace A245650.P9044042112479699501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A245650.P9044042112479699501

namespace A245650

/-- `filter[A245071(n+1), A080339(#)]` -/
def P9044042112479699501.Spec : Prop :=
  ∀ n, P9044042112479699501.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P12739618373763738889

`filter[A245071(n+1), A080545(#)]`
-/

namespace A245650.P12739618373763738889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A245650.P12739618373763738889

namespace A245650

/-- `filter[A245071(n+1), A080545(#)]` -/
def P12739618373763738889.Spec : Prop :=
  ∀ n, P12739618373763738889.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P11686854928398003767

`filter[A245071(n+1), A171387(#)]`
-/

namespace A245650.P11686854928398003767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A245650.P11686854928398003767

namespace A245650

/-- `filter[A245071(n+1), A171387(#)]` -/
def P11686854928398003767.Spec : Prop :=
  ∀ n, P11686854928398003767.a n = A245650 (n + 1)

end A245650

/-! ## A245650.P171133633465790761

`filter[A245071(n+2), A365605(#)]`
-/

namespace A245650.P171133633465790761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365605 (f1 j).toNat = 1) n)

end

end A245650.P171133633465790761

namespace A245650

/-- `filter[A245071(n+2), A365605(#)]` -/
def P171133633465790761.Spec : Prop :=
  ∀ n, P171133633465790761.a n = A245650 (n + 1)

end A245650

/-!
# A245656: Characteristic function of arithmetic numbers, cf. A003601.

The programs for A245656, the canonical program `A245656.P15725278773398703278` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245656 has offset 1).

The definition of A245656 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054025, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245656.P15725278773398703278

`A000007(A054025(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245656

/-- `A000007(A054025(n+1))` -/
def P15725278773398703278.Spec : Prop :=
  ∀ n, P15725278773398703278.a n = A245656 (n + 1)

theorem P15725278773398703278.correct : P15725278773398703278.Spec := by
  intro n
  simp only [A245656, Nat.add_sub_cancel]

end A245656

/-! ## A245656.P4182036000847426236

`floor(1/A057021(n+1))`
-/

namespace A245656.P4182036000847426236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A057021 (n + 1) : ℚ)⌋

end

end A245656.P4182036000847426236

namespace A245656

/-- `floor(1/A057021(n+1))` -/
def P4182036000847426236.Spec : Prop :=
  ∀ n, P4182036000847426236.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P2765696851267291296

`floor(1/A176801(n+1))`
-/

namespace A245656.P2765696851267291296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A176801 (n + 1) : ℚ)⌋

end

end A245656.P2765696851267291296

namespace A245656

/-- `floor(1/A176801(n+1))` -/
def P2765696851267291296.Spec : Prop :=
  ∀ n, P2765696851267291296.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P9585711183562593764

`char[A003601(n+1)-1]`
-/

namespace A245656.P9585711183562593764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A245656.P9585711183562593764

namespace A245656

/-- `char[A003601(n+1)-1]` -/
def P9585711183562593764.Spec : Prop :=
  ∀ n, (P9585711183562593764.a n : ℤ) = A245656 (n + 1)

end A245656

/-! ## A245656.P4742732926237338513

`char[lt[0, A286628(n+1)]]`
-/

namespace A245656.P4742732926237338513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286628 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A245656.P4742732926237338513

namespace A245656

/-- `char[lt[0, A286628(n+1)]]` -/
def P4742732926237338513.Spec : Prop :=
  ∀ n, (P4742732926237338513.a n : ℤ) = A245656 (n + 1)

end A245656

/-! ## A245656.P11188278425673374440

`1-char[A049642(n+1)-1]`
-/

namespace A245656.P11188278425673374440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245656.P11188278425673374440

namespace A245656

/-- `1-char[A049642(n+1)-1]` -/
def P11188278425673374440.Spec : Prop :=
  ∀ n, P11188278425673374440.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P8090912824230244278

`A004530(A176801(n+1))`
-/

namespace A245656.P8090912824230244278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A176801 (n + 1)).toNat

end

end A245656.P8090912824230244278

namespace A245656

/-- `A004530(A176801(n+1))` -/
def P8090912824230244278.Spec : Prop :=
  ∀ n, P8090912824230244278.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P1898059532385509612

`A060576(A286628(n+1)+1)`
-/

namespace A245656.P1898059532385509612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A286628 (n + 1) + 1).toNat

end

end A245656.P1898059532385509612

namespace A245656

/-- `A060576(A286628(n+1)+1)` -/
def P1898059532385509612.Spec : Prop :=
  ∀ n, P1898059532385509612.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P6824880805844891588

`A000007(A057021(n+1)-1)`
-/

namespace A245656.P6824880805844891588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A057021 (n + 1) - 1).toNat

end

end A245656.P6824880805844891588

namespace A245656

/-- `A000007(A057021(n+1)-1)` -/
def P6824880805844891588.Spec : Prop :=
  ∀ n, P6824880805844891588.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P7469882676331083200

`A000007(A176801(n+1)-1)`
-/

namespace A245656.P7469882676331083200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A176801 (n + 1) - 1).toNat

end

end A245656.P7469882676331083200

namespace A245656

/-- `A000007(A176801(n+1)-1)` -/
def P7469882676331083200.Spec : Prop :=
  ∀ n, P7469882676331083200.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P8255898545475599789

`1-A057427(A054025(n+1)²)`
-/

namespace A245656.P8255898545475599789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 (A054025 (n + 1) ^ 2).toNat

end

end A245656.P8255898545475599789

namespace A245656

/-- `1-A057427(A054025(n+1)²)` -/
def P8255898545475599789.Spec : Prop :=
  ∀ n, P8255898545475599789.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P12750902822767681030

`A130706(A057021(n+1)²-1)`
-/

namespace A245656.P12750902822767681030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A057021 (n + 1) ^ 2 - 1).toNat

end

end A245656.P12750902822767681030

namespace A245656

/-- `A130706(A057021(n+1)²-1)` -/
def P12750902822767681030.Spec : Prop :=
  ∀ n, P12750902822767681030.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P9031122557305023717

`∏{d}[A054025(n+1), A054025(#)]²`
-/

namespace A245656.P9031122557305023717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A054025 d) ^ 2

end

end A245656.P9031122557305023717

namespace A245656

/-- `∏{d}[A054025(n+1), A054025(#)]²` -/
def P9031122557305023717.Spec : Prop :=
  ∀ n, P9031122557305023717.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P7802090828057386568

`1-A178334(A057021(n+1)-1)`
-/

namespace A245656.P7802090828057386568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178334 (A057021 (n + 1) - 1).toNat

end

end A245656.P7802090828057386568

namespace A245656

/-- `1-A178334(A057021(n+1)-1)` -/
def P7802090828057386568.Spec : Prop :=
  ∀ n, P7802090828057386568.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P12043747211941614089

`1-A057427(2*A054025(n+1))`
-/

namespace A245656.P12043747211941614089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 (2 * A054025 (n + 1)).toNat

end

end A245656.P12043747211941614089

namespace A245656

/-- `1-A057427(2*A054025(n+1))` -/
def P12043747211941614089.Spec : Prop :=
  ∀ n, P12043747211941614089.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P3766224025073161126

`C(A009205(n+1), A000005(n+1))`
-/

namespace A245656.P3766224025073161126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A009205 (n + 1)).toNat (A000005 (n + 1)).toNat

end

end A245656.P3766224025073161126

namespace A245656

/-- `C(A009205(n+1), A000005(n+1))` -/
def P3766224025073161126.Spec : Prop :=
  ∀ n, (P3766224025073161126.a n : ℤ) = A245656 (n + 1)

end A245656

/-! ## A245656.P2478084476141734752

`C(A000203(n+1), A009278(n+1))`
-/

namespace A245656.P2478084476141734752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A009278 (n + 1)).toNat

end

end A245656.P2478084476141734752

namespace A245656

/-- `C(A000203(n+1), A009278(n+1))` -/
def P2478084476141734752.Spec : Prop :=
  ∀ n, (P2478084476141734752.a n : ℤ) = A245656 (n + 1)

end A245656

/-! ## A245656.P17470073357208364520

`C(A057022(n+1), A057020(n+1))`
-/

namespace A245656.P17470073357208364520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057022 (n + 1)).toNat (A057020 (n + 1)).toNat

end

end A245656.P17470073357208364520

namespace A245656

/-- `C(A057022(n+1), A057020(n+1))` -/
def P17470073357208364520.Spec : Prop :=
  ∀ n, (P17470073357208364520.a n : ℤ) = A245656 (n + 1)

end A245656

/-! ## A245656.P10254718042097231012

`∑{d}[n+1, A008683(#)*A338170((n+1)/#)]`
-/

namespace A245656.P10254718042097231012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A338170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245656.P10254718042097231012

namespace A245656

/-- `∑{d}[n+1, A008683(#)*A338170((n+1)/#)]` -/
def P10254718042097231012.Spec : Prop :=
  ∀ n, P10254718042097231012.a n = A245656 (n + 1)

end A245656

/-! ## A245656.P14820537849409530289

`A286628(n+1)/(A286628(n+1)+A054025(n+1))`
-/

namespace A245656.P14820537849409530289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286628 (n + 1) : ℚ) / (A286628 (n + 1) + A054025 (n + 1) : ℚ)

end

end A245656.P14820537849409530289

namespace A245656

/-- `A286628(n+1)/(A286628(n+1)+A054025(n+1))` -/
def P14820537849409530289.Spec : Prop :=
  ∀ n, P14820537849409530289.a n = (A245656 (n + 1) : ℚ)

end A245656

/-!
# A245660: Number of unitary polyominoes without holes with n cells. A unitary polyomino is a polyomino whose edges all have length 1.

The programs for A245660, there is no canonical definition to state claims against.
-/

/-! ## A245660.P14906332944579018816

`A025459(A154924(n+1)+A154879(n))`
-/

namespace A245660.P14906332944579018816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A154924 (n + 1) + A154879 n).toNat

end

end A245660.P14906332944579018816

/-! ## A245660.P14604072939781927105

`A332286(n)+A238469(A161816(n+1))`
-/

namespace A245660.P14604072939781927105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332286 n + A238469 (A161816 (n + 1)).toNat

end

end A245660.P14604072939781927105

/-! ## A245660.P17188402481938699954

`A341021(xor(A112609(2*n+3), A182805(n)))`
-/

namespace A245660.P17188402481938699954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341021 ((Int.xor (A112609 (2 * n + 3)) (A182805 n)).toNat + 20)

end

end A245660.P17188402481938699954

/-! ## A245660.P14573328838477994387

`A341026(or(∑[n], A064065(n)))`
-/

namespace A245660.P14573328838477994387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341026 ((Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A064065 n)).toNat + 165)

end

end A245660.P14573328838477994387

/-!
# A245661: Number of p*pp-divisors of n where a p*pp-number is the product of a prime and perfect power (see A245303).

The programs for A245661, the canonical program `A245661.P795932976609463289` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245661 has offset 1).

The definition of A245661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245661.P795932976609463289

`A085082(n+1)-A007424(A112622(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A245661

/-- `A085082(n+1)-A007424(A112622(n+1))` -/
def P795932976609463289.Spec : Prop :=
  ∀ n, P795932976609463289.a n = A245661 (n + 1)

theorem P795932976609463289.correct : P795932976609463289.Spec := by
  intro n
  simp only [A245661, Nat.add_sub_cancel]

end A245661

/-! ## A245661.P11562996129282055096

`A085082(n+1)-A040001(A294875(n+1))`
-/

namespace A245661.P11562996129282055096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (n + 1) - A040001 (A294875 (n + 1)).toNat

end

end A245661.P11562996129282055096

namespace A245661

/-- `A085082(n+1)-A040001(A294875(n+1))` -/
def P11562996129282055096.Spec : Prop :=
  ∀ n, P11562996129282055096.a n = A245661 (n + 1)

end A245661

/-! ## A245661.P17782656588764861208

`A085082(n+1)-A040001(A069626(n+1))`
-/

namespace A245661.P17782656588764861208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (n + 1) - A040001 (A069626 (n + 1)).toNat

end

end A245661.P17782656588764861208

namespace A245661

/-- `A085082(n+1)-A040001(A069626(n+1))` -/
def P17782656588764861208.Spec : Prop :=
  ∀ n, P17782656588764861208.a n = A245661 (n + 1)

end A245661

/-! ## A245661.P16336895970456665745

`A262095(n+1)-A318809(A046523(n+1))`
-/

namespace A245661.P16336895970456665745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262095 (n + 1) - A318809 (A046523 (n + 1)).toNat

end

end A245661.P16336895970456665745

namespace A245661

/-- `A262095(n+1)-A318809(A046523(n+1))` -/
def P16336895970456665745.Spec : Prop :=
  ∀ n, P16336895970456665745.a n = A245661 (n + 1)

end A245661

/-! ## A245661.P7696735903563475768

`A262095(n+1)-A318809(n+1)`
-/

namespace A245661.P7696735903563475768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262095 (n + 1) - A318809 (n + 1)

end

end A245661.P7696735903563475768

namespace A245661

/-- `A262095(n+1)-A318809(n+1)` -/
def P7696735903563475768.Spec : Prop :=
  ∀ n, P7696735903563475768.a n = A245661 (n + 1)

end A245661

/-! ## A245661.P3332438772901423078

`A335516(n+1)-A006530(A212173(n+1))`
-/

namespace A245661.P3332438772901423078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335516 (n + 1) - A006530 (A212173 (n + 1)).toNat

end

end A245661.P3332438772901423078

namespace A245661

/-- `A335516(n+1)-A006530(A212173(n+1))` -/
def P3332438772901423078.Spec : Prop :=
  ∀ n, P3332438772901423078.a n = A245661 (n + 1)

end A245661

/-! ## A245661.P7501768386764964675

`A335516(n+1)-A006530(A292589(n+1))`
-/

namespace A245661.P7501768386764964675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335516 (n + 1) - A006530 (A292589 (n + 1)).toNat

end

end A245661.P7501768386764964675

namespace A245661

/-- `A335516(n+1)-A006530(A292589(n+1))` -/
def P7501768386764964675.Spec : Prop :=
  ∀ n, P7501768386764964675.a n = A245661 (n + 1)

end A245661

/-!
# A245665: Number of permutations of length n with longest increasing subsequence of length 9.

The programs for A245665, there is no canonical definition to state claims against.
-/

/-! ## A245665.P9554788724025180632

`A126065(A155212(n+5))`
-/

namespace A245665.P9554788724025180632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A155212 (n + 5)).toNat

end

end A245665.P9554788724025180632

/-! ## A245665.P1810278899008807928

`A126065(eq[6, A219347(n)])`
-/

namespace A245665.P1810278899008807928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245665.P1810278899008807928

/-! ## A245665.P10398474467804706376

`A126065(eq[8, A193592(n)])`
-/

namespace A245665.P10398474467804706376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245665.P10398474467804706376

/-! ## A245665.P11609240088273143373

`A047874(eq[10, A131818(n+1)])`
-/

namespace A245665.P11609240088273143373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245665.P11609240088273143373

/-! ## A245665.P10483573442192423376

`A047874(eq[10, A135223(n+1)])`
-/

namespace A245665.P10483573442192423376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245665.P10483573442192423376

/-!
# A245666: Number of permutations of length n with longest increasing subsequence of length 10.

The programs for A245666, there is no canonical definition to state claims against.
-/

/-! ## A245666.P17622131274198101163

`A126065(eq[8, A219347(n)])`
-/

namespace A245666.P17622131274198101163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245666.P17622131274198101163

/-! ## A245666.P12664699375146173255

`A126065(eq[9, A193592(n)])`
-/

namespace A245666.P12664699375146173255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245666.P12664699375146173255

/-! ## A245666.P16404648997139352631

`A047874(eq[10, A130270(n+1)])`
-/

namespace A245666.P16404648997139352631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245666.P16404648997139352631

/-! ## A245666.P12099619801772586013

`A047874(eq[11, A131818(n+1)])`
-/

namespace A245666.P12099619801772586013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245666.P12099619801772586013

/-! ## A245666.P2841007532495282699

`A126065(eq[16, A185782(n+1)])`
-/

namespace A245666.P2841007532495282699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245666.P2841007532495282699

/-!
# A245667: Number T(n,k) of sequences in {1,...,n}^n with longest increasing subsequence of length k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A245667, there is no canonical definition to state claims against.
-/

/-! ## A245667.P5839497024164955725

`A089857(A092392(n)*A269945(n))`
-/

namespace A245667.P5839497024164955725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089857 (A092392 n * A269945 n).toNat

end

end A245667.P5839497024164955725

/-! ## A245667.P17156987782749075185

`A037213(A092392(n)^A059268(n))`
-/

namespace A245667.P17156987782749075185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (SequenceMachineLib.roundAway ((A092392 n : ℚ) ^ (A059268 n : ℤ))).toNat

end

end A245667.P17156987782749075185

/-! ## A245667.P5024708409574293607

`A089857(lcm(A092392(n), A269945(n)))`
-/

namespace A245667.P5024708409574293607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089857 (Int.lcm (A092392 n) (A269945 n))

end

end A245667.P5024708409574293607

/-!
# A245669: Expansion of q * f(q, q^5)^3 in powers of q where f() is Ramanujan's two-variable theta function.

The programs for A245669, there is no canonical definition to state claims against.
-/

/-! ## A245669.P5246442668743258891

`A005885(A073675(n+1)-1)`
-/

namespace A245669.P5246442668743258891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 (A073675 (n + 1) - 1).toNat

end

end A245669.P5246442668743258891

/-! ## A245669.P1619884514267355179

`A005885(A005408(n)%A073675(n+1))`
-/

namespace A245669.P1619884514267355179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 (Int.tmod (A005408 n) (A073675 (n + 1))).toNat

end

end A245669.P1619884514267355179

/-! ## A245669.P5710121245038011679

`A005885(Δ[n²])`
-/

namespace A245669.P5710121245038011679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A245669.P5710121245038011679

/-! ## A245669.P9093131079829285002

`A005885(2*n+1)%(n+3)`
-/

namespace A245669.P9093131079829285002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005885 (2 * n + 1)) (n + 3 : ℤ)

end

end A245669.P9093131079829285002

/-! ## A245669.P10633292114975957311

`filter[A005885(2*n+1), A093719(#)]`
-/

namespace A245669.P10633292114975957311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A245669.P10633292114975957311

/-! ## A245669.P9318768136812250435

`filter[A005885(2*n+1), A267579(#)]`
-/

namespace A245669.P9318768136812250435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A245669.P9318768136812250435

/-! ## A245669.P9729259706056858826

`or(A000007(n), A005885(A005408(n)))`
-/

namespace A245669.P9729259706056858826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A005885 (A005408 n).toNat)

end

end A245669.P9729259706056858826

/-! ## A245669.P10409603674734938743

`A005885(A005408(n))+A000007(n+1)`
-/

namespace A245669.P10409603674734938743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 (A005408 n).toNat + A000007 (n + 1)

end

end A245669.P10409603674734938743

/-! ## A245669.P14439494898793235567

`A005885(A060747(n+1))^A001222(A117837(n+1))`
-/

namespace A245669.P14439494898793235567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005885 (A060747 (n + 1)).toNat : ℚ) ^ (A001222 (A117837 (n + 1)).toNat : ℤ)

end

end A245669.P14439494898793235567

/-! ## A245669.P1308169570743002202

`A005885(A060747(n+1))/A001222(A117837(n+2))`
-/

namespace A245669.P1308169570743002202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005885 (A060747 (n + 1)).toNat : ℚ) / (A001222 (A117837 (n + 2)).toNat : ℚ)

end

end A245669.P1308169570743002202

/-!
# A245674: Prime numbers P such that 8*P^2-1 and 8*(8*P^2-1)^2-1 are also prime numbers.

The programs for A245674, there is no canonical definition to state claims against.
-/

/-! ## A245674.P468782976264956168

`p?[∑[A337769(A276932(n))]]`
-/

namespace A245674.P468782976264956168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A276932 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245674.P468782976264956168

/-!
# A245676: Number of convex polyaboloes (or convex polytans): number of distinct convex shapes that can be formed with n congruent isosceles right triangles. Reflections are not counted as different.

The programs for A245676, there is no canonical definition to state claims against.
-/

/-! ## A245676.P15141191121641655777

`A093709(n+1)+A292146(n+1)+A292147(n+1)+A292148(n+1)+A292149(n+1)+A292150(n+1)`
-/

namespace A245676.P15141191121641655777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (n + 1) + A292146 (n + 1) + A292147 (n + 1) + A292148 (n + 1) + A292149 (n + 1) + A292150 (n + 1)

end

end A245676.P15141191121641655777

/-!
# A245678: Denominator of sum of fractions A182972(k) / A182973(k) such that A182972(k) + A182973(k) = n.

The programs for A245678, there is no canonical definition to state claims against.
-/

/-! ## A245678.P9529721510095432938

`A124444(A077168(n)+2)`
-/

namespace A245678.P9529721510095432938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124444 (A077168 n + 2).toNat

end

end A245678.P9529721510095432938

/-! ## A245678.P9425330556075816588

`A000027(A124444(n+3))`
-/

namespace A245678.P9425330556075816588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A124444 (n + 3)).toNat

end

end A245678.P9425330556075816588

/-! ## A245678.P4096171269847197348

`A124444(A043320(n+2)+1)`
-/

namespace A245678.P4096171269847197348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124444 (A043320 (n + 2) + 1).toNat

end

end A245678.P4096171269847197348

/-! ## A245678.P797269341653669316

`A124444(A044916(n+1)+2)`
-/

namespace A245678.P797269341653669316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124444 (A044916 (n + 1) + 2).toNat

end

end A245678.P797269341653669316

/-! ## A245678.P9716181188476574213

`A124444(A161952(n+1)+2)`
-/

namespace A245678.P9716181188476574213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124444 (A161952 (n + 1) + 2).toNat

end

end A245678.P9716181188476574213

/-!
# A245679: a(n) = pg(n, 3) + pg(n, 4) + ... + pg(n, n) where pg(n, m) is the m-th n-th-order polygonal number.

The programs for A245679, the canonical program `A245679.P15014101552485976953` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245679 has offset 0).

The definition of A245679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245679.P15014101552485976953

`C(n, n²)-1+A006325(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245679

/-- `C(n, n²)-1+A006325(n)` -/
def P15014101552485976953.Spec : Prop :=
  ∀ n, P15014101552485976953.a n = A245679 n

theorem P15014101552485976953.correct : P15014101552485976953.Spec := by
  intro n
  simp only [A245679]

end A245679

/-! ## A245679.P2613031100474469338

`A006325(n)-A157928(n)`
-/

namespace A245679.P2613031100474469338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n - A157928 n

end

end A245679.P2613031100474469338

namespace A245679

/-- `A006325(n)-A157928(n)` -/
def P2613031100474469338.Spec : Prop :=
  ∀ n, P2613031100474469338.a n = A245679 n

end A245679

/-! ## A245679.P2231433500947980500

`A006325(A289207(n)+2)-1`
-/

namespace A245679.P2231433500947980500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (A289207 n + 2).toNat - 1

end

end A245679.P2231433500947980500

namespace A245679

/-- `A006325(A289207(n)+2)-1` -/
def P2231433500947980500.Spec : Prop :=
  ∀ n, P2231433500947980500.a n = A245679 n

end A245679

/-! ## A245679.P2414391547699119727

`A006484(n)-A184985(n+1)`
-/

namespace A245679.P2414391547699119727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n - A184985 (n + 1)

end

end A245679.P2414391547699119727

namespace A245679

/-- `A006484(n)-A184985(n+1)` -/
def P2414391547699119727.Spec : Prop :=
  ∀ n, P2414391547699119727.a n = A245679 n

end A245679

/-! ## A245679.P12751773361012928282

`A206958(C(3, n+1)!)+A006325(n)`
-/

namespace A245679.P12751773361012928282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206958 (Nat.factorial (Nat.choose 3 (n + 1))) + A006325 n

end

end A245679.P12751773361012928282

namespace A245679

/-- `A206958(C(3, n+1)!)+A006325(n)` -/
def P12751773361012928282.Spec : Prop :=
  ∀ n, P12751773361012928282.a n = A245679 n

end A245679

/-! ## A245679.P2116763743788243110

`A006325(n)-A002415(n-A289207(n))`
-/

namespace A245679.P2116763743788243110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n - A002415 ((n : ℤ) - A289207 n).toNat

end

end A245679.P2116763743788243110

namespace A245679

/-- `A006325(n)-A002415(n-A289207(n))` -/
def P2116763743788243110.Spec : Prop :=
  ∀ n, P2116763743788243110.a n = A245679 n

end A245679

/-! ## A245679.P516908717517865004

`A006325(n)-A006325(n-A289207(n))`
-/

namespace A245679.P516908717517865004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n - A006325 ((n : ℤ) - A289207 n).toNat

end

end A245679.P516908717517865004

namespace A245679

/-- `A006325(n)-A006325(n-A289207(n))` -/
def P516908717517865004.Spec : Prop :=
  ∀ n, P516908717517865004.a n = A245679 n

end A245679

/-! ## A245679.P8273010632425342164

`A006325(n)-A206958(A000096(C(3, n+1)))`
-/

namespace A245679.P8273010632425342164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n - A206958 (A000096 (Nat.choose 3 (n + 1))).toNat

end

end A245679.P8273010632425342164

namespace A245679

/-- `A006325(n)-A206958(A000096(C(3, n+1)))` -/
def P8273010632425342164.Spec : Prop :=
  ∀ n, P8273010632425342164.a n = A245679 n

end A245679

/-! ## A245679.P9380367104108089512

`A006325(n)-A158821(C(8, A023201(n+1)))`
-/

namespace A245679.P9380367104108089512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n - A158821 (Nat.choose 8 (A023201 (n + 1)).toNat)

end

end A245679.P9380367104108089512

namespace A245679

/-- `A006325(n)-A158821(C(8, A023201(n+1)))` -/
def P9380367104108089512.Spec : Prop :=
  ∀ n, P9380367104108089512.a n = A245679 n

end A245679

/-! ## A245679.P9030507113761167241

`A006325(n)-A206958(C(8, A023201(n+1)))`
-/

namespace A245679.P9030507113761167241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n - A206958 (Nat.choose 8 (A023201 (n + 1)).toNat)

end

end A245679.P9030507113761167241

namespace A245679

/-- `A006325(n)-A206958(C(8, A023201(n+1)))` -/
def P9030507113761167241.Spec : Prop :=
  ∀ n, P9030507113761167241.a n = A245679 n

end A245679

/-! ## A245679.P271401795196578901

`A114188(A000124(n)+1)-1`
-/

namespace A245679.P271401795196578901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (A000124 n + 1).toNat - 1

end

end A245679.P271401795196578901

namespace A245679

/-- `A114188(A000124(n)+1)-1` -/
def P271401795196578901.Spec : Prop :=
  ∀ n, P271401795196578901.a n = A245679 n

end A245679

/-! ## A245679.P8804907611769208614

`A301654(A103505(n))`
-/

namespace A245679.P8804907611769208614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301654 (A103505 n).toNat

end

end A245679.P8804907611769208614

namespace A245679

/-- `A301654(A103505(n))` -/
def P8804907611769208614.Spec : Prop :=
  ∀ n, P8804907611769208614.a n = A245679 n

end A245679

/-!
# A245685: Sigma(2p)/2, for odd primes p.

The programs for A245685, the canonical program `A245685.P1437960620465361428` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245685 has offset 1).

The definition of A245685 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247159, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245685.P1437960620465361428

`A247159(n+2)/2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A245685

/-- `A247159(n+2)/2` -/
def P1437960620465361428.Spec : Prop :=
  ∀ n, P1437960620465361428.a n = (A245685 (n + 1) : ℚ)

end A245685

/-! ## A245685.P5739140242766178712

`3*ceil(p?[2*n+1]/2)`
-/

namespace A245685.P5739140242766178712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉

end

end A245685.P5739140242766178712

namespace A245685

/-- `3*ceil(p?[2*n+1]/2)` -/
def P5739140242766178712.Spec : Prop :=
  ∀ n, P5739140242766178712.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P13324522492317150353

`3*round(p?[2*n+1]/2)`
-/

namespace A245685.P13324522492317150353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2)

end

end A245685.P13324522492317150353

namespace A245685

/-- `3*round(p?[2*n+1]/2)` -/
def P13324522492317150353.Spec : Prop :=
  ∀ n, P13324522492317150353.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P11266769731299704399

`(p?[2*n+1]+1)*3/2`
-/

namespace A245685.P11266769731299704399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) * ((3 : ℚ) / 2)

end

end A245685.P11266769731299704399

namespace A245685

/-- `(p?[2*n+1]+1)*3/2` -/
def P11266769731299704399.Spec : Prop :=
  ∀ n, P11266769731299704399.a n = (A245685 (n + 1) : ℚ)

end A245685

/-! ## A245685.P10889940367191652858

`A168565(n+2)+2`
-/

namespace A245685.P10889940367191652858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2) + 2

end

end A245685.P10889940367191652858

namespace A245685

/-- `A168565(n+2)+2` -/
def P10889940367191652858.Spec : Prop :=
  ∀ n, P10889940367191652858.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P4988613431168924813

`A179893(n+2)+3`
-/

namespace A245685.P4988613431168924813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179893 (n + 2) + 3

end

end A245685.P4988613431168924813

namespace A245685

/-- `A179893(n+2)+3` -/
def P4988613431168924813.Spec : Prop :=
  ∀ n, P4988613431168924813.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P1264509145552233726

`3*A006254(n+1)`
-/

namespace A245685.P1264509145552233726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006254 (n + 1)

end

end A245685.P1264509145552233726

namespace A245685

/-- `3*A006254(n+1)` -/
def P1264509145552233726.Spec : Prop :=
  ∀ n, P1264509145552233726.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P3197623148781522992

`3*(A005097(n+1)+1)`
-/

namespace A245685.P3197623148781522992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A005097 (n + 1) + 1)

end

end A245685.P3197623148781522992

namespace A245685

/-- `3*(A005097(n+1)+1)` -/
def P3197623148781522992.Spec : Prop :=
  ∀ n, P3197623148781522992.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P17166002056153327915

`3*(A067076(n+1)+2)`
-/

namespace A245685.P17166002056153327915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A067076 (n + 1) + 2)

end

end A245685.P17166002056153327915

namespace A245685

/-- `3*(A067076(n+1)+2)` -/
def P17166002056153327915.Spec : Prop :=
  ∀ n, P17166002056153327915.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P12779160514058108099

`3*(A098090(n+1)-1)`
-/

namespace A245685.P12779160514058108099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A098090 (n + 1) - 1)

end

end A245685.P12779160514058108099

namespace A245685

/-- `3*(A098090(n+1)-1)` -/
def P12779160514058108099.Spec : Prop :=
  ∀ n, P12779160514058108099.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P10755395084676102224

`3*(A089253(n+1)-2)`
-/

namespace A245685.P10755395084676102224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A089253 (n + 1) - 2)

end

end A245685.P10755395084676102224

namespace A245685

/-- `3*(A089253(n+1)-2)` -/
def P10755395084676102224.Spec : Prop :=
  ∀ n, P10755395084676102224.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P17091735826091079293

`3*(A089192(n+1)-3)`
-/

namespace A245685.P17091735826091079293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A089192 (n + 1) - 3)

end

end A245685.P17091735826091079293

namespace A245685

/-- `3*(A089192(n+1)-3)` -/
def P17091735826091079293.Spec : Prop :=
  ∀ n, P17091735826091079293.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P2675813062725081120

`3*(A097069(n+1)-4)`
-/

namespace A245685.P2675813062725081120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A097069 (n + 1) - 4)

end

end A245685.P2675813062725081120

namespace A245685

/-- `3*(A097069(n+1)-4)` -/
def P2675813062725081120.Spec : Prop :=
  ∀ n, P2675813062725081120.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P135223412188540192

`3*(A097338(n+1)-5)`
-/

namespace A245685.P135223412188540192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A097338 (n + 1) - 5)

end

end A245685.P135223412188540192

namespace A245685

/-- `3*(A097338(n+1)-5)` -/
def P135223412188540192.Spec : Prop :=
  ∀ n, P135223412188540192.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P6492236045638300209

`3*(A163057(n+1)-n)`
-/

namespace A245685.P6492236045638300209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A163057 (n + 1) - (n : ℤ))

end

end A245685.P6492236045638300209

namespace A245685

/-- `3*(A163057(n+1)-n)` -/
def P6492236045638300209.Spec : Prop :=
  ∀ n, P6492236045638300209.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P12923530996159822789

`A048974(n+1)+A005097(n+1)`
-/

namespace A245685.P12923530996159822789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) + A005097 (n + 1)

end

end A245685.P12923530996159822789

namespace A245685

/-- `A048974(n+1)+A005097(n+1)` -/
def P12923530996159822789.Spec : Prop :=
  ∀ n, P12923530996159822789.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P1198325058748232342

`A098090(n+1)+A065091(n+1)`
-/

namespace A245685.P1198325058748232342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + A065091 (n + 1)

end

end A245685.P1198325058748232342

namespace A245685

/-- `A098090(n+1)+A065091(n+1)` -/
def P1198325058748232342.Spec : Prop :=
  ∀ n, P1198325058748232342.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P8411178306280237573

`A118538(n+1)+A097480(n+1)`
-/

namespace A245685.P8411178306280237573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1) + A097480 (n + 1)

end

end A245685.P8411178306280237573

namespace A245685

/-- `A118538(n+1)+A097480(n+1)` -/
def P8411178306280237573.Spec : Prop :=
  ∀ n, P8411178306280237573.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P12966280997069326559

`A154115(n+1)+A097069(n+1)`
-/

namespace A245685.P12966280997069326559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) + A097069 (n + 1)

end

end A245685.P12966280997069326559

namespace A245685

/-- `A154115(n+1)+A097069(n+1)` -/
def P12966280997069326559.Spec : Prop :=
  ∀ n, P12966280997069326559.a n = A245685 (n + 1)

end A245685

/-! ## A245685.P17076304070753887132

`A298252(n+1)+A067076(n+1)`
-/

namespace A245685.P17076304070753887132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1) + A067076 (n + 1)

end

end A245685.P17076304070753887132

namespace A245685

/-- `A298252(n+1)+A067076(n+1)` -/
def P17076304070753887132.Spec : Prop :=
  ∀ n, P17076304070753887132.a n = A245685 (n + 1)

end A245685

/-!
# A245689: Smallest divisor of n that is greater than the smallest prime not dividing n (A053669(n)).

The programs for A245689, there is no canonical definition to state claims against.
-/

/-! ## A245689.P16224043587759765169

`lcm(A126800(n+3), A307428(A093514(n+1)))`
-/

namespace A245689.P16224043587759765169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A126800 (n + 3)) (A307428 (A093514 (n + 1)).toNat)

end

end A245689.P16224043587759765169

/-! ## A245689.P16832427410759136458

`∏{e}[A127772(n+1), A127772(#)]*A126800(n+3)`
-/

namespace A245689.P16832427410759136458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A127772 (Nat.factorization (f1 n).natAbs p)) * A126800 (n + 3)

end

end A245689.P16832427410759136458

/-! ## A245689.P7392925882784682417

`A126800((n+3)*A326698(n+3))`
-/

namespace A245689.P7392925882784682417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126800 ((n + 3 : ℤ) * A326698 (n + 3)).toNat

end

end A245689.P7392925882784682417

/-!
# A245690: a(n) = A245689(n) mod A053669(n).

The programs for A245690, there is no canonical definition to state claims against.
-/

/-! ## A245690.P4818544379880860352

`A245689(n+3)%A053669(n+3)`
-/

namespace A245690.P4818544379880860352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245689 (n + 3)) (A053669 (n + 3))

end

end A245690.P4818544379880860352

/-! ## A245690.P3999542338044356220

`A046951(gcd(A014681(n+4), A257805(n)))`
-/

namespace A245690.P3999542338044356220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (Int.gcd (A014681 (n + 4)) (A257805 n))

end

end A245690.P3999542338044356220

/-! ## A245690.P5824711061195178336

`A091090(n^((n+1)%A091090(n)))`
-/

namespace A245690.P5824711061195178336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (n + 1 : ℤ) (A091090 n) : ℤ))).toNat

end

end A245690.P5824711061195178336

/-! ## A245690.P1600881609040335881

`A347045(gcd(A186029(n), A362609(n+4)))`
-/

namespace A245690.P1600881609040335881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347045 (Int.gcd (A186029 n) (A362609 (n + 4)))

end

end A245690.P1600881609040335881

/-! ## A245690.P2221742497355129264

`val(xor(1, n+1)*A181615(2*(n+2))+1, 2)+1`
-/

namespace A245690.P2221742497355129264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.xor 1 (n + 1) : ℤ) * A181615 (2 * (n + 2)) + 1).toNat 2 + 1

end

end A245690.P2221742497355129264

/-!
# A245693: Number T(n,k) of permutations on [n] that are self-inverse on [k] but not on [k+1]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A245693, there is no canonical definition to state claims against.
-/

/-! ## A245693.P7933956759878119274

`and(A032555(n+1), A048766(A341539(n+2)))`
-/

namespace A245693.P7933956759878119274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032555 (n + 1)) (A048766 (A341539 (n + 2)).toNat)

end

end A245693.P7933956759878119274

/-!
# A245694: Table read by rows: n-th row lists odd composites c such that Q + c is prime, where Q is the n-th primorial and c < prime(n+1)*prime(n+2).

The programs for A245694, there is no canonical definition to state claims against.
-/

/-! ## A245694.P8774649069776232399

`A065091(A038767(n+1))²`
-/

namespace A245694.P8774649069776232399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A038767 (n + 1)).toNat ^ 2

end

end A245694.P8774649069776232399

/-! ## A245694.P6846148788713693698

`A001248(A038767(n+1)+1)`
-/

namespace A245694.P6846148788713693698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A038767 (n + 1) + 1).toNat

end

end A245694.P6846148788713693698

/-! ## A245694.P16388866043334325296

`A280076(A038767(n+1)+2)`
-/

namespace A245694.P16388866043334325296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (A038767 (n + 1) + 2).toNat

end

end A245694.P16388866043334325296

/-! ## A245694.P7420720194615544882

`A000040(A038767(n+1)+1)²`
-/

namespace A245694.P7420720194615544882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038767 (n + 1) + 1).toNat ^ 2

end

end A245694.P7420720194615544882

/-! ## A245694.P13591863475760709820

`(A006093(A038767(n+1)+1)+1)²`
-/

namespace A245694.P13591863475760709820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (A038767 (n + 1) + 1).toNat + 1) ^ 2

end

end A245694.P13591863475760709820

/-!
# A245695: Least number k >= 0 such that (n!+k)/n is prime.

The programs for A245695, there is no canonical definition to state claims against.
-/

/-! ## A245695.P11879506560842728504

`(n+1)*(A033932(n)-char[2])`
-/

namespace A245695.P11879506560842728504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A033932 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A245695.P11879506560842728504

/-! ## A245695.P13541317251183730495

`(A033932(n)-char[2])*A008619(2*n)`
-/

namespace A245695.P13541317251183730495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033932 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A008619 (2 * n)

end

end A245695.P13541317251183730495

/-! ## A245695.P14181439903109663216

`((n+1)*A033932(n))%A028875(n)²`
-/

namespace A245695.P14181439903109663216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A033932 n) (A028875 n ^ 2)

end

end A245695.P14181439903109663216

/-! ## A245695.P13561339523229832987

`(n+1)*A033932(n)*A057427(A209259(n))`
-/

namespace A245695.P13561339523229832987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033932 n * A057427 (A209259 n).toNat

end

end A245695.P13561339523229832987

/-! ## A245695.P2947358874362903494

`(A033932(n)-char[2])*A003056(A027379(n))`
-/

namespace A245695.P2947358874362903494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033932 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A003056 (A027379 n).toNat

end

end A245695.P2947358874362903494

/-! ## A245695.P9516387892871456459

`(A087421(n)-A000142(n))*(n+1)`
-/

namespace A245695.P9516387892871456459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087421 n - A000142 n) * (n + 1 : ℤ)

end

end A245695.P9516387892871456459

/-!
# A245696: Least number k >= 0 such that (n!-k)/n is prime.

The programs for A245696, there is no canonical definition to state claims against.
-/

/-! ## A245696.P15025034566364874412

`(n+3)*A033933(n+2)`
-/

namespace A245696.P15025034566364874412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A033933 (n + 2)

end

end A245696.P15025034566364874412

/-! ## A245696.P12372273668523403582

`(n+3)*(A058054(n+2)-A033932(n+2))`
-/

namespace A245696.P12372273668523403582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A058054 (n + 2) - A033932 (n + 2))

end

end A245696.P12372273668523403582

/-! ## A245696.P2770498301974753246

`A033933(n+2)+lcm(A020725(n+1), A033933(n+2))`
-/

namespace A245696.P2770498301974753246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033933 (n + 2) + (Int.lcm (A020725 (n + 1)) (A033933 (n + 2)) : ℤ)

end

end A245696.P2770498301974753246

/-! ## A245696.P16968939343874208953

`(A015906(A340802(n+2))-A033932(n+2))*(n+3)`
-/

namespace A245696.P16968939343874208953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015906 (A340802 (n + 2)).toNat - A033932 (n + 2)) * (n + 3 : ℤ)

end

end A245696.P16968939343874208953

/-! ## A245696.P8710614428975850631

`(n+3)!%A006990(n+2)`
-/

namespace A245696.P8710614428975850631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (n + 3) : ℤ) (A006990 (n + 2))

end

end A245696.P8710614428975850631

/-! ## A245696.P109998686092988093

`A000142(n+3)%A006990(n+2)`
-/

namespace A245696.P109998686092988093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (n + 3)) (A006990 (n + 2))

end

end A245696.P109998686092988093

/-!
# A245697: Least number k such that (n!+k)/n and (n!-k)/n are both prime.

The programs for A245697, there is no canonical definition to state claims against.
-/

/-! ## A245697.P6589142747469622244

`(n+3)*A075409(n+2)`
-/

namespace A245697.P6589142747469622244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A075409 (n + 2)

end

end A245697.P6589142747469622244

/-! ## A245697.P5094221086272195174

`A075409(n+2)+lcm(A020725(n+1), A075409(n+2))`
-/

namespace A245697.P5094221086272195174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075409 (n + 2) + (Int.lcm (A020725 (n + 1)) (A075409 (n + 2)) : ℤ)

end

end A245697.P5094221086272195174

/-! ## A245697.P2969831917258194799

`A032741(A000079(n)*A002717(n))*A247796(n+3)`
-/

namespace A245697.P2969831917258194799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000079 n * A002717 n).toNat * A247796 (n + 3)

end

end A245697.P2969831917258194799

