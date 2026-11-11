import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A381800: a(n) = number of distinct residues r mod n of numbers k such that rad(k) | n, where rad = A007947.

The programs for A381800, there is no canonical definition to state claims against.
-/

/-! ## A381800.P14704689279914345343

`1-A381802(1+n)+n`
-/

namespace A381800.P14704689279914345343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A381802 (1 + n) + (n : ℤ)

end

end A381800.P14704689279914345343

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

/-! ## A381801.P8926844974998774143

`A001221(A000079(n))*A374398(n)`
-/

namespace A381801.P8926844974998774143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 n).toNat * A374398 n

end

end A381801.P8926844974998774143

/-! ## A381801.P14053291970351378836

`A374398(n)^A000665(A156282(n))`
-/

namespace A381801.P14053291970351378836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374398 n : ℚ) ^ (A000665 (A156282 n).toNat : ℤ)

end

end A381801.P14053291970351378836

/-! ## A381801.P17246308358860176809

`A374398(A055645(n))`
-/

namespace A381801.P17246308358860176809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374398 (A055645 n).toNat

end

end A381801.P17246308358860176809

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

/-! ## A381802.P7098233044641902178

`1-A381800(1+n)+n`
-/

namespace A381802.P7098233044641902178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A381800 (1 + n) + (n : ℤ)

end

end A381802.P7098233044641902178

/-! ## A381802.P12881839529267305381

`n-A023443(A381800(n+1))`
-/

namespace A381802.P12881839529267305381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A381800 (n + 1)).toNat

end

end A381802.P12881839529267305381

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

/-! ## A381802.P13547647020248244231

`A000010(n+1)+A381803(n+1)-1`
-/

namespace A381802.P13547647020248244231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A381803 (n + 1) - 1)

end

end A381802.P13547647020248244231

/-! ## A381802.P4325549500451662656

`n+1-(A381804(n+1)+A010846(n+1))`
-/

namespace A381802.P4325549500451662656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A381804 (n + 1) + A010846 (n + 1))

end

end A381802.P4325549500451662656

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

/-! ## A381802.P14197483210212999039

`A381803(n+1)+n-∑{#}[n, 1-floor(1/gcd(n+1, #))]`
-/

namespace A381802.P14197483210212999039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381803 (n + 1) + ((n : ℤ) - ∑ k ∈ Finset.range (f1 n + 1), (1 - ⌊1 / (Nat.gcd (n + 1) k : ℚ)⌋))

end

end A381802.P14197483210212999039

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

/-! ## A381803.P17530731887328665307

`A395984(1+n)+A395900(n+1)`
-/

namespace A381803.P17530731887328665307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395984 (1 + n) + A395900 (n + 1)

end

end A381803.P17530731887328665307

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

/-! ## A381804.P16058201261924381252

`A381800(n+1)-(1-A010847(n+1)+n)`
-/

namespace A381804.P16058201261924381252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381800 (n + 1) - (1 - A010847 (n + 1) + (n : ℤ))

end

end A381804.P16058201261924381252

/-! ## A381804.P8081103577739375265

`1-A381802(n+1)+n-A010846(n+1)`
-/

namespace A381804.P8081103577739375265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A381802 (n + 1) + (n : ℤ) - A010846 (n + 1)

end

end A381804.P8081103577739375265

/-! ## A381804.P8254769248612569450

`A381800(n+1)-(A243822(n+1)+Δ[A054519(n)])`
-/

namespace A381804.P8254769248612569450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381800 (n + 1) - (A243822 (n + 1) + (f1 (n + 1) - f1 n))

end

end A381804.P8254769248612569450

/-! ## A381804.P12316697085664944175

`A300858(n+1)+A243822(n+1)-A381803(n+1)`
-/

namespace A381804.P12316697085664944175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (n + 1) + A243822 (n + 1) - A381803 (n + 1)

end

end A381804.P12316697085664944175

/-! ## A381804.P4292225708725170946

`A360480(n+1)+A360543(n+1)-A381803(n+1)`
-/

namespace A381804.P4292225708725170946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360480 (n + 1) + A360543 (n + 1) - A381803 (n + 1)

end

end A381804.P4292225708725170946

/-! ## A381804.P12079295778828618962

`A045763(n+1)-A243822(n+1)-A381803(n+1)`
-/

namespace A381804.P12079295778828618962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - A243822 (n + 1) - A381803 (n + 1)

end

end A381804.P12079295778828618962

/-! ## A381804.P608558702556162376

`A010847(n+1)+1-A000010(n+1)-A381803(n+1)`
-/

namespace A381804.P608558702556162376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010847 (n + 1) + (1 - A000010 (n + 1)) - A381803 (n + 1)

end

end A381804.P608558702556162376

/-! ## A381804.P5267286310292693433

`(A300858(n+1)+A045763(n+1))/2-A381803(n+1)`
-/

namespace A381804.P5267286310292693433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300858 (n + 1) + A045763 (n + 1) : ℚ) / 2 - (A381803 (n + 1) : ℚ)

end

end A381804.P5267286310292693433

/-! ## A381804.P3995678590069723973

`A000005(n+1)+A045763(n+1)-A010846(n+1)-A381803(n+1)`
-/

namespace A381804.P3995678590069723973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A045763 (n + 1) - A010846 (n + 1)) - A381803 (n + 1)

end

end A381804.P3995678590069723973

/-! ## A381804.P5378556135278376527

`A010846(n+1)+A300858(n+1)-A000005(n+1)-A381803(n+1)`
-/

namespace A381804.P5378556135278376527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) + (A300858 (n + 1) - A000005 (n + 1)) - A381803 (n + 1)

end

end A381804.P5378556135278376527

/-! ## A381804.P3701731509471118347

`A382138(n+1)+A381798(n+1)-A010846(n+1)`
-/

namespace A381804.P3701731509471118347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382138 (n + 1) + A381798 (n + 1) - A010846 (n + 1)

end

end A381804.P3701731509471118347

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

/-! ## A381805.P8237276472583661681

`sqrt(A382767(1+n))`
-/

namespace A381805.P8237276472583661681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A382767 (1 + n) : ℝ)

end

end A381805.P8237276472583661681

/-! ## A381805.P1261178356745689096

`A123623(∏{p}[1+n, #])`
-/

namespace A381805.P1261178356745689096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123623 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A381805.P1261178356745689096

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

/-! ## A381805.P1299918853003109350

`A007947(A382767(n+1))`
-/

namespace A381805.P1299918853003109350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A382767 (n + 1)).toNat

end

end A381805.P1299918853003109350

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

/-! ## A381805.P13519135398782492188

`A000188(A382767(n+1))`
-/

namespace A381805.P13519135398782492188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A382767 (n + 1)).toNat

end

end A381805.P13519135398782492188

/-! ## A381805.P12488747146071926726

`gcd(A285615(n+1), A382767(n+1))`
-/

namespace A381805.P12488747146071926726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285615 (n + 1)) (A382767 (n + 1))

end

end A381805.P12488747146071926726

/-!
# A381808: Number of multisets that can be obtained by choosing a strict integer partition of m for each m = 0..n and taking the multiset union.

The programs for A381808, there is no canonical definition to state claims against.
-/

/-! ## A381808.P10061182754933821341

`A070564(A139352(n)+A108304(n))`
-/

namespace A381808.P10061182754933821341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (A139352 n + A108304 n).toNat

end

end A381808.P10061182754933821341

/-! ## A381808.P12074357891243768472

`A070564(A336469(n+1)+A108304(n))`
-/

namespace A381808.P12074357891243768472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (A336469 (n + 1) + A108304 n).toNat

end

end A381808.P12074357891243768472

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

/-! ## A381811.P16060490551836567236

`fp[A336640(n)-1]-1`
-/

namespace A381811.P16060490551836567236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336640 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - 1

end

end A381811.P16060490551836567236

/-! ## A381811.P3698107800009845970

`floor((A383682(n+1)-n)/2)`
-/

namespace A381811.P3698107800009845970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A383682 (n + 1) - (n : ℤ) : ℚ) / 2⌋

end

end A381811.P3698107800009845970

/-! ## A381811.P3477506437812402552

`A006370(A383682(n+1)-(n+1))`
-/

namespace A381811.P3477506437812402552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A383682 (n + 1) - (n + 1 : ℤ)).toNat

end

end A381811.P3477506437812402552

/-! ## A381811.P456619636670446799

`A057979(A383682(n+1)+n)-n`
-/

namespace A381811.P456619636670446799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A383682 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A381811.P456619636670446799

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

