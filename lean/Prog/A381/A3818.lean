import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A381800: a(n) = number of distinct residues r mod n of numbers k such that rad(k) | n, where rad = A007947.

The programs for A381800, there is no canonical definition to state claims against.
-/

/-! ## A381800.P17178035622920329835

`1-A381802(n+1)+n`
-/

namespace A381800.P17178035622920329835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A381802 (n + 1) + (n : ℤ)

end

end A381800.P17178035622920329835

/-! ## A381800.P11819600163623226594

`A381804(n+1)+A010846(n+1)`
-/

namespace A381800.P11819600163623226594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381804 (n + 1) + A010846 (n + 1)

end

end A381800.P11819600163623226594

/-! ## A381800.P10500235822815765169

`A051953(n+1)+1-A381803(n+1)`
-/

namespace A381800.P10500235822815765169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + 1 - A381803 (n + 1)

end

end A381800.P10500235822815765169

/-! ## A381800.P6529484861544433637

`A381804(n+1)+1-A010847(n+1)+n`
-/

namespace A381800.P6529484861544433637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381804 (n + 1) + (1 - A010847 (n + 1) + (n : ℤ))

end

end A381800.P6529484861544433637

/-! ## A381800.P14366257914364128854

`A382138(n+1)+A381798(n+1)`
-/

namespace A381800.P14366257914364128854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382138 (n + 1) + A381798 (n + 1)

end

end A381800.P14366257914364128854

/-! ## A381800.P22746312901419493

`Δ[lt[A381801(n+1), 1]]`
-/

namespace A381800.P22746312901419493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381801 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A381800.P22746312901419493

/-!
# A381801: Irregular triangle read by rows: row n lists the residues r mod n of numbers k such that rad(k) | n, where rad = A007947.

The programs for A381801, there is no canonical definition to state claims against.
-/

/-! ## A381801.P8107972047820008377

`and(A000201(3*n+5), A113340(A209073(n+1)))`
-/

namespace A381801.P8107972047820008377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000201 (3 * n + 5)) (A113340 (A209073 (n + 1)).toNat)

end

end A381801.P8107972047820008377

/-! ## A381801.P11089954658979259147

`A374398(n)+A244413(A283016(n))`
-/

namespace A381801.P11089954658979259147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374398 n + A244413 (A283016 n).toNat

end

end A381801.P11089954658979259147

/-! ## A381801.P10362673945861293237

`A374398(n)^A219585(A219585(n))`
-/

namespace A381801.P10362673945861293237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374398 n : ℚ) ^ (A219585 (A219585 n).toNat : ℤ)

end

end A381801.P10362673945861293237

/-! ## A381801.P15925582933773909324

`A374398(n)%A374393(A374688(n))`
-/

namespace A381801.P15925582933773909324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374398 n) (A374393 (A374688 n).toNat)

end

end A381801.P15925582933773909324

/-! ## A381801.P17128239900891788410

`A043545(A097225(n+1))*A374398(n)`
-/

namespace A381801.P17128239900891788410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A097225 (n + 1)).toNat * A374398 n

end

end A381801.P17128239900891788410

/-!
# A381802: a(n) = number of distinct residues r mod n of numbers k congruent to r (mod n) such that rad(k) does not divide n, where rad = A007947.

The programs for A381802, there is no canonical definition to state claims against.
-/

/-! ## A381802.P9746402923032273368

`n+1-A381800(n+1)`
-/

namespace A381802.P9746402923032273368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A381800 (n + 1)

end

end A381802.P9746402923032273368

/-! ## A381802.P6853852437637189476

`A381803(n+1)+A109606(n+1)`
-/

namespace A381802.P6853852437637189476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381803 (n + 1) + A109606 (n + 1)

end

end A381802.P6853852437637189476

/-! ## A381802.P315113585356175282

`A010847(n+1)-A381804(n+1)`
-/

namespace A381802.P315113585356175282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010847 (n + 1) - A381804 (n + 1)

end

end A381802.P315113585356175282

/-! ## A381802.P6068265470319754224

`1-A010846(n+1)+n-A381804(n+1)`
-/

namespace A381802.P6068265470319754224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010846 (n + 1) + (n : ℤ) - A381804 (n + 1)

end

end A381802.P6068265470319754224

/-! ## A381802.P5859098916365678083

`A243823(n+1)+A109606(n+1)-A381804(n+1)`
-/

namespace A381802.P5859098916365678083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) + A109606 (n + 1) - A381804 (n + 1)

end

end A381802.P5859098916365678083

/-! ## A381802.P14127766234697749971

`A000010(n+1)+A243823(n+1)-1-A381804(n+1)`
-/

namespace A381802.P14127766234697749971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A243823 (n + 1) - 1) - A381804 (n + 1)

end

end A381802.P14127766234697749971

/-! ## A381802.P5400135675922889638

`A395984(A064549(n+1))`
-/

namespace A381802.P5400135675922889638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395984 (A064549 (n + 1)).toNat

end

end A381802.P5400135675922889638

/-! ## A381802.P17896509569582234077

`A395984((n+1)*A007947(n+1))`
-/

namespace A381802.P17896509569582234077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395984 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A381802.P17896509569582234077

/-!
# A381803: Number of residues r in {0..n-1} that are not coprime to n and not in row n of A381801.

The programs for A381803, there is no canonical definition to state claims against.
-/

/-! ## A381803.P18226372278937471466

`1+A051953(n+1)-A381800(n+1)`
-/

namespace A381803.P18226372278937471466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A051953 (n + 1) - A381800 (n + 1)

end

end A381803.P18226372278937471466

/-! ## A381803.P15989959795221864455

`1+n+1-A000010(n+1)-A381800(n+1)`
-/

namespace A381803.P15989959795221864455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℤ) - A000010 (n + 1) - A381800 (n + 1)

end

end A381803.P15989959795221864455

/-! ## A381803.P10582070738536733169

`A395984(n+1)+A395900(n+1)`
-/

namespace A381803.P10582070738536733169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395984 (n + 1) + A395900 (n + 1)

end

end A381803.P10582070738536733169

/-! ## A381803.P2038738185547643004

`A381802(n+1)-A109606(n+1)`
-/

namespace A381803.P2038738185547643004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381802 (n + 1) - A109606 (n + 1)

end

end A381803.P2038738185547643004

/-! ## A381803.P13682601358247064019

`A243823(n+1)-A381804(n+1)`
-/

namespace A381803.P13682601358247064019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) - A381804 (n + 1)

end

end A381803.P13682601358247064019

/-! ## A381803.P1576033629474488524

`A381802(n+1)+1-A000010(n+1)`
-/

namespace A381803.P1576033629474488524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381802 (n + 1) + 1 - A000010 (n + 1)

end

end A381803.P1576033629474488524

/-! ## A381803.P1091144564750070096

`A045763(n+1)-(A381804(n+1)+A243822(n+1))`
-/

namespace A381803.P1091144564750070096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - (A381804 (n + 1) + A243822 (n + 1))

end

end A381803.P1091144564750070096

/-! ## A381803.P685648070103361736

`A300858(n+1)+A243822(n+1)-A381804(n+1)`
-/

namespace A381803.P685648070103361736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (n + 1) + A243822 (n + 1) - A381804 (n + 1)

end

end A381803.P685648070103361736

/-! ## A381803.P16209712490592051389

`A360543(n+1)+A360480(n+1)-A381804(n+1)`
-/

namespace A381803.P16209712490592051389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360543 (n + 1) + A360480 (n + 1) - A381804 (n + 1)

end

end A381803.P16209712490592051389

/-!
# A381804: Number of residues r mod n congruent to k such that rad(k) | n but rad(r) does not divide n, with rad = A007947.

The programs for A381804, there is no canonical definition to state claims against.
-/

/-! ## A381804.P4329274659480714466

`A381800(n+1)-A010846(n+1)`
-/

namespace A381804.P4329274659480714466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381800 (n + 1) - A010846 (n + 1)

end

end A381804.P4329274659480714466

/-! ## A381804.P9904507235754648460

`A010847(n+1)-A381802(n+1)`
-/

namespace A381804.P9904507235754648460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010847 (n + 1) - A381802 (n + 1)

end

end A381804.P9904507235754648460

/-! ## A381804.P9679277059689053157

`A243823(n+1)-A381803(n+1)`
-/

namespace A381804.P9679277059689053157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) - A381803 (n + 1)

end

end A381804.P9679277059689053157

/-! ## A381804.P877411635379469724

`and(A335574(n), A380870(n+1))`
-/

namespace A381804.P877411635379469724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335574 n) (A380870 (n + 1))

end

end A381804.P877411635379469724

/-! ## A381804.P20123522818600535

`A380870(n+1)%A096684(n+1)`
-/

namespace A381804.P20123522818600535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380870 (n + 1)) (A096684 (n + 1))

end

end A381804.P20123522818600535

/-!
# A381805: Smallest composite squarefree number that is coprime to n.

The programs for A381805, there is no canonical definition to state claims against.
-/

/-! ## A381805.P10094460428697218755

`A053669(n+1)*A380539(n+1)`
-/

namespace A381805.P10094460428697218755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) * A380539 (n + 1)

end

end A381805.P10094460428697218755

/-! ## A381805.P10094865745109843399

`sqrt(A382767(n+1))`
-/

namespace A381805.P10094865745109843399
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A382767 (n + 1) : ℝ)

end

end A381805.P10094865745109843399

/-! ## A381805.P5696402274007709624

`A123623(∏{p}[n+1, #])`
-/

namespace A381805.P5696402274007709624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123623 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A381805.P5696402274007709624

/-! ## A381805.P3958699922946799159

`∏{p}[A382248(n+1), #]`
-/

namespace A381805.P3958699922946799159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A381805.P3958699922946799159

/-! ## A381805.P26771953339050186

`A123623(A007947(n+1))`
-/

namespace A381805.P26771953339050186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123623 (A007947 (n + 1)).toNat

end

end A381805.P26771953339050186

/-! ## A381805.P8260999933170537645

`A007947(A382248(n+1))`
-/

namespace A381805.P8260999933170537645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A382248 (n + 1)).toNat

end

end A381805.P8260999933170537645

/-! ## A381805.P8586201868450683323

`A382248(n+1)/A053669(n+1)`
-/

namespace A381805.P8586201868450683323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382248 (n + 1) : ℚ) / (A053669 (n + 1) : ℚ)

end

end A381805.P8586201868450683323

/-! ## A381805.P288261866873130723

`A020639(A382248(n+1))*A380539(n+1)`
-/

namespace A381805.P288261866873130723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A382248 (n + 1)).toNat * A380539 (n + 1)

end

end A381805.P288261866873130723

/-! ## A381805.P6798423039143931500

`A020639(A382767(n+1))*A380539(n+1)`
-/

namespace A381805.P6798423039143931500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A382767 (n + 1)).toNat * A380539 (n + 1)

end

end A381805.P6798423039143931500

/-! ## A381805.P3573183130183985791

`A382248(n+1)/A020639(A382767(n+1))`
-/

namespace A381805.P3573183130183985791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382248 (n + 1) : ℚ) / (A020639 (A382767 (n + 1)).toNat : ℚ)

end

end A381805.P3573183130183985791

/-! ## A381805.P11810102429082286299

`(A381031(n+1)+A053669(n+1))*A053669(n+1)`
-/

namespace A381805.P11810102429082286299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A381031 (n + 1) + A053669 (n + 1)) * A053669 (n + 1)

end

end A381805.P11810102429082286299

/-! ## A381805.P5278432090931777489

`(A380539(n+1)-A381031(n+1))*A380539(n+1)`
-/

namespace A381805.P5278432090931777489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A380539 (n + 1) - A381031 (n + 1)) * A380539 (n + 1)

end

end A381805.P5278432090931777489

/-! ## A381805.P16666059309364891798

`A382248(n+1)/(A380539(n+1)-A381031(n+1))`
-/

namespace A381805.P16666059309364891798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382248 (n + 1) : ℚ) / (A380539 (n + 1) - A381031 (n + 1) : ℚ)

end

end A381805.P16666059309364891798

/-! ## A381805.P9941058740628961281

`A087560(A087560(n+1))/(n+1)`
-/

namespace A381805.P9941058740628961281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087560 (A087560 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A381805.P9941058740628961281

/-! ## A381805.P17920234022861408123

`A053669(n+1)*A053669(A087560(n+1))`
-/

namespace A381805.P17920234022861408123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) * A053669 (A087560 (n + 1)).toNat

end