/-! ## A381815.P2473062261641829324

`A326680(n)+A089319(A007283(n))`
-/

namespace A381815.P2473062261641829324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 n + A089319 (A007283 n).toNat

end

end A381815.P2473062261641829324

/-! ## A381815.P12681534837878025388

`A089319(A007283(n))%A381793(n)`
-/

namespace A381815.P12681534837878025388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089319 (A007283 n).toNat) (A381793 n)

end

end A381815.P12681534837878025388

/-!
# A381816: a(n) = (4*n^2 - (-1)^n - 2*n - 7)/4.

The programs for A381816, the canonical program `A381816.P15677550989472384551` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381816 has offset 1).

The definition of A381816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(n+1)²-(-1)^(n+1)-2*(n+1)-7)/4` (program `A381816.P14715097327986551108`, by `A381816.P14715097327986551108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381816.P15677550989472384551

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=-1, a(1)=1, a(2)=6, a(3)=12`

The canonical program, it is in `Seq.B000.C049`.
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
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

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

/-! ## A381816.P1174968160362482215

`∑[record[or(2, n)-1]]-2`
-/

namespace A381816.P1174968160362482215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A381816.P1174968160362482215

namespace A381816

/-- `∑[record[or(2, n)-1]]-2` -/
def P1174968160362482215.Spec : Prop :=
  ∀ n, P1174968160362482215.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P7186721301219368103

`∑[record[xor(2, n)-1]]-2`
-/

namespace A381816.P7186721301219368103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A381816.P7186721301219368103

namespace A381816

/-- `∑[record[xor(2, n)-1]]-2` -/
def P7186721301219368103.Spec : Prop :=
  ∀ n, P7186721301219368103.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P9158768482592398443

`∑[comp[or(2, n)-3]]-2`
-/

namespace A381816.P9158768482592398443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A381816.P9158768482592398443

namespace A381816

/-- `∑[comp[or(2, n)-3]]-2` -/
def P9158768482592398443.Spec : Prop :=
  ∀ n, P9158768482592398443.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P10985563846046059975

`∑[gcd(2, n)]-3+n²`
-/

namespace A381816.P10985563846046059975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3 + (n ^ 2 : ℤ)

end

end A381816.P10985563846046059975

namespace A381816

/-- `∑[gcd(2, n)]-3+n²` -/
def P10985563846046059975.Spec : Prop :=
  ∀ n, P10985563846046059975.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P9186001310953851227

`∑[comp[and(n, -3)]-1]-2`
-/

namespace A381816.P9186001310953851227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A381816.P9186001310953851227

namespace A381816

/-- `∑[comp[and(n, -3)]-1]-2` -/
def P9186001310953851227.Spec : Prop :=
  ∀ n, P9186001310953851227.a n = A381816 (n + 1)

end A381816

/-! ## A381816.P17300193340953393544

`∑[2*n+(n-1)%2]`
-/

namespace A381816.P17300193340953393544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381816.P17300193340953393544

namespace A381816

/-- `∑[2*n+(n-1)%2]` -/
def P17300193340953393544.Spec : Prop :=
  ∀ n, P17300193340953393544.a n = A381816 (n + 1)

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

/-!
# A381817: Expansion of (1/x) * Series_Reversion( x * (1-x) / C(x) ), where C(x) is the g.f. of A000108.

The programs for A381817, the canonical program `A381817.P3911143500432876410` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381817 has offset 0).

The definition of A381817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381817.P3911143500432876410

`∑{#}[n, C(n+2*#+1, #)*C(2*n-#, n-#)/(n+2*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381817

/-- `∑{#}[n, C(n+2*#+1, #)*C(2*n-#, n-#)/(n+2*#+1)]` -/
def P3911143500432876410.Spec : Prop :=
  ∀ n, P3911143500432876410.a n = (A381817 n : ℚ)

end A381817

/-! ## A381817.P6902785877108531943

`A074286(A378404(n)+A054352(n))`
-/

namespace A381817.P6902785877108531943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A378404 n + A054352 n).toNat

end

end A381817.P6902785877108531943

namespace A381817

/-- `A074286(A378404(n)+A054352(n))` -/
def P6902785877108531943.Spec : Prop :=
  ∀ n, P6902785877108531943.a n = A381817 n

end A381817

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

/-! ## A381819.P8092849146224387419

`∑[A094798(∑[A023887(n+1)])]`
-/

namespace A381819.P8092849146224387419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023887 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094798 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381819.P8092849146224387419

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

/-! ## A381821.P17685912838664094595

`eq[n, A381419(A028310(n))]`
-/

namespace A381821.P17685912838664094595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381419 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381821.P17685912838664094595

/-!
# A381822: Odd cubefree numbers: odd numbers that are not divisible by any cube greater than 1.

The programs for A381822, the canonical program `A381822.P13589790418829358810` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381822 has offset 1).

The definition of A381822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381822.P6311877965324571430

`filter[2*n+1, A050361(#)]`
-/

namespace A381822.P6311877965324571430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A050361 (f1 j) = 1) n)

end

end A381822.P6311877965324571430

namespace A381822

/-- `filter[2*n+1, A050361(#)]` -/
def P6311877965324571430.Spec : Prop :=
  ∀ n, (P6311877965324571430.a n : ℤ) = A381822 (n + 1)

end A381822

/-! ## A381822.P13589790418829358810

`filter[2*n+1, A212793(#)]`

The canonical program, it is in `Seq.B008.C000`.
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

/-! ## A381822.P7044943016514828752

`record[A007948(or(1, n))]`
-/

namespace A381822.P7044943016514828752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P7044943016514828752

namespace A381822

/-- `record[A007948(or(1, n))]` -/
def P7044943016514828752.Spec : Prop :=
  ∀ n, P7044943016514828752.a n = A381822 (n + 1)

end A381822

/-! ## A381822.P14923499733854947775

`record[A050985(or(1, n))]`
-/

namespace A381822.P14923499733854947775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381822.P14923499733854947775

namespace A381822

/-- `record[A050985(or(1, n))]` -/
def P14923499733854947775.Spec : Prop :=
  ∀ n, P14923499733854947775.a n = A381822 (n + 1)

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

/-! ## A381822.P16215530667400484916

`filter[2*n+1, A008834(#)]`
-/

namespace A381822.P16215530667400484916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008834 (f1 j) = 1) n)

end

end A381822.P16215530667400484916

namespace A381822

/-- `filter[2*n+1, A008834(#)]` -/
def P16215530667400484916.Spec : Prop :=
  ∀ n, (P16215530667400484916.a n : ℤ) = A381822 (n + 1)

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

/-!
# A381823: Odd cubefree numbers that are not squarefree.

The programs for A381823, the canonical program `A381823.P9333839630862203631` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381823 has offset 1).

The definition of A381823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7009 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381823.P12101735054402365186

`filter[2*n+1, A359429(#)]`
-/

namespace A381823.P12101735054402365186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j) = 1) n)

end

end A381823.P12101735054402365186

namespace A381823

/-- `filter[2*n+1, A359429(#)]` -/
def P12101735054402365186.Spec : Prop :=
  ∀ n, (P12101735054402365186.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P9333839630862203631

`filter[A053850(n+1), A212793(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A381823

/-- `filter[A053850(n+1), A212793(#)]` -/
def P9333839630862203631.Spec : Prop :=
  ∀ n, P9333839630862203631.a n = A381823 (n + 1)

theorem P9333839630862203631.correct : P9333839630862203631.Spec := by
  intro n
  simp only [A381823, Nat.add_sub_cancel]

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

/-! ## A381823.P14316651912549393341

`∩[A074661(n+1), A381950(n+1)]`
-/

namespace A381823.P14316651912549393341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P14316651912549393341

namespace A381823

/-- `∩[A074661(n+1), A381950(n+1)]` -/
def P14316651912549393341.Spec : Prop :=
  ∀ n, (P14316651912549393341.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P6210808469048373019

`∩[A067259(n+1), A381956(n+1)]`
-/

namespace A381823.P6210808469048373019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P6210808469048373019

namespace A381823

/-- `∩[A067259(n+1), A381956(n+1)]` -/
def P6210808469048373019.Spec : Prop :=
  ∀ n, (P6210808469048373019.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P16469204014227871164

`∩[A067259(n+1), A071904(n+1)]`
-/

namespace A381823.P16469204014227871164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P16469204014227871164

namespace A381823

/-- `∩[A067259(n+1), A071904(n+1)]` -/
def P16469204014227871164.Spec : Prop :=
  ∀ n, (P16469204014227871164.a n : ℤ) = A381823 (n + 1)

end A381823

/-! ## A381823.P14083970478337169483

`∩[A067259(n+1), A255763(n+1)]`
-/

namespace A381823.P14083970478337169483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381823.P14083970478337169483

namespace A381823

/-- `∩[A067259(n+1), A255763(n+1)]` -/
def P14083970478337169483.Spec : Prop :=
  ∀ n, (P14083970478337169483.a n : ℤ) = A381823 (n + 1)

end A381823

/-!
# A381824: Odd cubefull numbers: odd numbers that are divisible by the cube of any of their prime factors.

The programs for A381824, there is no canonical definition to state claims against.
-/

/-! ## A381824.P13954467696565407775

`filter[A036966(n+1), #%2]`
-/

namespace A381824.P13954467696565407775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A381824.P13954467696565407775

/-! ## A381824.P7500870841540473885

`A036966(lt[(A036966(n+1)+1)%2, 1]+1)`
-/

namespace A381824.P7500870841540473885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036966 (n + 1) + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A381824.P7500870841540473885

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

/-! ## A381825.P11700825750225175452

`filter[A335988(n+1), A374136(#)]`
-/

namespace A381825.P11700825750225175452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374136 (f1 j).toNat = 1) n)

end

end A381825.P11700825750225175452

/-!
# A381826: G.f. A(x) satisfies A(x) = C(x) / (1 - x*A(x)^2), where C(x) is the g.f. of A000108.

The programs for A381826, the canonical program `A381826.P5204924152146410543` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381826 has offset 0).

The definition of A381826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381826.P5204924152146410543

`1/(2*n+1)*∑{#}[n, C(2*n+1, #)*C(3*n-3*#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381826

/-- `1/(2*n+1)*∑{#}[n, C(2*n+1, #)*C(3*n-3*#, n-#)]` -/
def P5204924152146410543.Spec : Prop :=
  ∀ n, P5204924152146410543.a n = (A381826 n : ℚ)

end A381826

/-! ## A381826.P3181815403408321886

`A005374(A100982(n+1)+A000172(n))`
-/

namespace A381826.P3181815403408321886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A100982 (n + 1) + A000172 n).toNat

end

end A381826.P3181815403408321886

namespace A381826

/-- `A005374(A100982(n+1)+A000172(n))` -/
def P3181815403408321886.Spec : Prop :=
  ∀ n, P3181815403408321886.a n = A381826 n

end A381826

/-!
# A381827: G.f. A(x) satisfies A(x) = C(x) / (1 - x*A(x)^3), where C(x) is the g.f. of A000108.

The programs for A381827, the canonical program `A381827.P16166928545862177623` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381827 has offset 0).

The definition of A381827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381827.P16166928545862177623

`∑{#}[n, C(3*n-#+1, #)*C(4*n-4*#, n-#)/(3*n-#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381827

/-- `∑{#}[n, C(3*n-#+1, #)*C(4*n-4*#, n-#)/(3*n-#+1)]` -/
def P16166928545862177623.Spec : Prop :=
  ∀ n, P16166928545862177623.a n = (A381827 n : ℚ)

end A381827

/-!
# A381828: Expansion of ( (1/x) * Series_Reversion( x * ((1-x) * (1-x+x^2))^2 ) )^(1/2).

The programs for A381828, the canonical program `A381828.P6253874319642142830` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381828 has offset 0).

The definition of A381828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381828.P6253874319642142830

`∑{#}[n, C(2*n+#+1, #)*C(3*n-2*#, n-#)/(2*n+#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381828

/-- `∑{#}[n, C(2*n+#+1, #)*C(3*n-2*#, n-#)/(2*n+#+1)]` -/
def P6253874319642142830.Spec : Prop :=
  ∀ n, P6253874319642142830.a n = (A381828 n : ℚ)

end A381828

/-! ## A381828.P13304484369334727644

`A396416(n)-A118763(A051118(n))`
-/

namespace A381828.P13304484369334727644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396416 n - A118763 (A051118 n).toNat

end

end A381828.P13304484369334727644

namespace A381828

/-- `A396416(n)-A118763(A051118(n))` -/
def P13304484369334727644.Spec : Prop :=
  ∀ n, P13304484369334727644.a n = A381828 n

end A381828

/-!
# A381829: G.f. A(x) satisfies A(x) = C(x*A(x)) / (1 - x*A(x)^3), where C(x) is the g.f. of A000108.

The programs for A381829, the canonical program `A381829.P5567933173431233869` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381829 has offset 0).

The definition of A381829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381829.P5567933173431233869

`1/(3*n+1)*∑{#}[n, C(3*n+1, #)*C(4*n-3*#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381829

/-- `1/(3*n+1)*∑{#}[n, C(3*n+1, #)*C(4*n-3*#, n-#)]` -/
def P5567933173431233869.Spec : Prop :=
  ∀ n, P5567933173431233869.a n = (A381829 n : ℚ)

end A381829

/-!
# A381830: G.f. A(x) satisfies A(x) = C(x*A(x)^2) / (1 - x*A(x)), where C(x) is the g.f. of A000108.

The programs for A381830, the canonical program `A381830.P10483208633211453787` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381830 has offset 0).

The definition of A381830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381830.P10483208633211453787

`∑{#}[n, C(n+3*#+1, #)*C(2*n, n-#)/(n+3*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381830

/-- `∑{#}[n, C(n+3*#+1, #)*C(2*n, n-#)/(n+3*#+1)]` -/
def P10483208633211453787.Spec : Prop :=
  ∀ n, P10483208633211453787.a n = (A381830 n : ℚ)

end A381830

/-!
# A381831: Expansion of ( (1/x) * Series_Reversion( x * ((1-x) * (1-x+x^2))^3 ) )^(1/3).

The programs for A381831, the canonical program `A381831.P15153985016719470021` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381831 has offset 0).

The definition of A381831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381831.P15153985016719470021

`∑{#}[n, C(3*n+#+1, #)*C(4*n-2*#, n-#)/(3*n+#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381831

/-- `∑{#}[n, C(3*n+#+1, #)*C(4*n-2*#, n-#)/(3*n+#+1)]` -/
def P15153985016719470021.Spec : Prop :=
  ∀ n, P15153985016719470021.a n = (A381831 n : ℚ)

end A381831

/-! ## A381831.P6102365568830659758

`A144097(n)-A011371(A327227(n))`
-/

namespace A381831.P6102365568830659758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144097 n - A011371 (A327227 n).toNat

end

end A381831.P6102365568830659758

namespace A381831

/-- `A144097(n)-A011371(A327227(n))` -/
def P6102365568830659758.Spec : Prop :=
  ∀ n, P6102365568830659758.a n = A381831 n

end A381831

/-!
# A381832: G.f. A(x) satisfies A(x) = C(x*A(x)^3) / (1 - x), where C(x) is the g.f. of A000108.

The programs for A381832, the canonical program `A381832.P6039202854270646018` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381832 has offset 0).

The definition of A381832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381832.P6039202854270646018

`∑{#}[n, C(5*#+1, #)*C(n+2*#, n-#)/(5*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381832

/-- `∑{#}[n, C(5*#+1, #)*C(n+2*#, n-#)/(5*#+1)]` -/
def P6039202854270646018.Spec : Prop :=
  ∀ n, P6039202854270646018.a n = (A381832 n : ℚ)

end A381832

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

/-! ## A381838.P12810412095098974361

`record[A078644(A003023(n+1)+A080907(n+1))]`
-/

namespace A381838.P12810412095098974361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (A003023 (n + 1) + A080907 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381838.P12810412095098974361

/-! ## A381838.P1760234321258315042

`lt[A053735(n), A332202(A005843(n))]`
-/

namespace A381838.P1760234321258315042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332202 (A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381838.P1760234321258315042

/-! ## A381838.P8267014866663519637

`A260194(n+2)*A343249(A003945(n))`
-/

namespace A381838.P8267014866663519637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260194 (n + 2) * A343249 (A003945 n).toNat

end

end A381838.P8267014866663519637

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

/-! ## A381840.P14709687356488515793

`A356874(A275707(n))`
-/

namespace A381840.P14709687356488515793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A275707 n).toNat

end

end A381840.P14709687356488515793

/-!
# A381841: Position of the n-th occurrence of the digit 3 in A105083(n-1) for n>=1.

The programs for A381841, the canonical program `A381841.P11592063328882471830` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381841 has offset 1).

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

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A381841

/-- `A136495(n+1)+A136496(n+1)` -/
def P11592063328882471830.Spec : Prop :=
  ∀ n, P11592063328882471830.a n = A381841 (n + 1)

theorem P11592063328882471830.correct : P11592063328882471830.Spec := by
  intro n
  simp only [A381841, Nat.add_sub_cancel]

end A381841

/-! ## A381841.P17608723614933270316

`1+A064105(n+1)`
-/

namespace A381841.P17608723614933270316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A064105 (n + 1)

end

end A381841.P17608723614933270316

namespace A381841

/-- `1+A064105(n+1)` -/
def P17608723614933270316.Spec : Prop :=
  ∀ n, P17608723614933270316.a n = A381841 (n + 1)

theorem P17608723614933270316.correct : P17608723614933270316.Spec := by
  intro n
  simp only [A381841, Nat.add_sub_cancel, A381841.P17608723614933270316.a, A381841.P11592063328882471830.a, A064105, A064105.P10505817968738943948.a, A136495, A136495.P596664169401550958.a, A136496, A136496.P805941965056846939.a, A005374, A005374.P13862197180797613727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-! ## A381841.P14314897088407029536

`eq[2, runs[A372758(n+1)]]`
-/

namespace A381841.P14314897088407029536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381841.P14314897088407029536

namespace A381841

/-- `eq[2, runs[A372758(n+1)]]` -/
def P14314897088407029536.Spec : Prop :=
  ∀ n, (P14314897088407029536.a n : ℤ) = A381841 (n + 1)

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

/-! ## A381841.P16877396976028879997

`A372759(A372750(n+1))+2`
-/

namespace A381841.P16877396976028879997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372759 (A372750 (n + 1)).toNat + 2

end

end A381841.P16877396976028879997

namespace A381841

/-- `A372759(A372750(n+1))+2` -/
def P16877396976028879997.Spec : Prop :=
  ∀ n, P16877396976028879997.a n = A381841 (n + 1)

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

/-! ## A381844.P16753884066940890770

`A380487(n+1)/A001414(A380487(n+1))`
-/

namespace A381844.P16753884066940890770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380487 (n + 1) : ℚ) / (A001414 (A380487 (n + 1)).toNat : ℚ)

end

end A381844.P16753884066940890770

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

/-! ## A381845.P17882383230031588073

`A000165(n)/∏{e}[A004253(n+1), #]`
-/

namespace A381845.P17882383230031588073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A381845.P17882383230031588073

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

/-! ## A381846.P7912587405679748194

`A000108(n)*C(A131428(n), 2)`
-/

namespace A381846.P7912587405679748194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (Nat.choose (A131428 n).toNat 2 : ℤ)

end

end A381846.P7912587405679748194

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

/-! ## A381846.P827497842116115590

`A011886(2*(2*n)!/(n!*(n+1)!))`
-/

namespace A381846.P827497842116115590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (SequenceMachineLib.roundAway (2 * ((Nat.factorial (2 * n) : ℚ) / (Nat.factorial n * Nat.factorial (n + 1) : ℚ)))).toNat

end

end A381846.P827497842116115590

/-!
# A381847: Number of 3 element sets of distinct integer sided rectangles that fill an n X n square.

The programs for A381847, the canonical program `A381847.P8974024418500194249` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381847 has offset 1).

The definition of A381847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381847.P8974024418500194249

`ogf((2x^2+3x^3+4x^4+3x^5+2x^6)/(1-2x^2-x^3+x^4+2x^5-x^7))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381847

/-- `ogf((2x^2+3x^3+4x^4+3x^5+2x^6)/(1-2x^2-x^3+x^4+2x^5-x^7))` -/
def P8974024418500194249.Spec : Prop :=
  ∀ n, P8974024418500194249.a n = A381847 (n + 1)

theorem P8974024418500194249.correct : P8974024418500194249.Spec := by
  intro n
  simp only [A381847, Nat.add_sub_cancel]

end A381847

/-! ## A381847.P513493333679791205

`n-n%2+floor(n/2)*(n-2)+round((n-2)²/12)`
-/

namespace A381847.P513493333679791205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 2 : ℕ) : ℤ) + (⌊(n : ℚ) / 2⌋ * ((n : ℤ) - 2) + SequenceMachineLib.roundAway ((((n : ℤ) - 2) ^ 2 : ℚ) / 12))

end

end A381847.P513493333679791205

namespace A381847

/-- `n-n%2+floor(n/2)*(n-2)+round((n-2)²/12)` -/
def P513493333679791205.Spec : Prop :=
  ∀ n, P513493333679791205.a n = A381847 (n + 1)

end A381847

/-! ## A381847.P2365327993547496643

`A387598(n+1)+and(n, -2)`
-/

namespace A381847.P2365327993547496643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387598 (n + 1) + Int.land (n : ℤ) (-2)

end

end A381847.P2365327993547496643

namespace A381847

/-- `A387598(n+1)+and(n, -2)` -/
def P2365327993547496643.Spec : Prop :=
  ∀ n, P2365327993547496643.a n = A381847 (n + 1)

end A381847

/-! ## A381847.P16680921954800864458

`A387598(1+n)+A052928(n)`
-/

namespace A381847.P16680921954800864458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387598 (1 + n) + A052928 n

end

end A381847.P16680921954800864458

namespace A381847

/-- `A387598(1+n)+A052928(n)` -/
def P16680921954800864458.Spec : Prop :=
  ∀ n, P16680921954800864458.a n = A381847 (n + 1)

end A381847

/-! ## A381847.P15233431523096336141

`A211540(n)+n*A004526(n)`
-/

namespace A381847.P15233431523096336141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n + (n : ℤ) * A004526 n

end

end A381847.P15233431523096336141

namespace A381847

/-- `A211540(n)+n*A004526(n)` -/
def P15233431523096336141.Spec : Prop :=
  ∀ n, P15233431523096336141.a n = A381847 (n + 1)

end A381847

/-! ## A381847.P10247162325419620867

`A387598(n+1)+2*A004526(n)`
-/

namespace A381847.P10247162325419620867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387598 (n + 1) + 2 * A004526 n

end

end A381847.P10247162325419620867

namespace A381847

/-- `A387598(n+1)+2*A004526(n)` -/
def P10247162325419620867.Spec : Prop :=
  ∀ n, P10247162325419620867.a n = A381847 (n + 1)

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

/-! ## A381848.P267416334735810865

`A019300(n+2)%8-1`
-/

namespace A381848.P267416334735810865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019300 (n + 2)) 8 - 1

end

end A381848.P267416334735810865

namespace A381848

/-- `A019300(n+2)%8-1` -/
def P267416334735810865.Spec : Prop :=
  ∀ n, P267416334735810865.a n = A381848 (n + 1)

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

/-! ## A381849.P11502695956416297016

`∩[A067128(n+1), A242298(n+1)]`
-/

namespace A381849.P11502695956416297016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381849.P11502695956416297016

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

/-! ## A381850.P11121185469384047632

`A383652(A062399(n)+3)`
-/

namespace A381850.P11121185469384047632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383652 (A062399 n + 3).toNat

end

end A381850.P11121185469384047632

/-! ## A381850.P4935868793266647044

`A001097(A062399(n)+10)`
-/

namespace A381850.P4935868793266647044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A062399 n + 10).toNat

end

end A381850.P4935868793266647044

/-! ## A381850.P12100890488101710673

`A001097(A351870(n)+10)`
-/

namespace A381850.P12100890488101710673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A351870 n + 10).toNat

end

end A381850.P12100890488101710673

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

The programs for A381852, the canonical program `A381852.P9783243754932668671` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381852 has offset 0).

The definition of A381852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381852.P11933519801510057581

`A361676(A342126(n))-A087734(n)`
-/

namespace A381852.P11933519801510057581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361676 (A342126 n).toNat - A087734 n

end

end A381852.P11933519801510057581

namespace A381852

/-- `A361676(A342126(n))-A087734(n)` -/
def P11933519801510057581.Spec : Prop :=
  ∀ n, P11933519801510057581.a n = A381852 n

end A381852

/-! ## A381852.P4358804688498976215

`A059894(A145342(1+n))%A062383(n)`
-/

namespace A381852.P4358804688498976215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059894 (A145342 (1 + n)).toNat) (A062383 n)

end

end A381852.P4358804688498976215

namespace A381852

/-- `A059894(A145342(1+n))%A062383(n)` -/
def P4358804688498976215.Spec : Prop :=
  ∀ n, P4358804688498976215.a n = A381852 n

end A381852

/-! ## A381852.P9783243754932668671

`A053644(2*n+1)-A049773(A049773(2*n+1))`

The canonical program, it is in `Seq.B006.C001`.
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

/-! ## A381852.P475944391864062084

`A026741(A381839(2*n))`
-/

namespace A381852.P475944391864062084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A381839 (2 * n)).toNat

end

end A381852.P475944391864062084

namespace A381852

/-- `A026741(A381839(2*n))` -/
def P475944391864062084.Spec : Prop :=
  ∀ n, P475944391864062084.a n = A381852 n

end A381852

/-! ## A381852.P11802435816121998524

`A153141(∏[char[2^n]+char[1]+1]-n-1)`
-/

namespace A381852.P11802435816121998524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ((if ∃ j, f3 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A381852.P11802435816121998524

namespace A381852

/-- `A153141(∏[char[2^n]+char[1]+1]-n-1)` -/
def P11802435816121998524.Spec : Prop :=
  ∀ n, P11802435816121998524.a n = A381852 n

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

/-! ## A381852.P9806553203966891857

`A035327(A115352(n)+A062383(n))`
-/

namespace A381852.P9806553203966891857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A115352 n + A062383 n).toNat

end

end A381852.P9806553203966891857

namespace A381852

/-- `A035327(A115352(n)+A062383(n))` -/
def P9806553203966891857.Spec : Prop :=
  ∀ n, P9806553203966891857.a n = A381852 n

end A381852

/-!
# A381853: Expansion of 1/( Product_{k=0..3} (1 + (-1)^k * (2*k+1) * x) ).

The programs for A381853, the canonical program `A381853.P7210179903537602605` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381853 has offset 0).

The definition of A381853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381853.P7210179903537602605

`4*a(n-1)+34*a(n-2)-76*a(n-3)-105*a(n-4)` with `a(0)=1, a(1)=4, a(2)=50, a(3)=260`

The canonical program, it is in `Seq.B000.C049`.
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
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A381853

/-!
# A381856: Lexicographically earliest sequence of positive integers such that for any value k, no two sets of two or more indices at which k occurs have the same standard deviation.

The programs for A381856, there is no canonical definition to state claims against.
-/

/-! ## A381856.P18249448560363385163

`A001221(A133041(3*n)+A035947(n+1))`
-/

namespace A381856.P18249448560363385163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A133041 (3 * n) + A035947 (n + 1)).toNat

end

end A381856.P18249448560363385163

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

/-! ## A381857.P9356236371742139496

`2^n²-A089980(∑[4*n])`
-/

namespace A381857.P9356236371742139496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) - A089980 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A381857.P9356236371742139496

/-! ## A381857.P16022139748336609552

`abs(A006506(n)-A002416(n))`
-/

namespace A381857.P16022139748336609552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006506 n - A002416 n|

end

end A381857.P16022139748336609552

/-!
# A381858: a(n) is the number of permutations of [n] that avoid 312 and 4321 and whose square avoids 231.

The programs for A381858, the canonical program `A381858.P1523628822787463049` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381858 has offset 0).

The definition of A381858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381858.P1523628822787463049

`ogf(1/(1-x-x^2-2x^3-3x^4-2x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381858

/-- `ogf(1/(1-x-x^2-2x^3-3x^4-2x^5))` -/
def P1523628822787463049.Spec : Prop :=
  ∀ n, P1523628822787463049.a n = A381858 n

theorem P1523628822787463049.correct : P1523628822787463049.Spec := by
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

/-! ## A381858.P3489250896846861584

`A071860(A399989(n))`
-/

namespace A381858.P3489250896846861584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A399989 n).toNat

end

end A381858.P3489250896846861584

namespace A381858

/-- `A071860(A399989(n))` -/
def P3489250896846861584.Spec : Prop :=
  ∀ n, P3489250896846861584.a n = A381858 n

end A381858

/-! ## A381858.P2378956906770298254

`A002024(A359405(n+1)-n+1)`
-/

namespace A381858.P2378956906770298254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A359405 (n + 1) - (n : ℤ) + 1).toNat

end

end A381858.P2378956906770298254

namespace A381858

/-- `A002024(A359405(n+1)-n+1)` -/
def P2378956906770298254.Spec : Prop :=
  ∀ n, P2378956906770298254.a n = A381858 n

end A381858

/-!
# A381859: a(n) is the number of permutations that avoid 312 and 4321 and whose square avoids 321.

The programs for A381859, the canonical program `A381859.P16535085206288445222` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381859 has offset 0).