end A381805.P17920234022861408123

/-! ## A381805.P9071685347885513275

`gcd(A374785(n+1), A382767(n+1))`
-/

namespace A381805.P9071685347885513275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A374785 (n + 1)) (A382767 (n + 1))

end

end A381805.P9071685347885513275

/-!
# A381808: Number of multisets that can be obtained by choosing a strict integer partition of m for each m = 0..n and taking the multiset union.

The programs for A381808, there is no canonical definition to state claims against.
-/

/-! ## A381808.P5911115452800695284

`ceil(A379308(n²+2)/4)`
-/

namespace A381808.P5911115452800695284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A379308 (n ^ 2 + 2) : ℚ) / 4⌉

end

end A381808.P5911115452800695284

/-! ## A381808.P13907477906314929208

`A342750(A305785(n))`
-/

namespace A381808.P13907477906314929208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342750 (A305785 n).toNat

end

end A381808.P13907477906314929208

/-! ## A381808.P14539143876299294832

`A342750(A229734(n+1))`
-/

namespace A381808.P14539143876299294832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342750 (A229734 (n + 1)).toNat

end

end A381808.P14539143876299294832

/-!
# A381811: The largest nonnegative integer j for which each integer n,n+2,...,n+2j can be written as the sum of the squares for some partition of n.

The programs for A381811, there is no canonical definition to state claims against.
-/

/-! ## A381811.P4820242573690236303

`(A383682(n+1)-(n+1))/2`
-/

namespace A381811.P4820242573690236303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383682 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A381811.P4820242573690236303

/-! ## A381811.P3698107800009845970

`floor((A383682(n+1)-n)/2)`
-/

namespace A381811.P3698107800009845970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A383682 (n + 1) - (n : ℤ) : ℚ) / 2⌋

end

end A381811.P3698107800009845970

/-! ## A381811.P16661599129623200285

`A174344((A383682(n+1)-n)²)`
-/

namespace A381811.P16661599129623200285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 ((A383682 (n + 1) - (n : ℤ)) ^ 2).toNat

end

end A381811.P16661599129623200285

/-!
# A381815: Smallest k>1 such that 10*k^(3*2^n)+1 is prime.

The programs for A381815, there is no canonical definition to state claims against.
-/

/-! ## A381815.P6135068283499260577

`A089319(3*2^n)`
-/

namespace A381815.P6135068283499260577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089319 (3 * 2 ^ n)

end

end A381815.P6135068283499260577

/-! ## A381815.P13636344880784520800

`A089319(A007283(n))-A326680(n)`
-/

namespace A381815.P13636344880784520800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089319 (A007283 n).toNat - A326680 n

end

end A381815.P13636344880784520800

/-!
# A381816: a(n) = (4*n^2 - (-1)^n - 2*n - 7)/4.

The programs for A381816, the canonical program `A381816.P15677550989472384551` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381816 has offset 1).

The definition of A381816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(n+1)²-(-1)^(n+1)-2*(n+1)-7)/4` (program `A381816.P14715097327986551108`, by `A381816.P14715097327986551108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381816.P15677550989472384551

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=-1, a(1)=1, a(2)=6, a(3)=12`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A381816

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P15677550989472384551.Spec : Prop :=
  ∀ n, P15677550989472384551.a n = A381816 (n + 1)

theorem P15677550989472384551.correct : P15677550989472384551.Spec := by
  intro n
  simp only [A381816, Nat.add_sub_cancel]

end A381816

/-! ## A381816.P14715097327986551108

`(4*(n+1)²-(-1)^(n+1)-2*(n+1)-7)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A381816.P14715097327986551108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) ^ 2 : ℤ) - (-1) ^ (n + 1) - (2 * (n + 1) : ℤ) - 7 : ℚ) / 4

end

end A381816.P14715097327986551108

namespace A381816

/-- `(4*(n+1)²-(-1)^(n+1)-2*(n+1)-7)/4` -/
def P14715097327986551108.Spec : Prop :=
  ∀ n, P14715097327986551108.a n = (A381816 (n + 1) : ℚ)

theorem P14715097327986551108.correct : P14715097327986551108.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A381816, Nat.add_sub_cancel, A381816.P14715097327986551108.a, A381816.P15677550989472384551.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A381816, Nat.add_sub_cancel, A381816.P14715097327986551108.a, A381816.P15677550989472384551.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A381816

/-! ## A381816.P4955354477227170305

`∑[or(1, n)+n]-2`
-/

namespace A381816.P4955354477227170305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A381816.P4955354477227170305

namespace A381816

/-- `∑[or(1, n)+n]-2` -/
def P4955354477227170305.Spec : Prop :=
  ∀ n, P4955354477227170305.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P2237900746358740447

`∑[(n-1)%2+2*n]`
-/

namespace A381816.P2237900746358740447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2 + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381816.P2237900746358740447

namespace A381816

/-- `∑[(n-1)%2+2*n]` -/
def P2237900746358740447.Spec : Prop :=
  ∀ n, P2237900746358740447.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P9102437806130110604

`∑[2*n-(1-n)%2]`
-/

namespace A381816.P9102437806130110604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod (1 - (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381816.P9102437806130110604

namespace A381816

/-- `∑[2*n-(1-n)%2]` -/
def P9102437806130110604.Spec : Prop :=
  ∀ n, P9102437806130110604.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P15799168592076301147

`∑[lt[xor(2, n+1), n]]-2`
-/

namespace A381816.P15799168592076301147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A381816.P15799168592076301147

namespace A381816

/-- `∑[lt[xor(2, n+1), n]]-2` -/
def P15799168592076301147.Spec : Prop :=
  ∀ n, P15799168592076301147.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P15361807848993934093

`∑[a(n-2)+4]` with `a(0)=-1, a(1)=2, a(2)=5`
-/

namespace A381816.P15361807848993934093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 5] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381816.P15361807848993934093

namespace A381816

/-- `∑[a(n-2)+4]` -/
def P15361807848993934093.Spec : Prop :=
  ∀ n, P15361807848993934093.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P15527682666344500270

`(n+1)²-(∑[and(1, n)]+2)`
-/

namespace A381816.P15527682666344500270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)

end

end A381816.P15527682666344500270

namespace A381816

/-- `(n+1)²-(∑[and(1, n)]+2)` -/
def P15527682666344500270.Spec : Prop :=
  ∀ n, P15527682666344500270.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P12444085397616899321

`∑[∑[4-a(n-1)]]` with `a(0)=-1, a(1)=3, a(2)=3`
-/

namespace A381816.P12444085397616899321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 3, 3] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381816.P12444085397616899321

namespace A381816

/-- `∑[∑[4-a(n-1)]]` -/
def P12444085397616899321.Spec : Prop :=
  ∀ n, P12444085397616899321.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P14467692594097658720