The definition of A381859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381859.P16535085206288445222

`ogf((1-x)/(1-2x-x^3+x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381859

/-- `ogf((1-x)/(1-2x-x^3+x^5))` -/
def P16535085206288445222.Spec : Prop :=
  ∀ n, P16535085206288445222.a n = A381859 n

theorem P16535085206288445222.correct : P16535085206288445222.Spec := by
  intro n
  simp only [A381859]

end A381859

/-! ## A381859.P6441205550039416616

`row(A372376(n)-A129714(A361839(n)))`
-/

namespace A381859.P6441205550039416616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A372376 n - A129714 (A361839 n).toNat).toNat

end

end A381859.P6441205550039416616

namespace A381859

/-- `row(A372376(n)-A129714(A361839(n)))` -/
def P6441205550039416616.Spec : Prop :=
  ∀ n, (P6441205550039416616.a n : ℤ) = A381859 n

end A381859

/-! ## A381859.P16611625025995210042

`row(A372376(n))%A034856(A091592(n+4))`
-/

namespace A381859.P16611625025995210042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.triRow (A372376 n).toNat : ℤ) (A034856 (A091592 (n + 4)).toNat)

end

end A381859.P16611625025995210042

namespace A381859

/-- `row(A372376(n))%A034856(A091592(n+4))` -/
def P16611625025995210042.Spec : Prop :=
  ∀ n, P16611625025995210042.a n = A381859 n

end A381859

/-! ## A381859.P9119496884328244378

`row(A372376(n)%A034856(A181595(2*n+5)))`
-/

namespace A381859.P9119496884328244378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Int.tmod (A372376 n) (A034856 (A181595 (2 * n + 5)).toNat)).toNat

end

end A381859.P9119496884328244378

namespace A381859

/-- `row(A372376(n)%A034856(A181595(2*n+5)))` -/
def P9119496884328244378.Spec : Prop :=
  ∀ n, (P9119496884328244378.a n : ℤ) = A381859 n

end A381859

/-!
# A381860: G.f. A(x) satisfies A(x) = (1 + x)^3 * C(x*A(x)), where C(x) is the g.f. of A000108.

The programs for A381860, the canonical program `A381860.P4764169323204219661` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381860 has offset 0).

The definition of A381860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381860.P4764169323204219661

`∑{#}[n, C(3*#+1, #)*C(3*#+3, n-#)/(3*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381860

/-- `∑{#}[n, C(3*#+1, #)*C(3*#+3, n-#)/(3*#+1)]` -/
def P4764169323204219661.Spec : Prop :=
  ∀ n, P4764169323204219661.a n = (A381860 n : ℚ)

end A381860

/-!
# A381861: G.f. A(x) satisfies A(x) = (1 + x*A(x))^4 * C(x), where C(x) is the g.f. of A000108.

The programs for A381861, the canonical program `A381861.P470335340121845540` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381861 has offset 0).

The definition of A381861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381861.P470335340121845540

`∑{#}[n, C(n+#+1, #)*C(4*n-4*#+4, n-#)/(n+#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381861

/-- `∑{#}[n, C(n+#+1, #)*C(4*n-4*#+4, n-#)/(n+#+1)]` -/
def P470335340121845540.Spec : Prop :=
  ∀ n, P470335340121845540.a n = (A381861 n : ℚ)

end A381861

/-!
# A381862: Number of pairs of triangles that are pairwise edge-disjoint in the complete graph K_n.

The programs for A381862, the canonical program `A381862.P17529336584558989778` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381862 has offset 5).

The definition of A381862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381862.P8217095146239721572

`ogf((15-5x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A381862.P8217095146239721572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -5] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A381862.P8217095146239721572

namespace A381862

/-- `ogf((15-5x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P8217095146239721572.Spec : Prop :=
  ∀ n, P8217095146239721572.a n = A381862 (n + 5)

end A381862

/-! ## A381862.P17529336584558989778

`10*C(n+5, 6)+3*(n+5)*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C049`.
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

The programs for A381863, the canonical program `A381863.P5944000613591666085` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381863 has offset 6).

The definition of A381863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381863.P5944000613591666085

`120*C(n+6, 6)+735*C(n+6, 7)+840*C(n+6, 8)+280*C(n+6, 9)`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A381866.P8753150624564928805

`C(1+4*n, 5)*a(n-1)` with `a(0)=1`
-/

namespace A381866.P8753150624564928805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (1 + 4 * n) 5 * a (n - 1)

end

end A381866.P8753150624564928805

/-!
# A381867: G.f. A(x) satisfies A(x) = C(x*A(x)) / (1 - x)^2, where C(x) is the g.f. of A000108.

The programs for A381867, the canonical program `A381867.P8548501267266695515` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381867 has offset 0).