`ogf((-1+3x+4x^2-2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A381816.P14467692594097658720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, 4, -2] [1, -2, 0, 2, -1] n

end

end A381816.P14467692594097658720

namespace A381816

/-- `ogf((-1+3x+4x^2-2x^3)/(1-2x+2x^3-x^4))` -/
def P14467692594097658720.Spec : Prop :=
  ∀ n, P14467692594097658720.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P14288748811057359949

`∑[and(1, n+1)+2*n]-2`
-/

namespace A381816.P14288748811057359949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A381816.P14288748811057359949

namespace A381816

/-- `∑[and(1, n+1)+2*n]-2` -/
def P14288748811057359949.Spec : Prop :=
  ∀ n, P14288748811057359949.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P15828537624560808979

`n*(n+3)-∑[gcd(2, n+1)]`
-/

namespace A381816.P15828537624560808979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 3) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A381816.P15828537624560808979

namespace A381816

/-- `n*(n+3)-∑[gcd(2, n+1)]` -/
def P15828537624560808979.Spec : Prop :=
  ∀ n, P15828537624560808979.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P17739372585569471875

`n-1-∑[and(1, n)-2*n]`
-/

namespace A381816.P17739372585569471875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381816.P17739372585569471875

namespace A381816

/-- `n-1-∑[and(1, n)-2*n]` -/
def P17739372585569471875.Spec : Prop :=
  ∀ n, P17739372585569471875.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P16435737818709804499

`record[round((1-n)²-(n+3)/2)]`
-/

namespace A381816.P16435737818709804499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 - (n : ℤ)) ^ 2 : ℚ) - (n + 3 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381816.P16435737818709804499

namespace A381816

/-- `record[round((1-n)²-(n+3)/2)]` -/
def P16435737818709804499.Spec : Prop :=
  ∀ n, P16435737818709804499.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P4137493604703160835

`∑[eq[n, and(n, n+2)]]+n-1`
-/

namespace A381816.P4137493604703160835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1)

end

end A381816.P4137493604703160835

namespace A381816

/-- `∑[eq[n, and(n, n+2)]]+n-1` -/
def P4137493604703160835.Spec : Prop :=
  ∀ n, P4137493604703160835.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P388303984165750196

`ceil(lcm(2*n+1, n+1)/2)-2`
-/

namespace A381816.P388303984165750196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm (2 * n + 1) (n + 1) : ℚ) / 2⌉ - 2

end

end A381816.P388303984165750196

namespace A381816

/-- `ceil(lcm(2*n+1, n+1)/2)-2` -/
def P388303984165750196.Spec : Prop :=
  ∀ n, P388303984165750196.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P6748985495359261212

`(n+1)²-Δ[a(n-2)+n+3]` with `a(0)=0, a(1)=2`
-/

namespace A381816.P6748985495359261212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A381816.P6748985495359261212

namespace A381816

/-- `(n+1)²-Δ[a(n-2)+n+3]` -/
def P6748985495359261212.Spec : Prop :=
  ∀ n, P6748985495359261212.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P4619710254672648894

`2*n-∑[gcd(n-1, 2*n)-2*n]`
-/

namespace A381816.P4619710254672648894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381816.P4619710254672648894

namespace A381816

/-- `2*n-∑[gcd(n-1, 2*n)-2*n]` -/
def P4619710254672648894.Spec : Prop :=
  ∀ n, P4619710254672648894.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P12434203678962914756

`A035608(n)-1+n`
-/

namespace A381816.P12434203678962914756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n - 1 + (n : ℤ)

end

end A381816.P12434203678962914756

namespace A381816

/-- `A035608(n)-1+n` -/
def P12434203678962914756.Spec : Prop :=
  ∀ n, P12434203678962914756.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P8404544682570083610

`A213398(n)-(n+2)`
-/

namespace A381816.P8404544682570083610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n - (n + 2 : ℤ)

end

end A381816.P8404544682570083610

namespace A381816

/-- `A213398(n)-(n+2)` -/
def P8404544682570083610.Spec : Prop :=
  ∀ n, P8404544682570083610.a n = A381816 (n + 1)

end A381816

/-!
# A381817: Expansion of (1/x) * Series_Reversion( x * (1-x) / C(x) ), where C(x) is the g.f. of A000108.

The programs for A381817, there is no canonical definition to state claims against.
-/

/-! ## A381817.P6902785877108531943

`A074286(A378404(n)+A054352(n))`
-/

namespace A381817.P6902785877108531943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A378404 n + A054352 n).toNat

end

end A381817.P6902785877108531943

/-! ## A381817.P12903967907351024487

`A006370(A369477(n)+A320954(n))`
-/

namespace A381817.P12903967907351024487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A369477 n + A320954 n).toNat

end

end A381817.P12903967907351024487

/-!
# A381818: Expansion of ( (1/x) * Series_Reversion( x * ((1-x) / C(x))^2 ) )^(1/2), where C(x) is the g.f. of A000108.

The programs for A381818, there is no canonical definition to state claims against.
-/

/-! ## A381818.P15925859855847142647

`A283472(A067403(n)+2)`
-/

namespace A381818.P15925859855847142647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283472 (A067403 n + 2).toNat

end

end A381818.P15925859855847142647

/-!
# A381819: Expansion of ( (1/x) * Series_Reversion( x * ((1-x) / C(x))^3 ) )^(1/3), where C(x) is the g.f. of A000108.

The programs for A381819, there is no canonical definition to state claims against.
-/

/-! ## A381819.P14918667598926589597

`A238190(n+4)+A189627(A370444(n))`
-/

namespace A381819.P14918667598926589597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238190 (n + 4) + A189627 (A370444 n).toNat

end

end A381819.P14918667598926589597

/-!
# A381820: Expansion of ( (1/x) * Series_Reversion( x * ((1-x) / C(x))^4 ) )^(1/4), where C(x) is the g.f. of A000108.

The programs for A381820, there is no canonical definition to state claims against.
-/

/-! ## A381820.P3857415784717326125

`A061396(2*n)-A048766(A297880(2*n))`
-/

namespace A381820.P3857415784717326125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 (2 * n) - A048766 (A297880 (2 * n)).toNat

end

end A381820.P3857415784717326125

/-!
# A381821: Fixed points of A381419.

The programs for A381821, there is no canonical definition to state claims against.
-/

/-! ## A381821.P4924570781091360498

`eq[n+1, A381419(n+1)]+1`
-/

namespace A381821.P4924570781091360498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381821.P4924570781091360498

/-!
# A381822: Odd cubefree numbers: odd numbers that are not divisible by any cube greater than 1.

The programs for A381822, the canonical program `A381822.P13589790418829358810` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381822 has offset 1).

The definition of A381822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381822.P13589790418829358810

`filter[2*n+1, A212793(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A381822

/-- `filter[2*n+1, A212793(#)]` -/
def P13589790418829358810.Spec : Prop :=
  ∀ n, (P13589790418829358810.a n : ℤ) = A381822 (n + 1)

theorem P13589790418829358810.correct : P13589790418829358810.Spec := by
  intro n
  simp only [A381822, Nat.add_sub_cancel]

end A381822

/-! ## A381822.P12453415651376720418

`∩[2*n+1, A004709(n+1)]`
-/

namespace A381822.P12453415651376720418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381822.P12453415651376720418

namespace A381822

/-- `∩[2*n+1, A004709(n+1)]` -/
def P12453415651376720418.Spec : Prop :=
  ∀ n, (P12453415651376720418.a n : ℤ) = A381822 (n + 1)

end A381822

/-! ## A381822.P6257081816157152537

`filter[A004709(n+1), A373157(#)]`
-/

namespace A381822.P6257081816157152537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A381822.P6257081816157152537

namespace A381822

/-- `filter[A004709(n+1), A373157(#)]` -/
def P6257081816157152537.Spec : Prop :=
  ∀ n, P6257081816157152537.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P8409024819113974024

`∩[A004709(n+1), A004273(n)]`
-/

namespace A381822.P8409024819113974024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381822.P8409024819113974024

namespace A381822

/-- `∩[A004709(n+1), A004273(n)]` -/
def P8409024819113974024.Spec : Prop :=
  ∀ n, (P8409024819113974024.a n : ℤ) = A381822 (n + 1)

end A381822

/-! ## A381822.P15249428014882600458

`∩[A004709(n+1), A060747(n)]`
-/

namespace A381822.P15249428014882600458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381822.P15249428014882600458

namespace A381822

/-- `∩[A004709(n+1), A060747(n)]` -/
def P15249428014882600458.Spec : Prop :=
  ∀ n, (P15249428014882600458.a n : ℤ) = A381822 (n + 1)

end A381822

/-! ## A381822.P17919131960787557985

`record[A007948(Δ[n²])]`
-/

namespace A381822.P17919131960787557985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P17919131960787557985

namespace A381822

/-- `record[A007948(Δ[n²])]` -/
def P17919131960787557985.Spec : Prop :=
  ∀ n, P17919131960787557985.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P9007345168267343345

`record[A050985(Δ[n²])]`
-/

namespace A381822.P9007345168267343345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P9007345168267343345

namespace A381822

/-- `record[A050985(Δ[n²])]` -/
def P9007345168267343345.Spec : Prop :=
  ∀ n, P9007345168267343345.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P17661233060717510819

`record[A066990(Δ[n²])]`
-/

namespace A381822.P17661233060717510819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P17661233060717510819

namespace A381822

/-- `record[A066990(Δ[n²])]` -/
def P17661233060717510819.Spec : Prop :=
  ∀ n, P17661233060717510819.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P6974788481628857226

`record[A117656(Δ[n²])]`
-/

namespace A381822.P6974788481628857226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117656 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P6974788481628857226

namespace A381822

/-- `record[A117656(Δ[n²])]` -/
def P6974788481628857226.Spec : Prop :=
  ∀ n, P6974788481628857226.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P17430027824109882755

`record[A355261(Δ[n²])]`
-/

namespace A381822.P17430027824109882755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P17430027824109882755

namespace A381822

/-- `record[A355261(Δ[n²])]` -/
def P17430027824109882755.Spec : Prop :=
  ∀ n, P17430027824109882755.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P1279072363022353769

`record[A360539(Δ[n²])]`
-/

namespace A381822.P1279072363022353769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P1279072363022353769

namespace A381822

/-- `record[A360539(Δ[n²])]` -/
def P1279072363022353769.Spec : Prop :=
  ∀ n, P1279072363022353769.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P17180457825614095273

`record[A367699(Δ[n²])]`
-/

namespace A381822.P17180457825614095273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367699 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P17180457825614095273

namespace A381822

/-- `record[A367699(Δ[n²])]` -/
def P17180457825614095273.Spec : Prop :=
  ∀ n, P17180457825614095273.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P12404972090924895883

`record[A368171(Δ[n²])]`
-/

namespace A381822.P12404972090924895883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368171 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P12404972090924895883

namespace A381822

/-- `record[A368171(Δ[n²])]` -/
def P12404972090924895883.Spec : Prop :=
  ∀ n, P12404972090924895883.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P15633570065860956656

`record[A384555(2*n+1)]`
-/

namespace A381822.P15633570065860956656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384555 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P15633570065860956656

namespace A381822

/-- `record[A384555(2*n+1)]` -/
def P15633570065860956656.Spec : Prop :=
  ∀ n, P15633570065860956656.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P219626845876995882

`record[A097377(2*n+1)-1]`
-/

namespace A381822.P219626845876995882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P219626845876995882

namespace A381822

/-- `record[A097377(2*n+1)-1]` -/
def P219626845876995882.Spec : Prop :=
  ∀ n, P219626845876995882.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P15685932989110807263

`filter[A004709(n+1), A000035(#)]`
-/

namespace A381822.P15685932989110807263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A381822.P15685932989110807263

namespace A381822

/-- `filter[A004709(n+1), A000035(#)]` -/
def P15685932989110807263.Spec : Prop :=
  ∀ n, P15685932989110807263.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P16101879178272269840

`A007948(record[A007948(2*n+1)])`
-/

namespace A381822.P16101879178272269840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A381822.P16101879178272269840

namespace A381822

/-- `A007948(record[A007948(2*n+1)])` -/
def P16101879178272269840.Spec : Prop :=
  ∀ n, P16101879178272269840.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P3278320916263788203

`eq[A000035(n), A294333(n)]`
-/

namespace A381822.P3278320916263788203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381822.P3278320916263788203

namespace A381822

/-- `eq[A000035(n), A294333(n)]` -/
def P3278320916263788203.Spec : Prop :=
  ∀ n, (P3278320916263788203.a n : ℤ) = A381822 (n + 1)

end A381822

/-! ## A381822.P2889761865715243194

`eq[A007877(n), A294333(n)]`
-/

namespace A381822.P2889761865715243194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381822.P2889761865715243194

namespace A381822

/-- `eq[A007877(n), A294333(n)]` -/
def P2889761865715243194.Spec : Prop :=
  ∀ n, (P2889761865715243194.a n : ℤ) = A381822 (n + 1)

end A381822

/-! ## A381822.P17072754980916163284

`eq[A019428(n+1), A294333(n)]`
-/

namespace A381822.P17072754980916163284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381822.P17072754980916163284

namespace A381822

/-- `eq[A019428(n+1), A294333(n)]` -/
def P17072754980916163284.Spec : Prop :=
  ∀ n, (P17072754980916163284.a n : ℤ) = A381822 (n + 1)

end A381822

/-!
# A381823: Odd cubefree numbers that are not squarefree.

The programs for A381823, the canonical program `A381823.P9333839630862203631` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381823 has offset 1).

The definition of A381823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7009 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381823.P9333839630862203631

`filter[A053850(n+1), A212793(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A381823

/-- `filter[A053850(n+1), A212793(#)]` -/
def P9333839630862203631.Spec : Prop :=
  ∀ n, P9333839630862203631.a n = A381823 (n + 1)

theorem P9333839630862203631.correct : P9333839630862203631.Spec := by
  intro n
  simp only [A381823, Nat.add_sub_cancel]

end A381823

/-! ## A381823.P3609327050458465334

`filter[A053850(n+1), A359429(#)]`
-/

namespace A381823.P3609327050458465334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A381823.P3609327050458465334

namespace A381823

/-- `filter[A053850(n+1), A359429(#)]` -/
def P3609327050458465334.Spec : Prop :=
  ∀ n, P3609327050458465334.a n = A381823 (n + 1)

end A381823

/-! ## A381823.P10763946643285099133

`filter[A381950(n+1), A359429(#)]`
-/

namespace A381823.P10763946643285099133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A381823.P10763946643285099133

namespace A381823

/-- `filter[A381950(n+1), A359429(#)]` -/
def P10763946643285099133.Spec : Prop :=
  ∀ n, P10763946643285099133.a n = A381823 (n + 1)

end A381823

/-! ## A381823.P10449025896412025209

`filter[A381950(n+2), A212793(#)]`
-/

namespace A381823.P10449025896412025209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A381823.P10449025896412025209

namespace A381823

/-- `filter[A381950(n+2), A212793(#)]` -/
def P10449025896412025209.Spec : Prop :=
  ∀ n, P10449025896412025209.a n = A381823 (n + 1)

end A381823

/-! ## A381823.P1081222857761135792

`filter[A124438(n+1), A212793(#)]`
-/

namespace A381823.P1081222857761135792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A381823.P1081222857761135792

namespace A381823

/-- `filter[A124438(n+1), A212793(#)]` -/
def P1081222857761135792.Spec : Prop :=
  ∀ n, P1081222857761135792.a n = A381823 (n + 1)

end A381823

/-! ## A381823.P5077706235361113567

`filter[A124438(n+1), A359429(#)]`
-/

namespace A381823.P5077706235361113567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A381823.P5077706235361113567

namespace A381823

/-- `filter[A124438(n+1), A359429(#)]` -/
def P5077706235361113567.Spec : Prop :=
  ∀ n, P5077706235361113567.a n = A381823 (n + 1)

end A381823

/-! ## A381823.P2838936509484422912

`filter[A274720(n+1), A359429(#)]`
-/

namespace A381823.P2838936509484422912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A381823.P2838936509484422912

namespace A381823

/-- `filter[A274720(n+1), A359429(#)]` -/
def P2838936509484422912.Spec : Prop :=
  ∀ n, P2838936509484422912.a n = A381823 (n + 1)

end A381823

/-! ## A381823.P9103103392475257260

`filter[A139392(n+1), A359429(#)]`
-/

namespace A381823.P9103103392475257260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A381823.P9103103392475257260

namespace A381823

/-- `filter[A139392(n+1), A359429(#)]` -/
def P9103103392475257260.Spec : Prop :=
  ∀ n, P9103103392475257260.a n = A381823 (n + 1)

end A381823

/-! ## A381823.P13446119856539557271

`∩[2*n+1, A067259(n+1)]`
-/

namespace A381823.P13446119856539557271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P13446119856539557271

namespace A381823

/-- `∩[2*n+1, A067259(n+1)]` -/
def P13446119856539557271.Spec : Prop :=
  ∀ n, (P13446119856539557271.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P7622370735719684182

`filter[A067259(n+1), A353569(#)]`
-/

namespace A381823.P7622370735719684182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A381823.P7622370735719684182

namespace A381823

/-- `filter[A067259(n+1), A353569(#)]` -/
def P7622370735719684182.Spec : Prop :=
  ∀ n, P7622370735719684182.a n = A381823 (n + 1)

end A381823

/-! ## A381823.P2349170564515147230

`filter[A067259(n+1), A373157(#)]`
-/

namespace A381823.P2349170564515147230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A381823.P2349170564515147230

namespace A381823

/-- `filter[A067259(n+1), A373157(#)]` -/
def P2349170564515147230.Spec : Prop :=
  ∀ n, P2349170564515147230.a n = A381823 (n + 1)

end A381823

/-! ## A381823.P12342826217511514323

`∩[A067259(n+1), A124438(n+1)]`
-/

namespace A381823.P12342826217511514323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P12342826217511514323

namespace A381823

/-- `∩[A067259(n+1), A124438(n+1)]` -/
def P12342826217511514323.Spec : Prop :=
  ∀ n, (P12342826217511514323.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P12603803680315252830

`∩[A067259(n+1), A139392(n+1)]`
-/

namespace A381823.P12603803680315252830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P12603803680315252830

namespace A381823

/-- `∩[A067259(n+1), A139392(n+1)]` -/
def P12603803680315252830.Spec : Prop :=
  ∀ n, (P12603803680315252830.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P15878515140858910190

`∩[A067259(n+1), A274720(n+1)]`
-/

namespace A381823.P15878515140858910190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P15878515140858910190

namespace A381823

/-- `∩[A067259(n+1), A274720(n+1)]` -/
def P15878515140858910190.Spec : Prop :=
  ∀ n, (P15878515140858910190.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P8254506703520593617

`∩[A067259(n+1), A381950(n+1)]`
-/

namespace A381823.P8254506703520593617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P8254506703520593617

namespace A381823

/-- `∩[A067259(n+1), A381950(n+1)]` -/
def P8254506703520593617.Spec : Prop :=
  ∀ n, (P8254506703520593617.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P7396381027557125194

`∩[A375031(n+1), A381950(n+1)]`
-/

namespace A381823.P7396381027557125194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P7396381027557125194

namespace A381823

/-- `∩[A375031(n+1), A381950(n+1)]` -/
def P7396381027557125194.Spec : Prop :=
  ∀ n, (P7396381027557125194.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P14260251391858392176

`∩[A053850(n+1), A342393(n+1)]`
-/

namespace A381823.P14260251391858392176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P14260251391858392176

namespace A381823

/-- `∩[A053850(n+1), A342393(n+1)]` -/
def P14260251391858392176.Spec : Prop :=
  ∀ n, (P14260251391858392176.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P13900051033353918880

`∩[A124438(n+1), A342393(n+1)]`
-/

namespace A381823.P13900051033353918880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P13900051033353918880

namespace A381823

/-- `∩[A124438(n+1), A342393(n+1)]` -/
def P13900051033353918880.Spec : Prop :=
  ∀ n, (P13900051033353918880.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P8064757759711971862

`∩[A342393(n+1), A381950(n+1)]`
-/

namespace A381823.P8064757759711971862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P8064757759711971862

namespace A381823

/-- `∩[A342393(n+1), A381950(n+1)]` -/
def P8064757759711971862.Spec : Prop :=
  ∀ n, (P8064757759711971862.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P12949704846348060939

`∩[A382967(n+1), A381950(n+1)]`
-/

namespace A381823.P12949704846348060939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P12949704846348060939

namespace A381823

/-- `∩[A382967(n+1), A381950(n+1)]` -/
def P12949704846348060939.Spec : Prop :=
  ∀ n, (P12949704846348060939.a n : ℤ) = A381823 (n + 1)

end A381823

/-!
# A381824: Odd cubefull numbers: odd numbers that are divisible by the cube of any of their prime factors.

The programs for A381824, there is no canonical definition to state claims against.
-/

/-! ## A381824.P17248576261887356452

`∩[A036966(n+1), A062739(n+1)]`
-/

namespace A381824.P17248576261887356452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381824.P17248576261887356452

/-! ## A381824.P630070242238213208

`record[A000265(A036966(n+1))]`
-/

namespace A381824.P630070242238213208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036966 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381824.P630070242238213208

/-! ## A381824.P7279384239864916562

`filter[A036966(n+1), A374134(#)]`
-/

namespace A381824.P7279384239864916562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A381824.P7279384239864916562

/-! ## A381824.P14261928118512235715

`filter[A036966(n+1), A039982(#)]`
-/

namespace A381824.P14261928118512235715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A381824.P14261928118512235715

/-!
# A381825: Odd cubefull exponentially odd numbers: numbers whose prime factorization has only odd primes and odd exponents that are larger than 1 (except for 1 whose prime factorization is empty).

The programs for A381825, there is no canonical definition to state claims against.
-/

/-! ## A381825.P1763193756722573775

`∩[A335988(n+1), A381824(n+1)]`
-/

namespace A381825.P1763193756722573775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381825.P1763193756722573775

/-! ## A381825.P687265394259124174

`∩[A062739(n+1), A335988(n+1)]`
-/

namespace A381825.P687265394259124174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381825.P687265394259124174

/-! ## A381825.P10128618611052704856

`record[A000265(A335988(n+1))]`
-/

namespace A381825.P10128618611052704856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A335988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381825.P10128618611052704856

/-! ## A381825.P11274452819064530190

`filter[A335988(n+1), A374134(#)]`
-/

namespace A381825.P11274452819064530190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A381825.P11274452819064530190

/-!
# A381826: G.f. A(x) satisfies A(x) = C(x) / (1 - x*A(x)^2), where C(x) is the g.f. of A000108.

The programs for A381826, there is no canonical definition to state claims against.
-/

/-! ## A381826.P3181815403408321886

`A005374(A100982(n+1)+A000172(n))`
-/

namespace A381826.P3181815403408321886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A100982 (n + 1) + A000172 n).toNat

end

end A381826.P3181815403408321886

/-! ## A381826.P10908813753354618824

`A054633(A006356(n)*A159772(n+1))`
-/

namespace A381826.P10908813753354618824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054633 (A006356 n * A159772 (n + 1)).toNat

end

end A381826.P10908813753354618824

/-!
# A381827: G.f. A(x) satisfies A(x) = C(x) / (1 - x*A(x)^3), where C(x) is the g.f. of A000108.

The programs for A381827, there is no canonical definition to state claims against.
-/

/-! ## A381827.P7454399814323345726

`∑[A131005(n^n)]`
-/

namespace A381827.P7454399814323345726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131005 (n ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381827.P7454399814323345726

/-!
# A381828: Expansion of ( (1/x) * Series_Reversion( x * ((1-x) * (1-x+x^2))^2 ) )^(1/2).

The programs for A381828, there is no canonical definition to state claims against.
-/

/-! ## A381828.P14034831106703589932

`A187188(A103210(n+1))`
-/

namespace A381828.P14034831106703589932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A103210 (n + 1)).toNat

end

end A381828.P14034831106703589932

/-!
# A381829: G.f. A(x) satisfies A(x) = C(x*A(x)) / (1 - x*A(x)^3), where C(x) is the g.f. of A000108.

The programs for A381829, there is no canonical definition to state claims against.
-/

/-! ## A381829.P9276203196918854765

`A008615(Δ[A132624(n+2)])`
-/

namespace A381829.P9276203196918854765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132624 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n).toNat

end

end A381829.P9276203196918854765

/-!
# A381830: G.f. A(x) satisfies A(x) = C(x*A(x)^2) / (1 - x*A(x)), where C(x) is the g.f. of A000108.

The programs for A381830, there is no canonical definition to state claims against.
-/

/-! ## A381830.P11377723268216860366

`A102464(A364583(n))`
-/

namespace A381830.P11377723268216860366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102464 (A364583 n).toNat

end

end A381830.P11377723268216860366

/-!
# A381831: Expansion of ( (1/x) * Series_Reversion( x * ((1-x) * (1-x+x^2))^3 ) )^(1/3).

The programs for A381831, there is no canonical definition to state claims against.
-/

/-! ## A381831.P6102365568830659758

`A144097(n)-A011371(A327227(n))`
-/

namespace A381831.P6102365568830659758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144097 n - A011371 (A327227 n).toNat

end

end A381831.P6102365568830659758

/-!
# A381832: G.f. A(x) satisfies A(x) = C(x*A(x)^3) / (1 - x), where C(x) is the g.f. of A000108.

The programs for A381832, there is no canonical definition to state claims against.
-/

/-! ## A381832.P11308182115037905816

`A130936(A111533(n))+n`
-/

namespace A381832.P11308182115037905816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130936 (A111533 n).toNat + (n : ℤ)

end

end A381832.P11308182115037905816

/-!
# A381837: k/16 is in this list if A053737(k) < A235127(k), i.e. if digitsum(k, 4) < valuation(k, 4).

The programs for A381837, there is no canonical definition to state claims against.
-/

/-! ## A381837.P8306022425881751294

`lt[A330625(A000120(n)), A384224(n+1)]`
-/

namespace A381837.P8306022425881751294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330625 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381837.P8306022425881751294

/-! ## A381837.P6399611796056231525

`lt[A384248(A335458(n)), A384224(n+1)]`
-/

namespace A381837.P6399611796056231525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384248 (A335458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381837.P6399611796056231525

/-!
# A381838: k/9 is in this list if A053735(k) < A007949(k), i.e. if digitsum(k, 3) < valuation(k, 3).

The programs for A381838, there is no canonical definition to state claims against.
-/

/-! ## A381838.P17151939625841348076

`A355880(A004771(n))`
-/

namespace A381838.P17151939625841348076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A004771 n).toNat

end

end A381838.P17151939625841348076

/-! ## A381838.P18029971315395731692

`A355880(A017137(n))`
-/

namespace A381838.P18029971315395731692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A017137 n).toNat

end

end A381838.P18029971315395731692

/-! ## A381838.P7029064701019488446

`A355880(A029724(n+1))`
-/

namespace A381838.P7029064701019488446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A029724 (n + 1)).toNat

end

end A381838.P7029064701019488446

/-! ## A381838.P11386052727314658154

`A355880(A059562(n+1))`
-/

namespace A381838.P11386052727314658154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A059562 (n + 1)).toNat

end

end A381838.P11386052727314658154

/-! ## A381838.P14573434946672691453

`A355880(A133655(n+1))`
-/

namespace A381838.P14573434946672691453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A133655 (n + 1)).toNat

end

end A381838.P14573434946672691453

/-!
# A381840: G.f. A(x) satisfies A(x) = 1 + x*A(x)^4 - x^2*A(x)^7.

The programs for A381840, there is no canonical definition to state claims against.
-/

/-! ## A381840.P2217047793523859352

`A173717(A002426(n))`
-/

namespace A381840.P2217047793523859352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173717 (A002426 n).toNat

end

end A381840.P2217047793523859352

/-! ## A381840.P10063441462955446240

`A051742(A023001(n)+1)`
-/

namespace A381840.P10063441462955446240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A023001 n + 1).toNat

end

end A381840.P10063441462955446240

/-!
# A381841: Position of the n-th occurrence of the digit 3 in A105083(n-1) for n>=1.

The programs for A381841, the canonical program `A381841.P11592063328882471830` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381841 has offset 1).

The definition of A381841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381841.P8974859732805188249

`A064105(n+1)+1`
-/

namespace A381841.P8974859732805188249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) + 1

end

end A381841.P8974859732805188249

namespace A381841

/-- `A064105(n+1)+1` -/
def P8974859732805188249.Spec : Prop :=
  ∀ n, P8974859732805188249.a n = A381841 (n + 1)

theorem P8974859732805188249.correct : P8974859732805188249.Spec := by
  intro n
  simp only [A381841, Nat.add_sub_cancel, A381841.P8974859732805188249.a, A381841.P11592063328882471830.a, A064105, A064105.P10505817968738943948.a, A136495, A136495.P596664169401550958.a, A136496, A136496.P805941965056846939.a, A005374, A005374.P13862197180797613727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381841

/-! ## A381841.P11592063328882471830

`A136495(n+1)+A136496(n+1)`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A381841

/-- `A136495(n+1)+A136496(n+1)` -/
def P11592063328882471830.Spec : Prop :=
  ∀ n, P11592063328882471830.a n = A381841 (n + 1)

theorem P11592063328882471830.correct : P11592063328882471830.Spec := by
  intro n
  simp only [A381841, Nat.add_sub_cancel]

end A381841

/-! ## A381841.P13584992972271794891

`A202342(A202342(n+1))+2`
-/

namespace A381841.P13584992972271794891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A202342 (n + 1)).toNat + 2

end

end A381841.P13584992972271794891

namespace A381841

/-- `A202342(A202342(n+1))+2` -/
def P13584992972271794891.Spec : Prop :=
  ∀ n, P13584992972271794891.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P15260930333225258118

`A202341(A136495(n+1)+n+2)`
-/

namespace A381841.P15260930333225258118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (A136495 (n + 1) + (n + 2 : ℤ)).toNat

end

end A381841.P15260930333225258118

namespace A381841

/-- `A202341(A136495(n+1)+n+2)` -/
def P15260930333225258118.Spec : Prop :=
  ∀ n, P15260930333225258118.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P9362869886610889685

`A136495(A136496(n+1))`
-/

namespace A381841.P9362869886610889685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A136496 (n + 1)).toNat

end

end A381841.P9362869886610889685

namespace A381841

/-- `A136495(A136496(n+1))` -/
def P9362869886610889685.Spec : Prop :=
  ∀ n, P9362869886610889685.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P8756924500481370341

`A136495(A020942(n+1)+1)`
-/

namespace A381841.P8756924500481370341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A020942 (n + 1) + 1).toNat

end

end A381841.P8756924500481370341

namespace A381841

/-- `A136495(A020942(n+1)+1)` -/
def P8756924500481370341.Spec : Prop :=
  ∀ n, P8756924500481370341.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P2319689608347869505

`A226249(A136496(n+1))-A005374(n)`
-/

namespace A381841.P2319689608347869505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226249 (A136496 (n + 1)).toNat - A005374 n

end

end A381841.P2319689608347869505

namespace A381841

/-- `A226249(A136496(n+1))-A005374(n)` -/
def P2319689608347869505.Spec : Prop :=
  ∀ n, P2319689608347869505.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P8702330193553303993

`A136495(A136495(A136495(n+1))+n+1)`
-/

namespace A381841.P8702330193553303993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A136495 (A136495 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A381841.P8702330193553303993

namespace A381841

/-- `A136495(A136495(A136495(n+1))+n+1)` -/
def P8702330193553303993.Spec : Prop :=
  ∀ n, P8702330193553303993.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P6580572752552367563

`lt[2, A105083(n)]+1`
-/

namespace A381841.P6580572752552367563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A381841.P6580572752552367563

namespace A381841

/-- `lt[2, A105083(n)]+1` -/
def P6580572752552367563.Spec : Prop :=
  ∀ n, (P6580572752552367563.a n : ℤ) = A381841 (n + 1)

end A381841

/-! ## A381841.P16205777174778113426

`A020725(A064105(n+1))`
-/

namespace A381841.P16205777174778113426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A064105 (n + 1)).toNat

end

end A381841.P16205777174778113426

namespace A381841

/-- `A020725(A064105(n+1))` -/
def P16205777174778113426.Spec : Prop :=
  ∀ n, P16205777174778113426.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P10159939017376409689

`A005374(A064106(n+1)+1)`
-/

namespace A381841.P10159939017376409689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A064106 (n + 1) + 1).toNat