The definition of A381867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381867.P8548501267266695515

`∑{#}[n, C(3*#+1, #)*C(n+#+1, n-#)/(3*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381867

/-- `∑{#}[n, C(3*#+1, #)*C(n+#+1, n-#)/(3*#+1)]` -/
def P8548501267266695515.Spec : Prop :=
  ∀ n, P8548501267266695515.a n = (A381867 n : ℚ)

end A381867

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

namespace A381867

/-- `∑[A199475(n)]` -/
def P4006523972206420893.Spec : Prop :=
  ∀ n, P4006523972206420893.a n = A381867 n

end A381867

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

namespace A381867

/-- `∑[∑[A366176(n)]]` -/
def P8798116161261766145.Spec : Prop :=
  ∀ n, P8798116161261766145.a n = A381867 n

end A381867

/-! ## A381867.P10181160071439231349

`∑{#}[n, C(n, #)*A381787(#)]`
-/

namespace A381867.P10181160071439231349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A381787 k

end

end A381867.P10181160071439231349

namespace A381867

/-- `∑{#}[n, C(n, #)*A381787(#)]` -/
def P10181160071439231349.Spec : Prop :=
  ∀ n, P10181160071439231349.a n = A381867 n

end A381867

/-! ## A381867.P2651772084901687590

`∑[∑{#}[n, C(n+#, n-#)*C(3*#, #)/(2*#+1)]]`
-/

namespace A381867.P2651772084901687590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1), (Nat.choose (n + k) ((n : ℤ) - (k : ℤ)).toNat * Nat.choose (3 * k) k : ℚ) / (2 * k + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381867.P2651772084901687590

namespace A381867

/-- `∑[∑{#}[n, C(n+#, n-#)*C(3*#, #)/(2*#+1)]]` -/
def P2651772084901687590.Spec : Prop :=
  ∀ n, P2651772084901687590.a n = (A381867 n : ℚ)

end A381867

/-!
# A381871: Numbers whose prime indices cannot be partitioned into constant blocks having a common sum.

The programs for A381871, there is no canonical definition to state claims against.
-/

/-! ## A381871.P13774463061907842706

`comp[A383014(1+n)-1]+1`
-/

namespace A381871.P13774463061907842706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383014 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A381871.P13774463061907842706

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

/-! ## A381871.P18277113522973104268

`A383100(n+1)+A309686(A000120(n))`
-/

namespace A381871.P18277113522973104268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1) + A309686 (A000120 n).toNat

end

end A381871.P18277113522973104268

/-! ## A381871.P4896984352787258788

`A383100(n+1)+A027562(A368332(n+1))`
-/

namespace A381871.P4896984352787258788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1) + A027562 (A368332 (n + 1)).toNat

end

end A381871.P4896984352787258788

/-! ## A381871.P7077583230162565549

`A383100(n+1)+A332870(A071178(n+1))`
-/

namespace A381871.P7077583230162565549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1) + A332870 (A071178 (n + 1)).toNat

end

end A381871.P7077583230162565549

/-! ## A381871.P1538748357898541711

`A383100(n+1)+A328037(A328037(n+2))`
-/

namespace A381871.P1538748357898541711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1) + A328037 (A328037 (n + 2)).toNat

end

end A381871.P1538748357898541711

/-! ## A381871.P476252283579872116

`fp[fp[A383100(n+1)]]`
-/

namespace A381871.P476252283579872116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f1 j) 0

end

end A381871.P476252283579872116

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

/-! ## A381872.P5857409411302072132

`A321455(n-floor(n/100)*40+1)`
-/

namespace A381872.P5857409411302072132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 ((n : ℤ) - ⌊(n : ℚ) / 100⌋ * 40 + 1).toNat

end

end A381872.P5857409411302072132

/-! ## A381872.P1285063764975082792

`A321455(1+n)*a(and(∑[2*n+1], n-1))` with `a(0)=1`
-/

namespace A381872.P1285063764975082792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A321455 (1 + n) * a (Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((n : ℤ) - 1)).toNat

end

end A381872.P1285063764975082792

/-! ## A381872.P12794579775352152274

`A321455(n+1)^A178334(n)`
-/

namespace A381872.P12794579775352152274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321455 (n + 1) : ℚ) ^ (A178334 n : ℤ)

end

end A381872.P12794579775352152274

/-! ## A381872.P2685833049946282542

`A178334(n+2)*A321455(n+1)`
-/

namespace A381872.P2685833049946282542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 2) * A321455 (n + 1)

end

end A381872.P2685833049946282542

/-! ## A381872.P16304411246125866294

`A321455(n+1)+2%A321455(3*n+5)`
-/

namespace A381872.P16304411246125866294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (n + 1) + Int.tmod 2 (A321455 (3 * n + 5))

end

end A381872.P16304411246125866294

/-! ## A381872.P8121976115149660694

`A321455(n+1)+A174615(A065712(n))`
-/

namespace A381872.P8121976115149660694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (n + 1) + A174615 (A065712 n).toNat

end

end A381872.P8121976115149660694

/-! ## A381872.P7603378324039425177

`A053632(A053632(n))*A321455(n+1)`
-/

namespace A381872.P7603378324039425177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 (A053632 n).toNat * A321455 (n + 1)

end

end A381872.P7603378324039425177

/-! ## A381872.P12316255985037610072

`A321455(n+1)+A059365(A116857(n+1))`
-/

namespace A381872.P12316255985037610072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (n + 1) + A059365 (A116857 (n + 1)).toNat

end

end A381872.P12316255985037610072

/-! ## A381872.P14309033534006542464

`A321455(n+1)+A174615(A045778(n+1))`
-/

namespace A381872.P14309033534006542464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (n + 1) + A174615 (A045778 (n + 1)).toNat

end

end A381872.P14309033534006542464

/-!
# A381873: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest unused positive number that shares a factor with a(n-1) while containing at most two distinct prime factors.

The programs for A381873, there is no canonical definition to state claims against.
-/

/-! ## A381873.P68057947868792128

`A184964(A201075(2*(n+1)))+A064413(n+1)`
-/

namespace A381873.P68057947868792128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A201075 (2 * (n + 1))).toNat + A064413 (n + 1)

end

end A381873.P68057947868792128

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

The programs for A381875, the canonical program `A381875.P14405649967490041637` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381875 has offset 0).

The definition of A381875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381875.P14405649967490041637

`∑{#}[n, C(n+#+1, #)*C(3*n-3*#+1, n-#)/(n+#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381875

/-- `∑{#}[n, C(n+#+1, #)*C(3*n-3*#+1, n-#)/(n+#+1)]` -/
def P14405649967490041637.Spec : Prop :=
  ∀ n, P14405649967490041637.a n = (A381875 n : ℚ)

end A381875

/-! ## A381875.P16809740511339285118

`A360150(n)+A002265(A006131(2*n))`
-/

namespace A381875.P16809740511339285118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360150 n + A002265 (A006131 (2 * n)).toNat

end

end A381875.P16809740511339285118

namespace A381875

/-- `A360150(n)+A002265(A006131(2*n))` -/
def P16809740511339285118.Spec : Prop :=
  ∀ n, P16809740511339285118.a n = A381875 n

end A381875

/-!
# A381876: G.f. A(x) satisfies A(x) = C(x) / (1 - x*A(x))^3, where C(x) is the g.f. of A000108.

The programs for A381876, the canonical program `A381876.P11200504735438419950` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381876 has offset 0).

The definition of A381876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381876.P11200504735438419950

`∑{#}[n, C(n+#+1, #)*C(4*n-4*#+2, n-#)/(n+#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381876

/-- `∑{#}[n, C(n+#+1, #)*C(4*n-4*#+2, n-#)/(n+#+1)]` -/
def P11200504735438419950.Spec : Prop :=
  ∀ n, P11200504735438419950.a n = (A381876 n : ℚ)

end A381876

/-!
# A381877: G.f. A(x) satisfies A(x) = C(x) / (1 - x*A(x))^4, where C(x) is the g.f. of A000108.

The programs for A381877, the canonical program `A381877.P423593070194436466` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381877 has offset 0).

The definition of A381877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381877.P423593070194436466

`∑{#}[n, C(n+#+1, #)*C(5*n-5*#+3, n-#)/(n+#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381877

/-- `∑{#}[n, C(n+#+1, #)*C(5*n-5*#+3, n-#)/(n+#+1)]` -/
def P423593070194436466.Spec : Prop :=
  ∀ n, P423593070194436466.a n = (A381877 n : ℚ)

end A381877

/-!
# A381879: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 / C(x) ), where C(x) is the g.f. of A000108.

The programs for A381879, the canonical program `A381879.P15827249508860093746` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381879 has offset 0).

The definition of A381879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381879.P15827249508860093746

`∑{#}[n, C(n+2*#+1, #)*C(3*n-#+1, n-#)/(n+2*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381879

/-- `∑{#}[n, C(n+2*#+1, #)*C(3*n-#+1, n-#)/(n+2*#+1)]` -/
def P15827249508860093746.Spec : Prop :=
  ∀ n, P15827249508860093746.a n = (A381879 n : ℚ)

end A381879

/-!
# A381880: Expansion of (1/x) * Series_Reversion( x * (1-x)^3 / C(x) ), where C(x) is the g.f. of A000108.

The programs for A381880, the canonical program `A381880.P5146953478074183256` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381880 has offset 0).

The definition of A381880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381880.P5146953478074183256

`∑{#}[n, C(n+2*#+1, #)*C(4*n-#+2, n-#)/(n+2*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381880

/-- `∑{#}[n, C(n+2*#+1, #)*C(4*n-#+2, n-#)/(n+2*#+1)]` -/
def P5146953478074183256.Spec : Prop :=
  ∀ n, P5146953478074183256.a n = (A381880 n : ℚ)

end A381880

/-!
# A381881: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * C(x)) ), where C(x) is the g.f. of A000108.

The programs for A381881, the canonical program `A381881.P6375890652759593814` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381881 has offset 0).

The definition of A381881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381881.P6375890652759593814

`∑{#}[n, C(n+2*#+1, #)*C(2*n+2, n-#)/(n+2*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381881

/-- `∑{#}[n, C(n+2*#+1, #)*C(2*n+2, n-#)/(n+2*#+1)]` -/
def P6375890652759593814.Spec : Prop :=
  ∀ n, P6375890652759593814.a n = (A381881 n : ℚ)

end A381881

/-!
# A381882: Expansion of (1/x) * Series_Reversion( x / ((1+x)^3 * C(x)) ), where C(x) is the g.f. of A000108.

The programs for A381882, the canonical program `A381882.P17896367723991089101` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381882 has offset 0).

The definition of A381882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381882.P17896367723991089101

`∑{#}[n, C(n+2*#+1, #)*C(3*n+3, n-#)/(n+2*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381882

/-- `∑{#}[n, C(n+2*#+1, #)*C(3*n+3, n-#)/(n+2*#+1)]` -/
def P17896367723991089101.Spec : Prop :=
  ∀ n, P17896367723991089101.a n = (A381882 n : ℚ)

end A381882

/-!
# A381883: Triangle read by rows: T(n, k) = binomial(2*n - 1, k).

The programs for A381883, the canonical program `A381883.P1597276662483742425` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381883 has offset 0).

The definition of A381883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381883.P16522338163571057530

`C(∑[abs(T(n-1,k))], col(n))` with `a(0)=3, a(1)=-2`
-/

namespace A381883.P16522338163571057530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2] fun n f1 =>
  |SequenceMachineLib.triUp f1 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (SequenceMachineLib.triCol n)

end

end A381883.P16522338163571057530

namespace A381883

/-- `C(∑[abs(T(n-1,k))], col(n))` -/
def P16522338163571057530.Spec : Prop :=
  ∀ n, (P16522338163571057530.a n : ℤ) = A381883 n

end A381883

/-! ## A381883.P8551977115196255639

`C(∑[lcm(T(n-1,k), 2)], col(n))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A381883.P8551977115196255639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  Nat.lcm (SequenceMachineLib.triUp f1 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.triCol n)

end

end A381883.P8551977115196255639

namespace A381883

/-- `C(∑[lcm(T(n-1,k), 2)], col(n))` -/
def P8551977115196255639.Spec : Prop :=
  ∀ n, (P8551977115196255639.a n : ℤ) = A381883 n

end A381883

/-! ## A381883.P17614887702655860133

`C(abs(A111650(n+1)-3), col(n))`
-/

namespace A381883.P17614887702655860133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A111650 (n + 1) - 3|.toNat (SequenceMachineLib.triCol n)

end

end A381883.P17614887702655860133

namespace A381883

/-- `C(abs(A111650(n+1)-3), col(n))` -/
def P17614887702655860133.Spec : Prop :=
  ∀ n, (P17614887702655860133.a n : ℤ) = A381883 n

end A381883

/-! ## A381883.P1425942537437230466

`C(2*row(n)-A057427(n), col(n))`
-/

namespace A381883.P1425942537437230466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * SequenceMachineLib.triRow n : ℤ) - A057427 n).toNat (SequenceMachineLib.triCol n)

end

end A381883.P1425942537437230466

namespace A381883

/-- `C(2*row(n)-A057427(n), col(n))` -/
def P1425942537437230466.Spec : Prop :=
  ∀ n, (P1425942537437230466.a n : ℤ) = A381883 n

end A381883

/-! ## A381883.P2995392429088129117

`C(2*row(n), col(n))-T(n,k-1)` with `a(0)=1`
-/

namespace A381883.P2995392429088129117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) - SequenceMachineLib.triLeft a n

end

end A381883.P2995392429088129117

namespace A381883

/-- `C(2*row(n), col(n))-T(n,k-1)` -/
def P2995392429088129117.Spec : Prop :=
  ∀ n, P2995392429088129117.a n = A381883 n

end A381883

/-! ## A381883.P1597276662483742425

`A258758(n)/A100100(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A381883

/-- `A258758(n)/A100100(n)` -/
def P1597276662483742425.Spec : Prop :=
  ∀ n, P1597276662483742425.a n = (A381883 n : ℚ)

end A381883

/-! ## A381883.P3401127850095808966

`A007318(C(2*row(n), 2)+col(n))`
-/

namespace A381883.P3401127850095808966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (2 * SequenceMachineLib.triRow n) 2 + SequenceMachineLib.triCol n)

end

end A381883.P3401127850095808966

namespace A381883

/-- `A007318(C(2*row(n), 2)+col(n))` -/
def P3401127850095808966.Spec : Prop :=
  ∀ n, P3401127850095808966.a n = A381883 n

end A381883

/-! ## A381883.P8838236360054113453

`A071919(C(2*row(n)+1, 2)+col(n))`
-/

namespace A381883.P8838236360054113453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (Nat.choose (2 * SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A381883.P8838236360054113453

namespace A381883

/-- `A071919(C(2*row(n)+1, 2)+col(n))` -/
def P8838236360054113453.Spec : Prop :=
  ∀ n, P8838236360054113453.a n = A381883 n

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

/-!
# A381884: Triangle read by rows: T(n, k) = 0 if n = 0 or k is not a quadratic residue modulo n, otherwise T(n, k) = k.

The programs for A381884, there is no canonical definition to state claims against.
-/

/-! ## A381884.P3379065374812020147

`row(∑{#}[A373748(n), #])`
-/

namespace A381884.P3379065374812020147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A381884.P3379065374812020147

/-! ## A381884.P9335780385804620933

`(A373748(n)+A002262(n))/2`
-/

namespace A381884.P9335780385804620933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373748 n + A002262 n : ℚ) / 2

end

end A381884.P9335780385804620933

/-! ## A381884.P1663717498850080432

`and(A002262(n), A250120(A097448(3*n+1)))`
-/

namespace A381884.P1663717498850080432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n) (A250120 (A097448 (3 * n + 1)).toNat)

end

end A381884.P1663717498850080432

/-! ## A381884.P9083263011522202616

`col(n)*A228039(A334063(n+1)+1)`
-/

namespace A381884.P9083263011522202616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * A228039 (A334063 (n + 1) + 1).toNat

end

end A381884.P9083263011522202616

/-! ## A381884.P11334237090068566933

`col(n)*A341644(A281660(n))`
-/

namespace A381884.P11334237090068566933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * A341644 (A281660 n).toNat

end

end A381884.P11334237090068566933