end

end A381841.P10159939017376409689

namespace A381841

/-- `A005374(A064106(n+1)+1)` -/
def P10159939017376409689.Spec : Prop :=
  ∀ n, P10159939017376409689.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P16088528853385323138

`A372758(A372749(n+1)+1)`
-/

namespace A381841.P16088528853385323138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A372749 (n + 1) + 1).toNat

end

end A381841.P16088528853385323138

namespace A381841

/-- `A372758(A372749(n+1)+1)` -/
def P16088528853385323138.Spec : Prop :=
  ∀ n, P16088528853385323138.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P6036491933949510002

`A372758(A136496(n+1)+A064106(n+1))`
-/

namespace A381841.P6036491933949510002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A136496 (n + 1) + A064106 (n + 1)).toNat

end

end A381841.P6036491933949510002

namespace A381841

/-- `A372758(A136496(n+1)+A064106(n+1))` -/
def P6036491933949510002.Spec : Prop :=
  ∀ n, P6036491933949510002.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P10575740834462833428

`A005374(A372758(A372750(n+1)))`
-/

namespace A381841.P10575740834462833428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A372758 (A372750 (n + 1)).toNat).toNat

end

end A381841.P10575740834462833428

namespace A381841

/-- `A005374(A372758(A372750(n+1)))` -/
def P10575740834462833428.Spec : Prop :=
  ∀ n, P10575740834462833428.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P1474365082250315606

`A372758(A372758(A372752(n+1)))`
-/

namespace A381841.P1474365082250315606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A372758 (A372752 (n + 1)).toNat).toNat

end

end A381841.P1474365082250315606

namespace A381841

/-- `A372758(A372758(A372752(n+1)))` -/
def P1474365082250315606.Spec : Prop :=
  ∀ n, P1474365082250315606.a n = A381841 (n + 1)

end A381841

/-! ## A381841.P8008264810919173839

`A372758(A372758(A372758(A372757(n+1))))`
-/

namespace A381841.P8008264810919173839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A372758 (A372758 (A372757 (n + 1)).toNat).toNat).toNat

end

end A381841.P8008264810919173839

namespace A381841

/-- `A372758(A372758(A372758(A372757(n+1))))` -/
def P8008264810919173839.Spec : Prop :=
  ∀ n, P8008264810919173839.a n = A381841 (n + 1)

end A381841

/-!
# A381844: Quotients of A380487.

The programs for A381844, there is no canonical definition to state claims against.
-/

/-! ## A381844.P8799160459059163605

`A380487(n+1)/A008472(A380487(n+1))`
-/

namespace A381844.P8799160459059163605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380487 (n + 1) : ℚ) / (A008472 (A380487 (n + 1)).toNat : ℚ)

end

end A381844.P8799160459059163605

/-! ## A381844.P4240885752748461937

`A082344(A380487(n+1))`
-/

namespace A381844.P4240885752748461937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A380487 (n + 1)).toNat

end

end A381844.P4240885752748461937

/-!
# A381845: a(n) = denominator( (e/Pi)*Integral_{x=-oo..+oo} cos(x)/(1 + x^2)^n dx ).

The programs for A381845, there is no canonical definition to state claims against.
-/

/-! ## A381845.P17275330680455322297

`A143968(n+1)/A000027(2*(n+1))`
-/

namespace A381845.P17275330680455322297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143968 (n + 1) : ℚ) / (A000027 (2 * (n + 1)) : ℚ)

end

end A381845.P17275330680455322297

/-! ## A381845.P7217965821858188122

`A002866(n)*A245920(A304969(n))`
-/

namespace A381845.P7217965821858188122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 n * A245920 (A304969 n).toNat

end

end A381845.P7217965821858188122

/-! ## A381845.P10219516912368752795

`A000165(n)/A006519(A069960(n))`
-/

namespace A381845.P10219516912368752795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (A006519 (A069960 n).toNat : ℚ)

end

end A381845.P10219516912368752795

/-! ## A381845.P12046722012121303439

`A000165(n)/A054977(A071607(n))`
-/

namespace A381845.P12046722012121303439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (A054977 (A071607 n).toNat : ℚ)

end

end A381845.P12046722012121303439

/-! ## A381845.P5253520496953994736

`A000165(n)/A276329(A152189(n+2))`
-/

namespace A381845.P5253520496953994736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (A276329 (A152189 (n + 2)).toNat : ℚ)

end

end A381845.P5253520496953994736

/-!
# A381846: Area of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000108(n) and its long leg and hypotenuse are consecutive natural numbers.

The programs for A381846, there is no canonical definition to state claims against.
-/

/-! ## A381846.P12117080851807341331

`(A000108(n)-1)*A383616(n)`
-/

namespace A381846.P12117080851807341331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 n - 1) * A383616 n

end

end A381846.P12117080851807341331

/-! ## A381846.P1328073656990612456

`(A383958(n)-A383616(n))*A383616(n)`
-/

namespace A381846.P1328073656990612456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A383958 n - A383616 n) * A383616 n

end

end A381846.P1328073656990612456

/-! ## A381846.P11995352934461416879

`A011886(2*C(2*n, n)/(n+1))`
-/

namespace A381846.P11995352934461416879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (SequenceMachineLib.roundAway (2 * ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)))).toNat

end

end A381846.P11995352934461416879

/-! ## A381846.P7964065246714288520

`A011886(A068875(n))`
-/

namespace A381846.P7964065246714288520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (A068875 n).toNat

end

end A381846.P7964065246714288520

/-!
# A381847: Number of 3 element sets of distinct integer sided rectangles that fill an n X n square.

The programs for A381847, the canonical program `A381847.P7980523954427739077` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381847 has offset 1).

The definition of A381847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381847.P7980523954427739077

`A387598(n+1)+A052928(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A381847

/-- `A387598(n+1)+A052928(n)` -/
def P7980523954427739077.Spec : Prop :=
  ∀ n, P7980523954427739077.a n = A381847 (n + 1)

theorem P7980523954427739077.correct : P7980523954427739077.Spec := by
  intro n
  simp only [A381847, Nat.add_sub_cancel]

end A381847

/-! ## A381847.P15919203286023526954

`A004526(n)+A387598(n+1)+A004526(n)`
-/

namespace A381847.P15919203286023526954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A387598 (n + 1) + A004526 n)

end

end A381847.P15919203286023526954

namespace A381847

/-- `A004526(n)+A387598(n+1)+A004526(n)` -/
def P15919203286023526954.Spec : Prop :=
  ∀ n, P15919203286023526954.a n = A381847 (n + 1)

theorem P15919203286023526954.correct : P15919203286023526954.Spec := by
  intro n
  simp only [A381847, Nat.add_sub_cancel, A381847.P15919203286023526954.a, A381847.P7980523954427739077.a, A004526, A004526.P10084182425416171735.a, A052928, A052928.P15665125645728880594.a, A387598, A387598.P5535459554804066709.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381847

/-! ## A381847.P1478772976486812432

`A385240(A141214(n)+1)`
-/

namespace A381847.P1478772976486812432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385240 (A141214 n + 1).toNat

end

end A381847.P1478772976486812432

namespace A381847

/-- `A385240(A141214(n)+1)` -/
def P1478772976486812432.Spec : Prop :=
  ∀ n, P1478772976486812432.a n = A381847 (n + 1)

end A381847

/-! ## A381847.P6665338761300517354

`A385240(A034856(n+2))`
-/

namespace A381847.P6665338761300517354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385240 (A034856 (n + 2)).toNat

end

end A381847.P6665338761300517354

namespace A381847

/-- `A385240(A034856(n+2))` -/
def P6665338761300517354.Spec : Prop :=
  ∀ n, P6665338761300517354.a n = A381847 (n + 1)

end A381847

/-! ## A381847.P18046965162543569255

`A386296(A141214(n)+1)`
-/

namespace A381847.P18046965162543569255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386296 (A141214 n + 1).toNat

end

end A381847.P18046965162543569255

namespace A381847

/-- `A386296(A141214(n)+1)` -/
def P18046965162543569255.Spec : Prop :=
  ∀ n, P18046965162543569255.a n = A381847 (n + 1)

end A381847

/-!
# A381848: Sequence obtained by replacing 3-term subwords of A010060 by 0,1,2,3,4,5 as described in Comments.

The programs for A381848, the canonical program `A381848.P12239694092902384723` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381848 has offset 1).

The definition of A381848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381848.P12239694092902384723

`A245188(n)+A036577(A014681(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A381848

/-- `A245188(n)+A036577(A014681(n+1))` -/
def P12239694092902384723.Spec : Prop :=
  ∀ n, P12239694092902384723.a n = A381848 (n + 1)

theorem P12239694092902384723.correct : P12239694092902384723.Spec := by
  intro n
  simp only [A381848, Nat.add_sub_cancel]

end A381848

/-! ## A381848.P6358745120743813096

`A245188(n)+A036577(A103889(n+1))`
-/

namespace A381848.P6358745120743813096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245188 n + A036577 (A103889 (n + 1)).toNat

end

end A381848.P6358745120743813096

namespace A381848

/-- `A245188(n)+A036577(A103889(n+1))` -/
def P6358745120743813096.Spec : Prop :=
  ∀ n, P6358745120743813096.a n = A381848 (n + 1)

end A381848

/-! ## A381848.P16414941520757074237

`A292118(A000265(2*n+1))+A005681(n+2)`
-/

namespace A381848.P16414941520757074237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292118 (A000265 (2 * n + 1)).toNat + A005681 (n + 2)

end

end A381848.P16414941520757074237

namespace A381848

/-- `A292118(A000265(2*n+1))+A005681(n+2)` -/
def P16414941520757074237.Spec : Prop :=
  ∀ n, P16414941520757074237.a n = A381848 (n + 1)

end A381848

/-! ## A381848.P14376694166027800767

`A023443(A019300(n+2))%8`
-/

namespace A381848.P14376694166027800767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A019300 (n + 2)).toNat) 8

end

end A381848.P14376694166027800767

namespace A381848

/-- `A023443(A019300(n+2))%8` -/
def P14376694166027800767.Spec : Prop :=
  ∀ n, P14376694166027800767.a n = A381848 (n + 1)

end A381848

/-!
# A381849: Intersection of A025487 and A242298.

The programs for A381849, there is no canonical definition to state claims against.
-/

/-! ## A381849.P14768278818689949476

`∩[A025487(n+1), A242298(n+1)]`
-/

namespace A381849.P14768278818689949476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381849.P14768278818689949476