/-!
# A381885: a(n) = Product_{k=2..n-1} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise is the exponent of the highest power of k that divides n.

The programs for A381885, the canonical program `A381885.P9369399217660328766` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381885 has offset 1).

The definition of A381885 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A381885.P9369399217660328766

`A364813(n+1)/(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A381885

/-- `A364813(n+1)/(n+1)` -/
def P9369399217660328766.Spec : Prop :=
  ∀ n, P9369399217660328766.a n = (A381885 (n + 1) : ℚ)

end A381885

/-! ## A381885.P14078485822790349763

`∏{d}[n+1, A175068(#)]/(n+1)`
-/

namespace A381885.P14078485822790349763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A175068 d : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A381885.P14078485822790349763

namespace A381885

/-- `∏{d}[n+1, A175068(#)]/(n+1)` -/
def P14078485822790349763.Spec : Prop :=
  ∀ n, P14078485822790349763.a n = (A381885 (n + 1) : ℚ)

end A381885

/-! ## A381885.P11806521056685775460

`A364812(∑[n+1]+1)/(n+1)`
-/

namespace A381885.P11806521056685775460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364812 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A381885.P11806521056685775460

namespace A381885

/-- `A364812(∑[n+1]+1)/(n+1)` -/
def P11806521056685775460.Spec : Prop :=
  ∀ n, P11806521056685775460.a n = (A381885 (n + 1) : ℚ)

end A381885

/-! ## A381885.P14412469937100075745

`A005451(A000188(n+1))*A087652(n+1)`
-/

namespace A381885.P14412469937100075745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A000188 (n + 1)).toNat * A087652 (n + 1)

end

end A381885.P14412469937100075745

namespace A381885

/-- `A005451(A000188(n+1))*A087652(n+1)` -/
def P14412469937100075745.Spec : Prop :=
  ∀ n, P14412469937100075745.a n = A381885 (n + 1)

end A381885

/-! ## A381885.P6918801615170855082

`A003557(A007955(n+1)*A329314(3*(n+1)))`
-/

namespace A381885.P6918801615170855082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A007955 (n + 1) * A329314 (3 * (n + 1))).toNat

end

end A381885.P6918801615170855082

namespace A381885

/-- `A003557(A007955(n+1)*A329314(3*(n+1)))` -/
def P6918801615170855082.Spec : Prop :=
  ∀ n, P6918801615170855082.a n = A381885 (n + 1)

end A381885

/-!
# A381886: Triangle read by rows: T(n, k) = Sum_{j=1..floor(log[k](n))} floor(n / k^j) if k >= 2, T(n, 1) = n, T(n, 0) = 0^n.

The programs for A381886, there is no canonical definition to state claims against.
-/

/-! ## A381886.P14190167289668930276

`A357181(A143395(n)%A190685(2*(n+1)))`
-/

namespace A381886.P14190167289668930276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357181 (Int.tmod (A143395 n) (A190685 (2 * (n + 1)))).toNat

end

end A381886.P14190167289668930276

/-! ## A381886.P17082857597653240595

`A327029(n)+A065685(n+1)%A003891(n+1)`
-/

namespace A381886.P17082857597653240595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327029 n + Int.tmod (A065685 (n + 1)) (A003891 (n + 1))

end

end A381886.P17082857597653240595

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

/-! ## A381888.P3761672168146291606

`(row(n)+1)*A046802(C(row(n)+1, 2)+col(n))`
-/

namespace A381888.P3761672168146291606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) * A046802 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A381888.P3761672168146291606

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

/-! ## A381888.P6897436384337155492

`(A168287(n)+A007318(n))/2*∑[A010054(n)]`
-/

namespace A381888.P6897436384337155492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168287 n + A007318 n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A381888.P6897436384337155492

/-! ## A381888.P9195863988277871424

`(A168287(n)+A007318(n))/2*A002024(n+1)`
-/

namespace A381888.P9195863988277871424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168287 n + A007318 n : ℚ) / 2 * (A002024 (n + 1) : ℚ)

end

end A381888.P9195863988277871424

/-! ## A381888.P4995909941819857971

`(A168288(n)+A028326(n))/3*A052409(A140513(n))`
-/

namespace A381888.P4995909941819857971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168288 n + A028326 n : ℚ) / 3 * (A052409 (A140513 n).toNat : ℚ)

end

end A381888.P4995909941819857971

/-!
# A381889: Expansion of e.g.f.: (BesselI(0, 2*x) + BesselI(1, 2*x))^2*exp(2*x).

The programs for A381889, the canonical program `A381889.P3484252584869434515` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381889 has offset 0).

The definition of A381889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381889.P6033532036405146833

`∑{#}[n, C(n, #)*2^(n-#)*A005566(#)]`
-/

namespace A381889.P6033532036405146833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A005566 k : ℚ)

end

end A381889.P6033532036405146833

namespace A381889

/-- `∑{#}[n, C(n, #)*2^(n-#)*A005566(#)]` -/
def P6033532036405146833.Spec : Prop :=
  ∀ n, P6033532036405146833.a n = (A381889 n : ℚ)

end A381889

/-! ## A381889.P3484252584869434515

`∑{#}[n, C(n, #)*A001405(n-#)*A001700(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A381889

/-- `∑{#}[n, C(n, #)*A001405(n-#)*A001700(#)]` -/
def P3484252584869434515.Spec : Prop :=
  ∀ n, P3484252584869434515.a n = A381889 n

theorem P3484252584869434515.correct : P3484252584869434515.Spec := by
  intro n
  simp only [A381889]

end A381889

/-! ## A381889.P2075091663834590454

`∑{#}[n, C(n, #)*A005773(n-#+1)*A005773(#+1)]`
-/

namespace A381889.P2075091663834590454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A005773 ((n : ℤ) - (k : ℤ) + 1).toNat * A005773 (k + 1)

end

end A381889.P2075091663834590454

namespace A381889

/-- `∑{#}[n, C(n, #)*A005773(n-#+1)*A005773(#+1)]` -/
def P2075091663834590454.Spec : Prop :=
  ∀ n, P2075091663834590454.a n = A381889 n

end A381889

/-! ## A381889.P13598789729476324781

`∑{#}[n, C(n, #)*A151093(#)]`
-/

namespace A381889.P13598789729476324781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A151093 k

end

end A381889.P13598789729476324781

namespace A381889

/-- `∑{#}[n, C(n, #)*A151093(#)]` -/
def P13598789729476324781.Spec : Prop :=
  ∀ n, P13598789729476324781.a n = A381889 n

end A381889

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

/-! ## A381891.P6308300007699246069

`A054143(n)-char[A118291(n+1)]`
-/

namespace A381891.P6308300007699246069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118291 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A381891.P6308300007699246069

/-! ## A381891.P16898141988206801272

`A057428(A000129(n))+A054143(n)`
-/

namespace A381891.P16898141988206801272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000129 n).toNat + A054143 n

end

end A381891.P16898141988206801272

/-! ## A381891.P16115132628310378055

`A057428(A007598(n))+A054143(n)`
-/

namespace A381891.P16115132628310378055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A007598 n).toNat + A054143 n

end

end A381891.P16115132628310378055

/-! ## A381891.P4279005789783427290

`A057428(A093835(n))+A054143(n)`
-/

namespace A381891.P4279005789783427290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A093835 n).toNat + A054143 n

end

end A381891.P4279005789783427290

/-! ## A381891.P15238409209857237110

`A054143(n)-A058060(A306826(n))`
-/

namespace A381891.P15238409209857237110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n - A058060 (A306826 n).toNat

end

end A381891.P15238409209857237110

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

/-! ## A381895.P15515073792166995451

`A222043(n+1)-A055874(A033484(n))`
-/

namespace A381895.P15515073792166995451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (n + 1) - A055874 (A033484 n).toNat

end

end A381895.P15515073792166995451

/-! ## A381895.P16319439727862338000

`A222153(n+1)-A055874(A033484(n))`
-/

namespace A381895.P16319439727862338000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (n + 1) - A055874 (A033484 n).toNat

end

end A381895.P16319439727862338000

/-! ## A381895.P2409130691463549627

`A222043(n+1)-A020639(A169888(n))`
-/

namespace A381895.P2409130691463549627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (n + 1) - A020639 (A169888 n).toNat

end

end A381895.P2409130691463549627

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

/-! ## A381897.P2345720496476258968

`A382278(Δ[A007504(n)])`
-/

namespace A381897.P2345720496476258968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382278 (f1 (n + 1) - f1 n).toNat

end

end A381897.P2345720496476258968

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