/-! ## A381849.P9272826982229341903

`∩[A140999(n+1), A242298(n+1)]`
-/

namespace A381849.P9272826982229341903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381849.P9272826982229341903

/-! ## A381849.P15303666287217332293

`filter[A242298(n+1), A322585(#)]`
-/

namespace A381849.P15303666287217332293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A381849.P15303666287217332293

/-! ## A381849.P17384530451995598317

`∩[A133812(n+1), A242298(n+1)]`
-/

namespace A381849.P17384530451995598317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381849.P17384530451995598317

/-!
# A381850: Primes p preceded and followed by primes whose difference is less than 2*log(p).

The programs for A381850, there is no canonical definition to state claims against.
-/

/-! ## A381850.P16378650530800095022

`A265759(A047842(xor(1, n)))`
-/

namespace A381850.P16378650530800095022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265759 (A047842 (Nat.xor 1 n)).toNat

end

end A381850.P16378650530800095022

/-! ## A381850.P13476508159649501833

`A001055(A228021(n+1))*A383652(n+3)`
-/

namespace A381850.P13476508159649501833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A228021 (n + 1)).toNat * A383652 (n + 3)

end

end A381850.P13476508159649501833

/-! ## A381850.P11875050219446739041

`filter[A105448(n+2), A164292(#)]`
-/

namespace A381850.P11875050219446739041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105448 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A381850.P11875050219446739041

/-! ## A381850.P11444470371525572485

`filter[A290749(n+3), A164292(#)]`
-/

namespace A381850.P11444470371525572485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290749 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A381850.P11444470371525572485

/-! ## A381850.P9170582431195129091

`filter[A178223(2*(n+1)), A164292(#)]`
-/

namespace A381850.P9170582431195129091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178223 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A381850.P9170582431195129091

/-!
# A381851: a(n) is the least number k such that both k and k - s have n prime divisors, counted with multiplicity, where s is the sum of the decimal digits of k.

The programs for A381851, there is no canonical definition to state claims against.
-/

/-! ## A381851.P1758409071278538184

`A192067(A108612(n+2))`
-/

namespace A381851.P1758409071278538184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192067 (A108612 (n + 2)).toNat

end

end A381851.P1758409071278538184

/-! ## A381851.P10400789335210982311

`A053671(A360384(n))*A360360(2*n+3)`
-/

namespace A381851.P10400789335210982311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053671 (A360384 n).toNat * A360360 (2 * n + 3)

end

end A381851.P10400789335210982311

/-!
# A381852: In the binary expansion of n (without leading zeros): complement the bits strictly to the right of the leftmost zero digit, if any.

The programs for A381852, the canonical program `A381852.P9783243754932668671` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381852 has offset 0).

The definition of A381852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381852.P6758993234369233967

`A059894(A145342(n+1))%A062383(n)`
-/

namespace A381852.P6758993234369233967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059894 (A145342 (n + 1)).toNat) (A062383 n)

end

end A381852.P6758993234369233967

namespace A381852

/-- `A059894(A145342(n+1))%A062383(n)` -/
def P6758993234369233967.Spec : Prop :=
  ∀ n, P6758993234369233967.a n = A381852 n

end A381852

/-! ## A381852.P9783243754932668671

`A053644(2*n+1)-A049773(A049773(2*n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A381852

/-- `A053644(2*n+1)-A049773(A049773(2*n+1))` -/
def P9783243754932668671.Spec : Prop :=
  ∀ n, P9783243754932668671.a n = A381852 n

theorem P9783243754932668671.correct : P9783243754932668671.Spec := by
  intro n
  simp only [A381852]

end A381852

/-! ## A381852.P8384116546634470706

`A381839(2*n)/2`
-/

namespace A381852.P8384116546634470706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381839 (2 * n) : ℚ) / 2

end

end A381852.P8384116546634470706

namespace A381852

/-- `A381839(2*n)/2` -/
def P8384116546634470706.Spec : Prop :=
  ∀ n, P8384116546634470706.a n = (A381852 n : ℚ)

end A381852

/-! ## A381852.P15314215196179669586

`A154435(n)+A180200(n)-A153142(n)`
-/

namespace A381852.P15314215196179669586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 n + (A180200 n - A153142 n)

end

end A381852.P15314215196179669586

namespace A381852

/-- `A154435(n)+A180200(n)-A153142(n)` -/
def P15314215196179669586.Spec : Prop :=
  ∀ n, P15314215196179669586.a n = A381852 n

end A381852

/-! ## A381852.P13872867477974805041

`A003817(n)-A115352(n)`
-/

namespace A381852.P13872867477974805041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A115352 n

end

end A381852.P13872867477974805041

namespace A381852

/-- `A003817(n)-A115352(n)` -/
def P13872867477974805041.Spec : Prop :=
  ∀ n, P13872867477974805041.a n = A381852 n

end A381852

/-!
# A381853: Expansion of 1/( Product_{k=0..3} (1 + (-1)^k * (2*k+1) * x) ).

The programs for A381853, the canonical program `A381853.P7210179903537602605` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381853 has offset 0).

The definition of A381853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381853.P7210179903537602605

`4*a(n-1)+34*a(n-2)-76*a(n-3)-105*a(n-4)` with `a(0)=1, a(1)=4, a(2)=50, a(3)=260`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A381853

/-- `4*a(n-1)+34*a(n-2)-76*a(n-3)-105*a(n-4)` -/
def P7210179903537602605.Spec : Prop :=
  ∀ n, P7210179903537602605.a n = A381853 n

theorem P7210179903537602605.correct : P7210179903537602605.Spec := by
  intro n
  simp only [A381853]

end A381853

/-! ## A381853.P2143122434650866508

`(7^(n+3)-3*3^(n+3)+3*(-1)^(n+3)-(-5)^(n+3))/384`
-/

namespace A381853.P2143122434650866508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 3) : ℤ) - (3 * 3 ^ (n + 3) : ℤ) + 3 * (-1) ^ (n + 3) - (-5) ^ (n + 3) : ℚ) / 384

end

end A381853.P2143122434650866508

namespace A381853

/-- `(7^(n+3)-3*3^(n+3)+3*(-1)^(n+3)-(-5)^(n+3))/384` -/
def P2143122434650866508.Spec : Prop :=
  ∀ n, P2143122434650866508.a n = (A381853 n : ℚ)

theorem P2143122434650866508.correct : P2143122434650866508.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A381853, Nat.add_sub_cancel, A381853.P2143122434650866508.a, A381853.P7210179903537602605.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A381853, Nat.add_sub_cancel, A381853.P2143122434650866508.a, A381853.P7210179903537602605.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A381853

/-!
# A381856: Lexicographically earliest sequence of positive integers such that for any value k, no two sets of two or more indices at which k occurs have the same standard deviation.

The programs for A381856, there is no canonical definition to state claims against.
-/

/-! ## A381856.P17391551719182605445

`A055642(A005069(n+1)*A082137(3*n+2))`
-/

namespace A381856.P17391551719182605445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A005069 (n + 1) * A082137 (3 * n + 2)).toNat

end

end A381856.P17391551719182605445

/-! ## A381856.P12958125050512259196

`A000120(2*n+3)-A000035(A278657(3*n))`
-/

namespace A381856.P12958125050512259196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * n + 3) - A000035 (A278657 (3 * n)).toNat

end

end A381856.P12958125050512259196

/-! ## A381856.P14469053245422609922

`A079724(A213768(n+1))*A281511(n+1)`
-/

namespace A381856.P14469053245422609922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079724 (A213768 (n + 1)).toNat * A281511 (n + 1)

end

end A381856.P14469053245422609922

/-! ## A381856.P6069053858482787273

`A165560(A341219(n))+A000120(2*(n+1))`
-/

namespace A381856.P6069053858482787273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A341219 n).toNat + A000120 (2 * (n + 1))

end

end A381856.P6069053858482787273

/-! ## A381856.P6110865431473916843

`A001221(A000079(n+2)-A162203(n+5))`
-/

namespace A381856.P6110865431473916843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 (n + 2) - A162203 (n + 5)).toNat

end

end A381856.P6110865431473916843

/-!
# A381857: Number of n X n binary matrices with at least 2 adjacent 1's.

The programs for A381857, there is no canonical definition to state claims against.
-/

/-! ## A381857.P5710695451874518751

`2^n²-A006506(n)`
-/

namespace A381857.P5710695451874518751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) - A006506 n

end

end A381857.P5710695451874518751

/-! ## A381857.P4777114961909989205

`A002416(n)-A089980(∑[4*n])`
-/

namespace A381857.P4777114961909989205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 n - A089980 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A381857.P4777114961909989205

/-!
# A381858: a(n) is the number of permutations of [n] that avoid 312 and 4321 and whose square avoids 231.

The programs for A381858, the canonical program `A381858.P12499767217982725484` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381858 has offset 0).

The definition of A381858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381858.P12499767217982725484

`ogf(-1/(-1+x+x^2+2x^3+3x^4+2x^5))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A381858

/-- `ogf(-1/(-1+x+x^2+2x^3+3x^4+2x^5))` -/
def P12499767217982725484.Spec : Prop :=
  ∀ n, P12499767217982725484.a n = A381858 n

theorem P12499767217982725484.correct : P12499767217982725484.Spec := by
  intro n
  simp only [A381858]

end A381858

/-! ## A381858.P9746379569544705490

`A305384(A149796(n))`
-/

namespace A381858.P9746379569544705490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305384 (A149796 n).toNat

end

end A381858.P9746379569544705490

namespace A381858

/-- `A305384(A149796(n))` -/
def P9746379569544705490.Spec : Prop :=
  ∀ n, P9746379569544705490.a n = A381858 n

end A381858

/-! ## A381858.P15608822234867118529

`A202088(n)+A078122(A309860(n))`
-/

namespace A381858.P15608822234867118529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202088 n + A078122 (A309860 n).toNat

end

end A381858.P15608822234867118529

namespace A381858

/-- `A202088(n)+A078122(A309860(n))` -/
def P15608822234867118529.Spec : Prop :=
  ∀ n, P15608822234867118529.a n = A381858 n

end A381858

/-! ## A381858.P8076631196369560341

`xor(A008382(n), A184050(A000217(n)))`
-/

namespace A381858.P8076631196369560341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008382 n) (A184050 (A000217 n).toNat)

end

end A381858.P8076631196369560341

namespace A381858

/-- `xor(A008382(n), A184050(A000217(n)))` -/
def P8076631196369560341.Spec : Prop :=
  ∀ n, P8076631196369560341.a n = A381858 n

end A381858

/-!
# A381859: a(n) is the number of permutations that avoid 312 and 4321 and whose square avoids 321.

The programs for A381859, the canonical program `A381859.P16535085206288445222` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381859 has offset 0).

The definition of A381859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381859.P16535085206288445222

`ogf((1-x)/(1-2x-x^3+x^5))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A381859

/-- `ogf((1-x)/(1-2x-x^3+x^5))` -/
def P16535085206288445222.Spec : Prop :=
  ∀ n, P16535085206288445222.a n = A381859 n

theorem P16535085206288445222.correct : P16535085206288445222.Spec := by
  intro n
  simp only [A381859]

end A381859

/-! ## A381859.P4007794144499212609

`A135304(A101399(n))`
-/

namespace A381859.P4007794144499212609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A101399 n).toNat

end

end A381859.P4007794144499212609

namespace A381859

/-- `A135304(A101399(n))` -/
def P4007794144499212609.Spec : Prop :=
  ∀ n, P4007794144499212609.a n = A381859 n

end A381859

/-! ## A381859.P782919277416071645

`A276571(A049155(n))`
-/

namespace A381859.P782919277416071645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A049155 n).toNat

end

end A381859.P782919277416071645

namespace A381859

/-- `A276571(A049155(n))` -/
def P782919277416071645.Spec : Prop :=
  ∀ n, P782919277416071645.a n = A381859 n

end A381859

/-! ## A381859.P3973377982781720061

`A276571(A049166(n))`
-/

namespace A381859.P3973377982781720061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A049166 n).toNat

end

end A381859.P3973377982781720061

namespace A381859

/-- `A276571(A049166(n))` -/
def P3973377982781720061.Spec : Prop :=
  ∀ n, P3973377982781720061.a n = A381859 n

end A381859

/-!
# A381860: G.f. A(x) satisfies A(x) = (1 + x)^3 * C(x*A(x)), where C(x) is the g.f. of A000108.

The programs for A381860, there is no canonical definition to state claims against.
-/

/-! ## A381860.P6572541247577169665

`A324752(A294774(n))`
-/

namespace A381860.P6572541247577169665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324752 (A294774 n).toNat

end

end A381860.P6572541247577169665

/-!
# A381861: G.f. A(x) satisfies A(x) = (1 + x*A(x))^4 * C(x), where C(x) is the g.f. of A000108.

The programs for A381861, there is no canonical definition to state claims against.
-/

/-! ## A381861.P17327463571737101327

`A001951(∑[A082758(n)])`
-/

namespace A381861.P17327463571737101327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381861.P17327463571737101327

/-!
# A381862: Number of pairs of triangles that are pairwise edge-disjoint in the complete graph K_n.

The programs for A381862, the canonical program `A381862.P17529336584558989778` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381862 has offset 5).

The definition of A381862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381862.P17529336584558989778

`10*C(n+5, 6)+3*(n+5)*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A381862

/-- `10*C(n+5, 6)+3*(n+5)*C(n+4, 4)` -/
def P17529336584558989778.Spec : Prop :=
  ∀ n, (P17529336584558989778.a n : ℤ) = A381862 (n + 5)

theorem P17529336584558989778.correct : P17529336584558989778.Spec := by
  intro n
  simp only [A381862, Nat.add_sub_cancel]

end A381862

/-! ## A381862.P3775749833482823966

`(n+5)*(n+4)*(n+3)*(n+2)*(n+1)*(n+9)/72`
-/

namespace A381862.P3775749833482823966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 5) * (n + 4) * (n + 3) * (n + 2) * (n + 1) * (n + 9) : ℚ) / 72

end

end A381862.P3775749833482823966

namespace A381862

/-- `(n+5)*(n+4)*(n+3)*(n+2)*(n+1)*(n+9)/72` -/
def P3775749833482823966.Spec : Prop :=
  ∀ n, P3775749833482823966.a n = (A381862 (n + 5) : ℚ)

theorem P3775749833482823966.correct : P3775749833482823966.Spec := by
  intro n
  simp only [A381862, Nat.add_sub_cancel, A381862.P3775749833482823966.a, A381862.P17529336584558989778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A381862

/-! ## A381862.P16203957392250455110

`A105939(n)-A027790(n+2)/2`
-/

namespace A381862.P16203957392250455110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105939 n : ℚ) - (A027790 (n + 2) : ℚ) / 2

end

end A381862.P16203957392250455110

namespace A381862

/-- `A105939(n)-A027790(n+2)/2` -/
def P16203957392250455110.Spec : Prop :=
  ∀ n, P16203957392250455110.a n = (A381862 (n + 5) : ℚ)

theorem P16203957392250455110.correct : P16203957392250455110.Spec := by
  intro n
  simp only [A381862, Nat.add_sub_cancel, A381862.P16203957392250455110.a, A381862.P17529336584558989778.a, A027790, A027790.P17555155137142438999.a, A105939, A105939.P13479038352763795535.a, A040977, A040977.P17094286001024075111.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A381862

/-!
# A381863: Number of triples of triangles that are pairwise edge-disjoint in the complete graph K_n.

The programs for A381863, the canonical program `A381863.P5944000613591666085` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381863 has offset 6).

The definition of A381863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381863.P5944000613591666085

`120*C(n+6, 6)+735*C(n+6, 7)+840*C(n+6, 8)+280*C(n+6, 9)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A381863

/-- `120*C(n+6, 6)+735*C(n+6, 7)+840*C(n+6, 8)+280*C(n+6, 9)` -/
def P5944000613591666085.Spec : Prop :=
  ∀ n, (P5944000613591666085.a n : ℤ) = A381863 (n + 6)

theorem P5944000613591666085.correct : P5944000613591666085.Spec := by
  intro n
  simp only [A381863, Nat.add_sub_cancel]

end A381863

/-!
# A381866: Number of labeled histories for rooted 5-furcating trees with 4n+1 leaves if simultaneous 5-furcations are not allowed.

The programs for A381866, there is no canonical definition to state claims against.
-/

/-! ## A381866.P18139001367449713058

`C(2*n+2*n+1, 5)*a(n-1)` with `a(0)=1`
-/

namespace A381866.P18139001367449713058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n + (2 * n + 1)) 5 * a (n - 1)

end

end A381866.P18139001367449713058

/-!
# A381867: G.f. A(x) satisfies A(x) = C(x*A(x)) / (1 - x)^2, where C(x) is the g.f. of A000108.

The programs for A381867, there is no canonical definition to state claims against.
-/

/-! ## A381867.P4006523972206420893

`∑[A199475(n)]`
-/

namespace A381867.P4006523972206420893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381867.P4006523972206420893

/-! ## A381867.P8798116161261766145

`∑[∑[A366176(n)]]`
-/

namespace A381867.P8798116161261766145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381867.P8798116161261766145

/-!
# A381871: Numbers whose prime indices cannot be partitioned into constant blocks having a common sum.

The programs for A381871, there is no canonical definition to state claims against.
-/

/-! ## A381871.P2045861979133175960

`comp[A383014(n+1)-1]+1`
-/

namespace A381871.P2045861979133175960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383014 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A381871.P2045861979133175960

/-! ## A381871.P9056217015105712065

`A383100(n+1)+A281034(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A381871.P9056217015105712065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1) + A281034 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A381871.P9056217015105712065

/-! ## A381871.P7077583230162565549

`A383100(n+1)+A332870(A071178(n+1))`
-/

namespace A381871.P7077583230162565549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1) + A332870 (A071178 (n + 1)).toNat

end

end A381871.P7077583230162565549

/-! ## A381871.P15082023692435073161

`A383100(n+1)%A383100(n+2)`
-/

namespace A381871.P15082023692435073161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383100 (n + 1)) (A383100 (n + 2))

end

end A381871.P15082023692435073161

/-! ## A381871.P16676211838649840500

`A383100(n+1)-A352515(xor(n, n+1)+1)`
-/

namespace A381871.P16676211838649840500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1) - A352515 (Nat.xor n (n + 1) + 1)

end

end A381871.P16676211838649840500

/-! ## A381871.P809306288275276993

`A383100(char[A055859(3*n+5)-1]+n+1)`
-/

namespace A381871.P809306288275276993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055859 (3 * n + 5) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (n + 1))

end

end A381871.P809306288275276993

/-! ## A381871.P8637752706576648244

`A383100(n+1)^A273730(A001316(n))`
-/

namespace A381871.P8637752706576648244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383100 (n + 1) : ℚ) ^ (A273730 (A001316 n).toNat : ℤ)

end

end A381871.P8637752706576648244

/-! ## A381871.P4648803645004519728

`A383100(n+1)+A010057(A033548(n+1))`
-/

namespace A381871.P4648803645004519728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1) + A010057 (A033548 (n + 1)).toNat

end

end A381871.P4648803645004519728

/-! ## A381871.P13724794138056218749

`A187818(A187818(n+1))*A383100(n+1)`
-/

namespace A381871.P13724794138056218749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187818 (A187818 (n + 1)).toNat * A383100 (n + 1)

end

end A381871.P13724794138056218749

/-! ## A381871.P6445726746794799244

`A368921(A113832(n+2))*A383100(n+1)`
-/

namespace A381871.P6445726746794799244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368921 (A113832 (n + 2)).toNat * A383100 (n + 1)

end

end A381871.P6445726746794799244

/-!
# A381872: Number of multisets that can be obtained by taking the sum of each block of a multiset partition of the prime indices of n into blocks having a common sum.

The programs for A381872, there is no canonical definition to state claims against.
-/

/-! ## A381872.P13202997670639378764

`or(char[10*n], A321455(n+1))`
-/

namespace A381872.P13202997670639378764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A321455 (n + 1))

end

end A381872.P13202997670639378764

/-! ## A381872.P4324856122247592480

`A321455(A108548(n+1))`
-/

namespace A381872.P4324856122247592480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A108548 (n + 1)).toNat

end

end A381872.P4324856122247592480

/-! ## A381872.P9178039588470750740

`A321455(A130446(n+1))`
-/

namespace A381872.P9178039588470750740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A130446 (n + 1)).toNat

end

end A381872.P9178039588470750740

/-! ## A381872.P14772598001817421587

`A321455(A262530(n+1))`
-/

namespace A381872.P14772598001817421587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A262530 (n + 1)).toNat

end

end A381872.P14772598001817421587

/-! ## A381872.P5724196494206772644

`A321455(A292579(n)+1)`
-/

namespace A381872.P5724196494206772644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A292579 n + 1).toNat

end

end A381872.P5724196494206772644

/-! ## A381872.P4015839814210688642

`A321455(A296882(n+1))`
-/

namespace A381872.P4015839814210688642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A296882 (n + 1)).toNat

end

end A381872.P4015839814210688642

/-! ## A381872.P256865996952215430

`A321455(A361338(n)+n)`
-/

namespace A381872.P256865996952215430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A361338 n + (n : ℤ)).toNat

end

end A381872.P256865996952215430

/-! ## A381872.P16985141578177990493

`A321455(A033619(n+1)+1)`
-/

namespace A381872.P16985141578177990493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A033619 (n + 1) + 1).toNat

end

end A381872.P16985141578177990493

/-! ## A381872.P5933391556697986169

`A321455(n+2-A178334(n))`
-/

namespace A381872.P5933391556697986169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 ((n + 2 : ℤ) - A178334 n).toNat

end

end A381872.P5933391556697986169

/-! ## A381872.P10017185071619755883

`A321455(A250208(n+4)+n)`
-/

namespace A381872.P10017185071619755883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A250208 (n + 4) + (n : ℤ)).toNat

end

end A381872.P10017185071619755883

/-!
# A381874: Numbers whose set of divisors can be partitioned: a) into two disjoint subsets with equal sums and cardinalities, and b) into two disjoint subsets with equal products and cardinalities.

The programs for A381874, there is no canonical definition to state claims against.
-/

/-! ## A381874.P5176843469583804640

`∩[A048943(n+1), A347063(n+1)]`
-/

namespace A381874.P5176843469583804640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381874.P5176843469583804640

/-! ## A381874.P11454976142234445723

`∩[A347063(n+1), A364053(n+1)]`
-/

namespace A381874.P11454976142234445723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381874.P11454976142234445723

/-! ## A381874.P1327407922320221847

`∩[A352240(n+1), A364053(n+1)]`
-/

namespace A381874.P1327407922320221847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381874.P1327407922320221847

/-! ## A381874.P56874015393403372

`∩[A347063(n+1), A383100(n+1)]`
-/

namespace A381874.P56874015393403372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381874.P56874015393403372

/-!
# A381875: G.f. A(x) satisfies A(x) = C(x) / (1 - x*A(x))^2, where C(x) is the g.f. of A000108.

The programs for A381875, there is no canonical definition to state claims against.
-/

/-! ## A381875.P16809740511339285118

`A360150(n)+A002265(A006131(2*n))`
-/

namespace A381875.P16809740511339285118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360150 n + A002265 (A006131 (2 * n)).toNat

end

end A381875.P16809740511339285118

/-! ## A381875.P15048280400407938239

`xor(A039701(A370636(3*n+1)), A215128(n))`
-/

namespace A381875.P15048280400407938239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039701 (A370636 (3 * n + 1)).toNat) (A215128 n)

end

end A381875.P15048280400407938239

/-!
# A381876: G.f. A(x) satisfies A(x) = C(x) / (1 - x*A(x))^3, where C(x) is the g.f. of A000108.

The programs for A381876, there is no canonical definition to state claims against.
-/

/-! ## A381876.P6183839717590906278

`A108428(A023194(n+1))`
-/

namespace A381876.P6183839717590906278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108428 (A023194 (n + 1)).toNat

end

end A381876.P6183839717590906278

/-!
# A381877: G.f. A(x) satisfies A(x) = C(x) / (1 - x*A(x))^4, where C(x) is the g.f. of A000108.

The programs for A381877, there is no canonical definition to state claims against.
-/

/-! ## A381877.P170952984228398648

`A047217(A333090(n)+A306844(n+1))`
-/

namespace A381877.P170952984228398648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (A333090 n + A306844 (n + 1)).toNat

end

end A381877.P170952984228398648

/-!
# A381879: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 / C(x) ), where C(x) is the g.f. of A000108.

The programs for A381879, there is no canonical definition to state claims against.
-/

/-! ## A381879.P273907382025612264

`A022290(A060941(n))+n`
-/

namespace A381879.P273907382025612264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A060941 n).toNat + (n : ℤ)

end

end A381879.P273907382025612264

/-!
# A381880: Expansion of (1/x) * Series_Reversion( x * (1-x)^3 / C(x) ), where C(x) is the g.f. of A000108.

The programs for A381880, there is no canonical definition to state claims against.
-/

/-! ## A381880.P10638612213873586084

`A047304(A333090(n)+A129167(n))`
-/

namespace A381880.P10638612213873586084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (A333090 n + A129167 n).toNat

end

end A381880.P10638612213873586084

/-!
# A381881: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * C(x)) ), where C(x) is the g.f. of A000108.

The programs for A381881, there is no canonical definition to state claims against.
-/

/-! ## A381881.P12700902645630895895

`A365543(A328533(n+1))`
-/

namespace A381881.P12700902645630895895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365543 (A328533 (n + 1)).toNat

end

end A381881.P12700902645630895895

/-!
# A381882: Expansion of (1/x) * Series_Reversion( x / ((1+x)^3 * C(x)) ), where C(x) is the g.f. of A000108.

The programs for A381882, there is no canonical definition to state claims against.
-/

/-! ## A381882.P6595935236789112783

`A005185(A005786(n)+A000073(n))`
-/

namespace A381882.P6595935236789112783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A005786 n + A000073 n).toNat

end

end A381882.P6595935236789112783

/-!
# A381883: Triangle read by rows: T(n, k) = binomial(2*n - 1, k).

The programs for A381883, the canonical program `A381883.P1597276662483742425` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381883 has offset 0).

The definition of A381883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381883.P1597276662483742425

`A258758(n)/A100100(n)`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A381883

/-- `A258758(n)/A100100(n)` -/
def P1597276662483742425.Spec : Prop :=
  ∀ n, P1597276662483742425.a n = (A381883 n : ℚ)

end A381883

/-! ## A381883.P8002598928073447702

`A071919(A292564(n))`
-/

namespace A381883.P8002598928073447702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A292564 n).toNat

end

end A381883.P8002598928073447702

namespace A381883

/-- `A071919(A292564(n))` -/
def P8002598928073447702.Spec : Prop :=
  ∀ n, P8002598928073447702.a n = A381883 n

end A381883

/-! ## A381883.P10833101151053250127

`A135225(A292564(n)+1)`
-/

namespace A381883.P10833101151053250127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (A292564 n + 1).toNat

end

end A381883.P10833101151053250127

namespace A381883

/-- `A135225(A292564(n)+1)` -/
def P10833101151053250127.Spec : Prop :=
  ∀ n, P10833101151053250127.a n = A381883 n

end A381883

/-! ## A381883.P14888584883147029318

`A177767(A292564(n)+A057427(n))`
-/

namespace A381883.P14888584883147029318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177767 (A292564 n + A057427 n).toNat

end

end A381883.P14888584883147029318

namespace A381883

/-- `A177767(A292564(n)+A057427(n))` -/
def P14888584883147029318.Spec : Prop :=
  ∀ n, P14888584883147029318.a n = A381883 n

end A381883

/-! ## A381883.P13850496873043555515

`A007318(lt[A144643(n), A115577(2*n+5)])`
-/

namespace A381883.P13850496873043555515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115577 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381883.P13850496873043555515

namespace A381883

/-- `A007318(lt[A144643(n), A115577(2*n+5)])` -/
def P13850496873043555515.Spec : Prop :=
  ∀ n, P13850496873043555515.a n = A381883 n

end A381883

/-!
# A381884: Triangle read by rows: T(n, k) = 0 if n = 0 or k is not a quadratic residue modulo n, otherwise T(n, k) = k.

The programs for A381884, there is no canonical definition to state claims against.
-/

/-! ## A381884.P9335780385804620933

`(A373748(n)+A002262(n))/2`
-/

namespace A381884.P9335780385804620933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373748 n + A002262 n : ℚ) / 2

end

end A381884.P9335780385804620933

/-! ## A381884.P9353780561882585094

`A322338(A376499(n+1))`
-/

namespace A381884.P9353780561882585094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322338 (A376499 (n + 1)).toNat

end

end A381884.P9353780561882585094

/-! ## A381884.P13576402897300556344

`A125989(or(1, A243641(n+1)))`
-/

namespace A381884.P13576402897300556344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125989 (Int.lor 1 (A243641 (n + 1))).toNat

end

end A381884.P13576402897300556344

/-! ## A381884.P8077095960601344574

`A000035(A210574(n))*A002262(n)`
-/

namespace A381884.P8077095960601344574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A210574 n).toNat * A002262 n

end

end A381884.P8077095960601344574

/-! ## A381884.P11201727622920495592

`A378366(A249026(n))`
-/

namespace A381884.P11201727622920495592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378366 (A249026 n).toNat

end

end A381884.P11201727622920495592

/-!
# A381885: a(n) = Product_{k=2..n-1} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise is the exponent of the highest power of k that divides n.

The programs for A381885, the canonical program `A381885.P9369399217660328766` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381885 has offset 1).

The definition of A381885 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A381885.P9369399217660328766

`A364813(n+1)/(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A381885

/-- `A364813(n+1)/(n+1)` -/
def P9369399217660328766.Spec : Prop :=
  ∀ n, P9369399217660328766.a n = (A381885 (n + 1) : ℚ)

end A381885

/-! ## A381885.P9763814148968685473

`A087652(A000188(n+1))*A087652(n+1)`
-/

namespace A381885.P9763814148968685473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087652 (A000188 (n + 1)).toNat * A087652 (n + 1)

end

end A381885.P9763814148968685473

namespace A381885

/-- `A087652(A000188(n+1))*A087652(n+1)` -/
def P9763814148968685473.Spec : Prop :=
  ∀ n, P9763814148968685473.a n = A381885 (n + 1)

end A381885

/-!
# A381887: a(n) = 1 if n != p^m*(p-1) for any prime p and any m >= 0, otherwise Product_{p in W} p, where W are the primes such that n = p^m*(p-1) for some m >= 0.

The programs for A381887, there is no canonical definition to state claims against.
-/

/-! ## A381887.P17306763631296206890

`ratio[A392539(n)]`
-/

namespace A381887.P17306763631296206890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392539 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A381887.P17306763631296206890

/-! ## A381887.P6042153259539162596

`A392539(n+1)/A392539(n)`
-/

namespace A381887.P6042153259539162596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392539 (n + 1) : ℚ) / (A392539 n : ℚ)

end

end A381887.P6042153259539162596

/-!
# A381888: Triangle read by rows: T(n, k) = (n + 1) * Sum_{j=k..n} binomial(n, j) * Eulerian1(j, j - k).

The programs for A381888, there is no canonical definition to state claims against.
-/

/-! ## A381888.P6511473147079004979

`∑[char[∑[n]]]*A046802(n)`
-/

namespace A381888.P6511473147079004979
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A046802 n

end

end A381888.P6511473147079004979

/-! ## A381888.P1800660480407259834

`A046802(n)*A002024(n+1)`
-/

namespace A381888.P1800660480407259834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 n * A002024 (n + 1)

end

end A381888.P1800660480407259834

/-! ## A381888.P4995909941819857971

`(A168288(n)+A028326(n))/3*A052409(A140513(n))`
-/

namespace A381888.P4995909941819857971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168288 n + A028326 n : ℚ) / 3 * (A052409 (A140513 n).toNat : ℚ)

end

end A381888.P4995909941819857971

/-! ## A381888.P222301050582909030

`A196238(A060187(n+1))*A196238(n+1)`
-/

namespace A381888.P222301050582909030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A060187 (n + 1)).toNat * A196238 (n + 1)

end

end A381888.P222301050582909030

/-!
# A381889: Expansion of e.g.f.: (BesselI(0, 2*x) + BesselI(1, 2*x))^2*exp(2*x).

The programs for A381889, there is no canonical definition to state claims against.
-/

/-! ## A381889.P2995606524698857163

`Δ[A001057(A262607(n))]`
-/

namespace A381889.P2995606524698857163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A262607 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381889.P2995606524698857163

/-! ## A381889.P982679276873528321

`A262610(Δ[A262607(n)])`
-/

namespace A381889.P982679276873528321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (f1 (n + 1) - f1 n).toNat

end

end A381889.P982679276873528321

/-!
# A381890: Expansion of Product_{k>=1} (1 + k*x)^((1/12) * (3/4)^k).

The programs for A381890, there is no canonical definition to state claims against.
-/

/-! ## A381890.P13584045676994073353

`A040400(A000108(2*n))*A352385(n)`
-/

namespace A381890.P13584045676994073353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040400 (A000108 (2 * n)).toNat * A352385 n

end

end A381890.P13584045676994073353

/-!
# A381891: Triangle read by rows: T(n,k) is the number of partitions of a 2-colored set of n objects into at most k parts with 0 <= k <= n.

The programs for A381891, there is no canonical definition to state claims against.
-/

/-! ## A381891.P16898141988206801272

`A057428(A000129(n))+A054143(n)`
-/

namespace A381891.P16898141988206801272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000129 n).toNat + A054143 n

end

end A381891.P16898141988206801272

/-! ## A381891.P4279005789783427290

`A057428(A093835(n))+A054143(n)`
-/

namespace A381891.P4279005789783427290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A093835 n).toNat + A054143 n

end

end A381891.P4279005789783427290

/-! ## A381891.P15444774018723169589

`A054143(n)-A055396(A034386(n+1))`
-/

namespace A381891.P15444774018723169589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n - A055396 (A034386 (n + 1)).toNat

end

end A381891.P15444774018723169589

/-! ## A381891.P13790875868491057038

`A054143(n)-A127245(A069484(n+1))`
-/

namespace A381891.P13790875868491057038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n - A127245 (A069484 (n + 1)).toNat

end

end A381891.P13790875868491057038

/-! ## A381891.P15176010284351112967

`A054143(n)-A353558(A046301(n+1))`
-/

namespace A381891.P15176010284351112967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n - A353558 (A046301 (n + 1)).toNat

end

end A381891.P15176010284351112967

/-!
# A381895: Triangle read by rows: T(n, k) is the number of partitions of n with at most k parts where 0 <= k <= n, and each part is one of two kinds.

The programs for A381895, there is no canonical definition to state claims against.
-/

/-! ## A381895.P12778385487753937163

`A132969(n)%A048739(A270880(n))`
-/

namespace A381895.P12778385487753937163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132969 n) (A048739 (A270880 n).toNat)

end

end A381895.P12778385487753937163

/-! ## A381895.P12515861474441200854

`A222043(n+1)-A010872(A052940(n))`
-/

namespace A381895.P12515861474441200854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (n + 1) - A010872 (A052940 n).toNat

end

end A381895.P12515861474441200854

/-! ## A381895.P16319439727862338000

`A222153(n+1)-A055874(A033484(n))`
-/

namespace A381895.P16319439727862338000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (n + 1) - A055874 (A033484 n).toNat

end

end A381895.P16319439727862338000

/-! ## A381895.P4898691632874800555

`A222043(n+1)-A020639(A002805(n+1))`
-/

namespace A381895.P4898691632874800555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (n + 1) - A020639 (A002805 (n + 1)).toNat

end

end A381895.P4898691632874800555

/-! ## A381895.P7624389616991616374

`A222153(n+1)-A020639(A095236(n+1))`
-/

namespace A381895.P7624389616991616374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (n + 1) - A020639 (A095236 (n + 1)).toNat

end

end A381895.P7624389616991616374

/-!
# A381897: a(n) = least integer m >= 2 such that prime(n) is a sum of the form Sum_{k>=0} floor(h/m^k) for some integer h >= 1.

The programs for A381897, there is no canonical definition to state claims against.
-/

/-! ## A381897.P11778502329015318253

`A382278(A000040(n+1))`
-/

namespace A381897.P11778502329015318253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382278 (A000040 (n + 1)).toNat

end

end A381897.P11778502329015318253

/-! ## A381897.P2681734815245556936

`A382278(A390240(n))`
-/

namespace A381897.P2681734815245556936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382278 (A390240 n).toNat

end

end A381897.P2681734815245556936

/-! ## A381897.P11018312706651213335

`A382278(A030291(n+1))`
-/

namespace A381897.P11018312706651213335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382278 (A030291 (n + 1)).toNat

end

end A381897.P11018312706651213335

/-! ## A381897.P10554276233348710145

`A382278(A030475(n+1))`
-/

namespace A381897.P10554276233348710145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382278 (A030475 (n + 1)).toNat

end

end A381897.P10554276233348710145

